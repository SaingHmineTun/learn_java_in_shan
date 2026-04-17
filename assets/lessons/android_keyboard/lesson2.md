## **Lesson 2: Manifest Magic: System Registration, Permissions & Intent Filters**

---

### **Overview (ႁူဝ်ၶေႃႈ)**
မိူဝ်ႈႁဝ်းတႅမ်ႈ Code ၼႂ်း Kotlin လႄႈ XML ဝႆႉယဝ်ႉၵေႃႈ Android System တေဢမ်ႇပႆႇႁူႉဝႃႈ ဢႅပ်ႉႁဝ်းၼႆႉ ပဵၼ် "Keyboard" ၶႃႈ။ 
ႁဝ်းတေလႆႈၸႂ်ႉ **`AndroidManifest.xml`** တႃႇပိုၼ်ၽၢဝ်ႇ (Register) ႁႂ်ႈ System ႁူႉၸၵ်း Service ႁဝ်း၊ ယွၼ်းၶႂၢင်ႉ (Permissions) တႃႇသၼ်ႇလႆႈ၊ လႄႈ ၵွင်ႉၸူးၾၢႆႇပိုၼ်ၽၢဝ်ႇလိၵ်ႈ (Subtypes) ၶႃႈယဝ်ႉ။

---

### **1. Keyboard Service Registration**

ၼႂ်း Tag `<application>` ၼၼ်ႉ ႁဝ်းတေလႆႈပိုၼ်ၽၢဝ်ႇ Service ႁဝ်းၶႃႈ။ လွင်ႈယႂ်ႇသေပိူၼ်ႈမီး 3 ဢၼ်:
1.  **Permission:** `android.permission.BIND_INPUT_METHOD` (တဵၵ်းၸႂ်ႉ Security ႁႂ်ႈ System ၵွၺ်းၸႂ်ႉလႆႈ)။
2.  **Intent Filter:** Action `android.view.InputMethod` (တႃႇလၢတ်ႈဝႃႈ ၵဝ်ပဵၼ် Keyboard ဢိူဝ်ႈ)။
3.  **Meta-data:** ၸီႉၸူးၾၢႆႇ `method.xml` (ဢၼ်ႁဝ်းတေတႅမ်ႈၼႂ်း Lesson 3)။

---

### **2. Permissions (ၵၢၼ်ယွၼ်းၶႂၢင်ႉ)**

တွၼ်ႈတႃႇ **TMK Keyboard Pro** ႁဝ်းတေမီး Features ၼင်ႇလွင်ႈသၼ်ႇ (Vibration) ၼၼ်ႉ ႁဝ်းတေလႆႈသႂ်ႇ Permission ဝႆႉတီႈၼိူဝ် Tag `<application>` ၶႃႈ။

* **`VIBRATE`**: တႃႇႁႂ်ႈတုမ်ႇၼဵၵ်ႉသၼ်ႇလႆႈ မိူဝ်ႈၼိပ်ႉၺႃး (Haptic Feedback)။



---

### **The Code Structure (ႁၢင်ႈၾၢင် Code)**

မႄးတႅမ်ႈၸွမ်းၼင်ႇ Code တီႈတႂ်ႈၼႆႉ ၼႂ်းၾၢႆႇ **`AndroidManifest.xml`** ၸဝ်ႈၵဝ်ႇၶႃႈ:

```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="it.saimao.tmkkeyboardpro">

    <uses-permission android:name="android.permission.VIBRATE" />

    <application
        android:allowBackup="true"
        android:icon="@mipmap/ic_launcher"
        android:label="@string/app_name"
        android:roundIcon="@mipmap/ic_launcher_round"
        android:supportsRtl="true"
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

* **BIND_INPUT_METHOD**: ႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈ App တၢင်ႇဢၼ်မႃးၸႂ်ႉ Keyboard Service ႁဝ်းလႆႈႁင်းၵူၺ်း။
* **Intent-filter**: ပဵၼ်ၵၢၼ်ပိုၼ်ၽၢဝ်ႇတူဝ် တီႈၼႂ်း System ႁႂ်ႈႁဝ်းဢွၵ်ႇမႃးၼႂ်းသဵၼ်ႈမၢႆ Keyboard။
* **Meta-data**: လွင်ႈယႂ်ႇသေပိူၼ်ႈ ၵွပ်ႈမၼ်းတေလၢတ်ႈၼႄ System ဝႃႈ Keyboard ႁဝ်းမီးလိၵ်ႈဢင်းၵိတ်ႉ၊ မၢၼ်ႈ၊ လႄႈ တႆး။

---