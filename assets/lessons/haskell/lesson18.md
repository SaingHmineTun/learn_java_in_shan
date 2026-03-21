## **Lesson 18: Pattern Matching Basics (Matching Constants and Variables)**

**Pattern Matching** ၼႆႉ ပဵၼ်ၵၢၼ်ပိုတ်ႇ Function လၢႆလၢႆ "ထႅဝ်" (Lines) ၶႃႈ။ Haskell တေထတ်းတူၺ်း လုၵ်ႉၽၢႆႇၼိူဝ် လင်းၵႂႃႇၽၢႆႇတႂ်ႈ၊ သင်မၼ်း "ၵိုင်ႇၵၼ်" (Match) တင်းထႅဝ်လႂ်ၵေႃႈ မၼ်းတေပၼ်ႇၵၢၼ်ထႅဝ်ၼၼ်ႉၶႃႈ။

### **1. Matching Constants (ထတ်းတူၺ်းၵႃႈၶၼ်ၼိမ်)**
ႁဝ်းၸၢင်ႈတႅမ်ႈ Function ဢၼ်တွပ်ႇၵႂၢမ်း ပႅၵ်ႇပိူင်ႈၵၼ် ၸွမ်းလူၺ်ႈ Input ဢၼ်သႂ်ႇၶဝ်ႈမႃးၶႃႈ။

```haskell
-- Function တႃႇပိၼ်ႇတူဝ်ၼပ်ႉ ပဵၼ်ၶေႃႈၵႂၢမ်း
sayNumber :: Int -> String
sayNumber 1 = "One!"
sayNumber 2 = "Two!"
sayNumber 3 = "Three!"
sayNumber x = "Not 1, 2, or 3" -- (Catch-all pattern)
```
* သင်ႁဝ်းသႂ်ႇ `1` မၼ်းတေတွပ်ႇ `"One!"`။
* သင်ႁဝ်းသႂ်ႇ `5` မၼ်းတေတူၺ်းထႅဝ် 1, 2, 3 ဢမ်ႇၸႂ်ႉယဝ်ႉၵေႃႈ မၼ်းတေၵႂႃႇတူၵ်းတီႈ `x` (Variable) ဢၼ်တေႁပ်ႉဢဝ်ၵႃႈၶၼ်တင်းหมดၼၼ်ႉၶႃႈ။



---

### **2. The Order Matters (ၸၼ်ႉထၢၼ်ႈမၼ်းလွင်ႈယႂ်ႇ)**
Haskell တိုၼ်းတေထတ်းတူၺ်း **ထႅဝ်ၼိူဝ်သုတ်း** ဢွၼ်တၢင်းယူႇသေႇသေႇၶႃႈ။ သင်ႁဝ်းဢဝ်တူဝ် `x` (ဢၼ်ႁပ်ႉတင်းหมด) ဝႆႉၼိူဝ်သုတ်းၼႆ ထႅဝ်တႂ်ႈမၼ်းတေဢမ်ႇမီးၵၢၼ်သင်ယဝ်ႉၶႃႈ။

**Wrong Order:**
```haskell
sayNumber x = "This matches everything!"
sayNumber 1 = "One!" -- (ထႅဝ်ၼႆႉတေဢမ်ႇလႆႈႁဵတ်းၵၢၼ်သေပွၵ်ႈ)
```

---

### **3. Tuple Pattern Matching (ထတ်းတူၺ်းၼႂ်း Tuple)**
ႁဝ်းၸၢင်ႈၸႂ်ႉ Pattern Matching တႃႇၸႅၵ်ႇဢဝ်ၶေႃႈမုၼ်းၼႂ်း Tuple လႆႈငၢႆႈငၢႆႈၶႃႈ (ဢမ်ႇလူဝ်ႇၸႂ်ႉ `fst` ဢမ်ႇၼၼ် `snd`)။

**တူဝ်ယၢင်ႇ:** ဢဝ် Vector 2 ဢၼ်မႃး ပวก ၵၼ်။
```haskell
addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)
```
* **`(x1, y1)`**: Haskell တေၸႅၵ်ႇဢဝ်တူဝ်ၼႃႈပဵၼ် `x1` သေ တူဝ်လင်ပဵၼ် `y1` ပၼ်ႁဝ်းၵမ်းလဵဝ်ၶႃႈ။



---

### **4. The Underscore Wildcard `_`**
သင်ဝႃႈမီး Parameter ဢၼ်ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ (Don't care) ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`_`** တႅၼ်းလႆႈၶႃႈ။ မၼ်းတေၸွႆႈႁႂ်ႈ Haskell ဢမ်ႇလူဝ်ႇသိမ်း Memory ပုၼ်ႈတႃႇ Variable ၼၼ်ႉၶႃႈ။

```haskell
firstElement :: (a, b, c) -> a
firstElement (x, _, _) = x  -- (ႁဝ်းဢဝ်ၵူၺ်းတူဝ်ၼႃႈ၊ တူဝ်လင် 2 တူဝ်ၼၼ်ႉ ဢမ်ႇလူဝ်ႇသႂ်ႇၸႂ်)
```

---

### **Teacher's Lab for TMK Students**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းတႅမ်ႈ Function ဢၼ်ၸိုဝ်ႈဝႃႈ `luckyNumber` ဝႃႈ:
* သင်သႂ်ႇ `7` ၼႆ ႁႂ်ႈတွပ်ႇဝႃႈ `"LUCKY!"`
* သင်သႂ်ႇတူဝ်တၢင်ႇဢၼ် ႁႂ်ႈတွပ်ႇဝႃႈ `"Sorry, try again."`

```haskell
luckyNumber :: Int -> String
luckyNumber 7 = "LUCKY!"
luckyNumber _ = "Sorry, try again."
```

---

**Summary for TMK Students:**
* **Pattern Matching** ပဵၼ်ၵၢၼ်ထတ်းတူၺ်း "ပိူင်" ၶေႃႈမုၼ်း လုၵ်ႉၽၢႆႇၼိူဝ်လူင်းၽၢႆႇတႂ်ႈ။
* **Variables** (`x`, `y`) ၸႂ်ႉတႃႇႁပ်ႉဢဝ်ၵႃႈၶၼ်သင်ၵေႃႈယဝ်ႉ။
* **`_`** (Underscore) ၸႂ်ႉတႃႇၶေႃႈမုၼ်းဢၼ်ႁဝ်း "ဢမ်ႇလူဝ်ႇၸႂ်ႉ"။
* မၼ်းသႅၼ်ႈသႂ်ႇလိူဝ်သေ `if-else` တႄႉတႄႉၶႃႈဢေႃႈ။
