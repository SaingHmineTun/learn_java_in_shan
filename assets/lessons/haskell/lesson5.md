## **Lesson 5: Booleans and Logic (True, False, and Comparisons)**

ၼႂ်း Haskell ၼႆႉ **Boolean** ပဵၼ်ၵၢၼ်တႅတ်ႈထတ်းဝႃႈ "ၸႂ်" (True) ဢမ်ႇၼၼ် "ဢမ်ႇၸႂ်" (False) ၶႃႈ။

### **1. Standard Booleans**
Haskell တေၸႂ်ႉတူဝ်လိၵ်ႈလူင် (Capital Letters) တႃႇတႄႇႁူဝ်မၼ်းယူႇသေႇသေႇၶႃႈ။
* **`True`** (ၸႂ်)
* **`False`** (ဢမ်ႇၸႂ်)
  *(မတ်ႉၸႂ်: သင်တႅမ်ႈ `true` ဢမ်ႇၼၼ် `false` တူဝ်လိၵ်ႈဢွၼ်ႇၼႆ မၼ်းတေ Error ၶႃႈဢေႃႈ။)*

### **2. Comparison Operators (ၵၢၼ်တႅတ်ႈထတ်း)**
ႁဝ်းၸႂ်ႉ Operators ၸိူဝ်းၼႆႉ တႃႇတူၺ်းၵႃႈၶၼ် (Value) 2 ဢၼ်ၶႃႈ။

| Operator | တီႈပွင်ႇ (Meaning) | တူဝ်ယၢင်ႇ (Example) | ၵႃႈၶၼ် (Result) |
| :--- | :--- | :--- | :--- |
| **`==`** | ၵိုင်ႇၵၼ် (Equal) | `5 == 5` | `True` |
| **`/=`** | **ဢမ်ႇၵိုင်ႇၵၼ်** (Not Equal) | `5 /= 4` | `True` |
| **`>`** | ယႂ်ႇသေ (Greater than) | `10 > 5` | `True` |
| **`<`** | ဢွၼ်ႇသေ (Less than) | `3 < 1` | `False` |
| **`>=`** | ယႂ်ႇသေ ဢမ်ႇၼၼ် ၵိုင်ႇၵၼ် | `5 >= 5` | `True` |
| **`<=`** | ဢွၼ်ႇသေ ဢမ်ႇၼၼ် ၵိုင်ႇၵၼ် | `2 <= 1` | `False` |

> **Highlight:** တီႈ Haskell ၼၼ်ႉ "ဢမ်ႇၵိုင်ႇၵၼ်" မၼ်းၸႂ်ႉ **`/=`** ၶႃႈဢေႃႈ။ (ဢမ်ႇမိူၼ် Java ဢၼ်ၸႂ်ႉ `!=`)။ ႁႂ်ႈဝူၼ်ႉဝႃႈမၼ်းမိူၼ် ၶေႃႈၵႂၢမ်း Math $\neq$ ၼၼ်ႉၶႃႈ။



### **3. Logical Operators (ၵၢၼ်ၸွႆႈထတ်း Logic)**
မိူဝ်ႈႁဝ်းမီး Logic လၢႆဢၼ် သမ်ႉၶႂ်ႈဢဝ်မႃးၸွႆႈၵၼ်ၼၼ်ႉ ႁဝ်းၸႂ်ႉ:

* **`&&` (AND):** တေပဵၼ် `True` မိူဝ်ႈ **တင်းသွင်ဢၼ်** ပဵၼ် `True` ၵူၺ်း။
    * `(5 == 5) && (10 > 2)` $\rightarrow$ `True`
* **`||` (OR):** တေပဵၼ် `True` သင်မီး **ဢၼ်ၼိုင်ႈၼိုင်ႈ** ပဵၼ် `True`။
    * `(5 == 1) || (10 > 2)` $\rightarrow$ `True`
* **`not` (NOT):** တႃႇပိၼ်ႇၵႃႈၶၼ် (True $\rightarrow$ False)။
    * `not True` $\rightarrow$ `False`
    * `not (5 == 1)` $\rightarrow$ `True`

---

### **4. ၵၢၼ်ၸႂ်ႉၼႂ်း GHCi**
လုၵ်ႈႁဵၼ်းၸၢင်ႈတႅမ်ႈထတ်းတူၺ်း ၼင်ႇၼႆၶႃႈ:
```haskell
ghci> 5 /= 4
True
ghci> (1 == 1) && (2 == 3)
False
ghci> not (10 < 1)
True
```

---

**Summary for TMK Students:**
* **`True` / `False`** တိုၼ်းတႄႇလူၺ်ႈတူဝ်လိၵ်ႈလူင်။
* **`/=`** ပဵၼ် "ဢမ်ႇၵိုင်ႇၵၼ်" (Not equal)။
* **`&&`, `||`, `not`** ပဵၼ် Logic ပိူင်လူင်။
