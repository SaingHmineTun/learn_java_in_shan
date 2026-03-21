## **Lesson 64: The Reader Monad: Shared Environment**

**Reader Monad** ပဵၼ် Monad ဢၼ်ႁပ်ႉဢဝ် "ၵႃႈၶၼ်ဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈ" (Read-only Environment) သေ သူင်ႇၵႂႃႇၸွမ်းၵူႈ Function ဢၼ်ယူႇၼႂ်း `do` block ၶႃႈ။

### **1. ပၢႆးဝူၼ်ႉ (The Concept)**
ဝူၼ်ႉတူၺ်းဝႃႈ Reader Monad ၵူၺ်းပဵၼ် **Function** `(r -> a)` ဢၼ်ၼိုင်ႈ:
* **`r`**: ပဵၼ် Environment (မိူၼ်ၼင်ႇ Configuration ဢမ်ႇၼၼ် Database Connection)။
* **`a`**: ပဵၼ်ၽွၼ်းလႅၼ်ႈ (Result) ဢၼ်ႁဝ်းၶႂ်ႈလႆႈ။



---

### **2. Function ဢၼ်ပဵၼ်ႁူဝ်ၸႂ်**
ႁဝ်းၸႂ်ႉ Function 2 ဢၼ်ၼႆႉ (လုၵ်ႉတီႈ `Control.Monad.Reader`) တွၼ်ႈတႃႇၸတ်းၵၢၼ် Environment ၶႃႈ:
* **`ask`**: ၸႂ်ႉတွၼ်ႈတႃႇ "ဢဝ်" Environment တင်းหมดမႃးၸႂ်ႉ။
* **`asks`**: ၸႂ်ႉတွၼ်ႈတႃႇ "လိူၵ်ႈဢဝ်ၵူၺ်းတွၼ်ႈၼိုင်ႈ" ၼႂ်း Environment (မိူၼ်ၼင်ႇ ဢဝ်ၵူၺ်း API Key)။

---

### **3. တူဝ်ယၢင်ႇ: ၵၢၼ်သူင်ႇ Config ၸူးလုၵ်ႈႁဵၼ်း**
ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၶူး **Sai Mao** ၶႂ်ႈမီး Environment ဢၼ်မီး "ၸိုဝ်ႈႁူင်းႁဵၼ်း" ဝႆႉၶႃႈ:

```haskell
import Control.Monad.Reader

-- Environment ႁဝ်းပဵၼ် String (ၸိုဝ်ႈႁူင်းႁဵၼ်း)
type SchoolEnv = String

greetStudent :: String -> Reader SchoolEnv String
greetStudent name = do
    school <- ask -- ႁွင်ႉဢဝ် Environment ဢၼ်ပဵၼ် School Name မႃး
    return $ "Welcome " ++ name ++ " to " ++ school

-- ၵၢၼ်လႅၼ်ႈ (Run) Reader
main = do
    let result = runReader (greetStudent "Sai Mao") "TMK Academy"
    putStrLn result

-- ghci> Welcome Sai Mao to TMK Academy
```



---

### **4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Reader Monad?**
ၸဝ်ႈၶူး ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1.  **Dependency Injection**: ႁဝ်းဢမ်ႇလူဝ်ႇသူင်ႇ Config ၶဝ်ႈၵႂႃႇၼႂ်း Parameter ၵူႈပွၵ်ႈ။
2.  **Clean Signatures**: Function ႁဝ်းတေလူငၢႆႈလိူဝ် (ဢမ်ႇမီး Parameter ယုင်ႈယၢင်ႈ)။
3.  **Read-only Safety**: မၼ်းပၼ်ၵၢၼ်မၢၼ်ႇမႅၼ်ႈဝႃႈ ဢမ်ႇမီး Function လႂ် ၸၢင်ႈၵႂႃႇ "လႅၵ်ႈလၢႆႈ" Config ၼၼ်ႉလႆႈ (ပဵၼ် Purely Functional) ၶႃႈ။

---

### **Teacher's Lab: "The API Key Reader"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function ဢၼ်တေႁွင်ႉၸႂ်ႉ "API Key" လုၵ်ႉတီႈ Config Record ၶႃႈ:

```haskell
data Config = Config { apiKey :: String, apiURL :: String }

fetchData :: Reader Config String
fetchData = do
    key <- asks apiKey -- ဢဝ်ၵူၺ်း apiKey လုၵ်ႉတီႈ Config
    url <- asks apiURL
    return $ "Fetching from " ++ url ++ " using key: " ++ key

-- ghci> runReader fetchData (Config "SECRET123" "https://tmk.edu")
-- "Fetching from https://tmk.edu using key: SECRET123"
```

---

### **Summary for TMK Students:**
* **Reader**: Monad တွၼ်ႈတႃႇ "လူ" (Read) Environment ဢၼ်ၸႂ်ႉႁူမ်ႈၵၼ်။
* **`ask` / `asks`**: Function တွၼ်ႈတႃႇႁွင်ႉဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Environment။
* **`runReader`**: ၸႂ်ႉတွၼ်ႈတႃႇ "သူင်ႇ" Environment ၶဝ်ႈၵႂႃႇၼႂ်း Program။
* **Dependency**: ၸွႆႈႁႂ်ႈၵၢၼ်ၸတ်းၵၢၼ် Config ၼႂ်း Project ယႂ်ႇယႂ်ႇ သႅၼ်ႈသႂ်ႇၶႃႈ။
