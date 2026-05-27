

## Lesson 4: Defining Keyboard Properties with `method.xml`

ၾၢႆႇ `method.xml` ၼႆႉ မၼ်းပဵၼ် ၾၢႆႇ Configuration ဢၼ်လၢတ်ႈၼႄ Android System ဝႃႈ 
Keyboard ႁဝ်းၼႆႉ မၼ်းမီး တူဝ်လိၵ်ႈသင်လႆႈၽွင်ႈ (Capabilities) လႄႈ မၼ်းႁပ်ႉႁူႉ (Support) ၽႃႇသႃႇသင်ၽွင်ႈ 
ဢၼ်ႁဝ်းႁွင်ႉဝႃႈ **IME Subtype** ၼၼ်ႉယဝ်ႉ။

---

### 1. ၵၢၼ်သၢင်ႈၾၢႆႇ XML Resource

ဢွၼ်တၢင်းသုတ်း ႁဝ်းလူဝ်ႇလႆႈၵႂႃႇသၢင်ႈ Folder ဢၼ်ၸိုဝ်ႈဝႃႈ `xml` ဝႆႉၼႂ်း `res` (resource) ယဝ်ႉ။ သဵၼ်ႈတၢင်းမၼ်းတေပဵၼ်:
`app/src/main/res/xml/method.xml`

ၼႂ်းၾၢႆႇ `method.xml` ၼၼ်ႉ ႁဝ်းတေတႅမ်ႈ Code ပိုၼ်ႉထၢၼ် မၼ်းၼင်ႇၼႆယဝ်ႉ:

```xml
<?xml version="1.0" encoding="utf-8"?>
<input-method xmlns:android="http://schemas.android.com/apk/res/android"
    android:settingsActivity="it.saimao.tmkkeyboardpro.SettingsActivity"
    android:supportsSwitchingToNextInputMethod="true">

    <!-- 1. Subtype တႃႇ လိၵ်ႈဢင်းၵိတ်ႉ (English Subtype) -->
    <subtype
        android:icon="@drawable/ic_subtype_english"
        android:label="@string/subtype_english"
        android:imeSubtypeLocale="en_US"
        android:imeSubtypeMode="keyboard"
        android:imeSubtypeExtraValue="KeyboardLayoutSet=qwerty" />

    <!-- 2. Subtype တႃႇ လိၵ်ႈတႆး (Shan Script Subtype) -->
    <subtype
        android:icon="@drawable/ic_subtype_shan"
        android:label="@string/subtype_shan"
        android:imeSubtypeLocale="shn"
        android:imeSubtypeMode="keyboard"
        android:imeSubtypeExtraValue="KeyboardLayoutSet=shan" />

    <!-- 3. Subtype တႃႇ လိၵ်ႈမၼ်း/မႅၼ်ႇမႃႇ (Myanmar Script Subtype) -->
    <subtype
        android:icon="@drawable/ic_subtype_myanmar"
        android:label="@string/subtype_myanmar"
        android:imeSubtypeLocale="my_MM"
        android:imeSubtypeMode="keyboard"
        android:imeSubtypeExtraValue="KeyboardLayoutSet=myanmar" />

</input-method>

```

---

### 2. ၶေႃႈသႅၼ်းၸိၼႄ (Breakdown) Parameters ၼႂ်း `<input-method>`

* **`android:settingsActivity`**
* **လွင်ႈတၢင်းမၼ်း:** ၼႆႉပဵၼ် ၵၢၼ်ၸီႉသဵၼ်ႈတၢင်းၵႂႃႇၸူး `Activity` ၼႂ်းဢႅပ်ႉႁဝ်း ဢၼ်ပဵၼ် ၼႃႈၸေႃး Settings ယဝ်ႉ။ မိူဝ်ႈ User ၵႂႃႇၼဵၵ်း တီႈလေႃႉၵိူဝ် (Gear Icon) တီႈႁိမ်းၸိုဝ်ႈ Keyboard ၼႂ်း Android Settings ၼၼ်ႉ System တေပိုတ်ႇၼႃႈၸေႃး Settings Activity ၶွင်ဢႅပ်ႉႁဝ်း ႁႂ်ႈ User လႅၵ်ႈလၢႆႈ တီႈတင်ႈၵၢၼ် (မိူၼ်ၼင်ႇ လႅၵ်ႈလၢႆႈ Theme, ပိုတ်ႇ/ပိၵ်ႉ သဵင်ၼဵၵ်း) လႆႈၵမ်းသိုဝ်ႈယဝ်ႉ။


