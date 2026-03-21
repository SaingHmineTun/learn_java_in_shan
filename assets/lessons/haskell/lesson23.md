## **Lesson 23: Recursion with Lists (Maximum and Sum)**

မိူဝ်ႈႁဝ်းၸတ်းၵၢၼ်တင်း List လူၺ်ႈ Recursion ၼၼ်ႉ ႁဝ်းတိုၼ်းတေၸႅၵ်ႇ List ဢွၵ်ႇပဵၼ် **`x:xs`** (Head : Tail) ယူႇသေႇသေႇၶႃႈ။

### **1. ၵၢၼ်ႁႃၵႃႈၶၼ်သုင်သုတ်း (Maximum)**
လၢႆးဝူၼ်ႉ Recursive ပုၼ်ႈတႃႇႁႃ `maximum` ၼႂ်း List ၼိုင်ႈဢၼ်:
* **Base Case:** သင် List မီးတူဝ်လဵဝ် `[x]` ၼႆ ၵႃႈၶၼ်သုင်သုတ်းၵေႃႈ ပဵၼ် `x` ၼၼ်ႉယဝ်ႉ။
* **Recursive Step:** ၵႃႈၶၼ်သုင်သုတ်း ပဵၼ်ၵႃႈၶၼ်ဢၼ် "ယႂ်ႇလိူဝ်" (Max) ၼႂ်းၵႄႈ **တူဝ်ၼႃႈသုတ်း (Head)** လႄႈ **ၵႃႈၶၼ်သုင်သုတ်း ၶေႃႈတူဝ်ဢၼ်ၵိုတ်း (Tail)**။

```haskell
maximum' :: (Ord a) => [a] -> a
-- 1. Base Case: မီးတူဝ်လဵဝ်
maximum' [x] = x

-- 2. Recursive Step: ၸႅၵ်ႇ (x:xs) သေ ထတ်းတူၺ်းတူဝ်လႂ်ယႂ်ႇလိူဝ်
maximum' (x:xs) = max x (maximum' xs)
```



**လၢႆးမၼ်းႁဵတ်းၵၢၼ်:**
သင်ႁဝ်းသႂ်ႇ `maximum' [2, 5, 1]`
1. `max 2 (maximum' [5, 1])`
2. `max 2 (max 5 (maximum' [1]))`
3. `max 2 (max 5 1)`
4. `max 2 5` $\rightarrow$ **Result: 5**

---

### **2. ၵၢၼ်ၼပ်ႉပวกတင်းหมด (Sum)**
ႁဝ်းႁဵၼ်းမႃးဢိတ်းဢိတ်းယဝ်ႉ ၼႂ်း Lesson 22၊ တေႃႈလဵဝ်ႁဝ်းတေမႃးတႅမ်ႈမၼ်းႁႂ်ႈတႅတ်ႈတေႃးၶႃႈ။

```haskell
sum' :: (Num a) => [a] -> a
-- Base Case: List လၢႆ ၵႃႈၶၼ်ပဵၼ် 0
sum' [] = 0

-- Recursive Step: Head + Sum(Tail)
sum' (x:xs) = x + sum' xs
```



---

### **3. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ (Ord a) လႄႈ (Num a)?**
ၸဝ်ႈၶူး **Sai Mao** လူဝ်ႇသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
* **`(Ord a)`**: ပဵၼ်ၵၢၼ်လၢတ်ႈဝႃႈ Type `a` ၼႆႉ တိုၼ်းတေလႆႈပဵၼ်မဵဝ်းဢၼ် "တႅတ်ႈထတ်း/ၼိူင်းၵၼ်" (Compare) လႆႈ (မိူၼ်ၼင်ႇ Int, Float) ၵွပ်ႈႁဝ်းၸႂ်ႉ Function `max` ၶႃႈ။
* **`(Num a)`**: ပဵၼ်ၵၢၼ်လၢတ်ႈဝႃႈ Type `a` ၼႆႉ တိုၼ်းတေလႆႈပဵၼ် "တူဝ်ၼပ်ႉ" ၵွပ်ႈႁဝ်းၸႂ်ႉၵၢၼ်ပวก `+` ၶႃႈ။

---

### **Teacher's Lab: "Product of a List"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းတႅမ်ႈ Function ဢၼ်ၸိုဝ်ႈဝႃႈ `product'` တွၼ်ႈတႃႇဢဝ်တူဝ်ၼပ်ႉၼႂ်း List မႃး "ၼပ်ႉ" (Multiply) ၵၼ်တင်းหมดၶႃႈ:
* **Base Case:** သင် List လၢႆ ႁႂ်ႈပၼ် `1` (ၵွပ်ႈဝႃႈ $n \times 1 = n$)။
* **Recursive Step:** `x * product' xs`

```haskell
product' :: (Num a) => [a] -> a
product' [] = 1
product' (x:xs) = x * product' xs
```

---

**Summary for TMK Students:**
* **List Recursion** တိုၼ်းတေၸႂ်ႉ Pattern **`(x:xs)`**။
* **Base Case** ပဵၼ်တွၼ်ႈဢၼ်ငၢႆႈသုတ်း (မိူၼ်ၼင်ႇ `[]` ဢမ်ႇၼၼ် `[x]`)။
* **Recursive Step** ႁွင်ႉ Function ဢၼ်ၵဝ်ႇ ၵႂႃႇၸူး Tail ၶေႃႈ List။

တေႃႈလဵဝ် ႁဝ်းတေၵႂႃႇႁဵၼ်းလၢႆး "သၢင်ႈ List မႂ်ႇ" လႄႈ "တတ်း List" လူၺ်ႈၸႂ်ႉ Recursion ၼႂ်း **Lesson 24: More List Recursion (Replicate and Take)** ၼၼ်ႉႁႃႉၶႃႈ?