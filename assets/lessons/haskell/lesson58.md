## **Lesson 58: From Applicative to Monad: The Big Jump**

### **1. ပႅၵ်ႇၵၼ်ၼင်ႇႁိုဝ်? (The Core Difference)**

* **Applicative (`<*>`):** Actions တင်းหมด တိုၼ်းတေလႅၼ်ႈ **တၢၼ်ႇၵၼ်** (Independent)။ ၵႃႈၶၼ်တူဝ်ၼိုင်ႈ ဢမ်ႇၸၢင်ႈဢဝ်မႃးတႅတ်းသႅၼ်းဝႃႈ တူဝ်ထႅင်ႈၼိုင်ႈ တေႁဵတ်းသင်ၶႃႈ။
* **Monad (`>>=`):** Actions ၸၢင်ႈ **ဢိင်ၼိူဝ်ၵၼ်** (Dependent)။ ၵႃႈၶၼ်လုၵ်ႉတီႈ Action ဢွၼ်ႇတၢင်း ၸၢင်ႈဢဝ်မႃးလိူၵ်ႈလႆႈဝႃႈ Action တူဝ်ထႅင်ႈၼိုင်ႈ တေပဵၼ်သင်ၶႃႈ။



---

### **2. တူဝ်ယၢင်ႇ: ၵၢၼ်တႅတ်းသႅၼ်း (Context Dependency)**

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Website ဢၼ်လူဝ်ႇႁႂ်ႈ User "Login" ဢွၼ်ႇတၢင်း ၸင်ႇတေလူ File လႆႈၶႃႈ:

* **Applicative (ဢမ်ႇၸၢင်ႈႁဵတ်း):** မၼ်းတေလူ File လႄႈ ၵူတ်ႇထတ်း Login ၵမ်းလဵဝ် (ၵွပ်ႈမၼ်းဢမ်ႇထႃႈၵၼ်)။ သင် Login ၽိတ်းၵေႃႈ မၼ်းလူ File ဝႆႉယဝ်ႉၶႃႈ။
* **Monad (ႁဵတ်းလႆႈ):**
    ```haskell
    checkLogin >>= \isValid ->
        if isValid 
            then readFile "secret.txt" 
            else return "Access Denied"
    ```
  > **Note:** ၼႆႉယဝ်ႉၶႃႈ ဢၼ်ႁဝ်းႁွင်ႉဝႃႈ **"Context Dependency"**။ Action ဢၼ်သွင် (`readFile`) တေလႅၼ်ႈၵေႃႈတေႃႈမိူဝ်ႈ Action ဢွၼ်ႇတၢင်း (`checkLogin`) ပၼ်ၽွၼ်းလႅၼ်ႈမႃးၶႃႈ။



---

### **3. Why it's a "Big Jump"?**

ၸဝ်ႈၶူး ၸၢင်ႈသပ်းလႅင်းၼႄ လုၵ်ႈႁဵၼ်းဝႃႈ:
1.  **Functor**: လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း (`fmap`).
2.  **Applicative**: ႁူမ်ႈၶေႃႈမုၼ်း လုၵ်ႉတီႈၵွပ်းလၢႆလၢႆဢၼ် (`<*>`).
3.  **Monad**: တႅတ်းသႅၼ်းလၢႆးႁဵတ်းၵၢၼ် ၸွမ်းလူၺ်ႈၶေႃႈမုၼ်း ဢၼ်လႆႈမႃး (`>>=`).

**Monad** မီးဢဵၼ်ႁႅင်းသုင်သုတ်း ၵူၺ်းၵႃႈ မၼ်းၵေႃႈ "ၵပ်းၵႅတ်း" သုတ်းၶႃႈ။ မၼ်းႁဵတ်းႁႂ်ႈ Actions တိုၼ်းတေလႆႈလႅၼ်ႈၸွမ်းလႅၼ်း (Sequentially)၊ ဢၼ်တေႁဵတ်းႁႂ်ႈ Haskell ဢမ်ႇၸၢင်ႈ Optimize ႁႂ်ႈလႅၼ်ႈၸွမ်းၵၼ် (Parallel) လႆႈငၢႆႈငၢႆႈ မိူၼ် Applicative ၶႃႈ။

---

### **Teacher's Lab: "The User Access"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း ဝူၼ်ႉတူၺ်း Code ၼႆႉ သေ လၢတ်ႈဝႃႈၵွပ်ႈသင် ႁဝ်းၸႂ်ႉ Applicative ဢမ်ႇလႆႈၶႃႈ:

```haskell
getUserID :: String -> Maybe Int
getFileByUserID :: Int -> Maybe String

-- ႁဝ်းလူဝ်ႇ ID လုၵ်ႉတီႈ Function ဢွၼ်ႇတၢင်း ၸင်ႇတေႁႃ File လႆႈ
getData name = do
    uid  <- getUserID name
    file <- getFileByUserID uid
    return file
```
*(เฉลย: ၵွပ်ႈဝႃႈ `getFileByUserID` လူဝ်ႇၵႃႈၶၼ် `uid` ဢၼ်လုၵ်ႉတီႈ `getUserID` မႃး၊ ၼႆႉပဵၼ်ၵၢၼ်ဢိင်ၼိူဝ်ၵၼ် ဢၼ်တိုၼ်းတေလႆႈၸႂ်ႉ Monad ၶႃႈ။)*

---

### **Summary of Module 7:**
* **Functor Laws**: ႁဵတ်းႁႂ်ႈႁဝ်းဝႆႉၸႂ်လႆႈၼိူဝ် `fmap`။
* **Applicative Style**: လီသုတ်းတွၼ်ႈတႃႇ Actions ဢၼ်ဢမ်ႇဢိင်ၼိူဝ်ၵၼ်။
* **The Bridge**: ပွင်ႇၸႂ်ဝႃႈ မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ Applicative လႄႈ မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ Monad။
