
## **Lesson 66: Monad Transformers: Combining Monads**

မိူဝ်ႈႁဝ်းဢဝ် Monad သွင်ဢၼ် (မိူၼ်ၼင်ႇ `Maybe` လႄႈ `IO`) မႃးႁူမ်ႈၵၼ်ထမ်ႇမတႃႇ ႁဝ်းတေလႆႈ `IO (Maybe a)` ဢၼ်ယၢပ်ႇတွၼ်ႈတႃႇၸတ်းၵၢၼ်။ **Transformers** တေမႃးလႅၵ်ႈလၢႆႈႁၢင်ႈၽၢင်မၼ်း ႁႂ်ႈပဵၼ် **`MaybeT IO a`** ဢၼ်ၸၢင်ႈၸႂ်ႉ `do` block လဵဝ်ၵၼ်လႆႈၶႃႈ။

### **1. ၸိုဝ်ႈလႄႈႁၢင်ႈၽၢင် (The 'T' Suffix)**
Monad Transformers တိုၼ်းတေမီးတူဝ်လိၵ်ႈ **`T`** ဝႆႉၽၢႆႇလင်ၸိုဝ်ႈမၼ်းယူႇသေႇသေႇၶႃႈ:
* `Maybe` $\rightarrow$ **`MaybeT`**
* `Reader` $\rightarrow$ **`ReaderT`**
* `State` $\rightarrow$ **`StateT`**



---

### **2. တူဝ်ယၢင်ႇ: State ဢၼ်ၸၢင်ႈ Fail လႆႈ (State + Maybe)**
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Game ဢၼ်ၵဵပ်း "Health" (State) သေ သင် Health တႅမ်ႇလိူဝ် 0 ႁႂ်ႈ Program ၵိုတ်း (Nothing) ၶႃႈ:

```haskell
import Control.Monad.State
import Control.Monad.Trans.Maybe

-- သၢင်ႈ Type မႂ်ႇ ဢၼ်ပဵၼ် Maybe ႁေႃႇဝႆႉၼႂ်း State
type GameState a = MaybeT (State Int) a

decreaseHealth :: Int -> GameState ()
decreaseHealth damage = do
    current <- lift get -- 'lift' ၸႂ်ႉတွၼ်ႈတႃႇႁွင်ႉ Function ၶေႃႈ Inner Monad
    let newHealth = current - damage
    if newHealth <= 0
        then MaybeT (return Nothing) -- Game Over!
        else lift (put newHealth)

-- ၵၢၼ်လႅၼ်ႈ (Run)
-- runState (runMaybeT (decreaseHealth 50)) 100
```



---

### **3. Function 'lift' (ၵၢၼ်ယုၵ်ႉၵၢၼ်ႁဵတ်း)**
ၼႆႉပဵၼ် "ၶေႃႈၵႂၢမ်း" ဢၼ်လုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** တေလႆႈၸႂ်ႉၼမ်သုတ်းၶႃႈ:
* **`lift`**: ၸႂ်ႉတွၼ်ႈတႃႇ "ယုၵ်ႉ" Action လုၵ်ႉတီႈ Monad ဢၼ်ယူႇၽၢႆႇၼႂ်း (Inner) ႁႂ်ႈမႃးႁဵတ်းၵၢၼ်ၼႂ်း Transformer ၽၢႆႇၼွၵ်ႈ (Outer) လႆႈၶႃႈ။

---

### **4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Transformers?**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1.  **Avoiding Deep Nesting**: ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `case` ဢမ်ႇၼၼ် `if` ႁေႃႇၵၼ်လၢႆၸၼ်ႉ တႃႇပိုတ်ႇ `Maybe` ၼႂ်း `IO` ၶႃႈ။
2.  **Unified do-block**: ႁဝ်းၸၢင်ႈၸတ်းၵၢၼ်တင်း Failure, State, လႄႈ Config ၼႂ်း `do` block လဵဝ်ၵၼ် ႁႂ်ႈ Code သႅၼ်ႈသႂ်ႇၶႃႈ။
3.  **Modular Architecture**: ႁဝ်းၸၢင်ႈ "ထႅမ်" ဢမ်ႇၼၼ် "တတ်း" Monad layers ဢွၵ်ႇလႆႈငၢႆႈငၢႆႈ ၸွမ်းလူၺ်ႈငဝ်းလၢႆး Program ၶႃႈ။

---

### **Teacher's Lab: "The Secure IO"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function ဢၼ်ႁပ်ႉ Password လုၵ်ႉတီႈ IO၊ သင် Password ၽိတ်း ႁႂ်ႈမၼ်း Fail (Nothing) ၵမ်းလဵဝ်ၶႃႈ:

```haskell
import Control.Monad.Trans.Maybe
import Control.Monad.IO.Class (liftIO)

checkPass :: MaybeT IO String
checkPass = do
    liftIO $ putStrLn "Enter Password:"
    pass <- liftIO getLine
    if pass == "1234"
        then return "Access Granted"
        else MaybeT (return Nothing)

-- runMaybeT checkPass
```

---

### **Summary of Module 8 (The Monad Deep Dive):**
* **Laws**: Monad တိုၼ်းတေလႆႈမီး Identity လႄႈ Associativity။
* **Specialized Monads**:
    * **Maybe**: ၸတ်းၵၢၼ် Failure။
    * **Either**: ၸတ်းၵၢၼ် Error Messages။
    * **List**: ၸတ်းၵၢၼ် Multiple Results။
    * **Writer**: ၸတ်းၵၢၼ် Logging။
    * **Reader**: ၸတ်းၵၢၼ် Configuration (Read-only)။
    * **State**: ၸတ်းၵၢၼ် Mutable Memory (Read-Write)။
* **Transformers**: ႁူမ်ႈ Monads ၸိူဝ်းၼႆႉၶဝ်ႈၸွမ်းၵၼ် ႁႂ်ႈပဵၼ် "Stack" ဢၼ်မီးဢဵၼ်ႁႅင်းသုင်ၶႃႈ။
