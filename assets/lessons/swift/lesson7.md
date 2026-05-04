## Lesson 7: Type Aliases: Making Code More Descriptive for Developers

ၼႂ်းလိၵ်ႈ Swift ၼႆႉ **Type Alias** မၢႆထိုင် "ၵၢၼ်တင်ႈၸိုဝ်ႈမႂ်ႇ" ႁႂ်ႈမဵဝ်းၶေႃႈမုၼ်း (Type) ဢၼ်မီးဝႆႉယူႇယဝ်ႉၼၼ်ႉၶႃႈ။ 
မၼ်းတေၸွႆးႁႂ်ႈ Code ႁဝ်းမီး "Context" ဢမ်ႇၼၼ် ပွင်ႇၸႂ်ငၢႆႈလိူဝ်ၵဝ်ႇ တွၼ်ႈတႃႇ Developer ၶႃႈယဝ်ႉ။

### 1. Syntax ၵၢၼ်ၸႂ်ႉတိုဝ်း
ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း `typealias` ၸွမ်းလူၺ်ႈၸိုဝ်ႈမႂ်ႇ ဢၼ်ႁဝ်းၶႂ်ႈလႆႈယဝ်ႉ သႂ်ႇ `=` ၸွမ်းလူၺ်ႈ Type တႄႇတႄႇမၼ်းၶႃႈ။

```swift
typealias ShanCharacter = String
typealias LayoutID = Int

let primaryKey: ShanCharacter = "ၵ"
let currentLayout: LayoutID = 1
```
*   **တၢင်းလီ:** ပေႃးႁဝ်းလူ `ShanCharacter` ႁဝ်းတေႁူႉၵမ်းလဵဝ်ဝႃႈ String ဢၼ်ၼႆႉ ၸႂ်ႉတွၼ်ႈတႃႇတူဝ်လိၵ်ႈတႆး၊ မၼ်းလီလိူဝ်သေတႅမ်ႈ `String` ၵူၺ်းၼၼ်ႉၶႃႈ။

---

### 2. ၵၢၼ်ၸႂ်ႉၸွမ်း Numeric Types
မိူဝ်ႈႁဝ်းႁဵတ်း App ဢၼ်ၵဵဝ်ႇလူၺ်ႈၵၢၼ်ငိၼ်းၶမ်း ဢမ်ႇၼၼ် ၵႃႈၶၼ်ပၼ်ၵၢၼ် (Price) ႁဝ်းၸၢင်ႈၸႂ်ႉ Type Alias ႁႂ်ႈမၼ်းၸႅၵ်ႇလႅင်းလႆႈၶႃႈ။

```swift
typealias Kyat = Double

let keyboardPrice: Kyat = 1500.0
```

---

### 3. ၵၢၼ်ၸႂ်ႉၸွမ်း Complex Types
ဢၼ်ၼႆႉတေလႆႈၸႂ်ႉၼမ် မိူဝ်ႈႁဝ်းႁဵၼ်းထိုင်လွင်ႈ **Closures** ဢမ်ႇၼၼ် **Tuples** ၶႃႈ။ တႅၼ်းဢၼ်တေတႅမ်ႈ Type ယၢဝ်းယၢဝ်းသမ်ႉၵူႈပွၵ်ႈ ႁဝ်းမၵ်းမၼ်ႈၸိုဝ်ႈမၼ်းဝႆႉငၢႆႈငၢႆႈလႆႈယဝ်ႉ။

```swift
typealias KeyboardMapping = [String: String]

let namkhoneMap: KeyboardMapping = ["a": "ႃ", "s": "သ"]
```

---

### 4. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Type Alias?
1.  **Readability:** Code လူငၢႆႈလိူဝ်ၵဝ်ႇ ၵွပ်ႈၸိုဝ်ႈမၼ်းမၵ်းမၼ်ႈထိုင်ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ။
2.  **Maintainability:** ပေႃးဝၼ်းၼိုင်ႈ ႁဝ်းၶႂ်ႈလႅၵ်ႈ `LayoutID` ၼၼ်ႉ တေဢမ်ႇၸႂ်ႉ `Int` ယဝ်ႉ၊ တေလႅၵ်ႈပဵၼ် `String` ၼႆ ႁဝ်းမႃးလႅၵ်ႈတီႈ `typealias` တီႈလဵဝ်ၵေႃႈ လႅၵ်ႈပၼ်တင်း Project ယဝ်ႉ။

---

### 5. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း သွၼ်လုၵ်ႈႁဵၼ်းၼၼ်ႉ: ႁႂ်ႈၸႂ်ႉ Type Alias မိူဝ်ႈႁဝ်းၶႂ်ႈမၵ်းမၼ်ႈ 'Domain' ၶေႃႈมูล ႁဝ်းၶႃႈ။ မိူၼ်ၼင်ႇ `typealias StudentID = String` ၼႆ မၼ်းတေၸွႆးႁႂ်ႈလုၵ်ႈႁဵၼ်း ဢမ်ႇယုင်ႈယၢင်ႈတင်း String တူဝ်ဢမ်ႇၵဵဝ်ႇၶေႃၼၼ်ႉယဝ်ႉ။"**

---