## Lesson 45: The Stack vs. The Heap: Memory Layout

မိူဝ်ႈပူဝ်ႇၵရႅမ်ႇ C ႁဵတ်းၵၢၼ်၊ OS တေၸႅၵ်ႇ Memory ပဵၼ် 4 တွၼ်ႈလူင်ၶႃႈ:



### 1. The Stack (ၵၢၼ်ၸတ်းၵၢၼ်ဢွၼ်ႇ)
**Stack** ပဵၼ်ဢွင်ႈတီႈၵဵပ်း **Local Variables** လႄႈ **Function Calls** ၶႃႈ။
* **လၢႆးႁဵတ်းၵၢၼ်:** ၸႂ်ႉပိူင် **LIFO** (Last-In, First-Out)။ မိူၼ်ၼင်ႇ "ၵွင်ၸၢၼ်ႇ" (Stack of plates)၊ ဢၼ်သႂ်ႇလိုၼ်းသုတ်း တေလႆႈဢွၵ်ႇဢွၼ်တၢင်းသုတ်းၶႃႈ။
* **Automatic:** မိူဝ်ႈ Function ယဝ်ႉတူဝ်ႈ၊ Variable တင်းသဵင်ႈၼႂ်း Stack တေထုၵ်ႇ "ယႃႉပႅတ်ႈ" ႁင်းၵူၺ်းမၼ်း။
* **သႅၼ်း:** မီးသႅၼ်းဢွၼ်ႇ လႄႈ တႅတ်ႈတေႃး (Fixed size)။ သင်ၸႂ်ႉၼမ်ပူၼ်ႉတီႈ တေပဵၼ် **Stack Overflow** ၶႃႈယဝ်ႉ။

### 2. The Heap (ၵၢၼ်ၸတ်းၵၢၼ်ယႂ်ႇ)
**Heap** ပဵၼ်ဢွင်ႈတီႈ "ဝၢင်ႇ" တွၼ်ႈတႃႇ **Dynamic Memory Allocation** (Lesson 40) ၶႃႈ။
* **လၢႆးႁဵတ်းၵၢၼ်:** ႁဝ်းၸႂ်ႉ `malloc()` တႃႇၶေႃ လႄႈ `free()` တႃႇၶိုၼ်းပၼ်။
* **Manual:** OS တေဢမ်ႇယႃႉပႅတ်ႈပၼ်ႁင်းမၼ်း၊ ၸဝ်ႈၵဝ်ႇတေလႆႈၵုမ်းၵမ်ႁင်းၵူၺ်း။
* **သႅၼ်း:** မီးသႅၼ်းယႂ်ႇ (ၸွမ်းၼင်ႇ RAM တင်းသဵင်ႈမီး)။ မၼ်းၸၢင်ႈ "ယႂ်ႇ" ၶိုၼ်ႈၵႂႃႇတိၵ်းတိၵ်းၶႃႈ။



### 3. Data Segment & Text Segment
* **Data Segment:** ၵဵပ်း **Global** လႄႈ **Static Variables** ဢၼ်ယူႇဝႆႉတေႃႇပေႃးပူဝ်ႇၵရႅမ်ႇပိတ်း။
* **Text (Code) Segment:** ၵဵပ်း "Code Instruction" (Binary code) ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉၶႃႈ။ တွၼ်ႈၼႆႉပဵၼ် Read-only (လူလႆႈၵူၺ်း၊ မႄးဢမ်ႇလႆႈ) ၶႃႈဢေႃႈ။

### 4. Comparison Table

| Feature | **Stack** | **Heap** |
| :--- | :--- | :--- |
| **Allocation** | Automatic by Compiler | Manual by Programmer |
| **Speed** | ၽႂ်းသုတ်း (Fast) | ဢืดႇလိူဝ် (Slower) |
| **Lifetime** | ယူႇၵူၺ်းၼႂ်း Function | ယူႇတေႃႇပေႃး `free()` ဢမ်ႇၼၼ် ပိတ်း App |
| **Structure** | Linear (Orderly) | Hierarchical/Random (Fragmented) |

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
1. Variables ဢွၼ်ႇဢွၼ်ႇ မိူၼ်ၼင်ႇ `int i` ဢမ်ႇၼၼ် `char choice` ႁႂ်ႈယူႇၼႂ်း **Stack**။
2. သဵၼ်ႈမၢႆလုၵ်ႈႁဵၼ်းတင်းႁွင်ႉ (Array of Structs) ဢၼ်မီးၶေႃႈမုၼ်းၼမ်ၼမ် ႁႂ်ႈယူႇၼႂ်း **Heap** လူၺ်ႈၵၢၼ်ၸႂ်ႉ `malloc`။
3. လွင်ႈပွင်ႇၸႂ်ၼႆႉ တေႁဵတ်းႁႂ်ႈၸဝ်ႈၵဝ်ႇ ဝႄႉလႆႈ **Memory Leak** လႄႈ **Segmentation Fault** (ၵၢၼ်ၶဝ်ႈၸူး Memory ၽိတ်းဢွင်ႈတီႈ) ၼၼ်ႉၶႃႈယဝ်ႉ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. တႅမ်ႈ Code ဢၼ်ပိုၼ်ၽၢဝ်ႇ Variable ၼႂ်း `main()` (Stack) လႄႈ ၸႂ်ႉ `malloc` (Heap) သေ ၼႄ "မၢႆလိၵ်ႈ Address" ၶဝ်တင်းသွင်တူၺ်းၶႃႈ။ (ၸဝ်ႈၵဝ်ႇတေႁၼ်ဝႃႈ Address ၶဝ်ၵႆၵၼ်တေႉတေႉၶႃႈ)။
2. ၸၢမ်းတႅမ်ႈ Function ဢၼ်ႁွင်ႉ "တူဝ်မၼ်းၶိုၼ်း" (Recursion) လူၺ်ႈဢမ်ႇမီး Base Case တေႃႇပေႃးပဵၼ် **Stack Overflow**။
3. သင်ႁဝ်းမီး `static int x = 10;` ၼႆ မၼ်းတေယူႇၼႂ်း Stack ႁိုဝ် Heap ၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: ဢမ်ႇယူႇတင်းသွင်၊ မၼ်းတေယူႇၼႂ်း **Data Segment** ၶႃႈ)။

---