## **Lesson 32: Special Symbols Layer: Designing the Symbols XML Layout**

### **1. Designing the Symbols Layout (res/layout/layout_symbols.xml)**

ႁဝ်းတေသၢင်ႈ Layout ဢၼ်မီးတူဝ်ၼပ်ႉဝႆႉၽၢႆႇၼိူဝ်သုတ်း လႄႈ ၶိူင်ႈမၢႆဝႆႉၽၢႆႇတႂ်ႈ။ ႁႂ်ႈမၼ်ႈၸႂ်ဝႃႈ တုမ်ႇၼိပ်ႉမၼ်းမီးသႅၼ်း (Size) မိူၼ်ၵၼ်တင်း Alphabet Keyboard ၼင်ႇႁိုဝ်ၵူၼ်းၸႂ်ႉတေဢမ်ႇ "တူၵ်းၸႂ်" မိူဝ်ႈလႅၵ်ႈ Layer ၶႃႈ။

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="vertical"
    android:background="#1A1A1A"
    android:paddingBottom="5dp">

    <LinearLayout android:layout_width="match_parent" android:layout_height="wrap_content" android:orientation="horizontal">
        <Button style="@style/KeyStyle" android:id="@+id/key_1" android:text="1" />
        <Button style="@style/KeyStyle" android:id="@+id/key_2" android:text="2" />
        <Button style="@style/KeyStyle" android:id="@+id/key_3" android:text="3" />
        <Button style="@style/KeyStyle" android:id="@+id/key_4" android:text="4" />
        <Button style="@style/KeyStyle" android:id="@+id/key_5" android:text="5" />
        <Button style="@style/KeyStyle" android:id="@+id/key_6" android:text="6" />
        <Button style="@style/KeyStyle" android:id="@+id/key_7" android:text="7" />
        <Button style="@style/KeyStyle" android:id="@+id/key_8" android:text="8" />
        <Button style="@style/KeyStyle" android:id="@+id/key_9" android:text="9" />
        <Button style="@style/KeyStyle" android:id="@+id/key_0" android:text="0" />
    </LinearLayout>

    <LinearLayout android:layout_width="match_parent" android:layout_height="wrap_content" android:orientation="horizontal">
        <Button style="@style/KeyStyle" android:id="@+id/key_plus" android:text="+" />
        <Button style="@style/KeyStyle" android:id="@+id/key_minus" android:text="-" />
        <Button style="@style/KeyStyle" android:id="@+id/key_star" android:text="*" />
        <Button style="@style/KeyStyle" android:id="@+id/key_slash" android:text="/" />
        <Button style="@style/KeyStyle" android:id="@+id/key_equal" android:text="=" />
        <Button style="@style/KeyStyle" android:id="@+id/key_percent" android:text="%" />
        <Button style="@style/KeyStyle" android:id="@+id/key_hash" android:text="#" />
        <Button style="@style/KeyStyle" android:id="@+id/key_at" android:text="@" />
        <Button style="@style/KeyStyle" android:id="@+id/key_and" android:text="&amp;" />
        <Button style="@style/KeyStyle" android:id="@+id/key_underscore" android:text="_" />
    </LinearLayout>

    <LinearLayout android:layout_width="match_parent" android:layout_height="wrap_content" android:orientation="horizontal">
        <Button style="@style/KeyStyle" android:id="@+id/key_bracket_open" android:text="(" />
        <Button style="@style/KeyStyle" android:id="@+id/key_bracket_close" android:text=")" />
        <Button style="@style/KeyStyle" android:id="@+id/key_sq_bracket_open" android:text="[" />
        <Button style="@style/KeyStyle" android:id="@+id/key_sq_bracket_close" android:text="]" />
        <Button style="@style/KeyStyle" android:id="@+id/key_curly_open" android:text="{" />
        <Button style="@style/KeyStyle" android:id="@+id/key_curly_close" android:text="}" />
        <Button style="@style/KeyStyle" android:id="@+id/key_less_than" android:text="&lt;" />
        <Button style="@style/KeyStyle" android:id="@+id/key_greater_than" android:text="&gt;" />
        <Button style="@style/KeyStyle" android:id="@+id/key_dollar" android:text="$" />
        <Button style="@style/KeyStyle" android:id="@+id/key_yen" android:text="¥" />
    </LinearLayout>

    <LinearLayout android:layout_width="match_parent" android:layout_height="wrap_content" android:orientation="horizontal">
        <Button style="@style/ActionKeyStyle" android:id="@+id/key_shift_symbols" android:text="1/2" />
        <Button style="@style/KeyStyle" android:id="@+id/key_exclamation" android:text="!" />
        <Button style="@style/KeyStyle" android:id="@+id/key_question" android:text="?" />
        <Button style="@style/KeyStyle" android:id="@+id/key_quote" android:text="\"" />
        <Button style="@style/KeyStyle" android:id="@+id/key_apostrophe" android:text="'" />
        <Button style="@style/KeyStyle" android:id="@+id/key_colon" android:text=":" />
        <Button style="@style/KeyStyle" android:id="@+id/key_semicolon" android:text=";" />
        <Button style="@style/KeyStyle" android:id="@+id/key_caret" android:text="^" />
        <Button style="@style/ActionKeyStyle" android:id="@+id/key_backspace" android:text="⌫" />
    </LinearLayout>

    <LinearLayout android:layout_width="match_parent" android:layout_height="wrap_content" android:orientation="horizontal">
        <Button style="@style/ActionKeyStyle" android:id="@+id/key_switch_abc" android:text="ABC" android:layout_weight="1.5" />
        <Button style="@style/KeyStyle" android:id="@+id/key_comma" android:text="," />
        <Button style="@style/KeyStyle" android:id="@+id/key_space" android:text="Space" android:layout_weight="4" />
        <Button style="@style/KeyStyle" android:id="@+id/key_period" android:text="." />
        <Button style="@style/ActionKeyStyle" android:id="@+id/key_enter" android:text="Enter" android:layout_weight="1.5" />
    </LinearLayout>