* **`android:supportsSwitchingToNextInputMethod="true"`**
* **လွင်ႈတၢင်းမၼ်း:** တူဝ်ၼႆႉမၼ်းပဵၼ် လွင်ႈပၼ်ၶႂၢင်ႉ (Permission) ႁႂ်ႈ Keyboard ႁဝ်း ၸႂ်ႉတိုဝ်း လုၵ်ႉၵုမ်း (Globe Key ဢမ်ႇၼၼ် Spacebar Long Press) တႃႇလႅၵ်ႈလၢႆႈ (Switch) ၵႂႃႇၸူး Keyboard တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ Gboard) ဢၼ်မီးၼႂ်း System ၼၼ်ႉယဝ်ႉ။



---

### 3. ၶေႃႈသပ်းလႅင်း (Breakdown) Parameters ၼႂ်း `<subtype>`

`<subtype>` မၼ်းပဵၼ် ၵၢၼ်မၢႆဝႆႉ ၽႃႇသႃႇ (Languages) ဢၼ်မီးၼႂ်း Keyboard ႁဝ်းယဝ်ႉ။ ၼႂ်း Code ၽၢႆႇၼိူဝ် ႁဝ်းလႆႈသၢင်ႈဝႆႉ 3 ဢၼ်:

* **`android:imeSubtypeLocale`**
* **လွင်ႈတၢင်းမၼ်း:** ၸႂ်ႉ Locale Code ၶွင် ၽႃႇသႃႇ ၼၼ်ႉၶႃႈ။ တႃႇလိၵ်ႈတႆး ႁဝ်းတေၸႂ်ႉ `shn` (Shan)၊ လိၵ်ႈမၢၼ်ႊသမ်ႉ `my_MM` လႄႈ တႃႇလိၵ်ႈဢင်းၵိတ်ႉ ႁဝ်းတေၸႂ်ႉ `en_US` ယဝ်ႉ။


* **`android:imeSubtypeMode="keyboard"`**
* **လွင်ႈတၢင်းမၼ်း:** လၢတ်ႈၼႄ System ဝႃႈ Subtype ဢၼ်ၼႆႉ မၼ်းပဵၼ် သႅၼ်း Input ၶွင် `keyboard` ယဝ်ႉ။ (Android မၼ်းမီးသႅၼ်းတၢင်ႇဢၼ် မိူၼ်ၼင်ႇ `voice` တႃႇပၼ်လိၵ်ႈၸွမ်းသဵင်)။


* **`android:imeSubtypeExtraValue`**
* **လွင်ႈတၢင်းမၼ်း:** ၼႆႉပဵၼ် ၵၢၼ်သႂ်ႇ ၶေႃႈမုၼ်းထႅမ် (Metadata) ဢၼ်ႁဝ်းတေလႆႈၵႂႃႇ လူတ်ႇလူ (Read) ဝႆႉၼႂ်း Code တွၼ်ႈ `onStartInput()` တႃႇႁူႉဝႃႈ ယၢမ်းလဵဝ် User ၵႂႃႇလႅၵ်ႈဝႆႉ လၢႆးဝၢင်းၶီး (Layout) သႅၼ်းလႂ် (မိူၼ်ၼင်ႇ `shan` ဢမ်ႇၼၼ် `qwerty`) ၼႆယဝ်ႉ။



---

### 4. မၢႆတွင်း (Core Takeaways)

* ၾၢႆႇ `method.xml` မၼ်းႁဵတ်းၵၢၼ်ပဵၼ် ၶူဝ်ၵၢႆႇ (Bridge) တႃႇၼႄ System Settings ႁႂ်ႈႁူႉၸႅင်ႈဝႃႈ Keyboard ႁဝ်းၼႆႉ မီးၽႃႇသႃႇသင်ၽွင်ႈ။
* သင်ဝႃႈ ဢမ်ႇသႂ်ႇ `<subtype>` ဝႆႉၼႆ User တေဢမ်ႇၸၢင်ႈ လႅၵ်ႈလၢႆႈၽႃႇသႃႇ ၸွမ်းပိူင် Android Language & Input Settings လႆႈယဝ်ႉ။

---
