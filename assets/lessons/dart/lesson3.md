## 3) Setup IDE (VS Code / Android Studio)

တႃႇတေတႅမ်ႈ Code လႆႈငၢႆႈ လႄႈ ဝႆးၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **IDE** (Integrated Development Environment) ယဝ်ႉ။ IDE ၼႆႉမၼ်းမိူၼ်ၼင်ႇ "ႁွင်ႈၵၢၼ်တႅမ်ႈလိၵ်ႈ" ဢၼ်မီးၶိူင်ႈၵၢၼ်ၵူႈပိူင် (Compiler, Debugger, Code Editor) ဝႆႉၼႂ်းဢၼ်လဵဝ်ယဝ်ႉ။

### 1. လၢႆးသႂ်ႇ VS Code (Visual Studio Code)

VS Code ၼႆႉပဵၼ် Code Editor ဢၼ်မၢင် (Lightweight) သေ ၵူၼ်းၸႂ်ႉတိုင်ႈၼမ်သုတ်းယဝ်ႉ။

1. **Download:** ၵႂႃႇတီႈ [code.visualstudio.com](https://code.visualstudio.com/) သေ လူတ်ႇလူင်း သႂ်ႇ (Install) ၼႂ်းၶွမ်း။
2. **Install Extension:** * ပိုတ်ႇ VS Code သေ ၵႂႃႇတီႈ **Extensions** icon (ဢမ်ႇၼၼ် ၼိပ်ႇ `Ctrl+Shift+X`)။
* တူတ်ႉႁႃ (Search) ဝႃႈ **"Dart"** သေ ၼိပ်ႇ Install။
* တူတ်ႉႁႃ ဝႃႈ **"Flutter"** သေ ၼိပ်ႇ Install (သင်တေႁဵတ်း App)။


3. **Check SDK:** VS Code တေတူတ်ႉႁႃ Dart SDK ဢၼ်မီးၼႂ်းၶွမ်းႁဝ်းႁင်းၵူၺ်း။ သင်မၼ်းႁႃဢမ်ႇႁၼ် မၼ်းတေထၢမ်ႁႂ်ႈႁဝ်းၼႄပၼ် Path မၼ်းယဝ်ႉ။

---

### 2. လၢႆးသႂ်ႇ Android Studio

Android Studio ၼႆႉသမ်ႉ ပဵၼ် IDE ဢၼ်ၵတ်ႉၶႅၼ်ႇ (Powerful) သေ မီးၶိူင်ႈၵၢၼ်တႃႇႁဵတ်း App တင်းၼမ်။

1. **Download:** ၵႂႃႇတီႈ [developer.android.com/studio](https://developer.android.com/studio) သေ သႂ်ႇ (Install)။
2. **Plugins:** * ပိုတ်ႇ Android Studio သေ ၵႂႃႇတီႈ **Settings** (ဢမ်ႇၼၼ် Preferences ၼိူဝ် Mac)။
* လိူၵ်ႈ **Plugins** သေ တူတ်ႉႁႃ **"Dart"** သေ သႂ်ႇ။
* သႂ်ႇပႃး **"Flutter"** plugin ယဝ်ႉ Restart Android Studio ၶိုၼ်း။



---

### 3. လွင်ႈမၵ်းမၼ်ႈ (Configuring) Dart SDK Path

မၢင်ပွၵ်ႈ IDE တေဢမ်ႇႁူႉဝႃႈ Dart SDK ႁဝ်းမီးတီႈလႂ်။ ႁဝ်းလူဝ်ႇလၢတ်ႈၼႄပၼ် Path မၼ်း:

* **တီႈ Android Studio:** ၵႂႃႇတီႈ Settings > Languages & Frameworks > Dart။ သႂ်ႇပၼ် Path တီႈဢၼ်ႁဝ်းဝႆႉ Folder `dart-sdk` ၼၼ်ႉ (မၼ်းတေမီး Folder `bin` ယူႇတႂ်ႈမၼ်း)။
* **တီႈ Windows Environment Variables:** တႃႇတေၸႂ်ႉ `dart` command ၼႂ်း Terminal လႆႈၵူႈတီႈၼၼ်ႉ ႁဝ်းလူဝ်ႇဢဝ် `C:\path\to\dart-sdk\bin` သႂ်ႇဝႆႉၼႂ်း **Path** ၶေႃႈ **System Environment Variables** ယဝ်ႉ။

---

### 4. လၢႆးၸၢမ်းတူၺ်း (Testing)

တႃႇတေႁူႉဝႃႈ ၶိူင်ႈၵၢၼ်ႁဝ်းႁႅၼ်းယဝ်ႉယဝ်ႉႁႃႉၼႆ:

1. ပိုတ်ႇ Terminal (Command Prompt / PowerShell)။
2. တႅမ်ႈဝႃႈ `dart --version` သေ ၼိပ်ႇ Enter။
3. သင်မၼ်းၼႄ Version မႃး (တူဝ်ယၢင်: `Dart SDK version: 3.x.x`) ၼႆ ၼၼ်ႉမၼ်းႁႅၼ်းယဝ်ႉယဝ်ႉ။