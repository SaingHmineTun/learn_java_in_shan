## **Lesson 3: method.xml Setup: Defining English & Shan Subtypes**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
ၾၢႆႇ `method.xml` ၼႆႉ ပဵၼ် "မၢႆၾၢင်" (Identity Card) ၶွင် Keyboard ႁဝ်းယဝ်ႉၶႃႈ။ 
မၼ်းတေလၢတ်ႈၼႄ System ဝႃႈ Keyboard ႁဝ်းၼႆႉ မီးလိၵ်ႈသင်လၢႆလၢႆ (Subtypes)။ 
သင်ႁဝ်းဢမ်ႇသၢင်ႈၾၢႆႇၼႆႉ၊ Android တေဢမ်ႇႁူႉဝႃႈ **TMK Keyboard Pro** ႁဝ်းၼႆႉ ပႃးလိၵ်ႈတႆး လႄႈ လိၵ်ႈဢင်းၵိတ်ႉၶႃႈ။

---

### **1. Subtypes ပဵၼ်သင်?**

**Subtype** ပဵၼ်ၵၢၼ်ၸႅၵ်ႇလိၵ်ႈ ဢၼ်ယူႇၼႂ်း Keyboard ဢၼ်လဵဝ်ၵၼ်ၶႃႈ။
* **English Subtype:** တႃႇလၢတ်ႈၼႄ System ဝႃႈ "ႁဝ်းမီးပိူင်တႅမ်ႈလိၵ်ႈဢင်းၵိတ်ႉ"။
* **Shan Subtype:** တႃႇလၢတ်ႈၼႄ System ဝႃႈ "ႁဝ်းမီးပိူင်တႅမ်ႈလိၵ်ႈတႆး"။

မိူဝ်ႈႁဝ်းသႂ်ႇ Subtypes ဝႆႉယဝ်ႉ၊ ၵူၼ်းၸႂ်ႉတေၸၢင်ႈလိူၵ်ႈပိုတ်ႇ/ပိၵ်ႉ လိၵ်ႈဢၼ်ၶဝ်လူဝ်ႇၸႂ်ႉ လႆႈၼႂ်း System Settings ၶႃႈယဝ်ႉ။

---

### **2. ၵၢၼ်သၢင်ႈ Folder `xml`**

ပိုၼ်ႉထၢၼ်မၼ်း Android Project တေဢမ်ႇပႃး Folder `xml` ၶႃႈ။ ႁဝ်းတေလႆႈသၢင်ႈမၼ်းႁင်းၵူၺ်း:
1. Click ၶႂႃတီႈ Folder `res`.
2. လိူၵ်ႈ **New** > **Android Resource Directory**.
3. Resource type လိူၵ်ႈပဵၼ် **xml**.

---

### **The Code Structure (ႁၢင်ႈၾၢင် Code)**

သၢင်ႈၾၢႆႇမႂ်ႇၼႂ်း `res/xml/` ပၼ်ၸိုဝ်ႈဝႃႈ `method.xml` သေ တႅမ်ႈ Code ၼင်ႇၼႆၶႃႈ:

```xml
<?xml version="1.0" encoding="utf-8"?>
<input-method xmlns:android="http://schemas.android.com/apk/res/android">

    <subtype
        android:icon="@drawable/ic_lang_en"
        android:label="English (US)"
        android:imeSubtypeLocale="en_US"
        android:imeSubtypeMode="keyboard" />

    <subtype
        android:icon="@drawable/ic_lang_shn"
        android:label="Shan (လိၵ်ႈတႆး)"
        android:imeSubtypeLocale="shn"
        android:imeSubtypeMode="keyboard" 
        android:imeSubtypeExtraValue="AsciiCapable"/>

</input-method>
```



---

### **3. ၶေႃႈသပ်းလႅင်း Attributes**

* **`android:label`**: ပဵၼ်ၸိုဝ်ႈဢၼ်တေၼႄၼႂ်း Settings (မိူၼ်ၼင်ႇ: Shan (လိၵ်ႈတႆး))။
* **`android:imeSubtypeLocale`**: ပဵၼ် Code လိၵ်ႈ (Language Code)။ တွၼ်ႈတႃႇလိၵ်ႈတႆးႁဝ်း ႁဝ်းၸႂ်ႉ `shn` ၶႃႈ။
* **`android:imeSubtypeMode`**: တွၼ်ႈတႃႇ Keyboard ႁဝ်းတေလႆႈသႂ်ႇ `keyboard` တႅတ်ႈတႅတ်ႈတေႃးတေႃးၶႃႈ။
* **`android:imeSubtypeExtraValue`**: ၸႂ်ႉတႃႇထႅမ်သႂ်ႇ Features တၢင်ႇဢၼ် မိူၼ်ၼင်ႇ `AsciiCapable` တႃႇလၢတ်ႈဝႃႈ Keyboard ၼႆႉ တႅမ်ႈ Password လႆႈၶႃႈ။

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **Identity:** `method.xml` ပဵၼ်ၾၢႆႇပိုၼ်ၽၢဝ်ႇ လိၵ်ႈဢၼ် Keyboard ႁဝ်းၵမ်ႉထႅမ် (Support)။
* **Registration:** ၾၢႆႇၼႆႉတေလႆႈထုၵ်ႇႁွင်ႉၸႂ်ႉၼႂ်း `AndroidManifest.xml` (ဢၼ်ႁဝ်းႁဵတ်းမႃးၼႂ်း Lesson 2)။
* **Settings Integration:** ပေႃးမီးၾၢႆႇၼႆႉယဝ်ႉ၊ Keyboard ႁဝ်းတေဢွၵ်ႇမႃးၼႂ်း "Language & Input" ၶွင်ၾူၼ်းၶႃႈယဝ်ႉ။

---