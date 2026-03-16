# တွၼ်ႈသွၼ် 52: Polymorphism လႄႈ Dynamic Dispatch

### 1. Polymorphism ပဵၼ်သင်?

**Polymorphism** ပွင်ႇဝႃႈ Object တူဝ်လုၵ်ႈ ၸၢင်ႈ "တႅၼ်းတၢင်း" (Act as) Object တူဝ်မႄႈမၼ်းလႆႈ။ တူဝ်ယၢင်ႇမိူၼ်ၼင်ႇ `Dog` လႄႈ `Cat` တင်းသွင်ပဵၼ် `Animal`။ ႁဝ်းၸၢင်ႈသိမ်းမၼ်းဝႆႉၼႂ်း List ဢၼ်ပဵၼ် `List<Animal>` လႆႈယဝ်ႉ။

```kotlin
open class Animal {
    open fun makeSound() {
        println("Animal makes a sound")
    }
}

class Dog : Animal() {
    override fun makeSound() {
        println("Woof!")
    }
}

class Cat : Animal() {
    override fun makeSound() {
        println("Meow!")
    }
}

```

---

### 2. Dynamic Dispatch (ၵၢၼ်တတ်းသိၼ်မိူဝ်ႈ Runtime)

**Dynamic Dispatch** ပဵၼ်လွၵ်းလၢႆးဢၼ် Kotlin ၸႂ်ႉတႃႇတတ်းသိၼ်ဝႃႈ တေလႆႈႁွင်ႉၸႂ်ႉ Function တူဝ်လႂ် (တူဝ်မႄႈ ႁႃႉ တူဝ်လုၵ်ႈ?)။ မၼ်းတေတူၺ်းတီႈ **"တူဝ် Object တႄႉတႄႉ"** ၼႂ်း Memory၊ ဢမ်ႇၸႂ်ႈတူၺ်းတီႈ "Type ၶွင် Variable" ယဝ်ႉ။

```kotlin
fun main() {
    // Variable ပဵၼ် Type Animal ၵူၺ်းၵႃႈ Object တႄႉတႄႉပဵၼ် Dog
    val myPet: Animal = Dog()

    // တီႈၼႆႉ Kotlin တေႁွင်ႉၸႂ်ႉ makeSound() ၶွင် Dog 
    // ၼႆႉႁွင်ႉဝႃႈ Dynamic Dispatch
    myPet.makeSound() // ၽူၼ်မၼ်း: Woof!
}

```

---

### 3. Static Dispatch vs. Dynamic Dispatch

| တွၼ်ႈတႅၵ်ႈ | **Static Dispatch** | **Dynamic Dispatch** |
| --- | --- | --- |
| **တတ်းသိၼ်မိူဝ်ႈလႂ်?** | မိူဝ်ႈ Compile Time (တႅမ်ႈၶူတ်ႉယဝ်ႉ) | မိူဝ်ႈ Runtime (တိုၵ်ႉ Run ယူႇ) |
| **တူၺ်းတီႈလႂ်?** | တူၺ်းတီႈ Variable Type | တူၺ်းတီႈ Object တႄႉတႄႉ (Instance) |
| **တူဝ်ယၢင်ႇ** | Method Overloading | Method Overriding (Polymorphism) |

---

### 4. ၵွပ်ႈသင်ၸင်ႇလီ?

* **Scalability:** ႁဝ်းၸၢင်ႈထႅမ် Class မႂ်ႇ (မိူၼ်ၼင်ႇ `Bird`) လႆႈငၢႆႈငၢႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇၵႂႃႇမႄးၶူတ်ႉ ဢၼ်ၸႂ်ႉ `Animal` ယူႇၼၼ်ႉ။
* **Clean Code:** ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ `if` ဢမ်ႇၼၼ် `when` တႃႇထတ်းတူၺ်းဝႃႈ "ၼႆႉပဵၼ်မႃႁႃႉ? ပဵၼ်မႅဝ်းႁႃႉ?"၊ ႁဝ်းၵူၺ်းႁွင်ႉ `makeSound()` ၵမ်းလဵဝ်ၵေႃႈယဝ်ႉ။

```kotlin
// ၶူတ်ႉဢၼ်ယืดယုၼ်ႇ
fun startNoise(animals: List<Animal>) {
    for (animal in animals) {
        animal.makeSound() // မၼ်းတေႁွင်ႉတူဝ်ၽႂ်ႇတူဝ်မၼ်းႁင်းၵူၺ်း
    }
}

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Polymorphism:** ၵၢၼ်ဢၼ် Object တူဝ်လဵဝ် ႁၢင်ႈပဵၼ်လႆႈလၢႆလၢႆမဵဝ်း (လၢႆ Type)။
* **Dynamic Dispatch:** ၵၢၼ်လိူၵ်ႈ Method ဢၼ်တေႁဵတ်းၵၢၼ် တီႈၸၼ်ႉ Runtime။
* **Upcasting:** ၵၢၼ်မၢႆတွင်း Object တူဝ်လုၵ်ႈ ႁႂ်ႈပဵၼ် Type တူဝ်မႄႈ (မိူၼ်ၼင်ႇ `val a: Animal = Dog()`)။
* **Runtime:** ၶၢဝ်းယၢမ်းဢၼ် Program တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ။

---