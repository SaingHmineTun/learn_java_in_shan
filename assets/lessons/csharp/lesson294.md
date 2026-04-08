# Lesson 294: "Setting up the Emulator"

တွၼ်ႈတႃႇတေလႅၼ်ႈ MAUI App ၼိူဝ် Android ၼၼ်ႉ ႁဝ်းမီး 2 လၢႆးၶႃႈ:

### 1. Android Emulator (ၾူၼ်းတူဝ်ပွမ်)
ၼႆႉပဵၼ်ၵၢၼ်သၢင်ႈၾူၼ်းဝႆႉၼႂ်းၶွမ်း။
* **ၵၢၼ် Setup:** ၵႂႃႇတီႈ **Tools > Android > Android Device Manager** ၼႂ်း Visual Studio။
* **သၢင်ႈ Device:** ၼဵၵ်း **+ New** သေလိူၵ်ႈ Pixel 5 ဢမ်ႇၼၼ် Version ဢၼ်ႁဝ်းၶႂ်ႈၸၢမ်း။
* **လွင်ႈလီ:** ဢမ်ႇလူဝ်ႇမီးၾူၼ်းတူဝ်တႄႉၵေႃႈ ၸၢမ်း App လႆႈၵမ်းလဵဝ်။



### 2. Local Device (ၾူၼ်းတူဝ်တႄႉ)
သင်ၶွမ်းႁဝ်းဢမ်ႇပေႃးႁႅင်း (RAM ဢေႇ) ၼႆ ၵၢၼ်ၸႂ်ႉၾူၼ်းတူဝ်တႄႉ တေဝႆးလိူဝ်ၶႃႈ။
* **Enable Developer Options:** ၵႂႃႇတီႈ Settings > About Phone သေၼဵၵ်း **Build Number** 7 ပွၵ်ႈ။
* **USB Debugging:** ၵႂႃႇပိုတ်ႇ **USB Debugging** ၼႂ်း Developer Options။
* **Connect:** ဢဝ်သၢႆ USB ၵွင်ႉၸူးၶွမ်း သေလိူၵ်ႈၸိုဝ်ႈၾူၼ်းၶူး ၼႂ်းတုမ်ႇ Run ၶွင် Visual Studio ၶႃႈ။

### 3. ၵၢၼ်လႅၼ်ႈ App ၵမ်းဢွၼ်တၢင်း (The Hello World)
မိူဝ်ႈႁဝ်းသၢင်ႈ Project MAUI မႂ်ႇယဝ်ႉ:
1. တူၺ်းၽၢႆႇၼိူဝ် (Debug Target) သေလိူၵ်ႈ **Framework > net8.0-android**။
2. လိူၵ်ႈ Emulator ဢမ်ႇၼၼ် ၾူၼ်းတူဝ်တႄႉ ဢၼ်ႁဝ်း Setup ဝႆႉ။
3. ၼဵၵ်း **F5**။
* *သတိ:* လႅၼ်ႈၵမ်းဢွၼ်တၢင်းသုတ်းၼႆႉ တေလႆႈပႂ်ႉႁိုင်ဢိတ်းၼိုင်ႈ ယွၼ်ႉမၼ်းတေလႆႈ Build Android SDK ၶႃႈ။



---

### 4. ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Emulator:** Software ဢၼ်ႁဵတ်းႁႂ်ႈၶွမ်းႁဝ်း ႁဵတ်းၵၢၼ်မိူၼ်ၾူၼ်းတႄႉတႄႉ။
* **SDK (Software Development Kit):** ၶိူင်ႈမိုဝ်းဢၼ် Android လူဝ်ႇၸႂ်ႉ တႃႇသၢင်ႈ App။
* **ADB (Android Debug Bridge):** ၶူဝ်ၵွင်ႉဢၼ်ၸွႆးႁႂ်ႈ Visual Studio လၢတ်ႈၵႂၢမ်းတင်းၾူၼ်းလႆႈ။
* **Hardware Acceleration:** Feature ၼႂ်းၶွမ်း ဢၼ်လူဝ်ႇပိုတ်ႇ (ၼႂ်း BIOS) တွၼ်ႈတႃႇႁႂ်ႈ Emulator လႅၼ်ႈဝႆး။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ၶွမ်းႁဝ်းလႅၼ်ႈ Emulator သေ ႁႅင်းၶွမ်း (RAM) တႅမ် (Slow) ၼႃႇၼႆ... ႁဝ်းထုၵ်ႇလီၸႂ်ႉလၢႆးလႂ်တႅၼ်း?
2. ႁဵတ်းသင်ႁဝ်းၸင်ႇလူဝ်ႇပိုတ်ႇ **USB Debugging** ၼႂ်းၾူၼ်းတူဝ်တႄႉ ၵွၼ်ႇတေလႅၼ်ႈ App လႆႈ?