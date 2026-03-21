## **Lesson 33: Derived Instances: Letting Haskell Do the Work**

မိူဝ်ႈႁဝ်းသၢင်ႈ Type မႂ်ႇၼၼ်ႉ Haskell တေပႆႇႁူႉဝႃႈ တေၼႄၽွၼ်းၼိူဝ် Screen ၼင်ႇႁိုဝ် ဢမ်ႇၼၼ် တေတႅတ်ႈထတ်းၵၼ်ၼင်ႇႁိုဝ်။ ႁဝ်းၸင်ႇၸႂ်ႉ **`deriving`** တႃႇတွပ်ႇပၼ်ၶေႃႈထၢမ်ၸိူဝ်းၼၼ်ႉၶႃႈ။

### **1. ၵုၼ်းလၵ်းသၼ ဢၼ်ၸႂ်ႉလႆႈ (Common Instances)**
ႁဝ်းၸၢင်ႈ "ပၼ်ၼမ်ႉၵတ်ႉ" ပၼ် Type ႁဝ်း လူၺ်ႈၵၢၼ်ထႅမ်ၸိုဝ်ႈ Typeclass ၶဝ်ႈၵႂႃႇၶႃႈ:

* **`Show`**: ႁဵတ်းႁႂ်ႈႁဝ်းၸႂ်ႉ Function `show` လႆႈ (တႃႇၼႄၽွၼ်းၼႂ်း GHCi)။
* **`Read`**: ႁဵတ်းႁႂ်ႈႁဝ်းပိၼ်ႇ String ၶိုၼ်းပဵၼ် Type ႁဝ်းလႆႈ။
* **`Eq`**: ႁဵတ်းႁႂ်ႈႁဝ်းတႅတ်ႈထတ်း `==` လႄႈ `/=` လႆႈ။
* **`Ord`**: ႁဵတ်းႁႂ်ႈႁဝ်းစီႇလႅၼ်း `<`, `>`, `max` လႆႈ။
* **`Enum`**: ႁဵတ်းႁႂ်ႈႁဝ်းၸႂ်ႉ Ranges `[Red..Blue]` လႆႈ။
* **`Bounded`**: ႁဵတ်းႁႂ်ႈႁဝ်းႁူႉၵႃႈၶၼ် "သုင်သုတ်း" လႄႈ "တႅမ်ႇသုတ်း" (`minBound`, `maxBound`)။



---

### **2. တူဝ်ယၢင်ႇ: ၵၢၼ်သၢင်ႈ Type "ဝၼ်းၼႂ်းဝူင်ႈ" (Days of the Week)**

```haskell
data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday 
           deriving (Show, Read, Eq, Ord, Enum, Bounded)
```

တေႃႈလဵဝ် `Day` ႁဝ်းမီး Superpowers တင်းၼမ်ၶႃႈ:

* **Show:** `show Monday` $\rightarrow$ `"Monday"`
* **Eq:** `Monday == Tuesday` $\rightarrow$ `False`
* **Ord:** `Monday < Tuesday` $\rightarrow$ `True` (မၼ်းတေတူၺ်းၸၼ်ႉဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉၶႃႈ)
* **Enum:** `[Monday..Wednesday]` $\rightarrow$ `[Monday, Tuesday, Wednesday]`
* **Bounded:** `minBound :: Day` $\rightarrow$ `Monday`



---

### **3. လၵ်းၵၢၼ် ၶေႃႈ `Eq` လႄႈ `Ord`**
ၸဝ်ႈၶူး **Sai Mao** လူဝ်ႇလၢတ်ႈၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
* သင်ႁဝ်း `deriving (Eq)` ၼၼ်ႉ Haskell တေထတ်းတူၺ်းဝႃႈ "Constructor မိူၼ်ၵၼ်ႁႃႉ?" လႄႈ "Parameter ၼႂ်းမၼ်းမိူၼ်ၵၼ်ႁႃႉ?"။
* သင်ႁဝ်း `deriving (Ord)` ၼၼ်ႉ Haskell တေတူၺ်း **Order** (လုၵ်ႉၽၢႆႇသၢႆႉၵႂႃႇၽၢႆႇၶႂႃ) ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉၶႃႈ။ တူဝ်ဢၼ်တႅမ်ႈဢွၼ်ႇတၢင်း တေပဵၼ်တူဝ်ဢၼ် "ဢွၼ်ႇလိူဝ်" ၶႃႈဢေႃႈ။

---

### **Teacher's Lab: "Person Comparison"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း သၢင်ႈ Record `Person` သေ ထတ်းတူၺ်းဝႃႈ ႁဝ်းၸၢင်ႈဢဝ်ၵူၼ်း 2 ၵေႃႉမႃးတႅတ်ႈထတ်းၵၼ်လႆႈႁႃႉ?

```haskell
data Person = Person { name :: String, age :: Int } deriving (Show, Eq)

let sai = Person "Sai" 25
let mao = Person "Sai" 25
-- sai == mao --> True (ၵွပ်ႈၶေႃႈမုၼ်းၼႂ်းမၼ်းမိူၼ်ၵၼ်)
```

---

### **Summary for TMK Students:**
* **`deriving`**: ၸွႆႈႁႂ်ႈ Haskell သၢင်ႈ Code ပိုၼ်ႉထၢၼ်ပၼ်ႁဝ်း။
* **Show/Read**: တွၼ်ႈတႃႇဢဝ်ၶဝ်ႈ/ဢဝ်ဢွၵ်ႇ (Input/Output)။
* **Eq/Ord**: တွၼ်ႈတႃႇတႅတ်ႈထတ်း လႄႈ စီႇလႅၼ်း။
* **Enum/Bounded**: တွၼ်ႈတႃႇႁဵတ်း Ranges လႄႈ ႁူႉၶွပ်ႇၵႅတ်းမၼ်း။
