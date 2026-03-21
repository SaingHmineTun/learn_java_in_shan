## **Lesson 56: Applicative IO: Running Actions in Parallel (Concept)**

မိူဝ်ႈႁဝ်းၸႂ်ႉ **Applicative Style** (`<$>` လႄႈ `<*>`) တင်း IO၊ ႁဝ်းတေလႆႈ Logic ဢၼ် "သႅၼ်ႈသႂ်ႇ" လႄႈ မီးလႅၼ်းတၢင်းဢၼ်တေလႅၼ်ႈလႆႈဝႆးလိူဝ်ၶႃႈ။

### **1. Sequential (do block) vs. Applicative**

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၶူး **Sai Mao** ၶႂ်ႈႁပ်ႉဢဝ် "ၸိုဝ်ႈၼႃႈ" လႄႈ "ၸိုဝ်ႈလင်" လုၵ်ႉတီႈ Keyboard သေ ဢဝ်မႃးသိုပ်ႇၵၼ်ၶႃႈ:

* **လၢႆးတႅမ်ႈ `do` block (Step-by-step):**
  ```haskell
  main = do
      first <- getLine  -- ဝႆႉထႃႈတူဝ်ၼႆႉယဝ်ႉ ၸင်ႇၵႂႃႇတူဝ်ထႅင်ႈၼိုင်ႈ
      last  <- getLine
      putStrLn (first ++ " " ++ last)
  ```

* **လၢႆးၸႂ်ႉ Applicative (Independent Actions):**
  ```haskell
  main = do
      fullName <- (\f l -> f ++ " " ++ l) <$> getLine <*> getLine
      putStrLn fullName
  ```



---

### **2. ပၢႆးဝူၼ်ႉ "Parallel" (The Concept)**
ၼႂ်း Haskell Standard IO ၼၼ်ႉ `<*>` တိုၵ်ႉလႅၼ်ႈၼိုင်ႈဢၼ်ယဝ်ႉ ၸင်ႇၼိုင်ႈဢၼ်ယူႇ (ၵွပ်ႈဝႃႈ IO တိုၼ်းတေလႆႈမီး Order)။ ၵူၺ်းၵႃႈ **Applicative** မီးၽွၼ်းလီလူင် 1 ယိူင်ႈ:

> **"Actions ၸိူဝ်းၼႆႉ ဢမ်ႇဢိင်ၼိူဝ်ၵၼ်" (Independence)**

ၼႂ်း `do` block ၼၼ်ႉ `last <- getLine` ၸၢင်ႈဢိင်ၼိူဝ် `first` လႆႈ၊ ၵူၺ်းၵႃႈ ၼႂ်း Applicative Style ၼၼ်ႉ `getLine` တူဝ်ထူၼ်ႈသွင် **ဢမ်ႇၸၢင်ႈႁူႉ** ၵႃႈၶၼ်ၶေႃႈ `getLine` တူဝ်ထူၼ်ႈၼိုင်ႈၶႃႈ။

**ၵွပ်ႈသင်ၼႆႉၸင်ႇလီ?**
ၵွပ်ႈဝႃႈမၼ်းဢမ်ႇဢိင်ၼိူဝ်ၵၼ်၊ Haskell ၸင်ႇၸၢင်ႈၸႂ်ႉ Library မိူၼ်ၼင်ႇ `Concurrently` (လုၵ်ႉတီႈ `Control.Concurrent.Async`) တႃႇႁႂ်ႈ Actions ၸိူဝ်းၼၼ်ႉ လႅၼ်ႈၸွမ်းၵၼ် (Parallel) တႄႉတႄႉၼိူဝ် CPU လၢႆလၢႆ Core လႆႈၶႃႈယဝ်ႉ။



---

### **3. တူဝ်ယၢင်ႇ: ၵၢၼ်လူ File လၢႆလၢႆဢၼ်**
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈလူ File 3 ဢၼ်သေ ဢဝ်ၶေႃႈမုၼ်းမႃးႁူမ်ႈၵၼ်ၶႃႈ:

```haskell
-- လၢႆးၼႆႉ ၸၢင်ႈလႅၼ်ႈလႆႈဝႆးလိူဝ် (သင်ၸႂ်ႉ Concurrently) 
-- ၵွပ်ႈ Actions ၼႆႉဢမ်ႇထႃႈၵၼ်
readFiles = (,,) <$> readFile "file1.txt" 
                 <*> readFile "file2.txt" 
                 <*> readFile "file3.txt"
```

---

### **Teacher's Lab: "The Independent Prompt"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Code တွၼ်ႈတႃႇႁပ်ႉဢဝ် "ဢႃႇယု" လႄႈ "ၸိုဝ်ႈ" လုၵ်ႉတီႈ Keyboard လူၺ်ႈၸႂ်ႉ `liftA2` ၶႃႈ:

```haskell
import Control.Applicative (liftA2)

getUserData :: IO String
getUserData = liftA2 (\name age -> name ++ " is " ++ age ++ " years old.") getLine getLine

-- main = do
--    info <- getUserData
--    putStrLn info
```

---

### **Summary for TMK Students:**
* **Independence**: Applicative Actions ဢမ်ႇႁူႉၵႃႈၶၼ် ဢၼ်ၵၼ်လႄႈၵၼ် (ဢမ်ႇဢိင်ၼိူဝ်ၵၼ်)။
* **Structure over Flow**: Applicative ၼႄႁႂ်ႈႁၼ်ဝႃႈ "ႁဝ်းတေဢဝ်သင်မႃးႁူမ်ႈၵၼ်"၊ ဢမ်ႇၸိုင် "ႁဝ်းတေႁဵတ်းသင်ဢွၼ်ႇတၢင်း"။
* **Potential**: လၢႆးတႅမ်ႈၼႆႉ ပိုတ်ႇၽၵ်းတူပၼ် ၵၢၼ်ႁဵတ်း **Parallel Programming** ၼႂ်း Haskell ၶႃႈယဝ်ႉ။