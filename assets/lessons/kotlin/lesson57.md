# တွၼ်ႈသွၼ် 57: The 'it' Keyword (Implicit Name)

ၼႂ်း Kotlin၊ သင် Lambda Expression ႁဝ်းမီး **Parameter ၵူၺ်းတူဝ်လဵဝ်**၊ ႁဝ်းဢမ်ႇလူဝ်ႇပၼ်ၸိုဝ်ႈမၼ်း လႄႈ ဢမ်ႇလူဝ်ႇတႅမ်ႈၶိူင်ႈမၢႆ `->` ၵေႃႈလႆႈယဝ်ႉ။ Kotlin တေမၵ်းမၼ်ႈပၼ်ႁင်းၵူၺ်းဝႃႈ Parameter တူဝ်ၼၼ်ႉၸိုဝ်ႈဝႃႈ **`it`** (မၼ်း/မၼ်းတူဝ်ၼၼ်ႉ)။

### 1. တူဝ်ယၢင်ႇတႅၵ်ႈၵၼ် (Comparison)

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈၼပ်ႉၵႃႈၼိုင်ႈ (Square) ၶွင်တူဝ်ၼပ်ႉ:

* **လၢႆးတႅမ်ႈ Full Syntax:**

```kotlin
val square: (Int) -> Int = { x -> x * x }

```

* **လၢႆးၸႂ်ႉ `it` (Shorthand):**

```kotlin
val square: (Int) -> Int = { it * it }

```

---

### 2. ၵၢၼ်ၸႂ်ႉ `it` ၼႂ်း Higher-Order Functions

ၵႆႉလေႇႁဝ်းၸႂ်ႉ `it` ၼမ်သုတ်း မိူဝ်ႈႁဝ်းႁဵတ်းၵၢၼ်ၸွမ်း Collections (မိူၼ်ၼင်ႇ List)။

```kotlin
val names = listOf("Sai", "Kyaw", "Aye")

// လၢႆးတႅမ်ႈပၵ်းပၵ်း
val longNames = names.filter { name -> name.length > 3 }

// လၢႆးၸႂ်ႉ 'it' - သႅၼ်ႈသႂ်လိူဝ်!
val shortNames = names.filter { it.length <= 3 }

```

---

### 3. ပၵ်းပိူင်လမ်ႇလွင်ႈ

1. **ၵူၺ်းမီး Parameter တူဝ်လဵဝ်:** သင်မီး 2 တူဝ်ၶိုၼ်ႈၵႂႃႇ (မိူၼ်ၼင်ႇ `{ x, y -> ... }`)၊ ၸဝ်ႈၵဝ်ႇတေၸႂ်ႉ `it` **ဢမ်ႇလႆႈ**။
2. **Compiler လူဝ်ႇႁူႉ Type:** Kotlin တေလႆႈႁူႉၸႅင်ႈလႅင်းဝႃႈ `it` ၼၼ်ႉပဵၼ် Type သင် (လူၺ်ႈၵၢၼ်ၸႂ်ႉ Type Inference ၼႂ်းတွၼ်ႈ 56)။
3. **Implicit Name:** ၸိုဝ်ႈ `it` ၼႆႉပဵၼ်ၸိုဝ်ႈဢၼ် Kotlin တင်ႈဝႆႉပၼ်ယူႇယဝ်ႉ (Implicit)။

---

### 4. မိူဝ်ႈလႂ် "ဢမ်ႇထုၵ်ႇလီ" ၸႂ်ႉ `it`?

တင်းသႅင်ဝႃႈမၼ်းငၢႆႈ၊ ၵူၺ်းၵႃႈမၢင်ပွၵ်ႈ ၵၢၼ်ပၼ်ၸိုဝ်ႈတႅတ်ႈတေႃး (Explicit Name) တေလီလိူဝ်:

* **Nested Lambdas:** မိူဝ်ႈမီး Lambda ၸၼ်ႉၼႂ်း ၸၼ်ႉၼွၵ်ႈ ၸပ်းၵၼ်။ သင်ၸႂ်ႉ `it` တင်းသွင်ၸၼ်ႉ၊ ၸဝ်ႈၵဝ်ႇတေယုင်ႈဝႃႈ `it` တူဝ်လႂ် ပဵၼ်ၶွင်ၸၼ်ႉလႂ်။
* **Complexity:** သင် Logic ၼႂ်း Lambda ယၢဝ်းပူၼ်ႉတီႈ၊ ၵၢၼ်ပၼ်ၸိုဝ်ႈမိူၼ်ၼင်ႇ `user`, `price`, `index` တေႁဵတ်းႁႂ်ႈၶူတ်ႉဢၢၼ်ႇပွင်ႇငၢႆႈလိူဝ်။

```kotlin
// ဢမ်ႇထုၵ်ႇလီႁဵတ်း (ယုင်ႈယၢင်ႇ)
users.map { 
    it.orders.filter { it.price > 100 } // it တူဝ်လႂ်ပဵၼ် user? it တူဝ်လႂ်ပဵၼ် order?
}

// လီလိူဝ်
users.map { user -> 
    user.orders.filter { order -> order.price > 100 } 
}

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Implicit Name:** ၸိုဝ်ႈဢၼ်မၵ်းမၼ်ႈဝႆႉပၼ်ႁင်းၵူၺ်း လူၺ်ႈဢမ်ႇလူဝ်ႇလၢတ်ႈ။
* **Shorthand Syntax:** လၢႆးတႅမ်ႈဢၼ်ပွတ်းသုတ်း။
* **Nested Lambda:** Lambda ဢၼ်ယူႇၼႂ်း Lambda ထႅင်ႈၸၼ်ႉၼိုင်ႈ။
* **Readability:** တၢင်းၵတ်ႉၼႂ်းၵၢၼ်ဢၢၼ်ႇၶူတ်ႉႁႂ်ႈပွင်ႇၸႂ်ငၢႆႈ။

---