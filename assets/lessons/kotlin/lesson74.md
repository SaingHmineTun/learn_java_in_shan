# တွၼ်ႈသွၼ် 74: Sealed Classes (Restricted Class Hierarchies)

**Sealed Class** ပဵၼ် Class ဢၼ်မၵ်းမၼ်ႈဝႃႈ "လုၵ်ႈလၢၼ် (Sub-classes) ၶွင်ၵဝ် တေမီးလႆႈၵူၺ်း ၸွမ်းၼင်ႇဢၼ်ၵဝ်မၵ်းမၼ်ႈဝႆႉၼႆႉၵူၺ်း"။ မၼ်းပဵၼ်ၵၢၼ် "ပိတ်း" (Seal) ဝူင်းၵၢၼ်သိုပ်ႇၸိူဝ်ႉၶိူဝ်းဝႆႉ ဢမ်ႇပၼ် Class တၢင်ႇဢၼ်မႃးသိုပ်ႇပူၺ်းလႆႈၸွမ်းၸႂ်ယဝ်ႉ။

### 1. ပႅၵ်ႇပၢင်ႇၵၼ်တင်း Enum ၸိူဝ်ႉႁိုဝ်?

* **Enum:** ၵူႈတူဝ် (Constant) ပဵၼ် **Instance** လဵဝ်ၵၼ်တႃႇသေႇ။ ၸဝ်ႈၵဝ်ႇမႄးၶေႃႈမုၼ်းၼႂ်းတူဝ်မၼ်း ဢၼ်ပႅၵ်ႇပၢင်ႇၵၼ်လၢႆလၢႆဢၼ်ဢမ်ႇလႆႈ။
* **Sealed Class:** ၵူႈ Sub-class ၸၢင်ႈပဵၼ် **Class တႄႉတႄႉ**။ မၼ်းၸၢင်ႈမီးလုၵ်ႈလၢၼ်လၢႆတူဝ် (Multiple Instances) သေ ၵူႈတူဝ်မီးၶေႃႈမုၼ်း (State) ဢၼ်ပႅၵ်ႇၵၼ်လႆႈ။

---

### 2. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းၸႂ်ႉ Keyword `sealed` ဝႆႉၽၢႆႇၼႃႈ `class`။ Sub-classes ၶွင်မၼ်း ၸၢင်ႈပဵၼ် `data class`, `class` ပၵ်းပၵ်း, ဢမ်ႇၼၼ် `object` ၵေႃႈလႆႈ။

```kotlin
sealed class NetworkResponse {
    data class Success(val data: String) : NetworkResponse()
    data class Error(val message: String, val code: Int) : NetworkResponse()
    object Loading : NetworkResponse()
}

```

---

### 3. ၵွပ်ႈသင်ၸင်ႇလီ? (The Power of 'when')

ၽွၼ်းလီဢၼ်ယႂ်ႇသုတ်းၶွင် Sealed Class ၵေႃႈပဵၼ် ၵၢၼ်ၸႂ်ႉၸွမ်း `when` Expression ယဝ်ႉ။ Compiler တေႁူႉဝႃႈ NetworkResponse မီးၵူၺ်း 3 မဵဝ်း။ သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈပႃးတင်း 3 မဵဝ်းယဝ်ႉ၊ ၸဝ်ႈၵဝ်ႇ **ဢမ်ႇလူဝ်ႇ** တႅမ်ႈ `else` ပႃးၵေႃႈလႆႈ။

```kotlin
fun handleResponse(response: NetworkResponse) {
    when (response) {
        is NetworkResponse.Success -> println("လႆႈၶေႃႈမုၼ်း: ${response.data}")
        is NetworkResponse.Error -> println("Error ${response.code}: ${response.message}")
        NetworkResponse.Loading -> println("တိုၵ်ႉလူတ်ႇယူႇ...")
    }
}

```

---

### 4. မိူဝ်ႈလႂ်ထုၵ်ႇလီၸႂ်ႉ?

* **UI States:** Loading, Success, Empty, Error.
* **Navigation:** Home, Profile(id: String), Settings.
* **API Results:** ၸႅၵ်ႇဢွၵ်ႇပဵၼ် Success(JSON) လႄႈ Failure(Exception).

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Sealed Class:** Class ဢၼ်ထုၵ်ႇပိတ်းဝႆႉ ဢမ်ႇပၼ်သိုပ်ႇပူၺ်းၼွၵ်ႈ File/Package ဢၼ်မၵ်းမၼ်ႈ။
* **Hierarchy:** ၸၼ်ႉသိုပ်ႇၸိူဝ်ႉၶိူဝ်း (Parent-Child relation).
* **Exhaustive:** ၵၢၼ်ထတ်းတူၺ်းၵူႈသဵၼ်ႈတၢင်း ဢၼ်ပဵၼ်ၵႂႃႇလႆႈတင်းหมด (မိူၼ်ၼင်ႇၼႂ်း `when`).
* **Object vs Data Class:** ၸႂ်ႉ `object` မိူဝ်ႈဢမ်ႇမီးၶေႃႈမုၼ်းသင်၊ ၸႂ်ႉ `data class` မိူဝ်ႈလူဝ်ႇသိမ်း Value ဢၼ်ပႅၵ်ႇၵၼ်.

---