## **Lesson 49: The Monoid Typeclass: Identity and Associativity**

**Monoid** ပဵၼ် Typeclass ဢၼ်လၢတ်ႈဝႃႈ Type ၼိုင်ႈဢၼ် "မေႃဢဝ်မႃးႁူမ်ႈၵၼ်" (Combine) သေ မီးၵႃႈၶၼ် "ပိုၼ်ႉထၢၼ်" (Empty/Identity) ဢၼ်ၼိုင်ႈၶႃႈ။

### **1. ပၵ်းပိူင် 2 ဢၼ် (The Two Rules)**
တွၼ်ႈတႃႇတေပဵၼ် Monoid လႆႈၼၼ်ႉ တိုၼ်းတေလႆႈမီး 2 ယိူင်ႈၼႆႉၶႃႈ:
1.  **`mempty` (Identity)**: ၵႃႈၶၼ် "လၢႆ" ဢၼ်ဢဝ်ၵႂႃႇႁူမ်ႈတင်းသင်ၵေႃႈ တေဢွၵ်ႇမႃးတူဝ်ၼၼ်ႉၶိုၼ်း (မိူၼ်ၼင်ႇ $n + 0 = n$)။
2.  **`mappend` (Associativity)**: လၢႆးဢဝ်မႃးႁူမ်ႈၵၼ် လူၺ်ႈၸႂ်ႉသင်ႇၵေႇတႃႇ **`<>`** ၶႃႈ (မိူၼ်ၼင်ႇ $(a + b) + c = a + (b + c)$)။



---

### **2. တူဝ်ယၢင်ႇ: List ပဵၼ် Monoid**
List ပဵၼ်တူဝ်ယၢင်ႇဢၼ်ငၢႆႈသုတ်းၶႃႈ:
* **`mempty`**: ပဵၼ် List လၢႆ `[]`။
* **`<>`**: ပဵၼ်ၵၢၼ်သိုပ်ႇ List `++`။

```haskell
ghci> [1, 2] <> [3, 4]
[1, 2, 3, 4]

ghci> [1, 2, 3] <> mempty
[1, 2, 3]
```

---

### **3. တူဝ်ယၢင်ႇ: တူဝ်ၼပ်ႉ (Sum လႄႈ Product)**
တူဝ်ၼပ်ႉ (Numbers) ၼႆႉ မၼ်းမီးလၢႆးႁူမ်ႈၵၼ် 2 မဵဝ်း (ပวก လႄႈ ၼပ်ႉ)၊ ၵွပ်ႈၼၼ် Haskell ၸင်ႇၸႅၵ်ႇမၼ်းဢွၵ်ႇပဵၼ် **Wrapper Types** ၶႃႈ:

* **Sum**: ၸႂ်ႉတွၼ်ႈတႃႇ "ပวก" ($1 + 2 = 3$)။
    * `mempty` ပဵၼ် `0`။
* **Product**: ၸႂ်ႉတွၼ်ႈတႃႇ "ၼပ်ႉ" ($2 \times 3 = 6$)။
    * `mempty` ပဵၼ် `1`။

```haskell
import Data.Monoid

ghci> getSum $ Sum 5 <> Sum 10
15

ghci> getProduct $ Product 5 <> Product 10
50
```



---

### **4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Monoid?**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1. **Generic Combination**: ႁဝ်းၸၢင်ႈတႅမ်ႈ Function ဢၼ် "ႁူမ်ႈ List တင်းหมด" ႁႂ်ႈပဵၼ်တူဝ်လဵဝ် လူၺ်ႈၸႂ်ႉ **`mconcat`** ၶႃႈ။
2. **Safety**: မၼ်းပၼ်ၵၢၼ်မၢၼ်ႇမႅၼ်ႈဝႃႈ ဢမ်ႇဝႃႈႁဝ်းတေႁူမ်ႈလုၵ်ႉၽၢႆႇလႂ်ၵေႃႈယဝ်ႉ ၽွၼ်းလႅၼ်ႈတိုၼ်းတေမိူၼ်ၵၼ်ၶႃႈ။

---

### **Teacher's Lab: "The String Monoid"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function ဢၼ်တေဢဝ်ၸိုဝ်ႈ "လုၵ်ႈႁဵၼ်း" (Student Name) လႄႈ "ၸိုဝ်ႈႁူင်းႁဵၼ်း" (School Name) မႃးႁူမ်ႈၵၼ် လူၺ်ႈၸႂ်ႉ Monoid Operator ၶႃႈ:

```haskell
combineNames :: String -> String -> String
combineNames name school = name <> " from " <> school

-- ghci> combineNames "Sai Mao" "TMK Academy" 
-- "Sai Mao from TMK Academy"
```

---

### **Summary for TMK Students:**
* **Monoid**: Type ဢၼ်မေႃ "ႁူမ်ႈၵၼ်"။
* **`mempty`**: ၵႃႈၶၼ် "ပိုၼ်ႉထၢၼ်" (Empty state)။
* **`<>`**: သင်ႇၵေႇတႃႇတွၼ်ႈတႃႇဢဝ်မႃးႁူမ်ႈၵၼ် (Append)။
* **Rules**: တိုၼ်းတေလႆႈမီး Identity လႄႈ Associativity ယူႇသေႇသေႇ။
