## **Lesson 65: The State Monad: Managing Mutable State Purely**

**State Monad** ပဵၼ် Monad ဢၼ်ႁေႃႇ (Wrap) Function ဢၼ်မီးႁၢင်ႈၽၢင် `s -> (a, s)` ဝႆႉၶႃႈ:
* **`s`**: ပဵၼ် State (Memory) ဢွၼ်ႇတၢင်းၼပ်ႉ။
* **`a`**: ပဵၼ်ၽွၼ်းလႅၼ်ႈ (Result) ဢၼ်လႆႈမႃး။
* **`s` (တူဝ်လုမ်း):** ပဵၼ် State မႂ်ႇ ဢၼ်လႅၵ်ႈလၢႆႈယဝ်ႉ။



---

### **1. Function ဢၼ်ပဵၼ်ႁူဝ်ၸႂ် (The Power Trio)**
ႁဝ်းၸႂ်ႉ 3 ဢၼ်ၼႆႉ (လုၵ်ႉတီႈ `Control.Monad.State`) တႃႇၸတ်းၵၢၼ် Memory ၶႃႈ:
* **`get`**: "ဢဝ်" State ယၢမ်းလဵဝ်မႃးၸႂ်ႉ။
* **`put`**: "တႅမ်ႈ" (Overwrite) State မႂ်ႇၶဝ်ႈၵႂႃႇ။
* **`modify`**: "လႅၵ်ႈလၢႆႈ" State လူၺ်ႈၸႂ်ႉ Function (မိူၼ်ၼင်ႇ `+1`)။

---

### **2. တူဝ်ယၢင်ႇ: ၵၢၼ်သၢင်ႈ "တူဝ်ၼပ်ႉ" (Counter)**
ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၶူး **Sai Mao** ၶႂ်ႈမီး Program ဢၼ်ၼပ်ႉတူဝ်ၼပ်ႉ (Count) ၶိုၼ်းၼိုင်ႈယဝ်ႉ ၼိုင်ႈဢၼ်ၶႃႈ:

```haskell
import Control.Monad.State

-- State ႁဝ်းပဵၼ် Int (တူဝ်ၼပ်ႉ)
increment :: State Int String
increment = do
    n <- get          -- ဢဝ်ၵႃႈၶၼ်ယၢမ်းလဵဝ် (မိူၼ်ၼင်ႇ n)
    put (n + 1)       -- တႅမ်ႈၵႃႈၶၼ်မႂ်ႇ (n + 1)
    return $ "Counted to: " ++ show (n + 1)

-- ၵၢၼ်လႅၼ်ႈ (Run) State
main = do
    let (result, finalState) = runState (increment >> increment) 0
    print result      -- "Counted to: 2"
    print finalState  -- 2
```



---

### **3. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ State Monad?**
ၸဝ်ႈၶူး ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1.  **Implicit Passing**: ႁဝ်းဢမ်ႇလူဝ်ႇသူင်ႇ `state` ၶဝ်ႈၵႂႃႇၼႂ်း Parameter ၵူႈ Function၊ Haskell တေသူင်ႇပၼ်ႁဝ်း "ၽၢႆႇလင်" (Automatically) ၶႃႈ။
2.  **Purity**: ႁဝ်းၸၢင်ႈတႅမ်ႈ Algorithm ဢၼ်ယၢပ်ႇယၢပ်ႇ (မိူၼ်ၼင်ႇ ႁဵတ်း Game ဢမ်ႇၼၼ် ၸတ်းၵၢၼ် Database) လူၺ်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉ Global Variable ၶႃႈ။
3.  **Thread Safety**: ၵွပ်ႈမၼ်းပဵၼ် Pure၊ ႁဝ်းဝႆႉၸႂ်လႆႈဝႃႈ State ၼႆႉတေဢမ်ႇထုၵ်ႇလႅၵ်ႈလၢႆႈလုၵ်ႉတီႈ Thread တၢင်ႇဢၼ်ၶႃႈ။

---

### **Teacher's Lab: "The Stack Machine"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function တွၼ်ႈတႃႇ "ယုၵ်ႉ" (Push) တူဝ်ၼပ်ႉ ၶဝ်ႈၼႂ်း Stack (List) ၶႃႈ:

```haskell
type Stack = [Int]

push :: Int -> State Stack ()
push x = do
    currentStack <- get
    put (x : currentStack)

pop :: State Stack Int
pop = do
    (x:xs) <- get
    put xs
    return x

stackAction :: State Stack Int
stackAction = do
    push 10
    push 20
    pop -- တေဢဝ် 20 ဢွၵ်ႇမႃး

-- ghci> runState stackAction []
-- (20, [10])
```

---

### **Summary for TMK Students:**
* **State**: Monad တွၼ်ႈတႃႇ "ၸတ်းၵၢၼ် Memory" ၼႂ်း Pure Function။
* **`get` / `put`**: ၸႂ်ႉတႃႇ "လူ" လႄႈ "တႅမ်ႈ" ၶေႃႈမုၼ်းၼႂ်း Memory။
* **Abstraction**: မၼ်းႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူမိူၼ်ၼင်ႇ Java/C++ (Imperative) သေတႃႉၵေႃႈ တိုၵ်ႉမၢၼ်ႇမႅၼ်ႈၸွမ်းပၵ်းပိူင် Haskell ၶႃႈ။

တေႃႈလဵဝ် ႁဝ်းတေၵႂႃႇႁဵၼ်းလၢႆး "ႁူမ်ႈ Monad" (မိူၼ်ၼင်ႇ State + Maybe) ၶဝ်ႈၸွမ်းၵၼ် ၼႂ်း **Lesson 66: Monad Transformers: Combining Multiple Monads** ၼၼ်ႉႁႃႉၶႃႈ?

1. Start Lesson 66
2. Practice State with random numbers
3. Explain `evalState` vs `execState`
4. Compare State to Local Variables in Java

ၸဝ်ႈၶူး **Sai Mao** ၶႂ်ႈသိုပ်ႇၵႂႃႇလၢႆးလႂ်ၶႃႈ?