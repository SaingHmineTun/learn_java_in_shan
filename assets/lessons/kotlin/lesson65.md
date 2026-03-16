# တွၼ်ႈသွၼ် 65: Immutability by Default

ၼႂ်း Kotlin၊ Collection ၵူႈဢၼ် ထုၵ်ႇၸႅၵ်ႇဢွၵ်ႇပဵၼ်သွင်ပႅၵ်ႇ (Interfaces) ဢၼ်ပႅၵ်ႇၵၼ်ၸႅင်ႈလႅင်း: **Read-only** လႄႈ **Mutable**။

### 1. Read-only Collections (Immutable)

မိူဝ်ႈႁဝ်းသၢင်ႈ Collection လူၺ်ႈ `listOf()`, `setOf()`, ဢမ်ႇၼၼ် `mapOf()`၊ Kotlin တေပၼ်ႁဝ်းၵူၺ်း Interface ဢၼ် **ဢၢၼ်ႇလႆႈ (Read-only)**။

* **လွင်ႈပႅၵ်ႇပၢင်ႇ:** ၸဝ်ႈၵဝ်ႇဢၢၼ်ႇၶေႃႈမုၼ်းလႆႈ၊ ၼပ်ႉလႆႈ၊ ၵူၺ်းၵႃႈ **ထႅမ် (Add)** ဢမ်ႇၼၼ် **ယေႃႈ (Remove)** ၶေႃႈမုၼ်းဢမ်ႇလႆႈ။
* **ၽွၼ်းလီ:** မၼ်းႁႄႉၵင်ႈပၼ်ႁႃ "Side Effects"။ သင်ၸဝ်ႈၵဝ်ႇသူင်ႇ List ၼႆႉပၼ် Function တၢင်ႇဢၼ်၊ ၸဝ်ႈၵဝ်ႇမၼ်ႈၸႂ်လႆႈဝႃႈ Function ၼၼ်ႉ တေဢမ်ႇၵႂႃႇလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းၸဝ်ႈၵဝ်ႇပႅတ်ႈ။

---

### 2. Mutable Collections

သင်ၸဝ်ႈၵဝ်ႇလူဝ်ႇ Collection ဢၼ်လႅၵ်ႈလၢႆႈလႆႈ၊ ၸဝ်ႈၵဝ်ႇတေလႆႈလၢတ်ႈၸႅင်ႈလႅင်း (Explicit) လူၺ်ႈၵၢၼ်ၸႂ်ႉ `mutableListOf()`, `mutableSetOf()`, ဢမ်ႇၼၼ် `mutableMapOf()`။

* **တၢင်းၵတ်ႉ:** ၸႂ်ႉ Function မိူၼ်ၼင်ႇ `.add()`, `.remove()`, `.clear()` လႆႈ။
* **မိူဝ်ႈလႂ်ၸႂ်ႉ:** ၸႂ်ႉမိူဝ်ႈၸဝ်ႈၵဝ်ႇလူဝ်ႇမႄးၶေႃႈမုၼ်းတႃႇသေႇ (မိူၼ်ၼင်ႇ Shopping Cart ဢၼ်လူဝ်ႇထႅမ်ၶူဝ်းၶဝ်ႈၵႂႃႇ)။

```kotlin
// Read-only List
val names = listOf("Sai", "Kyaw")
// names.add("Aye") // ❌ Error: Unresolved reference: add

// Mutable List
val mutableNames = mutableListOf("Sai", "Kyaw")
mutableNames.add("Aye") // ✅ ႁဵတ်းလႆႈ

```

---

### 3. Read-only ဢမ်ႇပွင်ႇဝႃႈ Constant

ၼႆႉပဵၼ်တွၼ်ႈဢၼ်ၵူၼ်းၵႆႉယုင်ႈယၢင်ႇသုတ်း:

* `val` ပွင်ႇဝႃႈ "Variable ၼႆႉ ပိၼ်ႇၵႂႃႇၸူး Object တၢင်ႇဢၼ်ဢမ်ႇလႆႈ"။
* `List` (Read-only) ပွင်ႇဝႃႈ "Object ၼႆႉ မႄးၶေႃႈမုၼ်းၼႂ်းမၼ်းဢမ်ႇလႆႈ"။

> **Pro Tip:** ၼႂ်းၵၢၼ်တႅမ်ႈ App တႄႉတႄႉ၊ ႁဝ်းထုၵ်ႇလီလိူၵ်ႈၸႂ်ႉ **Read-only** ဝႆႉဢွၼ်တၢင်းတႃႇသေႇ။ သင်ဢမ်ႇမီးလွင်ႈတၢင်းဢၼ်လူဝ်ႇမႄးတႄႉတႄႉ ဢမ်ႇထုၵ်ႇလီၸႂ်ႉ Mutable ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Immutability:** ၵၢၼ်ဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈလႆႈ။
* **Read-only:** ဢၢၼ်ႇလႆႈၵူၺ်း (မႄးဢမ်ႇလႆႈ)။
* **Mutable:** လႅၵ်ႈလၢႆႈလႆႈ (ထႅမ်/ယေႃႈ လႆႈ)။
* **Side Effect:** ၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းဢၼ်ၵိူတ်ႇၶိုၼ်ႈလူၺ်ႈဢမ်ႇတင်ႈၸႂ် (Immutable ၸွႆႈဝႄႉလွင်ႈၼႆႉ)။

---