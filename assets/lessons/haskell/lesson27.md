## **Lesson 26: Tail Recursion and Performance Optimization**

### **1. Standard Recursion vs. Tail Recursion**
ၼႂ်း Lesson 22 ႁဝ်းတႅမ်ႈ `sum' (x:xs) = x + sum' xs`။ ၼႆႉႁွင်ႉဝႃႈ **Standard Recursion** ၶႃႈ။
* **ပၼ်ႁႃ:** Haskell တေလႆႈ "ၵင်ႈဝႆႉ" (Wait) ၵႃႈၶၼ် `x` တင်းหมด ၼႂ်း Memory (Stack) တေႃႇပေႃးထိုင် Base Case ၸင်ႇဢဝ်မႃး ပวก ၵၼ်ၶိုၼ်း။ သင် List ယၢဝ်းၼမ်လိူဝ်ႁႅင်း မၼ်းတေ Error ၶႃႈ။

**Tail Recursion** သမ်ႉ ပဵၼ်လၢႆးတႅမ်ႈ ဢၼ်ႁဝ်း "ၼပ်ႉၵႂႃႇၸွမ်းလၢႆး" သေ ဢမ်ႇလူဝ်ႇၵင်ႈသင်ဝႆႉၶႃႈ။



### **2. ၵၢၼ်ၸႂ်ႉ Accumulator (တူဝ်ၵဵပ်းႁွမ်)**
တွၼ်ႈတႃႇႁဵတ်း Tail Recursion ႁဝ်းတိုၼ်းတေလႆႈမီး Parameter ထႅင်ႈတူဝ်ၼိုင်ႈ ဢၼ်ႁွင်ႉဝႃႈ **Accumulator** (တူဝ်ၵဵပ်းၵႃႈၶၼ်ဝႆႉၸူဝ်ႈၵပ်း) ၶႃႈ။

**တူဝ်ယၢင်ႇ: `sum` ဢၼ်ဝႆး (Tail Recursive Sum)**
```haskell
sumFast :: [Int] -> Int
sumFast xs = helper xs 0  -- တႄႇတီႈ 0
  where
    helper [] acc     = acc             -- Base Case: ပၼ်ၵႃႈၶၼ်ဢၼ်ႁွမ်ဝႆႉဢွၵ်ႇမႃး
    helper (x:xs) acc = helper xs (acc + x) -- Recursive Step: ဢဝ် x သႂ်ႇၼႂ်း acc ၵမ်းလဵဝ်
```
* **လၢႆးဝူၼ်ႉ:** မိူၼ်ၼင်ႇႁဝ်း "ၵဵပ်းသႅင်" သႂ်ႇၼႂ်းထုင်ၵႂႃႇၸွမ်းတၢင်း။ ပေႃးထိုင်တီႈသုတ်းယဝ်ႉၵေႃႈ ၵူၺ်းယိူၼ်းထုင်ၼၼ်ႉပၼ်ၵူၺ်း၊ ဢမ်ႇလူဝ်ႇလႅၼ်ႈၶိုၼ်းတၢင်းၵဝ်ႇၶႃႈ။

### **3. Accumulator Pattern ၼႂ်း Haskell**
လုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** လူဝ်ႇတွၼ်းမတ်ႉဝႆႉဝႃႈ:
1.  တိုၼ်းတေလႆႈမီး **Helper Function** (Function ၸွႆႈ)။
2.  တိုၼ်းတေလႆႈမီး **Accumulator (`acc`)** တႃႇၵဵပ်းၽွၼ်းလႅၼ်ႈ။
3.  ၵၢၼ်ႁွင်ႉ Recursive တေလႆႈပဵၼ် "ဢၼ်လိုၼ်းသုတ်း" ၼႂ်းထႅဝ် Code (Tail Position)။



### **4. Strictness Optimization (`seq` ဢမ်ႇၼၼ် `$!`)**
ၵွပ်ႈဝႃႈ Haskell ပဵၼ် **Lazy** (ၶี้ၵဵတ်း)၊ မၢင်ပွၵ်ႈမၼ်းတေ "ၵင်ႈ" ၵၢၼ်ၼပ်ႉ `acc + x` ဝႆႉသေ ႁဵတ်းႁႂ်ႈ Memory တႅမ်ထႅင်ႈၶႃႈ။ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`$!`** (Strict application) တႃႇၸိသင်ႇႁႂ်ႈမၼ်း "ၼပ်ႉၵမ်းလဵဝ်" ၶႃႈ။

```haskell
sumSuperFast :: [Int] -> Int
sumSuperFast xs = helper xs 0
  where
    helper [] acc     = acc
    helper (x:xs) acc = helper xs $! (acc + x) -- ၼပ်ႉ (acc + x) ၵမ်းလဵဝ် ဢမ်ႇၵင်ႈဝႆႉ
```

---

### **Teacher's Lab: "Factorial with Accumulator"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းတႅမ်ႈ `factorial` ၶိုၼ်း လူၺ်ႈၸႂ်ႉ Tail Recursion တွၼ်ႈတႃႇၼပ်ႉတူဝ်ၼပ်ႉဢၼ်ယႂ်ႇယႂ်ႇၶႃႈ:

```haskell
factorialFast :: Integer -> Integer
factorialFast n = helper n 1
  where
    helper 0 acc = acc
    helper n acc = helper (n - 1) (n * acc)
```

---

### **Summary of Module 3 (The Art of Recursion)**
1.  **Recursion Mindset:** မေႃတတ်းပၼ်ႁႃယႂ်ႇ ႁႂ်ႈပဵၼ်တွၼ်ႈဢွၼ်ႇ။
2.  **Base Case & Recursive Step:** မေႃတႅမ်ႈ "ၽၵ်းတူဢွၵ်ႇ" တွၼ်ႈတႃႇၵိုတ်း Program။
3.  **List Algorithms:** မေႃတႅမ်ႈ `sum`, `maximum`, `replicate` လႄႈ `QuickSort`။
4.  **Performance:** မေႃၸႂ်ႉ **Tail Recursion** လႄႈ **Accumulator** တႃႇႁႂ်ႈ Code ဝႆး။

---
