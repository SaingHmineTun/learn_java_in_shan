## **Lesson 25: Unicode vs Zawgyi (Long-Press Enter Toggle)**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၼႂ်းမိူင်းႁဝ်းၼႆႉ ပၼ်ႁႃလူင်ဢၼ်ၼိုင်ႈပဵၼ်လွင်ႈ **Encoding** ၶႃႈ။ မိူဝ်ႈႁဝ်းတႅမ်ႈ Unicode ၵႂႃႇၸူးၵူၼ်းၸႂ်ႉ Zawgyi၊ ၶဝ်တေႁၼ်လိၵ်ႈႁဝ်းပဵၼ် "လိၵ်ႈယုင်ႈ"။ ၼင်ႇႁိုဝ် **TMK Keyboard Pro** တေၸွႆႈၵႄႈပၼ်ႁႃၼႆႉလႆႈ၊ ႁဝ်းလူဝ်ႇသႂ်ႇ **Converter** ဢၼ်ၸၢင်ႈလႅၵ်ႈလိၵ်ႈလႆႈ **Real-time** ၶႃႈယဝ်ႉ။

တွၼ်ႈတႃႇႁႂ်ႈ UI ႁဝ်းသႅၼ်ႇလႅင်း (Clean)၊ ႁဝ်းတေဢမ်ႇသႂ်ႇတုမ်ႇၼဵၵ်ႉသပ်ႉပလပ်ႉဝႆႉၼိူဝ်ၼႃႈၸေႃး။ ႁဝ်းတေၸႂ်ႉလၢႆး **Long-press Enter** တႃႇလႅၵ်ႈ Mode ၶႃႈယဝ်ႉ။

---

### **1. The Challenge: Glyph vs. Logical Encoding**

* **Unicode:** ၵဵပ်း Data ၸွမ်းၼင်ႇသဵင် (Logical Order)။ (ၵ + ေ = ၵေ)
* **Zawgyi:** ၵဵပ်း Data ၸွမ်းၼင်ႇႁၢင်ႈ (Visual Order)။ (ေ + ၵ = ေၵ)



---

### **2. Implementing the Toggle Switch**

ႁဝ်းတေၵုမ်းထိင်း State ႁဝ်းလူၺ်း Variable `isZawgyiMode` သေ ႁွင်ႉၸႂ်ႉမိူဝ်ႈၼိပ်ႉ Enter ႁိုင်ႁိုင်ၶႃႈ။

```kotlin
private var isZawgyiMode = false // Default ပဵၼ် Unicode

private fun toggleZawgyiMode() {
    isZawgyiMode = !isZawgyiMode
    
    // 1. Trigger Vibration ႁႂ်ႈႁူႉဝႃႈလႅၵ်ႈယဝ်ႉ
    currentInputView?.performHapticFeedback(HapticFeedbackConstants.LONG_PRESS)
    
    // 2. ၼႄ Toast လၢတ်ႈၼႄ Mode
    val modeName = if (isZawgyiMode) "Zawgyi Output" else "Unicode Output"
    Toast.makeText(this, "Mode: $modeName", Toast.LENGTH_SHORT).show()
    
    // 3. Update Label တီႈ Spacebar ၼင်ႇႁိုဝ်တေႁူႉတူဝ်
    updateKeyboardLayout() 
}
```

---

### **3. Integrating with the Reordering Engine**

ယၢမ်းလဵဝ် ၼႂ်း `handleShanInput` ႁဝ်း၊ ႁဝ်းလူဝ်ႇၸတ်းၵၢၼ် Logic ၸွမ်းၼင်ႇ Mode ၶႃႈ:

```kotlin
fun handleShanInput(text: String) {
    val ic = currentInputConnection ?: return
    
    if (isZawgyiMode) {
        // Zawgyi Mode: ဢမ်ႇလူဝ်ႇ Engine၊ လႅၵ်ႈပဵၼ် ZG သေသူင်ႇၵမ်းသိုဝ်ႈ
        val zgText = MyConverter.uni2Zg(text)
        ic.commitText(zgText, 1)
        
        // Reset Engine Flags ၼင်ႇႁိုဝ်တေဢမ်ႇယုင်ႈမိူဝ်ႈလႅၵ်ႈ Uni ၶိုၼ်း
        shanEngine.reset() 
    } else {
        // Unicode Mode: တေလႆႈၸႂ်ႉ Reordering Engine (Lesson 22)
        val primaryCode = text.first().code
        val result = shanEngine.handleInput(primaryCode, ic)
        if (result != null) ic.commitText(result, 1)
    }
}
```

---

### **4. Registering the Long-Press Listener**

ၼႂ်း `registerKeys` Function၊ ႁဝ်းလူဝ်ႇထႅမ် Rule တႃႇတုမ်ႇ **`key_enter`** ၶႃႈ:

```kotlin
if (child.id == R.id.key_enter) {
    child.setOnLongClickListener {
        toggleZawgyiMode()
        true 
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Clean UI:** ၵၢၼ်ဢဝ် Converter ဝႆႉတီႈ Long-press Enter ၸွႆႈႁႂ်ႈ Keyboard တူၺ်းႁၼ် Simple ၵွၺ်းၵႃႈ Powerful တႄႉတႄႉ။
* **Dual-Logic:** Keyboard ႁဝ်းတေႁူႉႁင်းၵူၺ်းမၼ်းဝႃႈ လူဝ်ႇၸႂ်ႉ **Reordering Engine** (Unicode) ႁႃႉ ဢမ်ႇလူဝ်ႇ (Zawgyi) ၶႃႈ။
* **User Feedback:** ၵၢၼ်ၼႄ Toast လႄႈ ၵၢၼ်လႅၵ်ႈ Label တီႈ Spacebar ၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉႁူႉတူဝ်တႃႇသေႇၶႃႈ။

---
