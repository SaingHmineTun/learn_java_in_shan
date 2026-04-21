## **Lesson 6: Handling User Interaction (ၵၢၼ်ၵုမ်းထိင်း လွင်ႈတူင်ႉၼိုင် ၶွင်ၵူၼ်းၸႂ်ႉ)**

### **1. OnClickListener (ၵၢၼ်ႁႂ်ႈ App ထွမ်ႇသဵင်တဵၵ်း)**
တႃႇတေႁႂ်ႈ App ႁဝ်းႁူႉဝႃႈ ၵူၼ်းၸႂ်ႉတဵၵ်းတုမ်ႇ (Button) ယဝ်ႉႁိုဝ်ၼႆ ႁဝ်းလူဝ်ႇၸႂ်ႉ **`setOnClickListener`** ၶႃႈ။ 
မၼ်းမိူၼ်ၼင်ႇ ႁဝ်းသင်ႇဝႆႉဝႃႈ "သင်မီးၵူၼ်းမႃးတဵၵ်းၼႆ ႁႂ်ႈႁဵတ်းၵၢၼ် ၼႂ်းၶွပ်ႇ `{ ... }` ၼႆႉၼႃ" ၼႆၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code:**
```kotlin
binding.btnClickMe.setOnClickListener {
    // Code ဢၼ်ၶႂ်ႈႁႂ်ႈႁဵတ်းၵၢၼ် မိူဝ်ႈတဵၵ်းတုမ်ႇ
    binding.txtMessage.text = "တဵၵ်းယဝ်ႉၶႃႈ!"
}
```

---

### **2. Variables in Action (ၵၢၼ်ၸႂ်ႉတူဝ်လႅၵ်ႈ သိမ်းၶေႃႈမူၼ်း)**
မိူဝ်ႈႁဝ်းတႅမ်ႈ App ၼႆ ႁဝ်းလူဝ်ႇသိမ်းၶေႃႈမူၼ်း (Data) ၸူဝ်ႈၶၢဝ်း ၶႃႈ။ ၼႂ်း Kotlin ၼႆႉ ႁဝ်းၸႅၵ်ႇ ပိူင်သၢင်ႈ variable ဝႆႉ 2 ပိူင်ၶႃႈ:
* **`val` (Value):** သိမ်းယဝ်ႉ လႅၵ်ႈလၢႆႈဢမ်ႇလႆႈ (မိူၼ်ၼင်ႇ ၸိုဝ်ႈ App)။
* **`var` (Variable):** သိမ်းယဝ်ႉ လႅၵ်ႈလၢႆႈလႆႈ (မိူၼ်ၼင်ႇ တူဝ်ၼပ်ႉဢၢၼ်ႇ Counter)။

#### **တူဝ်ယၢင်ႇ ၵၢၼ်ၼပ်ႉဢၢၼ်ႇ (Counter Logic):**
```kotlin
var count = 0 // တႄႇတီႈ 0

binding.btnCount.setOnClickListener {
    count = count + 1 // လႅၵ်ႈလၢႆႈၶေႃႈမူၼ်း
    binding.txtNumber.text = count.toString() // ၼႄၽူၼ်လႅတ်း
}
```

---

### **3. Toasts & Logs (ၵၢၼ်ပၼ်သပ်းၸႅင်ႈ လႄႈ ၵၢၼ်ၵူတ်ႇထတ်း)**
မိူဝ်ႈႁဝ်းၶႂ်ႈပၼ်ၾၢင်ႉ ၵူၼ်းၸႂ်ႉ ဢမ်ႇၼၼ် ၶႂ်ႈၵူတ်ႇထတ်း Code ႁဝ်း ႁဝ်းၸႂ်ႉ 2 လၢႆးၼႆႉၶႃႈ:

