## **Lesson 31: Clipboard Manager: Saving and Pasting Multiple Snippets**

### **1. How it Works (The Logic)**
ႁဝ်းလူဝ်ႇလႆႈထတ်းတူၺ်း (Listen) ဝႃႈ မိူဝ်ႈလႂ်ၵူၼ်းၸႂ်ႉ "Copy" လိၵ်ႈ။ 
ၼႂ်း Android၊ ႁဝ်းတေၸႂ်ႉ **`ClipboardManager.OnPrimaryClipChangedListener`** တွၼ်ႈတႃႇႁပ်ႉႁူႉလွင်ႈလႅၵ်ႈလၢႆႈၶႃႈ။



---

### **2. Creating the Clipboard Logic**

ႁဝ်းတေသၢင်ႈ List တွၼ်ႈတႃႇၵဵပ်းလိၵ်ႈ (Snippets) ဝႆႉၼႂ်း `ShanKeyboardService` ၶႃႈ။

```kotlin
// ၼႂ်း ShanKeyboardService.kt

private lateinit var clipboard: ClipboardManager
private val clipHistory = mutableListOf<String>()

private fun setupClipboard() {
    clipboard = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
    
    // ထတ်းတူၺ်းမိူဝ်ႈၵူၼ်းၸႂ်ႉ Copy လိၵ်ႈ
    clipboard.addPrimaryClipChangedListener {
        val clipData = clipboard.primaryClip
        if (clipData != null && clipData.itemCount > 0) {
            val text = clipData.getItemAt(0).text.toString()
            if (text.isNotEmpty() && !clipHistory.contains(text)) {
                // ထႅမ်သႂ်ႇၼႂ်း History (ဢဝ်တမ်းဝႆႉၽၢႆႇၼႃႈသုတ်း)
                clipHistory.add(0, text)
                // ၵဵပ်းဝႆႉၵွၺ်း 10-20 ထႅဝ် ၼင်ႇႁိုဝ် Memory တေဢမ်ႇတဵမ်
                if (clipHistory.size > 20) clipHistory.removeAt(20)
            }
        }
    }
}
```

---

### **3. Designing the Clipboard Layout (clipboard_view.xml)**

ႁဝ်းလူဝ်ႇမီး View ဢွၼ်ႇၼိုင်ႈဢၼ် တွၼ်ႈတႃႇၼႄသဵၼ်ႈမၢႆလိၵ်ႈဢၼ် Copy ဝႆႉၶႃႈ။ 
ႁဝ်းၸၢင်ႈၸႂ်ႉ **`RecyclerView`** ဢမ်ႇၼၼ် **`LinearLayout`** ၼႂ်း `HorizontalScrollView` ၵေႃႈလႆႈၶႃႈ။

```xml
<HorizontalScrollView xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="45dp"
    android:background="#2C2C2C"
    android:scrollbars="none">

    <LinearLayout
        android:id="@+id/clipboard_item_container"
        android:layout_width="wrap_content"
        android:layout_height="match_parent"
        android:orientation="horizontal"
        android:padding="5dp" />
</HorizontalScrollView>
```

---

### **4. Showing Clipboard in Keyboard**

မိူဝ်ႈၵူၼ်းၸႂ်ႉၼိပ်ႉတုမ်ႇ **Clipboard (📋)**၊ ႁဝ်းတေလႅၵ်ႈ Suggestion Bar ႁဝ်း ႁႂ်ႈၼႄ History ၸိူဝ်းၼႆႉတႅၼ်းၶႃႈ။

```kotlin
private fun showClipboardHistory() {
    // ၵွင်ႉၸူး Container ဢၼ်မီးၼႂ်း Suggestion Bar (ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼႂ်း Lesson 27)
    val container = currentInputView.findViewById<LinearLayout>(R.id.candidate_container)
    container.removeAllViews()

    if (clipHistory.isEmpty()) {
        val tv = TextView(this).apply { text = "Clipboard Empty" }
        container.addView(tv)
        return
    }

    clipHistory.forEach { text ->
        val item = TextView(this).apply {
            this.text = text
            maxLines = 1
            ellipsize = TextUtils.TruncateAt.END
            setPadding(30, 0, 30, 0)
            gravity = Gravity.CENTER
            setTextColor(Color.WHITE)
            setBackgroundResource(R.drawable.key_background) // ၸႂ်ႉ Background ဢၼ်မီးဝႆႉ
            
            setOnClickListener {
                currentInputConnection?.commitText(text, 1)
            }
        }
        container.addView(item)
    }
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **OnPrimaryClipChangedListener:** ၸွႆႈႁႂ်ႈ Keyboard ႁဝ်း "ႁူႉ" တႃႇသေႇ မိူဝ်ႈၵူၼ်းၸႂ်ႉ Copy လိၵ်ႈလုၵ်ႉတီႈ App တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ Facebook/Telegram)။
* **Persistent History:** ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ `SharedPreferences` (Lesson 29) တွၼ်ႈတႃႇၵဵပ်း History ၼႆႉဝႆႉ ဢမ်ႇႁႂ်ႈမၼ်းႁၢႆမိူဝ်ႈပိၵ်ႉ Keyboard ၶႃႈ။
* **UX Improvement:** ၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉ ဢမ်ႇလူဝ်ႇလႅၵ်ႈ App ၵႂႃႇၵႂႃႇမႃးမႃး တွၼ်ႈတႃႇ Copy လိၵ်ႈလၢႆလၢႆဢၼ်ၶႃႈ။

---