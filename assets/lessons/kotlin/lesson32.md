# တွၼ်ႈသွၼ် 32: Unit-returning Functions vs. Java's Void

ၼႂ်း Kotlin၊ သင် Function ဢမ်ႇသူင်ႇ (Return) Value သင်ဢွၵ်ႇမႃး၊ မၼ်းတေသူင်ႇ **`Unit`** ဢွၵ်ႇမႃးယဝ်ႉ။

### 1. `Unit` ပဵၼ် Object တႄႉတႄႉ

ၼႂ်း Java၊ `void` ၼႆႉ ပဵၼ် Keyword ဢၼ်လၢတ်ႈဝႃႈ **"ဢမ်ႇမီးသင် (Nothing/Empty)"**။ ၵူၺ်းၵႃႈ ၼႂ်း Kotlin၊ **`Unit`** ၼႆႉ ပဵၼ် **Object တႄႉတႄႉ** (Singleton instance) ယဝ်ႉ။

* **Java `void`:** "ၵဝ်ဢမ်ႇပၼ်သင်မႃးၶိုၼ်းသေဢၼ်"
* **Kotlin `Unit`:** "ၵဝ်ပၼ် Object ဢၼ်ၸိုဝ်ႈဝႃႈ Unit မႃးၶိုၼ်း 1 ဢၼ်"

---

### 2. လၢႆးတႅမ်ႈ ဢၼ်ႁဝ်းဢမ်ႇႁၼ်

မိူဝ်ႈႁဝ်းတႅမ်ႈ Function ဢၼ်ဢမ်ႇမီး Return Type၊ Kotlin တေထႅမ်ပၼ် `Unit` ႁင်းၵူၺ်းမၼ်းယူႇၽၢႆႇလင်ယဝ်ႉ။

```kotlin
// ဢၼ်ႁဝ်းတႅမ်ႈ
fun sayHello() {
    println("Hello!")
}

// ဢၼ် Kotlin ႁၼ်တႄႉတႄႉ
fun sayHello(): Unit {
    println("Hello!")
    return Unit // မၼ်းမီး return ယူႇၽၢႆႇလင် ႁင်းၵူၺ်းမၼ်း
}

```

---

### 3. ၵွပ်ႈသင် `Unit` ၸင်ႇလီသေ `void`?

လွင်ႈလမ်ႇလွင်ႈသုတ်းပဵၼ် ၵွပ်ႈပိူဝ်ႈ `Unit` ပဵၼ် **Type** တႄႉတႄႉဢၼ်ၼိုင်ႈ (မိူၼ်တင်း String, Int)၊ မၼ်းၸင်ႇၸၢင်ႈၵႂႃႇၸႂ်ႉၵိုၵ်းတင်း **Generics** လႆႈယဝ်ႉ။

တူဝ်ယၢင်ႇ: ၼႂ်း Java၊ ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ `List<void>` လႆႈ။ ၵူၺ်းၵႃႈ ၼႂ်း Kotlin ႁဝ်းၸၢင်ႈၸႂ်ႉ `Function<Unit>` လႆႈငၢႆႈငၢႆႈ၊ ႁဵတ်းႁႂ်ႈၵၢၼ်တႅမ်ႈၶူတ်ႉၸၼ်ႉသုင် (Functional Programming) မၼ်းၵူမ်ၵူႈလိူဝ်ၵဝ်ႇယဝ်ႉ။

---

### 4. တူဝ်ယၢင်ႇၵၢၼ်ၸႂ်ႉ `Unit` ပဵၼ် Value

ၵွပ်ႈမၼ်းပဵၼ် Object၊ ႁဝ်းၸၢင်ႈဢဝ်မၼ်းသႂ်ႇၼႂ်း Variable ၵေႃႈလႆႈယူႇ (သေတႃႉၵေႃႈ ဢမ်ႇပေႃးမီးၵူၼ်းႁဵတ်းၶႃႈ)။

```kotlin
val x = sayHello()
println(x) // ၽူၼ်မၼ်းတေဢွၵ်ႇ: kotlin.Unit

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Void:** Keyword ၼႂ်း Java ဢၼ်လၢတ်ႈဝႃႈ ဢမ်ႇမီး Return Value။
* **Unit:** မဵဝ်းၶေႃႈမုၼ်း (Type) ၼႂ်း Kotlin ဢၼ်မီး Value ၼိုင်ႈဢၼ်ၵူၺ်း (ပဵၼ် Singleton)။
* **Singleton:** Object ဢၼ်မီးလႆႈတူဝ်လဵဝ်ၵူၺ်း ၼႂ်း Program တင်းหมด။
* **Generics:** လၢႆးတႅမ်ႈၶူတ်ႉ ဢၼ်ႁပ်ႉလႆႈလၢႆလၢႆ Type (မိူၼ်ၼင်ႇ `List<T>`)။

---