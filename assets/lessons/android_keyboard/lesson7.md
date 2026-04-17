## **Module 2 | Lesson 7: Designing the English QWERTY Layout with ConstraintLayout**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ယွၼ်ႉႁဝ်းဢမ်ႇၸႂ်ႉ `KeyboardView` ယဝ်ႉ၊ ႁဝ်းတေလႆႈသၢင်ႈတုမ်ႇၼဵၵ်ႉ (Keys) ႁင်းၵူၺ်း ၼႂ်း XML Layout ၶႃႈ။ 
ႁဝ်းတေလိူၵ်ႈၸႂ်ႉ **`ConstraintLayout`** ၵွပ်ႈမၼ်းပဵၼ် View ဢၼ် "လႅတ်း" သေပိူၼ်ႈ တႃႇၸတ်းၵၢၼ် Keys ႁႂ်ႈမၼ်း Fit ၸွမ်းၼႃႈၸေႃးၾူၼ်းၵူႈသႅၼ်း (Responsive Design) ၶႃႈ။

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးတႅမ်ႈ Row ဢွၼ်တၢင်းသုတ်း (Q-W-E-R-T-Y) ၼင်ႇႁိုဝ်မၼ်းတေၸႅၵ်ႇၵႄႈဝၢင်ႇၵၼ်လႆႈၶႅမ်ႉလႅပ်ႈၶႃႈ။

---

### **1. Why ConstraintLayout?**

* **Weights/Percent:** ႁဝ်းၸၢင်ႈၸႂ်ႉ `layout_constraintHorizontal_weight` တႃႇၸႅၵ်ႇတုမ်ႇၼဵၵ်ႉ 10 တုမ်ႇ ႁႂ်ႈမၼ်းၵိၼ်ၼႃႈၸေႃး 10% ၽဵင်ႇၵၼ်။
* **Chains:** ၸွႆႈႁႂ်ႈတုမ်ႇၼဵၵ်ႉၼႂ်း Row ၼိုင်ႈဢၼ် ၵွင်ႉၵၼ်ဝႆႉ ဢမ်ႇႁႂ်ႈမၼ်းလႅၼ်ႈပၢႆႈၵၼ်ၶႃႈ။



---

### **2. The XML Code (layout_en.xml)**

သၢင်ႈၾၢႆႇမႂ်ႇၼႂ်း **`res/layout/layout_en.xml`**။ ၼႂ်း Code ၼႆႉ ႁဝ်းတေၸႂ်ႉ `style="@style/TmkKeyStyle"` တွၼ်ႈတႃႇၵုမ်းထိင်းႁၢင်ႈၾၢင်တုမ်ႇၼိပ်ႉၵူႈဢၼ် တီႈလဵဝ်ၵၼ်ၶႃႈ။

```xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:padding="1dp"
    android:background="#1A1A1A">

    <Button android:id="@+id/key_1" style="@style/TmkKeyStyle" android:text="1"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_2"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_2" style="@style/TmkKeyStyle" android:text="2"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_1"
        app:layout_constraintRight_toLeftOf="@+id/key_3"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_3" style="@style/TmkKeyStyle" android:text="3"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_2"
        app:layout_constraintRight_toLeftOf="@+id/key_4"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_4" style="@style/TmkKeyStyle" android:text="4"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_3"
        app:layout_constraintRight_toLeftOf="@+id/key_5"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_5" style="@style/TmkKeyStyle" android:text="5"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_4"
        app:layout_constraintRight_toLeftOf="@+id/key_6"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_6" style="@style/TmkKeyStyle" android:text="6"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_5"
        app:layout_constraintRight_toLeftOf="@+id/key_7"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_7" style="@style/TmkKeyStyle" android:text="7"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_6"
        app:layout_constraintRight_toLeftOf="@+id/key_8"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_8" style="@style/TmkKeyStyle" android:text="8"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_7"
        app:layout_constraintRight_toLeftOf="@+id/key_9"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_9" style="@style/TmkKeyStyle" android:text="9"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_8"
        app:layout_constraintRight_toLeftOf="@+id/key_0"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_0" style="@style/TmkKeyStyle" android:text="0"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_9"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <Button android:id="@+id/key_q" style="@style/TmkKeyStyle" android:text="q"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_w"
        app:layout_constraintTop_toBottomOf="@+id/key_1" />

    <Button android:id="@+id/key_w" style="@style/TmkKeyStyle" android:text="w"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_q"
        app:layout_constraintRight_toLeftOf="@+id/key_e"
        app:layout_constraintTop_toTopOf="@+id/key_q" />

    <Button android:id="@+id/key_e" style="@style/TmkKeyStyle" android:text="e"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_w"
        app:layout_constraintRight_toLeftOf="@+id/key_r"
        app:layout_constraintTop_toTopOf="@+id/key_q" />

    <Button android:id="@+id/key_r" style="@style/TmkKeyStyle" android:text="r"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_e"
        app:layout_constraintRight_toLeftOf="@+id/key_t"
        app:layout_constraintTop_toTopOf="@+id/key_q" />

    <Button android:id="@+id/key_t" style="@style/TmkKeyStyle" android:text="t"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_r"
        app:layout_constraintRight_toLeftOf="@+id/key_y"
        app:layout_constraintTop_toTopOf="@+id/key_q" />

    <Button android:id="@+id/key_y" style="@style/TmkKeyStyle" android:text="y"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_t"
        app:layout_constraintRight_toLeftOf="@+id/key_u"
        app:layout_constraintTop_toTopOf="@+id/key_q" />

    <Button android:id="@+id/key_u" style="@style/TmkKeyStyle" android:text="u"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_y"
        app:layout_constraintRight_toLeftOf="@+id/key_i"
        app:layout_constraintTop_toTopOf="@+id/key_q" />

    <Button android:id="@+id/key_i" style="@style/TmkKeyStyle" android:text="i"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_u"
        app:layout_constraintRight_toLeftOf="@+id/key_o"
        app:layout_constraintTop_toTopOf="@+id/key_q" />

    <Button android:id="@+id/key_o" style="@style/TmkKeyStyle" android:text="o"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_i"
        app:layout_constraintRight_toLeftOf="@+id/key_p"
        app:layout_constraintTop_toTopOf="@+id/key_q" />

    <Button android:id="@+id/key_p" style="@style/TmkKeyStyle" android:text="p"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_o"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_q" />

    <Button android:id="@+id/key_a" style="@style/TmkKeyStyle" android:text="a"
        app:layout_constraintHorizontal_weight="1.1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_s"
        app:layout_constraintTop_toBottomOf="@+id/key_q"
        android:layout_marginStart="4dp" />

    <Button android:id="@+id/key_s" style="@style/TmkKeyStyle" android:text="s"
        app:layout_constraintHorizontal_weight="1.1"
        app:layout_constraintLeft_toRightOf="@+id/key_a"
        app:layout_constraintRight_toLeftOf="@+id/key_d"
        app:layout_constraintTop_toTopOf="@+id/key_a" />

    <Button android:id="@+id/key_d" style="@style/TmkKeyStyle" android:text="d"
        app:layout_constraintHorizontal_weight="1.1"
        app:layout_constraintLeft_toRightOf="@+id/key_s"
        app:layout_constraintRight_toLeftOf="@+id/key_f"
        app:layout_constraintTop_toTopOf="@+id/key_a" />

    <Button android:id="@+id/key_f" style="@style/TmkKeyStyle" android:text="f"
        app:layout_constraintHorizontal_weight="1.1"
        app:layout_constraintLeft_toRightOf="@+id/key_d"
        app:layout_constraintRight_toLeftOf="@+id/key_g"
        app:layout_constraintTop_toTopOf="@+id/key_a" />

    <Button android:id="@+id/key_g" style="@style/TmkKeyStyle" android:text="g"
        app:layout_constraintHorizontal_weight="1.1"
        app:layout_constraintLeft_toRightOf="@+id/key_f"
        app:layout_constraintRight_toLeftOf="@+id/key_h"
        app:layout_constraintTop_toTopOf="@+id/key_a" />

    <Button android:id="@+id/key_h" style="@style/TmkKeyStyle" android:text="h"
        app:layout_constraintHorizontal_weight="1.1"
        app:layout_constraintLeft_toRightOf="@+id/key_g"
        app:layout_constraintRight_toLeftOf="@+id/key_j"
        app:layout_constraintTop_toTopOf="@+id/key_a" />

    <Button android:id="@+id/key_j" style="@style/TmkKeyStyle" android:text="j"
        app:layout_constraintHorizontal_weight="1.1"
        app:layout_constraintLeft_toRightOf="@+id/key_h"
        app:layout_constraintRight_toLeftOf="@+id/key_k"
        app:layout_constraintTop_toTopOf="@+id/key_a" />

    <Button android:id="@+id/key_k" style="@style/TmkKeyStyle" android:text="k"
        app:layout_constraintHorizontal_weight="1.1"
        app:layout_constraintLeft_toRightOf="@+id/key_j"
        app:layout_constraintRight_toLeftOf="@+id/key_l"
        app:layout_constraintTop_toTopOf="@+id/key_a" />

    <Button android:id="@+id/key_l" style="@style/TmkKeyStyle" android:text="l"
        app:layout_constraintHorizontal_weight="1.1"
        app:layout_constraintLeft_toRightOf="@+id/key_k"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_a"
        android:layout_marginEnd="4dp" />

    <Button android:id="@+id/key_shift" style="@style/TmkKeyStyle" android:text="⇧"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_z"
        app:layout_constraintTop_toBottomOf="@+id/key_a" />

    <Button android:id="@+id/key_z" style="@style/TmkKeyStyle" android:text="z"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_shift"
        app:layout_constraintRight_toLeftOf="@+id/key_x"
        app:layout_constraintTop_toTopOf="@+id/key_shift" />

    <Button android:id="@+id/key_x" style="@style/TmkKeyStyle" android:text="x"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_z"
        app:layout_constraintRight_toLeftOf="@+id/key_c"
        app:layout_constraintTop_toTopOf="@+id/key_shift" />

    <Button android:id="@+id/key_c" style="@style/TmkKeyStyle" android:text="c"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_x"
        app:layout_constraintRight_toLeftOf="@+id/key_v"
        app:layout_constraintTop_toTopOf="@+id/key_shift" />

    <Button android:id="@+id/key_v" style="@style/TmkKeyStyle" android:text="v"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_c"
        app:layout_constraintRight_toLeftOf="@+id/key_b"
        app:layout_constraintTop_toTopOf="@+id/key_shift" />

    <Button android:id="@+id/key_b" style="@style/TmkKeyStyle" android:text="b"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_v"
        app:layout_constraintRight_toLeftOf="@+id/key_n"
        app:layout_constraintTop_toTopOf="@+id/key_shift" />

    <Button android:id="@+id/key_n" style="@style/TmkKeyStyle" android:text="n"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_b"
        app:layout_constraintRight_toLeftOf="@+id/key_m"
        app:layout_constraintTop_toTopOf="@+id/key_shift" />

    <Button android:id="@+id/key_m" style="@style/TmkKeyStyle" android:text="m"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_n"
        app:layout_constraintRight_toLeftOf="@+id/key_del"
        app:layout_constraintTop_toTopOf="@+id/key_shift" />

    <Button android:id="@+id/key_del" style="@style/TmkKeyStyle" android:text="⌫"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toRightOf="@+id/key_m"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_shift" />

    <Button android:id="@+id/key_lang" style="@style/TmkKeyStyle" android:text="🌐"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_emoji"
        app:layout_constraintTop_toBottomOf="@+id/key_shift" />

    <Button android:id="@+id/key_emoji" style="@style/TmkKeyStyle" android:text="😊"
        app:layout_constraintHorizontal_weight="1.25"
        app:layout_constraintLeft_toRightOf="@+id/key_lang"
        app:layout_constraintRight_toLeftOf="@+id/key_123"
        app:layout_constraintTop_toTopOf="@+id/key_lang" />

    <Button android:id="@+id/key_123" style="@style/TmkKeyStyle" android:text="123"
        app:layout_constraintHorizontal_weight="1.25"
        app:layout_constraintLeft_toRightOf="@+id/key_emoji"
        app:layout_constraintRight_toLeftOf="@+id/key_space"
        app:layout_constraintTop_toTopOf="@+id/key_lang" />

    <Button android:id="@+id/key_space" style="@style/TmkKeyStyle" android:text="Eng"
        app:layout_constraintHorizontal_weight="2.5"
        app:layout_constraintLeft_toRightOf="@+id/key_123"
        app:layout_constraintRight_toLeftOf="@+id/key_dot"
        app:layout_constraintTop_toTopOf="@+id/key_lang" />

    <Button android:id="@+id/key_dot" style="@style/TmkKeyStyle" android:text=". ,"
        app:layout_constraintHorizontal_weight="1.5"
        app:layout_constraintLeft_toRightOf="@+id/key_space"
        app:layout_constraintRight_toLeftOf="@+id/key_enter"
        app:layout_constraintTop_toTopOf="@+id/key_lang" />

    <Button android:id="@+id/key_enter" style="@style/TmkKeyStyle" android:text="⏎"
        app:layout_constraintHorizontal_weight="2"
        app:layout_constraintLeft_toRightOf="@+id/key_dot"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="@+id/key_lang" />

</androidx.constraintlayout.widget.ConstraintLayout>
```

