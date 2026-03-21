## **Lesson 36: Higher-Order Basics: Functions as Parameters**

**Higher-Order Function** ပဵၼ် Function ဢၼ်မီးၼမ်ႉၵတ်ႉ 2 ယိူင်ႈ:
1.  **ႁပ်ႉဢဝ် Function** တၢင်ႇဢၼ် ပဵၼ် Parameter။
2.  **ပၼ်ဢွၵ်ႇ (Return) Function** ပဵၼ်ၽွၼ်းလႅၼ်ႈ။

### **1. လၢႆးတႅမ်ႈ Type Signature**
မိူဝ်ႈႁဝ်းၶႂ်ႈလၢတ်ႈၼႄဝႃႈ Parameter တူဝ်ၼိုင်ႈပဵၼ် Function ၼၼ်ႉ ႁဝ်းတိုၼ်းတေလႆႈၸႂ်ႉ **ဝူင်ႇၵွတ်ႇ `()`** ၶႃႈ။

**တူဝ်ယၢင်ႇ: `applyTwice` (ႁဵတ်းၵၢၼ် 2 ပွၵ်ႈ)**
Function ၼႆႉ တေႁပ်ႉဢဝ် Function ၼိုင်ႈဢၼ် (`f`) လႄႈ ၵႃႈၶၼ်ၼိုင်ႈဢၼ် (`x`) သေ ဢဝ် `f` မႃးႁဵတ်းၵၢၼ်တင်း `x` သွင်ပွၵ်ႈၶႃႈ။

```haskell
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)
```
* **`(a -> a)`**: ၼႆႉပဵၼ် Parameter တူဝ်ထူၼ်ႈၼိုင်ႈ ဢၼ်ပဵၼ် Function ၶႃႈ။
* **`a`**: ၼႆႉပဵၼ် Parameter တူဝ်ထူၼ်ႈသွင်။



---

### **2. တူဝ်ယၢင်ႇၵၢၼ်ၸႂ်ႉတႄႉ**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** ထတ်းတူၺ်းၼႂ်း GHCi ၼင်ႇၼႆၶႃႈ:

```haskell
-- ဢဝ်တူဝ်ၼပ်ႉ 10 မႃးထႅမ် 3 သွင်ပွၵ်ႈ (10 + 3 + 3)
ghci> applyTwice (+3) 10
16

-- ဢဝ် String "TMK" မႃးသိုပ်ႇ "!" သွင်ပွၵ်ႈ
ghci> applyTwice (++ "!") "TMK"
"TMK!!"

-- ဢဝ် List [1] မႃးသိုပ်ႇ [2,3] သွင်ပွၵ်ႈ
ghci> applyTwice (++ [2,3]) [1]
[1,2,3,2,3]
```

---

### **3. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉလၢႆးၼႆႉ?**
ၸဝ်ႈၶူး **Sai Mao** လူဝ်ႇသပ်းလႅင်းၼႄဝႃႈ: "မၼ်းႁဵတ်းႁႂ်ႈ Code ႁဝ်း **Generic** သုတ်းၶႃႈဢေႃႈ"။
* ႁဝ်းတႅမ်ႈ `applyTwice` ၵမ်းလဵဝ်ၵူၺ်း၊ ၵူၺ်းၵႃႈ ႁဝ်းၸၢင်ႈၸႂ်ႉမၼ်းတွၼ်ႈတႃႇ "ပวกတူဝ်ၼပ်ႉ", "သိုပ်ႇတူဝ်လိၵ်ႈ", ဢမ်ႇၼၼ် "စီႇလႅၼ်း List" လႆႈတင်းหมด လူၺ်ႈၵူၺ်းလႅၵ်ႈလၢႆႈ Function ဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇၼၼ်ႉၶႃႈ။

---

### **Teacher's Lab: "The Custom Operator"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function ဢၼ်ၸိုဝ်ႈဝႃႈ `operateOnTwo` ဢၼ်တေႁပ်ႉဢဝ် Function ၼိုင်ႈဢၼ် သေ ဢဝ်မႃးၸႂ်ႉတင်းတူဝ်ၼပ်ႉ 2 တူဝ်ၶႃႈ:

```haskell
operateOnTwo :: (Int -> Int -> Int) -> Int -> Int -> Int
operateOnTwo f x y = f x y

-- လၢႆးၸႂ်ႉ:
-- operateOnTwo (+) 5 10 --> 15
-- operateOnTwo (*) 5 10 --> 50
-- operateOnTwo (-) 100 20 --> 80
```



---

### **Summary for TMK Students:**
* **Higher-Order Function**: Function ဢၼ်ၸၢင်ႈ "သူင်ႇ" လႄႈ "ႁပ်ႉ" Function တၢင်ႇဢၼ်။
* **Abstraction**: ႁဵတ်းႁႂ်ႈ Code ႁဝ်းသႅၼ်ႈသႂ်ႇ လႄႈ ၸၢင်ႈၸႂ်ႉလႆႈၵူႈမဵဝ်း (Reusable)။
* **Parentheses `()`**: တိုၼ်းတေလႆႈၸႂ်ႉ ၼႂ်း Type Signature တွၼ်ႈတႃႇလၢတ်ႈဝႃႈ "ၼႆႉပဵၼ် Function ဢေႃႈ"။
