## **Lesson 3: method.xml Setup: Defining English, Myanmar and Shan Subtypes**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၾၢႆႇ **`method.xml`** ၼႆႉ ပဵၼ် "မၢႆၾၢင်" (Identity Card) ၶွင် Keyboard ႁဝ်းၶႃႈ။ မၼ်းတေလၢတ်ႈၼႄ Android System ဝႃႈ **TMK Keyboard Pro** ႁဝ်းၼႆႉ မီးလိၵ်ႈသင်လၢႆလၢႆ။ 
သင်ႁဝ်းဢမ်ႇသၢင်ႈၾၢႆႇၼႆႉ၊ Android တေဢမ်ႇႁူႉဝႃႈ ႁဝ်းမီးလိၵ်ႈတႆး လႄႈ လိၵ်ႈမၢၼ်ႈ၊ မၼ်းတေၼႄပဵၼ် Default Keyboard ဢင်းၵိတ်ႉဢၼ်လဵဝ်ၵူၺ်းၶႃႈ။

---

### **1. Subtypes ပဵၼ်သင်?**

**Subtype** ပဵၼ်ၵၢၼ်ၸႅၵ်ႇ "ပိူင်တႅမ်ႈ" ဢၼ်ယူႇၼႂ်း Service ဢၼ်လဵဝ်ၵၼ်ၶႃႈ။ တွၼ်ႈတႃႇႁဝ်း ႁဝ်းတေလႆႈပိုၼ်ၽၢဝ်ႇ 3 ဢၼ်:
1.  **English Subtype:** တႃႇတႅမ်ႈလိၵ်ႈဢင်းၵိတ်ႉ (Locale: `en_US`)။
2.  **Myanmar Subtype:** တႃႇတႅမ်ႈလိၵ်ႈမၢၼ်ႈ (Locale: `my`)။
3.  **Shan Subtype:** တႃႇတႅမ်ႈလိၵ်ႈတႆး (Locale: `shn`)။

မိူဝ်ႈႁဝ်းပိုၼ်ၽၢဝ်ႇဝႆႉယဝ်ႉ၊ ၵူၼ်းၸႂ်ႉတေၸၢင်ႈ "ပိုတ်ႇ/ပိၵ်ႉ" လိၵ်ႈဢၼ်ၶဝ်လူဝ်ႇၸႂ်ႉ လႆႈၼႂ်း **System Settings > Languages & Input** ၶႃႈယဝ်ႉ။


---

### **2. ၵၢၼ်သၢင်ႈ Folder `xml`**

ပိူင်ပိုၼ်ႉထၢၼ် Android Project တေဢမ်ႇပႃး Folder `xml` ၶႃႈ။ ႁဝ်းတေလႆႈသၢင်ႈမၼ်းႁင်းၵူၺ်း:
1.  Click ၶႂႃတီႈ Folder **`res`**.
2.  လိူၵ်ႈ **New > Android Resource Directory**.
3.  Resource type လိူၵ်ႈပဵၼ် **`xml`**.

---

### **The Code Structure (ႁၢင်ႈၾၢင် Code)**

သၢင်ႈၾၢႆႇမႂ်ႇၼႂ်း **`res/xml/method.xml`** သေ တႅမ်ႈ Code တွၼ်ႈတႃႇပိုၼ်ၽၢဝ်ႇတင်း 3 လိၵ်ႈၼင်ႇၼႆၶႃႈ:

```xml
<?xml version="1.0" encoding="utf-8"?>
<input-method xmlns:android="http://schemas.android.com/apk/res/android">

    <subtype
        android:label="English (US)"
        android:imeSubtypeLocale="en_US"
        android:imeSubtypeMode="keyboard" />

    <subtype
        android:label="Myanmar (Unicode)"
        android:imeSubtypeLocale="my"
        android:imeSubtypeMode="keyboard" 
        android:imeSubtypeExtraValue="AsciiCapable"/>

    <subtype
        android:label="Shan (လိၵ်ႈတႆး)"
        android:imeSubtypeLocale="shn"
        android:imeSubtypeMode="keyboard" 
        android:imeSubtypeExtraValue="AsciiCapable"/>

</input-method>
```

---

### **3. ၶေႃႈသပ်းလႅင်း Attributes**

* **`android:label`**: ပဵၼ်ၸိုဝ်ႈဢၼ်တေၼႄၼႂ်း Settings (မိူၼ်ၼင်ႇ: Shan (လိၵ်ႈတႆး))။
* **`android:imeSubtypeLocale`**: ပဵၼ် Language Code ဢၼ် System ၸႂ်ႉတႃႇၸႅၵ်ႇလိၵ်ႈ (shn = Shan, my = Myanmar)။
* **`android:imeSubtypeMode`**: တေလႆႈသႂ်ႇ `keyboard` တႅတ်ႈတႅတ်ႈတေႃးတေႃးၶႃႈ။
* **`android:imeSubtypeExtraValue="AsciiCapable"`**: ဢၼ်ၼႆႉလွင်ႈယႂ်ႇ၊ မၼ်းလၢတ်ႈၼႄ System ဝႃႈ Keyboard ၼႆႉ တႅမ်ႈ Password (ASCII characters) လႆႈၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Identity**: `method.xml` ပဵၼ်ၾၢႆႇပိုၼ်ၽၢဝ်ႇ လိၵ်ႈတင်းသဵင်ႈ ဢၼ် Keyboard ႁဝ်းၵမ်ႉထႅမ်။
* **Integration**: ၾၢႆႇၼႆႉတေလႆႈထုၵ်ႇၵွင်ႉဝႆႉၼႂ်း `AndroidManifest.xml` (Lesson 2) တႅတ်ႈတႅတ်ႈတေႃးတေႃး။
* **Visibility**: ပေႃးမီးၾၢႆႇၼႆႉယဝ်ႉ၊ Keyboard ႁဝ်းတေဢွၵ်ႇမႃးၼႂ်း "Language & Input" ၼႂ်းၾူၼ်းၶႃႈယဝ်ႉ။

---