---

### **3. Setting up the Key Style**

ၼင်ႇႁိုဝ်တုမ်ႇၼဵၵ်ႉႁဝ်း တေမီးသီလႅတ်း လႄႈ မီးတီႈပဝ်ႇၼႂ်းၵႄႈ (Margin) ဢၼ်ႁၢင်ႈလီၼၼ်ႉ ႁဝ်းတေလႆႈသႂ်ႇ Style ဝႆႉၼႂ်း **`res/values/themes.xml`** ၶႃႈ:

```xml
<style name="TmkKeyStyle" parent="Widget.MaterialComponents.Button">
    <item name="android:layout_margin">1.5dp</item>
    <item name="backgroundTint">@null</item>
    <item name="android:background">@drawable/key_background</item>
    <item name="android:layout_width">0dp</item>
    <item name="android:layout_height">60dp</item>
    <item name="android:padding">0dp</item>
    <item name="android:insetTop">0dp</item>
    <item name="android:insetBottom">0dp</item>
    <item name="android:textColor">#FFFFFF</item>
    <item name="android:textSize">18sp</item>
    <item name="cornerRadius">6dp</item>
</style>
```

### **4. Key Background Style**
တႃႇၼႄပၼ် ႁၢင်ႈၾၢင်တုမ်ႇၼဵၵ်ႉႁဝ်း ႁႂ်ႈႁၢင်ႈလီငၢမ်းလႄႈ ႁႂ်ႈမီးသီလႅၵ်ႈပၼ် မိူဝ်ႈၽွင်း ၼဵၵ်းၼိူဝ်မၼ်းၼၼ်ႉ ႁဝ်းတေၵွင်ႉၵၼ်တင်း Key Background ၼင်ႇတီႈတႂ်ႈၶႃႈ။
ၶူင်သၢင်ႈ key_background.xml ပၼ်တီႈၼႂ်း drawable ႁေ တႅမ်ႈပၼ်ၼင်ႇတီႈတႂ်ႈၶႃႈ။

