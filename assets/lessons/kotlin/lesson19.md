# တွၼ်ႈသွၼ် 19: ၵၢၼ်ၸႂ်ႉ 'if' ၼႂ်း Kotlin (Statement vs. Expression)

ၼႂ်း Kotlin ၼၼ်ႉ `if` ႁဵတ်းၵၢၼ်လႆႈ 2 ပိူင်လူင်ယဝ်ႉ။

### 1. `if` ပဵၼ် Statement (ၵၢၼ်ၸႂ်ႉပိူင်ငဝ်ႈ)

ပဵၼ်ၵၢၼ်ၸႂ်ႉတႃႇ "ၵုမ်းထိင်းတၢင်းเดิน" ၶွင်ၶူတ်ႉ။ မၼ်းတေထတ်းတူၺ်း ငဝ်းလၢႆး (Condition) သေ သင်ႇႁႂ်ႈႁဵတ်းၵၢၼ်သင်သင်ၼိုင်ႈ။ လၢႆးၼႆႉ **ဢမ်ႇမီး** ၵၢၼ်သူင်ႇ Value ဢွၵ်ႇမႃး။

```kotlin
val time = 10

if (time < 12) {
    println("Good Morning!") // သင်ႇႁႂ်ႈ Print လိၵ်ႈဢွၵ်ႇမႃး
} else {
    println("Good Day!")
}

```

---

### 2. `if` ပဵၼ် Expression (ၵၢၼ်ဢဝ် Value)

ၼႆႉပဵၼ် "Killer Feature" ၶွင် Kotlin ယဝ်ႉ။ ႁဝ်းၸၢင်ႈဢဝ် `if` သႂ်ႇဝႆႉၽၢႆႇၶႂႃၶွင် Variable လႆႈၵမ်းလဵဝ်။ မၼ်းတေလိူၵ်ႈဢဝ် Value ဢွၵ်ႇမႃးၸွမ်းၼင်ႇငဝ်းလၢႆးမၼ်း။

```kotlin
val a = 10
val b = 20

// လိူၵ်ႈဢဝ်တူဝ်ဢၼ်ယႂ်ႇသေပိူၼ်ႈ သႂ်ႇၼႂ်း max
val max = if (a > b) a else b

println(max) // ၽူၼ်မၼ်းတေဢွၵ်ႇ: 20

```

---

### 3. ၵၢၼ်ထတ်းတူၺ်းလၢႆငဝ်းလၢႆး (else if)

မိူဝ်ႈႁဝ်းမီးငဝ်းလၢႆး ဢၼ်ၼမ်သေ 2 ပိူင်၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`else if`** မႃးၶၼ်ႈၵၢင်ဝႆႉလႆႈ တင်း Statement လႄႈ Expression ယဝ်ႉ။

```kotlin
val marks = 75

val result = if (marks >= 80) {
    "Distinction"
} else if (marks >= 40) {
    "Pass"
} else {
    "Fail"
}

println("ၽူၼ်တွပ်ႇပဵၼ်: $result") 

```

---

### 4. ၶေႃႈပႅၵ်ႇပၢင်ႇ ဢၼ်လူဝ်ႇမၢႆတွင်း

| ပိူင်ၸႂ်ႉ | **if as Statement** | **if as Expression** |
| --- | --- | --- |
| **ၵၢၼ်ႁဵတ်းၵၢၼ်** | သင်ႇႁႂ်ႈႁဵတ်းၵၢၼ် (Print, Save, etc.) | ပၼ်ၽူၼ်လႅတ်း (Value) ဢွၵ်ႇမႃး |
| **else** | ဢမ်ႇလူဝ်ႇမီး `else` ၵေႃႈလႆႈ | **လူဝ်ႇလႆႈမီး** `else` တႃႇသေႇ |
| **တူဝ်ယၢင်ႇ** | `if (x > 0) print("Positive")` | `val res = if (x > 0) "Pos" else "Neg"` |

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Statement:** ၶေႃႈသင်ႇဢၼ်ႁဵတ်းၵၢၼ်သေယဝ်ႉၵႂႃႇ (ဢမ်ႇမီး Value)။
* **Expression:** ၶူတ်ႉတွၼ်ႈဢၼ်ၼပ်ႉသၢင်ႈယဝ်ႉသေ ပၼ်ၽူၼ်လႅတ်း (Value) ဢွၵ်ႇမႃး။
* **Control Flow:** လွၵ်းလၢႆးၵုမ်းထိင်းတၢင်းเดินၶွင် Program။

---