## **Lesson 9: Function Application (How Functions Execute)**

ၼႂ်း Haskell ၼၼ်ႉ Function Application (ၵၢၼ်ၸႂ်ႉ Function) မီးပၵ်းပိူင် ဢၼ်လုၵ်ႈႁဵၼ်းလူဝ်ႇတွၼ်းမတ်ႉဝႆႉ 2 မဵဝ်းလူင်ၶႃႈ။

### **1. Highest Priority (ပၼ်ႁႅင်းသုတ်း)**
ၼႂ်း Math ႁဝ်းႁူႉဝႃႈ ၵၢၼ်ၼပ်ႉ (`*`) မၼ်းမီးႁႅင်းသေ ၵၢၼ်တိုင် (`+`)။ ၵူၺ်းၵႃႈ ၼႂ်း Haskell ၼၼ်ႉ **Function Application (ၵၢၼ်ႁွင်ႉ Function)** မၼ်းမီးႁႅင်းသုတ်း (Highest Precedence) ပူၼ်ႉတင်းမဵဝ်းၶႃႈယဝ်ႉ။

**တူဝ်ယၢင်ႇ:**
```haskell
ghci> f x = x + 2
ghci> f 5 * 10
```
* **မၼ်းတေၼပ်ႉသင်ဢွၼ်ႇ?** မၼ်းတေၼပ်ႉ `f 5` (ဢွၵ်ႇမႃး 7) ယဝ်ႉၵမ်းၼၼ်ႉ ၸင်ႇဢဝ်မႃးၼပ်ႉတင်း `10` ၶႃႈဢေႃႈ။
* **Result:** `70` (ဢမ်ႇၸႂ်ႈ 60 ၶႃႈ)။



### **2. Left-Associative (ပၼ်ႇၵၢၼ်ၽၢႆႇသၢႆႉ)**
မိူဝ်ႈႁဝ်းႁွင်ႉ Function ဢၼ်မီး Parameters လၢႆတူဝ်ၼၼ်ႉ Haskell တေပၼ်ႇၵၢၼ် လုၵ်ႉၽၢႆႇသၢႆႉ ၵႂႃႇၽၢႆႇၶႂႃ (Left to Right) ၶႃႈ။

```haskell
add x y = x + y
-- သင်ႁဝ်းႁွင်ႉ add 5 10
-- Haskell တေႁဵတ်း (add 5) ဢွၼ်တၢင်း၊ ယဝ်ႉၸင်ႇဢဝ် 10 သႂ်ႇၶဝ်ႈၵႂႃႇ။
```
*(ဢၼ်ၼႆႉ ႁဝ်းတေႁဵၼ်းလိုၵ်ႉလိူဝ်ၼႆႉ ၼႂ်းတွၼ်ႈ **Currying** ၶႃႈဢေႃႈ။)*

### **3. Prefix vs Infix (လၢႆးတမ်းဝၢင်း)**
* **Prefix:** ပဵၼ်လၢႆးယူႇၵဝ်ႇ (Default) ဢၼ်ဢဝ် ၸိုဝ်ႈ Function ဝႆႉၽၢႆႇၼႃႈ Parameters (တူဝ်ယၢင်ႇ: `div 10 2`)။
* **Infix:** ပဵၼ်လၢႆးဢဝ် Function ဝႆႉၵၢင် Parameters (မိူၼ်ၼင်ႇ `+`, `-`)။ သင်ႁဝ်းၶႂ်ႈဢဝ် Function ဢၼ်ပဵၼ်တူဝ်လိၵ်ႈ မႃးဝႆႉၵၢင် ႁဝ်းလူဝ်ႇၸႂ်ႉ **Backticks (`` ` ``)** ၶႃႈ။

```haskell
ghci> 10 `div` 2
5
ghci> 10 `mod` 3
1
```
> **Tip:** လၢႆးတႅမ်ႈ `10 `div` 2` ၼႆႉ မၼ်းလူပွင်ႇၸႂ်ငၢႆႈသေ `div 10 2` တႄႉတႄႉၶႃႈ။

### **4. Function as a Value (ၵႃႈၶၼ် Function)**
ၼႂ်း Haskell ၼၼ်ႉ Function ၵေႃႈပဵၼ် "ၵႃႈၶၼ်" (Value) မဵဝ်းၼိုင်ႈ မိူၼ်ၼင်ႇတူဝ်ၼပ်ႉၼၼ်ႉၶႃႈ။ ႁဝ်းၸၢင်ႈဢဝ် Function သႂ်ႇၶဝ်ႈၼႂ်း List ၵေႃႈလႆႈ၊ ဢမ်ႇၼၼ် ပၼ် (Pass) ၵႂႃႇပၼ် Function တၢင်ႇဢၼ်ၵေႃႈလႆႈၶႃႈ။

---

### **လၢႆးၵျၢင်ႉၵမ် (Lab Exercise for Lesson 9)**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းတူၺ်း Code ၼႆႉ သေ တွပ်ႇတူၺ်းဝႃႈ ၽွၼ်းမၼ်းတေဢွၵ်ႇသင်:
```haskell
square x = x * x
result = square 5 + 2
```
သင်လုၵ်ႈႁဵၼ်းတွပ်ႇဝႃႈ **27** ၼႆ မၼ်းၸႂ်ႉယဝ်ႉၶႃႈ! ၵွပ်ႈဝႃႈ `square 5` (25) တေႁဵတ်းၵၢၼ်ဢွၼ်ႇ `+ 2` ၼၼ်ႉၶႃႈ။

---

**Summary for TMK Students:**
* **Function Application** မီးႁႅင်းသုတ်း (Priority #1)။
* **Backticks (`` ` ``)** ၸႂ်ႉတႃႇလႅၵ်ႈ Prefix ပဵၼ် Infix (တူဝ်ယၢင်ႇ: `` `div` ``)။
* Haskell ပၼ်ႇၵၢၼ်လုၵ်ႉၽၢႆႇသၢႆႉၵႂႃႇၽၢႆႇၶႂႃ။

တေႃႈလဵဝ် ႁဝ်းတေၵႂႃႇတူၺ်းလွင်ႈၵၢၼ်ထတ်းသိၼ် ဢၼ်လူဝ်ႇမီး `else` ယူႇသေႇသေႇ ၼႂ်း **Lesson 10: The if-then-else Expression (Mandatory Logic)** ၼၼ်ႉႁႃႉၶႃႈ?