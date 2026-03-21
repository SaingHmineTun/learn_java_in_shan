## **Lesson 54: The 'liftA2' and 'sequenceA' Functions**

### **1. liftA2 (यုၵ်ႉ Function ၶဝ်ႈၼႂ်း Context)**
**`liftA2`** ပဵၼ် Function ဢၼ်ဢဝ် Function ထမ်ႇမတႃႇ ဢၼ်မီး Parameter 2 တူဝ် မႃး "ယုၵ်ႉ" (Lift) ႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ၼႂ်း Applicative Context လႆႈၵမ်းလဵဝ်ၶႃႈ။

* **လၢႆးတႅမ်ႈ Applicative Style:** `(+) <$> Just 3 <*> Just 5`
* **လၢႆးၸႂ်ႉ liftA2:** `liftA2 (+) (Just 3) (Just 5)`



**ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ liftA2?**
မၼ်းလူပွင်ႇၸႂ်ငၢႆႈလိူဝ် မိူဝ်ႈႁဝ်းၶႂ်ႈလၢတ်ႈဝႃႈ "ဢဝ် Function ၼႆႉ မႃးၸႂ်ႉတင်း Context သွင်ဢၼ်ၼႆႉလႄႇ" ၶႃႈ။ ၼႂ်း Haskell မီးတင်း `liftA2` လႄႈ `liftA3` (တွၼ်ႈတႃႇ Parameter 3 တူဝ်) ၶႃႈဢေႃႈ။

---

### **2. sequenceA (ၵၢၼ်ပိၼ်ႇ "ၵွပ်း" ၶဝ်ႈၼွၵ်ႈဢွၵ်ႇၼႂ်း)**
ၼႆႉပဵၼ် Function ဢၼ် "မီးဢဵၼ်ႁႅင်း" သုတ်းၶေႃႈၼိုင်ႈၶႃႈ။ မၼ်းၸၢင်ႈဢဝ် **List ၶေႃႈ Context** မႃးပိၼ်ႇပဵၼ် **Context ၶေႃႈ List** ၶႃႈယဝ်ႉ။

**တူဝ်ယၢင်ႇ: ပိၼ်ႇ `[Maybe a]` ႁႂ်ႈပဵၼ် `Maybe [a]`**
ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၶူးမီး List ၶေႃႈ `Maybe Int` သေ ၶႂ်ႈႁူႉဝႃႈ "တင်းหมดၼၼ်ႉ မီးၵႃႈၶၼ်ယူႇႁႃႉ?" ၶႃႈ။

```haskell
-- သင်မီးၵႃႈၶၼ်တင်းหมด:
ghci> sequenceA [Just 1, Just 2, Just 3]
Just [1, 2, 3]

-- သင်မီး Nothing ၵေႃႈယဝ်ႉ တူဝ်ၼိုင်ႈ:
ghci> sequenceA [Just 1, Nothing, Just 3]
Nothing
```



---

### **3. ၵၢၼ်ၸႂ်ႉတႄႉ: ၵၢၼ်ၵူတ်ႇထတ်း (Validation)**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈၸႂ်ႉ `sequenceA` တႃႇၵူတ်ႇထတ်းၶေႃႈမုၼ်း လုၵ်ႉတီႈလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** လႆႈငၢႆႈငၢႆႈၶႃႈ:

```haskell
-- Check if all exam scores are valid (not Nothing)
checkScores :: [Maybe Int] -> Maybe [Int]
checkScores scores = sequenceA scores

-- ghci> checkScores [Just 80, Just 95] --> Just [80, 95]
-- ghci> checkScores [Just 80, Nothing] --> Nothing
```

---

### **4. sequenceA တင်း IO (The IO Bridge)**
မၢင်ပွၵ်ႈ ႁဝ်းမီး List ၶေႃႈၵၢၼ်ႁဵတ်း `[IO a]` သေ ၶႂ်ႈႁႂ်ႈမၼ်းလႅၼ်ႈတင်းหมด ယဝ်ႉပၼ်ဢွၵ်ႇမႃးပဵၼ် `IO [a]` ၵမ်းလဵဝ်ၶႃႈ။

```haskell
-- ႁပ်ႉဢဝ်ၵႂၢမ်းလၢတ်ႈ 3 ၶေႃႈ လုၵ်ႉတီႈ Keyboard
getThreeLines :: IO [String]
getThreeLines = sequenceA [getLine, getLine, getLine]
```

---

### **Teacher's Lab: "The Combined List"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function ဢၼ်တေဢဝ် List သွင်ဢၼ် မႃး "ၵူပ်ႉၵၼ်" (Pair) ၵူႈလၢႆးလၢႆး လူၺ်ႈၸႂ်ႉ `liftA2` ၶႃႈ:

```haskell
combineLists :: [a] -> [b] -> [(a, b)]
combineLists xs ys = liftA2 (,) xs ys

-- ghci> combineLists [1, 2] ['a', 'b']
-- [(1,'a'), (1,'b'), (2,'a'), (2,'b')]
```

---

### **Summary for TMK Students:**
* **`liftA2`**: ယုၵ်ႉ Function ၶဝ်ႈၵႂႃႇၼႂ်း Context သွင်ဢၼ်ၵမ်းလဵဝ်။
* **`sequenceA`**: ပိၼ်ႇ Structure (မိူၼ်ၼင်ႇ `[Maybe a]` $\rightarrow$ `Maybe [a]`)။
* **Fail Fast**: သင် `sequenceA` ႁၼ် `Nothing` တူဝ်ၼိုင်ႈ ၽွၼ်းလႅၼ်ႈတင်းหมดတေပဵၼ် `Nothing` ၵမ်းလဵဝ်။
