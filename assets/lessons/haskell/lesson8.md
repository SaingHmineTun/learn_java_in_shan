## **Lesson 8: Anatomy of a Function (Parameters and Space Syntax)**

ၼႂ်း Java ႁဝ်းတေတႅမ်ႈ `add(5, 10)`။ ၵိူတ်ႇမႃးပဵၼ် Haskell ယဝ်ႉ ႁဝ်းတေ **ဢမ်ႇၸႂ်ႉ ဝူင်ႇၵွတ်ႇ `()`** လႄႈ **ဢမ်ႇၸႂ်ႉ ၸုၼ် ` , `** တႃႇၸႅၵ်ႇ Parameters ၶႃႈ။

### **1. Space Syntax (လၢႆးၸႂ်ႉ "ၶွင်ႇဝၢင်ႇ")**
ၼႂ်း Haskell ႁဝ်းၸႂ်ႉ **"ၶွင်ႇဝၢင်ႇ" (Space)** တႃႇႁွင်ႉၸႂ်ႉ Function ၶႃႈ။
* **Java:** `sum(10, 20)`
* **Haskell:** `sum 10 20`



### **2. လၢႆးပိုတ်ႇ Function (Defining a Function)**
ႁႂ်ႈပိုတ်ႇ VS Code သေ တႅမ်ႈ Code ၸိူဝ်းၼႆႉသႂ်ႇၼႂ်း File `Lesson8.hs` ၶႃႈ:

```haskell
-- Function ဢၼ်ဢဝ်တူဝ်ၼပ်ႉမႃး ထႅမ် (Double) ၵၼ်
doubleMe x = x + x

-- Function ဢၼ်ဢဝ်တူဝ်ၼပ်ႉ 2 တူဝ်မႃး ပွင်း ၵၼ်
addNumbers x y = x + y
```

* **`doubleMe`** လႄႈ **`addNumbers`** ပဵၼ် ၸိုဝ်ႈ Function။
* **`x`** လႄႈ **`y`** ပဵၼ် Parameters (ၶေႃႈမုၼ်းဢၼ်ႁဝ်းသႂ်ႇၶဝ်ႈၵႂႃႇ)။
* **`=`** ပဵၼ်ၵၢၼ်ပိုတ်ႇဝႃႈ Function ၼႆႉ တေႁဵတ်းသင် (Body)။

### **3. Type Signatures (ၵၢၼ်လၢတ်ႈၼႄ Type)**
တွၼ်ႈတႃႇပဵၼ် Professional ၼၼ်ႉ ႁဝ်းလူဝ်ႇလၢတ်ႈၼႄဝႃႈ Function ႁဝ်း ဢဝ် Type သင်ၶဝ်ႈသေ ဢွၵ်ႇပဵၼ် Type သင်ၶႃႈ။ ႁဝ်းတေၸႂ်ႉ သင်ႇၵေႇတႃႇ **`->`** ၶႃႈဢေႃႈ။

```haskell
-- တီႈပွင်ႇ: ဢဝ် Int ၶဝ်ႈ 1 တူဝ် -> ဢွၵ်ႇမႃးပဵၼ် Int
doubleMe :: Int -> Int
doubleMe x = x + x

-- တီႈပွင်ႇ: ဢဝ် Int ၶဝ်ႈ 2 တူဝ် -> ဢွၵ်ႇမႃးပဵၼ် Int
addNumbers :: Int -> Int -> Int
addNumbers x y = x + y
```

> **ၾၢင်ႉ:** တူဝ်လိုၼ်းသုတ်း ဝၢႆးသေ `->` ၼၼ်ႉ တိုၼ်းပဵၼ် **Output** (ၵႃႈၶၼ်ဢၼ်ဢွၵ်ႇမႃး) ယူႇသေႇသေႇၶႃႈ။



### **4. လၢႆးႁွင်ႉၸႂ်ႉ (Calling Functions)**
ဝၢႆးသေ Save File ယဝ်ႉ၊ ႁႂ်ႈလူတ်ႇ `:l Lesson8.hs` ၼႂ်း GHCi သေ တႅမ်ႈထတ်းတူၺ်းၼင်ႇၼႆၶႃႈ:
```haskell
ghci> doubleMe 5
10
ghci> addNumbers 10 20
30
```

---

### **Functions within Functions**
ႁဝ်းၸၢင်ႈဢဝ် Function ၼိုင်ႈဢၼ် ၵႂႃႇၸႂ်ႉၼႂ်း Function တၢင်ႇဢၼ်လႆႈၶႃႈ:
```haskell
doubleUs x y = doubleMe x + doubleMe y
```
လၢႆးႁဵတ်းၼႆ တေႁဵတ်းႁႂ်ႈ Code ႁဝ်းသႅၼ်ႈသႂ်ႇသေ ဢမ်ႇလႆႈတႅမ်ႈ Code ဢၼ်ၵဝ်ႇလၢႆပွၵ်ႈၶႃႈ။

---

**Summary for TMK Students:**
* **ဢမ်ႇၸႂ်ႉ `()`** တႃႇႁွင်ႉ Function။
* **ၸႂ်ႉ "ၶွင်ႇဝၢင်ႇ" (Space)** တႃႇၸႅၵ်ႇ Parameters။
* **`->`** ၼႂ်း Type Signature ပဵၼ်ၵၢၼ်လၢတ်ႈဝႃႈ ၶဝ်ႈ (Input) သေ ဢွၵ်ႇ (Output)။