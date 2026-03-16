# တွၼ်ႈသွၼ် 79: Nested and Inner Classes

ၵၢၼ်တႅမ်ႈ Class ၼႂ်း Class ၸွႆႈႁႂ်ႈႁဝ်းၸတ်းၸုမ်းၶူတ်ႉ (Logical Grouping) ဢၼ်ၵဵဝ်ႇၶွင်ႉၵၼ် ႁႂ်ႈယူႇၸွမ်းၵၼ်၊ ႁဵတ်းႁႂ်ႈၶူတ်ႉဢၢၼ်ႇငၢႆႈလိူဝ်ၵဝ်ႇယဝ်ႉ။

### 1. Nested Class (ပိူင်ပိုၼ်ႉထၢၼ်)

Nested Class ပဵၼ် Class ဢၼ်ယူႇၼႂ်း Class တၢင်ႇဢၼ် ၵူၺ်းၵႃႈ **ဢမ်ႇမီး** လွင်ႈၵဵဝ်ႇၶွင်ႉတင်း Class တူဝ်ၼွၵ်ႈ (Outer Class)။ မၼ်းမိူၼ်ၵူၺ်းဢဝ် Class သွင်တူဝ်မႃးဝႆႉၼႂ်း File လဵဝ်ၵၼ်။

* **တၢင်းၵတ်ႉ:** ဢမ်ႇၸၢင်ႈၶဝ်ႈၸႂ်ႉ Properties ဢမ်ႇၼၼ် Functions ၶွင် Outer Class လႆႈ။
* **လၢႆးၸႂ်ႉ:** ႁွင်ႉၸႂ်ႉလႆႈလူၺ်ႈဢမ်ႇလူဝ်ႇသၢင်ႈ Object ၶွင် Outer Class။

```kotlin
class Outer {
    val bar = "Hello"
    
    class Nested {
        fun foo() = "I cannot see bar" // ❌ ၶဝ်ႈၸႂ်ႉ bar ဢမ်ႇလႆႈ
    }
}

val demo = Outer.Nested().foo() // ႁွင်ႉၸႂ်ႉလႆႈၵမ်းလဵဝ်

```

---

### 2. Inner Class (ပိူင်မီးသၢႆၸႂ်ၸွမ်းၵၼ်)

မိူဝ်ႈႁဝ်းသႂ်ႇ Keyword `inner` ၽၢႆႇၼႃႈ Class၊ မၼ်းတေၵဵဝ်ႇၶွင်ႉတင်း Outer Class ၵမ်းလဵဝ်။

* **တၢင်းၵတ်ႉ:** **ၸၢင်ႈၶဝ်ႈၸႂ်ႉ** Properties လႄႈ Functions ၶွင် Outer Class လႆႈတင်းหมด (ပႃးတင်း `private`)။
* **လၢႆးၸႂ်ႉ:** တေလႆႈသၢင်ႈ Object ၶွင် Outer Class ဢွၼ်တၢင်း ၸင်ႇတေၸၢင်ႈသၢင်ႈ Inner Class လႆႈ။

```kotlin
class Window {
    private val title = "Main Window"

    inner class Button {
        fun click() = "Clicking on $title" // ✅ ၶဝ်ႈၸႂ်ႉ title လႆႈ
    }
}

val myButton = Window().Button().click() // လူဝ်ႇမီး Window() ဢွၼ်တၢင်း

```

---

### 3. ပႅၵ်ႇပၢင်ႇၵၼ်ၸိူဝ်ႉႁိုဝ်?

| Feature | Nested Class | Inner Class |
| --- | --- | --- |
| **Keyword** | None | `inner` |
| **Access to Outer Class** | ❌ No | ✅ Yes |
| **Creation** | `Outer.Nested()` | `Outer().Inner()` |
| **Memory** | ဢမ်ႇသိမ်း Reference ၶွင် Outer | သိမ်း Reference (ၸၢင်ႈႁဵတ်းႁႂ်ႈ Memory Leak သင်ဢမ်ႇသတိ) |

---

### 4. မိူဝ်ႈလႂ်ထုၵ်ႇလီၸႂ်ႉ?

* **Nested Class:** ၸႂ်ႉမိူဝ်ႈလူဝ်ႇၸတ်းပိူင် Class ဢၼ်မီးတီႈပွင်ႇ (Meaning) ၸွမ်းၵၼ် ၵူၺ်းၵႃႈဢမ်ႇလူဝ်ႇၸႂ်ႉၶေႃႈမုၼ်းႁူမ်ႈၵၼ် (မိူၼ်ၼင်ႇ Constants ဢမ်ႇၼၼ် Helpers)။
* **Inner Class:** ၸႂ်ႉမိူဝ်ႈ Class တူဝ်ၼႂ်း လူဝ်ႇႁူႉ State ဢမ်ႇၼၼ် လူဝ်ႇၸတ်းၵၢၼ်ၶေႃႈမုၼ်းၶွင် Class တူဝ်ၼွၵ်ႈ (မိူၼ်ၼင်ႇ UI Listeners ၼႂ်း Activity)။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Logical Grouping:** ၵၢၼ်ၸတ်းၸုမ်းၶူတ်ႉၸွမ်းၼင်ႇတီႈပွင်ႇ လႄႈ ၵၢၼ်ႁဵတ်းၵၢၼ်မၼ်း။
* **Outer Class:** Class တူဝ်ၼွၵ်ႈ ဢၼ်ႁေႃႇ Class တၢင်ႇဢၼ်ဝႆႉ။
* **Reference:** သၢႆၵဵဝ်ႇၶွင်ႉ ဢၼ်ၸီႉၸူး Object ၼႂ်း Memory။
* **Memory Leak:** ၵၢၼ်ဢၼ် Object တူဝ်ၼိုင်ႈ ဢမ်ႇထုၵ်ႇယႃႉပႅတ်ႈ (Delete) ၵွပ်ႈမၼ်းတိုၵ်ႉမီး Reference ၵဵဝ်ႇၶွင်ႉဝႆႉယူႇ (Inner class ၵႆႉႁဵတ်းႁႂ်ႈၵိူတ်ႇပၼ်ႁႃၼႆႉ)။

---