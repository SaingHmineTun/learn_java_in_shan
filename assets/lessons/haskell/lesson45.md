## **Lesson 45: Subclassing Typeclasses: Class Constraints**

**Subclassing** ပဵၼ်ၵၢၼ်သၢင်ႈ Typeclass မႂ်ႇ ဢၼ်လူဝ်ႇ "ၼမ်ႉၵတ်ႉပိုၼ်ႉထၢၼ်" လုၵ်ႉတီႈ Typeclass တၢင်ႇဢၼ်ၶႃႈ။

### **1. ပိူင်တႅမ်ႈ (Syntax)**
ႁဝ်းၸႂ်ႉသင်ႇၵေႇတႃႇ **`=>`** ၼႂ်းၵၢၼ်ပိုတ်ႇ `class` ၶႃႈ:

```haskell
class (Eq a) => Ord a where
    ...
```
* **တီႈပွင်ႇ:** "သင် Type `a` ၶႂ်ႈပဵၼ်လုၵ်ႈၸုမ်း `Ord` ၼႆ မၼ်းတိုၼ်းတေလႆႈပဵၼ်လုၵ်ႈၸုမ်း `Eq` ဝႆႉယဝ်ႉဢွၼ်ႇတၢင်းၶႃႈ"။



---

### **2. တူဝ်ယၢင်ႇ: Typeclass "AdvancedShan"**
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး `ShanSpeak` (Lesson 43) သေ ၶႂ်ႈသၢင်ႈ `ShanProverbs` (ၵႂၢမ်းၵပ်းထႅတ်း) ၶႃႈ။ ၵူၼ်းဢၼ်တေလၢတ်ႈၵႂၢမ်းၵပ်းထႅတ်းလႆႈၼၼ်ႉ တိုၼ်းတေလႆႈမေႃလၢတ်ႈၵႂၢမ်းတႆး (ShanSpeak) ပိုၼ်ႉထၢၼ်ဢွၼ်ႇတၢင်းၶႃႈယဝ်ႉ။

```haskell
-- ShanProverbs ပဵၼ် Subclass ၶေႃႈ ShanSpeak
class (ShanSpeak a) => ShanProverbs a where
    sayProverb :: a -> String
```



---

### **3. ၵၢၼ်ၸႂ်ႉ Constraints ၼႂ်း Function**
မၢင်ပွၵ်ႈ ႁဝ်းတႅမ်ႈ Function ဢၼ်လူဝ်ႇၼမ်ႉၵတ်ႉလၢႆလၢႆမဵဝ်းၸွမ်းၵၼ်ၶႃႈ:

```haskell
-- Function ၼႆႉလူဝ်ႇတင်း Eq (တႅတ်ႈထတ်း) လႄႈ Show (ၼႄၽွၼ်း)
checkAndShow :: (Eq a, Show a) => a -> a -> String
checkAndShow x y
    | x == y    = "It matches: " ++ show x
    | otherwise = "They are different!"
```

---

### **4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Subclassing?**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1. **Logic Consistency**: မၼ်းႁဵတ်းႁႂ်ႈပၵ်းပိူင်ႁဝ်းမီးလႅၼ်းတၢင်းဢၼ်ထုၵ်ႇၵိုင်ႇ။ (မိူၼ်ၼင်ႇ သင်ၼိူင်းၵၼ်လႆႈ `<` ၵေႃႈ တိုၼ်းတေလႆႈတႅတ်ႈထတ်းလႆႈ `==` ၶႃႈ)
2. **Code Reuse**: ႁဝ်းၸၢင်ႈၸႂ်ႉ Function လုၵ်ႉတီႈ Parent Class ၼႂ်း Child Class လႆႈၵမ်းလဵဝ်ၶႃႈ။

---

### **Teacher's Lab: "The Honorable Student"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Typeclass `Honorable` ဢၼ်တိုၼ်းတေလႆႈပဵၼ် `Describable` (Lesson 43) ဝႆႉဢွၼ်ႇတၢင်းၶႃႈ:

```haskell
-- class (Describable a) => Honorable a where
--     getHonor :: a -> String

data Student = Student { name :: String, points :: Int }

instance Describable Student where
    describe s = name s ++ " has " ++ show (points s) ++ " points."

instance Honorable Student where
    getHonor s 
        | points s > 90 = "Outstanding Student: " ++ name s
        | otherwise      = "Regular Student"
```

---

### **Summary for TMK Students:**
* **Subclassing**: ၵၢၼ်သၢင်ႈ Class ဢၼ်ဢိင်ၼိူဝ် Class တၢင်ႇဢၼ်။
* **`=>`**: ၸႂ်ႉတႃႇလၢတ်ႈဝႃႈ "တိုၼ်းတေလႆႈမီးၼမ်ႉၵတ်ႉၼႆႉဢွၼ်ႇတၢင်း" (Constraint)။
* **Structure**: ၸွႆႈႁႂ်ႈ Architecture ၶေႃႈ Program ႁဝ်းမီးပၵ်းပိူင်လီၶႃႈ။
