## **Lesson 10: The Material Design Component (MDC)**

### **1. Introduction to Material 3 (ႁူႉၸၵ်း Material 3)**
**Material Design** ပဵၼ်ပိူင်သၢင်ႈၵၢၼ်ဢွၵ်ႇပိူင် (Design System) ဢၼ် Google သၢင်ႈဝႆႉၶႃႈ။ 
ပၢၼ်မႂ်ႇသုတ်းၼႆႉႁွင်ႉဝႃႈ **Material 3 (M3)** ၼႆၶႃႈ။ မၼ်းႁဵတ်းႁႂ်ႈ တူဝ်လိၵ်ႈဢၢၼ်ႇငၢႆႈ၊ သီတူၺ်းႁၢင်ႈလီ လႄႈ ႁၢင်ႈၾၢင် "မူၼ်း" (Rounded) လိူဝ်ပၢၼ်ၵဝ်ႇၶႃႈ။

---

### **2. Material Buttons**
ၼႂ်း Material Design ႁဝ်းဢမ်ႇၸႂ်ႉတုမ်ႇႁၢင်ႈလဵဝ်ၵၼ် တင်း App ၶႃႈ။ ႁဝ်းၸႅၵ်ႇၸႂ်ႉၸွမ်းၼင်ႇ လွင်ႈလမ်ႇလွင်ႈမၼ်း:
* **Elevated/Contained Button:** တႃႇၵၢၼ်ႁဵတ်းၵၢၼ် ဢၼ်လမ်ႇလွင်ႈသုတ်း (မိူၼ်ၼင်ႇ: "Save" ဢမ်ႇၼၼ် "Submit")။
* **Outlined Button:** တႃႇၵၢၼ်ႁဵတ်းၵၢၼ် ဢၼ်လမ်ႇလွင်ႈပၢၼ်ၵၢင် (မိူၼ်ၼင်ႇ: "Edit" ဢမ်ႇၼၼ် "Cancel")။
* **Text Button:** တႃႇၵၢၼ်ႁဵတ်းၵၢၼ် ဢၼ်ဢေႇသုတ်း (မိူၼ်ၼင်ႇ: "Learn More")။



#### **တူဝ်ယၢင်ႇ Code XML:**
```xml
<com.google.android.material.button.MaterialButton
    style="@style/Widget.Material3.Button.OutlinedButton"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Cancel" />
```

---

### **3. Material CardView (ၵၢၼ်ၸႂ်ႉၶွပ်ႇမူၼ်း လႄႈ ႁၢင်ႈငဝ်း)**
`MaterialCardView` ၸွႆးႁႂ်ႈႁဝ်းၸႅၵ်ႇ "ပုၼ်ႈ" (Section) ၼႂ်း App ႁဝ်းႁၢင်ႈလီၶႃႈ။
* **Elevation & Shadows:** ၸွႆးႁႂ်ႈ Card လွၵ်းၶိုၼ်ႈမႃး (Pop) မီးႁၢင်ႈငဝ်းၽၢႆႇတႂ်ႈ။
* **Corner Radius:** မႄးၶွပ်ႇႁႂ်ႈမူၼ်းလႆႈ ၸွမ်းၼင်ႇၶႂ်ႈလႆႈ။

#### **တူဝ်ယၢင်ႇ Code XML:**
```xml
<com.google.android.material.card.MaterialCardView
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    app:cardCornerRadius="12dp"
    app:cardElevation="4dp"
    app:strokeWidth="1dp"
    app:strokeColor="#DDDDDD">

    <TextView
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:padding="16dp"
        android:text="ၼႆႉပဵၼ်ၶေႃႈမူၼ်းၼႂ်း Card ၶႃႈ" />
</com.google.android.material.card.MaterialCardView>
```

---

### **4. Input Styling (လွၵ်းသႂ်ႇလိၵ်ႈ ဢၼ်မီးသတၢႆႇ)**
တႅၼ်းတၢင် ၵၢၼ်ၸႂ်ႉ `EditText` လၢႆလၢႆၼၼ်ႉ ႁဝ်းၸႂ်ႉ **TextInputLayout** တႃႇႁႂ်ႈမၼ်းမီး "Floating Labels" (လိၵ်ႈၸွႆး ဢၼ်လႅၼ်ႈၶိုၼ်ႈမိူဝ်ႈတႅမ်ႈလိၵ်ႈ)။
* **Helper Text:** လိၵ်ႈၸွႆး ဢၼ်ယူႇဝႆႉ ၽၢႆႇတႂ်ႈ။
* **Error State:** ၼႄသီလႅင် မိူဝ်ႈၵူၼ်းၸႂ်ႉတႅမ်ႈၽိတ်း။



#### **တူဝ်ယၢင်ႇ Code XML:**
```xml
<com.google.android.material.textfield.TextInputLayout
    android:id="@+id/nameInputLayout"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:hint="သႂ်ႇၸိုဝ်ႈၸဝ်ႈၵဝ်ႇ"
    app:errorEnabled="true">

    <com.google.android.material.textfield.TextInputEditText
        android:id="@+id/editName"
        android:layout_width="match_parent"
        android:layout_height="wrap_content" />
</com.google.android.material.textfield.TextInputLayout>
```

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
"မိူဝ်ႈၸႂ်ႉ Material Components ၼၼ်ႉ ၵူတ်ႇထတ်းတူၺ်းၼႂ်း `themes.xml` ဝႃႈ App ႁဝ်းၸႂ်ႉ Parent Theme ပဵၼ် `Theme.Material3...` ဝႆႉယဝ်ႉႁိုဝ် ၼႆၶႃႈ။ 
သင်ဢမ်ႇပဵၼ် Material Theme ၼႆ ႁၢင်ႈၾၢင်တုမ်ႇ လႄႈ Card ၸိူဝ်းၼႆႉ တေဢမ်ႇၼႄ ၸွမ်းၼင်ႇႁဝ်းတင်ႈဝႆႉၶႃႈ။"