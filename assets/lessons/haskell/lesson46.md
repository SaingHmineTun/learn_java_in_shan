## **Lesson 46: Parametric vs Ad-hoc Polymorphism**

**Polymorphism** တီႈပွင်ႇမၼ်းပဵၼ် "ၵၢၼ်မီးလၢႆႁၢင်ႈ" (Many shapes)။ မၼ်းပဵၼ်ၵၢၼ်တႅမ်ႈ Code ဢၼ်ၸၢင်ႈႁဵတ်းၵၢၼ်ၸွမ်း Type လၢႆလၢႆမဵဝ်းၶႃႈ။

### **1. Parametric Polymorphism (ၵၢၼ်ၸႂ်ႉ 'a' - တူဝ်လဵဝ်ၸႂ်ႉၵူႈတီႈ)**
ၼႆႉပဵၼ်လၢႆးတႅမ်ႈ Function ဢၼ် **"ဢမ်ႇသူၼ်ၸႂ်"** ဝႃႈ Type ၼၼ်ႉပဵၼ်သင်။ မၼ်းတေႁဵတ်းၵၢၼ်မိူၼ်ၵၼ်တင်းၵူႈ Type ၶႃႈ။

* **တူဝ်ယၢင်ႇ:** `length`, `head`, `id`
* **Type Signature:** `id :: a -> a`
* **လၵ်းၵၢၼ်:** မၼ်းတေဢဝ် `Int` မႃးပၼ်ၶိုၼ်း `Int`၊ ဢဝ် `String` မႃးပၼ်ၶိုၼ်း `String`။ Logic မၼ်းဢမ်ႇလႅၵ်ႈလၢႆႈၸွမ်း Type ၶႃႈ။



---

### **2. Ad-hoc Polymorphism (ၵၢၼ်ၸႂ်ႉ Typeclasses - ပႅၵ်ႇ Type ပႅၵ်ႇ Logic)**
ၼႆႉပဵၼ်လၢႆးတႅမ်ႈ Function ဢၼ် **"လႅၵ်ႈလၢႆႈၵၢၼ်ႁဵတ်း"** ၸွမ်းလူၺ်ႈ Type ဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇၶႃႈ။ ၼႆႉပဵၼ်တွၼ်ႈဢၼ်ႁဝ်းၸႂ်ႉ **Typeclasses** ဢၼ်ႁဵၼ်းမႃးၼၼ်ႉၶႃႈယဝ်ႉ။

* **တူဝ်ယၢင်ႇ:** `==`, `+`, `show`
* **Type Signature:** `show :: (Show a) => a -> String`
* **လၵ်းၵၢၼ်:** `show` တေႁဵတ်းၵၢၼ်ပႅၵ်ႇၵၼ် သင်ပဵၼ် `Int` (ပိၼ်ႇပဵၼ် "5") ဢမ်ႇၼၼ် သင်ပဵၼ် `Bool` (ပိၼ်ႇပဵၼ် "True")။



---

### **3. ၸႅၵ်ႇၵၼ်ၼင်ႇႁိုဝ်? (The Difference)**

| Feature | Parametric | Ad-hoc |
| :--- | :--- | :--- |
| **Type Variable** | ၸႂ်ႉ `a` လႅဝ်းလႅဝ်း | ၸႂ်ႉ `(Class a) => a` (Constraint) |
| **Behavior** | မိူၼ်ၵၼ်ၵူႈ Type | ပႅၵ်ႇၵၼ်ၸွမ်း Type |
| **Logic** | တႅမ်ႈၵမ်းလဵဝ် ၸႂ်ႉလႆႈၵူႈတီႈ | တႅမ်ႈ `instance` ပႅၵ်ႇၵၼ်လၢႆပွၵ်ႈ |

---

### **4. ၵွပ်ႈသင်ၸဝ်ႈၶူး Sai Mao လူဝ်ႇႁူႉလွင်ႈၼႆႉ?**
မိူဝ်ႈလုၵ်ႈႁဵၼ်းတႅမ်ႈ Code ယဝ်ႉ Haskell ထၢမ်ဝႃႈ "Ambiguous type variable" ၼႆ တီႈပွင်ႇမၼ်းပဵၼ်:
* ၸဝ်ႈၶူးတိုၵ်ႉၸႂ်ႉ **Ad-hoc** (မိူၼ်ၼင်ႇ `show`) သေတႃႉၵေႃႈ Haskell ဢမ်ႇႁူႉဝႃႈတေဢဝ် Instance ဢၼ်လႂ်မႃးၸႂ်ႉ (ၵွပ်ႈဢမ်ႇႁူႉ Type တႄႉမၼ်း) ၶႃႈဢေႃႈ။

---

### **Teacher's Lab: "Identify the Type"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တူၺ်း Function 2 ဢၼ်ၼႆႉ သေ လၢတ်ႈဝႃႈဢၼ်လႂ်ပဵၼ် Parametric၊ ဢၼ်လႂ်ပဵၼ် Ad-hoc ၶႃႈ:

1. `myReverse :: [a] -> [a]`
2. `isEqual :: (Eq a) => a -> a -> Bool`

**เฉลย:**
1. **Parametric**: ၵွပ်ႈမၼ်းၵူၺ်းပိၼ်ႇ List၊ မၼ်းဢမ်ႇလူဝ်ႇႁူႉဝႃႈၶေႃႈမုၼ်းၼႂ်းၼၼ်ႉပဵၼ်သင်။
2. **Ad-hoc**: ၵွပ်ႈမၼ်းလူဝ်ႇၸႂ်ႉ `==` ဢၼ်ယူႇၼႂ်း `Eq` Class။

---

### **Summary for TMK Students:**
* **Parametric**: တူဝ်လဵဝ်ၸႂ်ႉလႆႈၵူႈ Type (One implementation for all).
* **Ad-hoc**: ၸႂ်ႉတူဝ်လဵဝ် (ၸိုဝ်ႈမိူၼ်ၵၼ်) သေတႃႉၵေႃႈ ႁဵတ်းၵၢၼ်ပႅၵ်ႇၵၼ် (Multiple implementations).
* **Constraint**: သင်ႁၼ် `=>` တီႈၼႃႈ `a` ၼႆ ပွင်ႇဝႃႈပဵၼ် Ad-hoc ၶႃႈယဝ်ႉ။
