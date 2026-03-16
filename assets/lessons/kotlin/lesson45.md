# တွၼ်ႈသွၼ် 45: Companion Objects (Static Members)

ၼႂ်း Kotlin၊ ႁဝ်းဢမ်ႇမီး Keyword `static`။ ပွင်ႇဝႃႈ ႁဝ်းဢမ်ႇၸၢင်ႈသၢင်ႈ Variable ဢမ်ႇၼၼ် Function ဢၼ်ပဵၼ်ၶွင် "တူဝ် Class" လူၺ်ႈၵမ်းလဵဝ်လႆႈ မိူၼ်ၼင်ႇ Java။ တႃႇတေႁဵတ်းလႆႈၼၼ်ႉ Kotlin ၸႂ်ႉ **Companion Object** ယဝ်ႉ။

### 1. Companion Object ပဵၼ်သင်?

မၼ်းပဵၼ် `object` ဢၼ်ယူႇၼႂ်း `class`။ မၼ်းမီးၸိုဝ်ႈဝႃႈ "Companion" (ၵေႃႉၵေႃႉ/ၵေႃႉႁူမ်ႈတၢင်း) ၵွပ်ႈမၼ်းပဵၼ် Object ဢၼ်ၵိူတ်ႇမႃးၵိုၵ်းတင်း Class ၼၼ်ႉယဝ်ႉ။

```kotlin
class Physics {
    companion object {
        val GRAVITY = 9.8
        
        fun calculateForce(mass: Double): Double {
            return mass * GRAVITY
        }
    }
}

fun main() {
    // ႁွင်ႉၸႂ်ႉလႆႈၵမ်းလဵဝ် တီႈၸိုဝ်ႈ Class 
    // ဢမ်ႇလူဝ်ႇသၢင်ႈ Physics() object ဢွၼ်တၢင်း
    println(Physics.GRAVITY) 
    println(Physics.calculateForce(10.0))
}

```

---

### 2. ပႅၵ်ႇပၢင်ႇၵၼ်တင်း `object` (Singleton) ၸိူဝ်ႉႁိူဝ်?

* **`object` (တွၼ်ႈ 44):** ပဵၼ် Singleton ဢၼ်သၢင်ႈဝႆႉၽၢႆႇၼွၵ်ႈ၊ ၸႂ်ႉတႃႇသိမ်း Data ဢၼ်ပဵၼ် Global။
* **`companion object`:** ယူႇၼႂ်း Class၊ ၸႂ်ႉတႃႇသိမ်းၶေႃႈမုၼ်း ဢမ်ႇၼၼ် Function ဢၼ်ၵဵဝ်ႇၶွင်ႈတင်း Class ၼၼ်ႉတႄႉတႄႉ (မိူၼ်ၼင်ႇ Factory Methods)။

---

### 3. Factory Method Pattern

ၵၢၼ်ၸႂ်ႉ Companion Object ဢၼ်လူဝ်ႇမၢႆတွင်းသုတ်းပဵၼ် ၵၢၼ်သၢင်ႈ **Factory Method** (Function တႃႇသၢင်ႈ Object ဢၼ်ငၢႆႈလိူဝ် Constructor)။

```kotlin
class User private constructor(val email: String) {
    companion object {
        fun createFromEmail(email: String): User {
            return User(email)
        }
    }
}

// ၵၢၼ်ၸႂ်ႉတိုဝ်း
val user = User.createFromEmail("test@example.com")

```

---

### 4. ၶေႃႈတွၼ်းသတိ

* Class ၼိုင်ႈဢၼ် မီး Companion Object လႆႈ **ၵူၺ်း 1 ဢၼ်**။
* မၼ်းၸၢင်ႈမီးၸိုဝ်ႈလႆႈ (မိူၼ်ၼင်ႇ `companion object Factory { ... }`) ၵူၺ်းၵႃႈ ၵႆႉလေႇဢမ်ႇသႂ်ႇၸိုဝ်ႈမၼ်းၶႃႈ။
* Companion Object ၸၢင်ႈသိုပ်ႇပွင် (Inherit) တီႈ Interface ၵေႃႈလႆႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Static:** Member ဢၼ်ပဵၼ်ၶွင် Class၊ ဢမ်ႇၸႂ်ႈၶွင် Object (Instance)။
* **Companion Object:** Object ဢၼ်ယူႇၼႂ်း Class သေႁဵတ်းၵၢၼ်မိူၼ် Static။
* **Factory Method:** Function ဢၼ်မီးၼႃႈတီႈသၢင်ႈ လႄႈ သူင်ႇ Object ဢွၵ်ႇမႃးပၼ်။
* **Namespace:** ၶွပ်ႇပိူင် (Scope) ဢၼ်မၵ်းမၼ်ႈတီႈယူႇၶွင်ၸိုဝ်ႈ Variable/Function။

---