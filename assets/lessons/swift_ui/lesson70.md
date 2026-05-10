
## **Module 9 | Lesson 70: Certificates, Identifiers, and Profiles**

တႃႇတေသူင်ႇ App ၶိုၼ်ႈ Store လႆႈၼၼ်ႉ Apple လူဝ်ႇလႆႈမၼ်ႈၸႂ်ဝႃႈ "App ၼႆႉမႃးတီႈၸဝ်ႈၵဝ်ႇတေႉ" လႄႈ "မၼ်းမီးလွင်ႈႁူမ်ႇလူမ်ႈ" ၼႆယဝ်ႉ။

### **1. Certificates**

**Certificates** ပဵၼ်မိူၼ် "ဝႂ်ႁေႃႈၵႃး" ဢမ်ႇၼၼ် Digital ID ၶွင်ၸဝ်ႈၵဝ်ႇယဝ်ႉ။

* **Purpose:** မၼ်းၸွႆႈလၢတ်ႈၼႄဝႃႈ ၸဝ်ႈၵဝ်ႇပဵၼ် Developer ဢၼ် Apple ႁူႉၸၵ်း ၼႆယဝ်ႉ။
* **Types:**
* *Development Certificate:* တႃႇ Run App ၼိူဝ်ၶိူင်ႈတေႉ မိူဝ်ႈတိုၵ်ႉတႅမ်ႈ Code။
* *Distribution Certificate:* တႃႇသူင်ႇ App ၶိုၼ်ႈ App Store ဢမ်ႇၼၼ် TestFlight။



### **2. Identifiers (App ID)**

**Identifiers** ပဵၼ်မိူၼ် "ပၢႆႉမၢႆၾၢင်ၵႃး" ၶွင် App ၸဝ်ႈၵဝ်ႇယဝ်ႉ။

* **Purpose:** မၼ်းမၵ်းမၼ်ႈဝႃႈ App ၼႆႉပဵၼ်ဢၼ်လႂ်တေႉတေႉ (Unique)။
* **Bundle ID:** ၸဝ်ႈၵဝ်ႇတေလႆႈသႂ်ႇၸိုဝ်ႈမိူၼ်ၼင်ႇ `com.tmk.taskmanager`။ ၸိုဝ်ႈၼႆႉတေဢမ်ႇလႆႈမိူၼ် App တၢင်ႇဢၼ်လႃးလႃး။

### **3. Provisioning Profiles (တူဝ်ႁူမ်ႈၸတ်းၵၢၼ်)**

**Provisioning Profile** ပဵၼ်မိူၼ် "ဝႂ်မွပ်ႇဢႃႇၼႃႇ" ဢၼ်ႁူမ်ႈဢဝ် Certificates လႄႈ Identifiers မႃးဝႆႉၸွမ်းၵၼ်ယဝ်ႉ။

* **Purpose:** မၼ်းတေၵွင်ႉ Certificates, App ID, လႄႈ Device ID ၶဝ်ႈၸွမ်းၵၼ် တႃႇသင်ႇဝႃႈ "App ဢၼ်ၼႆႉ (ID) ဢၼ်တႅမ်ႈလူၺ်ႈ Developer ၵေႃႉၼႆႉ (Certificate) တေၸၢင်ႈလႅၼ်ႈလႆႈၼိူဝ် iPhone ၶိူင်ႈၼႆႉ" ၼႆယဝ်ႉ။

---

### **How to Manage Them (လၢႆးၸတ်းၵၢၼ်)**

ၼႂ်း Xcode ပၢၼ်မႂ်ႇၼႆႉ ႁဝ်းဢမ်ႇလူဝ်ႇၵႂႃႇမႄးၼႂ်း Website Apple Developer ၼမ်ၼမ်မိူၼ်မိူဝ်ႈပူၼ်ႉမႃးၼၼ်ႉယဝ်ႉ။ 
Xcode မီးပိူင် **"Automatically manage signing"** ဢၼ်ၸွႆႈႁဵတ်းပၼ်ၵူႈလွင်ႈယဝ်ႉ:

1. ၵႂႃႇတီႈ **Project Settings** -> **Signing & Capabilities**။
2. Check လွၵ်း **"Automatically manage signing"**။
3. လိူၵ်ႈ **Team** ၶွင်ၸဝ်ႈၵဝ်ႇ။
4. Xcode တေၵႂႃႇသၢင်ႈ Certificates လႄႈ Profiles ပၼ်ၸဝ်ႈၵဝ်ႇၼိူဝ် Server Apple ႁင်းမၼ်းယဝ်ႉ။

---

### **Summary (သူးပ်းႁူဝ်တွၼ်ႈႁဵၼ်း)**

| Term | What it is (Shan) | Analogy |
| --- | --- | --- |
| **Certificate** | ဝႂ်ၸႅင်ႈတူဝ် Developer။ | ဝႂ်ႁေႃႈၵႃး (License) |
| **Identifier** | ၸိုဝ်ႈမၢႆၾၢင် App (Bundle ID)။ | ပၢႆႉမၢႆၾၢင်ၵႃး (Plate Number) |
| **Profile** | ဝႂ်ဢၼ်ႁူမ်ႈ Certificates လႄႈ ID။ | ဝႂ်တၢင်ႇၵႄႈၵႃး (Registration) |

---