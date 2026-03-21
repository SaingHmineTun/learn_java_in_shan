## **Lesson 30: Creating Your Own Types with 'data'**

ၼႂ်း Haskell ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`data`** တွၼ်ႈတႃႇပိုတ်ႇ Type မႂ်ႇၶႃႈ။

### **1. Algebraic Data Types (ADT)**
လၢႆးတႅမ်ႈမၼ်းငၢႆႈငၢႆႈၶႃႈ:
`data [ၸိုဝ်ႈ Type] = [Constructor 1] | [Constructor 2]`

* **Type Name:** တိုၼ်းတေလႆႈတႄႇလူၺ်ႈ **တူဝ်လိၵ်ႈလူင် (Uppercase)** ယူႇသေႇသေႇ။
* **`|`**: တီႈပွင်ႇမၼ်းပဵၼ် "ဢမ်ႇၼၼ်" (Or)။

**တူဝ်ယၢင်ႇ: ပိုတ်ႇ Type တွၼ်ႈတႃႇ "သီ" (Colors)**
```haskell
data Color = Red | Green | Blue | Yellow
```


တေႃႈလဵဝ် `Color` ပဵၼ် Type မႂ်ႇဢၼ်ၼိုင်ႈယဝ်ႉ။ ႁဝ်းၸၢင်ႈၸႂ်ႉမၼ်းၼႂ်း Function လႆႈၼင်ႇၼႆၶႃႈ:
```haskell
isBright :: Color -> Bool
isBright Yellow = True
isBright _      = False
```

---

### **2. Value Constructors with Parameters**
Type ႁဝ်းၼၼ်ႉ ၸၢင်ႈ "သိမ်းၶေႃႈမုၼ်း" ဝႆႉၸွမ်းလႆႈထႅင်ႈၶႃႈ။ ဝူၼ်ႉတူၺ်းလွင်ႈ **Shape** (ႁၢင်ႈၽၢင်) ၶႃႈ:

```haskell
data Shape = Circle Float Float Float   -- (X, Y, Radius)
           | Rectangle Float Float Float Float -- (X1, Y1, X2, Y2)
```


* `Circle` ပဵၼ် Constructor ဢၼ်ႁပ်ႉဢဝ် `Float` 3 တူဝ်။
* `Rectangle` ပဵၼ် Constructor ဢၼ်ႁပ်ႉဢဝ် `Float` 4 တူဝ်။

### **3. ၵၢၼ်ၸႂ်ႉ `deriving` (Show, Eq)**
သင်ၸဝ်ႈၶူးတႅမ်ႈ Code ၽၢႆႇၼိူဝ်ၼၼ်ႉသေ သမ်ႉၵႂႃႇတႅမ်ႈ `Red` ၼႂ်း GHCi ၼႆ Haskell တေ **Error** ၵွပ်ႈဝႃႈမၼ်း "ဢမ်ႇႁူႉလၢႆးၼႄၽွၼ်း" (Show) ၶႃႈ။ ႁဝ်းလူဝ်ႇထႅမ် **`deriving (Show, Eq)`** ဝႆႉၽၢႆႇလင်ၶႃႈ။

```haskell
data Color = Red | Green | Blue deriving (Show, Eq)
```
* **`Show`**: ႁဵတ်းႁႂ်ႈႁဝ်းတႅမ်ႈဢွၵ်ႇ Screen လႆႈ။
* **`Eq`**: ႁဵတ်းႁႂ်ႈႁဝ်းတႅတ်ႈထတ်း `Red == Red` လႆႈၶႃႈ။

---

### **Teacher's Lab: "Modeling a Student"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** သၢင်ႈ Type တွၼ်ႈတႃႇၵဵပ်းၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်းၶႃႈ:

```haskell
data StudentStatus = Active | Graduated | Dropped deriving (Show, Eq)

-- Student [ၸိုဝ်ႈ] [ဢႃႇယု] [သထၢၼ်ႉၼႃႉ]
data Student = Student String Int StudentStatus deriving (Show)
```

**လၢႆးၸႂ်ႉ:**
```haskell
let saiMao = Student "Sai Mao" 25 Active
```

---

### **Summary for TMK Students:**
* **`data`**: ၸႂ်ႉတႃႇသၢင်ႈ Type ႁင်းၵူၺ်းႁဝ်း။
* **Uppercase**: ၸိုဝ်ႈ Type လႄႈ Constructor တိုၼ်းတေလႆႈပဵၼ်တူဝ်လိၵ်ႈလူင်။
* **`|`**: ၸႂ်ႉတႃႇၸႅၵ်ႇ Constructors လၢႆလၢႆမဵဝ်း။
* **`deriving (Show)`**: တွၼ်ႈတႃႇႁႂ်ႈ Haskell ၼႄၽွၼ်းလႆႈ။
