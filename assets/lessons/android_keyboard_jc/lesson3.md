

## Lesson 3: Setting Up the Manifest and Security Configurations

ဝၢႆးသေ ႁဝ်းတႅမ်ႈ Code တွၼ်ႈ `InputMethodService` ယဝ်ႉသေတႃႉ Android System တေဢမ်ႇပႆႇႁူႉဝႃႈ ဢႅပ်ႉၼႆႉပဵၼ် Keyboard ယဝ်ႉ။ 
ႁဝ်းလူဝ်ႇလႆႈၵႂႃႇ ပိုၼ်ႈၶၢဝ်ႇ (Declare) ဝႆႉ တီႈၼႂ်း ၾၢႆႇ `AndroidManifest.xml` လႄႈ လူဝ်ႇလႆႈသႂ်ႇ လွင်ႈႁႄႉၵင်ႈ (Security) ႁႂ်ႈမၼ်းထုၵ်ႇမႅၼ်ႈၸွမ်း ပိူင် System ယဝ်ႉ။

---

### 1. ၵၢၼ်ပိုၼ်ႈၶၢဝ်ႇ Service ၼႂ်း `AndroidManifest.xml`

ႁဝ်းလူဝ်ႇလႆႈဢဝ် `MaoKeyboardService` ၵႂႃႇသႂ်ႇဝႆႉ ၼႂ်းတွၼ်ႈ `<application>` ၶွင် Manifest ၼင်ႇၼႆၶႃႈ:

```xml
<service
    android:name=".MaoKeyboardService"
    android:label="@string/keyboard_name"
    android:permission="android.permission.BIND_INPUT_METHOD"
    android:exported="true">
    <intent-filter>
        <action android:name="android.view.InputMethod" />
    </intent-filter>

    <meta-data
        android:name="android.view.im"
        android:resource="@xml/method" />
</service>

```

#### ၶေႃႈသႅၼ်းၸိၼႄ (Breakdown) တွၼ်ႈပိူင်လူင်:

* **`android:permission="android.permission.BIND_INPUT_METHOD"`**
* **လွင်ႈတၢင်းမၼ်း:** ၼႆႉပဵၼ် **Security ဢၼ် ၸၼ်ႉသုင်သုတ်း** ယဝ်ႉ။ မၼ်းပဵၼ် ၵၢၼ်မၼ်ႈၸႂ်ဝႃႈ **System ၵူၺ်း** ဢၼ်တေမီးသုၼ်ႇ မႃးၵွင်ႉၸူး (Bind) တင်း Keyboard Service ႁဝ်းလႆႈ။ ဢႅပ်ႉတၢင်ႇဢၼ် (Malicious Apps) တေဢမ်ႇလႆႈၵွင်ႉ လႄႈ တေဢမ်ႇလႆႈဢဝ် ၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ Password) ဢၼ် User ၼဵၵ်း ၼႂ်း Keyboard ႁဝ်းလႆႈ ၼႆယဝ်ႉ။


* **`android:exported="true"`**
* **လွင်ႈတၢင်းမၼ်း:** ပၼ်သုၼ်ႇ ႁႂ်ႈ Operating System (OS) ၽၢႆႇၼွၵ်ႈ ၸႂ်ႉတိုဝ်း လႄႈ ႁွင်ႉပိုတ်ႇ Service ဢၼ်ၼႆႉ လႆႈ။


* **`<intent-filter>` -> `android.view.InputMethod**`
* **လွင်ႈတၢင်းမၼ်း:** ၼႆႉပဵၼ် ၵၢၼ်လၢတ်ႈၼႄ System ဝႃႈ *"Service ဢၼ်ၼႆႉ မၼ်းဢမ်ႇၸႂ်ႈ Background Service သေတႃႉ မၼ်းပဵၼ် Input Method (Keyboard) ဢိူဝ်ႈ"* ၼႆယဝ်ႉ။


* **`<meta-data>` -> `android.view.im**`
* **လွင်ႈတၢင်းမၼ်း:** ပဵၼ်ၵၢၼ် ၸီႉသဵၼ်ႈတၢင်းၵႂႃႇၸူး ၾၢႆႇ XML Config (ဢၼ်ႁဝ်းတေလႆႈသၢင်ႈၼႂ်း Lesson 4) တႃႇပိုတ်ႇၼႄ လွင်ႈ Properties ၶွင် Keyboard ၼႂ်း System Settings ယဝ်ႉ။



---

### 2. လွင်ႈႁႄႉၵင်ႈ Security ဢၼ်ထုၵ်ႇလီႁူႉဝႆႉ (Security Best Practices)

ယွၼ်ႉဝႃႈ Keyboard မၼ်းပဵၼ် Component ဢၼ်မီးသုၼ်ႇ ႁူႉႁၼ်လႆႈ ၵူႈတူဝ်လိၵ်ႈ (Keystrokes) ဢၼ် User တႅမ်ႈ (ပႃးတင်း ၶေႃႈမုၼ်း ငိုၼ်းၶဝ်ႈဢွၵ်ႇ လႄႈ Passwords) ၼႆလႄႈ မၼ်းမီး လွင်ႈႁူမ်ႇလူမ်ႈ Security ၼင်ႇၼႆၶႃႈ:

1. **ဢမ်ႇလူဝ်ႇ `INTERNET` Permission:** သင်ဝႃႈ Keyboard ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ ၵၢၼ်သူင်ႇၶေႃႈမုၼ်းၶဝ်ႈ Cloud ၼႆ ယႃႇသႂ်ႇ `android.permission.INTERNET` ဝႆႉၼႂ်း Manifest လႄႈ။ မၼ်းတေႁဵတ်းႁႂ်ႈ User မီးလွင်ႈမၼ်ႈၸႂ်ဝႃႈ ၶေႃႈမုၼ်းၶဝ် တေဢမ်ႇထုၵ်ႇ လႅၼ်ႈဢွၵ်ႇၵႂႃႇ တၢင်ႇတီႈ ၼႆယဝ်ႉ။
2. **လွင်ႈၸႂ်ႉတိုဝ်း Encryption:** သင်ဝႃႈ Keyboard ႁဝ်းမီးလွင်ႈၵဵပ်း ၶေႃႈမုၼ်း ၽႃႇသႃႇ (User Dictionary) ၼႆ ၶေႃႈမုၼ်းၸိူဝ်းၼၼ်ႉ လူဝ်ႇလႆႈထုၵ်ႇၵဵပ်းဝႆႉ ၼႂ်း Local Storage ဢၼ်ႁႄႉၵင်ႈဝႆႉ (Encrypted SharedPreferences / Room Database) ၵူၺ်း။

---

### 3. မၢႆတွင်း (Core Takeaways)

* သင်ဝႃႈ ဢမ်ႇသႂ်ႇ permission `BIND_INPUT_METHOD` ဝႆႉၼႆ Android System တေလႅၼ်ႈမႃး ပိၵ်ႉပႅတ်ႈ (Ignore) Keyboard Service ႁဝ်း လႄႈ တေဢမ်ႇပိုတ်ႇၼႄပၼ် ၼႂ်းသဵၼ်ႈမၢႆ Keyboard Settings ယဝ်ႉ။
* ၵၢၼ်သႂ်ႇ `intent-filter` လႄႈ `meta-data` မၼ်းပဵၼ် ၵၢၼ်ၵွင်ႉသၢႆ သိုပ်ႇပၼ် ၼႂ်းၵႄႈ Code Service တင်း Android System framework ယဝ်ႉ။

---