# တွၼ်ႈသွၼ် 49: Interfaces (လိၵ်ႈၵိၼ်ၵႅတ်း လႄႈ Default Logic)

**Interface** ပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ်ၸႂ်ႉတႃႇမၵ်းမၼ်ႈ **Behavior** (ၵၢၼ်ႁဵတ်းၵၢၼ်)။ Class ၼိုင်ႈဢၼ် ၸၢင်ႈ "Implement" (ႁပ်ႉဢဝ်ပုၼ်ႈၽွၼ်း) လႆႈလၢႆလၢႆ Interface ၼႂ်းၶၢဝ်းလဵဝ်ၵၼ်ယဝ်ႉ။

### 1. လၢႆးတႅမ်ႈ (Syntax)

ႁဝ်းၸႂ်ႉ Keyword **`interface`**။ ၼႂ်းမၼ်းၸၢင်ႈမီးတင်း Abstract Methods (ဢမ်ႇမီး Body) လႄႈ Methods ဢၼ်မီး Logic ဝႆႉယဝ်ႉ (Default Implementation)။

```kotlin
interface Drivable {
    // Abstract Method: တေလႆႈတႅမ်ႈ Logic ၵမ်းလဵဝ်
    fun accelerate()

    // Default Implementation: တေမႄး (Override) ၵေႃႈလႆႈ ဢမ်ႇမႄးၵေႃႈလႆႈ
    fun stop() {
        println("Stopping the vehicle...")
    }
}

```

---

### 2. ၵၢၼ်ၸႂ်ႉတိုဝ်း (Implementation)

မိူဝ်ႈ Class ၼိုင်ႈဢၼ် ႁပ်ႉဢဝ် Interface မႃးၸႂ်ႉ၊ ႁဝ်းၸႂ်ႉၶိူင်ႈမၢႆ `:` မိူၼ်တင်း Inheritance ယဝ်ႉ။

```kotlin
class Tesla : Drivable {
    override fun accelerate() {
        println("Tesla is speeding up silently!")
    }
    
    // stop() ဢမ်ႇလူဝ်ႇ override ၵေႃႈလႆႈ ၵွပ်ႈမၼ်းမီး Default ဝႆႉယဝ်ႉ
}

```

---

### 3. ပႅၵ်ႇပၢင်ႇၵၼ်တင်း Abstract Class ၸိူဝ်ႉႁိူဝ်?

| တွၼ်ႈတႅၵ်ႈ | **Abstract Class** | **Interface** |
| --- | --- | --- |
| **State** | သိမ်း Variable (Backing Field) လႆႈ | သိမ်း Variable **ဢမ်ႇလႆႈ** (မီးလႆႈၵူၺ်း Properties ဢၼ်ဢမ်ႇမီး Field) |
| **Inheritance** | သိုပ်ႇပွင်လႆႈ **ၵူၺ်း 1 ဢၼ်** | ႁပ်ႉၸႂ်ႉလႆႈ **လၢႆလၢႆဢၼ်** (Multiple) |
| **Purpose** | ဝႆႉပဵၼ် "ၸိူဝ်ႉၶိူဝ်း" (Is-a relationship) | ဝႆႉပဵၼ် "တၢင်းၵတ်ႉ" (Can-do relationship) |

---

### 4. Property ၼႂ်း Interface

ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ Property ၼႂ်း Interface လႆႈ၊ ၵူၺ်းၵႃႈမၼ်းဢမ်ႇၸၢင်ႈသိမ်း Value တႄႉတႄႉ (No Backing Field)။

```kotlin
interface Playable {
    val duration: Int // Abstract property
    
    val isLongVideo: Boolean
        get() = duration > 60 // Property ဢၼ်မီး Getter (Default)
}

```

---

### 5. ၵွပ်ႈသင်ၸင်ႇလီ?

* **Multiple Behaviors:** ၸွႆႈႁႂ်ႈ Class ၼိုင်ႈဢၼ်မီးလၢႆလၢႆတၢင်းၵတ်ႉ (မိူၼ်ၼင်ႇ `Smartphone` ပဵၼ်လႆႈတင်း `Camera`, `Phone`, လႄႈ `MusicPlayer`)။
* **Loose Coupling:** ႁဵတ်းႁႂ်ႈၶူတ်ႉတွၼ်ႈၼိုင်ႈ ဢမ်ႇလူဝ်ႇၵႂႃႇၵိူတ်ႇၵိုၵ်းတင်း Class ၼိုင်ႈဢၼ်တႅတ်ႈတေႃး၊ ၵူၺ်းၵႃႈၵိူတ်ႇၵိုၵ်းတင်း "ပိူင်" (Interface) မၼ်းၵူၺ်း။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Interface:** လိၵ်ႈၵိၼ်ၵႅတ်း ဢၼ်မၵ်းမၼ်ႈၵၢၼ်ႁဵတ်းၵၢၼ်။
* **Default Implementation:** Logic ဢၼ်တႅမ်ႈဝႆႉၼႂ်း Interface တႃႇႁႂ်ႈ Class တူဝ်လုၵ်ႈၸႂ်ႉလႆႈၵမ်းလဵဝ်။
* **Contract:** ၶေႃႈလႅၵ်ႈလၢႆႈ ဢၼ် Class တေလႆႈႁဵတ်းၸွမ်း။
* **Loose Coupling:** ၵၢၼ်တႅမ်ႈၶူတ်ႉ ႁႂ်ႈမၼ်းဢမ်ႇၵိူတ်ႇၵိုၵ်းၵၼ်ၼမ်ပူၼ်ႉတီႈ။

---