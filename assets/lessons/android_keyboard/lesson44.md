## **Lesson 44: Play Console & Publishing**

### **1. Why do we need this?**

* **Global Reach:** ႁဵတ်းႁႂ်ႈၵူၼ်းတႆး (လႄႈ ၵူၼ်းတင်းလုမ်ႈၾႃႉ) လူတ်ႇၸႂ်ႉ **TMK Keyboard Pro** လႆႈငၢႆႈငၢႆႈလုၵ်ႉတီႈ Google Play Store။
* **Automatic Updates:** မိူဝ်ႈၸဝ်ႈၵဝ်ႇမႄး Code မႂ်ႇ၊ System တေသူင်ႇ Update ပၼ် User ႁင်းၵူၺ်း။
* **Professional Branding:** ၵၢၼ်မီး App ၼိူဝ် Play Store တေႁဵတ်းႁႂ်ႈၸုမ်း **Thung Mao Kham** မီးၸိုဝ်ႈသဵင် လႄႈ တူၺ်း "Pro" တႄႉတႄႉၶႃႈ။

---

### **2. Preparing the Production Release**

ၵွၼ်ႇတေတၢင်ႇ၊ ႁဝ်းလူဝ်ႇသၢင်ႈၾၢႆႇဢၼ် Google တုၵ်းယွၼ်း (Android App Bundle) ၶႃႈ။

#### **A. Create a Signed App Bundle (.aab)**
ယႃႇသူင်ႇ .apk ၶိုၼ်ႈၵႂႃႇၶႃႈ။ ႁဝ်းလူဝ်ႇၸႂ်ႉ **.aab** ၼင်ႇႁိုဝ် Google တေၸတ်းၵၢၼ် Size App ႁႂ်ႈလဵၵ်ႉသုတ်းပၼ် User ၶႃႈ။

1. ၵႂႃႇတီႈ **Build > Generate Signed Bundle / APK**။
2. လိူၵ်ႈ **Android App Bundle**။
3. သၢင်ႈ **KeyStore** (သိမ်း Password ဝႆႉလီလီ၊ သင်လိုမ်း Password ၼႆႉ ၸဝ်ႈၵဝ်ႇတေဢမ်ႇၸၢင်ႈ Update App လႆႈထႅင်ႈၶႃႈ!)။
4. လိူၵ်ႈ Build Variant ပဵၼ် **release**။

---

### **3. Setting Up the Play Console Listing**

ၼႂ်း Google Play Console၊ ႁဝ်းလူဝ်ႇတႅမ်ႈလွင်ႈတၢင်း (Marketing Data) ႁႂ်ႈၵူၼ်းၶႂ်ႈလူတ်ႇၸႂ်ႉၶႃႈ။

* **App Title:** TMK Keyboard Pro (လိၵ်ႈတႆး)
* **Short Description:** Keyboard တႆး ဢၼ်ဝႆးသေပိူၼ်ႈ လႄႈ မီး Themes ႁၢင်ႈလီ။
* **Full Description:** သပ်းလႅင်းၼႄ Features (Emoji, Shan/Myanmar support, Customization)။
* **Graphic Assets:**
    * **App Icon:** 512 x 512 px (Logo ၸဝ်ႈၵဝ်ႇ)။
    * **Feature Graphic:** 1024 x 500 px (ႁၢင်ႈပူတ်ႉသ်တႃႇ တွၼ်ႈတႃႇၼႄၼိူဝ် Store)။
    * **Screenshots:** ဢဝ်ႁၢင်ႈ Keyboard ဢၼ်မႄး Themes ဝႆႉႁၢင်ႈလီၼၼ်ႉမႃးၼႄၶႃႈ။



---

### **4. Privacy Policy & Compliance**

ယွၼ်ႉႁဝ်းပဵၼ် **Keyboard App**, Google တေၸႅတ်ႈတူၺ်းလွင်ႈ Safety ၼၵ်းၼၵ်းၶႃႈ။

* **Privacy Policy URL:** ၸဝ်ႈၵဝ်ႇလူဝ်ႇမီး Website ဢွၼ်ႇဢၼ်ၼိုင်ႈ (ၸၢင်ႈၸႂ်ႉ GitHub Pages ဢမ်ႇၼၼ် Notion) တွၼ်ႈတႃႇလၢတ်ႈၼႄဝႃႈ *"We do not collect or store your personal typing data."*
* **Data Safety Section:** ၼႂ်း Console၊ လူဝ်ႇလၢတ်ႈၼႄဝႃႈ App ႁဝ်းဢမ်ႇလႆႈၵဵပ်း Data သင် (Encryption in transit, No data shared) ၶႃႈ။

---

### **5. Launching to Production**

မိူဝ်ႈၵူႈလွင်ႈယဝ်ႉတူဝ်ႈယဝ်ႉ:

1. ၵႂႃႇတီႈ **Production > Create new release**။
2. Upload ၾၢႆႇ **.aab** ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉၶိုၼ်ႈၵႂႃႇ။
3. ၼဵၵ်ႉ **Review release** လႄႈ **Start rollout to Production**။
4. **Wait for Review:** Google တေၸႅတ်ႈတူၺ်း App ၸဝ်ႈၵဝ်ႇ (ၵႆႉလႆႈပႂ်ႉ 1 - 3 ဝၼ်း) သေ ၸင်ႇတေပိုၼ်ႈၽႄ (Live) ၶႃႈယဝ်ႉ!



---

### **ႁူဝ်ႁုပ်ႈ (Summary)**

* **KeyStore Safety:** သိမ်း KeyStore လႄႈ Passwords ဝႆႉလီလီ ယႃႇပေႁႂ်ႈမၼ်းႁၢႆ။
* **Stunning Visuals:** ႁၢင်ႈ Screenshots ဢၼ်ႁၢင်ႈလီၼၼ်ႉ တေၸွႆႈႁႂ်ႈၵူၼ်းလူတ်ႇၸႂ်ႉၼမ်။
* **Privacy First:** မၼ်ႈၸႂ်ဝႃႈ Privacy Policy ၸဝ်ႈၵဝ်ႇ သပ်းလႅင်းလီလီ။

---
