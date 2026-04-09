# Lesson 309: "Publishing for Android Distribution"

### 1. .apk vs .aab (မၼ်းပႅၵ်ႇၵၼ်ၸိူင်ႉႁိုဝ်?)
* **.apk (Android Package):** ပဵၼ်ၾၢႆႇ App ဢၼ်ႁဝ်းၸၢင်ႈသူင်ႇပၼ်ၵၼ်တၢင်း Messenger ဢမ်ႇၼၼ် Bluetooth သေ Install လႆႈၵမ်းလဵဝ်ၶႃႈ။
* **.aab (Android App Bundle):** ပဵၼ်ၾၢႆႇသႅၼ်းမႂ်ႇ ဢၼ် **Google Play Store** ယွၼ်းဝႆႉၶႃႈ။ မၼ်းတေၸွႆႈလူတ်းတၢင်းယႂ်ႇ App ႁႂ်ႈမႅၼ်ႈၸွမ်းၾူၼ်းလုၵ်ႈၼၼ်ႉ တႃႇႁႂ်ႈ Download ဝႆးၶႃႈ။

### 2. ၸၼ်ႉၵၢၼ်ထုတ်ႇဢွၵ်ႇ (Publishing Steps)

**ၸၼ်ႉ 1: Change to Release Mode**
ၼႂ်း Visual Studio ၼၼ်ႉ လႅၵ်ႈပိၼ်ႇပၼ် `Debug` ႁႂ်ႈပဵၼ် **`Release`** ၶႃႈ။ ၼႆႉတေႁဵတ်းႁႂ်ႈ App ႁဝ်းလႅၼ်ႈဝႆးလိူဝ်ၵဝ်ႇ လႄႈ လူတ်းတၢင်းယႂ်ႇ Code ဢၼ်ဢမ်ႇလူဝ်ႇၸႂ်ႉဢွၵ်ႇပႅတ်ႈၶႃႈ။

**ၸၼ်ႉ 2: Key Store (ၵၢၼ်သၢင်ႈလၢႆးသႅၼ်ႇ)**
ၵွၼ်ႇတေထုတ်ႇဢွၵ်ႇ App ၼၼ်ႉ ႁဝ်းလူဝ်ႇမီး "သေႃးလပ်ႉ" (Private Key) တွၼ်ႈတႃႇလူင်း (Sign) ဝႃႈ App ၼႆႉပဵၼ်ၶွင်ႁဝ်းတႄႉၼႆၶႃႈ။
* ၵႂႃႇတီႈ **Project > Publish...**
* သၢင်ႈ **Keystore File** မႂ်ႇသေ သိမ်း Password ဝႆႉလီလီ ၶႃႈ (သင် Password ႁၢႆၼႆ ႁဝ်းတေ Update App ၼၼ်ႉ ၼိူဝ် Play Store ဢမ်ႇလႆႈထႅင်ႈၶႃႈ)။



**ၸၼ်ႉ 3: Archive & Distribute**
1.  ၼဵၵ်း **Archive** တွၼ်ႈတႃႇႁႂ်ႈ Visual Studio "တူမ်ႈ" Code ႁဝ်းတေႃႇပေႃးယဝ်ႉ။
2.  မိူဝ်ႈယဝ်ႉယဝ်ႉၼၼ်ႉ လိူၵ်ႈ **Distribute** သေလိူၵ်ႈလၢႆး 2 ဢၼ်ၼႆႉၶႃႈ:
    * **Ad-hoc:** တွၼ်ႈတႃႇလႆႈၾၢႆႇ `.apk` တႃႇသူင်ႇပၼ်ပိူၼ်ႈ ႁႂ်ႈၸၢမ်းတူၺ်းၶႃႈ။
    * **Google Play:** တွၼ်ႈတႃႇတၢင်ႇၶိုၼ်ႈၼိူဝ် Play Store ၵမ်းလဵဝ်ၶႃႈ (လူဝ်ႇမီး Developer Account)။

---

### 3. လွင်ႈလမ်ႇလွင်ႈဢၼ်လူဝ်ႇၵူတ်ႇထတ်း (Checklist)
* **Package Name:** ၸိုဝ်ႈ ID ၶွင် App (မိူၼ်ၼင်ႇ `it.saimao.shanlearn`)။
* **Version Number:** မၢႆ Version (မိူၼ်ၼင်ႇ `1.0.0`)။
* **App Icon:** ၼႄႉၸႂ်ဝႃႈ လိူၵ်ႈႁၢင်ႈ Icon ဢၼ်ႁၢင်ႈလီဝႆႉယဝ်ႉ။
* **Permissions:** ပိၵ်ႉသုၼ်ႇၸႂ်ႉ (Permissions) ဢၼ်ဢမ်ႇလူဝ်ႇၸႂ်ႉ တွၼ်ႈတႃႇလွင်ႈလွတ်ႈၽေးၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Signing:** ၵၢၼ်သႂ်ႇလၢႆးမိုဝ်း Digital တွၼ်ႈတႃႇၼႄႉၼႃဝႃႈ ၽႂ်ပဵၼ်ၸဝ်ႈၶွင် App။
* **Keystore:** ၾၢႆႇဢၼ်သိမ်း "သေႃးလပ်ႉ" တွၼ်ႈတႃႇလူင်း App။
* **Release Build:** ၵၢၼ်သၢင်ႈ App တွၼ်ႈတႃႇၸႂ်ႉတႄႉ (ဢမ်ႇမီး Code တွၼ်ႈတႃႇ Debug)။
* **AAB (Android App Bundle):** ၾၢႆႇ Standard မႂ်ႇ တွၼ်ႈတႃႇတၢင်ႇၶိုၼ်ႈၼိူဝ် Google Play။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈလႆႈၾၢႆႇ App တွၼ်ႈတႃႇသူင်ႇပၼ်ၼႂ်း LINE ဢမ်ႇၼၼ် Telegram ႁႂ်ႈပိူၼ်ႈ Install လႆႈငၢႆႈငၢႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇထုတ်ႇဢွၵ်ႇပဵၼ်ၾၢႆႇသႅၼ်းလႂ်? (`.apk` ႁႃႉ? ဢမ်ႇၼၼ် `.aab`?)
2. ႁဵတ်းသင် **Keystore Password** ၸင်ႇလမ်ႇလွင်ႈၼႃႇ တွၼ်ႈတႃႇ Developer?