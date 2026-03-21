## **Lesson 60: The Maybe Monad: Handling Failure Gracefully**

**Maybe** ပဵၼ် Monad ဢၼ်လၢတ်ႈဝႃႈ: "သင် Action ၼိုင်ႈဢၼ်ပၼ် `Nothing` မႃး၊ Action တူဝ်သိုပ်ႇၸိူဝ်းၼၼ်ႉ တေဢမ်ႇလႅၼ်ႈသေ တေပၼ် `Nothing` တင်းหมดၵမ်းလဵဝ်ၶႃႈ"။

### **1. ပၵ်းပိူင် Bind (`>>=`) ၶေႃႈ Maybe**
ၼႆႉပဵၼ်လၢႆးဢၼ်မၼ်း "ၵတ်ႉၶႅၼ်ႇ" လိူဝ်ပိူၼ်ႈၶႃႈ:
* `Just x >>= f` $\rightarrow$ `f x` (ပၼ်ၶေႃႈမုၼ်းသိုပ်ႇၵႂႃႇ)
* `Nothing >>= f` $\rightarrow$ `Nothing` (ၵိုတ်းၵမ်းလဵဝ်)



---

### **2. တူဝ်ယၢင်ႇ: ၵၢၼ်ႁႃၶေႃႈမုၼ်း (Safe Lookup)**
ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၶူး **Sai Mao** မီး List ၶေႃႈလုၵ်ႈႁဵၼ်း သေ ၶႂ်ႈႁႃ "မၢႆၽူၼ်း" လုၵ်ႉတီႈ "ID" ၶႃႈ။

```haskell
-- Database ဢွၼ်ႇဢွၼ်ႇ
students = [(1, "Sai Mao"), (2, "Sai Hla")]
phones   = [("Sai Mao", "09123"), ("Sai Hla", "09456")]

-- ၵၢၼ်သိုပ်ႇ Bind (>>=)
getPhoneByID :: Int -> Maybe String
getPhoneByID id = 
    lookup id students >>= \name ->
    lookup name phones

-- ghci> getPhoneByID 1 --> Just "09123"
-- ghci> getPhoneByID 3 --> Nothing (ၵွပ်ႈ ID 3 ဢမ်ႇမီး)
```

---

### **3. 'do' Notation: ႁဵတ်းႁႂ်ႈ Code လူငၢႆႈ**
တွၼ်ႈတႃႇလုၵ်ႈႁဵၼ်း တႅမ်ႈငၢႆႈလိူဝ်ၼၼ်ႉ ႁဝ်းၸႂ်ႉ `do` block လႆႈၶႃႈ:

```haskell
getPhoneSafe :: Int -> Maybe String
getPhoneSafe id = do
    name  <- lookup id students -- သင် Nothing မၼ်းတေၵိုတ်းတီႈၼႆႈ
    phone <- lookup name phones -- သင် Nothing မၼ်းတေၵိုတ်းတီႈၼႆႈ
    return phone

-- ၼႆႉမိူၼ်ၼင်ႇႁဝ်းတႅမ်ႈ Try-Catch ဢၼ်သႅၼ်ႈသႂ်ႇသုတ်းၶႃႈ!
```



---

### **4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Maybe Monad?**
ၸဝ်ႈၶူး ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1.  **Short-circuiting**: သင်မီးလွင်ႈၽိတ်းပႅၵ်ႇတီႈလႂ်ၵေႃႈယဝ်ႉ၊ Program ႁဝ်းတေဢမ်ႇ Crash၊ မၼ်းတေပၼ် `Nothing` ႁႂ်ႈႁဝ်းႁူႉတႅတ်ႈတေႃးၶႃႈ။
2.  **No Null Pointer**: ႁဝ်းဢမ်ႇလူဝ်ႇၵူဝ် Null Pointer Exception မိူၼ် Java။
3.  **Readability**: Code ႁဝ်းတေလူငၢႆႈ လႄႈ ၼႄႁႂ်ႈႁၼ် "Happy Path" (လႅၼ်းတၢင်းဢၼ်မၢၼ်ႇမႅၼ်ႈ) လႆႈလီၶႃႈ။

---

### **Teacher's Lab: "The Grade Checker"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function ဢၼ်တေဢဝ်တူဝ်ၼပ်ႉ 2 တူဝ် မႃးၸႅၵ်ႇ (`div`) ၵၼ်၊ သင်တူဝ်ၸႅၵ်ႇပဵၼ် `0` ႁႂ်ႈပၼ် `Nothing` ၶႃႈ:

```haskell
safeDiv :: Int -> Int -> Maybe Int
safeDiv _ 0 = Nothing
safeDiv n d = Just (n `div` d)

-- ၸႂ်ႉ Maybe Monad တႃႇၼပ်ႉလၢႆၸၼ်ႉ
calculate :: Int -> Int -> Int -> Maybe Int
calculate x y z = do
    res1 <- safeDiv x y
    res2 <- safeDiv res1 z
    return res2

-- ghci> calculate 100 2 5 --> Just 10
-- ghci> calculate 100 0 5 --> Nothing
```

---

### **Summary for TMK Students:**
* **Bind (`>>=`)**: ၸွႆႈႁႂ်ႈသိုပ်ႇၵၢၼ်ၼပ်ႉ ဢၼ်ၸၢင်ႈ "ပိုတ်ႇ" (Fail)။
* **Nothing**: သင်မီးတူဝ်ၼိုင်ႈပဵၼ် Nothing ၽွၼ်းလႅၼ်ႈတင်းหมดပဵၼ် Nothing။
* **do block**: ႁဵတ်းႁႂ်ႈၵၢၼ်ၸတ်းၵၢၼ် Error မိူၼ်ၼင်ႇၵၢၼ်တႅမ်ႈ Code ထမ်ႇမတႃႇ။
