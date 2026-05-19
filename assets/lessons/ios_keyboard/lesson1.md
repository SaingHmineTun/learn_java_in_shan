## တွၼ်ႈသွၼ် 1: **The App Extension Sandbox**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းႁူႉလွင်ႈပိူင်သၢင်ႈ **iOS Keyboard Extension** ဝႃႈမၼ်းႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်။
ပေႃးႁဝ်းတေတႅမ်ႈ Application ပုၼ်ႈတႃႇ iOS ၼႆ မၼ်းတေမီးလွင်ႈပႅၵ်ႇပိူင်ႈၵၼ်တင်း Android ဝႆႉယူႇဢိတ်းဢီတ်းယဝ်ႉ။

### 1. Sandbox ၼႆႉပဵၼ်သင်? (Sandbox ဢၼ်ဝႃႈၼၼ်ႉ ပဵၼ်သင်?)

**Sandbox** ဢၼ်ဝႃႈၼၼ်ႉ မိူၼ်ၼင်ႇႁဝ်းလွမ်ႉႁူဝ်ႉဝႆႉပုၼ်ႈတႃႇ App တူဝ်ၼိုင်ႈၼၼ်ႉယဝ်ႉ။ ၼင်ႇႁိုဝ်ပေႃးတေမီးလွင်ႈႁူမ်ႇလူမ်ႈ (Security) ၼၼ်ႉ iOS တေဢမ်ႇပၼ် App ဢၼ်ၼိုင်ႈလႄႈ ဢၼ်ၼိုင်ႈ ၵွင်ႉၵၢႆႇၵၼ်လႆႈ။

* **Keyboard Extension** ၼႆႉ မၼ်းဢမ်ႇၸႂ်ႈ App တူဝ်တေႉ။ မၼ်းပဵၼ် **Plugin** ဢၼ်ၵႂႃႇႁဵတ်းၵၢၼ်ယူႇၼႂ်း App တၢင်ႇတူဝ် (မိူၼ်ၼင်ႇ Facebook, Messenger, Notes) ၼၼ်ႉယဝ်ႉ။

### 2. Lifecycle of a Keyboard Extension

Lifecycle ၼႆႉ ပဵၼ်လွင်ႈတေႃႇသိုပ်ႇ ၸဵမ်မိူဝ်ႈမၼ်းတႄႇႁဵတ်းၵၢၼ် တေႃႇထိုင်မၼ်းယဝ်ႉတူဝ်ႈၵႂႃႇယဝ်ႉ။

* **Initialization:** မိူဝ်ႈၽူႈၸႂ်ႉတိုဝ်း (User) ၼဵၵ်ႉတီႈ Keyboard ၼၼ်ႉ System တေတႄႇႁွင်ႉ **UIInputViewController** ၶိုၼ်ႈမႃး။
* **Active State:** မိူဝ်ႈ Keyboard မႃးယူႇၼိူဝ် Screen ၼၼ်ႉ မၼ်းတေယူႇၼႂ်းပိုၼ်ႉတီႈဢၼ်ႁွင်ႉဝႃႈ **Active Sandbox**။
* **Termination:** မိူဝ်ႈ User ပိၵ်ႉ Keyboard (မိူၼ်ၼင်ႇ ၼဵၵ်ႉတီႈ Dismiss Keyboard) ၼၼ်ႉ System တေပိၵ်ႉ (Kill) Extension ၼၼ်ႉပႅတ်ႈၵမ်းလဵဝ်။ မၼ်းတေဢမ်ႇႁဵတ်းၵၢၼ်ဝႆႉယူႇၼႂ်း Background။

### 3. UIInputViewController: The Brain

တူဝ် **UIInputViewController** ၼႆႉ ပဵၼ်ၵၢၼ်ၵုမ်းထိင်း (Controller) ယဝ်ႉ။ လုၵ်ႉတီး Class ၼႆႉသေ ႁဝ်းတေလႆႈၸိသင်ႇဝႃႈ:

* တေပၼ် User ၼဵၵ်ႉလိၵ်ႈသင်?
* တေလႅၵ်ႈ Layout (English, Myanmar, Shan) ၸိူင်ႉႁိုဝ်?
* တေသူင်ႇလိၵ်ႈ (Input Text) ၵႂႃႇၸူး App တၢင်ႇတူဝ်ၸိူင်ႉႁိုဝ်?

### 4. Constraints (ၶေႃႈၵုမ်းထိင်း)

ယွၼ်ႉ TMK Keyboard ႁဝ်းၼႆႉ တေမီးဝႆႉ 3 Layouts (English, Myanmar, Shan) လႄႈ ႁဝ်းတေလႆႈၾၢင်ႉလွင်ႈၸိူဝ်းၼႆႉယဝ်ႉ:

* **Memory Limit:** iOS တေပၼ်ၸႂ်ႉ Memory (RAM) ဢိတ်းၼိုင်ႈၵူၺ်း (ၵမ်ႈၼမ် 50MB)။ ပေႃးႁဝ်းၸႂ်ႉ Image ၼမ် ဢမ်ႇၼၼ် တႅမ်ႈ Code ဢမ်ႇလီၼႆ Keyboard တေ Crash (လူႉ) ၵႂႃႇၵမ်းလဵဝ်။
* **Network Access:** ပေႃး User ဢမ်ႇပၼ် **Full Access** ၼႆ Keyboard ႁဝ်းတေဢမ်ႇၸႂ်ႉ Internet လႆႈ၊ တေဢမ်ႇသူင်ႇ Data ဢွၵ်ႇၵႂႃႇလႆႈ။

### 5. Interaction with Host App

Keyboard extension ၼႆႉ မၼ်းတေၵပ်းသိုပ်ႇတင်း App တၢင်ႇတူဝ် (Host App) လူၺ်ႈ **TextDocumentProxy** ယဝ်ႉ။ 
ႁဝ်းတေဢမ်ႇၸၢင်ႈၵႂႃႇဢဝ် Data ၼႂ်း App တၢင်ႇတူဝ်လႆႈ ၸိူင်ႉၼင်ႇ ဢဝ် Contact။

---