## **Lesson 28: Common Typeclasses (Eq, Ord, Show, and Read)**

ႁႂ်ႈလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** ဝူၼ်ႉတူၺ်းဝႃႈ Typeclass ပဵၼ် "ၵုၼ်းလၵ်းသၼ" (Properties) ၶေႃႈ Type ၼိုင်ႈဢၼ်ၶႃႈ။

### **1. Eq (Equality - ၵၢၼ်တႅတ်ႈထတ်း)**
Type ဢၼ်ယူႇၼႂ်း **Eq** ၼႆႉ ႁဝ်းၸၢင်ႈဢဝ်မႃးတႅတ်ႈထတ်းၵၼ်ဝႃႈ "မိူၼ်ၵၼ်ႁႃႉ?" ဢမ်ႇၼၼ် "ဢမ်ႇမိူၼ်ၵၼ်ႁႃႉ?" ၶႃႈ။
* **Functions:** `==` (မိူၼ်ၵၼ်), `/=` (ဢမ်ႇမိူၼ်ၵၼ်)
* **တူဝ်ယၢင်ႇ:** `5 == 5` $\rightarrow$ `True`, `"Shan" /= "Tai"` $\rightarrow$ `True`

### **2. Ord (Ordering - ၵၢၼ်ၶပ်ႉထႅဝ်)**
Type ဢၼ်ယူႇၼႂ်း **Ord** ၼႆႉ မီးၼမ်ႉၵတ်ႉ "စီႇလႅၼ်းလႆႈ" ၶႃႈ။ ႁဝ်းၸၢင်ႈၼိူင်းၵၼ်ဝႃႈ "ဢွၼ်ႇသေ" ဢမ်ႇၼၼ် "ယႂ်ႇသေ" ၶႃႈယဝ်ႉ။
* **Functions:** `<`, `>`, `<=`, `>=`, `compare`
* **တူဝ်ယၢင်ႇ:** `10 > 5` $\rightarrow$ `True`, `'a' < 'b'` $\rightarrow$ `True`



### **3. Show (ၵၢၼ်ၼႄၽွၼ်း)**
Type ဢၼ်ယူႇၼႂ်း **Show** ၼႆႉ ၸၢင်ႈ "ပိၼ်ႇပဵၼ် String" တွၼ်ႈတႃႇၼႄၽွၼ်းၼိူဝ် Screen လႆႈၶႃႈ။
* **Functions:** `show`
* **တူဝ်ယၢင်ႇ:** `show 123` $\rightarrow$ `"123"` (လုၵ်ႉတီႈ Int ပဵၼ် String)

### **4. Read (ၵၢၼ်လူၶေႃႈမုၼ်း)**
ၼႆႉပဵၼ် တွၼ်ႈပိၼ်ႇၽၢႆႇၶေႃႈ `Show` ၶႃႈ။ မၼ်းဢဝ် String မႃးသေ "ပိၼ်ႇပဵၼ် Type တၢင်ႇဢၼ်" ၶႃႈ။
* **Functions:** `read`
* **တူဝ်ယၢင်ႇ:** `read "5" + 2` $\rightarrow$ `7`

> **သတိ:** မိူဝ်ႈၸႂ်ႉ `read` ၼၼ်ႉ Haskell လူဝ်ႇႁူႉဝႃႈ ႁဝ်းၶႂ်ႈပိၼ်ႇပဵၼ် Type သင်တႄႉတႄႉ။ ၵွပ်ႈၼၼ် ႁဝ်းတေလႆႈပၼ် Type Signature ၸွမ်းၶႃႈ။
* `read "5" :: Int` $\rightarrow$ `5`
* `read "5" :: Double` $\rightarrow$ `5.0`



---

### **ၵၢၼ်ထတ်းတူၺ်းၼႂ်း GHCi**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းတူၺ်း Type ၶေႃႈ Function ၸိူဝ်းၼႆႉၶႃႈ:

```haskell
ghci> :t (==)
(==) :: Eq a => a -> a -> Bool

ghci> :t (>)
(>) :: Ord a => a -> a -> Bool

ghci> :t show
show :: Show a => a -> String
```
* သင်ႇၵေႇတႃႇ **`=>`** ၼႆႉ ပွင်ႇဝႃႈ "သင် Type `a` ၼႆႉ မီးၵုၼ်းလၵ်းသၼ (Typeclass) ၼင်ႇပႃႈၼႃႈၼႆ..." ၶႃႈဢေႃႈ။

---

### **Summary for TMK Students:**
* **Eq**: ၸႂ်ႉ `==` လႄႈ `/=` (တႅတ်ႈထတ်း)။
* **Ord**: ၸႂ်ႉ `<`, `>`, `compare` (ၶပ်ႉထႅဝ်)။
* **Show**: ၸႂ်ႉ `show` (ပိၼ်ႇပဵၼ် String)။
* **Read**: ၸႂ်ႉ `read` (ဢဝ် String ပိၼ်ႇပဵၼ် Type တၢင်ႇဢၼ်)။