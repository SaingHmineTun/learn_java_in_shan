## **Lesson 35: Setup Wizard: Guiding Users to Enable and Select Keyboard**

### **1. The Logical Flow (ၵၢၼ်ႁဵတ်းၵၢၼ်)**
ႁဝ်းတေၸႂ်ႉ `MainActivity` ပဵၼ်တူဝ်ၵုမ်းထိင်း (Controller)။ မိူဝ်ႈၵူၼ်းၸႂ်ႉပိုတ်ႇ App မႃး:
1.  **Step 1:** ၸႅတ်ႈတူၺ်းဝႃႈ Keyboard ႁဝ်းထုၵ်ႇ **Enabled** ဝႆႉၼႂ်း System ယဝ်ႉႁႃႉ? (သင်ပႆႇပိုတ်ႇ -> ၼႄၼႃႈ Setup)
2.  **Step 2:** ၸႅတ်ႈတူၺ်းဝႃႈ Keyboard ႁဝ်းထုၵ်ႇ **Selected** (Active) ဝႆႉယဝ်ႉႁႃႉ? (သင်ပႆႇလိူၵ်ႈ -> ၼႄၼႃႈ Setup)
3.  **Step 3:** သင်ယဝ်ႉတူဝ်ႈတင်း 2 ယၢင်ႇယဝ်ႉ -> ၸင်ႇပၼ်ၶဝ်ၶဝ်ႈၸူး **SettingsFragment** ၶႃႈ။



---

### **2. Designing the Setup UI (fragment_setup.xml)**
ႁဝ်းလူဝ်ႇၼႃႈၸေႃးဢၼ်မီးတုမ်ႇၼိပ်ႉဝၼ်း (Step-by-step) ႁၢင်ႈလီလီၶႃႈ။

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:gravity="center"
    android:orientation="vertical"
    android:padding="32dp"
    android:background="?attr/colorSurface">

    <com.google.android.material.card.MaterialCardView
        android:layout_width="120dp"
        android:layout_height="120dp"
        app:cardCornerRadius="24dp"
        app:cardElevation="4dp"
        app:strokeWidth="0dp">

        <ImageView
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:scaleType="centerCrop"
            android:src="@drawable/img_logo" />
    </com.google.android.material.card.MaterialCardView>

    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="24dp"
        android:text="Get Started"
        android:textAppearance="@style/TextAppearance.Material3.HeadlineMedium"
        android:textStyle="bold" />

    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="8dp"
        android:gravity="center"
        android:text="Please enable and select TMK Keyboard to start typing in Shan, Myanmar, and English."
        android:textAppearance="@style/TextAppearance.Material3.BodyMedium"
        android:textColor="?attr/colorSecondary" />

    <com.google.android.material.button.MaterialButton
        android:id="@+id/btn_enable"
        style="@style/Widget.Material3.Button.TonalButton"
        android:layout_width="match_parent"
        android:layout_height="60dp"
        android:layout_marginTop="40dp"
        android:text="1. Enable Keyboard"
        app:icon="@android:drawable/ic_menu_preferences" />

    <com.google.android.material.button.MaterialButton
        android:id="@+id/btn_select"
        android:layout_width="match_parent"
        android:layout_height="60dp"
        android:layout_marginTop="16dp"
        android:text="2. Select TMK Keyboard"
        app:icon="@android:drawable/ic_menu_edit" />

</LinearLayout>
```

---

### **3. The Manager Logic (KeyboardUtils.kt)**
ႁဝ်းလူဝ်ႇသၢင်ႈ Helper တွၼ်ႈတႃႇၸႅတ်ႈတူၺ်း State ၶွင် Keyboard ၶႃႈ။

```kotlin
object KeyboardUtils {
    // ၸႅတ်ႈတူၺ်းဝႃႈ Keyboard ႁဝ်းထုၵ်ႇပိုတ်ႇဝႆႉၼႂ်း System ယဝ်ႉႁႃႉ?
    fun isKeyboardEnabled(context: Context): Boolean {
        val imm = context.getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
        return imm.enabledInputMethodList.any { it.packageName == context.packageName }
    }

