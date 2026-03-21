## **Lesson 10: The if-then-else Expression (Mandatory Logic)**

ၼႂ်း Haskell ၼၼ်ႉ ပၵ်းပိူင်လူင်မၼ်းမီးဝႃႈ: **သင်မီး `if` တိုၼ်းတေလႆႈမီး `else` ယူႇသေႇသေႇၶႃႈ။**

### **1. Why Mandatory Else? (ၵွပ်ႈသင်လူဝ်ႇမီး Else?)**
ၼႂ်း Python ႁဝ်းၸၢင်ႈတႅမ်ႈ `if` လူၺ်ႈဢမ်ႇမီး `else` ၵေႃႈလႆႈ။ ၵူၺ်းၵႃႈ ၼႂ်း Haskell ၼၼ်ႉ `if` တိုၼ်းတေလႆႈပၼ် **Output (ၵႃႈၶၼ်)** ဢွၵ်ႇမႃးသေမဵဝ်းမဵဝ်း။
* သင်ဝႃႈ `if` ပဵၼ် False သေ သမ်ႉဢမ်ႇမီး `else` ၼႆ Haskell တေဢမ်ႇႁူႉဝႃႈ တေလႆႈပၼ် Output သင်ဢွၵ်ႇမႃးၶႃႈ။
* ၵွပ်ႈၼၼ် **`else` တိုၼ်းတေလႆႈမီးဝႆႉ (Mandatory)** ၶႃႈယဝ်ႉ။



### **2. လၢႆးတႅမ်ႈ (Syntax)**
ႁႂ်ႈပိုတ်ႇ VS Code သေ တႅမ်ႈ Code ၼႆႉသႂ်ႇၼႂ်း `Lesson10.hs` ၶႃႈ:

```haskell
-- Function တႃႇထတ်းတူၺ်း ၵႃႈၶၼ် (Score) လုၵ်ႈႁဵၼ်း
checkResult :: Int -> String
checkResult score = if score >= 50
                    then "Pass"
                    else "Fail"
```

* **`if`**: တႃႇထတ်းတူၺ်း Logic (တိုၼ်းတေလႆႈပဵၼ် True/False)။
* **`then`**: ၵႃႈၶၼ်ဢၼ်တေဢွၵ်ႇမႃး သင်ပဵၼ် True။
* **`else`**: ၵႃႈၶၼ်ဢၼ်တေဢွၵ်ႇမႃး သင်ပဵၼ် False။

### **3. Same Type Rule (ပၵ်းပိူင် Type ဢၼ်ၵဝ်ႇ)**
ဢၼ်ၼႆႉလုၵ်ႈႁဵၼ်းလူဝ်ႇသတိဝႆႉၶႃႈ။ ၵႃႈၶၼ်ဝၢႆးသေ `then` လႄႈ `else` ၼၼ်ႉ **တိုၼ်းတေလႆႈပဵၼ် Type ဢၼ်ၵဝ်ႇၵၼ်** ၶႃႈဢေႃႈ။
* **Correct:** `if True then "Yes" else "No"` (String တင်းသွင်ဢၼ် - Correct!)
* **Wrong:** `if True then "Yes" else 0` (String တင်း Int - **Error!**)

### **4. ၵၢၼ်ၸႂ်ႉၼႂ်း Function တၢင်ႇဢၼ်**
ႁဝ်းၸၢင်ႈဢဝ် `if` မႃးသႂ်ႇၼႂ်းၵၢင် Equations ႁဝ်းၵေႃႈလႆႈၶႃႈ:

```haskell
doubleSmallNumber x = if x > 100
                      then x
                      else x * 2
```
* သင် `x` ယႂ်ႇသေ 100 ၼႆ ပၼ် `x` ဢွၵ်ႇမႃး။
* သင်ဢမ်ႇၸႂ်ႉၼၼ် ဢဝ် `x` မႃးၼပ်ႉတင်း 2 ယဝ်ႉၸင်ႇပၼ်ဢွၵ်ႇမႃး။

---

### **Teacher's Challenge for TMK Students**
ႁႂ်ႈလုၵ်ႈႁဵၼ်းတႅမ်ႈ Function ဢၼ်ၸိုဝ်ႈဝႃႈ `isSaiMao` သေ ထတ်းတူၺ်းဝႃႈ:
* သင် Input ပဵၼ် `"Sai Mao"` ၼႆ ႁႂ်ႈတွပ်ႇဝႃႈ `"Hello Teacher"`။
* သင်ပဵၼ်ၸိုဝ်ႈတၢင်ႇဢၼ် ႁႂ်ႈတွပ်ႇဝႃႈ `"Hello Student"`။

```haskell
isSaiMao :: String -> String
isSaiMao name = if name == "Sai Mao" then "Hello Teacher" else "Hello Student"
```

---

**Summary for TMK Students:**
* **`else`** တိုၼ်းတေလႆႈမီး (Mandatory)။
* **`then`** လႄႈ **`else`** တိုၼ်းတေလႆႈပဵၼ် Type ဢၼ်ၵဝ်ႇၵၼ်။
* `if` ၼႂ်း Haskell ပဵၼ် **Expression** (ပၼ်ၵႃႈၶၼ်ဢွၵ်ႇမႃး)။