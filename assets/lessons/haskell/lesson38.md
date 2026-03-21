## **Lesson 38: The 'Filter' Function: Keeping What Matters**

**`filter`** ပဵၼ် Higher-order function ဢၼ်ႁပ်ႉဢဝ် **Predicate** (Function ဢၼ်တွပ်ႇ True/False) လႄႈ **List** ၼိုင်ႈဢၼ် သေ တေပၼ်ဢွၵ်ႇမႃးၵူၺ်းတူဝ်ဢၼ်ပဵၼ် `True` ၶႃႈ။

### **1. Type Signature**
`filter :: (a -> Bool) -> [a] -> [a]`

* **`(a -> Bool)`**: Function ဢၼ်ထတ်းတူၺ်းၵႃႈၶၼ် `a` သေ လၢတ်ႈဝႃႈ "ဢဝ်" (`True`) ဢမ်ႇၼၼ် "ဢမ်ႇဢဝ်" (`False`)။
* **`[a]`**: List ဢၼ်ႁဝ်းပၼ်ၶဝ်ႈၵႂႃႇ။
* **`[a]`**: List မႂ်ႇ ဢၼ်မီးၵူၺ်းတူဝ်ဢၼ် "ဢွင်ႇပူၼ်ႉ" ၵၢၼ်ထတ်းလိူၵ်ႈ။



---

### **2. တူဝ်ယၢင်ႇၵၢၼ်ၸႂ်ႉတႄႉ**

**ၵ. ၵၢၼ်လိူၵ်ႈတူဝ်ၼပ်ႉ:**
ဢဝ်ၵူၺ်းတူဝ်ၼပ်ႉ ဢၼ်ယႂ်ႇသေ 5။
```haskell
ghci> filter (>5) [1, 5, 8, 2, 10, 3]
[8, 10]

-- ဢဝ်ၵူၺ်းတူဝ်ၼပ်ႉၵူပ်ႉ (Even numbers)
ghci> filter even [1..10]
[2, 4, 6, 8, 10]
```

**ၶ. ၵၢၼ်ၸတ်းၵၢၼ် String:**
ဢဝ်ၵူၺ်းတူဝ်လိၵ်ႈလူင် (Uppercase) လုၵ်ႉတီႈ String ၼိုင်ႈဢၼ်။
```haskell
import Data.Char (isUpper)

ghci> filter isUpper "TMK Academy Muse"
"TMKAM"
```

**င. ၵၢၼ်ၸႂ်ႉတင်း `null` (ထတ်းဢဝ် List ဢၼ်ဢမ်ႇလၢႆ):**
```haskell
ghci> filter (not . null) ["Sai", "", "Mao", "", "TMK"]
["Sai", "Mao", "TMK"]
```

---

### **3. Filter vs. List Comprehension**
မိူၼ်ၼင်ႇ `map` ၼၼ်ႉၶႃႈ၊ `filter` ၵေႃႈမီးၵၢၼ်ႁဵတ်းၵၢၼ်မိူၼ်ၼင်ႇတွၼ်ႈ "Predicate" ၼႂ်း List Comprehension ၶႃႈ။

* **Filter:** `filter (>5) [1..10]`
* **Comprehension:** `[x | x <- [1..10], x > 5]`

**ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ Filter?**
ၵွပ်ႈဝႃႈ `filter` မၼ်းၸၢင်ႈဢဝ်ၵႂႃႇ "သိုပ်ႇ" (Chain) တင်း Function တၢင်ႇဢၼ်လႆႈငၢႆႈလိူဝ်။ တူဝ်ယၢင်ႇ: `map (*2) (filter (>5) [1..10])` (ထတ်းဢဝ်တူဝ်ယႂ်ႇသေ 5 ယဝ်ႉ ၸင်ႇဢဝ်မႃးၼပ်ႉတင်း 2)။



---

### **Teacher's Lab: "Finding Active Students"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** တႅမ်ႈ Code တွၼ်ႈတႃႇထတ်းဢဝ်ၵူၺ်းလုၵ်ႈႁဵၼ်း ဢၼ်တိုၵ်ႉႁဵၼ်းယူႇ (Active) ၶႃႈ:

```haskell
data Student = Student { name :: String, isActive :: Bool } deriving (Show)

let students = [ Student "Sai" True, Student "Mao" False, Student "Tai" True ]

activeStudents = filter isActive students

-- ၽွၼ်းလႅၼ်ႈ: [Student {name = "Sai", isActive = True}, Student {name = "Tai", isActive = True}]
```

---

### **Summary for TMK Students:**
* **`filter`**: ၸႂ်ႉတွၼ်ႈတႃႇ **လိူၵ်ႈ (Select)** ၶေႃႈမုၼ်း။
* List ဢၼ်ဢွၵ်ႇမႃး တေမီးတၢင်းယၢဝ်း **မိူၼ်ၵဝ်ႇ ဢမ်ႇၼၼ် ဢွၼ်ႇလိူဝ်ၵဝ်ႇ**။
* Predicate Function တိုၼ်းတေလႆႈပၼ်ၽွၼ်းပဵၼ် `Bool` (True/False)။
