# တွၼ်ႈသွၼ် 66: Filtering and Transforming

မိူဝ်ႈႁဝ်းမီး List ယႂ်ႇယႂ်ႇလူင်၊ ႁဝ်းၵႆႉမီးၵၢၼ်ႁဵတ်းသွင်ယၢင်ႇ: **လိူၵ်ႈ (Filter)** ဢဝ်ဢၼ်လူဝ်ႇ လႄႈ **ပိၼ်ႇ (Transform)** ၶေႃႈမုၼ်းပဵၼ်ပိူင်မႂ်ႇ။

### 1. `filter` (ၵၢၼ်လိူၵ်ႈ)

`filter` တေၵႂႃႇထတ်းတူၺ်းၵူႈတူဝ်ၼႂ်း List။ သင် Lambda ပၼ်ၵႃႈပဵၼ် `true`၊ မၼ်းတေသိမ်းတူဝ်ၼၼ်ႉဝႆႉ။

* **တူဝ်ယၢင်ႇ:** လိူၵ်ႈဢဝ်တူဝ်ၼပ်ႉဢၼ်ယႂ်ႇလိူဝ် 5။

```kotlin
val numbers = listOf(1, 8, 3, 12, 5)
val filtered = numbers.filter { it > 5 } 
// [8, 12]

```

---

### 2. `map` (ၵၢၼ်ပိၼ်ႇပႅင်ႇ)

`map` တေဢဝ်ၵူႈတူဝ်မႃး "ပိၼ်ႇ" (Transform) ပဵၼ်မဵဝ်းမႂ်ႇ ၸွမ်းၼင်ႇ Logic ႁဝ်း။

* **တူဝ်ယၢင်ႇ:** ဢဝ်တူဝ်ၼပ်ႉမႃးၼပ်ႉၵႃႈႁႅင်းၼူၵ်ႉ ($x^2$)။

```kotlin
val numbers = listOf(1, 2, 3)
val doubled = numbers.map { it * it } 
// [1, 4, 9]

```

---

### 3. `flatMap` (ၵၢၼ်ယႅၵ်ႈလႄႈႁူမ်ႈ)

`flatMap` ပဵၼ်ၵၢၼ်ႁူမ်ႈၵၼ်ဝၼ်း `map` လႄႈ `flatten`။ ၸႂ်ႉမိူဝ်ႈတူဝ်ၼပ်ႉၼႂ်း List ႁဝ်း ပဵၼ် List ထႅင်ႈၸၼ်ႉၼိုင်ႈ (List of Lists) သေ ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းပဵၼ် List လဵဝ်ၵၼ်ယဝ်ႉ။

* **တူဝ်ယၢင်ႇ:** ႁဝ်းမီး List ၶွင်ၵူၼ်း၊ သေၵူၼ်းၵူႈၵေႃႉမီး List ၶွင် "ၵႂၢမ်းလၢတ်ႈ" (Languages)။ ႁဝ်းၶႂ်ႈလႆႈသဵၼ်ႈၸိုဝ်ႈၵႂၢမ်းလၢတ်ႈတင်းหมด ႁူမ်ႈၵၼ်။

```kotlin
val data = listOf(listOf("English", "Shan"), listOf("Thai", "Japanese"))
val allLanguages = data.flatMap { it } 
// [English, Shan, Thai, Japanese]

```

---

### 4. ၵၢၼ်ၸႂ်ႉႁူမ်ႈၵၼ် (Chaining)

ႁဝ်းၸၢင်ႈဢဝ် Function ၸိူဝ်းၼႆႉ မႃးတပ်ႉၵၼ်ပဵၼ်သၢႆ (Chain) တႃႇလႆႈ Result ဢၼ်သုၵ်ႉယုင်ႈလႆႈငၢႆႈငၢႆႈ။

```kotlin
val numbers = listOf(1, 2, 3, 4, 5, 6)

val result = numbers
    .filter { it % 2 == 0 } // 1. လိူၵ်ႈဢဝ်ၵူၺ်းတူဝ်ၵူပ်ႉ (2, 4, 6)
    .map { "Number $it" }  // 2. ပိၼ်ႇပဵၼ် String ("Number 2", ...)

println(result)

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Filtering:** ၵၢၼ်လိူၵ်ႈဢဝ်ၶေႃႈမုၼ်း ၸွမ်းၼင်ႇသၢႆငၢႆ (Condition)။
* **Transformation:** ၵၢၼ်ပိၼ်ႇပႅင်ႇပိူင် (Form) ၶွင်ၶေႃႈမုၼ်း။
* **Chaining:** ၵၢၼ်ဢဝ် Function မႃးႁွင်ႉၸႂ်ႉတပ်ႉၵၼ်ၵႂႃႇၸၼ်ႉတေႃႇၸၼ်ႉ။
* **Flatten:** ၵၢၼ်ယႃႉ List ဢၼ်သိမ်းဝႆႉၼႂ်း List (Nested List) ႁႂ်ႈပဵၼ်သဵၼ်ႈလဵဝ်။

---