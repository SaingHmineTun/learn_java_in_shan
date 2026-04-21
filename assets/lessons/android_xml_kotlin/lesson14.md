## **Lesson 14: Scrolling Content with ScrollView**

### **1. The Viewport Problem (ပၼ်ႁႃ မိူဝ်ႈၼႃႈၸေႃးဢမ်ႇၵုမ်ႇ)**
မိူဝ်ႈႁဝ်းတႅမ်ႈ App ဢၼ်မီးလွၵ်းလိၵ်ႈ (Text) ၼမ်ၼမ် ဢမ်ႇၼၼ် မီး Views တၢင်းၼမ်ၼၼ်ႉ ၵႆႉမီးပၼ်ႁႃ ၶေႃႈမုၼ်းၸိူဝ်းၼၼ်ႉ "လႅၼ်ႈဢွၵ်ႇ" ၼႃႈၸေႃးၾူၼ်းၵႂႃႇ (Cut off) ၶႃႈယဝ်ႉ။
* Android တေဢမ်ႇပိုတ်ႇလၢႆး "လၢၵ်ႈလူင်း" (Scroll) ပၼ်ႁင်းၵွႆးၶႃႈ။
* သင်ႁဝ်းဢမ်ႇၸႂ်ႉ ScrollView ၼႆ ၶေႃႈမူၼ်း ဢၼ်ယူႇၽၢႆႇတႂ်ႈၼၼ်ႉ ၵူၼ်းၸႂ်ႉတေဢမ်ႇႁၼ် လႄႈ တေဢမ်ႇၸၢင်ႈလၢၵ်ႈလူင်းတူၺ်းလႆႈၶႃႈ။

---

### **2. ScrollView vs. HorizontalScrollView (ၵၢၼ်လၢၵ်ႈ လူင်း-ၶႂႃ)**
ႁဝ်းၸႅၵ်ႇလၢႆးလၢၵ်ႈ (Scrolling) ပဵၼ် 2 ပိူင်ၶႃႈ:
* **`ScrollView`**: ၸႂ်ႉတႃႇလၢၵ်ႈ "လူင်း-ၶိုၼ်ႈ" (Vertical) ၶႃႈ။ ၼႆႉပဵၼ်လၢႆး ဢၼ်ၵႆႉၸႂ်ႉလိူဝ်ပိူၼ်ႈ တွၼ်ႈတႃႇၼႃႈၸေႃး ဢၼ်မီးလိၵ်ႈၼမ်ၶႃႈ။
* **`HorizontalScrollView`**: ၸႂ်ႉတႃႇလၢၵ်ႈ "သၢႆႉ-ၶႂႃ" (Horizontal) ၶႃႈ။ ၵႆႉၸႂ်ႉတႃႇၼႄႁၢင်ႈလၢႆလၢႆဢၼ် ဢၼ်ဝၢင်းၼွၼ်းဝႆႉၸွမ်းၵၼ်ၶႃႈ။

---

### **3. The "Single Child" Rule (ပိူင်ၵၢၼ် "လုၵ်ႈၼိုင်ႈတူဝ်")**
လွင်ႈၼႆႉလမ်ႇလွင်ႈၼႃႇၶႃႈ! `ScrollView` ၼႆႉ မၼ်းမီးပိူင်တၢမ်းဝႃႈ **"မၼ်းသိမ်းလႆႈ Views ၼိုင်ႈဢၼ်ၵူၺ်း"** (It can hold only one direct child) ၼႆၶႃႈ။
* သင်ႁဝ်းဢဝ် TextView 2 ဢၼ် ၵႂႃႇသႂ်ႇၼႂ်း ScrollView ၼႆ App တေပဵၼ် Error ၶႃႈ။
* **လၢႆးၵႄႈ:** ႁဝ်းလူဝ်ႇဢဝ် ViewGroup ၼိုင်ႈဢၼ် (မိူၼ်ၼင်ႇ **ConstraintLayout** ဢမ်ႇၼၼ် **LinearLayout**) မႃးသႂ်ႇၼႂ်း ScrollView ၵွၼ်ႇ၊ ယဝ်ႉၸင်ႇဢဝ် Views တၢင်းၼမ် ၵႂႃႇသႂ်ႇၼႂ်း Layout ၼၼ်ႉထႅင်ႈပွၵ်ႈၶႃႈ။



---

### **4. တူဝ်ယၢင်ႇ Code XML (ConstraintLayout + ScrollView):**

```xml
<ScrollView
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <androidx.constraintlayout.widget.ConstraintLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content">

        <TextView
            android:id="@+id/txtLongContent"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:text="တႅမ်ႈလိၵ်ႈၼမ်ၼမ်သႂ်ႇတီႈၼႆႈ..."
            app:layout_constraintTop_toTopOf="parent" />

        <Button
            android:id="@+id/btnBottom"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="တုမ်ႇယူႇတႂ်ႈသုတ်း"
            app:layout_constraintTop_toBottomOf="@+id/txtLongContent"
            app:layout_constraintBottom_toBottomOf="parent" />

    </androidx.constraintlayout.widget.ConstraintLayout>

</ScrollView>
```

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
'မိူဝ်ႈၸႂ်ႉ ScrollView ၼၼ်ႉ ၵူတ်ႇထတ်းတူၺ်း `layout_height` ၶွင် ConstraintLayout ဢၼ်ယူႇၼႂ်းမၼ်းၼၼ်ႉလီလီၶႃႈ။' 
မၼ်းလူဝ်ႇလႆႈပဵၼ် **`wrap_content`** တႃႇသေႇၶႃႈ။
သင်ႁဝ်းတင်ႈပဵၼ် `match_parent` ၼႆ မၼ်းတေဢမ်ႇၸၢင်ႈလၢၵ်ႈလူင်း (Scroll) လႆႈၶႃႈ။
ယွၼ်ႉမၼ်းတေဝူၼ်ႉဝႃႈ ၼႃႈၸေႃးမၼ်းတဵမ်ယဝ်ႉ ၼႆၶႃႈ။