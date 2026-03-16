# တွၼ်ႈသွၼ် 43: Data Classes (Automatic Boilerplate)

**Data Class** ဢွၵ်ႇပႅၼ်းဝႆႉတႃႇသိမ်း "ၶေႃႈမုၼ်း" (Data) တႄႉတႄႉ။ မိူဝ်ႈႁဝ်းသႂ်ႇ Keyword **`data`** ဝႆႉၽၢႆႇၼႃႈ Class၊ Kotlin တေ "သႅမ်ႉ" ၶူတ်ႉပိုၼ်ႉထၢၼ်ပၼ်ႁဝ်းႁင်းၵူၺ်း (Generated automatically) ယဝ်ႉ။

### 1. လၢႆးတႅမ်ႈ (Syntax)

တေလႆႈမီး `val` ဢမ်ႇၼၼ် `var` ၼႂ်း Primary Constructor တႃႇသေႇ။

```kotlin
data class User(val name: String, val id: Int)

```

### 2. သိင်ႇဢၼ် Kotlin ထႅမ်ပၼ်ႁင်းၵူၺ်း (The Magic)

မိူဝ်ႈႁဝ်းၸႂ်ႉ `data class`၊ Kotlin တေတႅမ်ႈ Function ၸိူဝ်းၼႆႉဝႆႉပၼ်ယူႇၽၢႆႇလင်:

1. **`toString()`**: ပၼ် String ဢၼ်ဢၢၼ်ႇပွင်ႇငၢႆႈ (မိူၼ်ၼင်ႇ `User(name=Sai, id=1)`)။
2. **`equals()`**: တႃႇတႅၵ်ႈတူၺ်းဝႃႈ Object သွင်တူဝ် မီး "ၶေႃႈမုၼ်း" မိူၼ်ၵၼ်ႁႃႉ (ဢမ်ႇၸႂ်ႈတႅၵ်ႈ Memory Address)။
3. **`hashCode()`**: တႃႇၸႂ်ႉၼႂ်း Collection မိူၼ်ၼင်ႇ HashMap။
4. **`copy()`**: တႃႇသၢင်ႈ Object တူဝ်မႂ်ႇ ဢၼ်မီးၶေႃႈမုၼ်းမိူၼ်တူဝ်ၵဝ်ႇ ၵူၺ်းၵႃႈ လႅၵ်ႈလၢႆႈလႆႈမၢင်တီႈ။
5. **`componentN()`**: တႃႇၸႂ်ႉ Destructuring Declarations။

---

### 3. ၵၢၼ်ၸႂ်ႉ `copy()`

ၼႆႉပဵၼ်လွၵ်းလၢႆးဢၼ်လီသုတ်း တႃႇလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း ၼႂ်း Immutable Object (Object ဢၼ်လႅၵ်ႈလၢႆႈဢမ်ႇလႆႈ)။

```kotlin
val user1 = User("Sai", 101)
// သၢင်ႈ user2 ဢၼ်မိူၼ် user1 ၵူၺ်းၵႃႈ လႅၵ်ႈၸိုဝ်ႈ
val user2 = user1.copy(name = "Kyaw")

println(user1) // User(name=Sai, id=101)
println(user2) // User(name=Kyaw, id=101)

```

---

### 4. Destructuring Declarations

ႁဝ်းၸၢင်ႈ "ၸႅၵ်ႇ" ၶေႃႈမုၼ်းၼႂ်း Object ဢွၵ်ႇမႃးပဵၼ် Variable ၽႂ်ႇမၼ်းလႆႈငၢႆႈငၢႆႈ။

```kotlin
val (userName, userId) = user1
println(userName) // Sai

```

---

### 5. ပၵ်းပိူင် (Requirements)

* တေလႆႈမီး Primary Constructor ဢၼ်မီး Parameter ဢိတ်းသုတ်း 1 တူဝ်။
* Parameter ၼႂ်း Primary Constructor တေလႆႈသႂ်ႇ `val` ဢမ်ႇၼၼ် `var`။
* Data Class ဢမ်ႇၸၢင်ႈပဵၼ် `abstract`, `open`, ဢမ်ႇၼၼ် `inner`။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Boilerplate:** ၶူတ်ႉဢၼ်လူဝ်ႇတႅမ်ႈသမ်ႉသမ်ႉဝႃႈဝႃႈ ဢၼ်ဢမ်ႇပေႃးမီး Logic သင် (မိူၼ် Getter/Setter)။
* **Immutable:** ဢၼ်ဢမ်ႇၸၢင်ႈလႅၵ်ႈလၢႆႈလႆႈ ဝၢႆးသၢင်ႈယဝ်ႉ (ၸႂ်ႉ `val`)။
* **Destructuring:** ၵၢၼ်ၸႅၵ်ႇ Object ဢွၵ်ႇပဵၼ် Variable လၢႆလၢႆတူဝ်။
* **Shallow Copy:** ၵၢၼ် Copy ဢၼ်တေ Copy တူဝ် Properties မၼ်းၵႂႃႇ (ၵူၺ်းၵႃႈ သင် Property ပဵၼ် Object မၼ်းတေၸႂ်ႉ Address လဵဝ်ၵၼ်)။

---