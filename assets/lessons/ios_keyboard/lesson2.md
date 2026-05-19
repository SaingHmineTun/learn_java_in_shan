## တွၼ်ႈသွၼ် 2: **Project Architecture & Target Setup**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးတႄႇသၢင်ႈ Project တီႈၼႂ်း Xcode ယဝ်ႉ။ 
ယွၼ်ႉဝႃႈ Keyboard ၼႆႉ မၼ်းဢမ်ႇၸၢင်ႈယူႇတူဝ်လဵဝ်လႆႈလႄႈ မၼ်းတေလႆႈမီး **Container App** ဢၼ်ၼိုင်ႈ တႃႇပဵၼ်တီႈပိုင်ႈဢိင်မၼ်းယဝ်ႉ။

### 1. Understanding the Multi-Target Structure

ပေႃးႁဝ်းတေႁဵတ်း TMK Keyboard ၼႆ ၼႂ်း Xcode Project ႁဝ်းၼၼ်ႉ တေလႆႈမီး Targets ဝႆံ 2 ဢၼ်ယဝ်ႉ:

* **Main App Target (The Container):** ပဵၼ် App ဢၼ် User တေလႆႈတဵၵ်းပိုတ်ႇ မိူဝ်ႈၶဝ် Download တီႈ App Store ယဝ်ႉ။ မၼ်းတေၸႂ်ႉတႃႇၼႄ လၢႆးသႂ်ႇ Keyboard (Tutorial) လႄႈ တႃႇမၵ်းမၼ်ႈ လၢႆလၢႆလွင်ႈ (Settings) ယဝ်ႉ။
* **Keyboard Extension Target (The Engine):** ပဵၼ်တူဝ် Keyboard ဢၼ်တေၵႂႃႇ ၼႄပၼ်ၼႂ်း App တၢင်ႇတူဝ်ယဝ်ႉ။

### 2. Creating the Project

1. ပိုတ်ႇ **Xcode** သေလိူၵ်ႈ **Create a new Xcode project**။
2. လိူၵ်ႈ **App** (ယူႇၼႂ်း iOS tab) သေ ၼိပ်ႉ Next။
3. သႂ်ႇၸိုဝ်ႈဝႃႈ `TMK Keyboard`။
4. တီႈ Interface ၼၼ်ႉ လိူၵ်ႈ **SwiftUI** သေ တီႈ Language ၼၼ်ႉ လိူၵ်ႈ **Swift**။

### 3. Adding the Keyboard Target

မိူဝ်ႈလႆႈ Main App ယဝ်ႉ ႁဝ်းတေလႆႈသႂ်ႇတူဝ် Keyboard မၼ်း:

1. ၵႂႃႇတီႈ **File > New > Target**။
2. Search တႅမ်ႈဝႃႈ `Custom Keyboard` သေလိူၵ်ႈ **Custom Keyboard Extension**။
3. သႂ်ႇၸိုဝ်ႈ Target ဝႃႈ `TMKKeyboardExtension`။
4. ၼဵၵ်ႉ **Activate** မိူဝ်ႈ Xcode ထၢမ်ဝႃႈ တေၸႂ်ႉ Scheme ၼႆႉႁိုဝ်။

### 4. Configuring Info.plist

ဢၼ်ၼႆႉ လွင်ႈယႂ်ႇၼႃႇ ပုၼ်ႈတႃႇ Keyboard ႁဝ်း တေႁူႉဝႃႈ မၼ်းပဵၼ်ၽႃႇသႃႇသင်။
ၵႂႃႇတီႈ Folder **TMKKeyboardExtension** သေ ပိုတ်ႇ `Info.plist`:

* ၵႂႃႇတီႈ `NSExtension` > `NSExtensionAttributes`။
* **IsASidestepKey:** သႂ်ႇ `YES` (တႃႇပၼ်ၵူၼ်းၸႂ်ႉ လႅၵ်ႈ Emoji လႆႈငၢႆႈ)။
* **PrimaryLanguage:** သႂ်ႇ `shn` (ပုၼ်ႈတႃႇ လိၵ်ႈတႆး) ဢမ်ႇၼၼ် `my` (ပုၼ်ႈတႃႇ လိၵ်ႈမၢၼ်ႈ)။
* **RequestsOpenAccess:** သႂ်ႇ `YES` (ပေႃးႁဝ်းၶႂ်ႈၸႂ်ႉ Haptics ဢမ်ႇၼၼ် Internet)။

### 5. Shared App Groups (The Bridge)

ယွၼ်ႉ Targets တင်းသွင်ဢၼ်ၼႆႉ ယူႇဝႆႉၵေႃႉတီႈတီႈ ၼႆလႄႈ ပေႃးႁဝ်းၶႂ်ႈပၼ် Main App တင်း Keyboard သူင်ႇ Data ၸူးၵၼ် 
(မိူၼ်ၼင်ႇ User လႅၵ်ႈ Theme ဝႆႉ) ႁဝ်းတေလႆႈသႂ်ႇ **App Groups** ယဝ်ႉ:

1. လိူၵ်ႈ Project (တူဝ်သီၾႃႉ တီႈၼိူဝ်သုတ်း)။
2. ယဝ်ႉလိူၵ်ႈ **target** ၽႂ်မၼ်းသေ ၵႂႃႇတီႈ **Signing & Capabilities**။
3. ၼဵၵ်ႉ **+ Capability** သေလိူၵ်ႈ **App Groups**။
4. သႂ်ႇၸိုဝ်ႈဝႃႈ `group.it.saimao.tmk-keyboard` (သႂ်ႇမိူၼ်ၵၼ်တင်း 2 Targets)။

### 6. Running the app

သင်ႁဝ်း ၶႂ်ႈၸၢမ်း run တူၺ်း app ၼႆၸိုင် ဢွၼ်တၢင်းသုတ်ႉတေႉၵေႃႈ ႁဝ်းၼဵၵ်ႉပၼ် run တီႈ XCode ယဝ်ႉ
App ႁဝ်းၼႆႉ ၵွပ်ႈပဵၼ် `Extension` ဝႆႉလႄႈ မၼ်းတေထၢမ် `Choose an app to run` ၼႆယဝ်ႉ။
တီႈၼႆႈ ႁဝ်းၶိုၼ်းလိူၵ်ႈပၼ် `Note` ဢၼ်ၸၢင်ႊႁပ်ႉပၼ် User Input လႆႈႁေလႄႈ

### 7. Verification

ပေႃးႁဝ်း Run App ၼႆႉၼိူဝ် Simulator ၸိုင်:

* ၵႂႃႇတီႈ **Settings > General > Keyboard > Keyboards**။
* ၼိပ်ႉ **Add New Keyboard** သေ လိူၵ်ႈဢဝ် **TMK Keyboard**။
* ပိုတ်ႇ App Notes သေ တူၺ်းဝႃႈ Keyboard ႁဝ်း ၼႄမႃးႁိုဝ်? (ယၢမ်းလဵဝ် မၼ်းတေၼႄ တူဝ်လိၵ်ႈ Default ဢၼ် Xcode ပၼ်မႃးၼၼ်ႉၵူၺ်း)။

---