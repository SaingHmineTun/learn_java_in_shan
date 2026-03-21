## **Lesson 50: Introduction to Monads: The 'm' Word**

**Monad** ပဵၼ် Typeclass ဢၼ်သိုပ်ႇလုၵ်ႉတီႈ **Applicative** မႃးထႅင်ႈၸၼ်ႉၼိုင်ႈၶႃႈ။ မၼ်းၸွႆႈႁႂ်ႈႁဝ်းဢဝ် Function ဢၼ်ပၼ်ၽွၼ်းလႅၼ်ႈပဵၼ် "Context" (မိူၼ်ၼင်ႇ `Maybe`) မႃးသိုပ်ႇၵၼ်လႆႈငၢႆႈငၢႆႈၶႃႈယဝ်ႉ။

### **1. ပၵ်းပိူင် ဢၼ်လၢၵ်ႇလၢႆး (The Bind Operator)**
သင်ႇၵေႇတႃႇဢၼ်ပဵၼ် "ႁူဝ်ၸႂ်" Monad သမ်ႉပဵၼ် **`>>=`** (ႁွင်ႉဝႃႈ **Bind**) ၶႃႈ။
` (>>=) :: m a -> (a -> m b) -> m b `

* **`m a`**: Data ဢၼ်ယူႇၼႂ်း Context (မိူၼ်ၼင်ႇ `Just 5`)။
* **`(a -> m b)`**: Function ဢၼ်ႁပ်ႉဢဝ် Data ထမ်ႇမတႃႇ သေ ပၼ်ဢွၵ်ႇမႃးပဵၼ် Context မႂ်ႇ။
* **`m b`**: ၽွၼ်းလႅၼ်ႈလိုၼ်းသုတ်း။



---

### **2. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Monad? (The Problem)**
ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၶူးမီး Function ဢၼ် "ၵႅတ်ႇၶႄ" (Safe) သွင်ဢၼ်:
1. `half x` : သင် `x` ပဵၼ်တူဝ်ၵူပ်ႉ ႁႂ်ႈၸႅၵ်ႇ 2၊ သင်ဢမ်ႇၸိုင် ပၼ် `Nothing`။
2. `sqrt' x`: သင် `x` > 0 ႁႂ်ႈႁႃ Square root၊ သင်ဢမ်ႇၸိုင် ပၼ် `Nothing`။

သင်ႁဝ်းၸႂ်ႉ `fmap` ဢမ်ႇၼၼ် `Applicative` ၼႆ ၽွၼ်းလႅၼ်ႈမၼ်းတေပဵၼ် **"ၵွပ်းၼႂ်းၵွပ်း"** (Nested Context) မိူၼ်ၼင်ႇ `Just (Just 4)` ဢၼ်လူယၢပ်ႇသုတ်းၶႃႈ။ **Monad** တေမႃး "လၢတ်ႈ" (Flatten) ၵွပ်းၸိူဝ်းၼၼ်ႉပႅတ်ႈၶႃႈယဝ်ႉ။

---

### **3. တူဝ်ယၢင်ႇ: Chaining with 'Maybe'**
```haskell
half :: Int -> Maybe Int
half n | even n    = Just (n `div` 2)
       | otherwise = Nothing

-- ၸႂ်ႉ Bind (>>=) တႃႇသိုပ်ႇၵၼ်
ghci> Just 20 >>= half >>= half
Just 5

ghci> Just 20 >>= half >>= half >>= half
Nothing  -- ၵွပ်ႈဝႃႈ 5 ပဵၼ်တူဝ်ၶိူင် တေပၼ် Nothing ၵမ်းလဵဝ်
```



---

### **4. 'do' Notation: ႁဵတ်းႁႂ်ႈ Code မိူၼ် Java/Python**
Haskell မီးလၢႆးတႅမ်ႈ Monad ဢၼ်လူငၢႆႈသုတ်း ႁွင်ႉဝႃႈ **`do` block** ၶႃႈ။ မၼ်းႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူမိူၼ်ၼင်ႇၵၢၼ်တႅမ်ႈၸိသင်ႇ (Imperative) ၶႃႈဢေႃႈ။

```haskell
-- လၢႆးတႅမ်ႈ do notation
routine :: Maybe Int
routine = do
    first  <- half 20   -- ဢဝ် Just 10 မႃးပိုတ်ႇဢဝ် 10
    second <- half first -- ဢဝ် Just 5 မႃးပိုတ်ႇဢဝ် 5
    return second        -- ပၼ် Just 5 ၶိုၼ်း
```

---

### **Teacher's Lab: "The Safe Calculation"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Code တွၼ်ႈတႃႇၼပ်ႉၶေႃႈမုၼ်း လုၵ်ႉတီႈ `Maybe` လၢႆလၢႆဢၼ် လူၺ်ႈၸႂ်ႉ `do` block ၶႃႈ:

```haskell
calculate :: Maybe Int -> Maybe Int -> Maybe Int
calculate mx my = do
    x <- mx
    y <- my
    return (x + y)

-- ghci> calculate (Just 10) (Just 20) --> Just 30
-- ghci> calculate (Just 10) Nothing    --> Nothing
```

---

### **Summary of Module 6 (Advanced Typeclasses)**
1. **Custom Class**: မေႃသၢင်ႈပၵ်းပိူင် (Interface) ႁင်းၵူၺ်း။
2. **Polymorphism**: ပွင်ႇၸႂ်လွင်ႈ Parametric လႄႈ Ad-hoc (Typeclasses)။
3. **Functor/Applicative**: မေႃၸတ်းၵၢၼ်ၶေႃႈမုၼ်းၼႂ်း "ၵွပ်း" (Context)။
4. **Monad**: မေႃသိုပ်ႇၵၢၼ်ၼပ်ႉ ဢၼ်မီး Context ႁႂ်ႈသႅၼ်ႈသႂ်ႇ။

---
