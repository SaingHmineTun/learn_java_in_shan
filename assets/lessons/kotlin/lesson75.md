
# တွၼ်ႈသွၼ် 75: Sealed Interfaces

မိူဝ်ႈႁဝ်းႁဵၼ်း Sealed Classes မႃးယဝ်ႉ၊ ႁဝ်းႁူႉဝႃႈမၼ်းပဵၼ်ၵၢၼ်ပိတ်းဝူင်းလုၵ်ႈလၢၼ် (Hierarchy)။ ၵမ်းၼႆႉ **Sealed Interface** သမ်ႉမႃးၸွႆႈၵႄႈပၼ်ႁႃ တွၼ်ႈဢၼ် Class တူဝ်ၼိုင်ႈ လူဝ်ႇပဵၼ်လုၵ်ႈလၢၼ်လၢႆလၢႆၸုမ်း (Multiple Hierarchies) ယဝ်ႉ။

### 1. ၵွပ်ႈသင်ၸင်ႇလူဝ်ႇ Sealed Interface?

ၼႂ်း Kotlin, Class တူဝ်ၼိုင်ႈ "သိုပ်ႇပူၺ်း (Inherit)" လႆႈၵူၺ်း **Class လဵဝ်** (Single Inheritance)။ သင်ႁဝ်းၸႂ်ႉ Sealed Class၊ လုၵ်ႈလၢၼ်မၼ်းတေၵႂႃႇသိုပ်ႇပူၺ်း Sealed Class တၢင်ႇဢၼ်ဢမ်ႇလႆႈယဝ်ႉ။

ၵူၺ်းၵႃႈ **Interface** သမ်ႉ "Implement" လႆႈ **လၢႆလၢႆဢၼ်**။ ၵွပ်ႈၼၼ် Sealed Interface ၸင်ႇပဵၼ်တၢင်းလိူၵ်ႈဢၼ်လီသုတ်း မိူဝ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈ Object တူဝ်ၼိုင်ႈ မီးလွင်ႈတၢင်း (Behavior) လၢႆယၢင်ႇယဝ်ႉ။

---

### 2. လၢႆးတႅမ်ႈ (Syntax)

လၢႆးတႅမ်ႈမၼ်းမိူၼ်တင်း Sealed Class ပၵ်းပၵ်း၊ ၵူၺ်းလႅၵ်ႈ Keyword ပဵၼ် `sealed interface` ယဝ်ႉ။

```kotlin
sealed interface ErrorHandler

sealed interface NetworkError : ErrorHandler
sealed interface DatabaseError : ErrorHandler

class TimeoutError : NetworkError
class SqlError : DatabaseError

```

---

### 3. တူဝ်ယၢင်ႇ (The Power of Multiple Hierarchies)

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Class `UserUpdate` ဢၼ်လူဝ်ႇပဵၼ်တင်း "ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း (Action)" လႄႈ "လွင်ႈၸတ်းၵၢၼ် Log (Loggable)"။

```kotlin
sealed interface Action
sealed interface Loggable

// Class ၼႆႉၸၢင်ႈယူႇလႆႈတင်းသွင်ဝူင်း (Sealed Hierarchies)
data class UserUpdate(val id: Int) : Action, Loggable

fun process(event: Action) {
    when (event) {
        is UserUpdate -> println("Updating user ${event.id}")
        // Compiler တေႁူႉၵမ်းလဵဝ်ဝႃႈ Action မီးၵူၺ်းမဵဝ်းၼႆႉ
    }
}

```

---

### 4. Sealed Class vs Sealed Interface: လိူၵ်ႈၸႂ်ႉမဵဝ်းလႂ်?

| တွၼ်ႈတႅၵ်ႈ | Sealed Class | Sealed Interface |
| --- | --- | --- |
| **State Storage** | သိမ်း Variable (Constructor) လႆႈ | သိမ်း Variable (State) ဢမ်ႇလႆႈ |
| **Inheritance** | သိုပ်ႇပူၺ်းလႆႈ 1 Class ၵူၺ်း | Implement လႆႈလၢႆ Interface |
| **Common Logic** | သႂ်ႇ Code ဢၼ်ၸႂ်ႉႁူမ်ႈၵၼ်လႆႈ | သႂ်ႇလႆႈၵူၺ်း Default Methods |

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Multiple Inheritance:** ၵၢၼ်သိုပ်ႇပူၺ်းၶေႃႈမုၼ်း လႄႈ လွၵ်းလၢႆးႁဵတ်းၵၢၼ် တီႈလၢႆလၢႆတီႈ (Interface ၸွႆႈလွင်ႈၼႆႉ)။
* **Polymorphism:** တၢင်းၵတ်ႉဢၼ် Object တူဝ်ၼိုင်ႈ ၸၢင်ႈပဵၼ်လႆႈလၢႆမဵဝ်း။
* **Restricted Interface:** Interface ဢၼ်ပိတ်းဝႆႉ ဢမ်ႇပၼ် Class ၼွၵ်ႈ File ၼၼ်ႉမႃး Implement။
* **Exhaustiveness:** ၵၢၼ်ဢၼ် Compiler ၸွႆႈထတ်းတူၺ်းဝႃႈ ႁဝ်းတႅမ်ႈ `when` ၵုမ်ႇထူၼ်ႈၵူႈ Case ယဝ်ႉႁႃႉ။

---