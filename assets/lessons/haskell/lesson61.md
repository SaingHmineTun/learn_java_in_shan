## **Lesson 61: The Either Monad: Error Handling with Messages**

**Either** ပဵၼ် Type ဢၼ်မီး 2 ၽၢႆႇ:
1.  **`Left`**: ၸႂ်ႉတွၼ်ႈတႃႇသူင်ႇ "Error" (ၵႆႉပဵၼ် String ဢမ်ႇၼၼ် Error Code)။
2.  **`Right`**: ၸႂ်ႉတွၼ်ႈတႃႇသူင်ႇ "ၽွၼ်းလႅၼ်ႈဢၼ်မၢၼ်ႇမႅၼ်ႈ" (Success)။

> **ၼမ်ႉၵတ်ႉ (Mnemonic):** **"Right"** is **right** (မၢၼ်ႇမႅၼ်ႈ), **"Left"** is what's **left** behind (ဢၼ်ၽိတ်းဝႆႉ) ၶႃႈ။



---

### **1. ပၵ်းပိူင် Bind (`>>=`) ၶေႃႈ Either**
ၼႆႉမိူၼ်တင်း `Maybe` တႄႉတႄႉၶႃႈ:
* `Right x >>= f` $\rightarrow$ `f x` (သိုပ်ႇၵႂႃႇၸၼ်ႉထႅင်ႈၼိုင်ႈ)
* `Left err >>= f` $\rightarrow$ `Left err` (**Short-circuit**: ၵိုတ်းၵမ်းလဵဝ် သေသူင်ႇ Error မႃး)

---

### **2. တူဝ်ယၢင်ႇ: ၵၢၼ်ၵူတ်ႇထတ်း (Validation)**
ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၶူး **Sai Mao** ၶႂ်ႈၵူတ်ႇထတ်း "ဢႃႇယု" လုၵ်ႈႁဵၼ်း တွၼ်ႈတႃႇၶဝ်ႈႁဵၼ်း Programming ၶႃႈ:

```haskell
checkAge :: Int -> Either String Int
checkAge age
    | age < 0   = Left "ဢႃႇယု ဢမ်ႇၸၢင်ႈတႅမ်ႇလိူဝ် 0 ၶႃႈ!"
    | age < 12  = Left "ဢႃႇယု တိုၵ်ႉဢွၼ်ႇလိူဝ်ႁႅင်းၶႃႈဢေႃႈ။"
    | otherwise = Right age

-- ၸႂ်ႉ 'do' block တႃႇသိုပ်ႇ Logic
enrollStudent :: Int -> Either String String
enrollStudent age = do
    validAge <- checkAge age
    return $ "ႁပ်ႉၶဝ်ႈႁဵၼ်းယဝ်ႉ! ဢႃႇယု: " ++ show validAge

-- ghci> enrollStudent 25  --> Right "ႁပ်ႉၶဝ်ႈႁဵၼ်းယဝ်ႉ! ဢႃႇယု: 25"
-- ghci> enrollStudent 10  --> Left "ဢႃႇယု တိုၵ်ႉဢွၼ်ႇလိူဝ်ႁႅင်းၶႃႈဢေႃႈ။"
```



---

### **3. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Either Monad?**
ၸဝ်ႈၶူး ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1.  **Debugging**: ႁဝ်းႁူႉတႅတ်ႈတေႃးဝႃႈ ၵွပ်ႈသင် Program ၸင်ႇဢမ်ႇႁဵတ်းၵၢၼ်။
2.  **Pure Error Handling**: ႁဝ်းဢမ်ႇလူဝ်ႇ "Throw Exception" ဢၼ်ႁဵတ်းႁႂ်ႈ Program ၵိုတ်း (Crash)၊ မၼ်းၵူၺ်းပဵၼ်ၵႃႈၶၼ် (Value) ထမ်ႇမတႃႇ ဢၼ်ႁဝ်းၸတ်းၵၢၼ်လႆႈငၢႆႈၶႃႈ။
3.  **Typed Errors**: ႁဝ်းၸၢင်ႈပိုတ်ႇ Type ၶေႃႈ Error ႁင်းၵူၺ်း (မိူၼ်ၼင်ႇ `data MyError = DatabaseError | NetworkError`) ၶႃႈ။

---

### **Teacher's Lab: "The Calculator with Reasons"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း ပႅၵ်ႇလၢႆးတႅမ်ႈ `safeDiv` လုၵ်ႉတီႈ Lesson 60 ႁႂ်ႈပဵၼ် `Either` ၶႃႈ:

```haskell
safeDivEither :: Int -> Int -> Either String Int
safeDivEither _ 0 = Left "Error: ဢမ်ႇၸၢင်ႈဢဝ် 0 မႃးၸႅၵ်ႇလႆႈၶႃႈ!"
safeDivEither n d = Right (n `div` d)

complexCalc :: Int -> Int -> Int -> Either String Int
complexCalc x y z = do
    val1 <- safeDivEither x y
    val2 <- safeDivEither val1 z
    return val2

-- ghci> complexCalc 100 0 5 --> Left "Error: ဢမ်ႇၸၢင်ႈဢဝ် 0 မႃးၸႅၵ်ႇလႆႈၶႃႈ!"
```

---

### **Summary for TMK Students:**
* **`Left`**: တွၼ်ႈတႃႇ Error (သူင်ႇ Message ပႃး)။
* **`Right`**: တွၼ်ႈတႃႇ Success (သူင်ႇ Data ပႃး)။
* **Bind**: သင်မီး `Left` တီႈလႂ်ၵေႃႈယဝ်ႉ၊ မၼ်းတေ "ၶၢမ်ႈ" (Skip) Logic တင်းหมด သေ ပၼ်ၽွၼ်းလႅၼ်ႈပဵၼ် Error ၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ။
