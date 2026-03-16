# တွၼ်ႈသွၼ် 72: Java Interoperability (Handling Java Collections)

Kotlin ထုၵ်ႇသၢင်ႈမႃးႁႂ်ႈၸႂ်ႉႁူမ်ႈၵၼ်တင်း Java လႆႈ 100%။ ၵူၺ်းၵႃႈ လွင်ႈပႅၵ်ႇပၢင်ႇဢၼ်လမ်ႇလွင်ႈသုတ်းၵေႃႈပဵၼ် **"Immutability"** (ၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း) ၼၼ်ႉယဝ်ႉ။

### 1. Java Collections ပဵၼ် Mutable တႃႇသေႇ

ၼႂ်း Java, `List`, `Set`, `Map` တင်းမူတ်း ပဵၼ် Mutable (မႄးလႆႈ)။ ၵူၺ်းၵႃႈၼႂ်း Kotlin, ႁဝ်းၸႅၵ်ႇဢွၵ်ႇပဵၼ် Read-only လႄႈ Mutable။

* မိူဝ်ႈ Java သူင်ႇ `List` မႃးပၼ် Kotlin, Kotlin တေႁၼ်မၼ်းပဵၼ် **"Platform Type"** (မၼ်ႈၸႂ်ဢမ်ႇလႆႈဝႃႈပဵၼ် Null ႁႃႉ ဢမ်ႇၼၼ် မႄးလႆႈႁႃႉ)။

### 2. Mapped Types

Kotlin ဢမ်ႇလႆႈသၢင်ႈ Collection ၶွင်တူဝ်ၵဝ်ႇမႂ်ႇ၊ မၼ်းၸႂ်ႉ Java Collections ၼၼ်ႉယဝ်ႉ ၵူၺ်းၵႃႈမၼ်း "ႁေႃႇ" (Wrap) ဝႆႉလူၺ်ႈ Interface ဢၼ်လႅတ်းလိူဝ်ၵဝ်ႇ။

| Java Type | Kotlin Read-only | Kotlin Mutable |
| --- | --- | --- |
| `ArrayList`, `List` | `List` | `MutableList` |
| `HashSet`, `Set` | `Set` | `MutableSet` |
| `HashMap`, `Map` | `Map` | `MutableMap` |

### 3. ၶေႃႈတွၼ်းသတိ: Runtime Exception

သင်ၸဝ်ႈၵဝ်ႇဢဝ် Java List (ဢၼ်မႄးလႆႈ) မႃးသိမ်းဝႆႉၼႂ်း Kotlin `List` (Read-only):

* ၼႂ်းၶူတ်ႉ Kotlin, ၸဝ်ႈၵဝ်ႇတေႁွင်ႉ `.add()` ဢမ်ႇလႆႈ (Compiler တေႁႄႉဝႆႉ)။
* ၵူၺ်းၵႃႈ သင်ၸဝ်ႈၵဝ်ႇသူင်ႇမၼ်းလႅၵ်ႈလၢႆႈၵႂႃႇမႃးၼႂ်း Java, ၶေႃႈမုၼ်းၼၼ်ႉတိုၵ်ႉၸၢင်ႈထုၵ်ႇ Java မႄးလႆႈယူႇ။ ၼႆႉႁွင်ႉဝႃႈ **Mutating behind the scenes** ယဝ်ႉ။

```kotlin
// Java Code (Library)
public class JavaUtils {
    public static List<String> getNames() {
        return new ArrayList<>(Arrays.asList("Sai", "Kyaw"));
    }
}

// Kotlin Code
val names: List<String> = JavaUtils.getNames() 
// တင်းသႅင်ဝႃႈမၼ်းပဵၼ် 'List' (Read-only) ၼႂ်း Kotlin 
// ၵူၺ်းၵႃႈ ၽၢႆႇလင်မၼ်းပဵၼ် Java ArrayList ဢၼ်မႄးလႆႈယူႇ

```

### 4. ၵၢၼ်ပိၼ်ႇပႅင်ႇ (Conversion)

တႃႇႁႂ်ႈမၼ်ႈၸႂ် လႄႈ ပဵၼ်လၢႆးတႅမ်ႈ Kotlin တႄႉတႄႉ၊ ႁဝ်းထုၵ်ႇလီပိၼ်ႇမၼ်းၸွမ်းၼင်ႇလူဝ်ႇၸႂ်ႉ:

* **`.toList()`**: သၢင်ႈ List မႂ်ႇ ဢၼ်ပဵၼ် Read-only (Safe)။
* **`.toMutableList()`**: သၢင်ႈ List မႂ်ႇ ဢၼ်ပဵၼ် Mutable။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Interoperability (Interop):** ၵၢၼ်ဢၼ် Programming Language သွင်မဵဝ်း ႁဵတ်းၵၢၼ်ႁူမ်ႈၵၼ်လႆႈ။
* **Mapped Types:** ၵၢၼ်ဢဝ် Type တူဝ်ၼိုင်ႈ မႃးတႅၼ်းတၢင်လူၺ်ႈထႅင်ႈ Type ၼိုင်ႈ ၼႂ်းထႅင်ႈ Language ၼိုင်ႈ။
* **Platform Type:** Type ဢၼ်မႃးတီႈ Java ဢၼ် Kotlin ဢမ်ႇမၼ်ႈၸႂ်လွင်ႈ Nullability ဢမ်ႇၼၼ် Mutability။
* **Defensive Copy:** ၵၢၼ်ၵေႃပီႉၶေႃႈမုၼ်းဝႆႉ ႁႂ်ႈမၼ်ႈၸႂ်ဝႃႈမၼ်းတေဢမ်ႇထုၵ်ႇလႅၵ်ႈလၢႆႈပႅတ်ႈ (မိူၼ်ၼင်ႇ `.toList()`)။

---