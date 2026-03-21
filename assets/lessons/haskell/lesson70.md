
## **Lesson 70: Exception Handling**

ၼႂ်း Haskell ႁဝ်းမီးလၢႆးၸတ်းၵၢၼ် Exception ယူႇ 2 လၢႆးယႂ်ႇယႂ်ႇၶႃႈ:
1.  **Pure Way (`Maybe` / `Either`)**: ၸႂ်ႉတွၼ်ႈတႃႇ Logic ဢၼ်ႁဝ်း "ဝၢင်းၽႅၼ်ဝႆႉ" ယဝ်ႉ (Lesson 60-61)။
2.  **Impure Way (`Control.Exception`)**: ၸႂ်ႉတွၼ်ႈတႃႇ "ၵၢၼ်ဢၼ်ဢမ်ႇမၢၼ်ႇမႅၼ်ႈ" ၼႂ်း IO (မိူၼ်ၼင်ႇ File ဢမ်ႇမီး, Internet လူႉ)။

### **1. try (ၵၢၼ်ၸၢမ်းႁဵတ်း)**
`try :: Exception e => IO a -> IO (Either e a)`
Function ၼႆႉ တေဢဝ် IO Action ႁဝ်းၵႂႃႇလႅၼ်ႈ။ သင်မၢၼ်ႇမႅၼ်ႈ မၼ်းတေပၼ် `Right`၊ သင်မီး Error မၼ်းတေပၼ် `Left` ၶႃႈ။

```haskell
import Control.Exception (try, IOError)

main :: IO ()
main = do
    result <- try (readFile "non_existent.txt") :: IO (Either IOError String)
    case result of
        Left  err -> putStrLn $ "Error: ဢမ်ႇႁၼ် File ၶႃႈ! " ++ show err
        Right content -> putStrLn content
```



---

### **2. catch (ၵၢၼ်ႁပ်ႉ Error)**
`catch :: Exception e => IO a -> (e -> IO a) -> IO a`
`catch` မိူၼ်တင်း `try` ၵူၺ်းၵႃႈ မၼ်းတေႁႂ်ႈႁဝ်းတႅမ်ႈ "Function တွၼ်ႈတႃႇၵႄႈပၼ်ႁႃ" (Handler) ဝႆႉၵမ်းလဵဝ်ၶႃႈ။

```haskell
import Control.Exception (catch, IOError)

main = do
    content <- readFile "tasks.txt" `catch` handleDiskError
    putStrLn content

handleDiskError :: IOError -> IO String
handleDiskError e = do
    putStrLn "မီးပၼ်ႁႃၼႂ်းၵၢၼ်လူ File၊ တေပၼ်ၵႃႈၶၼ်လၢႆ (Empty) ဝႆႉၶႃႈ..."
    return ""
```

---

### **3. Safe Parsing (ၵၢၼ်လူၶေႃႈမုၼ်းႁႂ်ႈဝႆႉၸႂ်လႆႈ)**
ၵႆႉၵႆႉလုၵ်ႈႁဵၼ်းၸႂ်ႉ `read` သေ ႁဵတ်းႁႂ်ႈ Program Crash မိူဝ်ႈ Input ဢမ်ႇမၢၼ်ႇမႅၼ်ႈ။ ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈသွၼ်ႁႂ်ႈၸႂ်ႉ `readMaybe` (လုၵ်ႉတီႈ `Text.Read`) ၶႃႈ:

```haskell
import Text.Read (readMaybe)

main = do
    putStrLn "တႅမ်ႈဢႃႇယုမႂ်း:"
    input <- getLine
    case readMaybe input :: Maybe Int of
        Just age -> putStrLn $ "ဢႃႇယုမႂ်းပဵၼ်: " ++ show age
        Nothing  -> putStrLn "Error: ႁႂ်ႈတႅမ်ႈပဵၼ်တူဝ်ၼပ်ႉၵူၺ်းၶႃႈ!"
```

---

### **Teacher's Lab: "The Unstoppable App"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Program ဢၼ်လူ File ဢၼ် User တႅမ်ႈပၼ်မႃး။ သင် File ၼၼ်ႉဢမ်ႇမီး ႁႂ်ႈ Program ထၢမ်ၸိုဝ်ႈ File မႂ်ႇထႅင်ႈပွၵ်ႈၼိုင်ႈ လူၺ်ႈဢမ်ႇႁႂ်ႈ Program ၵိုတ်းၶႃႈ:

```haskell
import Control.Exception (try, IOError)

safeReadFile :: IO ()
safeReadFile = do
    putStrLn "တႅမ်ႈၸိုဝ်ႈ File ဢၼ်ၶႂ်ႈလူ:"
    fileName <- getLine
    result <- try (readFile fileName) :: IO (Either IOError String)
    case result of
        Left _ -> do
            putStrLn "ဢမ်ႇႁၼ် File ၶႃႈ၊ ၸၢမ်းထႅင်ႈပွၵ်ႈၼိုင်ႈလႄႇ..."
            safeReadFile -- ႁွင်ႉတူဝ်မၼ်းၶိုၼ်း (Recursion)
        Right content -> putStrLn content

main = safeReadFile
```

---

### **Summary for TMK Students:**
* **`try` / `catch`**: ၸႂ်ႉတွၼ်ႈတႃႇၸတ်းၵၢၼ် Error ၼႂ်း IO။
* **`IOError`**: ပဵၼ် Type ၶေႃႈ Error ဢၼ်ၵပ်းၵၢႆႇတင်း System (File, Network)။
* **Crash-Proof**: ၵၢၼ်ၸတ်းၵၢၼ် Exception ႁဵတ်းႁႂ်ႈ Program ႁဝ်း Professional လႄႈ ဝႆႉၸႂ်လႆႈ (Robust) ၶႃႈ။
