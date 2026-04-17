## **Lesson 10: Advanced StateList Drawables: Creating Custom Pro Key Shapes**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ယၢမ်းလဵဝ်ႁဝ်းမီး Layout ယဝ်ႉ၊ ၵွၺ်းၵႃႈ တုမ်ႇၼဵၵ်ႉ (Buttons) ႁဝ်းတိုၵ်ႉတူၺ်းႁၼ်မိူၼ် Buttons ၼႂ်း App ယူႇၶႃႈ။ 
တွၼ်ႈတႃႇႁႂ်ႈပဵၼ် **"Pro" Keyboard** တႄႉတႄႉၼၼ်ႉ ႁဝ်းတေလႆႈသၢင်ႈ **StateList Drawables** ၶႃႈ။

**StateList Drawable** ၼႆႉ ၸွႆႈႁႂ်ႈတုမ်ႇၼဵၵ်ႉလႅၵ်ႈလႆႈႁၢင်ႈၸွမ်း "State" မၼ်း:
1.  **Normal State:** ႁၢင်ႈတုမ်ႇၼဵၵ်ႉမိူဝ်ႈယူႇယူႇ (မီး Shadow ဢိတ်းဢိတ်း)။
2.  **Pressed State:** ႁၢင်ႈတုမ်ႇၼဵၵ်ႉမိူဝ်ႈႁဝ်းၼိပ်ႉၺႃး (သီတေလႅင်းၶိုၼ်း ဢမ်ႇၼၼ် ပႅၼ်ၶိုၼ်း)။

---

### **1. Creating the Key Background (Normal & Pressed)**

ႁဝ်းတေလႆႈသၢင်ႈၾၢႆႇ XML ၼႂ်း **`res/drawable`** ၶႃႈ။

#### **A. res/drawable/key_background_normal.xml**
```xml
<?xml version="1.0" encoding="utf-8"?>
<shape xmlns:android="http://schemas.android.com/apk/res/android">
    <solid android:color="#333333" />
    <corners android:radius="6dp" />
    <stroke android:width="1dp" android:color="#1A1A1A" />
</shape>
```

#### **B. res/drawable/key_background_pressed.xml**
```xml
<?xml version="1.0" encoding="utf-8"?>
<shape xmlns:android="http://schemas.android.com/apk/res/android">
    <solid android:color="#555555" />
    <corners android:radius="6dp" />
</shape>
```

---

### **2. Combining into a Selector (StateList)**

ဢၼ်ၼႆႉ ပဵၼ်ၾၢႆႇဢၼ်တေလၢတ်ႈၼႄ Button ဝႃႈ "မိူဝ်ႈလႂ်တေၸႂ်ႉႁၢင်ႈလႂ်" ၶႃႈ။

#### **res/drawable/key_selector.xml**
```xml
<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:state_pressed="true" android:drawable="@drawable/key_background_pressed" />
    
    <item android:drawable="@drawable/key_background_normal" />
</selector>
```



---

### **3. Applying to TmkKeyStyle**

ယၢမ်းလဵဝ် ႁဝ်းတေလႆႈၵႂႃႇမႄး **`themes.xml`** ႁႂ်ႈ Buttons တင်းသဵင်ႈ ၸႂ်ႉ Selector ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉၶႃႈ။

#### **res/values/themes.xml**
```xml

<style name="TmkKeyStyle" parent="Widget.MaterialComponents.Button">
    <item name="android:layout_width">0dp</item>
    <item name="android:layout_height">55dp</item>
    <item name="android:layout_margin">1.5dp</item>
    <item name="android:background">@drawable/key_selector</item>
    <item name="android:textColor">#FFFFFF</item>
    <item name="android:textSize">18sp</item>
    <item name="android:textAllCaps">false</item>
    <item name="android:insetTop">0dp</item>
    <item name="android:insetBottom">0dp</item>
    <item name="android:padding">0dp</item>
    <item name="backgroundTint">@null</item>
</style>
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Selector:** ၸွႆႈႁႂ်ႈ Keyboard မီးတူင်ႉၼိုင် (Visual Feedback) မိူဝ်ႈၵူၼ်းၸႂ်ႉၼဵၵ်းၺႃး။
* **Shadow Effect:** ၵၢၼ်ၸႂ်ႉ `stroke` ဢၼ်မီးသီလမ်လိူဝ် `solid` တေႁဵတ်းႁႂ်ႈတုမ်ႇၼဵၵ်ႉတူၺ်းႁၼ်ပဵၼ် 3D ဢိတ်းဢိတ်း။
* **backgroundTint="@null":** တွၼ်ႈတႃႇ Material Buttons၊ သင်ႁဝ်းဢမ်ႇသႂ်ႇ `@null` ဝႆႉၼႆ မၼ်းတေဢဝ်သီ Theme မႃးတဵၵ်း (Override) ႁၢင်ႈ Drawable ႁဝ်းပႅတ်ႈၶႃႈ။

---