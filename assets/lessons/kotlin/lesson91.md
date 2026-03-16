# တွၼ်ႈသွၼ် 91: Exception Handling & Structured Concurrency

### 1. Structured Concurrency ပွင်ႇဝႃႈသင်?

ဝူၼ်ႉတူၺ်းဝႃႈ Coroutine ပဵၼ် "လုၵ်ႈ" သေ Scope ပဵၼ် "ပေႃႈမႄႈ"။

* သင် "ပေႃႈမႄႈ" (Scope) ထုၵ်ႇယႃႉပႅတ်ႈ၊ "လုၵ်ႈ" (Coroutines) တင်းหมด တေလႆႈထုၵ်ႇ **Cancel** ၸွမ်းၵမ်းလဵဝ်။
* ၼႆႉႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈမီး Coroutine ဢၼ်ႁဵတ်းၵၢၼ်လႅၼ်ႈယူႇလၢႆလၢႆ (Memory Leak) မိူဝ်ႈႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉမၼ်းယဝ်ႉ။

### 2. Exception Handling (ၵၢၼ်ၸတ်းၵၢၼ် Error)

ၼႂ်း Coroutines, ၵၢၼ်ၸတ်းၵၢၼ် Error တေပႅၵ်ႇၵၼ်ၸွမ်းၼင်ႇ Builder ဢၼ်ႁဝ်းၸႂ်ႉ:

* **`launch`**: သင်မီး Error၊ မၼ်းတေႁဵတ်းႁႂ်ႈ App Crash ၵမ်းလဵဝ် (မိူၼ်တင်း Exception ပၵ်းပၵ်း)။ ႁဝ်းလူဝ်ႇၸႂ်ႉ `try-catch` ဢမ်ႇၼၼ် `CoroutineExceptionHandler`။
* **`async`**: သင်မီး Error၊ မၼ်းတေ "သိမ်း" Error ၼၼ်ႉဝႆႉၼႂ်း Deferred Object။ မၼ်းတေဢွၵ်ႇမႃးမိူဝ်ႈႁဝ်းႁွင်ႉ `.await()`။

```kotlin
// တူဝ်ယၢင်ႇ try-catch ၼႂ်း launch
scope.launch {
    try {
        doSomethingRisky()
    } catch (e: Exception) {
        println("Caught: ${e.message}")
    }
}

```

---

### 3. CoroutineExceptionHandler

ၼႆႉပဵၼ်လၢႆး "ႁပ်ႉ Error ႁူမ်ႈ" (Generic handler) တႃႇ Coroutines ဢၼ်သၢင်ႈလူၺ်ႈ `launch`။

```kotlin
val handler = CoroutineExceptionHandler { _, exception ->
    println("Error caught by handler: $exception")
}

scope.launch(handler) {
    throw Exception("Something went wrong!")
}

```

---

### 4. SupervisorJob (ၵၢၼ်ႁႄႉၵင်ႈ Error ဢမ်ႇႁႂ်ႈလၢမ်းၸူးၵၼ်)

ၸွမ်းပိူင်ပိုၼ်ႉထၢၼ်၊ သင် "လုၵ်ႈ" တူဝ်ၼိုင်ႈ Error၊ မၼ်းတေႁဵတ်းႁႂ်ႈ "ပေႃႈမႄႈ" လႄႈ "ပီႈၼွင်ႉ" တူဝ်တၢင်ႇၸိူဝ်းထုၵ်ႇ Cancel တင်းหมด။
သင်ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈမၼ်းပဵၼ်ၼၼ်၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ **`SupervisorJob`**။

* **SupervisorJob**: သင်လုၵ်ႈတူဝ်ၼိုင်ႈတၢႆ၊ တူဝ်တၢင်ႇၸိူဝ်းတိုၵ်ႉႁဵတ်းၵၢၼ်တေႃႇလႆႈယူႇ။

---

### 5. Summary Guidelines

1. **ၸႂ်ႉ `try-catch**` ၼႂ်းတူဝ် Coroutine ပေႃးၶႂ်ႈၸတ်းၵၢၼ် Error တီႈၼၼ်ႈၵမ်းလဵဝ်။
2. **ၸႂ်ႉ `CoroutineExceptionHandler**` တႃႇႁပ်ႉ Error ဢၼ်ႁဝ်းလိုမ်းထတ်းတူၺ်း။
3. **ၸႂ်ႉ `SupervisorJob**` မိူဝ်ႈတႅမ်ႈ App ဢၼ်မီးၵၢၼ်လၢႆယၢင်ႇ (မိူၼ်ၼင်ႇ လူတ်ႇၶႅပ်းႁၢင်ႈလၢႆလၢႆႁၢင်ႈ) သေဢမ်ႇၶႂ်ႈႁႂ်ႈႁၢင်ႈၼိုင်ႈ Error သေႁဵတ်းႁႂ်ႈ App ၵိုတ်းတင်းหมด။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Structured Concurrency:** ပိူင်ၵၢၼ်ၵုမ်းၵမ်သၢႆၸႂ် Coroutine ႁႂ်ႈမီးလမ်ႇတပ်ႉ။
* **Exception Propagation:** ၵၢၼ်သူင်ႇ Error လၢမ်းတေႃႇၵၼ်ၶိုၼ်ႈၵႂႃႇၸၼ်ႉသုင်။
* **Cancellation:** ၵၢၼ်สั่งၵိုတ်းၵၢၼ်ႁဵတ်းၵၢၼ် Coroutine ၸူဝ်ႈၶၢဝ်း။
* **Supervisor:** တူဝ်ၵုမ်းၵမ်ဢၼ်ပၼ်လုၵ်ႈလၢၼ် "တၢႆတူဝ်လဵဝ်" လႆႈ လူၺ်ႈဢမ်ႇတုမ်ႉတိူဝ်ႉပိူၼ်ႈ။

---