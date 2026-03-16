# တွၼ်ႈသွၼ် 56: Lambda Syntax လႄႈ Type Inference

မိူဝ်ႈႁဝ်းတႅမ်ႈ Lambda၊ ႁဝ်းမီးပၵ်းပိူင် (Syntax) ဢၼ်တေလႆႈၸွမ်း ႁႂ်ႈ Compiler ပွင်ႇၸႂ်ယဝ်ႉ။

### 1. ပိူင်သၢင်ႈပိုၼ်ႉထၢၼ် (The Full Syntax)

လၢႆးတႅမ်ႈ ဢၼ်တႅတ်ႈတေႃးသုတ်း (Full Version) တေမီးၼင်ႇၼႆ:

```kotlin
val sum = { a: Int, b: Int -> a + b }

```

* **`{ }`**: Lambda တေလႆႈယူႇၼႂ်းဝူင်းလႅမ်ပူၵ်ႇတႃႇသေႇ။
* **`a: Int, b: Int`**: ၼႆႉပဵၼ် Parameters (ၶေႃႈမုၼ်းဢၼ်သူင်ႇၶဝ်ႈ)။
* **`->`**: တူဝ်ၸႅၵ်ႇ Parameter တင်း Logic။
* **`a + b`**: ၼႆႉပဵၼ် Body (Logic ဢၼ်တေႁဵတ်းၵၢၼ်)။

---

### 2. Type Inference (ၵၢၼ်လႅတ်းၶွင် Kotlin)

Kotlin မီးတၢင်းၵတ်ႉ **Type Inference**၊ ပွင်ႇဝႃႈ "သင်မၼ်းႁူႉယဝ်ႉဝႃႈပဵၼ် Type သင်၊ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈထႅင်ႈၵေႃႈလႆႈ"။ ႁဝ်းလိူၵ်ႈတႅမ်ႈလႆႈသွင်လၢႆး:

**လၢႆး A: မၵ်းမၼ်ႈ Type ဝႆႉတီႈ Variable**

```kotlin
val multiply: (Int, Int) -> Int = { x, y -> x * y }
// တီႈၼႆႉ x လႄႈ y ဢမ်ႇလူဝ်ႇလၢတ်ႈဝႃႈပဵၼ် Int ယဝ်ႉ ၵွပ်ႈ Kotlin ႁူႉၸွမ်း Type ၽၢႆႇၼႃႈ

```

**လၢႆး B: မၵ်းမၼ်ႈ Type ဝႆႉၼႂ်း Lambda**

```kotlin
val multiply = { x: Int, y: Int -> x * y }
// တီႈၼႆႉ Kotlin တေၼပ်ႉသၢင်ႈႁူႉႁင်းၵူၺ်းဝႃႈ Variable 'multiply' တေလႆႈပဵၼ် (Int, Int) -> Int

```

---

### 3. Returning a Value

ၼႂ်း Lambda ႁဝ်း **ဢမ်ႇၸုၼ်ႉ (Forbidden)** ၸႂ်ႉ Keyword `return` တႃႇသူင်ႇၵႃႈဢွၵ်ႇမႃး (လိူဝ်သေမၼ်းတေမီး Label)။

* Kotlin တေဢဝ် **"ထႅဝ်သုတ်းသုတ်း"** ၼႂ်း Lambda ၼၼ်ႉ ပဵၼ် Return Value ပၼ်ႁင်းၵူၺ်းယဝ်ႉ။

```kotlin
val welcome = { name: String ->
    val greeting = "Hello, $name"
    greeting // ထႅဝ်ၼႆႉတေပဵၼ် Return Value ၵမ်းလဵဝ်
}

```

---

### 4. Trailing Lambda Syntax (လွၵ်းလၢႆးဢၼ် Pro ၸႂ်ႉ)

သင် Function ၼိုင်ႈဢၼ် ႁပ်ႉ Lambda ပဵၼ် **Parameter တူဝ်သုတ်းသုတ်း**၊ ႁဝ်းၸၢင်ႈ "ယႅၵ်ႈ" Lambda ၼၼ်ႉဢွၵ်ႇမႃးဝႆႉၼွၵ်ႈဝူင်းလႅမ် `( )` လႆႈယဝ်ႉ။

```kotlin
// ပိူင်သၢင်ႈပၵ်းပၵ်း
numbers.filter({ it > 5 })

// Trailing Lambda (သႅၼ်ႈသႂ်လိူဝ်)
numbers.filter { it > 5 }

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Syntax:** ပၵ်းပိူင်လၢႆးတႅမ်ႈၶူတ်ႉ။
* **Type Inference:** ၵၢၼ်ဢၼ် Compiler ႁူႉၸွမ်းလႆႈဝႃႈ Variable/Function ပဵၼ် Type သင် လူၺ်ႈႁဝ်းဢမ်ႇလူဝ်ႇလၢတ်ႈ။
* **Function Type:** ပိူင်ၶွင် Function မိူၼ်ၼင်ႇ `(Input) -> Output`။
* **Trailing Lambda:** လၢႆးတႅမ်ႈ Lambda ဝႆႉၼွၵ်ႈဝူင်းလႅမ် `( )` မိူဝ်ႈမၼ်းပဵၼ် Parameter တူဝ်သုတ်းသုတ်း။

---