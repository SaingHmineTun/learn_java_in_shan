## **Lesson 20: Spacebar Swipe Logic: Implementing Cursor Control**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၵၢၼ်မႄးလိၵ်ႈၼႂ်းၾူၼ်းၼႆႉ ပဵၼ်လွင်ႈဢၼ်ယၢပ်ႇလိူဝ်ပိူၼ်ႈယဝ်ႉၶႃႈ။
ၵွပ်ႈဝႃႈမိုဝ်းႁဝ်းယႂ်ႇသေ Cursor ဢွၼ်ႇၼၼ်ႉယဝ်ႉၶႃႈ။ 
**Spacebar Swipe Logic** ပဵၼ် Feature ဢၼ် ၶႅမ်ႉတႄႉတႄႉၶႃႈ။
မၼ်းၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉ "ပၢၵ်ႈ" (Swipe) တီႈၼိူဝ် Spacebar သေ လႅၵ်ႈ Cursor ၵႂႃႇၽၢႆႇသၢႆႉ ၽၢႆႇၶႂႃ ႁႂ်ႈလိူၵ်ႈဢွင်ႈတီႈမႄးလိၵ်ႈလႆႈ ငၢႆႈငၢႆႈၶႃႈ။

---

### **1. Tracking the Swipe Movement**

ႁဝ်းတေလႆႈၸႂ်ႉ **`OnTouchListener`** တီႈတုမ်ႇ Spacebar တႃႇၼပ်ႉတူၺ်းဝႃႈ မိုဝ်းၵူၼ်းၸႂ်ႉလႅၼ်ႈၵႂႃႇၵႆၵႃႈႁိုဝ်ၶႃႈ။

```kotlin
private var initialX = 0f
private val SWIPE_THRESHOLD = 30 // တၢင်းၵႆ (Pixels) ဢၼ်တေၼပ်ႉပဵၼ် 1 တူဝ်လိၵ်ႈ

// ၼႂ်း registerKeys() တွၼ်ႈတႃႇ Spacebar
spaceButton.setOnTouchListener { v, event ->
    when (event.action) {
        MotionEvent.ACTION_DOWN -> {
            initialX = event.x
        }
        MotionEvent.ACTION_MOVE -> {
            val deltaX = event.x - initialX
            
            // သင်ထူၺ်းၵႂႃႇၵႆလိူဝ် Threshold
            if (Math.abs(deltaX) > SWIPE_THRESHOLD) {
                if (deltaX > 0) {
                    moveCursorRight()
                } else {
                    moveCursorLeft()
                }
                // Reset initialX ၼင်ႇႁိုဝ်တေၼပ်ႉတူဝ်ၼႃႈထႅင်ႈ
                initialX = event.x 
            }
        }
    }
    false // ႁႂ်ႈ OnClickListener တိုၵ်ႉႁဵတ်းၵၢၼ်လႆႈယူႇ
}
```

---

### **2. Moving the Cursor via InputConnection**

တွၼ်ႈတႃႇတေလႅၵ်ႈ Cursor ၼၼ်ႉ ႁဝ်းဢမ်ႇၸႂ်ႉ `commitText`။ ႁဝ်းတေလႆႈၸႂ်ႉ **`KeyEvent`** ဢၼ်ပဵၼ် **DPAD_LEFT** လႄႈ **DPAD_RIGHT** ၶႃႈ။

```kotlin
private fun moveCursorLeft() {
    val ic = currentInputConnection
    ic?.sendKeyEvent(KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_DPAD_LEFT))
    ic?.sendKeyEvent(KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_DPAD_LEFT))
}

private fun moveCursorRight() {
    val ic = currentInputConnection
    ic?.sendKeyEvent(KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_DPAD_RIGHT))
    ic?.sendKeyEvent(KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_DPAD_RIGHT))
}
```



---

### **3. Improving User Experience (Sensitivity)**

သင်ႁဝ်းတမ်း `SWIPE_THRESHOLD` ဝႆႉဢေႇပူၼ်ႉတီႈ၊ Cursor တေလႅၼ်ႈၽၢႆပူၼ်ႉၵႂႃႇၶႃႈ။ ႁဝ်းၸၢင်ႈသႂ်ႇ **Haptic Feedback** (တူင်ႉၼိုင်) ၵူႈပွၵ်ႈဢၼ် Cursor လႅၵ်ႈ ၼင်ႇႁိုဝ်ၵူၼ်းၸႂ်ႉတေႁူႉဝႃႈမၼ်းလႅၼ်ႈၵႂႃႇယဝ်ႉ 1 တူဝ်ၶႃႈ။

```kotlin
// ထႅမ်သႂ်ႇၼႂ်း moveCursor functions
v.performHapticFeedback(HapticFeedbackConstants.KEYBOARD_TAP)
```

---

### **4. Double-Tap Space for Period (Bonus Feature)**

ၵူၼ်းၸႂ်ႉၵမ်ႉၼမ် လိုမ်းတႅမ်ႈ "။" (Period) မိူဝ်ႈတႅမ်ႈယဝ်ႉ။ ႁဝ်းၸၢင်ႈထႅမ်သႂ်ႇ Logic ၼႆႉၼႂ်း `handleKeyPress` ၶႃႈ:

```kotlin
private var lastSpaceClickTime: Long = 0

fun handleSpace() {
    val currentTime = System.currentTimeMillis()
    if (currentTime - lastSpaceClickTime < 500) {
        // Double tap: လူတ်း Space ဢၼ်ၵဝ်ႇသေ သႂ်ႇ "။ "
        sendDelete()
        sendText("။ ")
    } else {
        sendText(" ")
    }
    lastSpaceClickTime = currentTime
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Touch Coordination:** ၸႂ်ႉ `deltaX` တႃႇႁူႉတၢင်းယၢဝ်းဢၼ်ၵူၼ်းၸႂ်ႉထူၺ်းမိုဝ်း။
* **DPAD Events:** ပဵၼ်လၢႆးဢၼ်လီသေပိူၼ်ႈ တႃႇလႅၵ်ႈ Cursor ၸွမ်းၼင်ႇ Standard Android။
* **Pro Feel:** ၵၢၼ်မီး Cursor Control တီႈ Spacebar ႁဵတ်းႁႂ်ႈ **TMK Keyboard Pro** တူၺ်းႁၼ် Pro တႄႉတႄႉၶႃႈ။

---