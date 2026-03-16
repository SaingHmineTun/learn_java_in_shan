# တွၼ်ႈသွၼ် 85: The 'with' Function

မိူဝ်ႈၸဝ်ႈၵဝ်ႇမီး Object တူဝ်ၼိုင်ႈ သေလူဝ်ႇႁွင်ႉၸႂ်ႉ Properties ဢမ်ႇၼၼ် Functions ၼႂ်းတူဝ်မၼ်းလၢႆလၢႆဢၼ်တပ်ႉၵၼ်၊ ၵၢၼ်တႅမ်ႈ `object.property`, `object.method()` သမ်ႉၵၼ်ၼၼ်ႉ ႁဵတ်းႁႂ်ႈၶူတ်ႉလူတ်း (Cluttered) တႄႉတႄႉ။

### 1. လၢႆးၸႂ်ႉ (Syntax)

`with` တေႁပ်ႉဢဝ် Object ၶဝ်ႈၵႂႃႇပဵၼ် **Parameter** တူဝ်ဢွၼ်တၢင်းသုတ်း၊ ယဝ်ႉၵေႃႈပၼ်ႁဝ်းၸႂ်ႉ `this` ၼႂ်း Lambda block ယဝ်ႉ။

* **Context Object:** `this` (Receiver)
* **Return Value:** Lambda result (ၽົນဢွၵ်ႇထႅဝ်သုတ်းသုတ်း)

```kotlin
val person = Person("Sai", "Taunggyi", 25)

// ပိူင်ပိုၼ်ႉထၢၼ် (ဢမ်ႇၸႂ်ႉ with)
println(person.name)
println(person.city)
println(person.age)

// ၸႂ်ႉ with (သႅၼ်ႈသႂ်လိူဝ်)
with(person) {
    println(name) // ၶဝ်ႈၸႂ်ႉလႆႈၵမ်းလဵဝ်
    println(city)
    println(age)
}

```

---

### 2. `with` vs `run`

တင်းသွင်တူဝ်ၼႆႉ ႁဵတ်းၵၢၼ်မိူၼ်ၵၼ် (ၸႂ်ႉ `this` လႄႈ Return Lambda result)။ လွင်ႈပႅၵ်ႇပၢင်ႇမၼ်းမီးၵူၺ်းတီႈ **လၢႆးတႅမ်ႈ**:

* `with(obj) { ... }`: ၸႂ်ႉမိူဝ်ႈႁဝ်းမီး Object ယူႇယဝ်ႉ သေၶႂ်ႈႁဵတ်းၵၢၼ်ၸွမ်းမၼ်း။
* `obj.run { ... }`: ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ Chain (သိုပ်ႇ) မၼ်းမႃးတီႈ Function တၢင်ႇဢၼ်။

> **Pro Tip:** ၵူၼ်းတႅမ်ႈ Kotlin ၵႆႉၸႂ်ႉ `with` မိူဝ်ႈလူဝ်ႇၸတ်းၵၢၼ် View ၼႂ်း UI ဢမ်ႇၼၼ် တႅမ်ႈ Test Cases ဢၼ်လူဝ်ႇထတ်းတူၺ်း (Assert) Properties လၢႆလၢႆတူဝ်ၼႂ်း Object လဵဝ်ၵၼ်။

---

### 3. တူဝ်ယၢင်ႇ: ၵၢၼ်သူင်ႇၽົນဢွၵ်ႇ (Return Result)

ၵွပ်ႈ `with` သူင်ႇၽົນ Lambda ဢွၵ်ႇမႃး၊ ႁဝ်းၸၢင်ႈၸႂ်ႉမၼ်းတႃႇ "ႁွမ်ႁူမ်ႈ" ၶေႃႈမုၼ်းလႆႈ။

```kotlin
val userInfo = with(person) {
    "Name: $name, Age: $age" // ၽົນဢွၵ်ႇတေပဵၼ် String ၼႆႉ
}
println(userInfo)

```

---

### 4. သรุป Scope Functions တင်းหมด (Quick Summary)

| Function | Context | Return | Usage |
| --- | --- | --- | --- |
| **`let`** | `it` | Result | Null-checks / Transformations |
| **`run`** | `this` | Result | Initialization + Result |
| **`with`** | `this` | Result | Repeated calls on an object |
| **`apply`** | `this` | Object | Object configuration (Setting values) |
| **`also`** | `it` | Object | Side actions (Logging/Printing) |

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Receiver (`this`):** Object ဢၼ်ထုၵ်ႇသူင်ႇၶဝ်ႈၵႂႃႇၼႂ်း Scope ႁႂ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Properties မၼ်းလႆႈၵမ်းလဵဝ်။
* **Lambda Result:** ၵႃႈ (Value) ဢၼ်မီးယူႇထႅဝ်သုတ်းသုတ်း ဢၼ်တေပဵၼ်ၽົນဢွၵ်ႇၶွင် Function။
* **Redundancy:** ၵၢၼ်တႅမ်ႈသင်သေမဵဝ်းသမ်ႉၵၼ် ဢၼ်ဢမ်ႇလူဝ်ႇမီးၵေႃႈလႆႈ။
* **Argument:** ၶေႃႈမုၼ်းဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇၼႂ်း Function (ၼႂ်း `with(obj)`, `obj` ပဵၼ် Argument)။

---