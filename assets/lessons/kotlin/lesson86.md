# တွၼ်ႈသွၼ် 86: Delegated Properties

### 1. `by lazy` (ၵၢၼ်ပႂ်ႉလူတ်ႇမိူဝ်ႈလူဝ်ႇၸႂ်ႉ)

ၼႆႉပဵၼ် Delegation ဢၼ်ၵႆႉၸႂ်ႉသုတ်း။ မၼ်းတေ **ပႆႇသၢင်ႈ** Object ၼၼ်ႉ တေႃႇပေႃးထိုင်ပွၵ်ႈဢွၼ်တၢင်းသုတ်း ဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉမၼ်းတႄႉတႄႉ။

* **ၵွပ်ႈသင်ၸင်ႇၸႂ်ႉ?**: တႃႇလူတ်းယေႃႈၵၢၼ်ၸႂ်ႉ Memory (သင် Object ၼၼ်ႉၼၵ်း သေမၢင်ပွၵ်ႈၵေႃႈဢမ်ႇလႆႈၸႂ်ႉ)။
* **လွင်ႈႁဵတ်းၵၢၼ်**: မၼ်းတေ Compute ၵူၺ်းပွၵ်ႈလဵဝ်၊ ယဝ်ႉၵေႃႈသိမ်းၽၼ်မၼ်းဝႆႉ (Cached) တႃႇၸႂ်ႉၵမ်းတပ်ႉတပ်ႉၵႂႃႇ။

```kotlin
val heavyData: String by lazy {
    println("Computing heavy data...") // တေဢွၵ်ႇမႃးၵူၺ်းပွၵ်ႈဢွၼ်တၢင်းသုတ်း
    "This is a massive string"
}

fun main() {
    println("App started")
    println(heavyData) // ၵမ်းၼႆႉၸင်ႇတေ Compute
    println(heavyData) // ၵမ်းၼႆႉတေဢဝ်ဢၼ်သိမ်းဝႆႉမႃးၸႂ်ႉၵမ်းလဵဝ်
}

```

---

### 2. `by Delegates.observable()` (ၵၢၼ်ပႂ်ႉထတ်းတူၺ်းလွင်ႈလႅၵ်ႈလၢႆႈ)

Delegation ၼႆႉ ၸွႆႈႁႂ်ႈႁဝ်းႁူႉတၢၼ်း မိူဝ်ႈၵႃႈ (Value) ၶွင် Property ၼၼ်ႉလႅၵ်ႈလၢႆႈၵႂႃႇ။ မၼ်းတေႁွင်ႉၸႂ်ႉ Lambda ၵူႈပွၵ်ႈဢၼ်မီးၵၢၼ် Assign ၵႃႈမႂ်ႇၶဝ်ႈမႃး။

* **လၢႆးၸႂ်ႉ**: ၸွႆႈၼႂ်းၵၢၼ် Update UI ဢမ်ႇၼၼ် Log ၶေႃႈမုၼ်းမိူဝ်ႈမၼ်းလႅၵ်ႈၵႂႃႇ။

```kotlin
import kotlin.properties.Delegates

var name: String by Delegates.observable("No Name") { property, old, new ->
    println("${property.name} changed from $old to $new")
}

fun main() {
    name = "Sai"   // Output: name changed from No Name to Sai
    name = "Kham"  // Output: name changed from Sai to Kham
}

```

---

### 3. `by Delegates.vetoable()` (ၵၢၼ်ႁႄႉၵင်ႈၵၢၼ်လႅၵ်ႈလၢႆႈ)

မိူၼ်တင်း observable ၵူၺ်းၵႃႈ မၼ်းပၼ်ႁဝ်း "ထတ်းတူၺ်း" ဢွၼ်တၢင်း။ သင် Condition ဢမ်ႇမႅၼ်ႈ၊ မၼ်းတေဢမ်ႇပၼ်လႅၵ်ႈလၢႆႈ။

```kotlin
var score: Int by Delegates.vetoable(0) { _, _, new ->
    new >= 0 // သင် score မႂ်ႇ ဢေႇလိူဝ် 0, မၼ်းတေဢမ်ႇလႅၵ်ႈပၼ်
}

```

---

### 4. ၵွပ်ႈသင်ၸင်ႇထုၵ်ႇလီၸႂ်ႉ Delegation?

1. **Separation of Concerns**: ၸႅၵ်ႇဢဝ် Logic ၵၢၼ်ၸတ်းၵၢၼ် Property ဢွၵ်ႇၵႂႃႇဝႆႉထႅင်ႈတီႈၼိုင်ႈ။
2. **Reusability**: ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Delegate ၶွင်တူဝ်ၵဝ်ႇယဝ်ႉ ဢဝ်ၵႂႃႇၸႂ်ႉၸွမ်း Properties လၢႆလၢႆတူဝ်လႆႈ။
3. **Clean Code**: လူတ်းယေႃႈၵၢၼ်တႅမ်ႈ Getter/Setter ဢၼ်ယုင်ႈယၢင်ႇ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Delegate:** တူဝ်တႅၼ်း ဢမ်ႇၼၼ် တူဝ်ႁပ်ႉပုၼ်ႈၽွၼ်း။
* **Lazy Initialization:** ၵၢၼ်သၢင်ႈ Object မိူဝ်ႈလူဝ်ႇၸႂ်ႉတႄႉတႄႉၵူၺ်း။
* **Cached:** ၵၢၼ်သိမ်းၽၼ်ၶေႃႈမုၼ်းဝႆႉ တႃႇၸႂ်ႉၶိုၼ်းဝႆးဝႆး။
* **Observable:** တူဝ်ဢၼ်ၸၢင်ႈထုၵ်ႇပႂ်ႉတူၺ်းလွင်ႈလႅၵ်ႈလၢႆႈလႆႈ။
* **Veto:** ဢၢမ်းၼၢတ််ႈၼႂ်းၵၢၼ် ၵတ်းယင်ႉ ဢမ်ႇၼၼ် တုၵ်ႉယွၼ်း (Reject) ၵၢၼ်လႅၵ်ႈလၢႆႈ။

---