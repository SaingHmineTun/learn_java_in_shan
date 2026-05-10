

## **Module 9 | Lesson 69: Creating the Installable File (.ipa)**

တႃႇတေလႆႈၾၢႆႇ .ipa မႃးၼၼ်ႉ ႁဝ်းတေလႆႈၵႂႃႇၸွမ်း 3 ၶၵ်ႉတွၼ်ႈၼႆႉယဝ်ႉ:

### **1. Preparation (ၵၢၼ်ႁႅၼ်းတူဝ်)**

ဢွၼ်တၢင်းသုတ်ႉ၊ ၸဝ်ႈၵဝ်ႇလူဝ်ႇမၵ်းမၼ်ႈ **Signing & Capabilities** ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈယဝ်ႉ။

* ၵႂႃႇတီႈ **Project Settings** -> **Signing & Capabilities**။
* လိူၵ်ႈ **Team** ၶွင်ၸဝ်ႈၵဝ်ႇ (လူဝ်ႇမီး Apple ID ဢၼ် Register ပဵၼ် Developer ဝႆႉ)။
* တူၺ်းဝႃႈ **Bundle Identifier** ၼၼ်ႉ ပဵၼ် (Unique) ဝႆႉ (တေဢမ်ႇလႆႈမိူၼ်ၵၼ်တင်း ID ၶွင်ပိူၼ်ႈလႃးလႃး)။

### **2. Archiving (ၵၢၼ်ၶဝ်ႈႁူင်း)**

Archiving ပဵၼ်ၵၢၼ် Build App ၼႂ်း "Release Mode" တႃႇတေဢဝ်ၵႂႃႇပိုတ်ႇတူဝ်ယဝ်ႉ။

1. တီႈ Toolbar (ၼိူဝ်သုတ်း) ၼၼ်ႉ လႅၵ်ႈ Device ႁႂ်ႈပဵၼ် **"Any iOS Device (arm64)"**။
2. ၵႂႃႇတီႈ Menu Bar -> **Product** -> **Archive**။
3. Xcode တေတႄႇ Build (ၸႂ်ႉၶိင်ႇယၢမ်း 1-5 မိၼတ်ႉ ယူႇၼိူဝ် Project ယႂ်ႇ/လဵၵ်ႉ)။

### **3. Exporting the .ipa (ၵၢၼ်သူင်ႇၾၢႆႇဢွၵ်ႇ)**

မိူဝ်ႈ Archive ယဝ်ႉၼၼ်ႉ ၼႃႈၸေႃး **Organizer** တေပိုတ်ႇဢွၵ်ႇမႃးယဝ်ႉ:

1. ၼဵၵ်းပုမ်ႇ **Distribute App** (ပုမ်ႇသီသွမ်ႇယႂ်ႇယႂ်ႇၽၢႆႇၶႂႃ)။
2. လိူၵ်ႈ **Custom** -> **Next**။
3. လိူၵ်ႈ Method:
* **Ad Hoc:** တႃႇသူင်ႇပၼ် Testers (လူဝ်ႇ UDID)။
* **Development:** တႃႇ Install သႂ်ႇၶိူင်ႈၸဝ်ႈၵဝ်ႇ ဢမ်ႇၼၼ် ၶိူင်ႈ Developer ၼႂ်း Team။


4. ၼႂ်းတွၼ်ႈ **App Thinning**၊ လိူၵ်ႈ "None" (သင်ၶႂ်ႈလႆႈၾၢႆႇ .ipa ဢၼ်ၵႂႃႇ Install လႆႈၵူႈၶိူင်ႈ)။
5. ၼဵၵ်း Next ၵႂႃႇတိၵ်းတိၵ်း တေႃႇထိုင်မၼ်းပၼ် Export။
6. လိူၵ်ႈတီႈသိမ်း (Desktop/Documents)၊ ၸဝ်ႈၵဝ်ႇတေလႆႈ Folder ဢၼ်မီးၾၢႆႇ **.ipa** ယူႇၼႂ်းၼၼ်ႉၶႃႈ!

---

### **Summary**

| Stage | Key Command | Note (Shan) |
| --- | --- | --- |
| **Clean Build** | `Cmd + Shift + K` | ၸွႆႈလူတ်း Error ဢၼ်ဢမ်ႇလူဝ်ႇပဵၼ် မိူဝ်ႈ Archive။ |
| **Set Destination** | Any iOS Device (arm64) | ယႃႇပေလိူၵ်ႈ Simulator တႃႇ Archive။ |
| **Distribute** | Ad Hoc / Development | လိူၵ်ႈ Method ႁႂ်ႈသၢင်ႇထုၵ်ႇတင်းၵၢၼ်ၸႂ်ႉ။ |
| **Export** | .ipa File | ၾၢႆႇၼႆႉၸၢင်ႈသူင်ႇတၢင်း AirDrop ဢမ်ႇၼၼ် Finder။ |

---

### **How to Install .ipa manually?**

မိူဝ်ႈလႆႈၾၢႆႇမႃးယဝ်ႉ၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈ Install သႂ်ႇ iPhone လူၺ်ႈ:

1. ၵွင်ႉ iPhone ၸူး Mac။
2. ပိုတ်ႇ **Finder** -> လိူၵ်ႈ iPhone ၸဝ်ႈၵဝ်ႇ။
3. လၢၵ်ႈ (Drag) ၾၢႆႇ .ipa သႂ်ႇၼိူဝ်ၼႃႈၸေႃး Finder ၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ။

---