# Lesson 55: The Stack vs. The Heap: Understanding Memory Segments

### ၶေႃႈတၢင်ႇလဝ်ႈ (Introduction)
မိူဝ်ႈပရူဝ်ႇၶႅမ်ႇ C++ ႁဵတ်းၵၢၼ်၊ RAM တေလႆႈၸႅၵ်ႇပဵၼ်လၢႆတွၼ်ႈ။ 
တွၼ်ႈဢၼ် Programmer တေလႆႈၵပ်းသိုပ်ႇၼမ်သေပိူၼ်ႈၼၼ်ႉ မီး 2 ဢၼ်: **The Stack** လႄႈ **The Heap** ၶႃႈ။ 
ၵၢၼ်ပွင်ႇၸႂ်လွင်ႈသွင်ဢၼ်ၼႆႉ တေႁဵတ်းႁႂ်ႈၸဝ်ႈၵဝ်ႇ တႅမ်ႈပရူဝ်ႇၶႅမ်ႇ ဢၼ်ၵုမ်းထိင်း Memory လႆႈလီ လႄႈ ဢမ်ႇၸႂ်ႉ RAM ၼမ်လိူဝ်ႁႅင်းၶႃႈ။

---

### 1. The Stack (Memory ပၢၼ်ငၢႆႈ)
**Stack** ပဵၼ်တီႈသိမ်း Variable ပိုၼ်ႉထၢၼ် (Local Variables) ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼႂ်း Function ၶႃႈ။
* **Management**: CPU ပဵၼ်ၵူၼ်းၵုမ်းထိင်းပၼ်ႁင်းၵူၺ်း (Automatic)။
* **Structure**: ၸႂ်ႉပိူင် LIFO (Last-In, First-Out) — မိူၼ်ၼင်ႇ ၵၢၼ်ဝၢင်း ဝၢၼ်ႇ သွၼ်ႉၵၼ်။
* **Lifetime**: မိူဝ်ႈ Function ယဝ်ႉၵႂႃႇ၊ Memory တွၼ်ႈၼႆႉတေ "တၢႆ" (Deallocated) ၵႂႃႇႁင်းၵူၺ်း။
* **Speed**: ဝႆးတႄႉတႄႉ ၵွပ်ႈ CPU ႁူႉတီႈယူႇမၼ်းဝႆႉ။

---

### 2. The Heap (Memory ပၢၼ်လႅတ်း)
**Heap** ပဵၼ် Memory ဢၼ်ယႂ်ႇလူင်၊ ဢၼ် Programmer တေလႆႈပဵၼ်ၵူၼ်း "ယွၼ်းၸႂ်ႉ" (Allocate) လႄႈ "ၶိုၼ်းပၼ်" (Free) ႁင်းၵူၺ်းၶႃႈ။
* **Management**: Programmer ပဵၼ်ၵူၼ်းၵုမ်းထိင်း (Manual)။
* **Structure**: ဢမ်ႇမီးပိူင်တၢႆ၊ မၼ်းမိူၼ်ၼင်ႇ ပၢင်ႇပဵင်းပဝ်ႇ ဢၼ်ႁဝ်းၵႂႃႇလိူၵ်ႈဢဝ်တီႈယူႇလႆႈ ၼင်ႇၵၢင်ၸႂ်။
* **Lifetime**: ယူႇတေႃႇပေႃး Programmer ယႃႉပႅတ်ႈမၼ်း ဢမ်ႇၼၼ် ပရူဝ်ႇၶႅမ်ႇပိၵ်ႉၵႂႃႇ။
* **Speed**: ထိူင်းလိူဝ် Stack ဢိတ်းၼိုင်ႈ ၵွပ်ႈလူဝ်ႇလႆႈႁႃ Address ဢၼ်ပဝ်ႇယူႇ။



---

### 3. Comparison (ၵၢၼ်ၼိူင်းတူၺ်း)

| Feature | The Stack | The Heap |
| :--- | :--- | :--- |
| **Size** | ၵႅပ်ႈ (Limited Size) | ယႂ်ႇ (Large Size) |
| **Allocation** | Automatic (CPU) | Manual (Programmer) |
| **Speed** | Very Fast | Slower |
| **Fragmentation** | ဢမ်ႇမီး | မီးလႆႈ (Memory Fragmentation) |
| **Flexibility** | Fixed size variables | Dynamic size (ယိုတ်းလႆႈ) |

---

### 4. တူဝ်ယၢင်ႇၼႂ်းၶူတ်ႉ

```cpp
void myFunc() {
    int x = 10; // ယူႇၼႂ်း Stack (CPU ၵုမ်းပၼ်)
    
    // ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းဝႆႉၼႂ်း Heap (လူဝ်ႇၸႂ်ႉ Pointer)
    int* p = new int; 
    *p = 20;    // 20 ယူႇၼႂ်း Heap
    
    delete p;   // တေလႆႈယႃႉပႅတ်ႈႁင်းၵူၺ်း (Manual Free)
} // x တေတၢႆၵႂႃႇႁင်းၵူၺ်း၊ ၵူၺ်းၵႃႈ p လူဝ်ႇလႆႈ delete ဢွၼ်တၢင်း
```

---

### ၶေႃႈမၼ်ႈၸႂ် (Summary)
* **Stack**: ဝႆး၊ ၵႅပ်ႈ၊ CPU ၵုမ်းပၼ်။ ၸႂ်ႉတႃႇ Local variables။
* **Heap**: ယႂ်ႇ၊ ထိူင်းဢိတ်းၼိုင်ႈ၊ Programmer တေလႆႈၵုမ်းပၼ်။ ၸႂ်ႉတႃႇ ၶေႃႈမုၼ်းယႂ်ႇယႂ်ႇ ဢမ်ႇၼၼ် ဢၼ်ႁဝ်းဢမ်ႇႁူႉ Size မၼ်းဝႆႉဢွၼ်တၢင်း (မိူၼ်ၼင်ႇ Dynamic Arrays)။
* **Stack Overflow**: ပေႃးႁဝ်းသၢင်ႈ Variable ၼႂ်း Stack ၼမ်လိူဝ်ႁႅင်း (မိူၼ်ၼင်ႇ Array ဢၼ်ယႂ်ႇလူင်)၊ ပရူဝ်ႇၶႅမ်ႇတေ Crash ၵွပ်ႈ Stack တဵမ်ၶႃႈ။

---
