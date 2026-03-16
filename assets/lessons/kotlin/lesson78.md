# တွၼ်ႈသွၼ် 78: Variance (out လႄႈ in)

ၼႂ်း Generics, **Variance** ပဵၼ်လွင်ႈတူၺ်း "လွင်ႈၵဵဝ်ႇၶွင်ႉ" ၶွင် Type ဢၼ်မီး Parameter မိူၼ်ၵၼ်။

### 1. Invariance (ပိူင်ပိုၼ်ႉထၢၼ်)

ၸွမ်းပိူင်ပိုၼ်ႉထၢၼ်၊ `Box<Dog>` **ဢမ်ႇၸႂ်ႈ** `Box<Animal>`။ မၼ်းပဵၼ်ၵူၼ်းละမဵဝ်းၵၼ် ၵွပ်ႈ Compiler ၶႂ်ႈႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈႁဝ်းသႂ်ႇ `Cat` ၶဝ်ႈၵႂႃႇၼႂ်း Box ဢၼ်မၵ်းမၼ်ႈဝႆႉတႃႇ Dog ၼၼ်ႉယဝ်ႉ။

### 2. Covariance (`out`) - ၵၢၼ် "ဢဝ်ဢွၵ်ႇ"

မိူဝ်ႈႁဝ်းသႂ်ႇ `out` ၽၢႆႇၼႃႈ `T`၊ မၼ်းပွင်ႇဝႃႈ Class ၼႆႉ တေပဵၼ် **Producer** (တူဝ်ပၼ်ၶေႃႈမုၼ်းဢွၵ်ႇမႃး) ၵူၺ်း။

* **လွင်ႈပႅၵ်ႇပၢင်ႇ:** `Producer<Dog>` တေပဵၼ်လုၵ်ႈလၢၼ် `Producer<Animal>` လႆႈ။
* **သၢႆငၢႆ:** ၸႂ်ႉ `T` ပဵၼ် Return Type လႆး၊ ၵူၺ်းၵႃႈ ႁပ်ႉ `T` ၶဝ်ႈမႃးၼႂ်း Function (Argument) ဢမ်ႇလႆႈ။

```kotlin
interface Source<out T> {
    fun nextItem(): T // ✅ out ၸႂ်ႉပဵၼ် Output လႆႈ
}

```

---

### 3. Contravariance (`in`) - ၵၢၼ် "သႂ်ႇၶဝ်ႈ"

မိူဝ်ႈႁဝ်းသႂ်ႇ `in` ၽၢႆႇၼႃႈ `T`၊ မၼ်းပွင်ႇဝႃႈ Class ၼႆႉ တေပဵၼ် **Consumer** (တူဝ်ႁပ်ႉ/ၸတ်းၵၢၼ်ၶေႃႈမုၼ်း) ၵူၺ်း။

* **လွင်ႈပႅၵ်ႇပၢင်ႇ:** မၼ်းတေ "ပိၼ်ႇၽၢၵ်ႇ" (Reverse)။ `Consumer<Animal>` တေပဵၼ်လုၵ်ႈလၢၼ် `Consumer<Dog>` လႆႈ။
* **သၢႆငၢႆ:** ႁပ်ႉ `T` ၶဝ်ႈမႃးပဵၼ် Argument လႆႈ၊ ၵူၺ်းၵႃႈ Return `T` ဢွၵ်ႇၵႂႃႇဢမ်ႇလႆႈ။

```kotlin
interface Comparison<in T> {
    fun compare(item: T) // ✅ in ၸႂ်ႉပဵၼ် Input လႆႈ
}

```

---

### 4. Summary Table (လွၵ်းလၢႆးမၢႆတွင်း)

| Keyword | Meaning | Role | Relationship |
| --- | --- | --- | --- |
| **`out`** | Covariant | Producer | `Class<Dog>` <: `Class<Animal>` |
| **`in`** | Contravariant | Consumer | `Class<Animal>` <: `Class<Dog>` |
| **None** | Invariant | Both | No relationship |

> **Pro Tip:** မၢႆတွင်းဝႃႈ **"PECS"** (Producer Extends, Consumer Super) ဢမ်ႇၼၼ် ၼႂ်း Kotlin ၵေႃႈပဵၼ် **"Consumer In, Producer Out"** ယဝ်ႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Covariance (`out`):** ၵၢၼ်ဢၼ် Type ၵႂႃႇၸွမ်းသၢႆၸိူဝ်ႉၶိူဝ်းလုၵ်ႈလၢၼ်။
* **Contravariance (`in`):** ၵၢၼ်ဢၼ် Type ပိၼ်ႇၽၢၵ်ႇသၢႆၸိူဝ်ႉၶိူဝ်း။
* **Invariant:** ၵၢၼ်ဢၼ် Type ဢမ်ႇမီးလွင်ႈၵဵဝ်ႇၶွင်ႉၵၼ် (တင်းသႅင်မၼ်းပဵၼ် Sub-type ၵၼ်ယူႇၵေႃႈယဝ်ႉ)။
* **Declaration-site variance:** ၵၢၼ်မၵ်းမၼ်ႈ `in/out` တီႈတူဝ် Class ၵမ်းလဵဝ် (Kotlin ၶႅၼ်ႇလိူဝ် Java တွၼ်ႈၼႆႉ)။

---