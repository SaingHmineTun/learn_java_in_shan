## **Lesson 9: Advanced ConstraintLayout Techniques (လွၵ်းလၢႆး ConstraintLayout ၶၼ်ႉသုင်)**

### **1. The "Flat" Hierarchy (ပိူင်သၢင်ႈၼႃႈၸေႃး ဢၼ်ပႅၼ်ႈ)**
မိူဝ်ႈၵွၼ်ႇ ႁဝ်းၵႆႉဢဝ် Layout သႂ်ႇၼႂ်း Layout ထႅင်ႈပွၵ်ႈၼိုင်ႈ (Nesting) တႃႇၸတ်ႉဝၢင်း Views ယဝ်ႉ။
ၵူၺ်းၵႃႈ လၢႆးၼၼ်ႉ ႁဵတ်းႁႂ်ႈ Android လူဝ်ႇၵူတ်ႇထတ်းၼႃႈၸေႃးလၢႆဢၼ် လႄႈ ႁဵတ်းႁႂ်ႈ App ထိူင်းၶႃႈ။
* **ConstraintLayout:** ၸွႆးႁႂ်ႈႁဝ်းဝၢင်း Views တင်းမူတ်းဝႆႉၼိူဝ် "ၸၼ်ႉလဵဝ်ၵၼ်" (Flat Hierarchy) လႆႈၶႃႈ။
* **လွင်ႈလီ:** App တေလႅၼ်ႈဝႆးလိူဝ် လႄႈ ၸႂ်ႉ RAM ဢေႇလိူဝ်ၶႃႈ။

---

### **2. Bias and Ratios (ၵၢၼ်ၸတ်ႉဝၢင်း ပဵၼ်ပိူဝ်ႇသဵၼ်ႇ လႄႈ သတ်ႉတႅၼ်း)**
* **Bias:** သင်ႁဝ်းမတ်ႉ သၢႆႉ-ၶႂႃ တေႃႇ Parent၊ ႁဝ်းၸၢင်ႈမႄး Bias တႃႇႁႂ်ႈမၼ်းၵႂႃႇပႅတ်ႉ ၽၢႆၼိုင်ႈ (မိူၼ်ၼင်ႇ ဝၢင်းဝႆႉတီႈ 30% ၶွင်ၼႃႈၸေႃး)။
* **Dimension Ratio:** ၸွႆးႁႂ်ႈ Views ႁဝ်းမီးသတ်ႉတႅၼ်း ဢၼ်ၼိမ်ၵိုမ်း (မိူၼ်ၼင်ႇ ႁၢင်ႈ Video 16:9) ဢမ်ႇဝႃႈၼႃႈၸေႃး တေယႂ်ႇၵေႃႈယဝ်ႉၶႃႈ။



#### **တူဝ်ယၢင်ႇ Code (ႁၢင်ႈ 16:9 လႄႈ ဝၢင်းဝႆႉတီႈ 30%):**
```xml
<ImageView
    android:layout_width="0dp"
    android:layout_height="0dp"
    app:layout_constraintDimensionRatio="16:9"
    app:layout_constraintHorizontal_bias="0.3"
    app:layout_constraintLeft_toLeftOf="parent"
    app:layout_constraintRight_toRightOf="parent"
    app:layout_constraintTop_toTopOf="parent" />
```

---

### **3. Chains (ၵၢၼ်မတ်ႉပဵၼ်သၢႆၵၼ်)**
မိူဝ်ႈႁဝ်းမီး Views တၢင်းၼမ် (မိူၼ်ၼင်ႇ တုမ်ႇ 3 ဢၼ်) ၼႆ ႁဝ်းၸၢင်ႈမတ်ႉၶဝ်ႁႂ်ႈပဵၼ် **Chain** တႃႇၸတ်ႉဝၢင်းလႆႈ 3 လၢႆးၶႃႈ:
* **Spread:** ယၢၼ်မိူၼ်ၵၼ် (Default)။
* **Spread Inside:** ဢဝ်တူဝ်သၢႆႉ လႄႈ ၶႂႃသုတ်း ၵႂႃႇမတ်ႉၸိတ်းၶွပ်ႇ၊ ဢၼ်ၵၢင်သမ်ႉယူႇၵၢင်။
* **Packed:** ဢဝ်တင်းမူတ်း မႃးၸူႉတုမ်ၵၼ် တီႈၵၢင်။



---

### **4. Guidelines & Barriers (သၢႆၸွႆး လႄႈ ႁူဝ်ႉၵင်ႈ)**
* **Guidelines:** ပဵၼ်သၢႆၸွႆး ဢၼ်ႁဝ်းတင်ႈဝႆႉ (မိူၼ်ၼင်ႇ ၸတ်ႉ Margin 20dp တင်း App)။
* **Barriers:** ပဵၼ် "ႁူဝ်ႉ" ဢၼ်တေလႅၼ်ႈၸွမ်း တၢင်းယႂ်ႇၶွင် Views ၶႃႈ။ မိူၼ်ၼင်ႇ သင်လိၵ်ႈၸိုဝ်ႈ (Name) ယႂ်ႇမႃး၊ ႁူဝ်ႉၼၼ်ႉၵေႃႈ တေလႅၼ်ႈထွႆၵႂႃႇ ႁႂ်ႈ Views ၽၢႆႇၶႂႃ ဢမ်ႇတူပ်ႉၵၼ်ၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code (Barrier ၵုမ်းထိင်း Views 2 ဢၼ်):**
```xml
<androidx.constraintlayout.widget.Barrier
    android:id="@+id/barrier"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    app:barrierDirection="end"
    app:constraint_referenced_ids="txtFirstName,txtLastName" />
```

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
"မိူဝ်ႈႁဵတ်း Layout ၼၵ်းၼၵ်းၼၼ်ႉ ၸႂ်ႉတိုဝ်း **Chains** တႅၼ်းၵၢၼ်သႂ်ႇ Margin ၼမ်ၼမ်ၶႃႈ။ 
မၼ်းတေၸွႆးႁႂ်ႈ UI ႁဝ်း ပႅၼ်ႈပဵင်း (Flat) လႄႈ ၸတ်ႉဝၢင်းငၢႆႈလိူဝ်ၶႃႈ။
သင်ႁဝ်းယုင်ႈလွင်ႈသၢႆမတ်ႉၼႆ ၸၢမ်းလၢၵ်ႈၼႂ်း **Design View** ၵွၼ်ႇ ၸင်ႇမႃးတူၺ်း Code မၼ်းၶႃႈ။"