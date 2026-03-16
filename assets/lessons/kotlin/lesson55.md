# တွၼ်ႈသွၼ် 55: The Functional Paradigm (Thinking in Lambdas)

မိူဝ်ႈႁဝ်းတႅမ်ႈ OOP, ႁဝ်းဝူၼ်ႉဝႃႈ **Object** ပဵၼ် "ၶေႃႈမုၼ်း" သေ **Function** ပဵၼ် "ၵၢၼ်ႁဵတ်း"။ ၵူၺ်းၵႃႈၼႂ်း **Functional Paradigm (FP)**, ႁဝ်းယႃႉႁူႉဝႃႈ **Function ၵေႃႈပဵၼ် "ၶေႃႈမုၼ်း" (Data)** မဵဝ်းၼိုင်ႈယဝ်ႉ။

### 1. Function ပဵၼ် First-Class Citizen

ၼႂ်း Kotlin, Function မီးသုၼ်ႇလႆႈ (Status) မိူၼ်တင်း `String` ဢမ်ႇၼၼ် `Int` ၵူႈယၢင်ႇ:

* ၸၢင်ႈသိမ်းဝႆႉၼႂ်း **Variable** လႆႈ။
* ၸၢင်ႈသူင်ႇပဵၼ် **Parameter** ၵႂႃႇႁႃ Function တၢင်ႇဢၼ်လႆႈ။
* ၸၢင်ႈ **Return** ဢွၵ်ႇမႃးတီႈ Function လႆႈ။

### 2. Lambda ပဵၼ်သင်? (The Essence)

**Lambda Expression** ၵေႃႈၵူၺ်းပဵၼ် **"Function ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ"** (Anonymous Function)။ မၼ်းပဵၼ် Logic ဢၼ်ႁဝ်း "ႁေႃႇ" (Package) ဝႆႉသေ သူင်ႇၵႂႃႇသူင်ႇမႃးလႆႈ ၼႂ်း Program ႁဝ်းယဝ်ႉ။

### 3. လၢႆးဝူၼ်ႉ: Imperative vs. Declarative

တႃႇတေပွင်ႇၸႂ် "Thinking in Lambdas", ႁဝ်းလူဝ်ႇတူၺ်းတွၼ်ႈတႅၵ်ႈ ၵၢၼ်လိူၵ်ႈဢဝ် "မၢၵ်ႇၵႅမ်ႈၶွင်ႇ သီလႅင်" ၼႂ်းသိုင်ႇ (Basket):

* **Imperative (လၢႆးၵဝ်ႇ):** ႁဝ်းသင်ႇၵၢၼ် **ၸၼ်ႉတေႃႇၸၼ်ႉ (How)**.
* "ဢဝ်သိုင်ႇမႃး၊ ပၼ်ႇ Loop ၵူႈတူဝ်၊ ထတ်းတူၺ်းသီ၊ သင်ပဵၼ်သီလႅင် ၸင်ႇဢဝ်သႂ်ႇၼႂ်း List မႂ်ႇ။"


* **Declarative (လၢႆး FP):** ႁဝ်းမၵ်းမၼ်ႈ **ပဝ်ႇမၢႆ (What)**.
* "ဢဝ်သိုင်ႇမႃး၊ **Filter** (လိူၵ်ႈ) ဢဝ်ၵူၺ်းတူဝ်ဢၼ်ပဵၼ်သီလႅင်။"



```kotlin
// FP Style: ႁဝ်းဢမ်ႇသင်ႇၵၢၼ် Loop၊ ႁဝ်းသူင်ႇ "Logic ၵၢၼ်လိူၵ်ႈ" (Lambda) ပၼ် filter ၵူၺ်း
val redApples = apples.filter { it.color == "Red" }

```

### 4. Anatomy ၶွင် Lambda

Lambda တေလႆႈယူႇၼႂ်း `{ }` တႃႇသေႇ။ ပိူင်သၢင်ႈမၼ်းပဵၼ်:


$$\{ \text{Parameters} \to \text{Body} \}$$

* **Parameters:** ၶေႃႈမုၼ်းဢၼ်သူင်ႇၶဝ်ႈ (သင်မီး)။
* **Arrow (`->`):** တူဝ်ၸႅၵ်ႇ Parameter တင်း Logic။
* **Body:** ၶူတ်ႉဢၼ်တေႁဵတ်းၵၢၼ် (ထႅဝ်သုတ်းသုတ်းပဵၼ် Return Value)။

### 5. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ FP?

1. **Less Bugs:** ၵွပ်ႈႁဝ်းဢမ်ႇလႅၵ်ႈလၢႆႈ Variable ၵႆႉပူၼ်ႉတီႈ (Immutability)။
2. **Readability:** ၶူတ်ႉဢၢၼ်ႇပွင်ႇငၢႆႈမိူၼ်ၵႂၢမ်းလၢတ်ႈ။
3. **Concurrency:** ၵၢၼ်ႁဵတ်းၵၢၼ်လၢႆလၢႆဢၼ် (Parallel) ႁဵတ်းလႆႈငၢႆႈလိူဝ် ၵွပ်ႈမၼ်းဢမ်ႇမီး Side Effects။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Lambda Expression:** Function ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ ဢၼ်ၸၢင်ႈၸႂ်ႉပဵၼ် Value လႆႈ။
* **Anonymous Function:** ၸိုဝ်ႈထႅင်ႈဢၼ်ၼိုင်ႈၶွင် Lambda။
* **Higher-Order Function:** Function ဢၼ်ႁပ်ႉဢဝ် Function တၢင်ႇဢၼ်ပဵၼ် Parameter။
* **Side Effect:** ၵၢၼ်ဢၼ် Function ၵႂႃႇလႅၵ်ႈလၢႆႈသင်သေဢၼ် ၼွၵ်ႈပိူင်မၼ်း (FP ၶတ်းၸႂ်ဝႄႉလွင်ႈၼႆႉ)။

---