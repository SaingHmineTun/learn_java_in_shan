# တွၼ်ႈသွၼ် 48: Abstract Classes (ႁၢင်ႈၵႅဝ်းပွတ်းတွၼ်ႈ)

**Abstract Class** ပဵၼ် Class ဢၼ်ႁဝ်း **ဢမ်ႇၸၢင်ႈဢဝ်မႃးသၢင်ႈပဵၼ် Object (Instance) လႆႈ**။ မၼ်းမီးဝႆႉတႃႇႁႂ်ႈ Class တၢင်ႇဢၼ်မႃးသိုပ်ႇပွင် (Inherit) သေ တႅမ်ႈသႂ်ႇပုၼ်ႈၽွၼ်းဢၼ်လူဝ်ႇထႅင်ႈၼၼ်ႉယဝ်ႉ။

### 1. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းၸႂ်ႉ Keyword **`abstract`** ဝႆႉၽၢႆႇၼႃႈ `class`။ ၼႂ်းမၼ်းၸၢင်ႈမီးတင်း Function ဢၼ်မီး Logic ယဝ်ႉ လႄႈ Function ဢၼ်မီးၵူၺ်းၸိုဝ်ႈ (Abstract Methods)။

```kotlin
abstract class Appliance(val brand: String) {
    // 1. Normal Method: တူဝ်လုၵ်ႈၸၢင်ႈၸႂ်ႉလႆႈၵမ်းလဵဝ်
    fun turnOn() {
        println("$brand appliance is now ON.")
    }

    // 2. Abstract Method: ဢမ်ႇမီး Logic { }၊ တူဝ်လုၵ်ႈ "တေလႆႈ" တႅမ်ႈမၼ်းႁင်းၵူၺ်း
    abstract fun operate()
}

```

---

### 2. ၵၢၼ်သိုပ်ႇပွင် လႄႈ ၵၢၼ်တႅမ်ႈထႅမ်

မိူဝ်ႈ Class တူဝ်လုၵ်ႈသိုပ်ႇပွင်တီႈ Abstract Class၊ မၼ်းတေလႆႈ **`override`** ၵူႈ Function ဢၼ်ပဵၼ် `abstract` ဝႆႉၼၼ်ႉယဝ်ႉ။

```kotlin
class WashingMachine(brand: String) : Appliance(brand) {
    override fun operate() {
        println("တိုၵ်ႉသၵ်ႉၶူဝ်းယူႇ...")
    }
}

class Refrigerator(brand: String) : Appliance(brand) {
    override fun operate() {
        println("တိုၵ်ႉႁဵတ်းႁႂ်ႈၵတ်းယူႇ...")
    }
}

```

---

### 3. ပၵ်းပိူင်လမ်ႇလွင်ႈ

* **No Instances:** ႁဝ်းဢမ်ႇၸၢင်ႈတႅမ်ႈ `val a = Appliance("Sony")` လႆႈ (တေ Error)။
* **Open by Default:** Abstract classes လႄႈ abstract methods ၼႆႉ ပဵၼ် `open` ဝႆႉယူႇယဝ်ႉ (ဢမ်ႇလူဝ်ႇသႂ်ႇ Keyword `open` ထႅင်ႈ)။
* **Mixed Content:** ၼႂ်း Abstract class ၸၢင်ႈမီး Variable, Function ဢၼ်မီး Logic တႄႉတႄႉ လႄႈ ဢၼ်ပဵၼ် Abstract ၶေႃးၵၼ်လႆႈ။

---

### 4. ၵွပ်ႈသင်ၸင်ႇလီ?

* **Common Behavior:** သိမ်း Logic ဢၼ်မိူၼ်ၵၼ်ဝႆႉတီႈလဵဝ် (မိူၼ်ၼင်ႇ `turnOn()`)။
* **Forced Implementation:** ၸႂ်ႉတႃႇ "ပၼ်ပုၼ်ႈၽွၼ်း" ႁႂ်ႈတူဝ်လုၵ်ႈတႅမ်ႈ Logic ဢၼ်ပႅၵ်ႇၵၼ် (မိူၼ်ၼင်ႇ `operate()`)။
* **Template Pattern:** ဝၢင်ႇပိူင်ပိုၼ်ႉထၢၼ်ဝႆႉ ႁႂ်ႈၵူႈတူဝ်ပဵၼ်ၵႂႃႇၼႂ်းသၢႆတၢင်းလဵဝ်ၵၼ်။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Abstract Class:** Class ဢၼ်သၢင်ႈ Object ဢမ်ႇလႆႈ၊ ဝႆႉတႃႇပဵၼ်တူဝ်မႄႈၵူၺ်း။
* **Abstract Method:** Function ဢၼ်မီးၵူၺ်းၸိုဝ်ႈ (Signature) ၵူၺ်းၵႃႈ ဢမ်ႇမီး Body `{ }`။
* **Implementation:** ၵၢၼ်တႅမ်ႈ Logic သႂ်ႇပၼ် Function ဢၼ်ပဵၼ် Abstract ဝႆႉ။
* **Concrete Class:** Class ပၵ်းပၵ်း (မိူၼ် `WashingMachine`) ဢၼ်သၢင်ႈ Object လႆႈတႄႉတႄႉ။

---