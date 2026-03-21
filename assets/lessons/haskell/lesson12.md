## **Lesson 12: Module 1 Review: The TMK Personal Assistant Project**

### **1. ၶေႃႈၵႂၢမ်းၸိသင်ႇ (Project Requirements)**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းသၢင်ႈ File `TMKAssistant.hs` သေ တႅမ်ႈ Code ႁႂ်ႈမီးၼမ်ႉၵတ်ႉ ၼင်ႇၼႆၶႃႈ:

1.  **School Info:** ပိုတ်ႇ Constant တွၼ်ႈတႃႇၸိုဝ်ႈႁူင်းႁဵၼ်း ("TMK Academy")။
2.  **Greeting Function:** တႅမ်ႈ Function တွၼ်ႈတႃႇႁပ်ႉတွၼ်ႈလုၵ်ႈႁဵၼ်း။ သင်ဝႃႈၸိုဝ်ႈပဵၼ် "Sai Mao" ၼႆ ႁႂ်ႈတွပ်ႇဝႃႈ "Welcome, Teacher!" သင်ပဵၼ်ၸိုဝ်ႈတၢင်ႇၵူၼ်း ႁႂ်ႈတွပ်ႇဝႃႈ "Welcome, Student!"။
3.  **Grade Calculator:** တႅမ်ႈ Function ဢၼ်ဢဝ် Score (Int) ၶဝ်ႈၵႂႃႇ သေ တွပ်ႇဝႃႈ "Pass" (သင် >= 50) ဢမ်ႇၼၼ် "Fail"။
4.  **Discount Logic:** တႅမ်ႈ Function တွၼ်ႈတႃႇၼပ်ႉၵႃႈသင်ႇသွၼ် (Course Fee)။ သင်ဝႃႈၵႃႈသွၼ်ပူၼ်ႉ 100,000 ၼႆ ႁႂ်ႈလူတ်းပၼ် (Discount) 10% လူၺ်ႈၸႂ်ႉ `where` ဢမ်ႇၼၼ် `let` ၶႃႈ။

---

### **2. တူဝ်ယၢင်ႇ Code (Example Solution)**

```haskell
-- 1. School Info
academyName :: String
academyName = "TMK Academy"

-- 2. Greeting Function
greetUser :: String -> String
greetUser name = if name == "Sai Mao" 
                 then "Welcome back, Teacher! Let's start the Haskell class." 
                 else "Hello " ++ name ++ ", welcome to " ++ academyName

-- 3. Grade Calculator
checkGrade :: Int -> String
checkGrade score = if score >= 50 then "Pass" else "Fail"

-- 4. Discount Logic using 'where'
calculateFee :: Double -> Double
calculateFee price = if price > 100000 
                     then price - discount 
                     else price
    where discount = price * 0.10
```

---

### **3. လၢႆးထတ်းသိၼ် Project (Testing)**
ဝၢႆးသေတႅမ်ႈယဝ်ႉ ႁႂ်ႈပိုတ်ႇ GHCi သေ ထတ်းတူၺ်းၼင်ႇၼႆၶႃႈ:

```haskell
ghci> :l TMKAssistant.hs
ghci> greetUser "Sai Mao"
"Welcome back, Teacher! Let's start the Haskell class."

ghci> checkGrade 45
"Fail"

ghci> calculateFee 150000
135000.0
```

---

### **4. Summary of Module 1 (ၶေႃႈပိုတ်ႇတူဝ်)**
မိူဝ်ႈလုၵ်ႈႁဵၼ်းႁဵတ်း Project ၼႆႉယဝ်ႉတူဝ်ႈၼႆ မၼ်းလၢတ်ႈၼႄဝႃႈၶဝ်:
* ပွင်ႇၸႂ်လွင်ႈ **Immutability** (ၵႃႈၶၼ်ဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈ)။
* တႅမ်ႈ **Pure Functions** လႆႈလူၺ်ႈၸႂ်ႉ Space Syntax။
* ၸႂ်ႉ **If-Then-Else Expression** လႆႈတႅတ်ႈတေႃး။
* မေႃၸႅၵ်ႇ Logic လူၺ်ႈၸႂ်ႉ **Local Definitions** (`where`)။

---