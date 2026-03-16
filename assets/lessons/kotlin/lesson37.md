# တွၼ်ႈသွၼ် 37: Classes လႄႈ Objects (The Blueprints of State)

ၼႂ်းလုမ်ႈၾႃႉတႄႉတႄႉၼႆႉ ၵူႈယၢင်ႇပဵၼ် **Object** တင်းမူတ်းယဝ်ႉ။ တူဝ်ယၢင်ႇမိူၼ်ၼင်ႇ "လူတ်ႉ" (Car)၊ လူတ်ႉၵူႈလမ်းမီး "သီ" (Color) လႄႈ "လႅတ်း" (Speed) မိူၼ်ၵၼ် ၵူၺ်းၵႃႈ Value မၼ်းပႅၵ်ႇၵၼ်။

### 1. Class ပဵၼ်သင်? (The Blueprint)

**Class** ပဵၼ် "ၵႅဝ်း" ဢမ်ႇၼၼ် "ပိူင်တႅမ်ႈ" ဢၼ်မၵ်းမၼ်ႈဝႃႈ Object ၼိုင်ႈဢၼ် တေလႆႈမီးၶေႃႈမုၼ်းသင် (State) လႄႈ ႁဵတ်းၵၢၼ်သင်လႆႈ (Behavior)။

```kotlin
class Car {
    var brand: String = ""
    var model: String = ""
    
    fun drive() {
        println("$brand $model တိုၵ်ႉလႅၼ်ႈယူႇ...")
    }
}

```

### 2. Object ပဵၼ်သင်? (The Instance)

**Object** ပဵၼ် "တူဝ်တႄႉတႄႉ" ဢၼ်သၢင်ႈဢွၵ်ႇမႃးတီႈ Class။ ႁဝ်းၸၢင်ႈသၢင်ႈ Object လၢႆလၢႆတူဝ် တီႈ Class ဢၼ်လဵဝ်ၵၼ်လႆႈ။

```kotlin
fun main() {
    // သၢင်ႈ Object (Instance) ၶွင် Car
    val myCar = Car()
    myCar.brand = "Toyota"
    myCar.model = "Hilux"
    
    val yourCar = Car()
    yourCar.brand = "Tesla"
    yourCar.model = "Model 3"

    myCar.drive()  // ၽူၼ်မၼ်း: Toyota Hilux တိုၵ်ႉလႅၼ်ႈယူႇ...
    yourCar.drive() // ၽူၼ်မၼ်း: Tesla Model 3 တိုၵ်ႉလႅၼ်ႈယူႇ...
}

```

---

### 3. Properties လႄႈ Methods

* **Properties:** Variable ဢၼ်ယူႇၼႂ်း Class (မိူၼ်ၼင်ႇ `brand`, `model`) ဝႆႉသိမ်း **State** (ၶေႃႈမုၼ်း)။
* **Methods:** Function ဢၼ်ယူႇၼႂ်း Class (မိူၼ်ၼင်ႇ `drive()`) ဝႆႉမၵ်းမၼ်ႈ **Behavior** (ၵၢၼ်ႁဵတ်းၵၢၼ်)။

---

### 4. ၵွပ်ႈသင်ၸင်ႇလူဝ်ႇမီး Classes?

* **Organization:** ၸွႆႈႁႂ်ႈၶူတ်ႉႁဝ်းယူႇပဵၼ်တီႈပဵၼ်တၢင်း (မိူၼ်ၼင်ႇ ၶေႃႈမုၼ်းၵူၼ်းၵေႃႈဝႆႉၼႂ်း `Person` class)။
* **Reusability:** တႅမ်ႈၵႅဝ်းမၼ်းဝႆႉပွၵ်ႈလဵဝ် သေၸၢင်ႈဢဝ်ၵႂႃႇသၢင်ႈ Object လႆႈလၢႆလၢႆတူဝ် ၵူႈတီႈၵူႈလႅၼ်။
* **Real-world Modeling:** ၸွႆႈႁႂ်ႈႁဝ်းတႅမ်ႈ Program ႁႂ်ႈမိူၼ်တင်းလုမ်ႈၾႃႉတႄႉတႄႉၼႆႉ လိူဝ်သေၵၢၼ်တႅမ်ႈ Variable ပႅတ်ႈလၢႆလၢႆတူဝ်။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Class:** ႁၢင်ႈၵႅဝ်း ဢၼ်ဝႆႉသၢင်ႈ Object (Blueprint)။
* **Object / Instance:** တူဝ်တႄႉတႄႉ ဢၼ်လုၵ်ႉတီႈ Class မႃး။
* **State:** ၶေႃႈမုၼ်းဢၼ် Object တူဝ်ၼၼ်ႉမီး (Properties)။
* **Behavior:** သိင်ႇဢၼ် Object တူဝ်ၼၼ်ႉႁဵတ်းလႆႈ (Methods)။

---