```xml
<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android="http://schemas.android.com/apk/res/android">

    <item android:state_pressed="true">
        <shape android:shape="rectangle">
            <solid android:color="#D4AF37" />
            <corners android:radius="6dp" />
            <padding android:bottom="4dp" android:left="4dp" android:right="4dp" android:top="4dp" />
        </shape>
    </item>

    <item>
        <shape android:shape="rectangle">
            <solid android:color="#333333" />
            <corners android:radius="6dp" />
            <stroke android:width="1dp" android:color="#1A1A1A" />
            <padding android:bottom="4dp" android:left="4dp" android:right="4dp" android:top="4dp" />
        </shape>
    </item>

</selector>
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **0dp Width:** မိူဝ်ႈႁဝ်းၸႂ်ႉ Constraint Weights၊ `layout_width` တေလႆႈပဵၼ် `0dp` ၼင်ႇႁိုဝ် System တေၸႅၵ်ႇဢွင်ႈတီႈပၼ်လႆႈၶႃႈ။
* **Horizontal Chain:** ၵၢၼ်ၵွင်ႉ `Left_toRightOf` လႄႈ `Right_toLeftOf` ႁဵတ်းႁႂ်ႈတုမ်ႇၼိပ်ႉတင်း Row ၼၼ်ႉ ၼိမ်ဝႆႉၸွမ်းၵၼ်။
* **Styles:** ၸွႆႈႁႂ်ႈႁဝ်းၵုမ်းထိင်း UI ၵူႈတုမ်ႇလႆႈ တီႈလဵဝ်ၵၼ်၊ ဢမ်ႇလူဝ်ႇမႄးၸွမ်းၵူႈဢၼ်ၶႃႈ။

---