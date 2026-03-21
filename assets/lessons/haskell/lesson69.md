## **Lesson 69: Command Line Arguments**

### **1. getArgs (ၵၢၼ်ႁပ်ႉ Argument)**
`getArgs :: IO [String]`
Function ၼႆႉ တေပၼ်ဢွၵ်ႇမႃးပဵၼ် List ၶေႃႈ String ဢၼ် User တႅမ်ႈဝႆႉၽၢႆႇလင်ၸိုဝ်ႈ Program ႁဝ်းၶႃႈ။

```haskell
import System.Environment (getArgs)

main :: IO ()
main = do
    args <- getArgs
    putStrLn $ "မႂ်းသူင်ႇ Argument မႃးတင်းหมด: " ++ show (length args)
    putStrLn $ "Argument ၸိူဝ်းၼၼ်ႉပဵၼ်: " ++ show args
```



---

### **2. getProgName (ၵၢၼ်ႁပ်ႉၸိုဝ်ႈ Program)**
`getProgName :: IO String`
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈႁူႉၸိုဝ်ႈ File `main.exe` ဢမ်ႇၼၼ် ၸိုဝ်ႈ Program ႁဝ်း တွၼ်ႈတႃႇၼႄလၢႆးၸႂ်ႉ (Usage) ၶႃႈ။

```haskell
import System.Environment (getArgs, getProgName)

main = do
    progName <- getProgName
    args     <- getArgs
    if null args
        then putStrLn $ "Usage: " ++ progName ++ " <your_name>"
        else putStrLn $ "Hello, " ++ head args
```

---

### **3. ၵၢၼ်ၸတ်းၵၢၼ် Argument (Parsing)**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈသွၼ်လုၵ်ႈႁဵၼ်း ႁႂ်ႈၸႂ်ႉ `case` တွၼ်ႈတႃႇတႅတ်းသႅၼ်းဝႃႈ User ၶႂ်ႈႁဵတ်းသင်ၶႃႈ:

```haskell
main = do
    args <- getArgs
    case args of
        ["add", task] -> appendFile "tasks.txt" (task ++ "\n")
        ["list"]      -> readFile "tasks.txt" >>= putStr
        _             -> putStrLn "Commands: add <task> | list"
```



---

### **4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ CLI Arguments?**
ၸဝ်ႈၶူး ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1.  **Automation**: ႁဝ်းၸၢင်ႈတႅမ်ႈ Script ႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇလူဝ်ႇထႃႈ User ၼဵၵ်း Keyboard ယူႇသေႇသေႇ။
2.  **Tooling**: ႁဵတ်းႁႂ်ႈ Program ႁဝ်းပဵၼ် Professional Tool ဢၼ်ၸၢင်ႈၸႂ်ႉႁူမ်ႈတင်းတၢင်ႇဢၼ် (Piping) လႆႈၶႃႈ။
3.  **Flexibility**: User ၸၢင်ႈလိူၵ်ႈ Input File ဢမ်ႇၼၼ် Option ပႅၵ်ႇၵၼ် လုၵ်ႉတီႈ Terminal ၵမ်းလဵဝ်ၶႃႈ။

---

### **Teacher's Lab: "The Multi-Calculator"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Program ဢၼ်ႁပ်ႉ Argument 3 တူဝ် (မိူၼ်ၼင်ႇ `add 10 20`) သေ ပၼ်ၽွၼ်းလႅၼ်ႈဢွၵ်ႇမႃးၶႃႈ:

```haskell
import System.Environment (getArgs)

main = do
    args <- getArgs
    case args of
        ["add", x, y] -> print (read x + read y :: Int)
        ["mul", x, y] -> print (read x * read y :: Int)
        _             -> putStrLn "Usage: add|mul <num1> <num2>"
```
*(သတိ: ၸႂ်ႉ `read` တႃႇပိၼ်ႇ String ပဵၼ် Int ၶႃႈ)*

---

### **Summary for TMK Students:**
* **`getArgs`**: ႁပ်ႉ Argument တင်းหมดပဵၼ် `[String]`။
* **Pattern Matching**: ၸႂ်ႉတွၼ်ႈတႃႇၸႅၵ်ႇ Command (မိူၼ်ၼင်ႇ "add", "view")။
* **CLI Power**: ႁဵတ်းႁႂ်ႈ Program ႁဝ်း တုမ်ႉတွပ်ႇတင်း User လႆႈဝႆးလိူဝ်ၶႃႈ။
