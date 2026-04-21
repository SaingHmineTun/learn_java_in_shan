## **Lesson 1: Setting Up the Laboratory (ၵၢၼ်တင်ႈႁၢင်ႈႁႅၼ်း ႁွင်ႈၵၢၼ်)**

### **1. Hardware & Software Requirements (ၶိူင်ႈလႄႈ ပရူဝ်ႇၵရႅမ်ႇ ဢၼ်လူဝ်ႇမီး)**
တႃႇတေတႄႇတႅမ်ႈ Android App လႆႈၼၼ်ႉ Computer ႁဝ်း လူဝ်ႇလႆႈမီးၼမ်ႉၵတ်ႉ (Spec) ၼင်ႇၼႆၶႃႈ -
* **RAM:** တီႈဢေႇသုတ်ႉ လူဝ်ႇမီး **8GB** (သင်မီး **16GB** တေႁဵတ်းၵၢၼ်လႆႈလီလိူဝ်)။
* **Processor (CPU):** Intel Core i3, i5, i7 (Generation 8 ၶိုၼ်ႈၼိူဝ်) ဢမ်ႇၼၼ် AMD Ryzen။ သင်ပဵၼ် Mac သမ်ႉ လူဝ်ႇပဵၼ် Apple M1/M2/M3 chip။
* **Storage:** လူဝ်ႇမီးတီႈပဝ်ႇ (Free Space) ၼႂ်း Disk မွၵ်ႈ **20GB** ၶိုၼ်ႈၼိူဝ် (လူဝ်ႇပဵၼ် **SSD** ၸင်ႇတေဝႆး)။
* **OS:** Windows 10/11 (64-bit), macOS, ဢမ်ႇၼၼ် Linux။

---

### **2. Installation: Android Studio Ladybug (ၵၢၼ်သႂ်ႇပရူဝ်ႇၵရႅမ်ႇ)**
ပၢႆးဝူၼ်ႉၵၢၼ်သႂ်ႇ (Installation) မီးၼင်ႇၼႆ -
1.  ၶဝ်ႈၵႂႃႇတီႈ Website [developer.android.com/studio](https://developer.android.com/studio) ယဝ်ႉ Download ဢဝ် **Android Studio Ladybug**။
2.  ပိုတ်ႇၾၢႆႇ (Run Installer) ယဝ်ႉ တဵၵ်း **Next** ၵႂႃႇၸွမ်းလွၵ်းမၼ်း။
3.  ပေႃးယဝ်ႉ ပိုတ်ႇပရူဝ်ႇၵရႅမ်ႇ Android Studio ၶိုၼ်ႈမႃးသေ လိူၵ်ႈ **Standard Install** ယဝ်ႉၵေႃႈ တဵၵ်း **Finish** တႃႇႁႂ်ႈမၼ်း Download Component ဢၼ်လူဝ်ႇၸႂ်ႉၼၼ်ႉၶႃႈ။

---

### **3. The SDK Manager (ၵၢၼ်ၸတ်ႉၵၢၼ် SDK)**
**SDK (Software Development Kit)** ၼႆႉ ပဵၼ်ၶိူင်ႈမိုဝ်း ဢၼ်တေၸွႆးႁႂ်ႈႁဝ်း တႅမ်ႈ App တႃႇ Android Version ၵူႈပၢၼ်ပၢၼ်လႆႈၼၼ်ႉၶႃႈ။
* ပိုတ်ႇ Android Studio ယဝ်ႉ ၵႂႃႇတီႈ **Settings > Languages & Frameworks > Android SDK**။
* တီႈၼႂ်း **SDK Platforms**: လိူၵ်ႈဢဝ် Android Version ဢၼ်မႂ်ႇမႂ်ႇ (မိူၼ်ၼင်ႇ **API 34** ဢမ်ႇၼၼ် **API 35**)။
* တီႈၼႂ်း **SDK Tools**: ၵူတ်ႇထတ်းတူၺ်းဝႃႈ **Android SDK Build-Tools** လႄႈ **Emulator** သႂ်ႇဝႆႉယဝ်ႉႁိုဝ်။

---

### **4. Virtual Device vs. Physical Device (ၶိူင်ႈတူမ်ႈလႄႈ ၶိူင်ႈတႄႉ)**
ပေႃးႁဝ်းတႅမ်ႈ App ယဝ်ႉ ႁဝ်းလူဝ်ႇၸၢမ်းတူၺ်း (Test) ဝႃႈမၼ်းႁဵတ်းၵၢၼ်လီႁိုဝ် ၼႆၶႃႈ။ လွင်ႈၼႆႉတေႉ မီး 2 လၢႆးၶႃႈ -

* **Android Emulator (Virtual Device):**
    * ၸႂ်ႉ **Device Manager** ၼႂ်း Android Studio တႃႇသၢင်ႈ "ၾူၼ်းပွမ်" (Virtual Phone) ၼႂ်း Computer ႁဝ်း။
    * လွင်ႈလီ: ဢမ်ႇလူဝ်ႇမီးၾူၼ်းတႄႉၵေႃႈ ၸၢမ်းလႆႈ။
    * လွင်ႈဢူၼ်ႈ: မၼ်းလူဝ်ႇ RAM ၼမ် လႄႈ တေႁဵတ်းႁႂ်ႈ Computer ၼၵ်ႉထိူင်းလိူဝ်။

* **Physical Device (USB Debugging):**
    * ၸႂ်ႉၾူၼ်း Android ဢၼ်ႁဝ်းၸႂ်ႉယူႇၵူႈဝၼ်းၼၼ်ႉ ၸၢမ်းတူၺ်း။
    * **လၢႆးႁဵတ်း:**
        1. ၵႂႃႇတီႈ Settings ၼႂ်းၾူၼ်း > About Phone > တဵၵ်းတီႈ **Build Number** 7 ပွၵ်ႈ တေႃႇမၼ်းဝႃႈ "You are now a developer!"။
        2. ၶဝ်ႈၵႂႃႇတီႈ **Developer Options** ယဝ်ႉ ပိုတ်ႇ (Enable) **USB Debugging**။
        3. ဢဝ်သၢႆ USB သီပ်းၾူၼ်း တေႃႇ Computer ယဝ်ႉ တဵၵ်း "Allow" တီႈၼႃႈၸေႃးၾူၼ်း။

---

### **Advice for Students (ၶေႃႈသႅပ်ႇပၼ်လုၵ်ႈႁဵၼ်း):**
သင် Computer ႁဝ်း ဢမ်ႇပေႃးႁႅင်း (RAM 8GB လူင်းတႂ်ႈ) ၼႆၸိုင် ၸႂ်ႉတိုဝ်း **Physical Device (ၾူၼ်းတႄႉ)** တႃႇၸၢမ်း App ၶႃႈ။ မၼ်းတေဝႆးလိူဝ် လႄႈ ဢမ်ႇႁဵတ်းႁႂ်ႈ Computer ၼၵ်းၶႃႈ။