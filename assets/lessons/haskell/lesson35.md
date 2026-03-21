## **Lesson 35: Currying and Partial Application**

### **1. Currying (ၵၢၼ်ၸွႆး Parameter)**
**Currying** ပဵၼ်လၢႆးၵၢၼ်ဢၼ် Haskell ပႅတ်ႈ Function ဢၼ်မီး Parameter လၢႆလၢႆတူဝ် ႁႂ်ႈပဵၼ် Function ဢွၼ်ႇဢွၼ်ႇ ဢၼ်သိုပ်ႇၵၼ်ၵႂႃႇၶႃႈ။

ဝူၼ်ႉတူၺ်း Function ပวก `add 5 10`:
1. Haskell ဢဝ် `5` သႂ်ႇၼႂ်း `add` သေ သၢင်ႈ **Function မႂ်ႇ** ဢၼ်ပွင်ႇၸႂ်ဝႃႈ "တေဢဝ် 5 မႃး ပวก တင်းတူဝ်ဢၼ်တေမႃးထႅင်ႈ"။
2. ယဝ်ႉၵေႃႈ ၸင်ႇဢဝ် `10` သႂ်ႇၼႂ်း Function မႂ်ႇၼၼ်ႉ သေ ဢွၵ်ႇမႃးပဵၼ် `15` ၶႃႈ။



---

### **2. Type Signature ဢၼ်လီသူၼ်ၸႂ်**
ၸဝ်ႈၶူး **Sai Mao** လွမ်တူၺ်း Type ၶေႃႈ `add` ၼႆႉၶႃႈ:
`add :: Int -> Int -> Int`

မၼ်းတိုၼ်းတေလႆႈလူဝႃႈ: `Int -> (Int -> Int)`
* "ႁပ်ႉ Int တူဝ်ၼိုင်ႈ သေ **ပၼ်ဢွၵ်ႇ (Return) Function ထႅင်ႈတူဝ်ၼိုင်ႈ** ဢၼ်ႁပ်ႉ Int သေ ပၼ်ဢွၵ်ႇ Int ၶႃႈ"။

---

### **3. Partial Application (ၵၢၼ်ၸႂ်ႉ Parameter မၢင်တွၼ်ႈ)**
ၵွပ်ႈဝႃႈ Haskell ႁဵတ်းၵၢၼ်ၼင်ႇၼႆ လုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** ၸင်ႇၸၢင်ႈသၢင်ႈ Function မႂ်ႇ လုၵ်ႉတီႈ Function ၵဝ်ႇ လႆႈငၢႆႈငၢႆႈၶႃႈ။

**တူဝ်ယၢင်ႇ: ၵၢၼ်သၢင်ႈ Function "ထႅမ်သိပ်း" (Add Ten)**
```haskell
-- Function ပိုၼ်ႉထၢၼ်
add :: Int -> Int -> Int
add x y = x + y

-- သၢင်ႈ Function မႂ်ႇလူၺ်ႈပၼ် Parameter ၵူၺ်းတူဝ်လဵဝ်
let addTen = add 10

-- လၢႆးၸႂ်ႉ:
ghci> addTen 5
15
ghci> addTen 100
110
```



---

### **4. Sections (ၵၢၼ်ၸႂ်ႉတင်း Operators)**
ႁဝ်းၸၢင်ႈၸႂ်ႉလၢႆးၼႆႉ တင်း Operators (`+`, `-`, `*`, `/`) လႆႈငၢႆႈငၢႆႈလူၺ်ႈၵၢၼ်သႂ်ႇ ဝူင်ႇၵွတ်ႇ `()` ၶႃႈ:

* `(+10)` : Function ဢၼ်ထႅမ် 10။
* `(/2)`  : Function ဢၼ်ၸႅၵ်ႇတင်း 2။
* `(>5)`  : Function ဢၼ်ထတ်းတူၺ်းဝႃႈ ယႂ်ႇသေ 5 ႁႃႉ?

```haskell
ghci> map (+10) [1, 2, 3]
[11, 12, 13]
```

---

### **Teacher's Lab: "The Multiplier"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း သၢင်ႈ Function `mult` သေ သၢင်ႈ Function ဢၼ်တေ "ၼပ်ႉသွင်" (Double) ၶႃႈ:

```haskell
mult :: Int -> Int -> Int
mult x y = x * y

let double = mult 2

-- ghci> double 5 --> 10
```

---

### **Summary for TMK Students:**
* **Currying**: Function ၵူႈတူဝ် ႁပ်ႉ Parameter ၵူၺ်း **"တူဝ်လဵဝ်"** ၵမ်းလဵဝ်။
* **Partial Application**: ႁဝ်းၸၢင်ႈပၼ် Parameter မၢင်တွၼ်ႈ သေ သၢင်ႈပဵၼ် Function မႂ်ႇ ဢၼ်လူပွင်ႇၸႂ်ငၢႆႈ။
* **Efficiency**: လၢႆးၼႆႉ ၸွႆႈႁႂ်ႈ Code ႁဝ်း သႅၼ်ႈသႂ်ႇ (Clean) လႄႈ ဢမ်ႇလူဝ်ႇတႅမ်ႈ Code ဢၼ်ၵဝ်ႇၶိုၼ်းလၢႆလၢႆပွၵ်ႈ။
