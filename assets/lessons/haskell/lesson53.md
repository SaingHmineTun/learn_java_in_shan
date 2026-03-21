## **Lesson 53: Using 'fmap' with Multiple Arguments**

မိူဝ်ႈႁဝ်းဢဝ် Function ဢၼ်မီး Parameter လၢႆတူဝ် မႃးၸႂ်ႉတင်း `fmap` ၼၼ်ႉ ၽွၼ်းလႅၼ်ႈမၼ်းတေပဵၼ် **"Function ဢၼ်ယူႇၼႂ်း Context"** ၶႃႈယဝ်ႉ။

### **1. ပၢႆးဝူၼ်ႉ (The Concept)**
ဝူၼ်ႉတူၺ်း Function `(+) :: Int -> Int -> Int` ၶႃႈ။
* သင်ႁဝ်း `fmap (+) (Just 3)` ၼႆ:
* Haskell တေဢဝ် `3` သႂ်ႇၼႂ်း `+` သေ ပၼ်ဢွၵ်ႇမႃးပဵၼ် `(+3)`။
* ၵွပ်ႈဝႃႈႁဝ်းၸႂ်ႉ `fmap`၊ ၽွၼ်းလႅၼ်ႈမၼ်းၸင်ႇပဵၼ် **`Just (+3)`** ၶႃႈဢေႃႈ။



---

### **2. တူဝ်ယၢင်ႇ: လုၵ်ႉတီႈ Functor ၵႂႃႇၸူး Applicative**
မိူဝ်ႈႁဝ်းလႆႈ `Just (+3)` မႃးယဝ်ႉ ႁဝ်းတေႁဵတ်းၼင်ႇႁိုဝ် သိုပ်ႇဢဝ် Parameter တူဝ်ထႅင်ႈၼိုင်ႈ (မိူၼ်ၼင်ႇ `Just 5`) သႂ်ႇၶဝ်ႈၵႂႃႇ? ၼႆႉယဝ်ႉၶႃႈ ပဵၼ်တီႈဢၼ်ႁဝ်းလူဝ်ႇၸႂ်ႉ **`<*>`** ၶႃႈ။

**လၢႆးတႅမ်ႈ Pipeline:**
```haskell
-- လၢႆး 1: ၸႂ်ႉ fmap ယဝ်ႉၸႂ်ႉ <*>
ghci> let step1 = fmap (+) (Just 3)   -- ၽွၼ်းလႅၼ်ႈ: Just (+3)
ghci> step1 <*> Just 5                -- ၽွၼ်းလႅၼ်ႈ: Just 8

-- လၢႆး 2: ၸႂ်ႉ <$> (Infix fmap) ဢၼ်သႅၼ်ႈသႂ်ႇ
ghci> (+) <$> Just 3 <*> Just 5
Just 8
```



---

### **3. ၵၢၼ်ၸႂ်ႉတင်း List**
လၢႆးၼႆႉ မီးဢဵၼ်ႁႅင်းသုတ်း မိူဝ်ႈႁဝ်းၸႂ်ႉတင်း List ၶႃႈ။ မၼ်းတေၼပ်ႉပၼ် "ၵူႈလၢႆးလၢႆး" (All combinations) ၶႃႈယဝ်ႉ။

```haskell
ghci> (*) <$> [1, 2, 3] <*> [10, 100]
[10, 100, 20, 200, 30, 300]
```
*(လၢႆးဝူၼ်ႉ: ဢဝ် 1 ၵႂႃႇၼပ်ႉ 10, 100 ယဝ်ႉၵေႃႈ ဢဝ် 2 ၵႂႃႇၼပ်ႉ 10, 100... သိုပ်ႇၵၼ်ၵႂႃႇၶႃႈ)*

---

### **Teacher's Lab: "The Full Name Combiner"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း သၢင်ႈ Function ဢၼ်တေဢဝ် "ၸိုဝ်ႈၼႃႈ" (First Name) လႄႈ "ၸိုဝ်ႈလင်" (Last Name) ဢၼ်လုၵ်ႉတီႈ `Maybe` မႃးသိုပ်ႇၵၼ်ၶႃႈ:

```haskell
combineNames :: Maybe String -> Maybe String -> Maybe String
combineNames mf ml = (++) <$> mf <*> (fmap (" " ++) ml)
-- ဢမ်ႇၼၼ် လၢႆးငၢႆႈလိူဝ်:
combineNames' mf ml = (\f l -> f ++ " " ++ l) <$> mf <*> ml

-- ghci> combineNames' (Just "Sai") (Just "Mao") --> Just "Sai Mao"
-- ghci> combineNames' (Just "Sai") Nothing      --> Nothing
```

---

### **Summary for TMK Students:**
* **`fmap` + Multi-args**: ပၼ်ဢွၵ်ႇမႃးပဵၼ် **Function ၼႂ်း Context**။
* **`<$>`**: ပဵၼ်လၢႆးတႅမ်ႈ `fmap` ဢၼ်လူငၢႆႈ။
* **Chain**: ႁဝ်းၸၢင်ႈၸႂ်ႉ `f <$> arg1 <*> arg2 <*> arg3` တႃႇသိုပ်ႇ Parameter လၢႆလၢႆတူဝ် ၶဝ်ႈၼႂ်း Context လႆႈၶႃႈ။
