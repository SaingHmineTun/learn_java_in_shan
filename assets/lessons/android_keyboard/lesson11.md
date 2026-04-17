## **Lesson 11: Dynamic Theming Engine: Switching Blue and Gold Themes**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
မိူဝ်ႈႁဝ်းသၢင်ႈ **TMK Keyboard Pro** ယဝ်ႉ၊ ၵူၼ်းၸႂ်ႉၵေႃႉၼိုင်ႈလႄႈ ၵေႃႉၼိုင်ႈ လွင်ႈလႆႈၸႂ် ဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။ 
တွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ **Dynamic Theming Engine** ဢၼ်ၸၢင်ႈလႅၵ်ႈသီ Keyboard ပဵၼ် **Sapphire Blue** ဢမ်ႇၼၼ် **Luxury Gold** ၸွမ်းၼင်ႇၵူၼ်းၸႂ်ႉလိူၵ်ႈၼႂ်း Settings ၶႃႈ။

ယွၼ်ႉႁဝ်းၸႂ်ႉ **Custom XML Views** လႄႈ ႁဝ်းတေဢမ်ႇၸႂ်ႉ Theme System ၶွင် Android ၵမ်းသိုဝ်ႈ (ဢၼ်လူဝ်ႇ Restart App)။ 
ႁဝ်းတေၸႂ်ႉ **Programmatic Tinting** တႃႇလႅၵ်ႈသီ Views တႅတ်ႈတႅတ်ႈတေႃးတေႃးၶႃႈ။

---

### **1. Defining the Color Palettes**

ဢွၼ်တၢင်းသုတ်း၊ ႁဝ်းတမ်းသီဝႆႉၼႂ်း **`res/values/colors.xml`** ၶႃႈ။

```xml
<resources>
    <color name="blue_key_normal">#1E3A5F</color>
    <color name="blue_key_pressed">#3A5F8F</color>
    <color name="blue_background">#0F172A</color>

    <color name="gold_key_normal">#B8860B</color>
    <color name="gold_key_pressed">#DAA520</color>
    <color name="gold_background">#1C1917</color>
</resources>
```

---

### **2. The Theming Logic in Kotlin**

ႁဝ်းတေလႆႈသၢင်ႈ Function ၼႂ်း **`ShanKeyboardService.kt`** တႃႇၵႂႃႇ "ပၼ်ႇ" (Iterate) တူၺ်း Buttons တင်းသဵင်ႈသေ လႅၵ်ႈသီမၼ်းၶႃႈ။

```kotlin
fun applyTheme(view: View, themeType: String) {
    val keyNormalColor: Int
    val keyPressedColor: Int
    val backgroundColor: Int

    if (themeType == "GOLD") {
        keyNormalColor = getColor(R.color.gold_key_normal)
        keyPressedColor = getColor(R.color.gold_key_pressed)
        backgroundColor = getColor(R.color.gold_background)
    } else {
        keyNormalColor = getColor(R.color.blue_key_normal)
        keyPressedColor = getColor(R.color.blue_key_pressed)
        backgroundColor = getColor(R.color.blue_background)
    }

    // 1. သင်ပဵၼ် Root View ႁႂ်ႈလႅၵ်ႈသီ Background
    if (view.id == R.id.keyboard_root) {
        view.setBackgroundColor(backgroundColor)
    }

    // 2. ၸႂ်ႉ Recursion တႃႇႁႃ Buttons ၼႂ်းၵူႈ Container
    if (view is ViewGroup) {
        for (i in 0 until view.childCount) {
            val child = view.getChildAt(i)

            if (child is Button) {
                // လႅၵ်ႈသီတုမ်ႇၼဵၵ်ႉ
                val states = arrayOf(
                    intArrayOf(android.R.attr.state_pressed),
                    intArrayOf()
                )
                val colors = intArrayOf(keyPressedColor, keyNormalColor)
                child.backgroundTintList = ColorStateList(states, colors)

                // လွင်ႈယႂ်ႇ: ႁႂ်ႈ Tint Mode မၼ်းပဵၼ် SRC_IN ၼင်ႇႁိုဝ်တေႁၼ်သီမႂ်ႇ
                child.backgroundTintMode = android.graphics.PorterDuff.Mode.SRC_IN
            } else if (child is ViewGroup) {
                // သင်ၺႃး FrameLayout ဢမ်ႇၼၼ် LinearLayout တၢင်ႇဢၼ် ႁႂ်ႈၶဝ်ႈၵႂႃႇႁႃထႅင်ႈ
                applyTheme(child, themeType)
            }
        }
    }
}
```



---

### **3. Storing Preference with SharedPreferences**

ၼင်ႇႁိုဝ် Keyboard တေတွတ်းၸႂ် (Remember) သီဢၼ်ၵူၼ်းၸႂ်ႉလိူၵ်ႈဝႆႉၼၼ်ႉ၊ ႁဝ်းတေလႆႈၸႂ်ႉ **SharedPreferences** ၶႃႈ။

```kotlin

private lateinit var currentInputView: View

override fun onCreateInputView(): View {
    currentInputView = layoutInflater.inflate(R.layout.keyboard_root, null)

    keysContainer = currentInputView.findViewById(R.id.keys_container)
    loadLayout(R.layout.layout_en)

    return currentInputView
}

override fun onStartInputView(info: EditorInfo?, restarting: Boolean) {
    super.onStartInputView(info, restarting)
    
    val prefs = PreferenceManager.getDefaultSharedPreferences(this)
    val currentTheme = prefs.getString("keyboard_theme", "BLUE") ?: "BLUE"
    
    // Apply theme ၵူႈပွၵ်ႈဢၼ် Keyboard ပိုတ်ႇဢွၵ်ႇမႃး
    applyTheme(currentInputView, currentTheme)
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Programmatic Tinting:** ၸွႆႈႁႂ်ႈႁဝ်းလႅၵ်ႈသီ UI လႆႈၵမ်းသိုဝ်ႈ (Real-time) ဢမ်ႇလူဝ်ႇ Restart Keyboard Service ၶႃႈ။
* **ColorStateList:** ပဵၼ်ၶိူင်ႈၸႂ်ႉ ဢၼ်တႅတ်ႈတေႃးလိူဝ် XML Selector မိူဝ်ႈႁဝ်းလူဝ်ႇလႅၵ်ႈသီၸွမ်း Logic ၶႃႈ။
* **Consistency:** ၵၢၼ်ၸတ်းဝၢင်းသီ (Blue/Gold) ႁဵတ်းႁႂ်ႈ **TMK Keyboard Pro** တူၺ်းႁၼ် Professional လႄႈ Pro တႄႉတႄႉၶႃႈ။

---