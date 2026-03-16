# တွၼ်ႈသွၼ် 47: ၵၢၼ်မႄးလႅၵ်ႈလၢႆႈ (Overriding Methods and Properties)

ၼႂ်း Kotlin၊ ဢမ်ႇၸႂ်ႈၵူၺ်း Class ဢၼ်လူဝ်ႇ `open`၊ ပင်တင်း **Method** လႄႈ **Property** ၵေႃႈ သင်ႁဝ်းၶႂ်ႈႁႂ်ႈတူဝ်လုၵ်ႈမႄးလႆႈ၊ ႁဝ်းလူဝ်ႇသႂ်ႇ Keyword **`open`** ဝႆႉၽၢႆႇၼႃႈမၼ်းၸွမ်းယဝ်ႉ။

### 1. Overriding Methods

မိူဝ်ႈတူဝ်လုၵ်ႈမႄး Function၊ မၼ်းလူဝ်ႇၸႂ်ႉ Keyword **`override`** တႃႇလၢတ်ႈဝႃႈ "ၵဝ်တေလႅၵ်ႈလၢႆႈ Logic ဢၼ်မႃးတီႈတူဝ်မႄႈဢိူဝ်ႈ"။

```kotlin
open class Bird {
    // လူဝ်ႇသႂ်ႇ open တႃႉ တူဝ်လုၵ်ႈၸင်ႇတေမႄးလႆႈ
    open fun fly() {
        println("ၼၵ်ႉတိုၵ်ႉမိၼ်ယူႇ...")
    }
}

class Penguin : Bird() {
    // ၸႂ်ႉ override တႃႇမႄး Logic
    override fun fly() {
        println("ၼၵ်ႉပဵင်းၵႂိၼ်း မိၼ်ဢမ်ႇလႆႈ၊ ၵူၺ်းၵႃႈ လွႆးၼမ်ႉၵတ်ႉၼႃႇ!")
    }
}

```

---

### 2. Overriding Properties

ႁဝ်းၸၢင်ႈ Override Variable (Property) ၵေႃႈလႆႈၸွမ်းၼင်ႇပၵ်းပိူင်လဵဝ်ၵၼ်။

```kotlin
open class Shape {
    open val vertexCount: Int = 0
}

class Triangle : Shape() {
    override val vertexCount: Int = 3
}

```

---

### 3. Keyword `super`

မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈမႄး Logic မႂ်ႇ ၵူၺ်းၵႃႈၵေႃႈ တိုၵ်ႉၶႂ်ႈႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ၸွမ်း Logic တူဝ်မႄႈယူႇ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ Keyword **`super`** တႃႇႁွင်ႉၸႂ်ႉ Function ၶွင်တူဝ်မႄႈလႆႈယဝ်ႉ။

```kotlin
class Eagle : Bird() {
    override fun fly() {
        super.fly() // ႁွင်ႉၸႂ်ႉ Logic ၶွင် Bird ဢွၼ်တၢင်း
        println("ၼၵ်ႉသိၵ်းမိၼ်သုင်သုင်တႄႉတႄႉ!")
    }
}

```

---

### 4. ပၵ်းပိူင်လမ်ႇလွင်ႈ (The Rules)

1. **Open to Override:** သင်တူဝ်မႄႈဢမ်ႇသႂ်ႇ `open`၊ တူဝ်လုၵ်ႈတေ `override` ဢမ်ႇလႆႈ။
2. **`val` to `var`:** ႁဝ်းၸၢင်ႈ Override `val` ႁႂ်ႈပဵၼ် `var` လႆႈ (ၵွပ်ႈ `var` မီး Getter လႄႈ Setter)။
3. **`var` to `val`:** ႁဵတ်း **ဢမ်ႇလႆႈ** (ၵွပ်ႈတူဝ်မႄႈလူဝ်ႇ Setter ၵူၺ်းၵႃႈ `val` ဢမ်ႇမီးပၼ်)။
4. **Final Override:** Method ဢၼ် `override` မႃးယဝ်ႉၼၼ်ႉ တေပဵၼ် `open` တႃႇလုၵ်ႈၸၼ်ႉထႅင်ႈဢၼ်ၼိုင်ႈတႃႇသေႇ။ သင်ၶႂ်ႈပိတ်းမၼ်း၊ လူဝ်ႇသႂ်ႇ `final override` ယဝ်ႉ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Override:** ၵၢၼ်တႅမ်ႈ Logic မႂ်ႇတႅၼ်းတၢင်း Logic ဢၼ်သိုပ်ႇပွင်မႃး။
* **Super:** Keyword ဢၼ်မၢႆထိုင် Class တူဝ်မႄႈ (Parent Class)။
* **Backing Field:** ၵၢၼ်သိမ်းၶေႃႈမုၼ်းတႄႉတႄႉ ၼႂ်း Property ဢၼ်ႁဝ်း Override။
* **Polymorphism:** လွင်ႈလၢႆႁၢင်ႈ (မိူၼ်ၼင်ႇ ႁွင်ႉ fly() ဢၼ်လဵဝ်ၵၼ် ၵူၺ်းၵႃႈ ၼၵ်ႉၵူႈမဵဝ်းမိၼ်ပႅၵ်ႇၵၼ်)။

---