## Lesson 55: Opaque Types: Using the "some" Keyword (Essential for SwiftUI)

**Opaque Type** ပဵၼ်လၢႆး ၵၢၼ်သူင်ႇၵႃႈၶၼ်ဢွၵ်ႇ (Return) ဢၼ်ႁဝ်းဢမ်ႇၶႂ်ႈလၢတ်ႈၼႄဝႃႈ မၼ်းပဵၼ် Type သင်တႄႉတႄႉ 
(မိူၼ်ၼင်ႇ တေဢမ်ႇလၢတ်ႈဝႃႈပဵၼ် String ဢမ်ႇၼၼ် Int) ၼႆယဝ်ႉ။ ႁဝ်းၵူၺ်းလၢတ်ႈဝႃႈ *"မၼ်းတေသူင်ႇ Object ဢၼ်ႁဵတ်းၸွမ်း Protocol ၼႆႉဢွၵ်ႇမႃးၼႃ"* 
လူၺ်ႈၵၢၼ်ၸႂ်ႉ Keyword **`some`** ယဝ်ႉ။

### 1. Syntax ၵၢၼ်ၸႂ်ႉတိုဝ်း
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Protocol `Shape` သေႁဝ်းၶႂ်ႈသူင်ႇ Shape သေမဵဝ်းမဵဝ်းဢွၵ်ႇမႃး ၼႆလႄႈ။

```swift
protocol Shape {
    func draw() -> String
}

struct Square: Shape {
    func draw() -> String { return "Rect [ ]" }
}

// ၸႂ်ႉ some တွၼ်ႈတႃႇသူင်ႇ Opaque Type
func makeShape() -> some Shape {
    return Square() 
}

let myShape = makeShape()
print(myShape.draw()) // Swift ႁူႉဝႃႈမၼ်းပဵၼ် Shape ၵူၺ်း။ ဢမ်ႇႁူႉဝႃႈပဵၼ် Square။
```

---

### 2. လွင်ႈပႅၵ်ႇၵၼ်တင်း Generics
*   **Generics (`<T>`)**: ၵူၼ်း **"ႁွင်ႉၸႂ်ႉ" (Caller)** ပဵၼ်ၵေႃႉလိူၵ်ႈဝႃႈ တေသူင်ႇ Type သင်ၶဝ်ႈမႃး။
*   **Opaque Types (`some`)**: ၵူၼ်း **"တႅမ်ႈ Function" (Implementation)** ပဵၼ်ၵေႃႉလိူၵ်ႈဝႃႈ တေသူင်ႇ Type သင်ဢွၵ်ႇၵႂႃႇ။

### 3. ၵွပ်ႈသင် `some` ၸင်ႇလွင်ႈယႂ်ႇၼႂ်း SwiftUI?
ၼႂ်း SwiftUI ၼၼ်ႉ View ၵူႈဢၼ် တေသူင်ႇၵႃႈၶၼ်ဢွၵ်ႇပဵၼ် **`some View`** သေႇသေႇယဝ်ႉ။ 
ၵွပ်ႈဝႃႈ View ၼိုင်ႈဢၼ် ၸၢင်ႈမီး View တၢင်ႇဢၼ် ဝႆႉၼမ်တႄႉတႄႉ (မိူၼ်ၼင်ႇ VStack ၼႂ်း HStack) ယဝ်ႉ။ 
သင်ႁဝ်းဢမ်ႇၸႂ်ႉ `some` ၼႆ ႁဝ်းတေလႆႈတႅမ်ႈၸိုဝ်ႈ Type ဢၼ်ယၢဝ်းတႄႉတႄႉ တွၼ်ႈတႃႇသူင်ႇၵႃႈၶၼ်ဢွၵ်ႇမႃးယဝ်ႉ။



---