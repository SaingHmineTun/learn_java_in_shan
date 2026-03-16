# တွၼ်ႈသွၼ် 69: Grouping and Partitioning Data

ၼႂ်း Kotlin, ႁဝ်းမီး Function ဢၼ်လႅတ်းတႄႉတႄႉ တႃႇၸွႆႈႁဝ်းၸတ်းၶေႃႈမုၼ်းႁႂ်ႈမီးပိူင်ယဝ်ႉ။

### 1. `groupBy` (ၵၢၼ်ၸႅၵ်ႇပဵၼ်ၵုမ်ႇ)

`groupBy` တေဢဝ်ၶေႃႈမုၼ်းမႃးၸတ်းၸုမ်း ၸွမ်းၼင်ႇ "Key" ဢၼ်ႁဝ်းမၵ်းမၼ်ႈပၼ်။ ၽົນဢွၵ်ႇမၼ်းတေပဵၼ် **Map** ဢၼ်မီး Key ပဵၼ်ၸုမ်း လႄႈ Value ပဵၼ် List ၶွင်ၶေႃႈမုၼ်းၼႂ်းၸုမ်းၼၼ်ႉ။

* **တူဝ်ယၢင်ႇ:** ၸႅၵ်ႇၸိုဝ်ႈၵူၼ်း ၸွမ်းၼင်ႇ "တူဝ်မႄႈလိၵ်ႈၵမ်းၼႃႈ"။

```kotlin
val names = listOf("Sai", "Kyaw", "Seng", "Kham", "Aye")

val grouped = names.groupBy { it.first() }
// ၽົນဢွၵ်ႇ: {S=[Sai, Seng], K=[Kyaw, Kham], A=[Aye]}

```

---

### 2. `partition` (ၵၢၼ်ယႅၵ်ႈပဵၼ်သွင်ၽၢၵ်ႇ)

`partition` ပဵၼ်ၵၢၼ်ယႅၵ်ႈၶေႃႈမုၼ်းဢွၵ်ႇပဵၼ် **2 ၸုမ်း** ၵမ်းလဵဝ်: ၸုမ်းဢၼ် "ၸႂ်ႈ" (True) လႄႈ ၸုမ်းဢၼ် "ဢမ်ႇၸႂ်ႈ" (False) ၸွမ်းၼင်ႇ Condition ႁဝ်း။ ၽົນဢွၵ်ႇမၼ်းတေပဵၼ် **Pair of Lists**။

* **တူဝ်ယၢင်ႇ:** ယႅၵ်ႈတူဝ်ၼပ်ႉဢွၵ်ႇပဵၼ် "တူဝ်ၵူပ်ႉ" လႄႈ "တူဝ်ၵိၵ်ႈ"။

```kotlin
val numbers = listOf(1, 2, 3, 4, 5, 6)

val (even, odd) = numbers.partition { it % 2 == 0 }
println("Even: $even") // [2, 4, 6]
println("Odd: $odd")   // [1, 3, 5]

```

---

### 3. ပႅၵ်ႇပၢင်ႇၵၼ်ၸိူဝ်ႉႁိုဝ်?

| Feature | `groupBy` | `partition` |
| --- | --- | --- |
| **Result Type** | `Map<K, List<T>>` | `Pair<List<T>, List<T>>` |
| **Number of Groups** | လၢႆၸုမ်းၵေႃႈလႆႈ (ၸွမ်းၼင်ႇ Key) | ၵူၺ်းမီး 2 ၸုမ်း (True/False) |
| **Use Case** | ၸႅၵ်ႇၸုမ်းၶူဝ်း (Category), ၸုမ်းဝၼ်းထီႉ | ယႅၵ်ႈၵူၼ်းဢၼ် "สอบผ่าน" လႄႈ "สอบตก" |

---

### 4. `associateBy` (ၵၢၼ်ပိၼ်ႇပဵၼ် Map)

သင်ႁဝ်းၶႂ်ႈလႆႈ Map ဢၼ် Key ပဵၼ်တူဝ်ၸီႉ လႄႈ Value ပဵၼ် "Object တူဝ်ၼၼ်ႉၵမ်းလဵဝ်" (ဢမ်ႇၸႂ်ႈ List), ႁဝ်းၸႂ်ႉ `associateBy` ယဝ်ႉ။

```kotlin
data class User(val id: String, val name: String)
val users = listOf(User("1", "Sai"), User("2", "Kyaw"))

val userMap = users.associateBy { it.id }
// ၽົນဢွၵ်ႇ: {"1"=User(id=1, name=Sai), "2"=User(id=2, name=Kyaw)}

```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Grouping:** ၵၢၼ်ၸတ်းၶေႃႈမုၼ်းၶဝ်ႈၸုမ်း ၸွမ်းၼင်ႇလွင်ႈတၢင်းဢၼ်မိူၼ်ၵၼ်။
* **Partitioning:** ၵၢၼ်ယႅၵ်ႈၶေႃႈမုၼ်းဢွၵ်ႇပဵၼ်သွင်ၽၢၵ်ႇ (မိူၼ်ၵၢၼ်ၽႃႇၼႃႈၵၢင်)။
* **Pair:** Object ဢၼ်သိမ်းၶေႃႈမုၼ်းဝႆႉ 2 တူဝ် (first, second)။
* **Destructuring Declaration:** လၢႆးတႅမ်ႈ `val (a, b) = pair` တႃႇယႅၵ်ႈဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇမႃးၵမ်းလဵဝ်။

---