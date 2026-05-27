## Lesson 56: Synthesized Implementation: How Swift Auto-conforms to Equatable and Hashable

မၢင်ၵမ်း ႁဝ်းလူဝ်ႇဢဝ် Struct သွင်တူဝ်မႃးၼိူင်းၵၼ် (`==`) ဢမ်ႇၼၼ် ဢဝ်ၵႂႃႇသႂ်ႇၼႂ်း `Set` ဢမ်ႇၼၼ် `Dictionary` (ဢၼ်လူဝ်ႇ `Hashable`) ယဝ်ႉ။ 
မိူဝ်ႈၵွၼ်ႇ ႁဝ်းတေလႆႈတႅမ်ႈ Code တွၼ်ႈတႃႇၼိူင်း Property ၵူႈတူဝ်ႁင်းၵူၺ်းယဝ်ႉ။ ၵူၺ်းၵႃႈယၢမ်းလဵဝ် Swift ႁဵတ်းပၼ်ႁဝ်း **"လၢႆလၢႆ" (Synthesized)** ယဝ်ႉ။

### 1. Equatable (ၵၢၼ်ၼိူင်းၵၼ်)
သင်ဝႃႈ Property ၵူႈတူဝ်ၼႂ်း Struct ႁဝ်းပဵၼ် `Equatable` ဝႆႉယူႇယဝ်ႉ (မိူၼ်ၼင်ႇ String, Int, Bool) ၼႆ 
ႁဝ်းၵူၺ်းလူဝ်ႇသႂ်ႇၸိုဝ်ႈ Protocol သေ Swift တေတႅမ်ႈ Logic ၵၢၼ်ၼိူင်းၵၼ် ပၼ်ၵမ်းလဵဝ်ယဝ်ႉ။

```swift
struct ShanKey: Equatable {
    let label: String
    let code: Int
}

let keyA = ShanKey(label: "ၵ", code: 1)
let keyB = ShanKey(label: "ၵ", code: 1)

print(keyA == keyB) // Output: true (Swift ၼိူင်းပၼ်ၵူႈ Property ယဝ်ႉ)
```

### 2. Hashable (ၵၢၼ်ၸႂ်ႉၼႂ်း Set/Dictionary)
မိူၼ်ၵၼ်တင်း Equatable ယဝ်ႉ။ သင်ႁဝ်းမၵ်းမၼ်ႈ `Hashable` ၼႆ Swift တေၼပ်ႉသွၼ်ႇ 
Hash Value ပၼ်ႁင်းၵူၺ်း တွၼ်ႈတႃႇႁႂ်ႈႁဝ်းဢဝ် Struct ၼၼ်ႉၵႂႃႇၸႂ်ႉပဵၼ် **Key** ၼႂ်း Dictionary လႆႈယဝ်ႉ။

```swift
struct KeyboardTheme: Hashable {
    var name: String
    var id: Int
}

// ယၢမ်းလဵဝ်ၸႂ်ႉပဵၼ် Key ၼႂ်း Dictionary လႆႈယဝ်ႉ
var themeSettings: [KeyboardTheme: Bool] = [:]
```

---

### 3. ၶေႃႈမၵ်းမၼ်ႈ (The Requirements)
Swift တေႁဵတ်းပၼ် (Synthesize) လႆႈမိူဝ်ႈ:
1.  **Structs:** Property ၵူႈတူဝ်တေလႆႈပဵၼ် Equatable/Hashable ဝႆႉယူႇယဝ်ႉ။
2.  **Enums:** သင်မၼ်းမီး Associated Values ၼႆ Values ၸိူဝ်းၼၼ်ႉၵေႃႈတေလႆႈပဵၼ် Equatable/Hashable ၶႃႈ။
3.  **Classes:** **ဢမ်ႇလႆႈၶႃႈ** (Classes တေဢမ်ႇလႆႈ Synthesized Implementation၊ ႁဝ်းတေလႆႈတႅမ်ႈ Logic ၼိူင်းၵၼ်ႁင်းၵူၺ်း ၵွပ်ႈမၼ်းပဵၼ် Reference Type ၶႃႈ)။

---