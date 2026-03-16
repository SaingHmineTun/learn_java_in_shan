# တွၼ်ႈသွၼ် 73: Enum Classes (Constants with Behavior)

**Enum** (Enumeration) ပဵၼ် Class ဢၼ်ႁဝ်းၸႂ်ႉမိူဝ်ႈႁဝ်းႁူႉဝႃႈ ၶေႃႈမုၼ်းမဵဝ်းၼၼ်ႉ တေမီးၵူၺ်း "လၢႆလၢႆမဵဝ်း" ဢၼ်ႁဝ်းလိူၵ်ႈဝႆႉယဝ်ႉ (မိူၼ်ၼင်ႇ ဝၼ်းၼႂ်းသၢပ်ႇပတ်ႉတႃႉ၊ သီၾႆးၵၢၼ်ၸရႃႇၸရ၊ ဢမ်ႇၼၼ် ၶပ်ႉၸၼ်ႉမၢႆတွၼ်ႈ Status)။

### 1. Enum ပိုၼ်ႉထၢၼ်

ၼႂ်း Kotlin, Enum ဢမ်ႇၸႂ်ႈၵူၺ်းသဵၼ်ႈၸိုဝ်ႈတႅၼ်းတူဝ်ၼပ်ႉ၊ မၼ်းပဵၼ် **Class** တႄႉတႄႉဢၼ်ၼိုင်ႈယဝ်ႉ။

```kotlin
enum class Direction {
    NORTH, SOUTH, EAST, WEST
}

fun main() {
    val myDir = Direction.NORTH
    
    // ၸႂ်ႉၸွမ်း 'when' တေၶႅၼ်ႇလိူဝ်
    when (myDir) {
        Direction.NORTH -> println("ၵႂႃႇၽၢႆႇႁွင်ႇ")
        Direction.SOUTH -> println("ၵႂႃႇၽၢႆႇတၢူဝ်")
        Direction.EAST -> println("ၵႂႃႇၽၢႆႇဢွၵ်ႇ")
        Direction.WEST -> println("ၵႂႃႇၽၢႆႇတူၵ်း")
    }
}

```

---

### 2. Enums with Properties (မီးၶေႃႈမုၼ်းဝႆႉၼႂ်းတူဝ်)

ႁဝ်းၸၢင်ႈသႂ်ႇ **Constructor** လႄႈ **Properties** ပၼ် Enum လႆႈ ႁႂ်ႈၵူႈတူဝ်မီးၵႃႈ (Value) ပႅၵ်ႇၵၼ်။

```kotlin
enum class Color(val hex: String) {
    RED("#FF0000"),
    GREEN("#00FF00"),
    BLUE("#0000FF"); // လူဝ်ႇသႂ်ႇ Semicolon (;) သင်တေမီး Function ၽၢႆႇတႂ်ႈ
}

fun main() {
    println(Color.RED.hex) // #FF0000
}

```

---

### 3. Enums with Behavior (မီး Function ၼႂ်းတူဝ်)

Enum ၼႂ်း Kotlin ၸၢင်ႈမီး **Methods** (Functions) လႆႈထႅင်ႈယဝ်ႉ။ ၸဝ်ႈၵဝ်ႇၸၢင်ႈတႅမ်ႈ Function ပိုၼ်ႉထၢၼ် ဢမ်ႇၼၼ် တႅမ်ႈ Abstract Function ႁႂ်ႈၵူႈတူဝ် (Constant) ၵႂႃႇ Implement ႁင်းၵူၺ်းၵေႃႈလႆႈ။

```kotlin
enum class Signal {
    RED {
        override fun next() = GREEN
    },
    GREEN {
        override fun next() = YELLOW
    },
    YELLOW {
        override fun next() = RED
    };

    abstract fun next(): Signal
}

```

---

### 4. ၵၢၼ်ၸႂ်ႉ Properties ဢၼ်မီးဝႆႉယဝ်ႉ (Built-in)

ၵူႈ Enum Constant တေမီး Properties 2 တူဝ်ဢၼ်မႃးၸွမ်းတူဝ်မၼ်း:

* **`name`**: ၸိုဝ်ႈၶွင်မၼ်း (မိူၼ်ၼင်ႇ "RED")။
* **`ordinal`**: တီႈယူႇ/မၢႆၶပ်ႉ (Index) ၶွင်မၼ်း တႄႇတီႈ 0။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Enum Constant:** တူဝ်ၶေႃႈမုၼ်းဢၼ်မၵ်းမၼ်ႈဝႆႉၼႂ်း Enum (မိူၼ်ၼင်ႇ NORTH, SOUTH)။
* **Constructor:** လၢႆးသူင်ႇၶေႃႈမုၼ်းၶဝ်ႈၵႂႃႇမိူဝ်ႈသၢင်ႈ Enum Instance။
* **Ordinal:** မၢႆၶပ်ႉတပ်ႉထႅဝ်ၶွင် Constant ၼၼ်ႉ။
* **Type Safety:** ၵၢၼ်ႁႄႉၵင်ႈဢမ်ႇပၼ်သႂ်ႇၶေႃႈမုၼ်းဢၼ်ပႅၵ်ႇပၢင်ႇ (မိူၼ်ၼင်ႇ သႂ်ႇ "UP" ၼႂ်း Direction ဢၼ်မီးၵူၺ်း 4 ၽၢႆႇ)။

---