## **Lesson 18: Shift and Caps Lock State: Managing Capitalization Logic**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၵၢၼ်ၸတ်းၵၢၼ် **Shift State** ပဵၼ်လွင်ႈယႂ်ႇသေပိူၼ်ႈ တွၼ်ႈတႃႇ Keyboard ဢၼ်မီးလၢႆ Layout ၶႃႈ။ 
ၼႂ်းလိၵ်ႈဢင်းၵိတ်ႉ၊ Shift ၸႂ်ႉတႃႇလႅၵ်ႈပဵၼ်တူဝ်ယႂ်ႇ (Uppercase)။ ၵွၺ်းၵႃႈ ၼႂ်းလိၵ်ႈတႆးလႄႈလိၵ်ႈမၢၼ်ႈ၊ Shift ၸႂ်ႉတႃႇလႅၵ်ႈ Layout သေၼႄတူဝ်လိၵ်ႈ "သိူၼ်ႈ" ဢမ်ႇၼၼ် တူဝ်လိၵ်ႈဢၼ်ၸႂ်ႉဢေႇၶႃႈ။

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးတႅမ်ႈ Code တႃႇၵုမ်းထိင်း 3 States:
1.  **OFF:** တူဝ်လိၵ်ႈထမ်ႇမတႃႇ (Lower case / Normal Shan).
2.  **ON:** မိူဝ်ႈၼဵၵ်ႉ Shift ဝႆႉ (Upper case / Shifted Shan).
3.  **CAPS_LOCK:** မိူဝ်ႈၼဵၵ်ႉ Shift 2 ပွၵ်ႈ တႃႇႁႂ်ႈမၼ်းၶမ်ဝႆႉၶႃႈ။

---

### **1. Defining the States**

ဢွၼ်တၢင်းသုတ်း၊ ႁဝ်းတမ်း Enum ဝႆႉၼႂ်း **`ShanKeyboardService`** ၶႃႈ။

```kotlin
enum class ShiftState {
    OFF, ON, CAPS_LOCK
}

private var currentShiftState = ShiftState.OFF
private var currentLanguage = "EN" // EN, MY, SHN
```

---

### **2. The Shift Toggle Logic**

မိူဝ်ႈၵူၼ်းၸႂ်ႉၼိပ်ႉတုမ်ႇ **Shift**, ႁဝ်းတေလႆႈလႅၵ်ႈ State မၼ်းၸွမ်းလၢႆးၼႆႉၶႃႈ:

```kotlin
private fun handleShift() {
    currentShiftState = when (currentShiftState) {
        ShiftState.OFF -> ShiftState.ON
        ShiftState.ON -> ShiftState.CAPS_LOCK
        ShiftState.CAPS_LOCK -> ShiftState.OFF
    }
    
    updateKeyboardLayout() // လႅၵ်ႈ XML Layout ၸွမ်းၼင်ႇ State
}
```

---

### **3. Updating the Layout (Dynamic Switching)**

ယွၼ်ႉႁဝ်းမီး Layout ၸႅၵ်ႇၵၼ်ဝႆႉ (Normal/Shifted) တွၼ်ႈတႃႇၵူႈၽႃႇသႃႇ၊ ႁဝ်းတေၸတ်းၵၢၼ်ၼင်ႇၼႆၶႃႈ:

```kotlin
private fun updateKeyboardLayout() {
    val layoutToLoad = when (currentLanguage) {
        "EN" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_en else R.layout.layout_en_shifted
        "MY" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_my_normal else R.layout.layout_my_shifted
        "SHN" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_shn_normal else R.layout.layout_shn_shifted
        else -> R.layout.layout_en
    }
    
    loadLayout(layoutToLoad) // Function ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း Lesson 15
}
```

---

### **4. Auto-Unshift Logic**

ၼႂ်း Keyboard ယူႇယူႇၼၼ်ႉ၊ မိူဝ်ႈႁဝ်းတႅမ်ႈတူဝ်လိၵ်ႈယႂ်ႇ (Shift ON) ယဝ်ႉ 1 တူဝ်၊ Keyboard လူဝ်ႇလႅၵ်ႈပဵၼ်တူဝ်ဢွၼ်ႇ (Shift OFF) ၶိုၼ်းႁင်းၵူၺ်းမၼ်း (ဢမ်ႇပႃး Caps Lock) ၶႃႈ။

မႄးၼႂ်း `handleKeyPress` (Lesson 15) ၶႃႈ:

```kotlin
private fun handleKeyPress(viewId: Int, text: String) {
    if (viewId == R.id.key_shift || viewId == R.id.key_my_shift || viewId == R.id.key_shn_shift) {
        handleShift()
    } else {
        sendText(text)
        
        // သင်ပဵၼ် Shift ON (ဢမ်ႇၸႂ်ႉ Caps Lock) ႁႂ်ႈပိၵ်ႉၶိုၼ်း မိူဝ်ႈတႅမ်ႈယဝ်ႉ 1 တူဝ်
        if (currentShiftState == ShiftState.ON) {
            currentShiftState = ShiftState.OFF
            updateKeyboardLayout()
        }
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Consistency:** ယွၼ်ႉၵူႈၽႃႇသႃႇမီးပိူင် Normal လႄႈ Shifted မိူၼ်ၵၼ်၊ Code ႁဝ်းတေတူၺ်းႁၼ်သႅၼ်ႇလႅင်း (Clean Code) ၶႃႈ။
* **State Control:** ၵၢၼ်ၸတ်းၵၢၼ် ShiftState ၸွႆႈႁႂ်ႈ Keyboard "Smart" သေ ႁူႉဝႃႈလူဝ်ႇၼႄ Layout လႂ် ၼႂ်းၶိင်ႇလႂ်ၶႃႈ။
* **User Experience:** Auto-unshift ၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉတႅမ်ႈလိၵ်ႈလႆႈၽၢႆလိူဝ်ၵဝ်ႇ၊ ဢမ်ႇလူဝ်ႇမႃးၼိပ်ႉပိၵ်ႉ Shift ၶိုၼ်းႁင်းၵူၺ်းၶႃႈ။

---

**Are you ready for Lesson 19: "Spacebar Swipe Logic: Implementing Cursor Control"???** (ႁဝ်းတေမႃးတႅမ်ႈ Code ဢၼ် "ထူၺ်း" တီႈ Spacebar သေ လႅၵ်ႈ Cursor ၵႂႃႇၽၢႆႇသၢႆႉ ၽၢႆႇၶႂႃ ႁႂ်ႈမႄးလိၵ်ႈလႆႈငၢႆႈငၢႆႈၶႃႈ!)