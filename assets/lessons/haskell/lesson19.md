## **Lesson 19: List Pattern Matching (The Power of x:xs)**

မိူဝ်ႈႁဝ်းတႅမ်ႈ Function ဢၼ်ႁပ်ႉဢဝ် List ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႅၵ်ႇမၼ်းဢွၵ်ႇပဵၼ် **"တူဝ်ၼႃႈသုတ်း"** လႄႈ **"တူဝ်ဢၼ်ၵိုတ်းဝႆႉတင်းหมด"** လႆႈငၢႆႈငၢႆႈၶႃႈ။

### **1. ပိူင်တႅမ်ႈ `(x:xs)`**
* **`x`**: ပဵၼ် **Head** (တူဝ်ၼႃႈသုတ်းတူဝ်လဵဝ် - Item)။
* **`xs`**: ပဵၼ် **Tail** (တူဝ်ဢၼ်ၵိုတ်းဝႆႉတင်းလင် - Remaining List)။
* **`()`**: ႁဝ်းတိုၼ်းတေလႆႈၸႂ်ႉ ဝူင်ႇၵွတ်ႇ ႁေႃႇမၼ်းဝႆႉ ၼႂ်း Pattern Matching ၶႃႈဢေႃႈ။



### **2. တူဝ်ယၢင်ႇ: Function တႃႇထတ်းတူၺ်းတူဝ်ၼႃႈသုတ်း**
ႁဝ်းတႅမ်ႈ Function `tellMe` တွၼ်ႈတႃႇလၢတ်ႈၼႄဝႃႈ List ၼၼ်ႉမီးသင်ဝႆႉၶႃႈ:

```haskell
tellMe :: [Int] -> String
tellMe []       = "This list is empty!"              -- Case 1: List ဢၼ်လၢႆ
tellMe [x]      = "This list has one element: " ++ show x -- Case 2: မီးတူဝ်လဵဝ်
tellMe (x:y:[]) = "This list has two elements: " ++ show x ++ " and " ++ show y -- Case 3: မီး 2 တူဝ်
tellMe (x:xs)   = "This list is long. The first element is: " ++ show x -- Case 4: မီးလၢႆလၢႆတူဝ်
```

* **`[]`**: ထတ်းတူၺ်းဝႃႈ ပဵၼ် List ဢၼ်လၢႆႁႃႉ?
* **`[x]`**: ပဵၼ် Syntactic Sugar ၶေႃႈ `(x:[])` (မီးတူဝ်လဵဝ်)။
* **`(x:xs)`**: ႁပ်ႉဢဝ် List ဢၼ်မီးတူဝ်ၼပ်ႉ 1 တူဝ်ၶိုၼ်းၼိူဝ် (မၼ်းတေၸႅၵ်ႇ `x` ဢွၵ်ႇမႃးပၼ်ႁဝ်းၵမ်းလဵဝ်)။

---

### **3. ၵၢၼ်တႅမ်ႈ Function `head` လႄႈ `length` လူၺ်ႈမိုဝ်း**
ႁဝ်းၸၢင်ႈတႅမ်ႈ Function ပိုၼ်ႉထၢၼ် ၸိူဝ်းၼႆႉၶိုၼ်း လူၺ်ႈၸႂ်ႉ Pattern Matching ၶႃႈ:

```haskell
-- တႅမ်ႈ head ၶိုၼ်း (Custom version)
myHead :: [a] -> a
myHead []    = error "Can't call head on an empty list!"
myHead (x:_) = x -- ဢဝ်ၵူၺ်း x (Head), တူဝ်ဢၼ်ၵိုတ်း _ (Tail) ဢမ်ႇလူဝ်ႇသႂ်ႇၸႂ်

-- တႅမ်ႈ length ၶိုၼ်း (လူၺ်ႈၸႂ်ႉ Recursion - တေႁဵၼ်းၼႂ်း Module 3)
-- ၵူၺ်းၵႃႈ လၢႆးဝူၼ်ႉမၼ်းပဵၼ်:
myLength :: [a] -> Int
myLength []     = 0
myLength (_:xs) = 1 + myLength xs
```



---

### **4. ၶေႃႈသတိ (The Empty List Case)**
လုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** လူဝ်ႇတွၼ်းမတ်ႉဝႆႉဝႃႈ:
* **`(x:xs)`** ၼႆႉ မၼ်းတိုၼ်းတေလႆႈမီး တူဝ်ၼပ်ႉ **ယၢင်ႇဢေႇသုတ်း 1 တူဝ်** ၶႃႈ။
* သင်ႁဝ်းသႂ်ႇ `[]` (List ဢၼ်လၢႆ) ၶဝ်ႈၵႂႃႇၼႂ်း Pattern `(x:xs)` ၼႆ မၼ်းတေ **Error** ၵမ်းလဵဝ် ၵွပ်ႈဝႃႈမၼ်းဢမ်ႇမီး `x` (Head) တွၼ်ႈတႃႇတေၸႅၵ်ႇဢွၵ်ႇမႃးၼၼ်ႉၶႃႈ။
* ၵွပ်ႈၼၼ် ႁဝ်းလူဝ်ႇတႅမ်ႈထႅဝ် `[]` ဝႆႉၽၢႆႇၼိူဝ်သုတ်း တွၼ်ႈတႃႇၵႅတ်ႇၶႄ (Safety) ၶႃႈဢေႃႈ။

---

### **Teacher's Lab for TMK Students**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းတႅမ်ႈ Function ဢၼ်ၸိုဝ်ႈဝႃႈ `firstTwoSum` တွၼ်ႈတႃႇဢဝ်တူဝ်ၼႃႈသုတ်း 2 တူဝ် မႃး ပวก ၵၼ်:

```haskell
firstTwoSum :: [Int] -> Int
firstTwoSum (x:y:_) = x + y
firstTwoSum _       = 0 -- သင်မီးတူဝ်ၼပ်ႉဢေႇသေ 2 တူဝ် ႁႂ်ႈပၼ် 0
```

---

**Summary for TMK Students:**
* **`(x:xs)`**: ပဵၼ်လၢႆးၸႅၵ်ႇ List (Head : Tail)။
* **`x`**: ပဵၼ် Item တူဝ်လဵဝ်၊ **`xs`**: ပဵၼ် List ဢၼ်ၵိုတ်း။
* ၸႂ်ႉတႃႇတႅမ်ႈ Function ဢၼ်ၸတ်းၵၢၼ်တင်း List လႆႈၵူႈမဵဝ်း။