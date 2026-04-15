## **Lesson 36: Custom Font Downloader: Managing Fonts Within the App**

### **1. The Layout (fragment_fonts.xml)**
ႁဝ်းတေၸႂ်ႉ `RadioGroup` တွၼ်ႈတႃႇႁႂ်ႈၵူၼ်းၸႂ်ႉလိူၵ်ႈ Font ဢၼ်ၶဝ်လၢတ်ႈၸႂ်ၶႃႈ။

```xml
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:padding="16dp">

    <com.google.android.material.card.MaterialCardView
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        app:cardCornerRadius="16dp">

        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:orientation="vertical"
            android:padding="16dp">

            <TextView
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:text="Select Shan Font"
                android:textAppearance="@style/TextAppearance.Material3.TitleMedium" />

            <RadioGroup
                android:id="@+id/rg_fonts"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:layout_marginTop="8dp">
                <RadioButton android:id="@+id/rb_namkhone" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="NamKhone Regular" android:checked="true"/>
                <RadioButton android:id="@+id/rb_panglong" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="PangLong" />
                <RadioButton android:id="@+id/rb_kunheing" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="A J Kunheing 05" />
            </RadioGroup>

            <Button
                android:id="@+id/btn_download"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:layout_marginTop="16dp"
                android:text="Download &amp; Apply Font" />
        </LinearLayout>
    </com.google.android.material.card.MaterialCardView>
</LinearLayout>
```

---

### **2. The Advanced FontManager.kt**
ႁဝ်းတေထႅမ်သႂ်ႇ Data Class တွၼ်ႈတႃႇၵဵပ်း URL လႄႈ Logic တွၼ်ႈတႃႇ Check Progress ၶႃႈ။

```kotlin

data class ShanFont(val name: String, val url: String, val fileName: String)

object FontManager {
    val fonts = listOf(
        ShanFont(
            "Shan",
            "https://shan-font-library.vercel.app/fonts/shan_regular.ttf",
            "shan.ttf"
        ),
        ShanFont(
            "PangLong",
            "https://shan-font-library.vercel.app/fonts/panglong.ttf",
            "panglong.ttf"
        ),
        ShanFont(
            "A J Kunheing E-T-M 05",
            "https://shan-font-library.vercel.app/fonts/aj05_etm_regular.ttf",
            "aj_kunheing_05.ttf"
        )
    )

    fun downloadFont(context: Context, font: ShanFont): Long {
        val manager = context.getSystemService(Context.DOWNLOAD_SERVICE) as DownloadManager
        val request = DownloadManager.Request(Uri.parse(font.url))
            .setTitle("Downloading ${font.name}")
            .setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE)
            .setDestinationInExternalFilesDir(context, null, font.fileName)
            .setAllowedOverMetered(true)

        // Save selected font name to preferences to use in Keyboard
        context.getSharedPreferences("TMK_PREFS", Context.MODE_PRIVATE).edit()
            .putString("active_font_file", font.fileName).apply()

        return manager.enqueue(request)
    }

    fun getActiveTypeface(context: Context): Typeface? {
        val prefs = context.getSharedPreferences("TMK_PREFS", Context.MODE_PRIVATE)
        val fileName = prefs.getString("active_font_file", "namkhone.ttf")
        val file = File(context.getExternalFilesDir(null), fileName)
        return if (file.exists()) Typeface.createFromFile(file) else null
    }

}
```

---

### **3. The Progress Dialog Logic (FontFragment.kt)**
ႁဝ်းတေၸႂ်ႉ **`Timer`** ဢမ်ႇၼၼ် **`Coroutine`** တွၼ်ႈတႃႇၵႂႃႇထတ်းတူၺ်း % ၼႂ်း `DownloadManager` ၶႃႈ။

```kotlin
class FontFragment : Fragment() {
    private lateinit var binding: FragmentFontBinding
    private var downloadId: Long = -1

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        binding = FragmentFontBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding.btnDownload.setOnClickListener {
            val selectedFont = when (binding.rgFonts.checkedRadioButtonId) {
                R.id.rb_panglong -> FontManager.fonts[1]
                R.id.rb_kunheing -> FontManager.fonts[2]
                else -> FontManager.fonts[0]
            }

            downloadId = FontManager.downloadFont(requireContext(), selectedFont)
            showProgressDialog()
        }
    }

    @SuppressLint("Range")
    private fun showProgressDialog() {
        val dialogView = layoutInflater.inflate(R.layout.dialog_progress, null)
        val progressBar = dialogView.findViewById<LinearProgressIndicator>(R.id.progress_bar)
        val tvPercent = dialogView.findViewById<TextView>(R.id.tv_percent)

        val dialog = MaterialAlertDialogBuilder(requireContext())
            .setTitle("Downloading Font...")
            .setView(dialogView)
            .show()

        // Track Progress
        lifecycleScope.launch {
            val manager = requireContext().getSystemService(Context.DOWNLOAD_SERVICE) as DownloadManager
            var downloading = true
            while (downloading) {
                val query = DownloadManager.Query().setFilterById(downloadId)
                val cursor = manager.query(query)
                if (cursor.moveToFirst()) {
                    val bytesDownloaded = cursor.getInt(cursor.getColumnIndex(DownloadManager.COLUMN_BYTES_DOWNLOADED_SO_FAR))
                    val bytesTotal = cursor.getInt(cursor.getColumnIndex(DownloadManager.COLUMN_TOTAL_SIZE_BYTES))

                    if (cursor.getInt(cursor.getColumnIndex(DownloadManager.COLUMN_STATUS)) == DownloadManager.STATUS_SUCCESSFUL) {
                        downloading = false
                    }

                    val progress = if (bytesTotal > 0) (bytesDownloaded * 100L / bytesTotal).toInt() else 0
                    withContext(Dispatchers.Main) {
                        progressBar.progress = progress
                        tvPercent.text = "$progress%"
                        if (!downloading) {
                            dialog.dismiss()
                            Toast.makeText(context, "Font Downloaded & Applied!", Toast.LENGTH_SHORT).show()
                        }
                    }
                }
                cursor.close()
                delay(500) // ၸႅတ်ႈၵူႈ 0.5 Sec
            }
        }
    }
}
```

