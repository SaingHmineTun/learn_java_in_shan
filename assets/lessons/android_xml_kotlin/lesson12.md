## **Lesson 12: Drawables & Vector Assets**

### **1. Vector Assets (ၵၢၼ်ၸႂ်ႉ Icon ဢၼ်ဢမ်ႇတႅၵ်ႇ)**
မိူဝ်ႈၵွၼ်ႇ ႁဝ်းၸႂ်ႉႁၢင်ႈ PNG ဢမ်ႇၼၼ် JPG ၶႃႈ။ ၵူၺ်းၵႃႈ ပေႃးႁဝ်းၶႂၢၵ်ႈႁႂ်ႈယႂ်ႇမႃး မၼ်းတေတႅၵ်ႇ (Pixelated) ၶႃႈ။
* **Vector Asset (SVG/XML):** ပဵၼ်ႁၢင်ႈဢၼ်တႅမ်ႈလူၺ်ႈ "ပၢႆးၼပ်ႉ" (Math) ၶႃႈ။ ႁဝ်းၸၢင်ႈၶႂၢၵ်ႈႁႂ်ႈယႂ်ႇၵေႃႈယဝ်ႉ၊ လဵၵ်ႉၵေႃႈယဝ်ႉ၊ မၼ်းတေဢမ်ႇတႅၵ်ႇ လႄႈ ၾၢႆႇ (File) မၼ်းၵေႃႈလဵၵ်ႉတႄႉတႄႉၶႃႈ။
* **လၢႆးသႂ်ႇ:** Right-click တီႈ Folder `res/drawable` > **New** > **Vector Asset** ယဝ်ႉလိူၵ်ႈဢဝ် Icon ဢၼ်လူဝ်ႇၸႂ်ႉၼႂ်း Clip Art ၶႃႈ။

---

### **2. Custom Shape XML (ၵၢၼ်သၢင်ႈပုမ်ႇ ႁင်းၵွႆး)**
ႁဝ်းၸၢင်ႈတႅမ်ႈ XML တႃႇသၢင်ႈႁၢင်ႈၾၢင် (Shape) ႁင်းၵွႆး တႃႇဢဝ်ၵႂႃႇပဵၼ် Background ၶွင်တုမ်ႇ ဢမ်ႇၼၼ် လွၵ်းလိၵ်ႈၶႃႈ။

* **`<corners>`**: တႃႇႁဵတ်းႁႂ်ႈၶွပ်ႇမၼ်းမူၼ်း (Rounded Corners)။
* **`<stroke>`**: တႃႇသႂ်ႇသႅၼ်း (Border) ႁိမ်းၶွပ်ႇမၼ်း။
* **`<gradient>`**: တႃႇႁဵတ်းႁႂ်ႈသီလႅၼ်ႈႁူမ်ႈၵၼ် (မိူၼ်ၼင်ႇ သီသွမ်ႇ လႅၼ်ႈၸူး သီၶမ်း)။



#### **တူဝ်ယၢင်ႇ Code ၼႂ်း `res/drawable/custom_button.xml`:**
```xml
<shape xmlns:android="http://schemas.android.com/apk/res/android">
    <solid android:color="@color/tmk_blue" />
    <corners android:radius="20dp" />
    <stroke android:width="2dp" android:color="@color/tmk_gold" />
</shape>
```

---

### **3. Layer Lists (ၵၢၼ်ဢဝ်ႁၢင်ႈမႃးသွၼ်ႉၵၼ်)**
သင်ႁဝ်းၶႂ်ႈသၢင်ႈ Background ဢၼ်မီးလၢႆၸၼ်ႉ (မိူၼ်ၼင်ႇ မီးသီပိုၼ်ႉလင် ယဝ်ႉမီး Icon ယူႇၼိူဝ်မၼ်းထႅင်ႈ) ႁဝ်းတေၸႂ်ႉ **`<layer-list>`** ၶႃႈ။
* မၼ်းမိူၼ်ၼင်ႇ ႁဝ်းဢဝ်ၸေႈလၢႆလုၵ်ႉ မႃးဝၢင်းသွၼ်ႉၵၼ်ၶႃႈ။

#### **တူဝ်ယၢင်ႇ Code:**
```xml

<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@color/tmk_blue" />
    <item>
        <bitmap android:gravity="center" android:src="@drawable/ic_logo" />
    </item>
</layer-list>
```

---

### **4. Tinting (ၵၢၼ်လႅၵ်ႈသီ Icon)**
ႁဝ်းဢမ်ႇလူဝ်ႇမီး Icon ဢၼ်မီးလၢႆလၢႆသီၶႃႈ။ ႁဝ်းၸၢင်ႈၸႂ်ႉ Icon ဢၼ်လဵဝ်သေ "လႅၵ်ႈသီ" (Tint) မၼ်းဢဝ်လႆႈၶႃႈ။
* **ၼႂ်း XML:** ၸႂ်ႉ `android:tint="@color/tmk_gold"`။
* **ၼႂ်း Kotlin:** ၸႂ်ႉ `binding.myIcon.setColorFilter(Color.RED)`။

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
'တႅၼ်းတၢင် ၵၢၼ်ဢဝ်ႁၢင်ႈသႂ်ႇၼႂ်း App ၼမ်ၼမ်ၼၼ်ႉ ႁႂ်ႈၸၢမ်းသၢင်ႈ Shape XML ႁင်းၵွႆးတူၺ်းၶႃႈ။' 
မၼ်းတေႁဵတ်းႁႂ်ႈ App ႁဝ်း ဝဝ် (Lightweight) လႄႈ ႁၢင်ႈလီၼိမ်ၵိုမ်း (Sharp) ၼိူဝ်ၾူၼ်းၵူႈလုၵ်ႈၶႃႈ။ 
သင်ၶႂ်ႈမႄးသီၵေႃႈ မႄးလႆႈငၢႆႈငၢႆႈ ၼႂ်း Code ၵမ်းလဵဝ်ၶႃႈ။"