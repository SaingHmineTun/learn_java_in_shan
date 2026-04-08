# Lesson 293: "Setting Up the .NET MAUI Environment"

တွၼ်ႈတႃႇတေတႅမ်ႈ .NET MAUI App လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇႁၢင်ႈႁႅၼ်းၶွမ်းႁဝ်း ႁႂ်ႈမီး "ၶိူင်ႈမိုဝ်း" တဵမ်ထူၼ်ႈၶႃႈ။ 
ႁဝ်းတေလႆႈႁဵတ်း 3 ၸၼ်ႉၼႆႉၶႃႈ:

### 1. Installing .NET MAUI Workload
ပိူင်ထမ်ႇမတႃႇ (Default) ၶွင် Visual Studio တေဢမ်ႇပႃး MAUI မႃးၵမ်းလဵဝ်ၶႃႈ။ ႁဝ်းလူဝ်ႇၵႂႃႇထႅမ်မၼ်းၸိူင်ႉၼႆ:
1. ပိုတ်ႇ **Visual Studio Installer** ၼႂ်းၶွမ်း။
2. ၼဵၵ်းတုမ်ႇ **Modify** တီႈ Version ဢၼ်ႁဝ်းၸႂ်ႉယူႇ (VS 2022)။
3. ၼႂ်း Tab **Workloads** ႁႂ်ႈမၢႆၶိတ်း (Check) တီႈ:
    * **.NET Multi-platform App UI development**
4. ၼဵၵ်း **Modify** သေပႂ်ႉႁႂ်ႈမၼ်း Download ယဝ်ႉတူဝ်ႈ (ၼႆႉၵေႃႈတေလႆႈပႂ်ႉႁိုင်ဢိတ်းၼိုင်ႈၶႃႈ)။



### 2. Checking SDKs and Components
မိူဝ်ႈ Install ယဝ်ႉယဝ်ႉၼၼ်ႉ Visual Studio တေထႅမ်ပၼ် **Android SDK** လႄႈ **Java SDK** ႁင်းၵူၺ်းမၼ်း။ ၵူၺ်းၵႃႈ တွၼ်ႈတႃႇတမ်းၸႂ်လႆႈ ႁႂ်ႈၵႂႃႇၵူတ်ႇထတ်းၼႂ်း:
* **Tools > Android > Android SDK Manager**
* တူၺ်းဝႃႈမီး **Android SDK Platform** (Version 34 ၶိုၼ်ႈၼိူဝ်) တဵမ်ထူၼ်ႈယဝ်ႉႁႃႉ?

### 3. MAUI Check (ၶိူင်ႈမိုဝ်းၵူတ်ႇထတ်း)
သင်ႁဝ်းၶႂ်ႈႁူႉဝႃႈ ၶိူင်ႈမိုဝ်းၼႂ်းၶွမ်းႁဝ်း တဵမ်ထူၼ်ႈတႃႇလႅၼ်ႈ MAUI တႄႉယဝ်ႉႁႃႉ? ႁဝ်းၸၢင်ႈၸႂ်ႉ Tool ဢၼ်ၸိုဝ်ႈဝႃႈ **dotnet-maui-check** လႆႈၶႃႈ။
* ပိုတ်ႇ **Terminal** သေတႅမ်ႈ: `dotnet tool install -g Redth.Net.Maui.Check`
* ယဝ်ႉယဝ်ႉတႅမ်ႈ: `maui-check`
* မၼ်းတေၵူတ်ႇထတ်းပၼ်ၵူႈပိူင်လႄႈ သင်မီးဢၼ်ၽိတ်းၼႆ မၼ်းတေၸွႆးမႄးပၼ်ႁင်းၵူၺ်းၶႃႈ။

---

### 4. ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Workload:** ၸုမ်းၶိူင်ႈမိုဝ်းဢၼ်ၸႅၵ်ႇဝႆႉၸွမ်းၼင်ႇၼႃႈၵၢၼ် (မိူၼ်ၼင်ႇ Web, Mobile, Desktop)။
* **Modify:** ၵၢၼ်မႄးထႅမ် ဢမ်ႇၼၼ် လူတ်းဢွၵ်ႇ သုၼ်ႇ Software ၼႂ်း Visual Studio။
* **SDK Manager:** ၶိူင်ႈမိုဝ်းၸတ်းၵၢၼ် Software ဢၼ် Android လူဝ်ႇၸႂ်ႉ။
* **Build Tools:** Code ဢၼ်မီးၼႃႈၵၢၼ် Compile Code ႁဝ်းႁႂ်ႈပဵၼ်ၾၢႆႇ App (.apk)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ပိုတ်ႇ Visual Studio သေ ဢမ်ႇႁၼ် Template "MAUI App" ၼႆ ႁဝ်းထုၵ်ႇလီၵႂႃႇမႄးတီႈလႂ်?
2. ႁဵတ်းသင် **Android SDK** ၸင်ႇလမ်ႇလွင်ႈ တွၼ်ႈတႃႇတႅမ်ႈ App Android လူၺ်ႈ C#?
