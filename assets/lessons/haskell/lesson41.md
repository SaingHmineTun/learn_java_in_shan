## **Lesson 41: Function Composition: Linking Functions with (.)**

**Function Composition** ပဵၼ်ၵၢၼ်ဢဝ် Function သွင်ဢၼ်မႃး "ႁူမ်ႈၵၼ်" ႁႂ်ႈပဵၼ် Function မႂ်ႇတူဝ်လဵဝ်ၶႃႈ။

### **1. ပိူင်တႅမ်ႈ (The Dot Operator)**
ၼႂ်းပၢႆးၼပ်ႉ ႁဝ်းတႅမ်ႈ $(f \circ g)(x)$၊ ၼႂ်း Haskell သမ်ႉႁဝ်းတႅမ်ႈ:
`(f . g) x` ဢၼ်မီးတီႈပွင်ႇမိူၼ်ၵၼ်တင်း `f (g x)` ၶႃႈ။

* **လၢႆးမၼ်းႁဵတ်းၵၢၼ်:** မၼ်းတေဢဝ် Parameter `x` သႂ်ႇၼႂ်း `g` (တူဝ်ၽၢႆႇၶႂႃ) ယဝ်ႉ ၸင်ႇဢဝ်ၽွၼ်းလႅၼ်ႈမၼ်း သူင်ႇတေႃႇပၼ် `f` (တူဝ်ၽၢႆႇသၢႆႉ) ၶႃႈဢေႃႈ။



---

### **2. တူဝ်ယၢင်ႇၵၢၼ်ၸႂ်ႉတႄႉ**

**ၵ. ၵၢၼ်ၼပ်ႉတူဝ်ၼပ်ႉ:**
ၶႂ်ႈဢဝ်တူဝ်ၼပ်ႉၼႂ်း List မႃး "ၼပ်ႉတင်း 2" ယဝ်ႉ "လႆႈလႅၵ်ႈလၢႆႈပဵၼ်တူဝ်လົບ" (-x)။
```haskell
-- လၢႆးတႅမ်ႈထူၼ်ႈ: negate (abs 5)
-- လၢႆးၸႂ်ႉ Composition:
ghci> (negate . abs) 5
-5
ghci> (negate . abs) (-10)
-10
```

**ၶ. ၵၢၼ်ၸတ်းၵၢၼ် List:**
ၶႂ်ႈ "ပိၼ်ႇၽၢႆႇ" (Reverse) List ယဝ်ႉ ၸင်ႇဢဝ်ၵူၺ်း "တူဝ်ၼႃႈသုတ်း" (Head)။
```haskell
-- လၢႆးတႅမ်ႈၵဝ်ႇ: head (reverse [1..5])
-- လၢႆးၸႂ်ႉ Composition:
ghci> (head . reverse) [1..5]
5
```



---

### **3. Point-Free Style (ၵၢၼ်တႅမ်ႈဢမ်ႇလူဝ်ႇ Parameter)**
ၼႆႉပဵၼ်လၢႆးတႅမ်ႈဢၼ် Professional သုတ်းၶႃႈ။ ၸဝ်ႈၶူး ဢမ်ႇလူဝ်ႇတႅမ်ႈ Parameter `x` ၵေႃႈယဝ်ႉ၊ ၵူၺ်းပိုတ်ႇတီႈပွင်ႇ Function ၶဝ်ႈၵၼ်ၵမ်းလဵဝ်ၶႃႈ။

* **လၢႆးတႅမ်ႈထမ်ႇမတႃႇ:** `fn x = ceiling (negate (tan (cos x)))`
* **Point-Free Style:** `fn = ceiling . negate . tan . cos`

> **Note:** လၢႆးၼႆႉ ၸွႆႈႁႂ်ႈလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** ဝူၼ်ႉလွင်ႈ "Function ႁဵတ်းသင်" (What it does) လိူဝ်သေ "Data ပဵၼ်သင်" (What the data is) ၶႃႈ။

---

### **Teacher's Lab: "The Formatter"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function `formatText` ဢၼ်တေ:
1. ဢဝ် String မႃးပိၼ်ႇပဵၼ် "တူဝ်လိၵ်ႈလူင်" (toUpper)။
2. ယဝ်ႉၵေႃႈ "ပိၼ်ႇၽၢႆႇ" (reverse) မၼ်းၶႃႈ။

```haskell
import Data.Char (toUpper)

-- လၢႆးတႅမ်ႈ Point-Free
formatText :: String -> String
formatText = reverse . map toUpper

-- ghci> formatText "sai mao" --> "OAM IAS"
```

---

### **Summary for TMK Students:**
* **`.` (Dot)**: ၸႂ်ႉတွၼ်ႈတႃႇသိုပ်ႇ Function ၶဝ်ႈၵၼ်။
* **လုၵ်ႉၶႂႃမႃးသၢႆႉ**: Function ၽၢႆႇၶႂႃတေႁဵတ်းၵၢၼ်ဢွၼ်ႇတၢင်း။
* **Point-Free**: ႁဵတ်းႁႂ်ႈ Code သႅၼ်ႈသႂ်ႇ လႄႈ လူပွင်ႇၸႂ်ငၢႆႈ (သင်ဢမ်ႇသိုပ်ႇၵၼ်ၼမ်လိူဝ်ႁႅင်း)။
