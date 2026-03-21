## **Lesson 55: IO as a Functor: Mapping Over Real-World Data**

မိူဝ်ႈႁဝ်းၸႂ်ႉ `fmap` တင်း IO၊ ႁဝ်းတေလႆႈ **IO Action** မႂ်ႇၼိုင်ႈဢၼ် ဢၼ်တေႁပ်ႉဢဝ်ၶေႃႈမုၼ်း၊ လႅၵ်ႈလၢႆႈမၼ်း၊ ယဝ်ႉၸင်ႇပၼ်ၽွၼ်းလႅၼ်ႈဢွၵ်ႇမႃးၶႃႈ။

### **1. ပၢႆးဝူၼ်ႉ (Mapping over the World)**
ဝူၼ်ႉတူၺ်းဝႃႈ `getLine` ပဵၼ်ၵွပ်းဢၼ်မီး "တူဝ်လိၵ်ႈ" ယူႇၼႂ်းမၼ်း။ သင်ႁဝ်းၶႂ်ႈႁႂ်ႈတူဝ်လိၵ်ႈၼၼ်ႉ ပဵၼ်တူဝ်လိၵ်ႈလူင် (Uppercase) တင်းหมด ႁဝ်းတေၸၢင်ႈတႅမ်ႈၼင်ႇၼႆၶႃႈ:

* **လၢႆးတႅမ်ႈ `do` block (ယၢဝ်း):**
```haskell
main = do
    line <- getLine
    let upperLine = map toUpper line
    putStrLn upperLine
```

* **လၢႆးၸႂ်ႉ `fmap` (သႅၼ်ႈသႂ်ႇ):**
```haskell
main = do
    upperLine <- fmap (map toUpper) getLine
    putStrLn upperLine
```
*(ဢမ်ႇၼၼ် ၸႂ်ႉ `<$>` : `upperLine <- map toUpper <$> getLine`)*



---

### **2. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ IO Functor?**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈလၢတ်ႈၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1. **Clean Code**: ႁဝ်းဢမ်ႇလူဝ်ႇပိုတ်ႇ `<-` လၢႆပွၵ်ႈ လၢႆၸၼ်ႉ တႃႇလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းဢွၼ်ႇဢွၼ်ႇ။
2. **Pipeline**: ႁဝ်းၸၢင်ႈသိုပ်ႇ Function ၶဝ်ႈၵၼ် (Composition) ယဝ်ႉၸင်ႇ `fmap` ၵမ်းလဵဝ်။
    * `reverse . map toUpper <$> getLine`
3. **Pure Logic**: မၼ်းၸွႆႈႁႂ်ႈႁဝ်းဢဝ် Function ဢၼ်ပဵၼ် Pure (ဢၼ်ဢမ်ႇၵပ်းၵၢႆႇတင်း IO) ၵႂႃႇၸႂ်ႉၼႂ်း IO လႆႈငၢႆႈငၢႆႈၶႃႈ။

---

### **3. တူဝ်ယၢင်ႇ: ၵၢၼ်လူတူဝ်ၼပ်ႉ (Safe Reading)**
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈႁပ်ႉဢဝ်တူဝ်ၼပ်ႉ လုၵ်ႉတီႈ Keyboard သေ ဢဝ်မႃးၼပ်ႉတင်း 2 ၶႃႈ:

```haskell
-- readLn ပဵၼ် IO Int
-- ႁဝ်းၸၢင်ႈ fmap (*2) ၶဝ်ႈၵႂႃႇၵမ်းလဵဝ်
doubleInput :: IO Int
doubleInput = (*2) <$> readLn

main = do
    putStrLn "Enter a number:"
    n <- doubleInput
    putStrLn $ "Double of your number is: " ++ show n
```

---

### **Teacher's Lab: "The Prompt Formatter"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function ဢၼ်တေႁပ်ႉဢဝ် "ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း" သေ ထႅမ်ၶေႃႈၵႂၢမ်း "Student: " ဝႆႉၽၢႆႇၼႃႈ လူၺ်ႈၸႂ်ႉ `fmap` ၶႃႈ:

```haskell
getStudentName :: IO String
getStudentName = ("Student: " ++) <$> getLine

-- လၢႆးၸႂ်ႉၼႂ်း main:
-- main = do
--    name <- getStudentName
--    putStrLn name
```

---

### **Summary for TMK Students:**
* **IO Functor**: ၸွႆႈႁႂ်ႈႁဝ်း "သူင်ႇ" ၵၢၼ်လႅၵ်ႈလၢႆႈ ၶဝ်ႈၵႂႃႇၼႂ်း IO Action။
* **`<$>`**: ပဵၼ်သင်ႇၵေႇတႃႇဢၼ် ၸဝ်ႈၶူးတေလႆႈၸႂ်ႉၼမ်သုတ်း မိူဝ်ႈတႅမ်ႈ IO Code ၶႃႈ။
* **Structure**: ၽွၼ်းလႅၼ်ႈတိုၼ်းတေပဵၼ် `IO` ဝႆႉမိူၼ်ၵဝ်ႇ၊ ၵူၺ်းၵႃႈ ၶေႃႈမုၼ်းၼႂ်းမၼ်းလႅၵ်ႈလၢႆႈၵႂႃႇယဝ်ႉ။
