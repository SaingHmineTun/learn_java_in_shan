## **Lesson 73: Project Part 2: Implementing Features**

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေတႅမ်ႈ Function တွၼ်ႈတႃႇၸတ်းၵၢၼ် Task လူၺ်ႈၸႂ်ႉ Monads တွၼ်ႈတႃႇၵူတ်ႇထတ်း Error ၶႃႈ။

### **1. Safe Task Finding (Using Maybe)**
မိူဝ်ႈ User တႅမ်ႈ ID ဢၼ်ဢမ်ႇမီးယူႇတႄႉ (မိူၼ်ၼင်ႇ `done 99`)၊ ႁဝ်းတေၸႂ်ႉ **Maybe** တႃႇၵႅတ်ႇၶႄ Program ၶႃႈ။

```haskell
-- ႁႃ Task ၸွမ်းလူၺ်ႈ ID
findTask :: Int -> [Task] -> Maybe Task
findTask targetId tasks = 
    find (\t -> todoId t == targetId) tasks

-- မႄး Task ႁႂ်ႈပဵၼ် "Done"
markDone :: Int -> [Task] -> [Task]
markDone targetId tasks = 
    map (\t -> if todoId t == targetId then t { done = True } else t) tasks
```

---

### **2. Saving & Loading (Using IO Monad)**
ႁဝ်းတေၸႂ်ႉ `show` လႄႈ `read` တွၼ်ႈတႃႇပိၼ်ႇ List ၶေႃႈ Task ႁႂ်ႈပဵၼ် String သေသိမ်းဝႆႉၼႂ်း File ၶႃႈ။

```haskell
saveTasks :: [Task] -> IO ()
saveTasks tasks = writeFile "tasks.txt" (show tasks)

loadTasks :: IO [Task]
loadTasks = do
    content <- readFile "tasks.txt"
    -- ၸႂ်ႉ read တွၼ်ႈတႃႇပိၼ်ႇ String ၶိုၼ်းပဵၼ် [Task]
    return (read content :: [Task])
```


---

### **3. Dispatching Commands (The Router)**
ၼႆႉပဵၼ် "ႁူဝ်ၸႂ်" ၶေႃႈ Program ဢၼ်တေလိူၵ်ႈလႅၼ်ႈ Function ၸွမ်းလူၺ်ႈ Argument ဢၼ် User တႅမ်ႈမႃးၶႃႈ။

```haskell
dispatch :: String -> [String] -> [Task] -> IO ()
dispatch "add"  [name] tasks = do
    let newTasks = addTask tasks name
    saveTasks newTasks
    putStrLn "Item added!"

dispatch "list" _ tasks = do
    putStrLn "Your Todo List:"
    mapM_ (putStrLn . formatTask) tasks

dispatch "done" [idStr] tasks = do
    let taskId = read idStr
    let newTasks = markDone taskId tasks
    saveTasks newTasks
    putStrLn "Task marked as done!"

dispatch _ _ _ = putStrLn "Invalid Command!"
```

---

### **4. Format for Display (Pure View)**
သၢင်ႈ Function ဢွၼ်ႇဢွၼ်ႇ တႃႇၼႄ Task ႁႂ်ႈလူငၢႆႈၶႃႈ:

```haskell
formatTask :: Task -> String
formatTask (Task tid name isDone) = 
    let status = if isDone then "[X]" else "[ ]"
    in show tid ++ ". " ++ status ++ " " ++ name
```

---

### **Teacher's Lab: "The Main Loop"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function `main` ဢၼ်တေႁူမ်ႈဢဝ်တင်းหมด ၶဝ်ႈၸွမ်းၵၼ်ၶႃႈ:

```haskell
import System.Environment (getArgs)

main :: IO ()
main = do
    args <- getArgs
    case args of
        (command:argsList) -> do
            tasks <- loadTasks -- လူၶေႃႈမုၼ်းလုၵ်ႉတီႈ File
            dispatch command argsList tasks
        [] -> putStrLn "Usage: tmk [add|list|done] [args]"
```

---

### **Summary for TMK Students:**
* **Monads in Action**: ၸႂ်ႉ **IO** တႃႇသူင်ႇၶေႃႈမုၼ်း၊ ၸႂ်ႉ **Maybe** တွၼ်ႈတႃႇၵူတ်ႇထတ်း ID။
* **Persistence**: ႁဵတ်းႁႂ်ႈ Program ႁဝ်းမီး Memory ၸၢင်ႈသိမ်းၶေႃႈမုၼ်းလႆႈတႄႉ။
* **Code Reusability**: ၸႅၵ်ႇ Pure Logic ဢွၵ်ႇလုၵ်ႉတီႈ IO ႁဵတ်းႁႂ်ႈမႄး Code လႆႈငၢႆႈၶႃႈ။
