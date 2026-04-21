## **Lesson 4: Layout Positioning (ConstraintLayout)**

### **1. The Power of Constraints (ၼမ်ႉၵတ်ႉၶွင် ၵၢၼ်မတ်ႉ Constraints)**
`ConstraintLayout` ၼႆႉ ပဵၼ် Layout ဢၼ်လမ်ႇလွင်ႈသုတ်း ၼႂ်း Android ၶႃႈ။ 
မၼ်းႁဵတ်းၵၢၼ်လူၺ်ႈ "ၵၢၼ်မတ်ႉ" (Constraints) ၶႃႈ။
Views ၵူႈဢၼ် လူဝ်ႇလႆႈမီးသၢႆမတ်ႉ တီႈဢေႇသုတ်ႉ 2 သၢႆ (သၢႆၼွၼ်း ၼိုင်ႈဢၼ် လႄႈ သၢႆတင်ႈ ၼိုင်ႈဢၼ်) ၸင်ႇတေဢမ်ႇလႅၼ်ႈၵႂႃႇ တီႈၸဵင်ႇသၢႆႉၽၢႆႇၼိူဝ်ၶႃႈ။

* **ၵၢၼ်ႁဵတ်းႁႂ်ႈယူႇၵၢင် (Centering):** တႃႇတေႁႂ်ႈ Views ယူႇၵၢင်ၼႃႈၸေႃးၼၼ်ႉ ႁဝ်းလူဝ်ႇမတ်ႉသၢႆ သၢႆႉ-ၶႂႃ လႄႈ ၼိူဝ်-တႂ်ႈ တေႃႇၶွပ်ႇၼႃႈၸေႃး (Parent) တင်းမူတ်းၶႃႈ။
* **ၵၢၼ်မတ်ႉၵွင်ႉၵၼ် (Snapping):** ႁဝ်းၸၢင်ႈဢဝ် Views ၼိုင်ႈဢၼ် ၵႂႃႇမတ်ႉဝႆႉ ၽၢႆႇတႂ်ႈ/ၽၢႆႇၼိူဝ် Views ထႅင်ႈဢၼ်ၼိုင်ႈၵေႃႈလႆႈၶႃႈ။



#### **တူဝ်ယၢင်ႇ Code XML (Button ယူႇၵၢင်ၼႃႈၸေႃး):**
```xml
<Button
    android:id="@+id/myButton"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="ယူႇၵၢင်ၼႃႈၸေႃး"
    app:layout_constraintBottom_toBottomOf="parent"
    app:layout_constraintLeft_toLeftOf="parent"
    app:layout_constraintRight_toRightOf="parent"
    app:layout_constraintTop_toTopOf="parent" />
```

---

### **2. Design vs. Code View (ၵၢၼ်ၸႂ်ႉ Editor 2 ပိူင်)**
ၼႂ်း Android Studio ၼၼ်ႉ ႁဝ်းၸၢင်ႈလိူၵ်ႈၸႂ်ႉလႆႈ 2 လၢႆးၶႃႈ:
* **Design View (Drag-and-Drop):** ၸႂ်ႉမွၵ်ႉ (Mouse) လၢၵ်ႈ Views မႃးသႂ်ႇ လႄႈ လၢၵ်ႈသၢႆမတ်ႉမၼ်း။ မၼ်းငၢႆႈတႃႇလုၵ်ႈႁဵၼ်းမႂ်ႇမႂ်ႇ ဢၼ်တိုၵ်ႉတႄႇႁဵၼ်းၶႃႈ။
* **Code View (Raw XML):** တႅမ်ႈ Code XML ႁင်းၵွႆး။ လၢႆးၼႆႉ တေႁဵတ်းႁႂ်ႈႁဝ်း ၵုမ်းထိင်း UI ႁဝ်းလႆႈလီလိူဝ် လႄႈ ပွင်ႇၸႂ်ပိူင်သၢင်ႈမၼ်းလိုၵ်ႉလိူဝ်ၶႃႈ။
* **Split View:** ပဵၼ်လၢႆးဢၼ်လီသုတ်း ယွၼ်ႉမၼ်းတေၼႄတင်း Code လႄႈ တင်းႁၢင်ႈ Design ၵမ်းလဵဝ်ၶႃႈ။

---

### **3. Constraint Guidelines (သၢႆၸွႆးၸတ်ႉဝၢင်း)**
မိူဝ်ႈႁဝ်းတႅမ်ႈ App ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းႁၢင်ႈလီ တင်းၼိူဝ်ၾူၼ်း လႄႈ တင်းၼိူဝ် Tablet ၶႃႈ။ 
ႁဝ်းၸၢင်ႈၸႂ်ႉ **Guidelines** ဢၼ်ပဵၼ်သၢႆၸွႆး (Invisible Lines) ၶႃႈ။
* **Guideline** ၼႆႉ တေဢမ်ႇၼႄၼႂ်း App တႄႉတႄႉ၊ ၵူၺ်းၵႃႈ မၼ်းၸွႆးႁႂ်ႈႁဝ်းမတ်ႉ Views ၸွမ်းလႆႈၶႃႈ။
* ႁဝ်းၸၢင်ႈတင်ႈ Guideline ပဵၼ် % လႆႈ (မိူၼ်ၼင်ႇ တင်ႈသၢႆဝႆႉတီႈ 20% ၶွင်ၼႃႈၸေႃး) ၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code XML (ၸႂ်ႉ Guideline တီႈ 20%):**
```xml
<androidx.constraintlayout.widget.Guideline
    android:id="@+id/guideline"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:orientation="vertical"
    app:layout_constraintGuide_percent="0.2" />

<TextView
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="မတ်ႉဝႆႉတီႈသၢႆ 20%"
    app:layout_constraintStart_toStartOf="@+id/guideline"
    app:layout_constraintTop_toTopOf="parent" />
```

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
"သင်ႁဝ်းဢမ်ႇမတ်ႉ Constraints ႁႂ်ႈၵုမ်ႇထူၼ်ႈ (ဢနည်းသုတ်း 2 သၢႆ) ၼႆ Views ႁဝ်းတေလႅၼ်ႈၵႂႃႇယူႇတီႈ (0,0) ၽၢႆႇသၢႆႉၼိူဝ်သုတ်း မိူဝ်ႈႁဝ်း Run App ၼၼ်ႉၶႃႈ"။ 
ႁဝ်းထုၵ်ႇလီ ၵူတ်ႇထတ်းတူၺ်း သီလႅင် (Error) ၼႂ်း Component Tree တႃႇသေႇၶႃႈ။