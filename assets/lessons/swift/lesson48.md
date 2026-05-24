## Lesson 48: Initializers: Safely Setting Up your Objects with init()

**Initializer** (ဢမ်ႇၼၼ်ႁဝ်းႁွင်ႉပွတ်းပွတ်းဝႃႈ **`init`**) ပဵၼ် Method ဢၼ်ၼိုင်ႈ ဢၼ်တေႁဵတ်းၵၢၼ် "ၵမ်းလဵဝ်" မိူဝ်ႈႁဝ်းသၢင်ႈ Object ဢွၵ်ႇမႃးၼႂ်း Struct ဢမ်ႇၼၼ် Class ယဝ်ႉ။
ၼႃႈတီႈမၼ်းတႄႉ ပဵၼ်ၵၢၼ်ပၼ်ၵႃႈၶၼ် (Value) တႄႇမၼ်း ႁႂ်ႈ Property ၵူႈတူဝ်မီးၶေႃႈမုၼ်းဝႆႉယဝ်ႉ။

### 1. Default Initializers
ၼႂ်း Struct ၼႆႉတေႉၵေႃႈ Swift တေတႅမ်ႈ `init` ပၼ်ႁဝ်းႁင်းၵူၺ်း (Memberwise Init) ယဝ်ႉ။
ၵူၺ်းၵႃႈၼႂ်း Class ႁဝ်းတေလႆႈတႅမ်ႈမၼ်းႁင်းၵူၺ်း သင်ႁဝ်းဢမ်ႇပၼ်ၵႃႈၶၼ် Property ဝႆႉဢွၼ်တၢင်းယဝ်ႉ။

```swift
class KeyboardKey {
    var label: String
    var color: String
    
    // Custom Initializer
    init(label: String, color: String = "Gray") {
        self.label = label
        self.color = color
    }
}

let key1 = KeyboardKey(label: "ၵ") // color တေပဵၼ် Gray ၸွမ်း Default
```

### 2. ၵၢၼ်ၸႂ်ႉ `self`
ႁဝ်းၸႂ်ႉ **`self`** တွၼ်ႈတႃႇၸႅၵ်ႇဝႃႈ "ၼႆႉပဵၼ် Property ၶေႃ Object" လႄႈ "ၼႆႉပဵၼ် Parameter ဢၼ်သူင်ႇၶဝ်ႈမႃးၼႂ်း init" ၼႆယဝ်ႉ။

---

### 3. Failable Initializers (`init?`)
မၢင်ၵမ်း ၵၢၼ်သၢင်ႈ Object ၸၢင်ႈ "မီးလွင်ႈၽိတ်းပိူင်ႈ" (Fail) လႆႈယွၼ်ႉ ၶေႃႈမုၼ်း ဢၼ်သူင်ႇမႃးၼၼ်ႉ ဢမ်ႇထုၵ်ႇၸွမ်းပိူင်ယဝ်ႉ။
သင်ၼၼ် ႁဝ်းၸၢင်ႈၸႂ်ႉလႆႈ **`init?`** သေ မၼ်းတေသူင်ႇ Optional Object ဢွၵ်ႇမႃး ပၼ်ႁဝ်းယဝ်ႉ။

```swift
struct UnicodeKey {
    var code: Int
    
    init?(code: Int) {
        if code < 0 { return nil } // သင် code တႅမ်ႇလိူဝ် 0 ႁႂ်ႈ Fail
        self.code = code
    }
}
```

---