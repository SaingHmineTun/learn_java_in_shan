# တွၼ်ႈသွၼ် 88: launch, async, and await

မိူဝ်ႈႁဝ်းတေတႄႇ Coroutine၊ ႁဝ်းလူဝ်ႇလိူၵ်ႈဝႃႈ ႁဝ်းၶႂ်ႈႁဵတ်းၵၢၼ်ယဝ်ႉ "လူင်ပႅတ်ႈ" (Fire and forget) ႁႃႉ၊ ဢမ်ႇၼၼ် ႁဝ်းၶႂ်ႈပႂ်ႉဢဝ် "ၽົນဢွၵ်ႇ" (Result) မၼ်းၶႃႈ။

### 1. `launch` (ႁဵတ်းယဝ်ႉလူင်ပႅတ်ႈ)

`launch` ပဵၼ်ၵၢၼ်သၢင်ႈ Coroutine ဢၼ် **ဢမ်ႇသူင်ႇၽົນ (Result) ၶိုၼ်းမႃး**။ မၼ်းတေသူင်ႇ `Job` ၶိုၼ်းမႃး တႃႇႁႂ်ႈႁဝ်းၵုမ်းၵမ် (မိူၼ်ၼင်ႇ တႃႇ Cancel) လႆႈၵူၺ်း။

* **မိူဝ်ႈလႂ်ၸႂ်ႉ?**: ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈႁဵတ်းၵၢၼ်သေမဵဝ်း ဢၼ်ဢမ်ႇလူဝ်ႇပႂ်ႉဢဝ် Value (မိူၼ်ၼင်ႇ ၵၢၼ် Log ၶေႃႈမုၼ်း ဢမ်ႇၼၼ် Update UI)။

```kotlin
val job = scope.launch {
    delay(1000L) // ပႂ်ႉ 1 ၸႅၵ်ႉ (ဢမ်ႇ Block Thread)
    println("ၵၢၼ်ႁဵတ်းယဝ်ႉယဝ်ႉ!")
}

```

---

### 2. `async` လႄႈ `await` (ပႂ်ႉဢဝ်ၽົນဢွၵ်ႇ)

`async` မိူၼ်တင်း `launch` ၵူၺ်းၵႃႈ မၼ်း **သူင်ႇၽົນ (Result) ၶိုၼ်းမႃး**။ မၼ်းတေသူင်ႇ `Deferred<T>` (ဢၼ်ပွင်ႇဝႃႈ "ၵႃႈဢၼ်တေလႆႈမႃးၼႂ်းမိူဝ်းၼႃႈ") ၶိုၼ်းမႃး။

* **`await()`**: ပဵၼ် Function ဢၼ်ၸႂ်ႉတႃႇ "ပႂ်ႉ" ဢဝ်ၽົນဢွၵ်ႇတႄႉတႄႉမၼ်း။

```kotlin
val deferred = scope.async {
    delay(1000L)
    "Hello Gemini" // ၼႆႉပဵၼ် Result
}

// ႁဵတ်းၵၢၼ်တၢင်ႇယၢင်ႇပႂ်ႉလႆႈ...

val result = deferred.await() // ပႂ်ႉဢဝ် String "Hello Gemini" တီႈၼႆႈ
println(result)

```

---

### 3. ၵၢၼ်ႁဵတ်းၵၢၼ်ႁူမ်ႈၵၼ် (Concurrent Execution)

ၽွၼ်းလီလူင်ၶွင် `async` ၵေႃႈပဵၼ် ၵၢၼ်ႁွင်ႉၸႂ်ႉလၢႆလၢႆဢၼ်ႁူမ်ႈၵၼ် တႃႇလူတ်းယေႃႈၶၢဝ်းယၢမ်း။

```kotlin
val time = measureTimeMillis {
    val one = async { doSomethingOne() } // ႁဵတ်းၵမ်းလဵဝ်
    val two = async { doSomethingTwo() } // ႁဵတ်းၵမ်းလဵဝ်
    
    println("ၽົນႁူမ်ႈ: ${one.await()} + ${two.await()}")
}
// သင်တင်းသွင်ဢၼ်လူဝ်ႇ 1 ၸႅၵ်ႉ၊ ၶၢဝ်းယၢမ်းတင်းหมดၵေႃႈတေပဵၼ်ၵူၺ်း 1 ၸႅၵ်ႉ (ဢမ်ႇၸႂ်ႈ 2)

```

---

### 4. Comparison Table

| Feature | `launch` | `async` |
| --- | --- | --- |
| **Return Value** | `Job` (တူဝ်ၵုမ်းၵမ်) | `Deferred<T>` (တူဝ်သိမ်းၽົນ) |
| **Result Access** | ဢမ်ႇမီး | ၸႂ်ႉ `.await()` |
| **Exception** | တေ App Crash ၵမ်းလဵဝ် (သင်ဢမ်ႇ Catch) | တေသိမ်း Error ဝႆႉၼႂ်း Deferred |
| **Main Usage** | Fire and forget | Compute/Fetch result |

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Coroutine Builder:** Function ဢၼ်ၸႂ်ႉတႃႇသၢင်ႈ Coroutine (မိူၼ်ၼင်ႇ launch, async)။
* **Fire and Forget:** ၵၢၼ်สั่งႁဵတ်းၵၢၼ်ယဝ်ႉ ဢမ်ႇပႂ်ႉတူၺ်းၽၼ်မၼ်းထႅင်ႈ။
* **Job:** Object ဢၼ်တႅၼ်းတူဝ် Coroutine ဢၼ်တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ။
* **Deferred:** သၼ်ႇၺႃႇဝႃႈ "တေမီးၶေႃႈမုၼ်းသူင်ႇမႃးပၼ်ၽၢႆႇလင်"။
* **Await:** ၵၢၼ် "ၵတ်းယင်ႉ" ပႂ်ႉတေႃႇပေႃးလႆႈ Result။

---