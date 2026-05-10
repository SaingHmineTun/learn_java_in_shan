

## **Module 9 | Lesson 72: TestFlight: Beta Testing**

### **1. TestFlight ပဵၼ်သင်?**

မၼ်းပဵၼ် App ၼိူဝ် iPhone ဢၼ် User လူဝ်ႇလႆႈ Install ယဝ်ႉ။ 
မိူဝ်ႈၸဝ်ႈၵဝ်ႇၽိတ်ႈမွၵ်ႇ (Invite) ၵႂႃႇၼၼ်ႉ ၶဝ်တေၸၢင်ႈ Download App ၸဝ်ႈၵဝ်ႇမႃးၸႂ်ႉလႆႈ မိူၼ်ၼင်ႇ Download လုၵ်ႉတီႈ App Store တေႉတေႉယဝ်ႉ။

### **2. Internal vs External Testers**

* **Internal Testers:** ပဵၼ်ၵူၼ်းၼႂ်းၸုမ်း (Team Members) ဢၼ်မီး Access ၶဝ်ႈၸူး App Store Connect ၸဝ်ႈၵဝ်ႇ။ ၸၢင်ႈ Test လႆႈၵမ်းလဵဝ် မိူဝ်ႈ Upload Build ယဝ်ႉ။
* **External Testers:** ပဵၼ်ၵူၼ်းၼွၵ်ႈ (မိူၼ်ၼင်ႇ ဢူၺ်းၵေႃႉ ဢမ်ႇၼၼ် Users တေႉတေႉ)။
* **မၢႆတွင်း:** တႃႇတေသူင်ႇပၼ် External Testers ၼၼ်ႉ App ၸဝ်ႈၵဝ်ႇလူဝ်ႇလႆႈမီး "Beta App Review" ယဝ်ႉ။



---

### **3. ၶၵ်ႉတွၼ်ႈၵၢၼ်သူင်ႇ App ၶဝ်ႈ TestFlight**

1. **Archive & Upload:**
* ႁဵတ်း Archive ၼႂ်း Xcode (မိူၼ်တွၼ်ႈ 69)။
* ၼဵၵ်းပုမ်ႇ **Distribute App** သေလိူၵ်ႈ **App Store Connect** -> **Upload**။


2. **App Store Connect:**
* ၶဝ်ႈၵႂႃႇတီႈ [appstoreconnect.apple.com](https://appstoreconnect.apple.com)။
* လိူၵ်ႈ App ၸဝ်ႈၵဝ်ႇ -> ၵႂႃႇတီႈ Tab **TestFlight**။


3. **Add Testers:**
* ၼဵၵ်းပုမ်ႇ **(+)** တီႈၽၢႆႇသၢႆႉ (External Groups)။
* တင်ႈၸိုဝ်ႈ Group (မိူၼ်ၼင်ႇ: "TMK Beta Testers")။
* ထႅမ် Email ၶွင်ၵူၼ်းဢၼ်ၸဝ်ႈၵဝ်ႇၶႂ်ႈႁႂ်ႈ Test။



---

### **4. ၵၢၼ်ႁပ်ႉ Feedback (Feedback Management)**

မိူဝ်ႈ Testers ၸႂ်ႉ App ၸဝ်ႈၵဝ်ႇယူႇၼၼ်ႉ သင်ၶဝ်ႁၼ် Bug ဢမ်ႇၼၼ် ၶႂ်ႈပၼ်တၢင်းႁၼ်ထိုင်:

* ၶဝ်ၸၢင်ႈ **Take Screenshot** သေသူင်ႇ Feedback ၼႂ်း TestFlight လႆႈၵမ်းလဵဝ်။
* ၶေႃႈမုၼ်းၼၼ်ႉ (လႄႈ ႁၢင်ႈ Screenshot) တေမႃးဢွၵ်ႇၼႂ်း Dashboard ၶွင်ၸဝ်ႈၵဝ်ႇ ၼႂ်း App Store Connect ယဝ်ႉ။
* သင် App "Crash" (တၢႆၵႂႃႇၵမ်းလဵဝ်) ၼႆ TestFlight တေၵဵပ်းၶေႃႈမုၼ်း (Crash Logs) သူင်ႇမႃးပၼ်ၸဝ်ႈၵဝ်ႇ ႁႂ်ႈမႄးလႆႈငၢႆႈငၢႆႈယဝ်ႉ။

---

### **Summary **

| Feature | Advantage (Shan)                                                                                 |
| --- |--------------------------------------------------------------------------------------------------|
| **No Cables** | Testers ဢမ်ႇလူဝ်ႇၵွင်ႉသၢႆၸူး Mac ၸဝ်ႈၵဝ်ႇ။                                                       |
| **Public Link** | ၸၢင်ႈသၢင်ႈ Link သေဢဝ်ၵႂႃႇ Post ၼိူဝ် Facebook ႁႂ်ႈၵူၼ်းၼမ်ၼမ်မႃးၸွႆႈ Test။                       |
| **Build Expiry** | Build ၼိုင်ႈပွၵ်ႈ တေၸႂ်ႉလႆႈ **90 ဝၼ်း**။ ပေႃးပူၼ်ႉယၢမ်းၼႆ ၸဝ်ႈၵဝ်ႇလူဝ်ႇ Upload Build မႂ်ႇၶိုၼ်း။ |
| **Crash Reports** | ၸွႆႈႁႂ်ႈႁူႉဝႃႈ App ၵႂႃႇတၢႆတီႈလႂ် တႅတ်ႈတႅတ်ႈတေႃးတေႃး။                                             |

---