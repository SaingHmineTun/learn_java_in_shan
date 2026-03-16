
# တွၼ်ႈသွၼ် 50: ၵၢၼ်ၵုမ်းထိင်း Interface Conflicts

မိူဝ်ႈ Interface A လႄႈ Interface B တင်းသွင်မီး Default Method ၸိုဝ်ႈမိူၼ်ၵၼ်၊ Class တူဝ်လုၵ်ႈ **"တေလႆႈ"** Override Function ၼၼ်ႉ သေမၵ်းမၼ်ႈဝႃႈ တေႁဵတ်းသင်တႄႉတႄႉယဝ်ႉ။

### 1. တူဝ်ယၢင်ႇပၼ်ႁႃ (The Conflict)

```kotlin
interface A {
    fun callMe() {
        println("Calling from A")
    }
}

interface B {
    fun callMe() {
        println("Calling from B")
    }
}

// Class ၼႆႉတေ Error ၵမ်းလဵဝ် သင်ဢမ်ႇ Override callMe()
class MyClass : A, B {
    override fun callMe() {
        // Kotlin လူဝ်ႇႁူႉဝႃႈ တေႁဵတ်းသင်?
    }
}

```

---

### 2. လၢႆးၵႄႈပၼ်ႁႃ (The Solution)

ႁဝ်းၸၢင်ႈလိူၵ်ႈၸႂ်ႉ Logic ၶွင် Interface တူဝ်လႂ်တူဝ်ၼိုင်ႈ (ဢမ်ႇၼၼ် တင်းသွင်တူဝ်) လူၺ်ႈၵၢၼ်ၸႂ်ႉ Keyword **`super<InterfaceName>.function()`** ယဝ်ႉ။

```kotlin
class MyClass : A, B {
    override fun callMe() {
        super<A>.callMe() // ႁွင်ႉၸႂ်ႉၶွင် A
        super<B>.callMe() // ႁွင်ႉၸႂ်ႉၶွင် B
        println("Own logic in MyClass")
    }
}

```

---

### 3. ၵွပ်ႈသင် Kotlin ၸင်ႇပၼ်ႁဵတ်းၼႆ?

* **Multiple Inheritance of Behavior:** Kotlin ဢမ်ႇပၼ်သိုပ်ႇပွင် Class (State) လၢႆလၢႆဢၼ် ၵွပ်ႈမၼ်းယုင်ႈယၢင်ႇ၊ ၵူၺ်းၵႃႈ ပၼ်ႁပ်ႉ Behavior (Interface) လၢႆလၢႆဢၼ်လႆႈ။
* **Explicit Resolution:** Kotlin ဢမ်ႇလိူၵ်ႈပၼ်ႁင်းၵူၺ်း (မိူၼ်ၼင်ႇ ဢဝ်တူဝ်ဢွၼ်တၢင်း)၊ မၼ်းတေ "တဵၵ်း" ႁႂ်ႈ Programmer ပဵၼ်ၵေႃႉတတ်းသိၼ် ႁႂ်ႈမၼ်းၸႅင်ႈလႅင်း (Explicit) ယဝ်ႉ။

---

### 4. ၶေႃႈတွၼ်းသတိ

* သင်မီး Interface တူဝ်ၼိုင်ႈပဵၼ် `abstract` (ဢမ်ႇမီး Logic) သေ ထႅင်ႈတူဝ်ၼိုင်ႈမီး `default logic`၊ ႁဝ်းၵေႃႈတိုၵ်ႉလူဝ်ႇ `override` မၼ်းယူႇလီလီ တႃႇမၵ်းမၼ်ႈဝႃႈတေၸႂ်ႉတူဝ်လႂ်။
* ၵၢၼ်ၸႂ်ႉ `< >` (Angle brackets) ၵိုၵ်းတင်း `super` ၼၼ်ႉ ၸႂ်ႉလႆႈၵူၺ်း မိူဝ်ႈမီးပၼ်ႁႃၸိုဝ်ႈမိူၼ်ၵၼ်ၼႆႉယဝ်ႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Multiple Inheritance:** ၵၢၼ်သိုပ်ႇပွင် ဢမ်ႇၼၼ် ႁပ်ႉပုၼ်ႈၽွၼ်းမႃးတီႈလၢႆလၢႆတီႈ။
* **Conflict Resolution:** ၵၢၼ်ၵႄႈပၼ်ႁႃ မိူဝ်ႈၶေႃႈမုၼ်း/ၶူတ်ႉ တိူဝ်ႉၸပ်းၵၼ်။
* **Diamond Problem:** ပၼ်ႁႃငဝ်းလၢႆး ဢၼ် Class တူဝ်လုၵ်ႈမီးသၢႆတၢင်းၵႂႃႇႁႃတူဝ်မႄႈလႆႈလၢႆလၢႆတၢင်း။
* **Explicit Implementation:** ၵၢၼ်တႅမ်ႈၶူတ်ႉႁႂ်ႈၸႅင်ႈလႅင်း ဝႃႈတေႁဵတ်းသင်တႄႉတႄႉ။

---