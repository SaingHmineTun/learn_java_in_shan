## **Lesson 47: Functors: Mapping Over Wrappers**

**Functor** ပဵၼ် Typeclass ဢၼ်လၢတ်ႈဝႃႈ Type ၼိုင်ႈဢၼ် "မေႃႁပ်ႉဢဝ် Function သေ ၵႂႃႇလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း ဢၼ်ယူႇၼႂ်းမၼ်း" ၶႃႈယဝ်ႉ။

### **1. ပိူင်တႅမ်ႈ (The fmap Function)**
Function ဢၼ်ပဵၼ်ႁူဝ်ၸႂ် Functor သမ်ႉပဵၼ် **`fmap`** ၶႃႈ။
`fmap :: (a -> b) -> f a -> f b`

* **`(a -> b)`**: Function ဢၼ်တေဢဝ်ၵႂႃႇလႅၵ်ႈလၢႆႈ။
* **`f a`**: "ၵွပ်း" (Functor) ဢၼ်မီးၶေႃႈမုၼ်း `a` ယူႇၼႂ်းမၼ်း။
* **`f b`**: "ၵွပ်း" ဢၼ်မီးၶေႃႈမုၼ်း `b` (ဢၼ်လႅၵ်ႈယဝ်ႉ) ယူႇၼႂ်းမၼ်း။



---

### **2. တူဝ်ယၢင်ႇ: Mapping over 'Maybe'**
ၼႆႉပဵၼ်တွၼ်ႈဢၼ်လၢၵ်ႇလၢႆးသုတ်းၶႃႈ။ သင်ႁဝ်းမီး `Maybe Int` ႁဝ်းၸၢင်ႈၸႂ်ႉ `fmap` တႃႇၼပ်ႉမၼ်းလႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇပိုတ်ႇၵွပ်း (Pattern Match) ၶႃႈဢေႃႈ။

```haskell
ghci> fmap (+3) (Just 5)
Just 8

ghci> fmap (+3) Nothing
Nothing
```
* **လၵ်းၵၢၼ်:** သင်မီးၶေႃႈမုၼ်း (`Just`) မၼ်းတေၼပ်ႉပၼ်၊ သင်ဢမ်ႇမီး (`Nothing`) မၼ်းၵေႃႈတေပၼ် `Nothing` ၶိုၼ်းလူၺ်ႈဢမ်ႇ Error ၶႃႈ။

---

### **3. List ກေႃႈပဵၼ် Functor**
တီႈတႄႉမၼ်း `map` ဢၼ်ႁဝ်းၸႂ်ႉၼႂ်း Lesson 37 ၼၼ်ႉၵေႃႈ ပဵၼ် `fmap` တွၼ်ႈတႃႇ List ၶႃႈယဝ်ႉ။

```haskell
ghci> fmap (*2) [1, 2, 3]
[2, 4, 6]
```



---

### **4. သင်ႇၵေႇတႃႇ `<$>`**
ၼႂ်း Haskell ႁဝ်းၵႆႉၸႂ်ႉ **`<$>`** ဢၼ်ပဵၼ် Infix Version ၶေႃႈ `fmap` ၶႃႈ။ မၼ်းႁဵတ်းႁႂ်ႈ Code လူပွင်ႇၸႂ်ငၢႆႈလိူဝ်။

* `(+3) <$> Just 5`  $\rightarrow$ `Just 8`
* `(*2) <$> [1, 2, 3]` $\rightarrow$ `[2, 4, 6]`

---

### **5. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Functors?**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈသပ်းလႅင်းၼႄဝႃႈ:
1. **Consistency**: ႁဝ်းၸၢင်ႈၸႂ်ႉလၢႆးဝူၼ်ႉ "Mapping" မိူၼ်ၵၼ်တင်းၵူႈ Context။
2. **Safety**: မၼ်းၸွႆႈႁဝ်းၸတ်းၵၢၼ် `Maybe` ဢမ်ႇၼၼ် Error တၢင်ႇမဵဝ်း ႁႂ်ႈသႅၼ်ႈသႂ်ႇ (Clean Code)။
3. **Abstraction**: ႁဝ်းဢမ်ႇလူဝ်ႇႁူႉဝႃႈ ၶေႃႈမုၼ်းယူႇၼႂ်း List ဢမ်ႇၼၼ် `Maybe`၊ ႁဝ်းၵူၺ်းလၢတ်ႈဝႃႈ "ဢဝ် Function ၼႆႉၵႂႃႇၸႂ်ႉၼႂ်းၼၼ်ႉပၼ်လႄႇ" ၶႃႈ။

---

### **Teacher's Lab: "The Uppercase Maybe"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function ဢၼ်တေပိၼ်ႇၸိုဝ်ႈလုၵ်ႈႁဵၼ်းပဵၼ် တူဝ်လိၵ်ႈလူင် (Uppercase) သေတႃႉၵေႃႈ ၸိုဝ်ႈၼၼ်ႉၸၢင်ႈပဵၼ် `Maybe String` ၶႃႈ:

```haskell
import Data.Char (toUpper)

upperName :: Maybe String -> Maybe String
upperName name = fmap (map toUpper) name

-- ghci> upperName (Just "sai mao") --> Just "SAI MAO"
-- ghci> upperName Nothing          --> Nothing
```

---

### **Summary for TMK Students:**
* **Functor**: Type ဢၼ်မေႃၸႂ်ႉ `fmap`။
* **`fmap` (ဢမ်ႇၼၼ် `<$>`)**: ဢဝ် Function ၵႂႃႇၸႂ်ႉ "ၼႂ်းၵွပ်း" (Context)။
* **Maybe Functor**: ၸွႆႈႁႂ်ႈႁဝ်းၼပ်ႉၶေႃႈမုၼ်းလႆႈ ၵႅတ်ႇၶႄလိူဝ် Null Pointer ၶႃႈယဝ်ႉ။
