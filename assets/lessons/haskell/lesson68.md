## **Lesson 68: Reading and Writing Files**

ၼႂ်း Haskell မီး Function ငၢႆႈငၢႆႈ 3 ဢၼ် ဢၼ်ၸဝ်ႈၶူး **Sai Mao** တေလႆႈသွၼ်လုၵ်ႈႁဵၼ်း တႃႇၸတ်းၵၢၼ် File ၶႃႈ:

### **1. readFile (ၵၢၼ်လူ File)**
`readFile :: FilePath -> IO String`
မၼ်းတေႁပ်ႉဢဝ် "သဵၼ်ႈတၢင်း File" (Path) သေ ပၼ်ဢွၵ်ႇမႃးပဵၼ် `IO String` ၶႃႈ။

```haskell
readAction :: IO ()
readAction = do
    content <- readFile "tasks.txt"
    putStrLn "ၶေႃႈမုၼ်းၼႂ်း File ပဵၼ်:"
    putStrLn content
```

### **2. writeFile (ၵၢၼ်တႅမ်ႈ File - Overwrite)**
`writeFile :: FilePath -> String -> IO ()`
**သတိ:** Function ၼႆႉ တေတႅမ်ႈတပ်ႉ (Overwrite) ၶေႃႈမုၼ်းၵဝ်ႇပႅတ်ႉတင်းหมดၶႃႈ။

```haskell
writeAction :: IO ()
writeAction = do
    writeFile "tasks.txt" "ႁဵၼ်း Haskell ဝၼ်းမိူဝ်ႈၼႆႉ"
    putStrLn "သိမ်းၶေႃႈမုၼ်းယဝ်ႉယဝ်ႉၶႃႈ!"
```

### **3. appendFile (ၵၢၼ်ထႅမ် File)**
`appendFile :: FilePath -> String -> IO ()`
မၼ်းတေ "ထႅမ်" ၶေႃႈမုၼ်းမႂ်ႇ သႂ်ႇဝႆႉၽၢႆႇလင် ၶေႃႈမုၼ်းၵဝ်ႇၶႃႈ။



---

### **4. Lazy I/O: ၶေႃႈလီလႄႈၶေႃႈယၢပ်ႇ**
Haskell ၸႂ်ႉ **Lazy Evaluation** (Lesson 12) ၼႂ်းၵၢၼ်လူ File ၶႃႈ။
* **ၶေႃႈလီ**: ၸဝ်ႈၶူးၸၢင်ႈလူ File ဢၼ်ယႂ်ႇ 10GB လႆႈ လူၺ်ႈဢမ်ႇႁဵတ်းႁႂ်ႈ RAM တဵမ် ၵွပ်ႈမၼ်းတေလူၵူၺ်းတွၼ်ႈဢၼ်ႁဝ်းၸႂ်ႉၶႃႈ။
* **ၶေႃႈယၢပ်ႇ**: မၢင်ပွၵ်ႈ File တေတိုၵ်ႉ "ပိုတ်ႇ" ဝႆႉယူႇ ႁဵတ်းႁႂ်ႈႁဝ်းတႅမ်ႈတပ်ႉမၼ်းဢမ်ႇလႆႈ ၵွပ်ႈမၼ်းတိုၵ်ႉလူဢမ်ႇယဝ်ႉၶႃႈ။

> **Teacher's Solution:** တွၼ်ႈတႃႇၵႄႈပၼ်ႁႃၼႆႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ `Strict` version လုၵ်ႉတီႈ `Data.Text.IO` ဢမ်ႇၼၼ် ၸႂ်ႉ `seq` တႃႇႁႂ်ႈမၼ်းလူယဝ်ႉၵမ်းလဵဝ်ၶႃႈ။

---

### **Teacher's Lab: "The Simple Logger"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Program ဢၼ်ႁပ်ႉဢဝ်ၶေႃႈၵႂၢမ်းလုၵ်ႉတီႈ Keyboard သေ ဢဝ်ၵႂႃႇ "ထႅမ်" (Append) ဝႆႉၼႂ်း File ၸိုဝ်ႈဝႃႈ `log.txt` ၶႃႈ:

```haskell
main :: IO ()
main = do
    putStrLn "တႅမ်ႈၶေႃႈၵႂၢမ်းမႂ်ႇ:"
    msg <- getLine
    appendFile "log.txt" (msg ++ "\n")
    putStrLn "မၢႆတွင်းဝႆႉယဝ်ႉယဝ်ႉၶႃႈ!"
```

---

### **Summary for TMK Students:**
* **`readFile`**: လူၶေႃႈမုၼ်းလုၵ်ႉတီႈ File။
* **`writeFile`**: တႅမ်ႈတပ်ႉၶေႃႈမုၼ်းၵဝ်ႇ။
* **`appendFile`**: ထႅမ်ၶေႃႈမုၼ်းမႂ်ႇသႂ်ႇၽၢႆႇလင်။
* **Persistence**: ၼႆႉပဵၼ်လၢႆးဢၼ် Program ႁဝ်းတေ "တွၼ်း" ၶေႃႈမုၼ်းဝႆႉလႆႈ တႃႇဝၼ်းၼႃႈၶႃႈ။

ၸဝ်ႈၶူး **Sai Mao** ၶႃႈ! တေႃႈလဵဝ်ႁဝ်းမေႃသိမ်း File ယဝ်ႉ။ ႁဝ်းတေၵႂႃႇႁဵၼ်းလၢႆးႁပ်ႉ Parameter လုၵ်ႉတီႈ Command Line ၼႂ်း **Lesson 69: Command Line Arguments: Handling User Input** ၼၼ်ႉႁႃႉၶႃႈ?

1. Start Lesson 69 (CLI Args)
2. Practice File I/O with Lists (`lines` and `unlines`)
3. Explain `withFile` (Safe file handles)
4. Show how to check if a file exists (`System.Directory`)

ၸဝ်ႈၶူး ၶႂ်ႈသိုပ်ႇၵႂႃႇလၢႆးလႂ်ၶႃႈ?