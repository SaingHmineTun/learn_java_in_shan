## **Module 2 | Lesson 12: Responsive Design: Scaling Keys for Tablets and Foldables**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
မိူဝ်ႈႁဝ်းသၢင်ႈ **TMK Keyboard Pro** ယဝ်ႉ၊ ႁဝ်းတေလႆႈႁဵတ်းႁႂ်ႈမၼ်းတူၺ်းႁၼ်ႁၢင်ႈလီ (Responsive) ၵူႈၼႃႈၸေႃးၶႃႈ။ သင်ၵူၼ်းၸႂ်ႉဢဝ်ၵႂႃႇပိုတ်ႇၼႂ်း **Tablet** ဢမ်ႇၼၼ် **Foldable Phone** (မိူၼ်ၼင်ႇ Pixel Fold / Samsung Fold) ၼႆ Keyboard ႁဝ်းတေယႂ်ႇပူၼ်ႉတီႈ ဢမ်ႇၼၼ် တုမ်ႇၼဵၵ်ႉတေယၢဝ်းပူၼ်ႉၵႂႃႇၶႃႈ။

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေၸႂ်ႉ **Resource Qualifiers** တႃႇၸတ်းၵၢၼ် တင်းသုင် (Height) လႄႈ တၢင်းၵႂၢင်ႈ (Width) ႁႂ်ႈမၼ်း Fit ၸွမ်းၼႃႈၸေႃးၶႃႈ။

---

### **1. Using Dimension Folders (Qualifiers)**

Android ၸွႆႈႁႂ်ႈႁဝ်းၸႅၵ်ႇ `dimens.xml` ၸွမ်းၼင်ႇတၢင်းၵႂၢင်ႈၼႃႈၸေႃး (Screen Width) ၶႃႈ။

* **`values/dimens.xml`**: တႃႇၾူၼ်းယူႇယူႇ (Default)။
* **`values-sw600dp/dimens.xml`**: တႃႇ Tablet 7-inch ဢမ်ႇၼၼ် ၾူၼ်းပႅတ်ႉ (Folded)။
* **`values-sw720dp/dimens.xml`**: တႃႇ Tablet 10-inch ယႂ်ႇယႂ်ႇ။



#### **Example Configuration:**

**res/values/dimens.xml (Phone)**
```xml

<resources>
    <dimen name="key_height">55dp</dimen>
    <dimen name="keyboard_padding">2dp</dimen>
    <dimen name="key_text_size">18sp</dimen>
</resources>
```

**res/values-sw600dp/dimens.xml (Tablet)**
```xml

<resources>
    <dimen name="key_height">65dp</dimen>
    <dimen name="keyboard_padding">40dp</dimen>
    <dimen name="key_text_size">22sp</dimen>
</resources>
```

---

### **2. Implementing in XML Layout**

ၼႂ်း `keyboard_root.xml` လႄႈ `layout_en.xml` ႁဝ်း၊ ႁဝ်းတေဢမ်ႇသႂ်ႇၵႃႈ (Value) မၼ်းတႅတ်ႈတေႃး (မိူၼ်ၼင်ႇ 55dp)။ ႁဝ်းတေၸီႉၸူး **`@dimen`** ၶႃႈ။

**res/layout/keyboard_root.xml**
```xml
<LinearLayout 
    ...
    android:paddingLeft="@dimen/keyboard_padding"
    android:paddingRight="@dimen/keyboard_padding"
    android:paddingBottom="5dp">
    ...
</LinearLayout>
```

**Inside Key Layouts (e.g., layout_en.xml)**
```xml
<Button
    ...
    android:layout_height="@dimen/key_height"
    android:textSize="@dimen/key_text_size" />
```

---

### **3. Handling Landscape Mode**

မိူဝ်ႈၵူၼ်းၸႂ်ႉ လႅၵ်ႈၾူၼ်းပဵၼ်တၢင်းၼွၼ်း (Landscape)၊ Keyboard တေၵိၼ်ၼႃႈၸေႃးၵႂႃႇတင်းၼမ်။ ႁဝ်းၸၢင်ႈမႄးလႆႈ 2 လၢႆး:

1.  **Qualifier `values-land`**: သၢင်ႈၾၢႆႇ `dimens.xml` ၼႂ်း Folder `values-land` သေ လူတ်း (Reduce) တင်းသုင် `key_height` ႁႂ်ႈမၼ်းတႅမ်ႇလိူဝ်ၵဝ်ႇ။
2.  **Split Keyboard**: တွၼ်ႈတႃႇ Tablet ယႂ်ႇယႂ်ႇ၊ ႁဝ်းၸၢင်ႈသၢင်ႈ Layout မႂ်ႇ ဢၼ်ၸႅၵ်ႇ Keys ဢွၵ်ႇပဵၼ် 2 ၽၢႆႇ (Left/Right) ၼႂ်း Module 7 ၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **SW Qualifiers**: ၸွႆႈႁႂ်ႈ Keyboard ႁဝ်း "Smart" သေ ႁူႉဝႃႈလူဝ်ႇယႂ်ႇၵႃႈႁိုဝ် ၸွမ်းၼင်ႇၼႃႈၸေႃး။
* **Keyboard Padding**: ပဵၼ်လွင်ႈယႂ်ႇသေပိူၼ်ႈ တႃႇ Tablet။ သင်ဢမ်ႇသႂ်ႇ Padding၊ တုမ်ႇၼဵၵ်ႉတေယၢဝ်းပူၼ်ႉတီႈသေ တႅမ်ႈယၢပ်ႇၶႃႈ။
* **Scalability**: ၵၢၼ်ၸႂ်ႉ `@dimen` ႁဵတ်းႁႂ်ႈႁဝ်းမႄး (Maintenance) Keyboard ႁဝ်းလႆႈငၢႆႈ ၵူႈ version ၶႃႈ။

---