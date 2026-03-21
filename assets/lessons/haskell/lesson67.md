## **Lesson 67: Understanding the IO Monad: Why it's a One-way Street**

ၼႂ်း Haskell ႁဝ်းၸႅၵ်ႇ "ၵမ်ႇၽႃႇ" ဢွၵ်ႇပဵၼ် 2 ၽၢႆႇတႅတ်ႈတေႃးၶႃႈ:
1.  **Pure World (ၵမ်ႇၽႃႇသႅၼ်ႈသႂ်ႇ):** ၶေႃႈမုၼ်းဢမ်ႇလႅၵ်ႈလၢႆႈ၊ ၼပ်ႉလၢႆပွၵ်ႈၵေႃႈ ၽွၼ်းလႅၼ်ႈမိူၼ်ၵဝ်ႇ (မိူၼ်ၼင်ႇ `2 + 2`)။
2.  **Impure World (ၵမ်ႇၽႃႇ IO):** ၶေႃႈမုၼ်းၸၢင်ႈလႅၵ်ႈလၢႆႈ ၸွမ်းလူၺ်ႈငဝ်းလၢႆး (မိူၼ်ၼင်ႇ ၵူၼ်းၸႂ်ႉတႅမ်ႈသင်ၶဝ်ႈမႃး၊ ၶၢဝ်းယၢမ်းလႅၵ်ႈလၢႆႈ)။

### **1. The IO "Box" (ၵွပ်း IO)**
ဝူၼ်ႉတူၺ်းဝႃႈ **`IO a`** ပဵၼ် "ၵွပ်း" ဢၼ်မီး "ၵၢၼ်ႁဵတ်း" (Action) ယူႇၼႂ်းမၼ်း။
* `IO String` ဢမ်ႇၸိုင် String။ မၼ်းပဵၼ် "ၵၢၼ်ႁဵတ်း ဢၼ်တေပၼ် String မႃး မိူဝ်ႈႁဝ်းလႅၼ်ႈ (Run) မၼ်း" ၶႃႈ။



---

### **2. Why it's a One-way Street? (ၵွပ်ႈသင်မၼ်းပဵၼ်တၢင်းသဵၼ်ႈလဵဝ်?)**
ၼႆႉပဵၼ်ပၵ်းပိူင်ဢၼ်ယႂ်ႇသုတ်းၶႃႈ: **"ၵေႃႉဢၼ်ယူႇၼႂ်း IO ၸၢင်ႈႁွင်ႉၸႂ်ႉ Pure Function လႆႈ၊ ၵူၺ်းၵႃႈ Pure Function ဢမ်ႇၸၢင်ႈႁွင်ႉၸႂ်ႉ IO လႆႈၶႃႈ။"**

* **Logic**: သင်ႁဝ်းပၼ်ႁႂ်ႈ Pure Function ႁွင်ႉၸႂ်ႉ IO လႆႈ၊ မၼ်းတေဢမ်ႇပဵၼ် Pure ထႅင်ႈယဝ်ႉ (ၵွပ်ႈၽွၼ်းလႅၼ်ႈမၼ်းတေဢမ်ႇမိူၼ်ၵဝ်ႇၵူႈပွၵ်ႈ)။
* **Safety**: Haskell ၵႅတ်ႇၶႄဝႆႉ ၼင်ႇႁိုဝ် "Side Effects" (မိူၼ်ၼင်ႇ ၵၢၼ်လႅၵ်ႈလၢႆႈ File) တေဢမ်ႇၵႂႃႇႁဵတ်းႁႂ်ႈ Logic ပၢႆးၼပ်ႉႁဝ်းယုင်ႈယၢင်ႈၶႃႈ။



---

### **3. 'do' Notation: The Construction Site**
တွၼ်ႈတႃႇ "ပိုတ်ႇ" ၵွပ်း IO သေ ဢဝ်ၶေႃႈမုၼ်းမႃးၸႂ်ႉၼၼ်ႉ ႁဝ်းတိုၼ်းတေလႆႈယူႇၼႂ်း `do` block ဢၼ်ပဵၼ် IO ဝႆႉယူႇသေႇသေႇၶႃႈ။

```haskell
-- getLine :: IO String
-- putStrLn :: String -> IO ()

main :: IO ()
main = do
    name <- getLine        -- ဢဝ် String ဢွၵ်ႇမႃးလုၵ်ႉတီႈ IO ၵွပ်း
    let upperName = map toUpper name -- ၸႂ်ႉ Pure Function ၼႂ်း IO
    putStrLn ("Hello, " ++ upperName) -- ပၼ်ၽွၼ်းလႅၼ်ႈပဵၼ် IO ၶိုၼ်း
```

> **Teacher's Insight:** သင်ႁဝ်းဢဝ် `name <- getLine` ဢွၵ်ႇၵႂႃႇၼွၵ်ႈ `main` ၼႆ Program တေဢမ်ႇလႅၼ်ႈ (Compile Error) ၵမ်းလဵဝ်ၶႃႈ။ ၼႆႉပဵၼ်လၢႆး Haskell လၢတ်ႈဝႃႈ "မႂ်းတိုၼ်းတေလႆႈသႂ်ႇ Space Suit (IO) မိူဝ်ႈၵပ်းသိုပ်ႇတင်းၵမ်ႇၽႃႇၽၢႆႇၼွၵ်ႈ" ၶႃႈ။

---

### **Teacher's Lab: "The IO Leak Test"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function ဢၼ်ၶတ်းၸႂ်တေဢဝ် String လုၵ်ႉတီႈ `getLine` မႃးၸႂ်ႉၼႂ်း Pure Function သေ ထတ်းတူၺ်း Error မၼ်းၶႃႈ:

```haskell
-- ဢၼ်ၼႆႉတေၽိတ်း (Error):
-- reverseInput = reverse getLine 

-- ဢၼ်ၼႆႉတေမၢၼ်ႇ (Correct):
reverseInput :: IO ()
reverseInput = do
    input <- getLine
    putStrLn (reverse input)
```

---

### **Summary for TMK Students:**
* **IO Monad**: ပဵၼ်တီႈၵဵပ်း Actions ဢၼ်မီး Side Effects။
* **Isolation**: Pure Logic တိုၼ်းတေလႆႈယူႇၽၢႆႇၼွၵ်ႈ IO သေႇသေႇ။
* **The "<-" Arrow**: ၸႂ်ႉတွၼ်ႈတႃႇ "ထွၼ်" (Extract) ၵႃႈၶၼ်ဢွၵ်ႇမႃးလုၵ်ႉတီႈ IO ၼႂ်း `do` block ၵူၺ်းၶႃႈ။
