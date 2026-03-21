## **Lesson 43: Defining Your Own Typeclasses: The 'class' Keyword**

**Typeclass** ပဵၼ်ၵၢၼ်သၢင်ႈ "သႅၼ်း" (Interface) ဢၼ်လၢတ်ႈဝႃႈ: "သင် Type လႂ်ၵေႃႈယဝ်ႉ ၶႂ်ႈပဵၼ်ၸုမ်းလဵဝ်ၵၼ်တင်းႁဝ်း ၼႆ တိုၼ်းတေလႆႈမေႃႁဵတ်း Function ၸိူဝ်းၼႆႉၶႃႈဢေႃႈ"။

### **1. ပိူင်တႅမ်ႈ (Syntax)**
ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`class`** တွၼ်ႈတႃႇပိုတ်ႇ Typeclass မႂ်ႇၶႃႈ:

```haskell
class [ၸိုဝ်ႈ Typeclass] a where
    [ၸိုဝ်ႈ Function] :: a -> [Return Type]
```

* **`a`**: တႅၼ်း Type သင်ၵေႃႈယဝ်ႉ ဢၼ်တေမႃးယူႇၼႂ်း Typeclass ၼႆႉ။
* **`where`**: တႄႇပိုတ်ႇလၢတ်ႈဝႃႈ မီး Function သင်လႂ်ပႃးၸွမ်း။



---

### **2. တူဝ်ယၢင်ႇ: Typeclass "ShanSpeak"**
ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၶူး **Sai Mao** ၶႂ်ႈပၼ် Type တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ Student ဢမ်ႇၼၼ် Teacher) မီးၼမ်ႉၵတ်ႉ "လၢတ်ႈၵႂၢမ်းတႆး" ၶႃႈ:

```haskell
class ShanSpeak a where
    sayHello :: a -> String
    sayThanks :: a -> String
```
* တေႃႈလဵဝ် ႁဝ်းမီး "ပၵ်းပိူင်" ယဝ်ႉ။ ၵူၺ်းၵႃႈ ႁဝ်းပႆႇလၢတ်ႈဝႃႈ တေလၢတ်ႈၼင်ႇႁိုဝ်။ ၼႆႉမိူၼ်ၼင်ႇႁဝ်း "ပိုတ်ႇႁူဝ်ၶေႃႈ" ဝႆႉၵူၺ်းၶႃႈ။

---

### **3. Default Implementations (ၵၢၼ်ပၼ်ၵႃႈၶၼ်ဝႆႉဢွၼ်တၢင်း)**
ၼႂ်း Haskell ႁဝ်းၸၢင်ႈပၼ် "လၢႆးႁဵတ်းပိုၼ်ႉထၢၼ်" ဝႆႉၼႂ်း `class` လႆႈၶႃႈ။ သင်ဝႃႈ Type ၼိုင်ႈဢၼ် ဢမ်ႇတႅမ်ႈ Logic ႁင်းၵူၺ်းၼႆ မၼ်းတေၸႂ်ႉတူဝ်ၼႆႉၵမ်းလဵဝ်ၶႃႈ။

```haskell
class ShanSpeak a where
    sayHello :: a -> String
    sayHello _ = "မႂ်ႇသုင်ၶႃႈ!"  -- Default Hello

    sayThanks :: a -> String
    sayThanks _ = "ယိၼ်းၸူမ်းၶႃႈ!" -- Default Thanks
```



---

### **4. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇသၢင်ႈ Typeclass ႁင်းၵူၺ်း?**
ၸဝ်ႈၶူး ၸၢင်ႈသပ်းလႅင်းၼႄလုၵ်ႈႁဵၼ်းဝႃႈ:
1. **Abstraction**: ႁဝ်းၸၢင်ႈတႅမ်ႈ Function ဢၼ်ႁဵတ်းၵၢၼ်ၸွမ်း "ၸုမ်း" (မိူၼ်ၼင်ႇ ၸုမ်းလၢတ်ႈၵႂၢမ်းတႆးလႆႈ) သေ ဢမ်ႇလူဝ်ႇၵႂႃႇဝူၼ်ႉဝႃႈ မၼ်းပဵၼ် Student ဢမ်ႇၼၼ် Teacher ၶႃႈ။
2. **Polymorphism**: ႁဵတ်းႁႂ်ႈ Code ႁဝ်းၸၢင်ႈၸႂ်ႉလႆႈတင်း Type တင်းၼမ် လူၺ်ႈၸႂ်ႉ Function ၸိုဝ်ႈလဵဝ်ၵၼ်ၶႃႈ။

---

### **Teacher's Lab: "The Describable Class"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Typeclass ဢၼ်ၸိုဝ်ႈဝႃႈ `Describable` ဢၼ်တေမီး Function `describe` တွၼ်ႈတႃႇပိုတ်ႇလၢတ်ႈၶေႃႈမုၼ်းၶႃႈ:

```haskell
class Describable a where
    describe :: a -> String
```

---

### **Summary for TMK Students:**
* **`class`**: ၸႂ်ႉတႃႇပိုတ်ႇ "ပၵ်းပိူင်" (Interface) မႂ်ႇ။
* **Type Variable `a`**: တႅၼ်း Type ဢၼ်တေမႃးယူႇၼႂ်း Class ၼၼ်ႉ။
* **Functions**: ႁဝ်းပိုတ်ႇဝႆႉၵူၺ်း "Type Signature" (ဝႃႈမၼ်းႁပ်ႉသင် လႄႈ ပၼ်သင်)။
