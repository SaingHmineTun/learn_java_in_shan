## **Lesson 28: Custom Emoji Keyboard: Building a Grid-based XML Picker**

### **Overview (ႁူဝ်ၶေႃႈ)**
ၼႂ်း Lesson ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ Layout တွၼ်ႈတႃႇ Emoji ဢၼ်ၸၢင်ႈ "Scroll" လႆႈ လႄႈ မီးတုမ်ႇၼဵၵ်ႉလိူၵ်ႈ Category (မိူၼ်ၼင်ႇ 😊, 🍔, 🚗)။ 
ႁဝ်းတေၸႂ်ႉ **`RecyclerView`** ဢမ်ႇၼၼ် **`GridLayout`** ၼႂ်း XML တွၼ်ႈတႃႇၸတ်းလွၵ်းမၼ်းၶႃႈ။

---

### **1. Designing the Emoji Layout (res/layout/emoji_picker.xml)**

ႁဝ်းလူဝ်ႇမီး Container ဢၼ်တေၼႄ Emoji တင်းၼမ်။ လၢႆးဢၼ်လီသေပိူၼ်ႈ ပဵၼ်ၵၢၼ်ၸႂ်ႉ **`GridView`** ၶႃႈ။

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent" android:layout_height="wrap_content"
    android:background="#1A1A1A" android:orientation="vertical">

    <GridView android:id="@+id/emoji_grid" android:layout_width="match_parent"
        android:layout_height="200dp" android:columnWidth="50dp" android:gravity="center"
        android:numColumns="7" android:padding="5dp" android:stretchMode="columnWidth" />

    <LinearLayout android:layout_width="match_parent" android:layout_height="45dp"
        android:background="#2C2C2C" android:orientation="horizontal">

        <Button android:id="@+id/btn_emoji_smiley" android:layout_width="0dp"
            android:layout_height="match_parent" android:layout_weight="1"
            android:background="@android:color/transparent" android:text="😊" />

        <Button android:id="@+id/btn_emoji_nature" android:layout_width="0dp"
            android:layout_height="match_parent" android:layout_weight="1"
            android:background="@android:color/transparent" android:text="🐶" />

        <Button android:id="@+id/btn_emoji_back" android:layout_width="0dp"
            android:layout_height="match_parent" android:layout_weight="1"
            android:background="@android:color/transparent" android:text="⌨"
            android:textColor="#FFFFFF" />
    </LinearLayout>
</LinearLayout>
```

---

### **2. Creating the Emoji Adapter**

ယွၼ်ႉ `GridView` လူဝ်ႇလႆႈမီး `Adapter` တွၼ်ႈတႃႇထႅမ် Emoji ၶဝ်ႈၵႂႃႇ၊ ႁဝ်းတေတႅမ်ႈ Class ဢွၼ်ႇၼိုင်ႈဢၼ်ၶႃႈ။

```kotlin
class EmojiAdapter(context: Context, private val emojis: List<String>, val onClick: (String) -> Unit) : BaseAdapter() {
    private val inflater = LayoutInflater.from(context)

    override fun getCount(): Int = emojis.size
    override fun getItem(position: Int) = emojis[position]
    override fun getItemId(position: Int) = position.toLong()

    override fun getView(position: Int, convertView: View?, parent: ViewGroup?): View {
        val view = convertView ?: inflater.inflate(android.R.layout.simple_list_item_1, parent, false)
        val textView = view.findViewById<TextView>(android.R.id.text1)
        textView.text = emojis[position]
        textView.textSize = 24f
        textView.gravity = Gravity.CENTER
        textView.setOnClickListener { onClick(emojis[position]) }
        return view
    }
}
```

---

### **3. Integrating with ShanKeyboardService**

ယၢမ်းလဵဝ် ႁဝ်းတေလႅၵ်ႈ Keys Layout ပဵၼ် Emoji Picker မိူဝ်ႈၵူၼ်းၸႂ်ႉၼိပ်ႉတုမ်ႇ 😊 ၶႃႈ။

```kotlin
// ၼႂ်း ShanKeyboardService.kt

