# တွၼ်ႈသွၼ် 53: Composition vs. Inheritance

ၼႂ်းၵၢၼ်ပူၵ်းသၢင်ႈ Program၊ ႁဝ်းမီးသွင်လၢႆး တႃႇႁႂ်ႈ Class ၼိုင်ႈဢၼ် ၸႂ်ႉတၢင်းၵတ်ႉၶွင်ထႅင်ႈ Class ၼိုင်ႈလႆႈ။

### 1. Inheritance (Is-a relationship)

**Inheritance** ပွင်ႇဝႃႈ "ၵၢၼ်သိုပ်ႇပွင်"။ မၼ်းမၵ်းမၼ်ႈဝႃႈ Class တူဝ်လုၵ်ႈ **ပဵၼ် (is-a)** မဵဝ်းလဵဝ်ၵၼ်တင်းတူဝ်မႄႈ။

* **တူဝ်ယၢင်ႇ:** `Dog` **is-a** `Animal`။
* **ၶူတ်ႉ:** `class Dog : Animal()`

**ၶေႃႈလီ:** ဢမ်ႇလူဝ်ႇတႅမ်ႈၶူတ်ႉသမ်ႉ (Code Reuse)။
**ၶေႃႈသုမ်း:** မၼ်းႁဵတ်းႁႂ်ႈ Class သွင်ဢၼ်ၸပ်းၵၼ်ၵႅၼ်ႇပူၼ်ႉတီႈ (Tightly Coupled)။ သင်တူဝ်မႄႈလႅၵ်ႈလၢႆႈ၊ တူဝ်လုၵ်ႈၸၢင်ႈ Error ၵမ်းလဵဝ်။

---

### 2. Composition (Has-a relationship)

**Composition** ပွင်ႇဝႃႈ "ၵၢၼ်ဢဝ်မႃးသႅပ်ႉ"။ မၼ်းမၵ်းမၼ်ႈဝႃႈ Class ၼိုင်ႈဢၼ် **မီး (has-a)** ထႅင်ႈ Class ၼိုင်ႈယူႇၼႂ်းမၼ်း။

* **တူဝ်ယၢင်ႇ:** `Car` **has-an** `Engine` (လူတ်ႉဢမ်ႇၸႂ်ႈၸႅၵ်ႇမႃးတီႈၸၢၵ်ႈ၊ ၵူၺ်းၵႃႈမၼ်းမီးၸၢၵ်ႈယူႇၼႂ်းမၼ်း)။
* **ၶူတ်ႉ:** 
```kotlin
class Engine {
  fun start() = println("Engine starting...")
}

class Car {
    private val engine = Engine() // Composition
    fun move() {
        engine.start()
        println("Car is moving")
    }
}

```



---

### 3. ပႅၵ်ႇပၢင်ႇၵၼ်ၸိူဝ်ႉႁိုဝ်?

| တွၼ်ႈတႅၵ်ႈ | **Inheritance** | **Composition** |
| :--- | :--- | :--- |
| **Relationship** | **Is-a** (ပဵၼ်...) | **Has-a** (မီး...) |
| **Flexibility** | ယืดယုၼ်ႇယေႃႈ (ပိူၼ်ႈလႅၵ်ႈ ႁဝ်းၵေႃႈလႅၵ်ႈ) | ယืดယုၼ်ႇၼမ် (လႅၵ်ႈလၢႆႈ Engine လႆႈငၢႆႈငၢႆႈ) |
| **Visibility** | တူဝ်လုၵ်ႈႁၼ်တွၼ်ႈ `protected` ၶွင်တူဝ်မႄႈ | ႁၼ်လႆႈၵူၺ်းတွၼ်ႈ `public` |
| **Encapsulation** | ယႃႉ (Broken Encapsulation) | ၵႅၼ်ႇၶႅင် (Strong Encapsulation) |

---

### 4. ၵမ်းၼႆႉ တေလိူၵ်ႈၸႂ်ႉတူဝ်လႂ်?
Programmer ၵတ်ႉၶႅၼ်ႇၶဝ်ၵႆႉလၢတ်ႈဝႃႈ **"Favor composition over inheritance"** (လိူၵ်ႈၸႂ်ႉ Composition ဢွၼ်တၢင်း Inheritance)။

* **ၸႂ်ႉ Inheritance:** မိူဝ်ႈ Class သွင်ဢၼ်ၼၼ်ႉ ပဵၼ်ၸိူဝ်ႉၶိူဝ်းလဵဝ်ၵၼ်တႄႉတႄႉ (မိူၼ်ၼင်ႇ `Square` is-a `Shape`)။
* **ၸႂ်ႉ Composition:** မိူဝ်ႈႁဝ်းၵူၺ်းၶႂ်ႈလႆႈ "တၢင်းၵတ်ႉ" ၶွင်မၼ်းမႃးၸႂ်ႉ (မိူၼ်ၼင်ႇ `Robot` has-a `Camera`)။



---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း
* **Is-a Relationship:** ၵၢၼ်မၵ်းမၼ်ႈသၢႆၸိူဝ်ႉၶိူဝ်း (Inheritance)။
* **Has-a Relationship:** ၵၢၼ်မၵ်းမၼ်ႈလွင်ႈပဵၼ်ၸဝ်ႈၶွင် (Composition)။
* **Tightly Coupled:** ၶူတ်ႉဢၼ်ၵိူတ်ႇၵိုၵ်းၸပ်းၵၼ်ၵႅၼ်ႇ သေမႄးလႆႈယၢပ်ႇ။
* **Loose Coupling:** ၶူတ်ႉဢၼ်ယႅၵ်ႈၵၼ်လႆႈငၢႆႈ သေမႄးလႆႈလွတ်ႈလႅဝ်း။

---