    // ၸႅတ်ႈတူၺ်းဝႃႈ ယၢမ်းလဵဝ်ၸႂ်ႉ Keyboard ႁဝ်းဝႆႉယူႇႁႃႉ?
    fun isKeyboardSelected(context: Context): Boolean {
        val currentId = Settings.Secure.getString(context.contentResolver, Settings.Secure.DEFAULT_INPUT_METHOD)
        return currentId?.contains(context.packageName) == true
    }
}
```

---

### **4. MainActivity Logic (The Switcher)**

ၼႂ်း `MainActivity` ၸဝ်ႈၵဝ်ႇ၊ ႁဝ်းတေလႅၵ်ႈ Fragment ၸွမ်းၼင်ႇ State ၶႃႈ။

```kotlin
class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        checkKeyboardState()
    }

    // *** ၸႂ်ႉတူဝ်ၼႆႉ တႅၼ်း onResume ***
    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        if (hasFocus) {
            // မိူဝ်ႈ Dialog လိူၵ်ႈ Keyboard ပိၵ်ႉၵႂႃႇ သေၵူၼ်းၸႂ်ႉပွၵ်ႈမႃးၼႂ်း App
            // Focus တေပဵၼ် true သေ မၼ်းတေႁွင်ႉ Function ၼႆႉၶႃႈ
            checkKeyboardState()
        }
    }

    private fun checkKeyboardState() {
        val isEnabled = KeyboardUtils.isKeyboardEnabled(this)
        val isSelected = KeyboardUtils.isKeyboardSelected(this)

        if (isEnabled && isSelected) {
            // သင်ယဝ်ႉမူတ်းယဝ်ႉ -> ၼႄ Settings
            showFragment(SettingsFragment())
        } else {
            // သင်ပႆႇယဝ်ႉ -> ၼႄ Setup Wizard
            showFragment(SetupFragment())
        }
    }

    private fun showFragment(fragment: Fragment) {
        supportFragmentManager.beginTransaction()
            .replace(R.id.main_container, fragment) // ႁႂ်ႈလႅၵ်ႈ id @+id/main ပဵၼ် FrameLayout ဢၼ်ၼိုင်ႈၶႃႈ
            .commit()
    }
}
```

---

### **5. Triggering System Settings**
ၼႂ်း `SetupFragment` ၸဝ်ႈၵဝ်ႇ၊ မိူဝ်ႈၼိပ်ႉတုမ်ႇ ႁႂ်ႈပိုတ်ႇ Settings ၶွင် Android ၵမ်းသိုဝ်ႈၶႃႈ။
```kotlin

class SetupFragment: Fragment() {

    private  lateinit var binding: FragmentSetupBinding

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        binding = FragmentSetupBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        binding.btnSelect.setOnClickListener {

            val imm = context?.getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
            imm.showInputMethodPicker()
        }


        binding.btnEnable.setOnClickListener {
            startActivity(Intent(Settings.ACTION_INPUT_METHOD_SETTINGS))

        }
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **User Retention:** ၵၢၼ်ၼႄ Setup Wizard ႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉဢမ်ႇ "ငိုင်" သေပိုတ်ႇ App ၸဝ်ႈၵဝ်ႇလႆႈငၢႆႈငၢႆႈ။
* **Automated Flow:** ၵၢၼ်ၸႂ်ႉ `onResume` ၼႂ်း MainActivity ၸွႆႈႁႂ်ႈ App လႅၵ်ႈၵႂႃႇၼႃႈ Settings ႁင်းၵူၺ်း မိူဝ်ႈၵူၼ်းၸႂ်ႉမႄးၼႂ်း System ယဝ်ႉတူဝ်ႈၶႃႈ။