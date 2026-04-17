## Lesson 3: The Compiler Workflow & Debugging

မိူဝ်ႈႁဝ်းတႅမ်ႈ Code ယဝ်ႉယဝ်ႉၼၼ်ႉ ႁဝ်းလူဝ်ႇ "Build" မၼ်း ႁႂ်ႈပဵၼ်ၾၢႆႇဢၼ်ၸႂ်ႉၵၢၼ်လႆႈ (Binary Files) ယဝ်ႉ။ 
ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈၵၢၼ်ၸႂ်ႉ Compiler လႄႈ တူဝ်ထတ်း Error ၶႃႈ။

### 1. ၵၢၼ်ႁဵတ်းၵၢၼ်ၶွင် Compiler (Workflow)
မိူဝ်ႈႁဝ်းၼဵၵ်ႉ **Compile** (ဢမ်ႇၼၼ် ၼဵၵ်ႉ `F7` ၼႂ်း Keyman Developer) ၼၼ်ႉ Compiler တေႁဵတ်းၵၢၼ်ၼင်ႇၼႆယဝ်ႉ:
1.  **Parsing:** မၼ်းတေလူ Code ၼႂ်း `.kmn` ႁဝ်းဝႃႈ မီးတီႈၽိတ်းမၼ်းႁႃႉ။
2.  **Generating:** သင်ဝႃႈဢမ်ႇၽိတ်း မၼ်းတေဢွၵ်ႇၾၢႆႇ `.kmx` (တႃႇ Windows/Mac/Linux) လႄႈ `.js` (တႃႇ Android/iOS) ပၼ်ယဝ်ႉ။
3.  **Output:** ၾၢႆႇၸိူဝ်းၼႆႉ တေၵႂႃႇမီးၼႂ်း Folder `/build` ဢၼ်ႁဝ်းတင်ႈဝႆႉၼၼ်ႉယဝ်ႉ။



### 2. ၵၢၼ်ၸႂ်ႉ Debugger (Unit Testing)
Debugger ပဵၼ်ၶိူင်ႈၵမ်ႉထႅမ် ဢၼ်လွင်ႈယႂ်ႇသုတ်း တႃႇ Developer ယဝ်ႉ။
* **Interactive Test:** ႁဝ်းၸၢင်ႈၼဵၵ်ႉ `F5` သေ တႅမ်ႈတူၺ်းၼႂ်း Debugger ဝႃႈ Code ႁဝ်းၼၼ်ႉ မၼ်းဢွၵ်ႇ 'ၵ' မႃးတူင်ၵႂႃႇႁႃႉ။
* **Rule Tracking:** မိူဝ်ႈႁဝ်းၼဵၵ်ႉ Key ၼိုင်ႈဢၼ် Debugger တေၼႄပၼ်ဝႃႈ မၼ်းၵႂႃႇၸႂ်ႉ Code ၼိုင်ႈထႅဝ်လႂ် (Highlight line) ၼႆယဝ်ႉ။ မၼ်းၸွႆးႁႂ်ႈႁဝ်းႁူႉဝႃႈ Logic ႁဝ်းၼၼ်ႉ မႅၼ်ႈယူႇႁႃႉ ဢမ်ႇမႅၼ်ႈႁႃႉ ၼႆယဝ်ႉ။



### 3. ၵၢၼ်ထတ်းတူၺ်း Error (Logging)
သင်ဝႃႈ Compiler ပိၼ်ႇ Code ဢမ်ႇလႆႈ မၼ်းတေၼႄ **Error Message** ယဝ်ႉ။
* **Red Error:** မၼ်းပွင်ႇဝႃႈ Code ႁဝ်းၽိတ်း (Syntax Error) လႄႈ Compiler တေဢမ်ႇ Build ပၼ်။
* **Yellow Warning:** မၼ်းပွင်ႇဝႃႈ Code ႁဝ်းဢမ်ႇပေႃးၶႅမ်ႉ (မိူၼ်ၼင်ႇ မီး Rule ဢၼ်မိူၼ်ၵၼ် 2 ဢၼ်)၊ ၵူၺ်းၵႃႈ မၼ်းတေ Build ပၼ်ယူႇ။

---

### Summary (တွၼ်ႈၵႅပ်ႈ Lesson 3)

| IT Terms | ၶေႃႈၵႂၢမ်းတႆး / Definition |
| :--- | :--- |
| **Build / Compile** | ၵၢၼ်ပိၼ်ႇ Source Code ႁႂ်ႈပဵၼ်ၾၢႆႇဢၼ်ၸႂ်ႉၵၢၼ်လႆႈ (Application) |
| **Debugger** | ၶိူင်ႈၵမ်ႉထႅမ် တႃႇထတ်းတူၺ်း ၵၢၼ်ႁဵတ်းၵၢၼ်ၶွင် Code ယၢမ်းတႅမ်ႈယူႇ |
| **Syntax Error** | ၶေႃႈၽိတ်းပိူင် တီႈၵၢၼ်တႅမ်ႈ Code (မိူၼ်ၼင်ႇ ဝူင်ႇဝၢၵ်ႇဝႆႉ ဢမ်ႇတူဝ်ႈ) |
| **Logging** | ၵၢၼ်တႅမ်ႈမၢႆဝႆႉ လွင်ႈႁဵတ်းၵၢၼ်ၶွင် System တႃႇတူၺ်းၶိူင်ႈၵၢၼ် |
| **Binary Output** | ၾၢႆႇဢွၵ်ႇမႃးသုတ်းยอด ဢၼ် Computer လူလႆႈ (เช่น .kmx, .js) |

**Summary:** ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းလႆႈႁူႉၸၵ်းလွင်ႈၵၢၼ် **Build** Keyboard ႁႂ်ႈပဵၼ်ၾၢႆႇတႃႇၸႂ်ႉၼိူဝ် Computer လႄႈ Mobile။ ႁဝ်းလႆႈႁဵၼ်းႁူႉလွင်ႈၵၢၼ်ၸႂ်ႉ **Debugger** တႃႇထတ်းတူၺ်း Logic ႁဝ်း လႄႈ လွင်ႈလူ **Error Messages** မိူဝ်ႈ Code ႁဝ်းမီးပၼ်ႁႃယဝ်ႉ။

---