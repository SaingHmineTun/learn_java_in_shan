# တွၼ်ႈသွၼ် 40: Properties (Custom Getters and Setters)

မိူဝ်ႈႁဝ်းတႅမ်ႈ `var name: String` ၼၼ်ႉ Kotlin တေၵေႃႇသၢင်ႈ Getter (လၢႆးဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇ) လႄႈ Setter (လၢႆးသႂ်ႇၶေႃႈမုၼ်းၶဝ်ႈ) ပၼ်ႁဝ်းႁင်းၵူၺ်း။ ၵူၺ်းၵႃႈ မၢင်ပွၵ်ႈႁဝ်းၶႂ်ႈ "ၵုမ်းထိင်း" ၵၢၼ်ဢဝ်ၶဝ်ႈ/ဢွၵ်ႇ ၼၼ်ႉယဝ်ႉ။

### 1. Custom Getter

ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ "မႄးႁၢင်ႈ" ၶေႃႈမုၼ်း ဢွၼ်တၢင်းတေသူင်ႇဢွၵ်ႇၵႂႃႇ ဢမ်ႇၼၼ် ၶႂ်ႈလႆႈ Property ဢၼ်ၼပ်ႉသၢင်ႈဢွၵ်ႇမႃးတီႈတူဝ်တၢင်ႇဢၼ် (Computed Property)။

```kotlin
class Rectangle(val width: Int, val height: Int) {
    // Getter တေႁဵတ်းၵၢၼ်ၵူႈပွၵ်ႈ မိူဝ်ႈမီးၵူၼ်းႁွင်ႉၸႂ်ႉ area
    val area: Int
        get() = width * height
}

```

---

### 2. Custom Setter

ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ "ထတ်းတူၺ်း" (Validate) ၶေႃႈမုၼ်း ဢွၼ်တၢင်းတေသိမ်းမၼ်းဝႆႉ။ ၼႂ်း Setter ႁဝ်းတေၸႂ်ႉ Keyword **`field`** တႃႇမၢႆတွင်းထိုင် တူဝ်သိမ်းၶေႃႈမုၼ်းတႄႉတႄႉ (Backing Field)။

```kotlin
class User {
    var age: Int = 0
        set(value) {
            if (value >= 0) {
                field = value // field မၢႆတွင်းထိုင် age တႄႉတႄႉ
            } else {
                println("Error: ဢႃႇယုတေလႆႈဢမ်ႇယေႃႈလိူဝ် 0")
            }
        }
}

```

---

### 3. Backing Field (`field`) ပဵၼ်သင်?

ၼႆႉလမ်ႇလွင်ႈတႄႉတႄႉ! ၼႂ်း Setter ႁဝ်း **ဢမ်ႇၸၢင်ႈ** တႅမ်ႈဝႃႈ `age = value` လႆႈ ၵွပ်ႈမၼ်းတေၵႂႃႇႁွင်ႉ Setter ထႅင်ႈပွၵ်ႈ သေႁဵတ်းႁႂ်ႈပဵၼ် Infinite Loop (တူင်ႇဢမ်ႇသုတ်း)။ ၵွပ်ႈၼၼ် ႁဝ်းလူဝ်ႇၸႂ်ႉ Keyword **`field`** တႅၼ်းတၢင်းယဝ်ႉ။

---

### 4. ၵွပ်ႈသင်ၸင်ႇလီ?

* **Encapsulation:** ႁဝ်းၸၢင်ႈၵုမ်းထိင်းလႆႈဝႃႈ ၶေႃႈမုၼ်းဢၼ်တေၶဝ်ႈမႃးၼၼ်ႉ တေလႆႈပဵၼ်ၼင်ႇႁိုဝ်။
* **Computed Data:** ဢမ်ႇလူဝ်ႇသိမ်းၶေႃႈမုၼ်းသုမ်း Memory (မိူၼ်ၼင်ႇ `area`)၊ ၼပ်ႉဢဝ်မိူဝ်ႈလူဝ်ႇၵူၺ်း။
* **Access Control:** ႁဝ်းၸၢင်ႈႁဵတ်းႁႂ်ႈ Setter ပဵၼ် `private` ၵေႃႈလႆႈ (ပွင်ႇဝႃႈ ၵူၼ်းၼွၵ်ႈဢၢၼ်ႇလႆႈၵူၺ်း မႄးဢမ်ႇလႆႈ)။

```kotlin
var id: Int = 0
    private set // ၵူၼ်းၼွၵ်ႈမႄးဢမ်ႇလႆႈ

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Property:** Variable ဢၼ်မီး Getter/Setter ယူႇၽၢႆႇလင်။
* **Getter:** Function ဢၼ်ႁဵတ်းၵၢၼ်မိူဝ်ႈဢဝ် Value ဢွၵ်ႇ။
* **Setter:** Function ဢၼ်ႁဵတ်းၵၢၼ်မိူဝ်ႈသႂ်ႇ Value ၶဝ်ႈ။
* **Backing Field (`field`):** တူဝ်သိမ်းၶေႃႈမုၼ်းတႄႉတႄႉ ၼႂ်း Memory ဢၼ် Kotlin ၸတ်းၵၢၼ်ပၼ်။

---