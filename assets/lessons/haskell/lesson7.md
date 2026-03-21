## **Lesson 7: Defining Your First Constants (Truths that Never Change)**

ၼႂ်း Haskell ၼၼ်ႉ ႁဝ်းတေဢမ်ႇႁွင်ႉဝႃႈ "Variables" (တူဝ်လႅၵ်ႈလၢႆႈ) ၶႃႈ။ ႁဝ်းတေႁွင်ႉဝႃႈ **"Constants"** (ၵႃႈၶၼ်ၼိမ်) ဢမ်ႇၼၼ် **"Definitions"** (ၶေႃႈပိုတ်ႇတီႈပွင်ႇ) ၶႃႈဢေႃႈ။

### **1. လၢႆးတႅမ်ႈ Code ၼႂ်း VS Code**
1. ပိုတ်ႇ VS Code သေ သၢင်ႈ (Create) File မႂ်ႇ ဢၼ်ၸိုဝ်ႈဝႃႈ `Lesson7.hs` (လူဝ်ႇမီး `.hs` ဝႆႉယူႇသေႇသေႇ)။
2. တႅမ်ႈ Code ၸိူဝ်းၼႆႉၶဝ်ႈၵႂႃႇၶႃႈ:

```haskell
-- ၼႆႉပဵၼ်ၵၢၼ်ပိုတ်ႇတူဝ်ၼပ်ႉ (Integer)
myAge = 25

-- ၼႆႉပဵၼ်ၵၢၼ်ပိုတ်ႇၶေႃႈၵႂၢမ်း (String)
schoolName = "TMK Academy"

-- ၼႆႉပဵၼ်ၵၢၼ်ပိုတ်ႇတူဝ်ၼပ်ႉမီးၸုၼ် (Double)
piValue = 3.14159
```

### **2. Immutability: ပၵ်းပိူင် "လႅၵ်ႈလၢႆႈဢမ်ႇလႆႈ"**
ၼႂ်း Java ႁဝ်းတႅမ်ႈ `int x = 5; x = 6;` လႆႈ။ တီႈၼႂ်း Haskell ၼႆႉ **ႁဵတ်းၼၼ်ဢမ်ႇလႆႈၶႃႈ**။
* သင်ႁဝ်းတႅမ်ႈ `myAge = 25` ဝႆႉယဝ်ႉ၊ သမ်ႉၵႂႃႇတႅမ်ႈ `myAge = 26` ၼႂ်း File ဢၼ်ၵဝ်ႇၼၼ်ႉ Haskell တေ **Error** ၵမ်းလဵဝ်။
* **ၵွပ်ႈသင်?** ၵွပ်ႈဝႃႈ Haskell ဝူၼ်ႉဝႃႈ `myAge` ပဵၼ် "ၵႂၢမ်းမၢၼ်ႇ" (Truth) ဢၼ်ၼိုင်ႈ။ ၵႂၢမ်းမၢၼ်ႇၼႆႉ မၼ်းတေဢမ်ႇလႅၵ်ႈလၢႆႈ ပဵၼ်တၢင်ႇမဵဝ်းလႆႈၶႃႈ။



### **3. လၢႆးၸႂ်ႉ Type Signatures (ၵၢၼ်ပၼ်ၸိုဝ်ႈ Type)**
တွၼ်ႈတႃႇႁႂ်ႈ Code ႁဝ်းသႅၼ်ႈသႂ်ႇ လႄႈ ၵူၼ်းတၢင်ႇၵူၼ်းလူပွင်ႇၸႂ်ငၢႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇတႅမ်ႈ **Type Signature** ဝႆႉၼိူဝ် ၵႃႈၶၼ် (Value) ၼၼ်ႉၶႃႈ။ ႁဝ်းတေၸႂ်ႉ သင်ႇၵေႇတႃႇ **`::`** ၶႃႈဢေႃႈ။

```haskell
schoolName :: String
schoolName = "TMK Academy"

studentCount :: Int
studentCount = 100
```

### **4. လၢႆးတူၺ်းၽွၼ်းလႅၼ်ႈ (Running Code)**
1. ပိုတ်ႇ Terminal ၼႂ်း VS Code (Ctrl + `)။
2. တႅမ်ႈ `ghci` သေ ၼဵၵ်း Enter။
3. တႅမ်ႈ `:l Lesson7.hs` (တႃႇလူတ်ႇ File)။
4. တေႃႈလဵဝ် တႅမ်ႈၸိုဝ်ႈ Constant ၼၼ်ႉတူၺ်းလႆႈယဝ်ႉၶႃႈ:
   ```haskell
   ghci> schoolName
   "TMK Academy"
   ```

---