## **Lesson 33: Multi-Layer Symbols: Designing the Advanced Symbols Layout**

### **1. Designing the Advanced Layout (res/layout/layout_symbols_2.xml)**

ၼႂ်း Layout ၼႆႉ ႁဝ်းတေၸႂ်ႉ Symbols ဢၼ်ပဵၼ်တွၼ်ႈတႃႇ Math ဢၼ်ၶိုၵ်ႉ လႄႈ Special Characters တၢင်ႇၸိူဝ်းၶႃႈ။

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:background="#1A1A1A"
    android:orientation="vertical"
    android:paddingBottom="5dp">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content">

        <Button
            android:id="@+id/key_1"
            style="@style/TmkKeyStyle"
            android:text="1" />

        <Button
            android:id="@+id/key_2"
            style="@style/TmkKeyStyle"
            android:text="2" />

        <Button
            android:id="@+id/key_3"
            style="@style/TmkKeyStyle"
            android:text="3" />

        <Button
            android:id="@+id/key_4"
            style="@style/TmkKeyStyle"
            android:text="4" />

        <Button
            android:id="@+id/key_5"
            style="@style/TmkKeyStyle"
            android:text="5" />

        <Button
            android:id="@+id/key_6"
            style="@style/TmkKeyStyle"
            android:text="6" />

        <Button
            android:id="@+id/key_7"
            style="@style/TmkKeyStyle"
            android:text="7" />

        <Button
            android:id="@+id/key_8"
            style="@style/TmkKeyStyle"
            android:text="8" />

        <Button
            android:id="@+id/key_9"
            style="@style/TmkKeyStyle"
            android:text="9" />

        <Button
            android:id="@+id/key_0"
            style="@style/TmkKeyStyle"
            android:text="0" />
    </LinearLayout>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal">

        <Button
            android:id="@+id/key_tilde"
            style="@style/TmkKeyStyle"
            android:text="~" />

        <Button
            android:id="@+id/key_grave"
            style="@style/TmkKeyStyle"
            android:text="`" />

        <Button
            android:id="@+id/key_pipe"
            style="@style/TmkKeyStyle"
            android:text="|" />

        <Button
            android:id="@+id/key_bullet"
            style="@style/TmkKeyStyle"
            android:text="•" />

        <Button
            android:id="@+id/key_sqrt"
            style="@style/TmkKeyStyle"
            android:text="√" />

        <Button
            android:id="@+id/key_pi"
            style="@style/TmkKeyStyle"
            android:text="π" />

        <Button
            android:id="@+id/key_divide"
            style="@style/TmkKeyStyle"
            android:text="÷" />

        <Button
            android:id="@+id/key_multiply"
            style="@style/TmkKeyStyle"
            android:text="×" />

        <Button
            android:id="@+id/key_paragraph"
            style="@style/TmkKeyStyle"
            android:text="¶" />

        <Button
            android:id="@+id/key_delta"
            style="@style/TmkKeyStyle"
            android:text="∆" />
    </LinearLayout>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal">

        <Button
            android:id="@+id/key_curly_open"
            style="@style/TmkKeyStyle"
            android:text="{" />

        <Button
            android:id="@+id/key_curly_close"
            style="@style/TmkKeyStyle"
            android:text="}" />

        <Button
            android:id="@+id/key_sq_bracket_open"
            style="@style/TmkKeyStyle"
            android:text="[" />

        <Button
            android:id="@+id/key_sq_bracket_close"
            style="@style/TmkKeyStyle"
            android:text="]" />

        <Button
            android:id="@+id/key_angle_open"
            style="@style/TmkKeyStyle"
            android:text="&lt;" />

        <Button
            android:id="@+id/key_angle_close"
            style="@style/TmkKeyStyle"
            android:text="&gt;" />

        <Button
            android:id="@+id/key_euro"
            style="@style/TmkKeyStyle"
            android:text="€" />

        <Button
            android:id="@+id/key_pound"
            style="@style/TmkKeyStyle"
            android:text="£" />

        <Button
            android:id="@+id/key_yen"
            style="@style/TmkKeyStyle"
            android:text="¥" />

        <Button
            android:id="@+id/key_won"
            style="@style/TmkKeyStyle"
            android:text="₩" />
    </LinearLayout>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal">

        <Button
            android:id="@+id/key_copyright"
            style="@style/TmkKeyStyle"
            android:text="©" />

        <Button
            android:id="@+id/key_registered"
            style="@style/TmkKeyStyle"
            android:text="®" />

        <Button
            android:id="@+id/key_trademark"
            style="@style/TmkKeyStyle"
            android:text="™" />

        <Button
            android:id="@+id/key_degree"
            style="@style/TmkKeyStyle"
            android:text="°" />

        <Button
            android:id="@+id/key_backslash"
            style="@style/TmkKeyStyle"
            android:text="\\" />

        <Button
            android:id="@+id/key_degree_cel"
            style="@style/TmkKeyStyle"
            android:text="℃" />

        <Button
            android:id="@+id/key_infinity"
            style="@style/TmkKeyStyle"
            android:text="∞" />

        <Button
            android:id="@+id/key_approx"
            style="@style/TmkKeyStyle"
            android:text="≈" />

        <Button
            android:id="@+id/key_not_equal"
            style="@style/TmkKeyStyle"
            android:text="≠" />

        <Button
            android:id="@+id/key_backspace"
            style="@style/ActionTmkKeyStyle"
            android:text="⌫" />
    </LinearLayout>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal">

        <Button
            android:id="@+id/key_switch_abc"
            style="@style/ActionTmkKeyStyle"
            android:layout_weight="1.5"
            android:text="ABC" />

        <Button
            android:id="@+id/key_2_1"
            style="@style/ActionTmkKeyStyle"
            android:layout_weight="1.5"
            android:text="\?123" />

        <Button
            android:id="@+id/key_comma"
            style="@style/TmkKeyStyle"
            android:text="," />

        <Button
            android:id="@+id/key_space"
            style="@style/TmkKeyStyle"
            android:layout_weight="4"
            android:text="Space" />

        <Button
            android:id="@+id/key_period"
            style="@style/TmkKeyStyle"
            android:text="." />

        <Button
            android:id="@+id/key_enter"
            style="@style/ActionTmkKeyStyle"
            android:layout_weight="1.5"
            android:text="Enter" />
    </LinearLayout>