* **Toast:** ပဵၼ်လိၵ်ႈပွတ်းပွတ်း ဢၼ်တေၵိုင်ႉၵၢင်ႉဢွၵ်ႇမႃး တီႈၽၢႆႇတႂ်ႈၼႃႈၸေႃး ၸူဝ်ႈၶၢဝ်းၶႃႈ။
  ```kotlin
  Toast.makeText(this, "ၵဵပ်းၶေႃႈမူၼ်းယဝ်ႉယဝ်ႉ!", Toast.LENGTH_SHORT).show()
  ```

* **Log (Logcat):** ပဵၼ်လိၵ်ႈ ဢၼ်တေၼႄၼႂ်း **Logcat** (ၼႂ်း Computer ၶွင် Programmer) ၵူၺ်း။ ၵူၼ်းၸႂ်ႉ App တေဢမ်ႇႁၼ်ၶႃႈ။ မၼ်းလမ်ႇလွင်ႈ တႃႇႁဝ်းတေႁူႉဝႃႈ Code ႁဝ်းႁဵတ်းၵၢၼ် ထိုင်တီႈလႂ်ယဝ်ႉ ၼႆၶႃႈ။
  ```kotlin
  Log.d("MAIN_ACTIVITY", "User clicked the button!")
  ```

---

### **4. Example: Multi-Interaction Code (တူဝ်ယၢင်ႇ တင်းမူတ်း)**
မႃးတူၺ်း တူဝ်ယၢင်ႇ Code ဢၼ်ဢဝ် 3 ဢၼ်ၼႆႉ မႃးၸႂ်ႉႁူမ်ႈၵၼ်ၶႃႈ:

```xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout 
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".MainActivity">

    <TextView
        android:id="@+id/txtCount"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="တဵၵ်းလႆႈ: 0"
        android:textSize="32sp"
        android:textStyle="bold"
        android:textColor="#003366"
        app:layout_constraintBottom_toTopOf="@+id/btnTap"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintVertical_chainStyle="packed" />

    <Button
        android:id="@+id/btnTap"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="24dp"
        android:padding="16dp"
        android:text="တဵၵ်းၼပ်ႉဢၢၼ်ႇ"
        android:textSize="18sp"
        app:layout_constraintBottom_toBottomOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toBottomOf="@+id/txtCount" />

</androidx.constraintlayout.widget.ConstraintLayout>
```

```kotlin
class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    var counter = 0 // သိမ်းတူဝ်ၼပ်ႉ

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState: Bundle?)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.btnTap.setOnClickListener {
            // 1. ၼပ်ႉဢၢၼ်ႇ
            counter++ 
            
            // 2. ၼႄၽူၼ်လႅတ်း ၼိူဝ် TextView
            binding.txtCount.text = "တဵၵ်းလႆႈ: $counter"
            
            // 3. ၼႄ Toast ပၼ်ၵူၼ်းၸႂ်ႉ
            Toast.makeText(this, "ၶိုၼ်ႈထိုင် $counter ယဝ်ႉ!", Toast.LENGTH_SHORT).show()
            
            // 4. တႅမ်ႈ Log တႃႇ Programmer တူၺ်း
            Log.d("DEBUG_TAG", "Current Counter: $counter")
        }
    }
}
```

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
"ယႃႇလိုမ်းတႅမ်ႈ **`.show()`** တီႈၽၢႆႇလင် Toast ၶႃႈ။ သင်ဢမ်ႇပႃး `.show()` ၼႆ Toast တေဢမ်ႇဢွၵ်ႇမႃးၶႃႈ။
ထႅင်ႈဢၼ်ၼိုင်ႈ မိူဝ်ႈၸႂ်ႉ Log ၼၼ်ႉ ပိုတ်ႇတူၺ်းတီႈ **Logcat** ၽၢႆႇတႂ်ႈ Android Studio ယဝ်ႉ Search ႁႃ 'Tag' ဢၼ်ၶဝ်တင်ႈဝႆႉ (မိူၼ်ၼင်ႇ `DEBUG_TAG`) ၼၼ်ႉၶႃႈ"။