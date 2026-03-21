## **Lesson 24: More List Recursion (Replicate and Take)**

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးတႅမ်ႈ Function ပိုၼ်ႉထၢၼ် 2 ဢၼ် ဢၼ်ႁဝ်းယိၼ်းၸိုဝ်ႈမၼ်းမႃးယဝ်ႉၼၼ်ႉၶိုၼ်းၶႃႈ။

### **1. `replicate'` (ၵၢၼ်သၢင်ႈတူဝ်ၼပ်ႉသိုပ်ႇၵၼ်)**
Function ၼႆႉ တေဢဝ်တူဝ်ၼပ်ႉ `n` (ပွၵ်ႈ) လႄႈ ၵႃႈၶၼ် `x` သေ သၢင်ႈ List ဢၼ်မီး `x` ယၢဝ်းၵႃႈၼၼ်ႉၶႃႈ။

* **Base Case:** သင် `n <= 0` ႁႂ်ႈပၼ် List ဢၼ်လၢႆ `[]`။
* **Recursive Step:** ဢဝ် `x` သိုပ်ႇတင်း (`:`) ၵၢၼ်ႁွင်ႉ `replicate'` ဢၼ်မီး `n - 1`။

```haskell
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0    = []                -- Base Case
    | otherwise = x : replicate' (n-1) x  -- Recursive Step
```



**လၢႆးမၼ်းႁဵတ်းၵၢၼ်:** `replicate' 3 7`
1. `7 : replicate' 2 7`
2. `7 : (7 : replicate' 1 7)`
3. `7 : (7 : (7 : replicate' 0 7))`
4. `7 : (7 : (7 : []))` $\rightarrow$ **[7, 7, 7]**

---

### **2. `take'` (ၵၢၼ်တတ်းဢဝ်တွၼ်ႈၼႃႈ)**
Function ၼႆႉ တေဢဝ်တူဝ်ၼပ်ႉ `n` တူဝ် ဢွၵ်ႇမႃးလုၵ်ႉတီႈ List ဢၼ်ႁဝ်းပၼ်ၶႃႈ။

* **Base Case 1:** သင် `n <= 0` ႁႂ်ႈပၼ် `[]` (ဢမ်ႇလူဝ်ႇဢဝ်သင်ယဝ်ႉ)။
* **Base Case 2:** သင် List ဢၼ်လၢႆ `[]` ႁႂ်ႈပၼ် `[]` (ဢမ်ႇမီးသင်ႁႂ်ႈဢဝ်)။
* **Recursive Step:** ဢဝ် **Head (x)** သိုပ်ႇတင်း ၵၢၼ်ႁွင်ႉ `take'` ဢၼ်မီး `n - 1` လႄႈ **Tail (xs)**။

```haskell
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _ | n <= 0 = []             -- Base Case 1
take' _ []         = []             -- Base Case 2
take' n (x:xs)     = x : take' (n-1) xs -- Recursive Step
```



---

### **3. Guards vs Pattern Matching**
ၼႂ်း Code ၽၢႆႇၼိူဝ်ၼၼ်ႉ ႁဝ်းၸႂ်ႉ **Guards (`|`)** ၸွမ်းတင်း Pattern Matching ၶႃႈ။ ၸဝ်ႈၶူး **Sai Mao** လူဝ်ႇလၢတ်ႈၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
* **Pattern Matching** ၸွႆႈထတ်း "ပိူင်" (မိူၼ်ၼင်ႇ `[]` ဢမ်ႇၼၼ် `x:xs`)။
* **Guards** ၸွႆႈထတ်း "Logic" (မိူၼ်ၼင်ႇ `n <= 0`)။
* မိူဝ်ႈၸႂ်ႉၸွမ်းၵၼ် မၼ်းႁဵတ်းႁႂ်ႈ Recursion ႁဝ်း "ၵႅတ်ႇၶႄ" (Safe) လိူဝ်သေၵဝ်ႇၶႃႈ။

---

### **Teacher's Lab: "Reverse a List"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းတႅမ်ႈ Function ဢၼ်ၸိုဝ်ႈဝႃႈ `reverse'` တွၼ်ႈတႃႇပိၼ်ႇ List ၽၢႆႇလင်မႃးၽၢႆႇၼႃႈၶႃႈ:
* **Base Case:** သင် List လၢႆ `[]` ႁႂ်ႈပၼ် `[]`။
* **Recursive Step:** ဢဝ် `reverse' xs` (Tail ဢၼ်ပိၼ်ႇယဝ်ႉ) မႃးသိုပ်ႇတင်း `[x]` (Head) ဝႆႉၽၢႆႇလင်။

```haskell
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]
```

---

**Summary for TMK Students:**
* **`replicate'`**: ၸႂ်ႉတူဝ်ၼပ်ႉ `n` တႃႇၵိုတ်း (Count down)။
* **`take'`**: ၸႂ်ႉတင်းတူဝ်ၼပ်ႉ `n` လႄႈ List `x:xs` တွၼ်ႈတႃႇတတ်းဢဝ်ၶေႃႈမုၼ်း။
* Recursion ၸၢင်ႈၸႂ်ႉ **Guards (`|`)** တႃႇထတ်းတူၺ်း Case ယၢပ်ႇယၢပ်ႇလႆႈၶႃႈ။