fun showEmojiPicker() {
    keysContainer.removeAllViews()
    val emojiView = layoutInflater.inflate(R.layout.emoji_picker, null)
    keysContainer.addView(emojiView)

    val grid: GridView = emojiView.findViewById(R.id.emoji_grid)

    // 1. သဵၼ်ႈမၢႆ Emoji ၸွမ်းမူႇၸိူဝ်း
    val smileyList = listOf(
        "😀", "😃", "😄", "😁", "😆", "😅", "😂", "🤣", "😊", "😇",
        "🙂", "🙃", "😉", "😍", "🥰", "😘", "😗", "😙", "😚", "😋",
        "😛", "😝", "😜", "🤪", "🤨", "🧐", "🤓", "😎", "🤩", "🥳",
        "😏", "😒", "😞", "😔", "😟", "😕", "🙁", "☹️", "😣", "😖",
        "😫", "😩", "🥺", "😢", "😭", "😤", "😠", "😡", "🤬", "🤯",
        "😳", "🥵", "🥶", "😱", "😨", "😰", "😥", "😓", "🤗", "🤔"
    )
    val natureList = listOf(
        "🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐻‍❄️", "🐨",
        "🐯", "🦁", "🐮", "🐷", "🐽", "🐸", "🐵", "🙊", "🙉", "🙈",
        "🐒", "🐔", "🐧", "🐦", "🐤", "🐣", "🐥", "🦆", "🦅", "🦉",
        "🦇", "🐺", "🐗", "🐴", "🦄", "🐝", "🐛", "🦋", "🐌", "🐞",
        "🐜", "🦟", "🦗", "🕷", "🕸", "🦂", "🐢", "🐍", "🦎", "🦖",
        "🦕", "🐙", "🦑", "🦐", "🦞", "🦀", "🐡", "🐠", "🐟", "🐬"
    )
    // Helper function တႃႇလႅၵ်ႈ Emoji ၼႂ်း Grid
    fun updateGrid(list: List<String>) {
        grid.adapter = EmojiAdapter(this, list) { emoji ->
            currentInputConnection?.commitText(emoji, 1)
        }
    }

    // 2. Default: ၼႄ Smileys မိူဝ်ႈတႄႇပိုတ်ႇ
    updateGrid(smileyList)

    // 3. ၵွင်ႉ Click Listener တွၼ်ႈတႃႇ Tabs ၽၢႆႇတႂ်ႈ
    emojiView.findViewById<Button>(R.id.btn_emoji_smiley).setOnClickListener {
        updateGrid(smileyList)
    }

    emojiView.findViewById<Button>(R.id.btn_emoji_nature).setOnClickListener {
        updateGrid(natureList)
    }

    // တုမ်ႇပွၵ်ႈၶိုၼ်းၼႃႈ Keyboard ယူႇယူႇ
    emojiView.findViewById<Button>(R.id.btn_emoji_back).setOnClickListener {
        updateKeyboardLayout()
    }
}
```



---

### **4. Technical Pro Tip: Unicode Ranges**
Emoji ၼိုင်ႈတူဝ် မၢင်ပွၵ်ႈမၼ်းမီးလၢႆ Code Point (မိူၼ်ၼင်ႇ 👨‍👩‍👧)။ ၵၢၼ်ၵဵပ်း Emoji ဝႆႉၼႂ်း `String List` ပဵၼ်လၢႆးဢၼ်ငၢႆႈသေပိူၼ်ႈ လႄႈ မၼ်ႈၸႂ်ဝႃႈ Android တေၼႄႁၢင်ႈလႆႈမႅၼ်ႈၵူႈတူဝ်ၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **GridView:** ၸွႆႈႁႂ်ႈႁဝ်းၸတ်းလွၵ်း Emoji လႆႈႁၢင်ႈလီ။
* **Context Switching:** ၵၢၼ်လႅၵ်ႈလၢႆႈ View ၼႂ်း `keysContainer` ႁဵတ်းႁႂ်ႈ Keyboard ႁဝ်းမီးလၢႆ Layer (Alphabet, Symbols, Emojis)။
* **Custom Adapter:** ၸွႆႈႁႂ်ႈႁဝ်း Control လွင်ႈယႂ်ႇ လႄႈ သီၶွင် Emoji လႆႈၶႃႈ။

---