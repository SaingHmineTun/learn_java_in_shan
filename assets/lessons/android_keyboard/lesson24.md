## **Module 4 | Lesson 24: Multi-Script Toggle: Switching Between Languages in One Tap**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
Keyboard ဢၼ် Pro တႄႉတႄႉၼၼ်ႉ တေလႆႈလႅၵ်ႈၽႃႇသႃႇ (Language Switching) လႆႈငၢႆႈ လႄႈ ဝႆးၶႃႈ။ ယွၼ်ႉဝႃႈ ၵူၼ်းၸႂ်ႉလိၵ်ႈတႆးႁဝ်း ၵမ်ႉၼမ်တႅမ်ႈပႃးလိၵ်ႈဢင်းၵိတ်ႉ လႄႈ လိၵ်ႈမၢၼ်ႈၸွမ်းၵၼ်၊ ၵၢၼ်ၼိပ်ႉတုမ်ႇ **Globe (🌐)** ၼိုင်ႈပွၵ်ႈ လူဝ်ႇလႅၵ်ႈ Layout လႆႈၵမ်းလဵဝ်ၶႃႈ။

ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးၸတ်းၵၢၼ် **Circular Toggle Logic** တွၼ်ႈတႃႇလႅၵ်ႈ EN -> SHN -> MY ၶႃႈယဝ်ႉ။

---

### **1. Defining the Language Cycle**

ႁဝ်းတေလႆႈၵဵပ်းသဵၼ်ႈမၢႆၽႃႇသႃႇဝႆႉၼႂ်း `List` သေ ၸႂ်ႉ `index` တႃႇႁူႉဝႃႈယၢမ်းလဵဝ်ယူႇတီႈလႂ်ၶႃႈ။

```kotlin
private val languages = listOf("EN", "SHN", "MY")
private var currentLanguageIndex = 0

// ဢဝ်ပဵၼ် Property တႃႇႁွင်ႉၸႂ်ႉငၢႆႈ
val currentLanguage: String 
    get() = languages[currentLanguageIndex]
```

---

### **2. The Toggle Logic**

မိူဝ်ႈၵူၼ်းၸႂ်ႉၼိပ်ႉတုမ်ႇ 🌐 (`key_lang`)၊ ႁဝ်းတေ "တူတ်ႉ" (Increment) Index ႁဝ်းၶႃႈ။ သင်မၼ်းၵႂႃႇသုတ်းတီႈ "MY" ယဝ်ႉ ႁႂ်ႈမၼ်းပၼ်ႇၶိုၼ်းမႃးတီႈ "EN" ၶႃႈ။

```kotlin
fun toggleLanguage() {
    // ပၼ်ႇ Index (EN 0 -> SHN 1 -> MY 2 -> EN 0)
    currentLanguageIndex = (currentLanguageIndex + 1) % languages.size
    
    // Reset Shift State မိူဝ်ႈလႅၵ်ႈၽႃႇသႃႇ ၼင်ႇႁိုဝ်တေဢမ်ႇယုင်ႈ
    currentShiftState = ShiftState.OFF
    
    // Update Layout ၸွမ်းၼင်ႇၽႃႇသႃႇမႂ်ႇ
    updateKeyboardLayout()
    
    // Visual Feedback: ၼႄပႅၼ် (Toast ဢမ်ႇၼၼ် Popup) ဝႃႈပဵၼ်ၽႃႇသႃႇသင်
    showLanguageToast(currentLanguage)
}
```

---

### **3. Dynamic Layout Selector**

ႁဝ်းလူဝ်ႇမႄး Function `updateKeyboardLayout` ႁႂ်ႈမၼ်းႁူႉၸႅၼ်ႇလႅင်းဝႃႈ တေလူဝ်ႇပိုတ်ႇ XML ဢၼ်လႂ်ၶႃႈ။

```kotlin
private fun updateKeyboardLayout() {
    val layoutId = when (currentLanguage) {
        "EN" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_en else R.layout.layout_en_shifted
        "SHN" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_shn_normal else R.layout.layout_shn_shifted
        "MY" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_my_normal else R.layout.layout_my_shifted
        else -> R.layout.layout_en
    }
    
    loadLayout(layoutId) // ႁွင်ႉၸႂ်ႉ Function ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း Module 2
}
```

---

### **4. Handling the Globe Key in Dispatcher**

ၼႂ်း `handleKeyPress` (Lesson 15), ႁဝ်းလူဝ်ႇၵွင်ႉ ID ၶွင်တုမ်ႇ 🌐 ၶဝ်ႈၸူး Logic ၼႆႉၶႃႈ:

```kotlin
when (viewId) {
    R.id.key_lang -> toggleLanguage()
    R.id.key_del -> handleShanDelete() // Smart delete ဢၼ်ႁဝ်းမႄးဝႆႉ
    // ... တၢင်ႇဢၼ် ...
}
```

---

### **5. Pro Feature: Spacebar Labeling**

ၼင်ႇႁိုဝ်ၵူၼ်းၸႂ်ႉတေဢမ်ႇလိုမ်းဝႃႈ ၶဝ်တိုၵ်ႉၸႂ်ႉၽႃႇသႃႇသင်ယူႇ၊ ႁဝ်းလူဝ်ႇလႅၵ်ႈတူဝ်လိၵ်ႈ (Text) တီႈၼိူဝ် Spacebar ၸွမ်းၶႃႈ။

```kotlin
private fun updateSpacebarLabel(rootView: View) {
    val spaceBtn = rootView.findViewById<Button>(R.id.key_space)
    spaceBtn?.text = when (currentLanguage) {
        "EN" -> "English"
        "SHN" -> "လိၵ်ႈတႆး"
        "MY" -> "မြန်မာစာ"
        else -> "Space"
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Circular Loop:** ၸႂ်ႉ Modulo operator (`%`) တႃႇႁႂ်ႈၽႃႇသႃႇပၼ်ႇၵႂႃႇပၼ်ႇမႃးလႆႈ ဢမ်ႇမီးဝၼ်းသုတ်း။
* **State Reset:** ၵၢၼ် Reset Shift State မိူဝ်ႈလႅၵ်ႈၽႃႇသႃႇ ၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉဢမ်ႇယုင်ႈယၢင်ႈ။
* **Context Awareness:** ၵၢၼ်လႅၵ်ႈ Label တီႈ Spacebar ႁဵတ်းႁႂ်ႈ UI ႁဝ်းတူၺ်းႁၼ် Professional လိူဝ်ၵဝ်ႇၶႃႈ။

---