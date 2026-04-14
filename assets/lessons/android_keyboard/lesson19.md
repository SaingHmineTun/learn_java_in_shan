## **Lesson 19: Advanced Shift Logic (Double-Tap for Caps Lock)**

### **1. Tracking Click Intervals**

ႁဝ်းတေလႆႈၵဵပ်းၶိင်ႇ (Time) ဢၼ်ႁဝ်းၼိပ်ႉ Shift ပွၵ်ႈၵဝ်ႇဝႆႉ ၼင်ႇႁိုဝ်တေဢဝ်မႃးၼိူဝ်းၵၼ် (Compare) လႆႈၶႃႈ။

```kotlin
private var lastShiftClickTime: Long = 0
private val CAPS_LOCK_THRESHOLD = 500 // 500 milliseconds (0.5 sec)

enum class ShiftState {
    OFF, ON, CAPS_LOCK
}

private var currentShiftState = ShiftState.OFF
```

---

### **2. Updated `handleShift` Function**

ႁဝ်းတေၸႂ်ႉ `System.currentTimeMillis()` တႃႇႁူႉၶိင်ႇယၢမ်းတႄႉတႄႉၶႃႈ။

```kotlin
private fun handleShift() {
    val currentTime = System.currentTimeMillis()
    
    // 1. ထတ်းတူၺ်းဝႃႈ ၼိပ်ႉသွင်ပွၵ်ႈၼႂ်း 500ms ႁႃႉ?
    if (currentTime - lastShiftClickTime <= CAPS_LOCK_THRESHOLD) {
        // ၼိပ်ႉၽၢႆ: ပိုတ်ႇ Caps Lock
        currentShiftState = ShiftState.CAPS_LOCK
    } else {
        // ၼိပ်ႉယူႇယူႇ: လႅၵ်ႈ ON / OFF
        currentShiftState = if (currentShiftState == ShiftState.OFF) {
            ShiftState.ON
        } else {
            ShiftState.OFF
        }
    }

    // 2. ၵဵပ်းၶိင်ႇယၢမ်းပွၵ်ႈၼႆႉဝႆႉ တႃႇၸႂ်ႉပွၵ်ႈၼႃႈ
    lastShiftClickTime = currentTime
    
    // 3. Update Layout ႁႂ်ႈလႅၵ်ႈ XML ၸွမ်း
    updateKeyboardLayout()
}
```

---

### **3. Why this works better?**
* **Logic:** သင်ၵူၼ်းၸႂ်ႉၼိပ်ႉ `Shift -> [ပိုတ်ႇ ON] -> (ၼဵၵ်ႉထႅင်ႈပွၵ်ႈၼိုင်ႈၽႂ်းၽႂ်း) -> [ပိုတ်ႇ Caps Lock]`။
* **Fallback:** သင်ၼဵၵ်ႉယဝ်ႉ ၵိုတ်ႉဝႆႉႁိုင်လိူဝ် 500ms ယဝ်ႉ ၶိုၼ်းမႃးၼဵၵ်ႉထႅင်ႈပွၵ်ႈၼိုင်ႈၼႆ မၼ်းတေထၢင်ႇဝႃႈ ၵူၼ်းၸႂ်ႉလူဝ်ႇပိၵ်ႉ (OFF) ၵွၺ်းၶႃႈ။



---

### **4. Visual Feedback for Caps Lock**

ၼင်ႇႁိုဝ်ၵူၼ်းၸႂ်ႉတေဢမ်ႇယုင်ႈ၊ ႁဝ်းထုၵ်ႇလီလႅၵ်ႈ Icon ဢမ်ႇၼၼ် သီတုမ်ႇ Shift ၶႃႈ:

```kotlin
private fun updateShiftIcon(shiftButton: Button) {
    when (currentShiftState) {
        ShiftState.OFF -> {
            shiftButton.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_shift_off, 0, 0, 0)
            shiftButton.backgroundTintList = null // သီယူႇယူႇ
        }
        ShiftState.ON -> {
            shiftButton.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_shift_on, 0, 0, 0)
        }
        ShiftState.CAPS_LOCK -> {
            shiftButton.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_shift_caps, 0, 0, 0)
            // သႂ်ႇသီပၼ် ၼင်ႇႁိုဝ်တေႁူႉဝႃႈမၼ်း "ၶမ်" (Locked) ဝႆႉ
            shiftButton.backgroundTintList = ColorStateList.valueOf(Color.parseColor("#FFD700")) // Gold for Pro!
        }
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Threshold (500ms):** ပဵၼ်ၶိူင်ႈတႅတ်ႈတေႃး တႃႇၸႅၵ်ႇ Single Click လႄႈ Double Click။
* **Seamless State:** ၵူၼ်းၸႂ်ႉတေယူႇငၢႆႈလိူဝ် ၵွပ်ႈမၼ်းႁဵတ်းၵၢၼ်မိူၼ် Keyboard ဢၼ်ၶဝ်ၸႂ်ႉယူႇၵူႈဝၼ်းၶႃႈ။

---
