## Lesson 70: Sendable Types: Safely Passing Data Between Threads

ၼႂ်းၵၢၼ်ႁဵတ်းၵၢၼ် Concurrency, ပၼ်ႁႃလူင်မၼ်းပဵၼ်ၵၢၼ်သူင်ႇၶေႃႈมูล (Data) ၶၢမ်ႈၵႂႃႇၶၢမ်ႈမႃးဝူင်ႇၵၢင် Threads။ သင်ႁဝ်းသူင်ႇ Object ဢၼ် "မႄးလႆႈ" (Mutable Reference Type) ၵႂႃႇၸူးလၢႆလၢႆတီႈ၊ မၼ်းတေၵတ်ႉ Data Race ၵမ်းလဵဝ်။

**Sendable** ပဵၼ် Protocol ဢၼ်ၸွႆးမၵ်းမၼ်ႈဝႃႈ "Type ဢၼ်ၼႆႉ လွတ်ႈၽေးယူႇ တွၼ်ႈတႃႇသူင်ႇၶၢမ်ႈ Thread" ၶႃႈ။



### 1. Type ဢၼ်ပဵၼ် Sendable ဝႆႉယူႇယဝ်ႉ
Swift မၵ်းမၼ်ႈပၼ် Type ပိုၼ်ႉထၢၼ်ၸိူဝ်းၼႆႉႁင်းၵူၺ်း ၵွပ်ႈမၼ်းပဵၼ် Value Type ဢၼ်ထုၵ်ႇ Copy ၵႂႃႇသေ ဢမ်ႇမီးပၼ်ႁႃ Shared State:
*   **Value Types:** `Int`, `String`, `Bool`, `Double`.
*   **Collections:** `Array`, `Dictionary`, `Optional` (သင်ဝႃႈ Element ၽၢႆႇၼႂ်းမၼ်းပဵၼ် Sendable)။
*   **Actors:** ၵွပ်ႈ Actor ၵုမ်းထိင်းၵၢၼ် Access ႁင်းၵူၺ်းမၼ်းဝႆႉယဝ်ႉ။

### 2. ၵၢၼ်သၢင်ႈ Custom Sendable Types
တွၼ်ႈတႃႇ Struct ႁဝ်း တေပဵၼ် Sendable လႆႈ၊ Property ၵူႈတူဝ်ၼႂ်းမၼ်း တေလႆႈပဵၼ် Sendable ၸွမ်းၶႃႈ။

```swift
struct KeyboardKey: Sendable {
    let label: String
    let code: Int
    // ✅ လွတ်ႈၽေး ၵွပ်ႈ String လႄႈ Int ပဵၼ် Sendable လႄႈ မၼ်းပဵၼ် 'let' (Immutable)
}
```

---

### 3. Classes လႄႈ Sendable
Classes ၵႆႉပဵၼ်တူဝ်ဢၼ်မီးပၼ်ႁႃ ၵွပ်ႈမၼ်းပဵၼ် Reference Type။ Class တေပဵၼ် Sendable လႆႈၵေႃႈတေႃႇမိူဝ်ႈ:
1.  မၼ်းပဵၼ် **`final` class** (ဢမ်ႇမီးၵၢၼ်သိုပ်ႇၸိူဝ်ႉၽၼ်း)။
2.  မၼ်းမီး Property ဢၼ်ပဵၼ် **`let` (Constant)** ၵူၺ်း လႄႈ Property ၸိူဝ်းၼၼ်ႉတေလႆႈပဵၼ် Sendable။

```swift
final class StaticTheme: Sendable {
    let themeName: String
    init(name: String) { self.themeName = name }
}
```

---

### 4. ၵွပ်ႈသင်လူဝ်ႇ Sendable?
1.  **Compiler Enforcement:** ၼႂ်း Swift 6, သင်ၸၢႆးမၢဝ်းၶတ်းၸႂ်သူင်ႇ Type ဢၼ်ဢမ်ႇၸႂ်ႉ Sendable ၶၢမ်ႈ Actor ဢမ်ႇၼၼ် ၶၢမ်ႈ Task, Compiler တေ Error ၵမ်းလဵဝ်။
2.  **Concurrency Safety:** ၸွႆးႁႂ်ႈႁဝ်းမၼ်ႈၸႂ်ဝႃႈ ၶေႃႈมูลဢၼ်ႁဝ်းသူင်ႇၵႂႃႇ Background Thread ၼၼ်ႉ တေဢမ်ႇထုၵ်ႇမႄးလႅၵ်ႈလၢႆႈ တီႈ Main Thread ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ်။
3.  **Data Integrity:** ႁႄႉၵင်ႈၶေႃႈมูลလူႉ (Data Corruption)။

---