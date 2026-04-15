## **Lesson 29: Recent Emoji History: Persistent Storage with SharedPreferences**

### **Overview (ႁူဝ်ၶေႃႈ)**
ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေၸႂ်ႉ **`SharedPreferences`** တွၼ်ႈတႃႇၵဵပ်း Emoji ဢၼ်ၵူၼ်းၸႂ်ႉတိုၵ်ႉၼဵၵ်ႉၵႂႃႇ ၼႆၶႃႈ။
မိူဝ်ႈၵူၼ်းၸႂ်ႉပိၵ်ႉ Keyboard သေပိုတ်ႇမႃးၶိုၼ်းၵေႃႈ Emoji ၸိူဝ်းၼၼ်ႉ တေတိုၵ်ႉယူႇဝႆႉၼႂ်းထႅဝ် "Recent" ၶႃႈယဝ်ႉ။

---

### **1. Saving the Last Used Emoji**

ႁဝ်းလူဝ်ႇသၢင်ႈ Function တွၼ်ႈတႃႇၵဵပ်း String ၶွင် Emoji ၶဝ်ႈၵႂႃႇ။ ႁဝ်းတေၵဵပ်းပဵၼ် String ဢၼ်မီးတူဝ်တတ်း (Separator) မိူၼ်ၼင်ႇ `😂,❤️,🙏` ၶႃႈ။

```kotlin
// ၼႂ်း ShanKeyboardService.kt

private fun saveToRecentEmojis(emoji: String) {
    val prefs = getSharedPreferences("EmojiPrefs", Context.MODE_PRIVATE)
    val recentString = prefs.getString("recent_emojis", "") ?: ""
    
    // 1. တႅၵ်ႇဢဝ် List ၵဝ်ႇမႃး
    val recentList = recentString.split(",").filter { it.isNotEmpty() }.toMutableList()
    
    // 2. သင်မီးဝႆႉယဝ်ႉ ႁႂ်ႈထွၼ်ဢွၵ်ႇၵွၼ်ႇ (တႃႇဢဝ်မႃးတမ်းၽၢႆႇၼႃႈသုတ်း)
    recentList.remove(emoji)
    recentList.add(0, emoji)
    
    // 3. ၵဵပ်းဝႆႉၵွၺ်း 20 တူဝ် (ဢမ်ႇၼၼ် ၸွမ်းၼင်ႇမၵ်ႉ)
    val updatedList = recentList.take(20)
    
    // 4. Save ၶိုၼ်းၼႂ်း SharedPreferences
    prefs.edit().putString("recent_emojis", updatedList.joinToString(",")).apply()
}
```

---

### **2. Loading Recent Emojis**

မိူဝ်ႈၵူၼ်းၸႂ်ႉပိုတ်ႇ Emoji Picker၊ ႁဝ်းလူဝ်ႇဢၢၼ်ႇ Data ၼႆႉမႃးၼႄၶႃႈ။

```kotlin
private fun getRecentEmojis(): List<String> {
    val prefs = getSharedPreferences("EmojiPrefs", Context.MODE_PRIVATE)
    val recentString = prefs.getString("recent_emojis", "") ?: ""
    return recentString.split(",").filter { it.isNotEmpty() }
}
```

---

### **3. Updating the Emoji UI**

ႁဝ်းတေမႃးမႄး `showEmojiPicker` ႁႂ်ႈမၼ်းမီးတုမ်ႇၼဵၵ်ႉ "Recent" (🕒) ထႅင်ႈဢၼ်ၼိုင်ႈၶႃႈ။

```kotlin
// ၼႂ်း showEmojiPicker()

// ၵွင်ႉ Click Listener တွၼ်ႈတႃႇတုမ်ႇ Recent
emojiView.findViewById<Button>(R.id.btn_emoji_recent).setOnClickListener {
    updateGrid(getRecentEmojis()) // လူတ်ႇ Data မႂ်ႇတႃႇသေႇ
}

// ၵွင်ႉတုမ်ႇၼဵၵ်ႉ Emoji ၼႂ်း Grid ႁႂ်ႈမၼ်း Save ပႃး
grid.adapter = EmojiAdapter(this, smileyList) { emoji ->
    currentInputConnection?.commitText(emoji, 1)
    saveToRecentEmojis(emoji) // <--- Save ၵူႈပွၵ်ႈမိူဝ်ႈၼိပ်ႉ
}
```

---

### **4. Understanding SharedPreferences**
`SharedPreferences` ပဵၼ်လၢႆးၵဵပ်း Data ဢၼ် "လဵၵ်ႉလႄႈမဝ်" (Lightweight) သေပိူၼ်ႈၼႂ်း Android။ 
မၼ်းၵဵပ်းပဵၼ် **Key-Value Pair** (မိူၼ်ၼင်ႇ `recent_emojis` -> `😂,❤️`) ဝႆႉၼႂ်း File XML တီႈၼႂ်း Folder ၶွင် App ႁဝ်း ႁဵတ်းႁႂ်ႈ Data ဢမ်ႇႁၢႆလၢႆ ဢမ်ႇဝႃႈတေပိၵ်ႉၾူၼ်းၵေႃႈယဝ်ႉ။



---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Persistent Storage:** ၸႂ်ႉ `SharedPreferences` တွၼ်ႈတႃႇ "ထိင်းသိမ်း" Data ၵူၼ်းၸႂ်ႉ။
* **User Efficiency:** ၵူၼ်းၸႂ်ႉတႅမ်ႈလႆႈဝႆးလိူဝ်ၵဝ်ႇ ယွၼ်ႉ Emoji ဢၼ်ၶဝ်လႆႈၸႂ်ႉ တေယူႇၽၢႆႇၼႃႈတႃႇသေႇ။
* **String Manipulation:** ၵၢၼ်ၸႂ်ႉ `joinToString` လႄႈ `split` ၸွႆႈႁႂ်ႈႁဝ်းၵုမ်းထိင်း List ၼႂ်း String ဢၼ်လဵဝ်လႆႈငၢႆႈၶႃႈ။

---