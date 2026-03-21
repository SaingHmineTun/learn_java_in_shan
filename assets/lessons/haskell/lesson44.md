## **Lesson 44: Making Instances: The 'instance' Keyword**

**Instance** ပဵၼ်ၵၢၼ်လၢတ်ႈဝႃႈ Type ၼိုင်ႈဢၼ် ၶဝ်ႈပဵၼ် "လုၵ်ႈၸုမ်း" ၶေႃႈ Typeclass ၼိုင်ႈဢၼ်ယဝ်ႉ။ မၼ်းမိူၼ်ၼင်ႇၵၢၼ်တႅမ်ႈ Code တႄႉတႄႉ တွၼ်ႈတႃႇတွပ်ႇၵူႈၶေႃႈထၢမ် ဢၼ်မီးၼႂ်း Class ၼၼ်ႉၶႃႈ။

### **1. ပိူင်တႅမ်ႈ (Syntax)**
`instance [ၸိုဝ်ႈ Typeclass] [ၸိုဝ်ႈ Type] where`
`    [ၸိုဝ်ႈ Function] = [Logic တႄႉတႄႉ]`



---

### **2. တူဝ်ယၢင်ႇ: ႁဵတ်းႁႂ်ႈ Student လၢတ်ႈၵႂၢမ်းတႆး**
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Type `Student` သေ ၶႂ်ႈႁႂ်ႈမၼ်းယူႇၼႂ်းၸုမ်း `ShanSpeak` (တီႈ Lesson 43) ၶႃႈ:

```haskell
data Student = Student { name :: String }

instance ShanSpeak Student where
    sayHello s = "မႂ်ႇသုင်ၶႃႈ! ၵဝ်ၶႃႈၸိုဝ်ႈဝႃႈ " ++ name s
    sayThanks _ = "ယိၼ်းၸူမ်းၶႃႈ ၸဝ်ႈၶူး!"
```

တေႃႈလဵဝ် ႁဝ်းၸၢင်ႈၸႂ်ႉ Function ၸိူဝ်းၼၼ်ႉတင်း `Student` လႆႈယဝ်ႉ:
```haskell
ghci> let saiMao = Student "Sai Mao"
ghci> sayHello saiMao
"မႂ်ႇသုင်ၶႃႈ! ၵဝ်ၶႃႈၸိုဝ်ႈဝႃႈ Sai Mao"
```

---

### **3. ၵၢၼ်ၸႂ်ႉတင်း Type ဢၼ်မီးဝႆႉယူႇယဝ်ႉ (Existing Types)**
ၸဝ်ႈၶူး **Sai Mao** ၸၢင်ႈပၼ် "ၼမ်ႉၵတ်ႉ" မႂ်ႇ ပၼ် Type ဢၼ်မီးဝႆႉယူႇယဝ်ႉ မိူၼ်ၼင်ႇ `Int` ၵေႃႈလႆႈၶႃႈ!

```haskell
instance ShanSpeak Int where
    sayHello n = "မႂ်ႇသုင်ၶႃႈ! ၼႆႉပဵၼ်တူဝ်ၼပ်ႉ " ++ show n
    sayThanks _ = "ယိၼ်းၸူမ်းတွၼ်ႈတႃႇတူဝ်ၼပ်ႉၶႃႈ!"
```



---

### **4. ၵွပ်ႈသင်ႁဝ်းဢမ်ႇၸႂ်ႉ `deriving` ၵူႈပွၵ်ႈ?**
လုၵ်ႈႁဵၼ်း တီႈ **TMK Academy** ၸၢင်ႈထၢမ်ဝႃႈ "ၵွပ်ႈသင်ႁဝ်းတႅမ်ႈ `instance` ႁင်းၵူၺ်း? ၵွပ်ႈသင်ဢမ်ႇၸႂ်ႉ `deriving`?"
* **`deriving`**: ၸႂ်ႉလႆႈၵူၺ်းတွၼ်ႈတႃႇ Typeclasses ပိုၼ်ႉထၢၼ် (Eq, Ord, Show) ဢၼ် Haskell ႁူႉလၢႆးတႅမ်ႈဝႆႉယဝ်ႉ။
* **`instance`**: ၸႂ်ႉတွၼ်ႈတႃႇ Typeclasses ဢၼ်ႁဝ်းသၢင်ႈမႂ်ႇ ဢမ်ႇၼၼ် မိူဝ်ႈႁဝ်းၶႂ်ႈတႅမ်ႈ Logic ဢၼ် "လၢၵ်ႇလၢႆး" ႁင်းၵူၺ်းႁဝ်းၶႃႈ။

---

### **Teacher's Lab: "The Describable Instance"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ `instance` တွၼ်ႈတႃႇ Type `Bool` ႁႂ်ႈမၼ်းပိုတ်ႇလၢတ်ႈတူဝ်မၼ်းလႆႈၶႃႈ:

```haskell
-- လုၵ်ႉတီႈ Lesson 43: class Describable a where describe :: a -> String

instance Describable Bool where
    describe True = "ၼႆႉပဵၼ်ၵႃႈၶၼ် မၢၼ်ႇမႅၼ်ႈ (True)"
    describe False = "ၼႆႉပဵၼ်ၵႃႈၶၼ် ၽိတ်းပႅၵ်ႇ (False)"

-- ghci> describe True --> "ၼႆႉပဵၼ်ၵႃႈၶၼ် မၢၼ်ႇမႅၼ်ႈ (True)"
```

---

### **Summary for TMK Students:**
* **`instance`**: ၸႂ်ႉတႃႇတႅမ်ႈ Logic တႄႉတႄႉ ပၼ် Type ၼိုင်ႈဢၼ် ၼႂ်း Typeclass။
* **Custom Logic**: ႁဝ်းၸၢင်ႈတႅမ်ႈႁႂ်ႈမၼ်း "ပႅၵ်ႇပိူင်" ၵၼ် ၸွမ်းလူၺ်ႈ Type ၼၼ်ႉၼၼ်ႉ။
* **Polymorphism**: Function ၸိုဝ်ႈလဵဝ်ၵၼ် (`sayHello`) တေပၼ်ၽွၼ်းလႅၼ်ႈပႅၵ်ႇၵၼ် ၸွမ်းလူၺ်ႈ Type ဢၼ်ႁဝ်းသူင်ႇၶဝ်ႈၵႂႃႇၶႃႈ။
