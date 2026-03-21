## **Lesson 48: Applicative Functors: Functions in Context**

**Applicative Functor** ပဵၼ် Functor ဢၼ်မီး "Superpower" ထႅင်ႈ 2 ယိူင်ႈၶႃႈ:
1.  **`pure`**: ဢဝ်ၵႃႈၶၼ်ထမ်ႇမတႃႇ သႂ်ႇဝႆႉၼႂ်း Context (မိူၼ်ၼင်ႇ ဢဝ် `5` သႂ်ႇၼႂ်း `Just 5`)။
2.  **`<*>` (Asterisk operator)**: ဢဝ် Function ဢၼ်ယူႇၼႂ်း Context ၵႂႃႇၸႂ်ႉတင်း Data ဢၼ်ယူႇၼႂ်း Context ၶႃႈ။

### **1. Type Signature ၶေႃႈ `<*>`**
`(<*>) :: f (a -> b) -> f a -> f b`

* **`f (a -> b)`**: Function ဢၼ်ႁေႃႇဝႆႉၼႂ်း "ၵွပ်း" (မိူၼ်ၼင်ႇ `Just (+3)`)။
* **`f a`**: Data ဢၼ်ႁေႃႇဝႆႉၼႂ်း "ၵွပ်း" (မိူၼ်ၼင်ႇ `Just 10`)။



---

### **2. တူဝ်ယၢင်ႇ: Applicative with 'Maybe'**
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈဢဝ်တူဝ်ၼပ်ႉ 2 တူဝ် ဢၼ်ပဵၼ် `Maybe Int` တင်းသွင်ဢၼ် မႃး ပวก ၵၼ်ၶႃႈ:

```haskell
ghci> pure (+) <*> Just 3 <*> Just 5
Just 8

ghci> pure (+) <*> Just 3 <*> Nothing
Nothing
```

**လၢႆးမၼ်းႁဵတ်းၵၢၼ်:**
1.  `pure (+)` တေပဵၼ် `Just (+)`။
2.  `Just (+) <*> Just 3` တေပဵၼ် `Just (+3)` (ၼႆႉပဵၼ် Partial Application ဢၼ်ႁဵၼ်းမႃးၼႂ်း Lesson 35 ၶႃႈ)။
3.  `Just (+3) <*> Just 5` တေပဵၼ် `Just 8` ၶႃႈဢေႃႈ။

---

### **3. လၢႆးတႅမ်ႈဢၼ်သႅၼ်ႈသႂ်ႇ (Applicative Style)**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈၸႂ်ႉ `<$>` (fmap) ၸွမ်းတင်း `<*>` တႃႇႁႂ်ႈ Code လူပွင်ႇၸႂ်ငၢႆႈလိူဝ်ၶႃႈ:

```haskell
ghci> (+) <$> Just 3 <*> Just 5
Just 8
```
* **`<$>`**: ဢဝ် Function ၶဝ်ႈၵႂႃႇၼႂ်း Context ဢွၼ်ႇတၢင်း။
* **`<*>`**: သိုပ်ႇဢဝ် Parameter တူဝ်ထႅင်ႈၼိုင်ႈ ဢၼ်ယူႇၼႂ်း Context မိူၼ်ၵၼ်။

---

### **4. List ກေႃႈပဵၼ် Applicative**
မိူဝ်ႈႁဝ်းၸႂ်ႉ Applicative တင်း List၊ မၼ်းတေၼပ်ႉပၼ် "ၵူႈလၢႆးလၢႆး" (Non-deterministic) ၶႃႈယဝ်ႉ။

```haskell
ghci> [(+1), (*2)] <*> [1, 2, 3]
[2, 3, 4, 2, 4, 6]
-- (1+1, 2+1, 3+1) ယဝ်ႉၵေႃႈ (1*2, 2*2, 3*2)
```



---

### **Teacher's Lab: "Safe Addition"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** တႅမ်ႈ Function ဢၼ်တေဢဝ်ဢႃႇယုလုၵ်ႈႁဵၼ်း 2 ၵေႃႉ ဢၼ်မႃးၼႂ်း `Maybe Int` မႃးပวกၵၼ်ၶႃႈ:

```haskell
addAges :: Maybe Int -> Maybe Int -> Maybe Int
addAges age1 age2 = (+) <$> age1 <*> age2

-- ghci> addAges (Just 20) (Just 25) --> Just 45
-- ghci> addAges (Just 20) Nothing   --> Nothing
```

---

### **Summary for TMK Students:**
* **Applicative**: ၸွႆႈႁႂ်ႈႁဝ်းၸႂ်ႉ Function ၸွမ်းလူၺ်ႈ **Context လၢႆလၢႆဢၼ်**။
* **`pure`**: ဢဝ်ၵႃႈၶၼ် "ၶဝ်ႈၵႂႃႇ" ၼႂ်း Context။
* **`<*>`**: ၸွႆႈႁႂ်ႈႁဝ်းသိုပ်ႇ Parameter ဢၼ်ယူႇၼႂ်း Context ၶဝ်ႈၵႂႃႇၼႂ်း Function ၶႃႈ။
