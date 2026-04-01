# Lesson 86: Introduction to Streams: The `<fstream>` Library

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
ၼႂ်း C++, ႁဝ်းၸႂ်ႉလွၵ်းလၢႆး ဢၼ်ႁွင်ႉဝႃႈ **Streams** တႃႇသူင်ႇၶေႃႈမုၼ်းၶဝ်ႈ လႄႈ ဢွၵ်ႇ။
* **`cin`** (Standard Input Stream): ႁပ်ႉၶေႃႈမုၼ်းလုၵ်ႉတီႈ Keyboard။
* **`cout`** (Standard Output Stream): သူင်ႇၶေႃႈမုၼ်းၵႂႃႇၼေတီႈ Screen။

တွၼ်ႈတႃႇၸတ်းၵၢၼ်တင်း **Files**, C++ မီး Library ဢၼ်ၸိုဝ်ႈဝႃႈ **`<fstream>`** (File Stream) ၶႃႈဢေႃႈ။



---

### 1. Classes ပိူင်လူင် ၼႂ်း `<fstream>`
တႃႇတေၸတ်းၵၢၼ် File လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ Object ဢၼ်လုၵ်ႉတီႈ 3 Classes ၼႆႉၶႃႈ:

1.  **`ofstream`** (Output File Stream): ၸႂ်ႉတႃႇ **သၢင်ႈ** လႄႈ **တႅမ်ႈ** (Write) ၶေႃႈမုၼ်းသႂ်ႇၼႂ်း File။
2.  **`ifstream`** (Input File Stream): ၸႂ်ႉတႃႇ **ပိုတ်ႇ** လႄႈ **လူ** (Read) ၶေႃႈမုၼ်းလုၵ်ႉတီႈ File။
3.  **`fstream`**: ၸႂ်ႉလႆႈတင်းသွင်မဵဝ်း (တင်း Read လႄႈ Write) ၼႂ်း Object တူဝ်လဵဝ်။

---

### 2. ၶၵ်ႉတွၼ်ႈၵၢၼ်ၸတ်းၵၢၼ် File (The 3 Basic Steps)
ဢမ်ႇဝႃႈၸဝ်ႈၵဝ်ႇတေတႅမ်ႈ ဢမ်ႇၼၼ် တေလူ File၊ ၸဝ်ႈၵဝ်ႇတေလႆႈႁဵတ်းၸွမ်း 3 တွၼ်ႈၼႆႉသေႇသေႇၶႃႈ:

1.  **Open the file**: သိုပ်ႇၵွင်ႉ Object ၶွင်ႁဝ်း ၸူး File တႄႉတႄႉ ဢၼ်မီးၼႂ်း Computer။
2.  **Read/Write**: ႁဵတ်းၵၢၼ်သူင်ႇၶေႃႈမုၼ်း ၸိူင်ႉၼင်ႇၸႂ်ႉ `cin` / `cout`။
3.  **Close the file**: ပိၵ်ႉ File ၶိုၼ်း တႃႇပၼ် System သိမ်းၶေႃႈမုၼ်း လႄႈ ယႃႉ Memory ပဝ်ႇၶိုၼ်း။


---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **`<fstream>`**: ပဵၼ် Library တွၼ်ႈတႃႇၸတ်းၵၢၼ် File I/O။
* **`ofstream`**: တႃႇတႅမ်ႈ (Write)။
* **`ifstream`**: တႃႇလူ (Read)။
* **Open/Close**: ပဵၼ်လွင်ႈလမ်ႇလွင်ႈသုတ်း တႃႇႁႄႉၵင်ႈပၼ်ႁႃၶေႃႈမုၼ်းလူႉ (Data corruption)။

---