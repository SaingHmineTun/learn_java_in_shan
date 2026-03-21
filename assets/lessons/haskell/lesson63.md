## **Lesson 63: The Writer Monad: Keeping a Log**

**Writer Monad** ပဵၼ် Monad ဢၼ်ႁပ်ႉဢဝ်ၵႃႈၶၼ် (Value) ပႃးတင်း "ၶေႃႈမၢႆတွင်း" (Log) သေ သူင်ႇၵႂႃႇၸွမ်းၵၼ်ယူႇသေႇသေႇၶႃႈ။

### **1. ပိူင်တႅမ်ႈ (The Pair Structure)**
Writer Monad တီႈတႄႉမၼ်းၵူၺ်းပဵၼ် "ၵူပ်ႉ" (Pair) ဢၼ်မီး:
* **Value**: ၽွၼ်းလႅၼ်ႈပၢႆးၼပ်ႉ (မိူၼ်ၼင်ႇ `Int`)။
* **Log**: ၶေႃႈၵႂၢမ်းဢၼ်ႁဝ်းၶႂ်ႈမၢႆတွင်းဝႆႉ (ၵႆႉပဵၼ် `String` ဢမ်ႇၼၼ် `[String]`)။



---

### **2. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Monoid?**
တွၼ်ႈတႃႇတေပဵၼ် Writer Monad လႆႈၼၼ်ႉ၊ တူဝ်ဢၼ်တေပဵၼ် "Log" ၼၼ်ႉ တိုၼ်းတေလႆႈပဵၼ် **Monoid** (Lesson 49) ၶႃႈဢေႃႈ။ ၵွပ်ႈဝႃႈ Haskell လူဝ်ႇႁူႉလၢႆး "ႁူမ်ႈ Log" (`<>`) ၶဝ်ႈၵၼ် မိူဝ်ႈႁဝ်းသိုပ်ႇ Bind (`>>=`) ၵၼ်ၶႃႈ။

---

### **3. တူဝ်ယၢင်ႇ: ၵၢၼ်ၼပ်ႉပႃး Log**
ႁဝ်းၸႂ်ႉ Function **`tell`** (လုၵ်ႉတီႈ `Control.Monad.Writer`) တွၼ်ႈတႃႇထႅမ်ၶေႃႈၵႂၢမ်းၶဝ်ႈၼႂ်း Log ၶႃႈ:

```haskell
import Control.Monad.Writer

logNumber :: Int -> Writer [String] Int
logNumber x = do
    tell ["Got number: " ++ show x]
    return x

multWithLog :: Writer [String] Int
multWithLog = do
    a <- logNumber 3
    b <- logNumber 5
    tell ["Multiplying " ++ show a ++ " and " ++ show b]
    return (a * b)

-- ghci> runWriter multWithLog
-- (15, ["Got number: 3", "Got number: 5", "Multiplying 3 and 5"])
```



---

### **4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Writer Monad?**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1.  **Separation of Concerns**: ႁဝ်းၸၢင်ႈတႅမ်ႈ Logic ပၢႆးၼပ်ႉ သေ "မၢႆတွင်း" ၵႂႃႇၸွမ်းၵၼ် လူၺ်ႈဢမ်ႇႁဵတ်းႁႂ်ႈ Code ယုင်ႈယၢင်ႈ။
2.  **Pure Logging**: ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ IO တႃႇတႅမ်ႈ Log၊ မၼ်းပဵၼ်ၵူၺ်းၵႃႈၶၼ် (Value) ဢၼ်ႁဝ်းၸၢင်ႈထတ်းတူၺ်း (Test) လႆႈငၢႆႈၶႃႈ။
3.  **Efficiency**: Haskell တေၸတ်းၵၢၼ်ႁူမ်ႈ Log (Append) ပၼ်ႁဝ်းၽၢႆႇလင် ႁႂ်ႈမၼ်းမီး Order ဢၼ်ထုၵ်ႇၵိုင်ႇၶႃႈ။

---

### **Teacher's Lab: "The Shopping Cart Log"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function ဢၼ်တေ "ထႅမ်ၶၼ်ၵုၼ်ႇ" သေ မၢႆတွင်းဝႃႈထႅမ်သင်ၵႂႃႇယဝ်ႉၶႃႈ:

```haskell
addItem :: String -> Int -> Writer [String] Int
addItem name price = do
    tell ["Added " ++ name ++ " for $" ++ show price]
    return price

calculateTotal :: Writer [String] Int
calculateTotal = do
    p1 <- addItem "Keyboard" 50
    p2 <- addItem "Mouse" 20
    return (p1 + p2)

-- ghci> runWriter calculateTotal
-- (70, ["Added Keyboard for $50", "Added Mouse for $20"])
```

---

### **Summary for TMK Students:**
* **Writer**: Monad တွၼ်ႈတႃႇ "မၢႆတွင်း" (Value + Log)။
* **`tell`**: Function တွၼ်ႈတႃႇထႅမ်ၶေႃႈၵႂၢမ်းၶဝ်ႈၼႂ်း Log။
* **`runWriter`**: ၸႂ်ႉတွၼ်ႈတႃႇဢဝ်ၽွၼ်းလႅၼ်ႈ (Value, Log) ဢွၵ်ႇမႃး။
* **Monoid Requirement**: Log တိုၼ်းတေလႆႈပဵၼ် Monoid (မိူၼ်ၼင်ႇ String ဢမ်ႇၼၼ် List)။
