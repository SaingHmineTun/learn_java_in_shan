## **Lesson 34: The Maybe Type: Handling Nothingness Gracefully**

**`Maybe`** ပဵၼ် Type ဢၼ်ၸႂ်ႉတႃႇလၢတ်ႈဝႃႈ "ၵႃႈၶၼ်ၼႆႉ ၸၢင်ႈမီး ဢမ်ႇၼၼ် ၸၢင်ႈႁၢႆလၢႆ" ၶႃႈ။

### **1. ပိူင်တႅမ်ႈ (Definition)**
Haskell ပိုတ်ႇဝႆႉၼင်ႇၼႆၶႃႈ:
```haskell
data Maybe a = Nothing | Just a
```
* **`Nothing`**: တႅၼ်းၶေႃႈမုၼ်းဢၼ် "ဢမ်ႇမီး" (မိူၼ်ၼင်ႇ Null)။
* **`Just a`**: တႅၼ်းၶေႃႈမုၼ်းဢၼ် "မီးတႄႉတႄႉ" (မိူၼ်ၼင်ႇ Just 5, Just "Sai")။



---

### **2. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ Maybe?**
ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၶူး **Sai Mao** ၶႂ်ႈႁႃ "ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း" ၼႂ်း List လူၺ်ႈၸႂ်ႉ ID ၶႃႈ။ သင်ဝႃႈ ID ၼၼ်ႉဢမ်ႇမီးၼႂ်း List ၼႆ ႁဝ်းတေပၼ်သင်ဢွၵ်ႇမႃး?

**တူဝ်ယၢင်ႇ: Function ႁႃၶေႃႈမုၼ်း**
```haskell
findStudent :: Int -> [(Int, String)] -> Maybe String
findStudent _ [] = Nothing -- Base Case: ဢမ်ႇမီးၶေႃႈမုၼ်း
findStudent searchId ((id, name):xs)
    | searchId == id = Just name   -- ႁၼ်ယဝ်ႉ!
    | otherwise      = findStudent searchId xs -- သိုပ်ႇႁႃထႅင်ႈ
```

---

### **3. ၵၢၼ်ၸတ်းၵၢၼ်တင်း Maybe (Pattern Matching)**
မိူဝ်ႈႁဝ်းလႆႈ `Maybe` ဢွၵ်ႇမႃးယဝ်ႉ ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ်မႃးၼပ်ႉၵမ်းလဵဝ် (ၵွပ်ႈမၼ်းတိုၵ်ႉယူႇၼႂ်း "ၵွပ်း" `Just`)။ ႁဝ်းလူဝ်ႇၸႂ်ႉ **Pattern Matching** တႃႇပိုတ်ႇၵွပ်းမၼ်းၶႃႈ:

```haskell
sayHello :: Maybe String -> String
sayHello Nothing = "Student not found!"
sayHello (Just name) = "Hello, " ++ name
```



---

### **4. ၽွၼ်းလီၶေႃႈ Maybe**
1. **Force to Handle:** Haskell တေၸိသင်ႇႁႂ်ႈၸဝ်ႈၶူး တႅမ်ႈ Case တွၼ်ႈတႃႇ `Nothing` ယူႇသေႇသေႇ။ သင်လိုမ်းတႅမ်ႈၼႆ Code တေဢမ်ႇလႅၼ်ႈ (Compile Error)။
2. **No Crashes:** Program တေဢမ်ႇၶႅပ်းလႅဝ်းလႅဝ်း ၵွပ်ႈႁဝ်းမီးလၢႆးၵႅတ်ႇၶႄဝႆႉယဝ်ႉ။

---

### **Teacher's Lab: "Safe Division"**
ၼႂ်းပၢႆးၼပ်ႉ ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ်တူဝ်ၼပ်ႉသင်ၵေႃႈယဝ်ႉ မႃးၸႅၵ်ႇတင်း `0` လႆႈ။ ႁႂ်ႈလုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** တႅမ်ႈ Function ၵၢၼ်ၸႅၵ်ႇဢၼ် "ၵႅတ်ႇၶႄ" ၶႃႈ:

```haskell
safeDiv :: Float -> Float -> Maybe Float
safeDiv _ 0 = Nothing -- သင်တူဝ်ၸႅၵ်ႇပဵၼ် 0 ႁႂ်ႈပၼ် Nothing
safeDiv x y = Just (x / y)

-- လၢႆးၸႂ်ႉ:
-- safeDiv 10 2 --> Just 5.0
-- safeDiv 10 0 --> Nothing
```

---

### **Summary of Module 4 (Type Systems and Data Modeling)**
1. **Typeclasses**: မေႃၸႅၵ်ႇ `Eq`, `Ord`, `Show`, `Num`။
2. **Data Definition**: မေႃသၢင်ႈ Type ႁင်းၵူၺ်းလူၺ်ႈ `data`။
3. **Record Syntax**: မေႃသၢင်ႈ Record ဢၼ်မီး Field ၸိုဝ်ႈ (မိူၼ် Student)။
4. **Maybe**: မေႃၸတ်းၵၢၼ်ၶေႃႈမုၼ်းဢၼ်ႁၢႆလၢႆ (Nothing) ႁႂ်ႈၵႅတ်ႇၶႄ။

---