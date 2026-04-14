### **Lesson 17: Advanced Touch Logic for Popups**

#### **1. The Logic Strategy**
မိူဝ်ႈၵူၼ်းၸႂ်ႉၼိပ်ႉ Button ဝႆႉ:
1.  **ACTION_DOWN:** တႄႇၼပ်ႉၶိင်ႇ (Timer)။
2.  **Long Press Trigger:** ပိုတ်ႇ PopupWindow။
3.  **ACTION_MOVE:** ထတ်းတူၺ်းဝႃႈ မိုဝ်းၵူၼ်းၸႂ်ႉ လႅၼ်ႈၵႂႃႇၺႃး Button လႂ်ၼႂ်း Popup။
4.  **ACTION_UP:** ပွႆႇမိုဝ်းမိူဝ်ႈလႂ် ႁႂ်ႈ `commitText` တူဝ်လိၵ်ႈၼၼ်ႉ သေ ပိၵ်ႉ Popup ၵမ်းလဵဝ်။

---

#### **2. Updated `showPopup` with Touch Coordination**

ႁဝ်းလူဝ်ႇၵဵပ်း Buttons ၼႂ်း Popup ဝႆႉၼႂ်း List ၼင်ႇႁိုဝ်တေထတ်းၺႃး (Hit Test) လႆႈငၢႆႈၶႃႈ။

```kotlin
private var popupWindow: PopupWindow? = null
private val popupButtons = mutableListOf<Button>()

private fun showPopup(anchorView: View, popupCharacters: List<String>) {
    val layout = LinearLayout(this).apply {
        orientation = LinearLayout.HORIZONTAL
        backgroundColor = Color.DKGRAY
        elevation = 10f
    }

    popupButtons.clear()
    for (char in popupCharacters) {
        val btn = Button(this).apply {
            text = char
            background = null // ႁႂ်ႈမၼ်းတူၺ်းငၢႆႈ
            setTextColor(Color.WHITE)
        }
        layout.addView(btn)
        popupButtons.add(btn)
    }

    popupWindow = PopupWindow(layout, 
        ViewGroup.LayoutParams.WRAP_CONTENT, 
        ViewGroup.LayoutParams.WRAP_CONTENT)
    
    // ၼႄ Popup တီႈၼိူဝ် Anchor View
    popupWindow?.showAsDropDown(anchorView, 0, -anchorView.height * 2)
}
```

---

#### **3. Implementing the "Release to Commit" Logic**

ႁဝ်းတေမႃးမႄး `registerKeys` ႁႂ်ႈၸႂ်ႉ `OnTouchListener` ၶႃႈ:

```kotlin
child.setOnTouchListener { v, event ->
    when (event.action) {
        MotionEvent.ACTION_MOVE -> {
            if (popupWindow?.isShowing == true) {
                // ထတ်းတူၺ်းဝႃႈ မိုဝ်းတိုၵ်ႉၺႃး Button လႂ်ၼႂ်း Popup
                checkPopupSelection(event.rawX, event.rawY)
            }
        }
        MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
            if (popupWindow?.isShowing == true) {
                val selectedChar = getSelectedPopupChar()
                if (selectedChar != null) {
                    sendText(selectedChar)
                }
                popupWindow?.dismiss()
            }
        }
    }
    false // ႁႂ်ႈ LongClickListener တိုၵ်ႉႁဵတ်းၵၢၼ်လႆႈယူႇ
}
```

---

#### **4. Helper: Check which Popup Button is under the finger**

Function ၼႆႉ တေၸွႆႈထတ်းတူၺ်း တၢင်ႇၼမ်ႉ (Coordinates) ၶွင်မိုဝ်းၶႃႈ:

```kotlin
private fun checkPopupSelection(x: Float, y: Float) {
    for (btn in popupButtons) {
        val location = IntArray(2)
        btn.getLocationOnScreen(location)
        val rect = Rect(location[0], location[1], 
                        location[0] + btn.width, location[1] + btn.height)
        
        if (rect.contains(x.toInt(), y.toInt())) {
            btn.setBackgroundColor(Color.LTGRAY) // Highlight မိူဝ်ႈထူၺ်းၺႃး
            btn.tag = "selected"
        } else {
            btn.background = null
            btn.tag = null
        }
    }
}

private fun getSelectedPopupChar(): String? {
    return popupButtons.find { it.tag == "selected" }?.text?.toString()
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Seamless Experience:** ၵူၼ်းၸႂ်ႉဢမ်ႇလူဝ်ႇယုၵ်ႉမိုဝ်းမႂ်ႇ၊ ထူၺ်းသေပွႆႇ (Slide & Release) တေႁဵတ်းႁႂ်ႈတႅမ်ႈလိၵ်ႈၽၢႆလိူဝ်ၵဝ်ႇၶႃႈ။
* **Visual Feedback:** ၵၢၼ်လႅၵ်ႈသီ Background မိူဝ်ႈထူၺ်းၺႃး ၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉႁူႉဝႃႈ ၶဝ်တိုၵ်ႉလိူၵ်ႈတူဝ်လႂ်ယူႇ။

---