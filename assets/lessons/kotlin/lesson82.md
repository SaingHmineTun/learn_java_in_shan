# တွၼ်ႈသွၼ် 82: Scope Functions (this vs. it)

**Scope Functions** ပဵၼ် Functions ဢၼ် Kotlin မီးဝႆႉပၼ် တႃႇႁဵတ်းႁႂ်ႈႁဝ်း "ၶဝ်ႈၵႂႃႇႁဵတ်းၵၢၼ်ၼႂ်းတူဝ် Object" လႆႈငၢႆႈငၢႆႈ။ မၼ်းမီး 5 တူဝ်: `let`, `run`, `with`, `apply`, လႄႈ `also`။

ပၼ်ႁႃဢၼ်ၵူၼ်းႁဵၼ်းမႂ်ႇၵႆႉငၢၼ်းသုတ်းၵေႃႈပဵၼ်: **"မိူဝ်ႈလႂ်ၸႂ်ႉ `this`၊ မိူဝ်ႈလႂ်ၸႂ်ႉ `it`?"**

### 1. Context Object: `this` (Receiver)

မိူဝ်ႈႁဝ်းၸႂ်ႉ `run`, `with`, ဢမ်ႇၼၼ် `apply`၊ Object ၼၼ်ႉတေပဵၼ် **"Receiver"**။

* ၸဝ်ႈၵဝ်ႇၶဝ်ႈၸႂ်ႉ Properties ၼႂ်းတူဝ်မၼ်းလႆႈ "ၵမ်းလဵဝ်" လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈၸိုဝ်ႈ Object ၼၼ်ႉသမ်ႉၵၼ်။
* မိူၼ်တင်းၸဝ်ႈၵဝ်ႇ "ယူႇၼႂ်းႁိူၼ်း" ယဝ်ႉ ႁွင်ႉဢဝ်ၶူဝ်းၼႂ်းႁိူၼ်းလႆႈၵမ်းလဵဝ်။

```kotlin
val person = Person("Sai", 25)
person.apply {
    name = "Sai Kham" // ဢမ်ႇလူဝ်ႇတႅမ်ႈ person.name
    age = 26          // ၸႂ်ႉ 'this' ပဵၼ်သၢႆၸႂ် (Implicitly)
}

```

### 2. Context Object: `it` (Argument)

မိူဝ်ႈႁဝ်းၸႂ်ႉ `let` ဢမ်ႇၼၼ် `also`၊ Object ၼၼ်ႉတေပဵၼ် **"Lambda Argument"**။

* ၸဝ်ႈၵဝ်ႇတေလႆႈၸႂ်ႉ `it` တႃႇၸီႉၸူး Object ၼၼ်ႉ (ဢမ်ႇၼၼ် တင်ႈၸိုဝ်ႈမႂ်ႇပၼ်မၼ်းလႆႈ)။
* မိူၼ်တင်းၸဝ်ႈၵဝ်ႇ "ယိုၼ်ႈၶူဝ်းပၼ်ပိူၼ်ႈ" သေ လၢတ်ႈဝႃႈ "ဢဝ် **မၼ်း (it)** ၵႂႃႇႁဵတ်းၼႆၼႃ"။

```kotlin
val name: String? = "Kotlin"
name?.let {
    println(it.length) // ၸီႉၸူး Object လူၺ်ႈၸႂ်ႉ 'it'
}

```

---

### 3. လွၵ်းလၢႆးလိူၵ်ႈၸႂ်ႉ (Decision Table)

| Function | Context Object | Return Value | Use Case ဢၼ်ၵႆႉၸႂ်ႉ |
| --- | --- | --- | --- |
| **`let`** | `it` | Lambda result | Null-check လႄႈ ပိၼ်ႇ Type |
| **`run`** | `this` | Lambda result | ၸတ်းၵၢၼ် Object လႄႈ ဢဝ်ၽົນဢွၵ်ႇ |
| **`apply`** | `this` | Object ၼၼ်ႉၵမ်းလဵဝ် | တင်ႈၵႃႈ (Initialize/Configure) Object |
| **`also`** | `it` | Object ၼၼ်ႉၵမ်းလဵဝ် | ႁဵတ်းၵၢၼ်ဢိၼ်းဢွႆႇ (မိူၼ်ၼင်ႇ Log ၶေႃႈမုၼ်း) |
| **`with`** | `this` | Lambda result | ႁွင်ႉၸႂ်ႉ Functions ၼႂ်း Object သမ်ႉၵၼ် |

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Scope:** ၶွပ်ႇၶဵတ်းဢၼ် Variable ဢမ်ႇၼၼ် Object ၼၼ်ႉမီးသၢႆၸႂ်ယူႇ။
* **Context Object:** Object ဢၼ်ႁဝ်းတိုၵ်ႉၸတ်းၵၢၼ်ယူႇၼႂ်း Scope Function။
* **Receiver (`this`):** ၵၢၼ်မၵ်းမၼ်ႈႁႂ်ႈ Object ၼၼ်ႉ ပဵၼ် "ၸဝ်ႈၶွင်" Scope ၼၼ်ႉ။
* **Argument (`it`):** ၵၢၼ်သူင်ႇ Object ၶဝ်ႈၵႂႃႇပဵၼ် Parameter ၼႂ်း Lambda။

---

**တွၼ်ႈသွၼ် 82 ယဝ်ႉယဝ်ႉၶႃႈ! ၵမ်းၼႆႉ ႁဝ်းတေၵႂႃႇ "เจาะลึก" တူဝ်ဢၼ်ၸွႆႈႁႄႉၵင်ႈ Null လႄႈ ၵၢၼ်ယူင်ႉသၢင်ႈ Object ၼႂ်းတွၼ်ႈသွၼ် 83-84 (Deep Dive Scope Functions) တေႃႈႁႃႉ?**