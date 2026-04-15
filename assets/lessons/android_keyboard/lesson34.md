## **Lesson 34: Settings UI: Material 3 Design for Theme and Language Selection**

### **1. Why Move Away from PreferenceScreen?**
* **Modern Design:** `PreferenceScreen` မၼ်းပဵၼ် Design ၵဝ်ႇ၊ မႄးႁႂ်ႈပဵၼ် Material 3 ယၢပ်ႇၼႃႇ။
* **Flexibility:** ၵၢၼ်ၸႂ်ႉ `Fragment` တင်း `ViewBinding` ႁဵတ်းႁႂ်ႈႁဝ်းၵုမ်းထိင်း UI လႆႈၵူႈ "Pixel" လႄႈ သႂ်ႇ Custom Dialogs လႆႈငၢႆႈငၢႆႈၶႃႈ။

---

### **2. The Complete Material 3 Layout (fragment_settings.xml)**

ႁဝ်းၸႂ်ႉ `MaterialCardView` တွၼ်ႈတႃႇၸႅၵ်ႇ Section ႁႂ်ႈတူၺ်းႁၼ်သႅတ်း (Clean) လႄႈ ၸႂ်ႉ `SwitchMaterial` တွၼ်ႈတႃႇ Typing Feedback ၶႃႈ။

```xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.core.widget.NestedScrollView xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="?attr/colorSurface">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="vertical"
        android:padding="16dp">

        <TextView
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginBottom="16dp"
            android:text="TMK Keyboard Settings"
            android:textAppearance="@style/TextAppearance.Material3.HeadlineMedium"
            android:textStyle="bold" />

        <com.google.android.material.card.MaterialCardView
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_marginBottom="16dp"
            app:cardCornerRadius="16dp"
            app:cardElevation="2dp">

            <LinearLayout
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:orientation="vertical"
                android:padding="16dp">

                <TextView
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:text="Personalization"
                    android:textAppearance="@style/TextAppearance.Material3.TitleSmall"
                    android:textColor="?attr/colorPrimary" />

                <RelativeLayout
                    android:id="@+id/btn_select_theme"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:layout_marginTop="12dp"
                    android:background="?attr/selectableItemBackground"
                    android:paddingVertical="12dp">

                    <TextView
                        android:layout_width="wrap_content"
                        android:layout_height="wrap_content"
                        android:text="Keyboard Theme"
                        android:textAppearance="@style/TextAppearance.Material3.BodyLarge" />

                    <TextView
                        android:id="@+id/tv_current_theme"
                        android:layout_width="wrap_content"
                        android:layout_height="wrap_content"
                        android:layout_alignParentEnd="true"
                        android:text="Gold (TMK)"
                        android:textAppearance="@style/TextAppearance.Material3.BodyMedium"
                        android:textColor="?attr/colorSecondary" />
                </RelativeLayout>

                <com.google.android.material.divider.MaterialDivider
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content" />

                <RelativeLayout
                    android:id="@+id/btn_select_language"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:background="?attr/selectableItemBackground"
                    android:paddingVertical="12dp">

                    <TextView
                        android:layout_width="wrap_content"
                        android:layout_height="wrap_content"
                        android:text="Default Language"
                        android:textAppearance="@style/TextAppearance.Material3.BodyLarge" />

                    <TextView
                        android:id="@+id/tv_current_lang"
                        android:layout_width="wrap_content"
                        android:layout_height="wrap_content"
                        android:layout_alignParentEnd="true"
                        android:text="Shan (တႆး)"
                        android:textAppearance="@style/TextAppearance.Material3.BodyMedium"
                        android:textColor="?attr/colorSecondary" />
                </RelativeLayout>
            </LinearLayout>
        </com.google.android.material.card.MaterialCardView>

        <com.google.android.material.card.MaterialCardView
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            app:cardCornerRadius="16dp"
            app:cardElevation="2dp">

            <LinearLayout
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:orientation="vertical"
                android:padding="16dp">

                <TextView
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:text="Typing Feedback"
                    android:textAppearance="@style/TextAppearance.Material3.TitleSmall"
                    android:textColor="?attr/colorPrimary" />

                <LinearLayout
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:gravity="center_vertical"
                    android:layout_marginTop="8dp"
                    android:paddingVertical="8dp">

                    <LinearLayout
                        android:layout_width="0dp"
                        android:layout_height="wrap_content"
                        android:layout_weight="1"
                        android:orientation="vertical">
                        <TextView
                            android:layout_width="wrap_content"
                            android:layout_height="wrap_content"
                            android:text="Vibration"
                            android:textAppearance="@style/TextAppearance.Material3.BodyLarge" />
                        <TextView
                            android:layout_width="wrap_content"
                            android:layout_height="wrap_content"
                            android:text="Haptic feedback on keypress"
                            android:textAppearance="@style/TextAppearance.Material3.BodySmall" />
                    </LinearLayout>

                    <com.google.android.material.switchmaterial.SwitchMaterial
                        android:id="@+id/switch_vibration"
                        android:layout_width="wrap_content"
                        android:layout_height="wrap_content" />
                </LinearLayout>

                <com.google.android.material.divider.MaterialDivider
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content" />

                <LinearLayout
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:gravity="center_vertical"
                    android:paddingVertical="8dp">

                    <LinearLayout
                        android:layout_width="0dp"
                        android:layout_height="wrap_content"
                        android:layout_weight="1"
                        android:orientation="vertical">
                        <TextView
                            android:layout_width="wrap_content"
                            android:layout_height="wrap_content"
                            android:text="Sound"
                            android:textAppearance="@style/TextAppearance.Material3.BodyLarge" />
                        <TextView
                            android:layout_width="wrap_content"
                            android:layout_height="wrap_content"
                            android:text="Audio click sound on keypress"
                            android:textAppearance="@style/TextAppearance.Material3.BodySmall" />
                    </LinearLayout>

                    <com.google.android.material.switchmaterial.SwitchMaterial
                        android:id="@+id/switch_sound"
                        android:layout_width="wrap_content"
                        android:layout_height="wrap_content" />
                </LinearLayout>

            </LinearLayout>
        </com.google.android.material.card.MaterialCardView>

    </LinearLayout>
</androidx.core.widget.NestedScrollView>
```

