## Lesson 47: Methods: Adding Logic and Behavior to your Types

**Methods** ၵေႃႈပဵၼ် Function ၼင်ႇၵဝ်ႇ။ ၵူၺ်းၵႃႈမၼ်းပဵၼ် Function ဢၼ် "ယူႇဝႆႉၼႂ်း" Struct ဢမ်ႇၼၼ် Class ယဝ်ႉ။ 
မၼ်းမီးၼႃႈတီႈႁဵတ်းၵၢၼ်ၸွမ်းၶေႃႈမုၼ်း ဢၼ်မီးယူႇၼႂ်း Object ၼၼ်ႉယဝ်ႉ။

### 1. Instance Methods
ၼႆႉပဵၼ် Method ဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉလႆႈ မိူဝ်ႈႁဝ်းသၢင်ႈ Object (Instance) ဢွၵ်ႇမႃးၼၼ်ႉယဝ်ႉ။

```swift
struct ShanKeyboard {
    var language = "Shan"
    
    func describe() {
        print("This keyboard is using \(language) language.")
    }
}

let myKeyboard = ShanKeyboard()
myKeyboard.describe() // Output: This keyboard is using Shan language.
```

---

### 2. Mutating Methods (တွၼ်ႈတႃႇ Struct ၵူၺ်း)
ၼႂ်း Struct ၼႆႉ ပေႃးႁဝ်းၶႂ်ႈတႅမ်ႈ Method ဢၼ် "လႅၵ်ႈလၢႆႈ" (Change) ၵႃႈၶၼ် Property ၽၢႆႇၼႂ်းမၼ်းၼႆ 
ႁဝ်းတေလႆႈသႂ်ႇ Keyword **`mutating`** ဝႆႉၽၢႆႇၼႃႈ `func` တႃႇသေႇယဝ်ႉ။ (တွၼ်ႈတႃႇ Class တႄႉ ဢမ်ႇလူဝ်ႇၸႂ်ႉ)။

```swift
struct Counter {
    var count = 0
    
    mutating func increment() {
        count += 1 // သင်ဢမ်ႇသႂ်ႇ mutating မၼ်းတေပဵၼ် Error ယဝ်ႉ
    }
}
```

---

### 3. Type Methods (`static`)
မၢင်ၵမ်း ႁဝ်းၶႂ်ႈမီး Method ဢၼ်ပဵၼ်ၶေႃ "Type" ဢၼ်ဢမ်ႇၸႂ်ႈၶေႃ Object ၼႆ ႁဝ်းတေၸႂ်ႉ Keyword **`static`** ယဝ်ႉ။ 
ပွင်ႇဝႃႈ Object တင်းမူတ်း တေမီး Method မိူၼ်ၵၼ် မူတ်းယဝ်ႉ။ 

```swift
struct KeyboardInfo {
    static func version() {
        print("TMK Keyboard Version 1.0")
    }
}

KeyboardInfo.version() // ႁွင်ႉၸႂ်ႉတီႈ Type မၼ်းၵမ်းသိုဝ်ႈ
```

---