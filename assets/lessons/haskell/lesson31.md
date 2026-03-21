## **Lesson 31: Record Syntax: Modeling Complex Data**

**Record Syntax** ၼႆႉ မိူၼ်ၼင်ႇႁဝ်းသၢင်ႈ "ပႅၼ်ႈမၢႆ" (Form) ဢၼ်မီးၸိုဝ်ႈႁူဝ်ၶေႃႈဝႆႉၼၼ်ႉၶႃႈ။

### **1. လၢႆးတႅမ်ႈ (Syntax)**
ႁဝ်းတေၸႂ်ႉ **ၵႅပ်ႇပိၵ်ႇ `{ }`** တွၼ်ႈတႃႇပိုတ်ႇၸိုဝ်ႈ Field ၶေႃႈမုၼ်းၶႃႈ:

```haskell
data Student = Student { 
    studentName  :: String,
    studentAge   :: Int,
    studentGrade :: Float,
    isActive     :: Bool
} deriving (Show, Eq)
```



### **2. ၽွၼ်းလီၶေႃႈ Record Syntax**

**ၵ. ၵၢၼ်သၢင်ႈ Data ဢၼ်လူပွင်ႇၸႂ်ငၢႆႈ:**
ႁဝ်းဢမ်ႇလူဝ်ႇတွၼ်းမတ်ႉ "လုၵ်ႉ" (Order) မၼ်းယဝ်ႉ။ ႁဝ်းၸၢင်ႈသႂ်ႇၸိုဝ်ႈမၼ်းၵမ်းလဵဝ်ၶႃႈ:
```haskell
let student1 = Student { studentName = "Sai Mao", studentAge = 25, studentGrade = 3.8, isActive = True }
```

**ၶ. Automatic Getter Functions:**
ၼႆႉပဵၼ် "Superpower" ၶေႃႈမၼ်းၶႃႈ! Haskell တေလိူၵ်ႈသၢင်ႈ Function တွၼ်ႈတႃႇ "ထွၼ်ဢဝ်" ၶေႃႈမုၼ်းပၼ်ႁဝ်းၵမ်းလဵဝ်။
```haskell
ghci> studentName student1
"Sai Mao"
ghci> studentAge student1
25
```
(ၼႂ်း Java ႁဝ်းတေလႆႈတႅမ်ႈ `getName()`, `getAge()` ႁင်းၵူၺ်း၊ ၵူၺ်းၵႃႈ ၼႂ်း Haskell မၼ်းသၢင်ႈပၼ်ႁဝ်းယဝ်ႉဝႆႉၶႃႈ)



---

### **3. ၵၢၼ် "ဢပ်ႉတဵတ်ႉ" (Updating Records)**
ၵွပ်ႈဝႃႈ Haskell ပဵၼ် **Immutability**၊ ႁဝ်းဢမ်ႇၸၢင်ႈလႅၵ်ႈလၢႆႈၵႃႈၶၼ် `student1.age = 26` လႆႈ။ ႁဝ်းတေလႆႈသၢင်ႈ "တူဝ်မႂ်ႇ" ဢၼ်ဢဝ်ၶေႃႈမုၼ်းၵဝ်ႇမႃးၸႂ်ႉၶႃႈ:

```haskell
let student2 = student1 { studentAge = 26 }
```
* **student2** တေမီးၸိုဝ်ႈမိူၼ် `student1` သေတႃႉၵေႃႈ ဢႃႇယုတေလႅၵ်ႈပဵၼ် `26` ၶႃႈယဝ်ႉ။

---

### **Teacher's Lab: "Modeling TMK Course"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** သၢင်ႈ Record တွၼ်ႈတႃႇ "ၶေႃႈမုၼ်းတွၼ်ႈသွၼ်" (Course Info) ၶႃႈ:

```haskell
data Course = Course {
    courseTitle :: String,
    instructor  :: String,
    studentCount :: Int
} deriving (Show)

let haskellCourse = Course { courseTitle = "Haskell for Beginners", instructor = "Sai Mao", studentCount = 20 }
```

---

### **Summary for TMK Students:**
* **Record Syntax**: ၸႂ်ႉ `{ }` တႃႇပၼ်ၸိုဝ်ႈ Field။
* **Getters**: ၸိုဝ်ႈ Field ၼၼ်ႉ ပဵၼ် Function ဢၼ်ထွၼ်ဢဝ်ၶေႃႈမုၼ်းလႆႈၵမ်းလဵဝ်။
* **Updating**: ၸႂ်ႉ Syntax `{ field = newValue }` တႃႇသၢင်ႈတူဝ်မႂ်ႇ ဢၼ်လႅၵ်ႈလၢႆႈၵႃႈၶၼ်ယဝ်ႉ။