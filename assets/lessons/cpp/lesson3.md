# Lesson 3: Setting Up Your Environment (GCC & VS Code)

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
တႃႇတေတႅမ်ႈ C++ လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈမီးၶိူင်ႈမိုဝ်း 2 မဵဝ်းလူင်:
1.  **Text Editor:** တီႈတႅမ်ႈၶူတ်ႉ (ႁဝ်းတေၸႂ်ႉ **VS Code**)
2.  **Compiler:** ၽူႈပိၼ်ႇၶူတ်ႉ (ႁဝ်းတေၸႂ်ႉ **GCC** ဢၼ်မႃးၸွမ်း **MinGW-w64**)

---

### Step 1: လူင်း Compiler (MinGW-w64)
ၵွပ်ႈဝႃႈ Windows ဢမ်ႇပႃး Compiler C++ မႃးၵမ်းသိုဝ်ႈ၊ ႁဝ်းတေလႆႈလူင်း MinGW ၶႃႈ။

1.  ၵႂႃႇတီႈဝႅပ်ႉသၢႆႉ [MSYS2](https://www.msys2.org/) သေ Download တူဝ် Install မၼ်းမႃး။
2.  လူင်း (Install) ၸွမ်းၼင်ႇမၼ်းၼေဝႆႉ။
3.  မိူဝ်ႈလူင်းယဝ်ႉ ၼႂ်း Terminal (MSYS2 UCRT64) ၼၼ်ႉ တႅမ်ႈၶူတ်ႉၼႆႉသေ Enter တေႃႈ:
    `pacman -S --needed base-devel mingw-w64-ucrt-x86_64-toolchain`
4.  လိူၵ်ႈ `all` သေ `Y` တႃႇတေလူင်း Toolchain တင်းမူတ်းၶႃႈ။



---

### Step 2: တင်ႈၵႃႈ Environment Path
တႃႇႁႂ်ႈ Windows ပွင်ႇၸႂ်ၶေႃႈၵႂၢမ်း `g++` ၼၼ်ႉ ႁဝ်းလူဝ်ႇသႂ်ႇ Path မၼ်းၶႃႈ။

1.  ၵႂႃႇတီႈ **Edit the system environment variables** ၼႂ်း Windows Search။
2.  ၼိပ်ႇ **Environment Variables** -> တီႈ **System variables** လိူၵ်ႈ **Path** သေ ၼိပ်ႇ **Edit**။
3.  ၼိပ်ႇ **New** သေ ထႅမ်သႂ်ႇတီႈယူႇ (Path) ၶိုၼ်ႈမႃး: `C:\msys64\ucrt64\bin`
4.  ၼိပ်ႇ OK တင်းမူတ်းၶႃႈ။

---

### Step 3: လူင်း VS Code လႄႈ Extensions
1.  Download လႄႈ Install **Visual Studio Code** တီႈ [code.visualstudio.com](https://code.visualstudio.com/)။
2.  ပိုတ်ႇ VS Code ယဝ်ႉ ၵႂႃႇတီႈ **Extensions** (Ctrl+Shift+X)။
3.  Search ႁႃ **"C/C++"** ဢၼ် Microsoft ႁဵတ်းဝႆႉၼၼ်ႉသေ **Install** ပၼ်ၶႃႈ။



---

### Step 4: ၸၢမ်းတူၺ်း (Testing)
ပိုတ်ႇ **Command Prompt (cmd)** ဢမ်ႇၼၼ် **PowerShell** သေ တႅမ်ႈၶူတ်ႉၼႆႉတူၺ်းၶႃႈ:
```bash
g++ --version
```
ပေႃးမၼ်းၼေဝႃႈ `g++ (Rev2, Built by MSYS2 project) ...` ၼႆၸိုင် မၼ်းတူဝ်ႈတႅၼ်းယဝ်ႉၶႃႈ!

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* ႁဝ်းလူဝ်ႇ **Compiler (g++)** တႃႇပိၼ်ႇၶူတ်ႉ။
* ႁဝ်းလူဝ်ႇ **Path Setup** တႃႇႁႂ်ႈ Windows ႁူႉၸၵ်း g++။
* **VS Code** ပဵၼ် Editor ဢၼ်ၶႅၼ်ႇသေပိူၼ်ႈ တႃႇတႅမ်ႈ C++ ယၢမ်းလဵဝ်ၶႃႈ။

---