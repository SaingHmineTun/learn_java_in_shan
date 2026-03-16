# တွၼ်ႈသွၼ် 61: Anonymous Functions vs. Lambdas

ၼႂ်း Kotlin, Lambda ပဵၼ်လၢႆးတႅမ်ႈဢၼ်ၵႆႉၸႂ်ႉလိူဝ်၊ ၵူၺ်းၵႃႈ **Anonymous Function** သမ်ႉမီးတၢင်းၵတ်ႉမၢင်ယၢင်ႇ ဢၼ် Lambda ဢမ်ႇႁဵတ်းလႆႈယဝ်ႉ။

### 1. လၢႆးတႅမ်ႈ (Syntax Comparison)

* **Lambda Expression:** ၸႂ်ႉ `{ }` လႄႈ `->`။
```kotlin
val sumLambda = { a: Int, b: Int -> a + b }

```


* **Anonymous Function:** ၸႂ်ႉ Keyword `fun` ၵူၺ်းၵႃႈဢမ်ႇတႅမ်ႈၸိုဝ်ႈ။
```kotlin
val sumAnon = fun(a: Int, b: Int): Int {
    return a + b
}

```



---

### 2. လွင်ႈပႅၵ်ႇပၢင်ႇဢၼ်လမ်ႇလွင်ႈ (Key Differences)

#### A. Keyword `return`

ၼႆႉပဵၼ်လွင်ႈပႅၵ်ႇပၢင်ႇဢၼ်ယႂ်ႇသုတ်းယဝ်ႉ။

* **Lambda:** ၸႂ်ႉ `return` ဢမ်ႇလႆႈ (လိူဝ်သေတေမီး Label မိူၼ်ၼင်ႇ `return@label`)။ မၼ်းတေဢဝ်ထႅဝ်သုတ်းသုတ်းပဵၼ် Result ႁင်းၵူၺ်း။
* **Anonymous Function:** ၸႂ်ႉ **`return`** လႆႈမိူၼ် Function ပၵ်းပၵ်း။ မၼ်းတေသူင်ႇ Value ဢွၵ်ႇတီႈ Function ၼၼ်ႉၵူၺ်း (Local Return)။

#### B. Type Inference

* **Lambda:** တူၺ်းပွင်ႇငၢႆႈလိူဝ် မိူဝ်ႈၸႂ်ႉပဵၼ် Parameter။
* **Anonymous Function:** ၸၢင်ႈမၵ်းမၼ်ႈ **Return Type** လႆႈၸႅင်ႈလႅင်း (Explicit)၊ ၸွႆႈႁႂ်ႈထတ်းတူၺ်း Error လႆႈငၢႆႈလိူဝ် မိူဝ်ႈတႅမ်ႈ Logic ယၢဝ်းလူင်။

---

### 3. မိူဝ်ႈလႂ်ထုၵ်ႇလီၸႂ်ႉ Anonymous Function?

တႅမ်ႈ Lambda တႃႇသေႇ ၵွပ်ႈမၼ်းပွတ်း လႄႈ သႅၼ်ႈသႂ်။ ၵူၺ်းၵႃႈ လိူၵ်ႈၸႂ်ႉ **Anonymous Function** မိူဝ်ႈ:

1. ၸဝ်ႈၵဝ်ႇလူဝ်ႇၸႂ်ႉ **`return`** လၢႆလၢႆတီႈ (မိူၼ်ၼင်ႇၼႂ်း `if-else` ယၢဝ်းလူင်)။
2. ၸဝ်ႈၵဝ်ႇၶႂ်ႈမၵ်းမၼ်ႈ **Return Type** ႁႂ်ႈၸႅင်ႈလႅင်း တႃႇဝႄႉလွင်ႈသုၵ်ႉယုင်ႈ။

```kotlin
// တူဝ်ယၢင်ႇ Anonymous Function ဢၼ်မီး return လၢႆတီႈ
val grade = fun(score: Int): String {
    if (score < 0 || score > 100) return "Invalid"
    if (score >= 80) return "A"
    return "Pass"
}

```

---

### 4. Comparison Table

| တွၼ်ႈတႅၵ်ႈ | Lambda Expression | Anonymous Function |
| --- | --- | --- |
| **Keyword `fun**` | ❌ (ၸႂ်ႉ `{ }`) | ✅ (ၸႂ်ႉ `fun`) |
| **Return Value** | ထႅဝ်သုတ်းသုတ်း | တေလႆႈၸႂ်ႉ Keyword `return` |
| **Return Type** | ၼပ်ႉသၢင်ႈႁင်းၵူၺ်း | မၵ်းမၼ်ႈလႆႈ (Explicit) |
| **Usage** | ၸႂ်ႉၼမ်သုတ်း (Standard) | ၸႂ်ႉမိူဝ်ႈ Logic သုၵ်ႉယုင်ႈ |

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Anonymous Function:** Function ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ ၵူၺ်းၵႃႈမီး Syntax မိူၼ် Function ပၵ်းပၵ်း။
* **Local Return:** ၵၢၼ်သူင်ႇ Value ဢွၵ်ႇတီႈ Function ဢၼ်တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ (ဢမ်ႇၸႂ်ႈသူင်ႇဢွၵ်ႇတီႈ Function မႄႈ)။
* **Implicit Return:** ၵၢၼ်သူင်ႇ Value ဢွၵ်ႇႁင်းၵူၺ်း (တီႈထႅဝ်သုတ်းသုတ်းၶွင် Lambda)။
* **Explicit Return Type:** ၵၢၼ်မၵ်းမၼ်ႈ Type ၶွင် Value ဢၼ်တေသူင်ႇဢွၵ်ႇႁႂ်ႈၸႅင်ႈလႅင်း။

---