---

### **3. The Final Logic (SettingsFragment.kt)**

ႁဝ်းၸႂ်ႉ `updateUI()` တွၼ်ႈတႃႇႁႂ်ႈ Data ၼိူဝ်ၼႃႈၸေႃး မႅၼ်ႈၸွမ်း `SharedPreferences` တႃႇသေႇၶႃႈ။

```kotlin

class SettingsFragment : Fragment() {

    private lateinit var binding: FragmentSettingsBinding
    private val prefs by lazy {
        requireContext().getSharedPreferences("TMK_PREFS", Context.MODE_PRIVATE)
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        binding = FragmentSettingsBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        // 1. လူတ်ႇ Data ၵဝ်ႇမႃးၼႄၼိူဝ် UI
        updateUI()

        // 2. Setup Listeners တွၼ်ႈတႃႇ Switches
        binding.switchVibration.setOnCheckedChangeListener { _, isChecked ->
            prefs.edit { putBoolean("vibrate_on_keypress", isChecked) }
        }

        binding.switchSound.setOnCheckedChangeListener { _, isChecked ->
            prefs.edit { putBoolean("sound_on_keypress", isChecked) }
        }

        // 3. Setup Click Listeners တွၼ်ႈတႃႇ Dialogs
        binding.btnSelectTheme.setOnClickListener {
            showThemeSelector()
        }

        binding.btnSelectLanguage.setOnClickListener {
            showLanguageSelector()
        }
    }

    private fun updateUI() {
        // လူတ်ႇသီ Theme ယၢမ်းလဵဝ်
        val currentTheme = prefs.getString("keyboard_theme", "GOLD")
        binding.tvCurrentTheme.text = when(currentTheme) {
            "DARK" -> "Dark Knight"
            "BLUE" -> "Ocean Blue"
            "WHITE" -> "Pure White"
            else -> "Gold (TMK)"
        }

        // လူတ်ႇၽႃႇသႃႇယၢမ်းလဵဝ်
        val currentLang = prefs.getString("default_language", "SHN")
        binding.tvCurrentLang.text = when(currentLang) {
            "MY" -> "Myanmar (ဗမာ)"
            "EN" -> "English"
            else -> "Shan (တႆး)"
        }

        // လူတ်ႇ State ၶွင် Switch
        binding.switchVibration.isChecked = prefs.getBoolean("vibrate_on_keypress", true)
        binding.switchSound.isChecked = prefs.getBoolean("sound_on_keypress", false)
    }

    private fun showThemeSelector() {
        val themes = arrayOf("Gold (TMK)", "Dark Knight", "Ocean Blue", "Pure White")
        val themeValues = arrayOf("GOLD", "DARK", "BLUE", "WHITE")

        val currentTheme = prefs.getString("keyboard_theme", "GOLD")
        val checkedItem = themeValues.indexOf(currentTheme)

        MaterialAlertDialogBuilder(requireContext())
            .setTitle("Select Keyboard Theme")
            .setSingleChoiceItems(themes, checkedItem) { dialog, which ->
                prefs.edit { putString("keyboard_theme", themeValues[which]) }
                binding.tvCurrentTheme.text = themes[which]
                dialog.dismiss()
            }
            .show()
    }

    private fun showLanguageSelector() {
        val langs = arrayOf("Shan (တႆး)", "Myanmar (ဗမာ)", "English")
        val langValues = arrayOf("SHN", "MY", "EN")

        val currentLang = prefs.getString("default_language", "SHN")
        val checkedItem = langValues.indexOf(currentLang)

        MaterialAlertDialogBuilder(requireContext())
            .setTitle("Default Language")
            .setSingleChoiceItems(langs, checkedItem) { dialog, which ->
                prefs.edit { putString("default_language", langValues[which]) }
                binding.tvCurrentLang.text = langs[which]
                dialog.dismiss()
            }
            .show()
    }
}
```

### **3. Showing the Fragment**

မိူဝ်းဢႅပ်းႁဝ်း run ယဝ်ႉ တႃႇႁႂ်ႈမၼ်းၼႄပၼ် Fragment ဢၼ်ႁဝ်း တႅမ်ႈဝႆႉၼၼ်ႉ ၼႂ်း `activity_main.xml` တႅမ်ႈပၼ် ၼင်ႇၼႆၶႃႈ

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:id="@+id/main"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".MainActivity">

    <fragment
        android:name="it.saimao.tmkkeyboardpro.SettingsFragment"
        android:layout_width="match_parent"
        android:layout_height="match_parent" />

</LinearLayout>
```



---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Material 3 Elevation:** ၸႂ်ႉ `app:cardElevation="2dp"` တွၼ်ႈတႃႇႁႂ်ႈ Card တူၺ်းႁၼ်မီး Layer ၶႃႈ။
* **Contextual Data:** ၵၢၼ်ၸႂ်ႉ `when` Logic ၸွႆႈႁႂ်ႈ String ဢွၵ်ႇမႃးမႅၼ်ႈၸွမ်း ၽႃႇသႃႇ လႄႈ Theme ဢၼ်ၵူၼ်းၸႂ်ႉလိူၵ်ႈဝႆႉၶႃႈ။