## **Lesson 11: Scoping with let and where (Local Definitions)**

ၼႂ်း Haskell ၼၼ်ႉ ႁဝ်းတေဢမ်ႇလႅၵ်ႈလၢႆႈ Variable လႆႈ၊ ၵူၺ်းၵႃႈ ႁဝ်းၸၢင်ႈ "ပိုတ်ႇၸိုဝ်ႈမႂ်ႇ" ဝႆႉၼႂ်း Function ၼိုင်ႈဢၼ် တွၼ်ႈတႃႇဢဝ်မႃးၸႂ်ႉၼႂ်း Function ၼၼ်ႉၵူၺ်းၶႃႈ။

### **1. ၵၢၼ်ၸႂ်ႉ `where` (Defining After)**
`where` ၼႆႉ ပဵၼ်လၢႆးတႅမ်ႈ ဢၼ်ႁဝ်းတႅမ်ႈ Equation လူင်ႁဝ်းဢွၼ်တၢင်း ယဝ်ႉၸင်ႇမႃးပိုတ်ႇတီႈပွင်ႇ (Definitions) ဝႆႉၽၢႆႇတႂ်ႈမၼ်းၶႃႈ။ 
မၼ်းမိူၼ်ၼင်ႇ "ၵႂၢမ်းတႅမ်ႈမၢႆဝႆႉ" ၽၢႆႇတႂ်ႈၼၼ်ႉၶႃႈ။

**တူဝ်ယၢင်ႇ:** ၵၢၼ်ၼပ်ႉ BMI
```haskell
calcBmi :: Double -> Double -> String
calcBmi weight height = if bmi <= 18.5 then "Underweight" else "Healthy"
    where bmi = weight / height ^ 2
```
* **ၽွၼ်းလီ:** မၼ်းႁဵတ်းႁႂ်ႈ Equation ပိူင်လူင်ႁဝ်း လူပွင်ႇၸႂ်ငၢႆႈ ၵွပ်ႈဝႃႈႁဝ်းၸႂ်ႉၸိုဝ်ႈ `bmi` တႅၼ်းတူဝ်ၼပ်ႉယၢဝ်းယၢဝ်းၼၼ်ႉၶႃႈ။



### **2. ၵၢၼ်ၸႂ်ႉ `let` (Defining Before)**
`let` ၼႆႉသမ်ႉ ပဵၼ်လၢႆး "ပိုတ်ႇၸိုဝ်ႈဢွၼ်တၢင်း" ယဝ်ႉၸင်ႇဢဝ်မႃးၸႂ်ႉၶႃႈ။ မၼ်းတိုၼ်းတေလႆႈမီး `in` ယူႇၸွမ်းတႃႇသေႇ။
* **Syntax:** `let [definitions] in [expression]`

**တူဝ်ယၢင်ႇ:**
```haskell
cylinderArea :: Double -> Double -> Double
cylinderArea r h = 
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in  sideArea + 2 * topArea
```
* **ၽွၼ်းလီ:** ႁဝ်းၸၢင်ႈၸႅၵ်ႇ Equation ယၢပ်ႇယၢပ်ႇ ႁႂ်ႈပဵၼ်တွၼ်ႈဢွၼ်ႇတွၼ်ႈဢိတ်းသေ ၸင်ႇဢဝ်မႃး ပวก ၵၼ်ၼႂ်း `in` ၶႃႈဢေႃႈ။



### **3. `let` vs `where` ပႅၵ်ႇၵၼ်ႁိုဝ်?**
| Feature | `where` | `let` |
| :--- | :--- | :--- |
| **တမ်းဝၢင်း** | ဝႆႉၽၢႆႇတႂ်ႈ (After) | ဝႆႉၽၢႆႇၼႃႈ (Before) |
| **ပိုင်ႈဢိင်** | ပဵၼ် Binding (ပိုင်ႈဢိင်ၼႂ်း Function) | ပဵၼ် Expression (ပဵၼ်ၵႃႈၶၼ်တူဝ်မၼ်း) |
| **လၢႆးၸႂ်ႉ** | ၸႂ်ႉတႃႇပိုတ်ႇ Constants ၼႂ်း Function | ၸႂ်ႉလႆႈၵူႈတီႈ (ပႃးၼႂ်း GHCi) |

### **4. ၵၢၼ်ၸႂ်ႉၼႂ်း GHCi**
မိူဝ်ႈႁဝ်းယူႇၼႂ်း GHCi ၼၼ်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ `let` တႃႇပိုတ်ႇ Variable ၸူဝ်ႈၵပ်းလႆႈငၢႆႈငၢႆႈၶႃႈ:
```haskell
ghci> let x = 10; y = 20 in x + y
30
```

---

### **Teacher's Lab for TMK Students**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းတႅမ်ႈ Function တွၼ်ႈတႃႇၼပ်ႉၵႃႈၶၼ် "ၶူဝ်းၶွင်" (Product Price) ဢၼ်ပႃး Tax 5% လူၺ်ႈၸႂ်ႉ `where` ၶႃႈ:

```haskell
finalPrice :: Double -> Double
finalPrice price = price + tax
    where tax = price * 0.05
```

---

**Summary for TMK Students:**
* **`where`**: ပိုတ်ႇဝႆႉၽၢႆႇတႂ်ႈ (လူပွင်ႇၸႂ်ငၢႆႈလိူဝ်)။
* **`let` ... `in`**: ပိုတ်ႇဝႆႉၽၢႆႇၼႃႈ (ၸႂ်ႉလႆႈၵူႈတီႈ)။
* သွင်ဢၼ်ၼႆႉ ၸွႆႈႁႂ်ႈႁဝ်းဢမ်ႇလႆႈတႅမ်ႈၵၢၼ်ၼပ်ႉဢၼ်ၵဝ်ႇ လၢႆပွၵ်ႈၶႃႈ။