## 4) Creating a New Dart Project

မိူဝ်ႈႁဝ်းသႂ်ႇ Dart SDK လႄႈ IDE (VS Code / Android Studio) ယဝ်ႉယဝ်ႉၼၼ်ႉ ႁဝ်းၸၢင်ႈတႄႇသၢင်ႈ Project ဢၼ်ပဵၼ် **Console Application** လႆႈယဝ်ႉ။ Console App ၼႆႉ ပဵၼ် App ဢၼ်လႅၼ်ႈၼႂ်း Terminal (လိၵ်ႈလွၼ်ႉလွၼ်ႉ) သေ မၼ်းသၢင်ႈငၢႆႈသုတ်း တႃႇႁဵတ်းၵၢၼ်ၸၢမ်း Code ယဝ်ႉ။

### 1. လၢႆးသၢင်ႈ Project ၸႂ်ႉ Command Line

ႁဝ်းၸၢင်ႈၸႂ်ႉ Terminal (Command Prompt / PowerShell) သေ သၢင်ႈလႆႈငၢႆႈငၢႆႈ:

1. ပိုတ်ႇ Terminal သေ သိုပ်ႇၵႂႃႇတီႈ Folder ဢၼ်ႁဝ်းၶႂ်ႈဝႆႉ Project။
2. တႅမ်ႈ Command:
```bash
dart create my_first_app

```


3. မၼ်းတေၸွႆႈသၢင်ႈ Folder ဢၼ်မီးၸိုဝ်ႈဝႃႈ `my_first_app` ပၼ်ႁဝ်းယဝ်ႉ။

### 2. ပိူင်ၽွတ်ႈဝႆႉ Project (Project Structure)

မိူဝ်ႈႁဝ်းပိုတ်ႇ Project ၼၼ်ႉ ၼႂ်း IDE ႁဝ်းတေႁၼ် Folder လႄႈ File လၢႆလၢႆဢၼ်:

* **`bin/`**: Folder ၼႆႉ လမ်ႇလွင်ႈသုတ်း။ မၼ်းပႃးဝႆႉ File ဢၼ်တေလႅၼ်ႈ (Entry point)။ ၵမ်းၼမ်တေမီး File ၸိုဝ်ႈဝႃႈ `main.dart` ဢမ်ႇၼၼ် `my_first_app.dart`။
* **`lib/`**: တီႈၼႆႈ ႁဝ်းတေဝႆႉ Code ဢၼ်ပဵၼ် Libraries ဢမ်ႇၼၼ် Logic တၢင်ႇၸိူဝ်း။
* **`pubspec.yaml`**: ၼႆႉပဵၼ် "Heart" (ႁူဝ်ၸႂ်) ၶေႃႈ Project။ မၼ်းၸႂ်ႉတႃႇမၵ်းမၼ်ႈ ၸိုဝ်ႈ Project, Version လႄႈ လွင်ႈၸႂ်ႉ Dependencies (Package တၢင်ႇဢၼ်)။
* **`.dart_tool/`**: Folder ၼႆႉ ၸႂ်ႉတႃႇ Dart ႁဵတ်းၵၢၼ် (Internal use)၊ ႁဝ်းဢမ်ႇလူဝ်ႇၵႂႃႇမႄးသင်ၼႂ်းမၼ်း။

### 3. လၢႆးပိုတ်ႇ Project ၼႂ်း IDE

* **VS Code:** ၵႂႃႇတီႈ File > Open Folder သေ လိူၵ်ႈဢဝ် Folder `my_first_app` ၼၼ်ႉယဝ်ႉ။
* **Android Studio:** ၵႂႃႇတီႈ File > Open သေ လိူၵ်ႈဢဝ် Project ၼၼ်ႉယဝ်ႉ။

### 4. လၢႆးလႅၼ်ႈ Code (Running the App)

တႃႇတေလႅၼ်ႈ Code ႁဝ်းၼၼ်ႉ မီးလၢႆးယူႇ 2 ပိူင်:

1. **ၸႂ်ႉ Terminal:**
   ပိုတ်ႇ Terminal ၼႂ်း IDE သေ တႅမ်ႈ:
```bash
dart run bin/main.dart

```


2. **ၸႂ်ႉ Run Button:**
   ၼႂ်း IDE တေမီး ပုမ်ႇ (Button) **Run** ဢမ်ႇၼၼ် **Debug** ယူႇတီႈၼိူဝ် File `main.dart` ၼၼ်ႉ။ ၼိပ်ႇပၼ်သေ မၼ်းတေၼႄၽူၼ်လႅၵ်ႈလၢႆႈ တီႈၼႂ်း **Debug Console** ယဝ်ႉ။