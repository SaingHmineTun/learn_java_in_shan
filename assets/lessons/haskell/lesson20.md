## **Lesson 20: As-Patterns (Keeping the Whole while Matching Parts with @)**

**As-Patterns** ၼႆႉ ၸွႆႈႁႂ်ႈႁဝ်း "ၸႅၵ်ႇ" (Split) ၶေႃႈမုၼ်းဢွၵ်ႇပဵၼ်တွၼ်ႈ သေတႃႉၵေႃႈ တိုၵ်ႉ "သိမ်း" (Keep) ၸိုဝ်ႈၶေႃႈမုၼ်းတင်းဢၼ်ဝႆႉယူႇၶႃႈ။

### **1. ပိူင်တႅမ်ႈ (Syntax)**
ႁဝ်းတေတႅမ်ႈ "ၸိုဝ်ႈဢၼ်ႁဝ်းပၼ်" သေၸပ်းတင်း **`@`** ဝႆႉၽၢႆႇၼႃႈ Pattern ႁဝ်းၶႃႈ။
`name @ (x:xs)`

* **`name`**: ပဵၼ်ၸိုဝ်ႈတႅၼ်း List တင်းဢၼ် (The Whole)။
* **`(x:xs)`**: ပဵၼ်လၢႆးၸႅၵ်ႇဢဝ် Head လႄႈ Tail (The Parts)။



---

### **2. တူဝ်ယၢင်ႇ: Function တႃႇလၢတ်ႈၼႄတူဝ်ၼႃႈသုတ်း**
သင်ႁဝ်းၶႂ်ႈတႅမ်ႈ Function ဢၼ်လၢတ်ႈဝႃႈ "List တင်းဢၼ်ပဵၼ် [1,2,3] သေ တူဝ်ၼႃႈသုတ်းပဵၼ် 1" ၼႆ ႁဝ်းၸၢင်ႈတႅမ်ႈၼင်ႇၼႆၶႃႈ:

```haskell
firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
```

* **`all`**: တေသိမ်းၵႃႈၶၼ် `"Shan"` တင်းဢၼ်ဝႆႉ။
* **`x`**: တေသိမ်းၵူၺ်းတူဝ် `'S'`။
* **ၽွၼ်းလႅၼ်ႈ:** `firstLetter "Shan"` $\rightarrow$ `"The first letter of Shan is S"`

---

### **3. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ As-Patterns?**
1. **Readable Code:** ႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူပွင်ႇၸႂ်ငၢႆႈ ၵွပ်ႈဝႃႈႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `(x:xs)` ၶိုၼ်းလၢႆလၢႆပွၵ်ႈ ၼႂ်း Equation ႁဝ်းၶႃႈ။
2. **Performance:** Haskell ဢမ်ႇလူဝ်ႇသၢင်ႈ List မႂ်ႇၶိုၼ်း ၵွပ်ႈမၼ်းမီးၸိုဝ်ႈ `all` တႅၼ်းဝႆႉယဝ်ႉ။



---

### **Teacher's Lab for TMK Students**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းတႅမ်ႈ Function ဢၼ်ၸိုဝ်ႈဝႃႈ `validateList` တွၼ်ႈတႃႇထတ်းတူၺ်းဝႃႈ:
* သင် List တႄႇလူၺ်ႈတူဝ်ၼပ်ႉ `1` ၼႆ ႁႂ်ႈပၼ် List တင်းဢၼ်ၼၼ်ႉဢွၵ်ႇမႃး။
* သင်ဢမ်ႇၸႂ်ႈ ႁႂ်ႈပၼ် List ဢၼ်လၢႆ `[]`။

```haskell
validateList :: [Int] -> [Int]
validateList [] = []
validateList original@(1:_) = original
validateList _ = []
```

---

### **Summary of Module 2 (Lists and Pattern Matching)**
ယၢမ်းလဵဝ် လုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** တေလႆႈမေႃ:
1. သၢင်ႈ List လူၺ်ႈၸႂ်ႉ **Cons `:`** လႄႈ **Ranges `..`**။
2. ၸတ်းၵၢၼ်ၶေႃႈမုၼ်းလူၺ်ႈၸႂ်ႉ **List Comprehension**။
3. တႅမ်ႈ Code ဢၼ်သႅၼ်ႈသႂ်ႇလူၺ်ႈၸႂ်ႉ **Pattern Matching**။
4. ၸႅၵ်ႇ List ဢွၵ်ႇပဵၼ်တွၼ်ႈလူၺ်ႈၸႂ်ႉ **`(x:xs)`** လႄႈ **As-Patterns `@`**။

---