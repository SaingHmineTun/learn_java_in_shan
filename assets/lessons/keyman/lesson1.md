## Lesson 1: The Keyman "Stack" & IDE Setup

### 1. Keyman Stack ဢၼ်ဝႃႈၼၼ်ႉ ပဵၼ်သင်?
ၼႂ်းၵၢၼ်တႅမ်ႈ Keyboard ၼၼ်ႉ မၼ်းတေမီး 3 ၸၼ်ႉ (Stack) ဢၼ်ႁဝ်းလူဝ်ႇပွင်ႇၸႂ်:
* **Source Code (.kmn):** ပဵၼ်ၾၢႆႇ (File) ဢၼ်ႁဝ်းတေတႅမ်ႈ Code ႁဝ်းၼၼ်ႉယဝ်ႉ။ မၼ်းမိူၼ်တင်း Script ဢၼ်ဝႃႈ "သင်ၼဵၵ်ႉ Key A ႁႂ်ႈမၼ်းဢွၵ်ႇ 'ၵ'" ၼႆၼၼ်ႉယဝ်ႉ။
* **Compiler (kmc):** ပဵၼ် တူဝ်ပိၼ်ႇၽႃႇသႃႇ (Translator) ယဝ်ႉ။ မၼ်းတေဢဝ် Source Code ႁဝ်းၼၼ်ႉ ပိၼ်ႇပဵၼ် Binary Files ဢၼ် Computer လႄႈ Phone ႁဝ်းလူလႆႈၼၼ်ႉယဝ်ႉ။
* **Engine (Keyman App):** ပဵၼ်တူဝ်ဢၼ်တေဢဝ် Keyboard ႁဝ်းၵႂႃႇႁဵတ်းၵၢၼ်ၼိူဝ် Windows, Mac, Linux, Android လႄႈ iOS ၼၼ်ႉယဝ်ႉ။



### 2. Keyman Developer (IDE) Setup
တႃႇတေတႅမ်ႈ Code လႆႈငၢႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **Keyman Developer IDE** ၶႃႈယဝ်ႉ။
* **Installation:** ၵႂႃႇ Download ဢဝ်တီႈ [keyman.com/developer](https://keyman.com/developer/) သေ Install ဝႆႉၼႂ်း Windows ၶႃႈ။ (တွၼ်ႈတႃႇ Mac/Linux တႄႉ တေလႆႈၸႂ်ႉ VS Code လႄႈ Keyman Compiler CLI ယဝ်ႉ)။
* **Project File (.kpj):** မိူဝ်ႈႁဝ်းတႄႇ Project ၼၼ်ႉ မၼ်းတေမီး File ၼိုင်ႈဢၼ် ဢၼ်ႁွင်ႉဝႃႈ **Project File** ၼႆယဝ်ႉ။ မၼ်းတေၵုမ်းထိင်းဝႆႉတင်း Source Code, Icons, လႄႈ Fonts တင်းသဵင်ႈယဝ်ႉ။

### 3. Professional Project Structure
ၼႂ်းၵၢၼ်ပဵၼ် Developer ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸတ်းၵၢၼ် Folder ႁဝ်းႁႂ်ႈမၼ်းၶႅမ်ႉလႅပ်ႈ (Clean Architecture):
1.  **source/:** သႂ်ႇဝႆႉ `.kmn` (logic), `.kvks` (visual), `.ico` (icon)။
2.  **build/:** သႂ်ႇဝႆႉ `.kmx` လႄႈ `.js` ဢၼ် Compiler ဢွၵ်ႇမႃးပၼ်ၼၼ်ႉ။
3.  **resources/:** သႂ်ႇဝႆႉ Fonts (Unicode) လႄႈ Documentation ၶႃႈ။



### ### 4. Creating Your First Project
* ပိုတ်ႇ Keyman Developer သေ ၵႂႃႇတီႈ **Project > New Project**။
* လိူၵ်ႈ **Keyboard** သေ သႂ်ႇၸိုဝ်ႈဝႃႈ `tmk_shan`။
* IDE တေၵေႃႇသၢင်ႈပၼ် Template ႁႂ်ႈႁဝ်းယဝ်ႉ။

---

### ### Summary (တွၼ်ႈၵႅပ်ႈ Lesson 1)

| IT Terms | ၶေႃႈၵႂၢမ်းတႆး / Definition |
| :--- | :--- |
| **IDE** | တီႈတႅမ်ႈ Code ဢၼ်မီးၶိူင်ႈၵမ်ႉထႅမ်တဵမ်ထူၼ်ႈ (မိူၼ် Android Studio) |
| **Compiler** | တူဝ်ပိၼ်ႇ Code ႁႂ်ႈပဵၼ် Application / Keyboard ဢၼ်ၸႂ်ႉၵၢၼ်လႆႈ |
| **Source Code** | ၾိုင််း Script ဢၼ်ႁဝ်းတႅမ်ႈ Logic Keyboard ဝႆႉ |
| **Stack** | ၸၼ်ႉၵၢၼ်ႁဵတ်းၵၢၼ် တႄႇတီႈတႅမ်ႈ Code တေႃႇပေႃးၸႂ်ႉလႆႈ |
| **Binary Files** | File ဢၼ် Computer လူလႆႈ (မိူၼ်ၼင်ႇ `.kmx`, `.js`) |

**Summary:** ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းလႆႈႁူႉၸၵ်းလွင်ႈ **Keyman Stack** ဢၼ်မီး Source Code, Compiler လႄႈ Engine။ ႁဝ်းလႆႈႁဵၼ်းႁူႉလွင်ႈၸတ်းၵၢၼ် **Project Structure** ႁႂ်ႈမၼ်းပဵၼ်ပိူင် (source, build, resources) လႄႈ လွင်ႈၸႂ်ႉတူဝ် **Keyman Developer IDE** တႃႇတႄႇၼႃႈၵၢၼ်ႁဝ်းယဝ်ႉ။

---