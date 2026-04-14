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
    android:padding="2dp">

    <Button
        android:id="@+id/key_q"
        style="@style/TmkKeyStyle"
        android:layout_width="0dp"
        android:layout_height="50dp"
        android:text="Q"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toLeftOf="@+id/key_w"
        app:layout_constraintTop_toTopOf="parent" />

    <Button
        android:id="@+id/key_w"
        style="@style/TmkKeyStyle"
        android:layout_width="0dp"
        android:layout_height="50dp"
        android:text="W"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_q"
        app:layout_constraintRight_toLeftOf="@+id/key_e"
        app:layout_constraintTop_toTopOf="parent" />

    <Button
        android:id="@+id/key_e"
        style="@style/TmkKeyStyle"
        android:layout_width="0dp"
        android:layout_height="50dp"
        android:text="E"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintLeft_toRightOf="@+id/key_w"
        app:layout_constraintRight_toLeftOf="@+id/key_r"
        app:layout_constraintTop_toTopOf="parent" />

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