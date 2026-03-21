
## **Lesson 71: Concurrency in Haskell**

ၼႂ်း Haskell ႁဝ်းမီး "Thread" ဢၼ်မီးၼမ်ႉၼၵ်းဝဝ်း (Lightweight Threads)။ ႁဝ်းၸၢင်ႈသၢင်ႈ Thread ပဵၼ်လၢၼ်ႉလၢၼ်ႉဢၼ် လႆႈၼိူဝ် Computer တူဝ်လဵဝ်ၶႃႈ။

### **1. forkIO (ၵၢၼ်ၸႅၵ်ႇ Thread)**
`forkIO :: IO () -> IO ThreadId`
Function ၼႆႉ (လုၵ်ႉတီႈ `Control.Concurrent`) တေဢဝ် IO Action ၵႂႃႇလႅၼ်ႈဝႆႉ "ၽၢႆႇလင်" (Background) သေ ႁႂ်ႈ Main Program သိုပ်ႇႁဵတ်းၵၢၼ်ၵႂႃႇလႆႈၵမ်းလဵဝ်ၶႃႈ။

```haskell
import Control.Concurrent (forkIO, threadDelay)

main :: IO ()
main = do
    forkIO $ replicateM_ 5 (putStrLn "Background Task..." >> threadDelay 1000000)
    putStrLn "Main Program is running!"
    threadDelay 6000000 -- ဝႆႉထႃႈႁႂ်ႈ Thread ၽၢႆႇလင်ႁဵတ်းယဝ်ႉ
```



---

### **2. MVar: ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း (Communication)**
မိူဝ်ႈႁဝ်းမီး Thread လၢႆဢၼ် ႁဝ်းလူဝ်ႇလၢႆး "သူင်ႇၶေႃႈမုၼ်း" ႁႃၵၼ်။ **MVar** မိူၼ်ၼင်ႇ "ၵွပ်း" ဢၼ်မီးၶေႃႈမုၼ်းယူႇတူဝ်လဵဝ်:
* **`newEmptyMVar`**: သၢင်ႈၵွပ်းလၢႆ။
* **`putMVar`**: သႂ်ႇၶေႃႈမုၼ်း (သင်မီးဝႆႉယဝ်ႉ မၼ်းတေထႃႈ)။
* **`takeMVar`**: ဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇ (သင်ၵွပ်းလၢႆ မၼ်းတေထႃႈ)။

```haskell
import Control.Concurrent

main = do
    m <- newEmptyMVar
    forkIO $ do
        putStrLn "Thread: တေသူင်ႇၶေႃႈမုၼ်းယဝ်ႉ..."
        putMVar m "Hello from Thread!"
    
    msg <- takeMVar m -- တေထႃႈ (Wait) တေႃႇၶေႃႈမုၼ်းတေမႃး
    putStrLn $ "Main: လႆႈႁပ်ႉဝႃႈ - " ++ msg
```

---

### **3. Async: ၵၢၼ်ႁဵတ်းၵၢၼ်ၸွမ်းၵၼ် (Parallelism)**
တွၼ်ႈတႃႇလုၵ်ႈႁဵၼ်း တႅမ်ႈငၢႆႈလိူဝ်ၼၼ်ႉ ႁဝ်းၸႂ်ႉ Library `Control.Concurrent.Async` လႆႈၶႃႈ။

```haskell
import Control.Concurrent.Async

main = do
    -- လႅၼ်ႈ Action သွင်ဢၼ်ၸွမ်းၵၼ် (Parallel)
    (res1, res2) <- concurrently (readFile "file1.txt") (readFile "file2.txt")
    putStrLn "လူ File တင်းသွင်ယဝ်ႉယဝ်ႉၶႃႈ!"
```



---

### **4. ၵွပ်ႈသင် Haskell Concurrency ၸင်ႇလီ?**
ၸဝ်ႈၶူး ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1.  **Lightweight**: Thread ၼိုင်ႈဢၼ်ၸႂ်ႉ Memory ဢွၼ်ႇဢွၼ်ႇၵူၺ်း။
2.  **No Race Conditions**: ၵွပ်ႈ Haskell ပဵၼ် Pure Functional၊ ၶေႃႈမုၼ်းဢမ်ႇလႅၵ်ႈလၢႆႈ (Immutable) ႁဵတ်းႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇၵူဝ် Thread သွင်ဢၼ်ၵႂႃႇလႅၵ်ႈလၢႆႈ Variable တူဝ်လဵဝ်ၵၼ်ၶႃႈ။
3.  **High Throughput**: လီသုတ်းတွၼ်ႈတႃႇသၢင်ႈ Server ဢၼ်တေႁပ်ႉ User တင်းၼမ်ၶႃႈ။

---

### **Teacher's Lab: "The Parallel Downloader"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Program ဢၼ် "မိူၼ်ၼင်ႇ" တေ Download File 3 ဢၼ်ၸွမ်းၵၼ် ၼင်ႇႁိုဝ်တေဢမ်ႇလူဝ်ႇထႃႈၵၼ်ၶႃႈ:

```haskell
import Control.Concurrent.Async
import Control.Concurrent (threadDelay)

download :: String -> IO String
download name = do
    putStrLn $ "Starting: " ++ name
    threadDelay 2000000 -- မိူၼ်ၼင်ႇလူဝ်ႇၶၢဝ်းယၢမ်း Download
    return $ name ++ " DONE"

main = do
    results <- mapConcurrently download ["Video.mp4", "Music.mp3", "Image.jpg"]
    print results
```

---

### **Summary for TMK Students:**
* **`forkIO`**: ၸႅၵ်ႇၵၢၼ်ႁဵတ်းၵႂႃႇဝႆႉၽၢႆႇလင်။
* **`MVar`**: ၸႂ်ႉတွၼ်ႈတႃႇသူင်ႇၶေႃႈမုၼ်း ၼႂ်းဝၢင်ႈ Threads။
* **`Async`**: လၢႆးတႅမ်ႈဢၼ်ငၢႆႈသုတ်း တွၼ်ႈတႃႇႁဵတ်းၵၢၼ် Parallel။
* **Speed**: ႁဵတ်းႁႂ်ႈ Program ႁဝ်းႁဵတ်းၵၢၼ်လႆႈဝႆးလိူဝ် (မိူၼ်ၼင်ႇ လူ File လၢႆလၢႆဢၼ်ၼႂ်းပွၵ်ႈလဵဝ်)။
