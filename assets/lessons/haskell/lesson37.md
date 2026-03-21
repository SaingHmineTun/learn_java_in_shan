## **Lesson 37: The 'Map' Function: Transforming Every Element**

**`map`** ပဵၼ် Higher-order function ဢၼ်ႁပ်ႉဢဝ် **Function ၼိုင်ႈဢၼ်** လႄႈ **List ၼိုင်ႈဢၼ်** သေ ဢဝ် Function ၼၼ်ႉၵႂႃႇ "ၸႂ်ႉ" (Apply) တင်းၵူႈတူဝ်ၼႂ်း List ၼၼ်ႉၶႃႈ။

### **1. Type Signature**
`map :: (a -> b) -> [a] -> [b]`

* **`(a -> b)`**: Function ဢၼ်လႅၵ်ႈလၢႆႈ Type `a` ႁႂ်ႈပဵၼ် Type `b`။
* **`[a]`**: List ဢၼ်ႁဝ်းပၼ်ၶဝ်ႈၵႂႃႇ။
* **`[b]`**: List မႂ်ႇ ဢၼ်လႅၵ်ႈလၢႆႈယဝ်ႉတူဝ်ႈ။



---

### **2. တူဝ်ယၢင်ႇၵၢၼ်ၸႂ်ႉတႄႉ**

**ၵ. ၵၢၼ်ၼပ်ႉတူဝ်ၼပ်ႉ:**
ဢဝ်တူဝ်ၼပ်ႉၼႂ်း List တင်းหมด မႃးၼပ်ႉတင်း 2။
```haskell
ghci> map (*2) [1, 2, 3, 4, 5]
[2, 4, 6, 8, 10]
```

**ၶ. ၵၢၼ်ၸတ်းၵၢၼ် String:**
ဢဝ်ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း ပိၼ်ႇပဵၼ်တူဝ်လိၵ်ႈလူင် (လူဝ်ႇ `import Data.Char`)။
```haskell
import Data.Char (toUpper)

ghci> map toUpper "sai mao"
"SAI MAO"

ghci> map (map toUpper) ["sai", "mao", "tmk"]
["SAI", "MAO", "TMK"]
```

**င. ၵၢၼ်ၸႂ်ႉတင်း Tuples:**
ဢဝ်ၵူပ်ႉတူဝ်ၼပ်ႉ `(x, y)` မႃး ပวก ၵၼ်။
```haskell
ghci> map (\(x,y) -> x + y) [(1,2), (3,4), (5,6)]
[3, 7, 11]
```

---

### **3. Map vs. List Comprehension**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈလၢတ်ႈၼႄလုၵ်ႈႁဵၼ်းဝႃႈ `map` ၼႆႉ မၼ်းမိူၼ်ၵၼ်တင်း **List Comprehension** ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼၼ်ႉၶႃႈ။

* **Map:** `map (+3) [1, 2, 3]`
* **Comprehension:** `[x + 3 | x <- [1, 2, 3]]`

**ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ Map?**
ၵွပ်ႈဝႃႈ `map` မၼ်းလူပွင်ႇၸႂ်ငၢႆႈလိူဝ် မိူဝ်ႈႁဝ်းသူင်ႇ Function ၶဝ်ႈၵႂႃႇ၊ လႄႈ မၼ်းပဵၼ် Higher-order function ဢၼ်ၸၢင်ႈဢဝ်ၵႂႃႇၸပ်းတင်း Function တၢင်ႇဢၼ်လႆႈငၢႆႈၶႃႈ။



---

### **Teacher's Lab: "Grade Multiplier"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Code တွၼ်ႈတႃႇ "ထႅမ် Grade" ပၼ်လုၵ်ႈႁဵၼ်းတင်းหมด 0.5 ၶႃႈ:

```haskell
increaseGrades :: [Float] -> [Float]
increaseGrades grades = map (+0.5) grades

-- ghci> increaseGrades [3.0, 3.5, 2.8] --> [3.5, 4.0, 3.3]
```

---

### **Summary for TMK Students:**
* **`map`**: ၸႂ်ႉတွၼ်ႈတႃႇ **လႅၵ်ႈလၢႆႈ (Transform)** ၵူႈတူဝ်ၼႂ်း List။
* မၼ်းတေဢွၵ်ႇမႃးပဵၼ် List မႂ်ႇ ဢၼ်မီး **တၢင်းယၢဝ်းမိူၼ်ၵဝ်ႇ**။
* ပဵၼ် Function ဢၼ်ၸဝ်ႈၶူးတေလႆႈၸႂ်ႉၼမ်သုတ်း ၼႂ်းၵၢၼ်ၸတ်းၵၢၼ် Data ၶႃႈ။

