# တွၼ်ႈသွၼ် 38: Constructors (Primary vs Secondary)

### 1. Primary Constructor

ၼႆႉပဵၼ်လၢႆးတႅမ်ႈဢၼ်ငၢႆႈသုတ်း လႄႈ ၸႂ်ႉၼမ်သုတ်း။ ႁဝ်းတႅမ်ႈ Parameter ဝႆႉၽၢႆႇလင်ၸိုဝ်ႈ Class ၼၼ်ႉၵမ်းလဵဝ်ယဝ်ႉ။

```kotlin
// Primary Constructor
class Person(val name: String, var age: Int) {
    // ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ Property တီႈႁူဝ်မၼ်းလႆႈၵမ်းလဵဝ်
}

fun main() {
    val p1 = Person("Sai Sai", 20)
    println(p1.name) // Sai Sai
}

```

---

### 2. Secondary Constructor

မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈႁႂ်ႈ Class ႁဝ်းမီးလၢႆးသၢင်ႈ (Construct) လၢႆလၢႆပိူင် (မိူၼ်ၼင်ႇ သူင်ႇ Parameter ဢၼ်လဵဝ် ဢမ်ႇၼၼ် သူင်ႇသွင်ဢၼ်)။ ႁဝ်းတေၸႂ်ႉ Keyword **`constructor`** ၼႂ်းတူဝ် Class ယဝ်ႉ။

**ပၵ်းပိူင်:** သင်ဝႃႈမီး Primary Constructor ယူႇယဝ်ႉ၊ Secondary တေလႆႈ **`this()`** (Delegate) ၵႂႃႇႁႃ Primary တႃႇသေႇ။

```kotlin
class Student(val name: String) {
    var grade: String = "N/A"

    // Secondary Constructor
    constructor(name: String, grade: String) : this(name) {
        this.grade = grade
    }
}

fun main() {
    val s1 = Student("Nang")           // ၸႂ်ႉ Primary
    val s2 = Student("Kyaw", "Grade A") // ၸႂ်ႉ Secondary
}

```

---

### 3. ပႅၵ်ႇပၢင်ႇၵၼ်ၸိူဝ်ႉႁိူဝ်?

| တွၼ်ႈတႅၵ်ႈ | **Primary Constructor** | **Secondary Constructor** |
| --- | --- | --- |
| **တီႈယူႇ** | ၽၢႆႇလင်ၸိုဝ်ႈ Class | ၼႂ်းတူဝ် Class `{ }` |
| **ၵၢၼ်သၢင်ႈ Property** | သၢင်ႈလႆႈၵမ်းလဵဝ် (ၸႂ်ႉ `val`/`var`) | သၢင်ႈဢမ်ႇလႆႈ (လူဝ်ႇသၢင်ႈဝႆႉၼွၵ်ႈ constructor ဢွၼ်တၢင်း) |
| **တၢင်းၼမ်** | မီးလႆႈ 1 ဢၼ်ၵူၺ်း | မီးလႆႈတင်းၼမ် (Overloading) |
| **ၵၢၼ်ၸႂ်ႉတိုဝ်း** | ၸႂ်ႉပဵၼ်ပိူင်လူင် (Standard) | ၸႂ်ႉမိူဝ်ႈလူဝ်ႇလၢႆးသၢင်ႈဢၼ်ပႅၵ်ႇပၢင်ႇၵၼ် |

---

### 4. ၵွပ်ႈသင် Kotlin ၸင်ႇၸႅၵ်ႇဝႆႉၼႆ?

* **Conciseness:** Primary Constructor ႁဵတ်းႁႂ်ႈၶူတ်ႉႁဝ်းသႅၼ်ႈသႂ် ဢမ်ႇလူဝ်ႇတႅမ်ႈ Variable သွၼ်ႉၵၼ်လၢႆတီႈ မိူၼ် Java။
* **Clarity:** မၼ်းႁႂ်ႈႁဝ်းႁူႉဝႃႈ ၶေႃႈမုၼ်းလမ်ႇလွင်ႈသုတ်း (Required fields) ၶွင် Class ၼႆႉပဵၼ်သင် တႄႇတီႈႁူဝ်မၼ်းယဝ်ႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Constructor:** Function ၶိုၵ်ႉတွၼ်းဢၼ်ႁဵတ်းၵၢၼ်မိူဝ်ႈသၢင်ႈ Object။
* **Initialization:** ၵၢၼ်မၵ်းမၼ်ႈ Value တႄႇငဝ်ႈပၼ် Variable။
* **Delegation:** ၵၢၼ်သူင်ႇပုၼ်ႈၽွၼ်းၵႂႃႇႁႃ Constructor ထႅင်ႈဢၼ်ၼိုင်ႈ (ၸႂ်ႉ `: this()`)။
* **Property:** Variable ဢၼ်မၵ်းမၼ်ႈဝႆႉၼႂ်း Class။

---