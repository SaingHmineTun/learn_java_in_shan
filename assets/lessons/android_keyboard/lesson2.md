## **Lesson 2: Manifest Magic: System Registration, Permissions & Intent Filters**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
မိူဝ်ႈႁဝ်းတႅမ်ႈ Code ၼႂ်း Kotlin လႄႈ XML ဝႆႉယဝ်ႉၵေႃႈ Android System တေဢမ်ႇပႆႇႁူႉဝႃႈ ဢႅပ်ႉႁဝ်းၼႆႉ ပဵၼ် "Keyboard" ၶႃႈ။ ႁဝ်းတေလႆႈၸႂ်ႉ **AndroidManifest.xml** တႃႇပိုၼ်ၽၢဝ်ႇ (Register) ႁႂ်ႈ System ႁူႉၸၵ်း Service ႁဝ်း လႄႈ ယွၼ်းၶႂၢင်ႉ (Permissions) တႃႇႁဵတ်းၵၢၼ်လႆႈၶႅမ်ႉလႅပ်ႈၶႃႈ။

---

### **1. ၵၢၼ်ပိုၼ်ၽၢဝ်ႇ Service (System Registration)**

ၼႂ်း Tag `<application>` ၼၼ်ႉ ႁဝ်းတေလႆႈသႂ်ႇ Tag `<service>` တွၼ်ႈတႃႇ `ShanKeyboardService` ၶႃႈ။

* **Permission:** တေလႆႈသႂ်ႇ `android.permission.BIND_INPUT_METHOD` ၼင်ႇႁိုဝ် System ၵွၺ်း တေၸၢင်ႈမႃးၸႂ်ႉ Service ႁဝ်းလႆႈ။
* **Intent Filter:** ႁဝ်းတေလႆႈသႂ်ႇ Action `android.view.InputMethod` တႃႇလၢတ်ႈဝႃႈ ဢႅပ်ႉၼႆႉ ပဵၼ် **IME (Input Method Editor)** ဢိူဝ်ႈ။
* **Meta-data:** ဢၼ်ၼႆႉ ပဵၼ်တွၼ်ႈတႃႇၸီႉၼႄၾၢႆႇ `method.xml` (ဢၼ်ႁဝ်းတေတႅမ်ႈၼႂ်း Lesson 3) တႃႇလၢတ်ႈဝႃႈ Keyboard ႁဝ်းမီးလိၵ်ႈသင်လၢႆလၢႆၶႃႈ။



---

### **2. ၵၢၼ်ပၼ်ၶႂၢင်ႉ (Permissions)**

တွၼ်ႈတႃႇ **TMK Keyboard Pro** ႁဝ်းတေမီး Function ၼင်ႇ လွင်ႈသၼ်ႇ (Vibration) ၼၼ်ႉ ႁဝ်းတေလႆႈယွၼ်းၶႂၢင်ႉဝႆႉ တီႈၼိူဝ်သုတ်းၶွင် Manifest ၶႃႈ။

* **VIBRATE:** တႃႇႁႂ်ႈၶီးပွတ်ႇသၼ်ႇ မိူဝ်ႈၼဵၵ်ႉတုမ်ႇ။
* **INTERNET:** (Optional) သင်ၸဝ်ႈၵဝ်ႇ ၶႂ်ႈႁႂ်ႈၵူၼ်းၸႂ်ႉႁူႉလွင်ႈ Keyboard Update ဢမ်ႇၼၼ် သူင်ႇ Feedback ၶႃႈ။

---

### **The Code Structure (ႁၢင်ႈၾၢင် Code)**

မႄးတႅမ်ႈၸွမ်းၼင်ႇ Code တီႈတႂ်ႈၼႆႉ ၼႂ်းၾၢႆႇ `AndroidManifest.xml` ၸဝ်ႈၵဝ်ႇၶႃႈ:

```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="it.saimao.tmkkeyboardpro">

    <uses-permission android:name="android.permission.VIBRATE" />

    <application
        android:allowBackup="true"
        android:icon="@mipmap/ic_launcher"
        android:label="@string/app_name"
        android:theme="@style/Theme.TMKKeyboardPro">

        <service
            android:name=".ShanKeyboardService"
            android:label="TMK Keyboard Pro"
            android:permission="android.permission.BIND_INPUT_METHOD"
            android:exported="true">
            
            <intent-filter>
                <action android:name="android.view.InputMethod" />
            </intent-filter>

            <meta-data
                android:name="android.view.im"
                android:resource="@xml/method" />
        </service>

        <activity
            android:name=".SettingsActivity"
            android:exported="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>

    </application>

</manifest>
```

---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **BIND_INPUT_METHOD:** ပဵၼ် Security ဢၼ်လၢတ်ႈဝႃႈ Keyboard ၼႆႉ မီး System ၵွၺ်း ဢၼ်ၸတ်းၵၢၼ်လႆႈ။
* **Action InputMethod:** ပဵၼ်ၵၢၼ် လၢတ်ႈၼႄ System ဝႃႈ "ၵဝ်ပဵၼ် Keyboard ဢိူဝ်ႈ"။
* **Meta-data:** ပဵၼ်ၵၢၼ်ၵွင်ႉၸူး `method.xml` တႃႇပိုၼ်ၽၢဝ်ႇ Subtypes (Languages) ၶႃႈ။

---