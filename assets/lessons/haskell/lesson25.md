## **Lesson 25: The QuickSort Algorithm (Haskell's Elegant Way)**

လၢႆးဝူၼ်ႉၶေႃႈ **QuickSort** ၼႆႉ ပဵၼ်လၢႆး "ၸႅၵ်ႇသေဢုပ်ႇ" (Divide and Conquer) ၶႃႈ။

### **1. လၢႆးဝူၼ်ႉ (The Logic)**
1.  ဢဝ်တူဝ်ၼပ်ႉ **တူဝ်ၼႃႈသုတ်း** (Head) မႃးပဵၼ် **"လၵ်း" (Pivot)**။
2.  ၸႅၵ်ႇတူဝ်ၼပ်ႉဢၼ်ၵိုတ်း (Tail) ဢွၵ်ႇပဵၼ် 2 ၸုမ်း:
    * **Smaller:** တူဝ်ဢၼ်ဢွၼ်ႇသေ (ဢမ်ႇၼၼ် ၵိုင်ႇၵၼ်) တင်း Pivot။
    * **Bigger:** တူဝ်ဢၼ်ယႂ်ႇသေ Pivot။
3.  ႁဵတ်း **QuickSort** ၼိူဝ် 2 ၸုမ်းၼၼ်ႉၶိုၼ်း (Recursion)။
4.  ဢဝ်မႃးသိုပ်ႇၵၼ်: `Sorted Smaller` + `Pivot` + `Sorted Bigger`။



---

### **2. တႅမ်ႈ Code ၼႂ်း Haskell**
ႁႂ်ႈတူၺ်းလၢႆးတႅမ်ႈ ဢၼ်သႅၼ်ႈသႂ်ႇတႄႉတႄႉၼႆႉၶႃႈ:

```haskell
quicksort :: (Ord a) => [a] -> [a]
-- 1. Base Case: List လၢႆ ဢမ်ႇၼၼ် မီးတူဝ်လဵဝ် တိုၼ်းစီႇယဝ်ႉဝႆႉယူႇယဝ်ႉ
quicksort [] = []

-- 2. Recursive Step
quicksort (x:xs) = 
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted  = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted
```



---

### **3. သပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်း တီႈ TMK Academy**
* **`x`**: ပဵၼ် Pivot (တူဝ်လၵ်း) ဢၼ်ႁဝ်းဢဝ်မႃးၼိူင်း။
* **`[a | a <- xs, a <= x]`**: ၼႆႉပဵၼ်ၵၢၼ်ၸႂ်ႉ **List Comprehension** (တွၼ်ႈသွၼ် 16) တႃႇထတ်းလိူၵ်ႈဢဝ်တူဝ်ဢွၼ်ႇ။
* **`quicksort [...]`**: ႁဝ်းႁွင်ႉ Function တူဝ်မၼ်းၶိုၼ်း တွၼ်ႈတႃႇစီႇလႅၼ်းတူဝ်ဢွၼ်ႇ လႄႈ တူဝ်ယႂ်ႇ။
* **`++`**: ဢဝ် List တင်းหมด မႃးသိုပ်ႇၵၼ်ၶိုၼ်း။

---

### **4. တူဝ်ယၢင်ႇ: ၵၢၼ်စီႇလႅၼ်း [5, 1, 9, 4]**
1.  **Pivot = 5**.
2.  **Smaller:** [1, 4], **Bigger:** [9].
3.  `quicksort [1, 4]` + `[5]` + `quicksort [9]`.
4.  (ၼႂ်းတွၼ်ႈ [1, 4] ၼၼ်ႉ 1 တေပဵၼ် Pivot သေ 4 တေၵႂႃႇယူႇၽၢႆႇၶႂႃ)။
5.  **Result:** `[1, 4, 5, 9]`

---

### **Teacher's Secret: Why is it elegant?**
ၼႂ်း Java လုၵ်ႈႁဵၼ်းတေလႆႈဝူၼ်ႉလွင်ႈ "Indices" (မိူၼ်ၼင်ႇ `i`, `j`), လွင်ႈ "Swapping", လႄႈ "While loops" ဢၼ်ယုင်ႈယၢင်ႈ။ ၵူၺ်းၵႃႈ ၼႂ်း Haskell ႁဝ်းတႅမ်ႈ Code ဢၼ်မိူၼ်ၼင်ႇ "ၵႂၢမ်းပိုတ်ႇတီႈပွင်ႇ" (Definition) တႄႉတႄႉၶႃႈ။ မၼ်းလူပွင်ႇၸႂ်ငၢႆႈ လႄႈ တႅတ်ႈတေႃးသုတ်းၶႃႈဢေႃႈ။

---

**Summary for TMK Students:**
* **QuickSort** ၸႂ်ႉလၵ်းၵၢၼ် **Divide and Conquer**။
* ၸႂ်ႉ **List Comprehension** တႃႇၸႅၵ်ႇ Data။
* ၸႂ်ႉ **Recursion** တႃႇစီႇလႅၼ်းတွၼ်ႈဢွၼ်ႇတွၼ်ႈယႂ်ႇ။
* Code ဢၼ်ယဝ်ႉတူဝ်ႈၼႂ်း 5 ထႅဝ်ၼႆႉ ပဵၼ်လွင်ႈၼႄ "ဢဵၼ်ႁႅင်း" Haskell ၶႃႈယဝ်ႉ။