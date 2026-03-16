# တွၼ်ႈသွၼ် 68: Search Operations

ၼႂ်း Kotlin, Collections မီး Function ဢၼ်ၸွႆႈႁဝ်း "သွၵ်ႈႁႃ" လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈ `for` loop သေ `if` ႁင်းၵူၺ်းၶႃႈ။

### 1. ၵၢၼ်ႁႃတူဝ်ၶေႃႈမုၼ်း (Finding Elements)

* **`find`**: ႁႃတူဝ်ဢွၼ်တၢင်းသုတ်း ဢၼ်ၵူပ်ႉၵၼ်တင်း Condition။ သင်ဢမ်ႇႁၼ် မၼ်းတေ Return `null`။
* **`first()`**: မိူၼ်တင်း `find` ၵူၺ်းၵႃႈ သင်ဢမ်ႇႁၼ် မၼ်းတေ **Crash** (Throw Exception)။ (လီလိူဝ်ၸႂ်ႉ `firstOrNull()`)
* **`last()`**: ႁႃတူဝ်သုတ်းသုတ်း ဢၼ်ၵူပ်ႉၵၼ်တင်း Condition။ (လီလိူဝ်ၸႂ်ႉ `lastOrNull()`)

```kotlin
val numbers = listOf(1, 5, 8, 10, 15)

val firstEven = numbers.find { it % 2 == 0 } 
// ဢွၵ်ႇ: 8 (မၼ်းႁၼ် 8 ဢွၼ်တၢင်း 10)

val lastLarge = numbers.lastOrNull { it > 10 }
// ဢွၵ်ႇ: 15

```

---

### 2. ၵၢၼ်ထတ်းတူၺ်း (Predicates)

မၢင်ပွၵ်ႈႁဝ်းဢမ်ႇလူဝ်ႇ "တူဝ်ၶေႃႈမုၼ်း"၊ ႁဝ်းၵူၺ်းၶႂ်ႈႁူႉဝႃႈ "မၼ်းမီးႁႃႉ?" ဢမ်ႇၼၼ် "ၵူႈတူဝ်ပဵၼ်ၼၼ်ႁႃႉ?"။

* **`any`**: မီး **သေတူဝ်ၼိုင်ႈ** ဢၼ်ၵူပ်ႉၵၼ်တင်း Condition ႁႃႉ? (Return Boolean)
* **`all`**: **ၵူႈတူဝ်** ၼႂ်း List ၵူပ်ႉၵၼ်တင်း Condition တင်းหมดႁႃႉ?
* **`none`**: **ဢမ်ႇမီးသေတူဝ်** ဢၼ်ၵူပ်ႉၵၼ်တင်း Condition ၸႂ်ႈႁႃႉ?

```kotlin
val scores = listOf(45, 80, 90, 32)

println(scores.any { it >= 90 }) // true (မီး 90 ယူႇ)
println(scores.all { it > 0 })   // true (ၵူႈတူဝ်ယႂ်ႇလိူဝ် 0 တင်းหมด)
println(scores.none { it < 0 })  // true (ဢမ်ႇမီးတူဝ်ဢၼ်တိတ်းလပ်း)

```

---

### 3. ၵၢၼ်ၸႂ်ႉတႄႉ (Use Case)

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇတႅမ်ႈ App သိုဝ်ႉၶူဝ်း သေၶႂ်ႈထတ်းတူၺ်းဝႃႈ "ၼႂ်းသိုင်ႇ (Cart) ၼႆႉ မီးၶူဝ်းဢၼ်ၵႃႈၶၼ်ပူၼ်ႉ $100 ႁႃႉ?"

```kotlin
val hasExpensiveItem = cart.any { it.price > 100 }

if (hasExpensiveItem) {
    println("လူဝ်ႇလႆႈပၼ်ၵႃႈသူင်ႇ လၢႆလၢႆ!")
}

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Predicate:** Lambda ဢၼ်သူင်ႇၵႃႈဢွၵ်ႇမႃးပဵၼ် Boolean (`true`/`false`) တႃႇၸႂ်ႉထတ်းတူၺ်း။
* **OrNull:** ၸိုဝ်ႈတပ်ႉလင် Function ဢၼ်လၢတ်ႈဝႃႈ "သင်ဢမ်ႇႁၼ် ဢမ်ႇလူဝ်ႇ Crash၊ ပၼ် `null` မႃးၵေႃႈယဝ်ႉ"။
* **Short-circuiting:** ၵၢၼ်ဢၼ် `any` ဢမ်ႇၼၼ် `all` တေၵတ်းယင်ႉၵမ်းလဵဝ် မိူဝ်ႈမၼ်းႁူႉၽົນယဝ်ႉ (မိူၼ်ၼင်ႇ `any` ႁၼ်တူဝ်ၼိုင်ႈယဝ်ႉၵေႃႈ ဢမ်ႇတူၺ်းတူဝ်တၢင်ႇယဝ်ႉ)။

---