</LinearLayout>
```

---

### **2. Managing the Multiple Symbol States**

တွၼ်ႈတႃႇၵုမ်းထိင်းဝႃႈ ႁဝ်းယူႇၼႂ်း Layer လႂ်ၼၼ်ႉ ႁဝ်းလူဝ်ႇမႄး `enum` ဢမ်ႇၼၼ် `Int` တွၼ်ႈတႃႇ State ၶႃႈ။

```kotlin
enum class SymbolState {
    OFF, LAYER_1, LAYER_2
}

private var currentSymbolState = SymbolState.OFF
```

### **3. Updating the Toggle Logic**

မႄး `updateKeyboardLayout()` ႁႂ်ႈမၼ်း Support တင်း 2 Layer ၶႃႈ။

```kotlin
private fun updateKeyboardLayout() {
    val layoutToLoad = when (currentSymbolState) {
        SymbolState.LAYER_1 -> R.layout.layout_symbols
        SymbolState.LAYER_2 -> R.layout.layout_symbols_2
        SymbolState.OFF -> {
            when (currentLanguage) {
                "EN" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_en_normal else R.layout.layout_en_shifted
                "MY" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_my_normal else R.layout.layout_my_shifted
                "SHN" -> if (currentShiftState == ShiftState.OFF) R.layout.layout_shn_normal else R.layout.layout_shn_shifted
                else -> R.layout.layout_en_normal
            }
        }
    }
    loadLayout(layoutToLoad)
}
```

---

### **4. Handling the Switch (Interaction Flow)**

* မိူဝ်ႈၼိပ်ႉ **`?123`** ၼႂ်း Alphabet -> ပိုတ်ႇ `LAYER_1`
* မိူဝ်ႈၼိပ်ႉ **`1/2`** ၼႂ်း Layer 1 -> ပိုတ်ႇ `LAYER_2`
* မိူဝ်ႈၼိပ်ႉ **`?123`** ၼႂ်း Layer 2 -> ပွၵ်ႈၶိုၼ်း `LAYER_1`
* မိူဝ်ႈၼိပ်ႉ **`ABC`** -> ပွၵ်ႈၶိုၼ်း `OFF` (Alphabet)

```kotlin
// lang => sym1
// sym2 => sym1
R.id.key_123, R.id.key_2_1 -> {
    currentSymbolState = SymbolState.LAYER_1
    updateKeyboardLayout()
}

// sym1 => sym2
R.id.key_1_2 -> {
    currentSymbolState = SymbolState.LAYER_2
    updateKeyboardLayout()
}

// sym1, sym2 => lang
R.id.key_switch_abc -> {
    currentSymbolState = SymbolState.OFF
    updateKeyboardLayout()
}
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Logic:** ၵၢၼ်ၸႂ်ႉ `SymbolState` ႁဵတ်းႁႂ်ႈႁဝ်းၵုမ်းထိင်း Keyboard Layers တင်းမူတ်းလႆႈငၢႆႈ လႄႈ ဢမ်ႇယုင်ႈ။
* **UX:** ၵူၼ်းၸႂ်ႉတေႁၼ်ဝႃႈ Keyboard ႁဝ်းမီး Symbols တဵမ်ထူၼ်ႈ မိူၼ်ၼင်ႇ Keyboard လူင် (Standard) ၶႃႈယဝ်ႉ။
* **Efficiency:** ၵၢၼ်ၸႅၵ်ႇ XML ႁဵတ်းႁႂ်ႈ File တူဝ်ၼိုင်ႈလႂ် ဢမ်ႇယႂ်ႇပူၼ်ႉတီႈ။

---