## **Lesson 15: Key Event Dispatcher: Mapping XML Button Clicks to Characters**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ယၢမ်းလဵဝ်ႁဝ်းမီး Layout ဢၼ်မီး Buttons ၼမ်ၼမ်ယဝ်ႉ။ သင်ႁဝ်းတေၵႂႃႇတႅမ်ႈ `setOnClickListener` ပၼ် Buttons ၼိုင်ႈဢၼ်လႂ် ၼိုင်ႈဢၼ်လႂ်ၼႆ Code ႁဝ်းတေယၢဝ်းပူၼ်ႉတီႈ လႄႈ မႄးယၢပ်ႇၶႃႈ။

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ **Dispatcher** (ၵူၼ်းၸတ်းၵၢၼ်) ဢၼ်တေ "Loop" ႁႃ Buttons တင်းသဵင်ႈသေ ၵွင်ႉ `OnClickListener` ပၼ်ၶဝ် ႁႂ်ႈသူင်ႇတူဝ်လိၵ်ႈ (Text) ဢၼ်မီးၼႂ်း `android:text` ၶဝ်ႈၵႂႃႇၼႂ်း App ႁင်းၵူၺ်းမၼ်းၶႃႈ။

---

### **1. The Logic: Extracting Text from View**

မိူဝ်ႈႁဝ်းၼိပ်ႉ Button၊ ႁဝ်းလူဝ်ႇလၢတ်ႈၼႄ System ဝႃႈ: "ဢဝ်လိၵ်ႈဢၼ်တႅမ်ႈဝႆႉၼိူဝ် Button ၼၼ်ႉ (မိူၼ်ၼင်ႇ 'ၵ') သေ သူင်ႇၵႂႃႇၸူး InputConnection" ၶႃႈ။

#### **res/layout/layout_shn_normal.xml (Reminder)**
```xml
<Button 
    android:id="@+id/key_shn_ka"
    android:text="ၵ"
    ... />
```

---

### **2. Building the Dispatcher Function**

ႁဝ်းတေတႅမ်ႈ Function ၼိုင်ႈဢၼ် ဢၼ်တေ "Recursive" (ၶဝ်ႈႁႃၵူႈၸၼ်ႉ) ၼႂ်း ViewGroup ႁဝ်းၶႃႈ။

```kotlin
fun registerKeys(view: View) {
    if (view is ViewGroup) {
        for (i in 0 until view.childCount) {
            val child = view.getChildAt(i)
            
            if (child is Button) {
                child.setOnClickListener {
                    val text = child.text.toString()
                    handleKeyPress(child.id, text)
                }
            } else if (child is ViewGroup) {
                // သင်ၺႃး FrameLayout ႁႂ်ႈၶဝ်ႈၵႂႃႇႁႃ Buttons တၢင်ႇဢၼ်ထႅင်ႈ
                registerKeys(child)
            }
        }
    }
}
```

---

### **3. Handling Different Key Types**

Buttons ႁဝ်းမီး 2 မဵဝ်း:
1.  **Character Keys:** ၸိူဝ်းသူင်ႇလိၵ်ႈ (ၵ, ၶ, A, B).
2.  **Action Keys:** ၸိူဝ်းႁဵတ်းၵၢၼ် (Delete, Shift, Space, Enter).

ႁဝ်းတေၸႅၵ်ႇ Logic မၼ်းၸွမ်းၼင်ႇ **ID** ၶႃႈ:

```kotlin
private fun handleKeyPress(viewId: Int, text: String) {
    when (viewId) {
        R.id.key_del -> sendDelete() // ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း Lesson 14
        R.id.key_space -> sendText(" ")
        R.id.key_enter -> sendKeyAction(KeyEvent.KEYCODE_ENTER)
        R.id.key_shift -> handleShift() // တေသွၼ်ၼႂ်း Lesson 17
        else -> {
            // သင်ဢမ်ပဵၼ် Action Key ၼႆ ႁႂ်ႈသူင်ႇ Text ၼိူဝ် Button ၼၼ်ႉၵမ်းသိုဝ်ႈ
            sendText(text)
        }
    }
}
```

---

### **4. When to Register?**

ႁဝ်းတေလႆႈႁွင်ႉ `registerKeys()` ၵူႈပွၵ်ႈဢၼ်ႁဝ်းလႅၵ်ႈ Layout (မိူၼ်ၼင်ႇ လႅၵ်ႈ EN ပဵၼ် SHN) ၶႃႈ။

```kotlin
fun loadLayout(layoutId: Int) {
    keysContainer.removeAllViews()
    val newKeysView = layoutInflater.inflate(layoutId, null)
    keysContainer.addView(newKeysView)

    // *** ၵွင်ႉ Click Listener ႁႂ်ႈ Buttons တင်းသဵင်ႈ မႃးႁဵတ်းၵၢၼ်တီႈၼႆႈ ***
    registerKeys(newKeysView)
    
    // မႄးသီ Theme ပႃးၵမ်းလဵဝ်
    val prefs = PreferenceManager.getDefaultSharedPreferences(this)
    val currentTheme = prefs.getString("keyboard_theme", "BLUE") ?: "BLUE"
    applyTheme(newKeysView, currentTheme)
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Recursion:** ၸွႆႈႁႂ်ႈႁဝ်းႁႃ Buttons ၺႃးၵူႈဢၼ် ဢမ်ႇဝႃႈမၼ်းတေယူႇၼႂ်း Layout ၸၼ်ႉလႂ်။
* **Dynamic Mapping:** ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ ID ၵူႈတုမ်ႇ၊ ႁဝ်းၸႂ်ႉ `child.text` တႃႇႁူႉဝႃႈတေသူင်ႇလိၵ်ႈသင်။
* **Scalability:** လၢႆးၼႆႉ ၸွႆႈႁႂ်ႈႁဝ်းထႅမ် Layout မႂ်ႇ (မိူၼ်ၼင်ႇ Emoji ဢမ်ႇၼၼ် Symbols) လႆႈငၢႆႈငၢႆႈ၊ ၵွပ်ႈ Dispatcher တေႁဵတ်းၵၢၼ်ပၼ်ႁင်းၵူၺ်းမၼ်းၶႃႈ။

---

**Are you ready for Lesson 16: "Long-Press Logic: Implementing Pop-up Character Windows"???** (ႁဝ်းတေမႃးသၢင်ႈပိူင် ဢၼ်ၼိပ်ႉ "ၵ" ဝႆႉယၢဝ်းယၢဝ်း သေ မီးတုမ်ႇ "ၷ" ပႅၼ်ဢွၵ်ႇမႃး ႁႂ်ႈလိူၵ်ႈလႆႈၶႃႈ!)

**What do you think about the handleKeyPress logic? Should we add support for long-press now or finish the basic click events first?**