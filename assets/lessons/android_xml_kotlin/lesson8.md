## **Lesson 8: Main Project Lab – The Tap Counter (ပရူဝ်ႇၵျႅတ်ႉ ၼပ်ႉဢၢၼ်ႇ)**

### **1. The Requirement (ၶေႃႈလူဝ်ႇမီး)**
ႁဝ်းတေတႅမ်ႈ App ဢၼ်ၸၢင်ႈၼပ်ႉတူဝ် ၶိုၼ်ႈ၊ လူင်း လႄႈ တႄႇႁူဝ် (Reset) ၶႃႈ။
* တုမ်ႇ **Plus (+)** တႃႇၼပ်ႉၶိုၼ်း။
* တုမ်ႇ **Minus (-)** တႃႇၼပ်ႉလူင်း။
* တုမ်ႇ **Reset** တႃႇႁႂ်ႈပဵၼ် 0 ၶိုၼ်း။
* **TextView** တႃႇၼႄ ၽွၼ်းလႆႈၼပ်ႉဢၢၼ်ႇ။

---

### **2. The Implementation (လွၵ်းလၢႆးႁဵတ်း)**

#### **Step 1: Design the UI (တႅမ်ႈပိူင် XML)**
ၵႂႃႇတီႈ `activity_main.xml` သေ တႅမ်ႈ Code ၸတ်ႉဝၢင်း Views ၼင်ႇၼႆၶႃႈ:

```xml
<LinearLayout 
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:gravity="center"
    android:padding="20dp">

    <TextView
        android:id="@+id/txtNumber"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="0"
        android:textSize="80sp"
        android:textColor="#003366" />

    <Button
        android:id="@+id/btnPlus"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="ၼပ်ႉၶိုၼ်ႈ (+)" />

    <Button
        android:id="@+id/btnMinus"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="ၼပ်ႉလူင်း (-)" />

    <Button
        android:id="@+id/btnReset"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Reset"
        android:backgroundTint="#FF5722" />

</LinearLayout>
```

#### **Step 2 & 3: Kotlin Logic (တႅမ်ႈ Code ၵုမ်းထိင်း)**
ၵႂႃႇတီႈ `MainActivity.kt` သေ တႅမ်ႈ Logic ၼင်ႇၼႆၶႃႈ:

```kotlin
class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private var count = 0 // တူဝ်လႅၵ်ႈသိမ်းၶေႃႈမူၼ်း

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState: Bundle?)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // ပုမ်ႇၼပ်ႉၶိုၼ်ႈ
        binding.btnPlus.setOnClickListener {
            count++
            updateDisplay()
        }

        // ပုမ်ႇၼပ်ႉလူင်း
        binding.btnMinus.setOnClickListener {
            count--
            updateDisplay()
        }

        // ပုမ်ႇ Reset
        binding.btnReset.setOnClickListener {
            count = 0
            updateDisplay()
        }
    }

    // Function တႃႇဢပ်ႉတဵတ်ႉၼႃႈၸေႃး
    private fun updateDisplay() {
        binding.txtNumber.text = count.toString()
    }
}
```

---

### **3. Try it Yourself! (ၸၢမ်းႁဵတ်းႁင်းၵွႆး)**
ပေႃးႁဝ်းႁဵတ်း Tap Counter ယဝ်ႉယဝ်ႉၼႆ ၸၢမ်းႁဵတ်းတူၺ်း Project ၸိူဝ်းၼႆႉၶႃႈ:

#### **1. Dice Roller (ပရူဝ်ႇၵျႅတ်ႉ ဢိင်ႈမၢၵ်ႇဢိတ်ႇ)**
* **Requirement:** မီးတုမ်ႇၼိုင်ႈဢၼ်၊ ပေႃးတဵၵ်းၼႆ ႁႂ်ႈမၼ်း Random သေ ၼႄပၼ် 1 တေႃႇ 6။
* **Hint:** ၸႂ်ႉ `(1..6).random()` ၼႂ်း Kotlin ၶႃႈ။

#### **2. Color Switcher (ပရူဝ်ႇၵျႅတ်ႉ လႅၵ်ႈသီ)**
* **Requirement:** မီးတုမ်ႇ 3 ဢၼ် (Red, Green, Blue)။ ပေႃးတဵၵ်းတုမ်ႇလႂ် ႁႂ်ႈသီ Background ၼႃႈၸေႃး လႅၵ်ႈပဵၼ်သီၼၼ်ႉ။
* **Hint:** ၸႂ်ႉ `binding.root.setBackgroundColor(Color.RED)` ၶႃႈ။

#### **3. Simple Greeting (ပရူဝ်ႇၵျႅတ်ႉ ႁပ်ႉတွၼ်ႈ)**
* **Requirement:** မီး **EditText** တႃႇသႂ်ႇၸိုဝ်ႈ လႄႈ တုမ်ႇၼိုင်ႈဢၼ်။ ပေႃးတဵၵ်းတုမ်ႇ ႁႂ်ႈမၼ်းၼႄ Toast ဝႃႈ "မႂ်ႇသုင်ၶႃႈ [ၸိုဝ်ႈ]!"။
* **Hint:** ၸႂ်ႉ `binding.editName.text.toString()` တႃႇဢဝ်လိၵ်ႈဢွၵ်ႇမႃးၶႃႈ။

---