**dialog_progress.xml**

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="vertical"
    android:padding="24dp">

    <TextView
        android:id="@+id/tv_status"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Downloading file, please wait..."
        android:textAppearance="@style/TextAppearance.Material3.BodyMedium"
        android:textColor="?attr/colorOnSurfaceVariant" />

    <Space
        android:layout_width="match_parent"
        android:layout_height="16dp" />

    <com.google.android.material.progressindicator.LinearProgressIndicator
        android:id="@+id/progress_bar"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:progress="0"
        app:indicatorColor="?attr/colorPrimary"
        app:trackColor="?attr/colorSurfaceVariant"
        app:trackCornerRadius="4dp"
        app:trackThickness="8dp" />

    <TextView
        android:id="@+id/tv_percent"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="end"
        android:layout_marginTop="8dp"
        android:text="0%"
        android:textAppearance="@style/TextAppearance.Material3.LabelLarge"
        android:textColor="?attr/colorPrimary" />

</LinearLayout>
```

---

### **4. Applying Font on Theme Changed**

```kotlin

fun applyTheme(view: View, themeType: String) {
    val keyNormalColor: Int
    val keyPressedColor: Int

    if (themeType == "GOLD") {
        keyNormalColor = getColor(R.color.gold_key_normal)
        keyPressedColor = getColor(R.color.gold_key_pressed)
        backgroundColor = getColor(R.color.gold_background)
    } else {
        keyNormalColor = getColor(R.color.blue_key_normal)
        keyPressedColor = getColor(R.color.blue_key_pressed)
        backgroundColor = getColor(R.color.blue_background)
    }

    // 1. သင်ပဵၼ် Root View ႁႂ်ႈလႅၵ်ႈသီ Background
    if (view.id == R.id.keyboard_root) {
        view.setBackgroundColor(backgroundColor)
    }


    val typeface = FontManager.getActiveTypeface(this)

    // 2. ၸႂ်ႉ Recursion တႃႇႁႃ Buttons ၼႂ်းၵူႈ Container
    if (view is ViewGroup) {
        for (i in 0 until view.childCount) {
            val child = view.getChildAt(i)

            if (child is Button) {
                if (child.id == R.id.key_space) {
                    setupSpaceBarSwipeLogic(child);
                }
                // လႅၵ်ႈသီတုမ်ႇၼဵၵ်ႉ
                val states = arrayOf(
                    intArrayOf(android.R.attr.state_pressed),
                    intArrayOf()
                )
                val colors = intArrayOf(keyPressedColor, keyNormalColor)
                child.backgroundTintList = ColorStateList(states, colors)

                // လွင်ႈယႂ်ႇ: ႁႂ်ႈ Tint Mode မၼ်းပဵၼ် SRC_IN ၼင်ႇႁိုဝ်တေႁၼ်သီမႂ်ႇ
                child.backgroundTintMode = android.graphics.PorterDuff.Mode.SRC_IN
                if (typeface != null) {
                    child.typeface = typeface
                }
            } else if (child is ViewGroup) {
                // သင်ၺႃး FrameLayout ဢမ်ႇၼၼ် LinearLayout တၢင်ႇဢၼ် ႁႂ်ႈၶဝ်ႈၵႂႃႇႁႃထႅင်ႈ
                applyTheme(child, themeType)
            }
        }
    }
}
```




---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **User Control:** ၵူၼ်းၸႂ်ႉလိူၵ်ႈ Font လႆႈၸွမ်းၸႂ် (Multiple Options)။
* **Real-time Feedback:** ၵၢၼ်ၼႄ Progress Bar ႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉႁူႉဝႃႈ App တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ၊ ဢမ်ႇၸႂ်ႈဝႃႈမၼ်း "ၶၢင်" (Frozen) ဝႆႉၶႃႈ။
* **Persistence:** ၵၢၼ်ၸႂ်ႉ `SharedPreferences` တွၼ်ႈတႃႇမၢႆဝႆႉဝႃႈ Font လႂ်ပဵၼ်တူဝ် Active ယူႇ။