</LinearLayout>
```

---

### **2. Adding the State for Symbols Mode**

ၼႂ်း `ShanKeyboardService.kt` ႁဝ်းလူဝ်ႇမီး Variable တွၼ်ႈတႃႇမၢႆဝႆႉဝႃႈ ယၢမ်းလဵဝ်ယူႇၼႂ်း Symbols Mode ႁႃႉ?

```kotlin
private var isSymbolsMode = false
```

---

### **3. Updating the Toggle Logic**

ႁဝ်းတေမႃးမႄး `updateKeyboardLayout()` ႁႂ်ႈမၼ်း Load `layout_symbols` မိူဝ်ႈ `isSymbolsMode` ပဵၼ် `true` ၶႃႈ။

```kotlin
private fun updateKeyboardLayout() {
    if (isSymbolsMode) {
        loadLayout(R.layout.layout_symbols)
        return
    }

    val layoutToLoad = when (currentLanguage) {
        "EN" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_en_normal else R.layout.layout_en_shifted
        "MY" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_my_normal else R.layout.layout_my_shifted
        "SHN" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_shn_normal else R.layout.layout_shn_shifted
        else -> R.layout.layout_en_normal
    }
    loadLayout(layoutToLoad)
}
```

---

### **4. Handling the Switch Key**

မိူဝ်ႈၵူၼ်းၸႂ်ႉၼိပ်ႉတုမ်ႇ `?123` (ၼႂ်း Alphabet Layout) ဢမ်ႇၼၼ် `ABC` (ၼႂ်း Symbols Layout)၊ ႁဝ်းတေလႅၵ်ႈ Mode မၼ်းၶႃႈ။

```kotlin
// ၼႂ်း handleKeyPress()
R.id.key_switch_symbols -> {
    isSymbolsMode = true
    updateKeyboardLayout()
}

R.id.key_switch_abc -> {
    isSymbolsMode = false
    updateKeyboardLayout()
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**
* **Layer Separation:** ၵၢၼ်ၸႅၵ်ႇ Symbols ဢွၵ်ႇပဵၼ် Layout တၢင်ႇဢၼ် ၸွႆႈႁႂ်ႈ Keyboard ႁဝ်းဢမ်ႇ "ယုင်ႈ" (Cluttered)။
* **Consistent UI:** ၵၢၼ်ၸႂ်ႉ Style (`TmkKeyStyle`) လဵဝ်ၵၼ် ႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉ ၼိပ်ႉလႆႈငၢႆႈ လႄႈ ႁၢင်ႈလီ။
* **Fast Switching:** ၵၢၼ်ၸႂ်ႉ `loadLayout()` ဝႆးဝႆး ႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉ လႅၵ်ႈတူဝ်လိၵ်ႈလႄႈတူဝ်ၼပ်ႉလႆႈ Smooth တႄႉတႄႉၶႃႈ။

---

**Congratulations!** ၸဝ်ႈၵဝ်ႇတိုၵ်ႉယဝ်ႉတူဝ်ႈ **Lesson 32** ယဝ်ႉၶႃႈ။ ယၢမ်းလဵဝ် Keyboard ၸဝ်ႈၵဝ်ႇမီး Layer တွၼ်ႈတႃႇ Alphabet, Emoji, Clipboard, လႄႈ Symbols တဵမ်ထူၼ်ႈယဝ်ႉ!

**ၸဝ်ႈၵဝ်ႇႁၢင်ႈႁႅၼ်းတွၼ်ႈတႃႇ Lesson သုတ်းထၢႆး ၼႂ်း Module ၼႆႉယဝ်ႉႁႃႉ?**
(Lesson 33 ပဵၼ်လွင်ႈၵၢၼ်မႄး Final Touch ၵူႈယၢင်ႇ ၵွၼ်ႇတေ Release App ၶႃႈ!)

**Do you want to add a "Second Symbols Layer" (for symbols like `~`, `\`, `|`, `{`, `}`) as well?** (ၵူၼ်းၸႂ်ႉမၢင်ပွၵ်ႈၵေႃႈလူဝ်ႇၸႂ်ႉၶႃႈၼႃ!)