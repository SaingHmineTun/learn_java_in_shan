## **Lesson 2: Setting Up the Environment (GHC, GHCi, and VS Code)**

ပုၼ်ႈတႃႇတေတႅမ်ႈ Haskell လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇမီးၶိူင်ႈၸႂ်ႉ (Tools) 3 ယိူင်ႈလူင်ၶႃႈ။

### **1. GHC (The Compiler)**
**GHC (Glasgow Haskell Compiler)** ၼႆႉ မိူၼ်ၼင်ႇ "ၵူၼ်းပိၼ်ႇၽႃႇသႃႇ" ဢၼ်တေလႅၵ်ႈလၢႆႈလိၵ်ႈ Haskell ႁဝ်း ႁႂ်ႈပဵၼ် Program ဢၼ် Computer ပွင်ႇၸႂ်ၼၼ်ႉၶႃႈ။
* မၼ်းတေထတ်းသိၼ် (Check) တူၺ်းဝႃႈ Code ႁဝ်းမီး Error ႁႃႉ? သင်မီးၵေႃႈ မၼ်းတေလၢတ်ႈၼႄႁဝ်းၶႃႈ။

### **2. GHCi (The Interactive Shell)**
**GHCi** ၼႆႉ ပဵၼ် "ၵူၼ်းတွပ်ႇၶေႃႈထၢမ်" ၶႃႈဢေႃႈ။ ႁဝ်းတႅမ်ႈ Code ၶဝ်ႈၵႂႃႇသေ မၼ်းတေတွပ်ႇဢွၵ်ႇမႃးပၼ်ၵမ်းလဵဝ်။
* ႁဝ်းတေၸႂ်ႉမၼ်းတႃႇ "ထတ်းတူၺ်း (Test)" Function ဢွၼ်ႇႁဝ်း ဢၼ်တႅမ်ႈဝႆႉၼၼ်ႉၶႃႈ။
* မၼ်းႁွင်ႉဝႃႈ **REPL** (Read-Eval-Print Loop) ၶႃႈ။

### **3. VS Code + Haskell Extension**
ပုၼ်ႈတႃႇတႅမ်ႈ Code ႁႂ်ႈငၢႆႈၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **Visual Studio Code** သေ သႂ်ႇပၼ် Extension ဢၼ်ၸိူဝ်းၼႆႉၶႃႈ။
* **Haskell Language Support:** တႃႇႁႂ်ႈမၼ်းၸွႆႈထတ်း Code လႄႈ ၼႄသီ (Syntax Highlighting)။

---

### **လၢႆးတမ်းဝၢင်း (Installation Steps)**

#### **Step 1: Install GHCup**
လၢႆးဢၼ်ငၢႆႈသုတ်း ပုၼ်ႈတႃႇ Windows, Mac, လႄႈ Linux ၼႆႉ ပဵၼ်ၵၢၼ်ၸႂ်ႉ **GHCup** ၶႃႈ။
* ၵႂႃႇတီႈ Website: [haskell.org/ghcup](https://www.haskell.org/ghcup/)
* Copy ဢဝ် Terminal Command ဢၼ်မၼ်းပၼ်ဝႆႉၼၼ်ႉသေ သႂ်ႇၼႂ်း PowerShell (Windows) ဢမ်ႇၼၼ် Terminal (Mac/Linux)။
* မၼ်းတေထၢမ်ဝႃႈ တေသွၵ်ႈ (Install) GHC, Cabal, လႄႈ Stack ႁႃႉ? ႁႂ်ႈတွပ်ႇ **Yes (Y)** တင်းหมดၶႃႈ။

#### **Step 2: Install VS Code Extension**
1. ပိုတ်ႇ VS Code မႃး။
2. ၵႂႃႇတီႈ **Extensions** (Ctrl+Shift+X)။
3. သွၵ်ႈႁႃၶေႃႈၵႂၢမ်းဝႃႈ **"Haskell"** (ဢၼ်လုၵ်ႉတီႈ Haskell Foundation ၼၼ်ႉၶႃႈ)။
4. ၼဵၵ်း **Install**။



#### **Step 3: Test your Setup**
ပုၼ်ႈတႃႇႁူႉဝႃႈ ၶိူင်ႈႁဝ်းၸႂ်ႉလႆႈယဝ်ႉႁႃႉၼၼ်ႉ ႁႂ်ႈပိုတ်ႇ Terminal သေ တႅမ်ႈဝႃႈ:
```bash
ghci
```
သင်မၼ်းဢွၵ်ႇမႃးဝႃႈ `Prelude>` ၼႆၵေႃႈ မၼ်းၸႂ်ႉလႆႈယဝ်ႉၶႃႈ! ႁဝ်းၸၢင်ႈတႅမ်ႈ `2 + 2` သေ ၼဵၵ်း Enter တူၺ်းလႆႈၶႃႈဢေႃႈ။

---

**Summary for TMK Students:**
* **GHC:** တႃႇ Compile (ႁဵတ်းပဵၼ် Program)။
* **GHCi:** တႃႇ Test (ထတ်းတူၺ်း Code ၵမ်းလဵဝ်)။
* **VS Code:** တႃႇ Write (တႅမ်ႈ Code ႁႂ်ႈသႅၼ်ႈသႂ်ႇ)။
