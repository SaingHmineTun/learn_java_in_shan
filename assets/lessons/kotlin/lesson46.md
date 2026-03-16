# တွၼ်ႈသွၼ် 46: Keyword 'open' (Inheritance by Design)

ၼႂ်း Java ၼၼ်ႉ Class ၵူႈဢၼ်ၸၢင်ႈသိုပ်ႇပွင် (Inherit) လႆႈတႃႇသေႇ လိူဝ်သေမၼ်းတေပဵၼ် `final`။ ၵူၺ်းၵႃႈ ၼႂ်း Kotlin မၼ်းပႅၵ်ႇၵၼ်၊ **Class ၵူႈဢၼ်ပဵၼ် `final` ဝႆႉတႄႇငဝ်ႈ (By default)**။ ပွင်ႇဝႃႈ သင်ႁဝ်းဢမ်ႇသင်ႇပိုတ်ႇမၼ်းဝႆႉ၊ Class တၢင်ႇဢၼ်တေမႃးသိုပ်ႇပွင် (Extend) မၼ်းဢမ်ႇလႆႈယဝ်ႉ။

### 1. ၵွပ်ႈသင် Kotlin ၸင်ႇႁဵတ်းၼႆ?

ၼႆႉပဵၼ်ၵၢၼ် Follow ပၵ်းပိူင် "Design for inheritance or else prohibit it"။ မၼ်းၸွႆႈႁႄႉၵင်ႈပၼ်ႁႃ ဢၼ်ၵူၼ်းတၢင်ႇၵေႃႉတေမႃးသိုပ်ႇပွင် Class ႁဝ်း သေၵႂႃႇလႅၵ်ႈလၢႆႈ Logic ၼႂ်းမၼ်း ႁဵတ်းႁႂ်ႈ Program ၸၢင်ႈ Error လႆႈငၢႆႈငၢႆႈၼၼ်ႉယဝ်ႉ။

### 2. လၢႆးၸႂ်ႉ Keyword `open`

သင်ႁဝ်းၶႂ်ႈႁႂ်ႈ Class ၼိုင်ႈဢၼ် ပဵၼ် "Class တူဝ်မႄႈ" (Superclass/Parent Class)၊ ႁဝ်းလူဝ်ႇသႂ်ႇ Keyword **`open`** ဝႆႉၽၢႆႇၼႃႈ `class` ယဝ်ႉ။

```kotlin
// Open class တႃႇႁႂ်ႈပိူၼ်ႈမႃး Inherit လႆႈ
open class Animal(val name: String) {
    fun eat() {
        println("$name တိုၵ်ႉၵိၼ်ဢႃႇႁႃႇရယူႇ...")
    }
}

// ၵၢၼ်သိုပ်ႇပွင် (Inheritance) ၸႂ်ႉၶိူင်ႈမၢႆ ":"
class Dog(name: String) : Animal(name) {
    fun bark() {
        println("ဝူၵ်ႉ ဝူၵ်ႉ!")
    }
}

fun main() {
    val myDog = Dog("Boby")
    myDog.eat()  // ၸႂ်ႉ Function ၶွင်တူဝ်မႄႈလႆႈ
    myDog.bark() // ၸႂ်ႉ Function ၶွင်တူဝ်မၼ်းႁင်းၵူၺ်း
}

```

---

### 3. ၵၢၼ်သိုပ်ႇပွင် Parameter

မိူဝ်ႈ `Dog` သိုပ်ႇပွင်တီႈ `Animal`၊ မၼ်းလူဝ်ႇသူင်ႇ Parameter ၵႂႃႇပၼ် Constructor ၶွင်တူဝ်မႄႈၸွမ်း (ၸွမ်းၼင်ႇ `Animal(name)` ၼႂ်းတူဝ်ယၢင်ႇၼိူဝ်ၼၼ်ႉၶႃႈ)။

### 4. ၶေႃႈလမ်ႇလွင်ႈ

* **Single Inheritance:** ၼႂ်း Kotlin (မိူၼ် Java)၊ Class ၼိုင်ႈဢၼ် သိုပ်ႇပွင် Class တူဝ်မႄႈလႆႈ **ၵူၺ်း 1 ဢၼ်**။
* **Open is Required:** သင်ဢမ်ႇသႂ်ႇ `open`၊ Class ၼၼ်ႉတေပဵၼ် `final` သေ ပိူၼ်ႈတေ Extend ဢမ်ႇလႆႈ (တေ Error ဝႃႈ *This type is final and cannot be inherited from*)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Inheritance:** ၵၢၼ်သိုပ်ႇပွင် ဢၼ် Class ၼိုင်ႈဢၼ် ဢဝ် Property လႄႈ Method ၶွင်ထႅင်ႈ Class ၼိုင်ႈမႃးၸႂ်ႉ။
* **Superclass / Parent Class:** Class တူဝ်မႄႈ ဢၼ်ပဵၼ်ငဝ်ႈငႃႇ။
* **Subclass / Child Class:** Class တူဝ်လုၵ်ႈ ဢၼ်သိုပ်ႇပွင်မႃး။
* **Final Class:** Class ဢၼ်ပိတ်းဝႆႉ ဢမ်ႇပၼ်ပိူၼ်ႈမႃးသိုပ်ႇပွင်လႆႈ။

---