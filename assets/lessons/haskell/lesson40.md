## **Lesson 40: Folds (Foldl and Foldr): The Ultimate List Reducer**

**Fold** ၼႆႉ မၼ်းမိူၼ်ၼင်ႇႁဝ်း "မူၼ်ႇ" (Fold) ၸေႈၶႃႈ။ မၼ်းတေဢဝ်တူဝ်ၼပ်ႉၼႂ်း List မႃး "ၵိၼ်" သႂ်ႇၼႂ်း Accumulator (တူဝ်ၵဵပ်းႁွမ်) ၵမ်းတူဝ်တူဝ် ၶႃႈဢေႃႈ။

### **1. Foldl (Fold Left - ႁူပ်ႇၽၢႆႇသၢႆႉ)**
**`foldl`** တေတႄႇႁဵတ်းၵၢၼ်လုၵ်ႉၽၢႆႇ **သၢႆႉၵႂႃႇၶႂႃ** ၶႃႈ။
`foldl (function) (accumulator) (list)`



**တူဝ်ယၢင်ႇ: ၵၢၼ်ၼပ်ႉ Sum**
```haskell
ghci> foldl (+) 0 [1, 2, 3]
-- လၢႆးမၼ်းဝူၼ်ႉ: ((0 + 1) + 2) + 3 = 6
```

### **2. Foldr (Fold Right - ႁူပ်ႇၽၢႆႇၶႂႃ)**
**`foldr`** တေတႄႇႁဵတ်းၵၢၼ်လုၵ်ႉၽၢႆႇ **ၶႂႃမႃးသၢႆႉ** ၶႃႈ။
`foldr (function) (accumulator) (list)`



**တူဝ်ယၢင်ႇ: ၵၢၼ်ၼပ်ႉ Sum**
```haskell
ghci> foldr (+) 0 [1, 2, 3]
-- လၢႆးမၼ်းဝူၼ်ႉ: 1 + (2 + (3 + 0)) = 6
```

---

### **3. တေၸႂ်ႉလႂ်လီ? (Foldl vs Foldr)**
ၸဝ်ႈၶူး **Sai Mao** လူဝ်ႇသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** ဝႃႈ:

* **`foldr`**: ပဵၼ်ဢၼ်ႁဝ်း "ၵူၺ်းၸႂ်ႉယူႇတႃႇသေႇ" (Most common)။ မၼ်းၸၢင်ႈၸႂ်ႉတင်း **Infinite Lists** (Lesson 15) လႆႈ ၵွပ်ႈဝႃႈ Haskell ပဵၼ် Lazy ၶႃႈ။
* **`foldl`**: မၢင်ပွၵ်ႈမၼ်းတေၸႂ်ႉ Memory ၼမ် (Stack Space)။ သင်ၶႂ်ႈလႆႈ Performance ဢၼ်လီ ႁဝ်းတေၸႂ်ႉ **`foldl'`** (လုၵ်ႉတီႈ `Data.List`) ၶႃႈ။



---

### **4. တူဝ်ယၢင်ႇ: ၵၢၼ်ပိၼ်ႇ List (Reverse)**
ႁဝ်းၸၢင်ႈၸႂ်ႉ `foldl` တႃႇပိၼ်ႇ List လႆႈငၢႆႈငၢႆႈၶႃႈ:

```haskell
reverse' :: [a] -> [a]
reverse' xs = foldl (\acc x -> x : acc) [] xs

-- ghci> reverse' [1, 2, 3] --> [3, 2, 1]
```
*(လၢႆးဝူၼ်ႉ: ဢဝ်တူဝ်မႂ်ႇ 'x' မႃးဝႆႉၽၢႆႇၼႃႈ 'acc' ယူႇသေႇသေႇ မိူဝ်ႈႁဝ်းႁူပ်ႇၵႂႃႇၽၢႆႇၶႂႃ)*

---

### **Teacher's Lab: "The Count"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function တွၼ်ႈတႃႇ "ၼပ်ႉ" ဝႃႈမီးတူဝ်ၼပ်ႉၵႃႈႁိုဝ် ၼႂ်း List လူၺ်ႈၸႂ်ႉ `foldr` ၶႃႈ:

```haskell
length' :: [a] -> Int
length' xs = foldr (\_ acc -> acc + 1) 0 xs

-- ghci> length' ["Sai", "Mao", "TMK"] --> 3
```

---

### **Summary for TMK Students:**
* **Fold**: ၸႂ်ႉတႃႇ "ႁူပ်ႇ" List ႁႂ်ႈၵိုတ်းၵႃႈၶၼ်တူဝ်လဵဝ်။
* **Accumulator**: ပဵၼ်ၵႃႈၶၼ်ဢၼ်ႁွမ်ဝႆႉ (မိူၼ်ၼင်ႇ တႄႇတီႈ 0 ဢမ်ႇၼၼ် `[]`)။
* **Foldr**: ၸႂ်ႉၼမ်သုတ်း လႄႈ ၵႅတ်ႇၶႄသုတ်း ၼႂ်း Haskell။
