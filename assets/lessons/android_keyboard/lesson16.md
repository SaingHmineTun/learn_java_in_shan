## **Lesson 16: Long-Press Logic: Implementing Pop-up Character Windows**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၼႂ်းလိၵ်ႈတႆးလႄႈလိၵ်ႈမၢၼ်ႈၼၼ်ႉ တူဝ်လိၵ်ႈမၢင်တူဝ် ႁဝ်းဢမ်ႇသူႈလႆႈၸႂ်ႉၼမ် (မိူၼ်ၼင်ႇ **ၷ, ၻ, ၿ**)။ သင်ႁဝ်းဢဝ်တမ်းဝႆႉၼႃႈၸေႃးတင်းသဵင်ႈ Keyboard ႁဝ်းတေ ၵႅပ်ႈႁႅင်းပူၼ်ႉတီႈၶႃႈ။

**Long-Press Logic** ၸွႆႈႁႂ်ႈ Keyboard ႁဝ်း ၶိုၵ့်တွၼ်းၶိုၼ်း။ မိူဝ်ႈၵူၼ်းၸႂ်ႉၼိပ်ႉတုမ်ႇ **"ၵ"** ဝႆႉယၢဝ်းယၢဝ်း (Long Press)၊ ႁဝ်းတေပိုတ်ႇ **Pop-up Window** ဢိတ်းၼိုင်ႈ ႁႂ်ႈမၼ်းလိူၵ်ႈလႆႈတူဝ်လိၵ်ႈဢၼ်ၵွင်ႉၵၼ် မိူၼ်ၼင်ႇ **"ၷ"** ၶႃႈယဝ်ႉ။

---

### **1. Using Android PopupWindow**

ႁဝ်းတေၸႂ်ႉ `PopupWindow` တႃႇၼႄ Views တီႈၼိူဝ် Keyboard ၶႃႈ။

```kotlin
private fun showPopup(anchorView: View, popupCharacters: List<String>) {
    val layout = LinearLayout(this).apply {
        orientation = LinearLayout.HORIZONTAL
        backgroundColor = Color.DKGRAY
        setPadding(10, 10, 10, 10)
    }

    val popupWindow = PopupWindow(layout, 
        ViewGroup.LayoutParams.WRAP_CONTENT, 
        ViewGroup.LayoutParams.WRAP_CONTENT, true)

    for (char in popupCharacters) {
        val btn = Button(this).apply {
            text = char
            setOnClickListener {
                sendText(char)
                popupWindow.dismiss()
            }
        }
        layout.addView(btn)
    }

    // ၼႄ Pop-up တီႈၼိူဝ်တုမ်ႇၼိပ်ႉဢၼ်ႁဝ်းၼိပ်ႉဝႆႉၼၼ်ႉ
    popupWindow.showAsDropDown(anchorView, 0, -anchorView.height * 2)
}
```



---

### **2. Registering Long Click Listeners**

ၼႂ်း `registerKeys` Function ႁဝ်း (Lesson 15)၊ ႁဝ်းလူဝ်ႇထႅမ်သႂ်ႇ **`setOnLongClickListener`** ၶႃႈ။

```kotlin
fun registerKeys(view: View) {
    if (view is ViewGroup) {
        for (i in 0 until view.childCount) {
            val child = view.getChildAt(i)
            if (child is Button) {
                // Click ပိုတ်ႇ Normal
                child.setOnClickListener { ... }

                // Long Click ပိုတ်ႇ Pop-up
                child.setOnLongClickListener {
                    val popupChars = getPopupCharsFor(child.text.toString())
                    if (popupChars.isNotEmpty()) {
                        showPopup(child, popupChars)
                        true // တွၼ်ႈတႃႇလၢတ်ႈၼႄဝႃႈ ႁဝ်းၸတ်းၵၢၼ်ယဝ်ႉ
                    } else {
                        false
                    }
                }
            }
        }
    }
}
```

---

### **3. Mapping Characters (ၵၢၼ်ၵွင်ႉတူဝ်လိၵ်ႈ)**

ႁဝ်းလူဝ်ႇသၢင်ႈပိူင် (Map) ဝႃႈ တုမ်ႇလႂ် တေမီး Pop-up သင်ၶႃႈ။

```kotlin
private fun getPopupCharsFor(baseChar: String): List<String> {
    return when (baseChar) {
        "ၵ" -> listOf("ၷ")
        "တ" -> listOf("ၻ")
        "ပ" -> listOf("ၿ")
        "ၸ" -> listOf("ꩡ", "ၹ")
        "1" -> listOf("႑", "¹")
        else -> emptyList()
    }
}
```

---

### **4. User Experience (UX) Tip**

* **Vibration:** မိူဝ်ႈ Pop-up ပႅၼ်ဢွၵ်ႇမႃး၊ ႁဝ်းလူဝ်ႇသႂ်ႇ လွင်ႈတူင်ႉၼိုင် (Haptic Feedback) ဢိတ်းၼိုင်ႈ ၼင်ႇႁိုဝ်ၵူၼ်းၸႂ်ႉတေႁူႉတူဝ်ၶႃႈ။
* **Dismissal:** သင်ၵူၼ်းၸႂ်ႉပွႆႇမိုဝ်း ဢမ်ႇၼၼ် ၼဵၵ်းသေတီႈတီႈ၊ Pop-up လူဝ်ႇပိၵ်ႉၵႂႃႇႁင်းၵူၺ်းမၼ်းၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **PopupWindow:** ပဵၼ်ၶိူင်ႈၸႂ်ႉတႃႇၼႄ UI ၽိူဝ်ႇ (Floating UI) တီႈၼိူဝ် Keyboard။
* **LongClickListener:** ၸွႆႈႁႂ်ႈတုမ်ႇၼဵၵ်ႉၼိုင်ႈဢၼ် မီးၵၢၼ်ႁဵတ်းၵၢၼ်လႆႈ 2 မဵဝ်း။
* **Clean UI:** ၸွႆႈႁႂ်ႈ Keyboard ႁဝ်းဢမ်ႇယုင်ႈယၢင်ႈ (Cluttered) သေ ၵဵပ်းတူဝ်လိၵ်ႈဢၼ်ၸႂ်ႉဢေႇဝႆႉၼႂ်း Pop-up ၶႃႈယဝ်ႉ။

---