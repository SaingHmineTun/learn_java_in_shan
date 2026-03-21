## **Lesson 32: Type Parameters (Generics)**

ႁႂ်ႈလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** ဝူၼ်ႉတူၺ်းဝႃႈ Type Parameter မိူၼ်ၼင်ႇ "ၵွပ်း" (Box) ဢၼ်ပႅတ်ႈဝၢင်ႇဝႆႉ တွၼ်ႈတႃႇသႂ်ႇၶေႃႈမုၼ်းသင်ၵေႃႈယဝ်ႉၶႃႈ။

### **1. လၢႆးတႅမ်ႈ (The 'a' Parameter)**
ႁဝ်းၸႂ်ႉ **တူဝ်လိၵ်ႈဢွၼ်ႇ (Lowercase)** တွၼ်ႈတႃႇတႅၼ်း Type ဢၼ်ႁဝ်းပႆႇႁူႉၶႃႈ။

```haskell
-- 'a' ပဵၼ် Type Parameter ဢၼ်ၸၢင်ႈပဵၼ် Int, String, ဢမ်ႇၼၼ် Bool ၵေႃႈလႆႈ
data Box a = Box a deriving (Show)
```



**လၢႆးၸႂ်ႉ:**
* `Box 5` $\rightarrow$ တေပဵၼ် Type `Box Int`
* `Box "Shan"` $\rightarrow$ တေပဵၼ် Type `Box String`
* `Box True` $\rightarrow$ တေပဵၼ် Type `Box Bool`

### **2. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉမၼ်း?**
ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၶူး **Sai Mao** ၶႂ်ႈသၢင်ႈ Type တွၼ်ႈတႃႇ "ၵူပ်ႉ" (Pair) ၶေႃႈမုၼ်း 2 တူဝ် ဢၼ်ပဵၼ် Type မိူၼ်ၵၼ်ၶႃႈ:

```haskell
data Pair a = Pair a a deriving (Show)

-- ၸၢင်ႈသိမ်း Int 2 တူဝ်
let intPair = Pair 10 20

-- ၸၢင်ႈသိမ်း String 2 တူဝ်
let stringPair = Pair "Tai" "Shan"
```
သင်ႁဝ်းဢမ်ႇၸႂ်ႉ Type Parameter ၼႆ ႁဝ်းတေလႆႈတႅမ်ႈ `IntPair`, `StringPair`, `FloatPair` ၸိူဝ်းၼႆႉႁင်းၵူၺ်း တင်းหมด ဢၼ်တေႁဵတ်းႁႂ်ႈ Code ႁဝ်းယၢဝ်းလိူဝ်ႁႅင်းၶႃႈ။

---

### **3. Multiple Parameters (လၢႆလၢႆ Type)**
ႁဝ်းၸၢင်ႈသႂ်ႇ Parameter လၢႆလၢႆတူဝ်ၵေႃႈလႆႈၶႃႈ (မိူၼ်ၼင်ႇ `a` လႄႈ `b`)။

```haskell
data Relation a b = Relation a b deriving (Show)

-- သိမ်း String (ၸိုဝ်ႈ) လႄႈ Int (ဢႃႇယု)
let saiMao = Relation "Sai Mao" 25
```



---

### **4. တူဝ်ယၢင်ႇဢၼ်မီးၸိုဝ်ႈသဵင်သုတ်း: `Maybe`**
ၼႂ်း Haskell မီး Type ဢၼ်ၼိုင်ႈ ဢၼ်ၸႂ်ႉ Type Parameter သေ မီးၵုၼ်းၵႃႈသုတ်း ၼၼ်ႉပဵၼ် **`Maybe a`** ၶႃႈ (ႁဝ်းတေႁဵၼ်းတႅတ်ႈတေႃးၼႂ်း Lesson 34)။

```haskell
data Maybe a = Nothing | Just a
```
* မၼ်းၸၢင်ႈပဵၼ် `Just 5` (Int) ဢမ်ႇၼၼ် `Just "Hello"` (String) လႆႈတင်းหมดၶႃႈ။

---

### **Teacher's Lab: "Flexible Student ID"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း သၢင်ႈ Record ဢၼ်မီး **Student ID** ဢၼ်ၸၢင်ႈပဵၼ်လႆႈတင်း "တူဝ်ၼပ်ႉ" (101) ဢမ်ႇၼၼ် "တူဝ်လိၵ်ႈ" ("TMK-001") ၶႃႈ:

```haskell
data FlexibleStudent idType = FlexibleStudent {
    studentId   :: idType,
    studentName :: String
} deriving (Show)

-- လၢႆးၸႂ်ႉ:
let studentA = FlexibleStudent { studentId = 101, studentName = "Sai" }
let studentB = FlexibleStudent { studentId = "TMK-001", studentName = "Mao" }
```

---

### **Summary for TMK Students:**
* **Type Parameters**: ၸႂ်ႉတူဝ်လိၵ်ႈဢွၼ်ႇ (`a`, `b`) တႃႇႁဵတ်းႁႂ်ႈ Type "Flexible"။
* **Template**: မၼ်းမိူၼ်ၼင်ႇႁဝ်းသၢင်ႈ ပိူင် (Template) ဢၼ်ၼိုင်ႈသေ ၸၢင်ႈၸႂ်ႉလႆႈတင်းၵူႈ Type။
* **Generics**: မၼ်းၸွႆႈႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code ဢၼ်ၵဝ်ႇၶိုၼ်းလၢႆလၢႆပွၵ်ႈ။
