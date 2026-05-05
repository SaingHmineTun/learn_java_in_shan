## Lesson 2: Type Inference and the Safety Net of Static Typing

Swift ၼႆႉ မၼ်းပဵၼ် **Strongly Typed Language** ယဝ်ႉ။ မၼ်းမၢႆထိုင်ဝႃႈ တူဝ် Variable ၵူႈဢၼ် လူဝ်ႇမီးမဵဝ်းမၼ်း (Type) ဢၼ်ၼႅၼ်ႈၼႃ ၼႆယဝ်ႉ။
ၵူၺ်းၵႃႈ Swift သမ်ႉမီးလွင်ႈလႅတ်းၽၢႆ (Smart) တႄႉတႄႉ ဢၼ်ႁဝ်းႁွင်ႉဝႃႈ **Type Inference** ၼၼ်ႉယဝ်ႉ။



### 1. Type Inference (ၵၢၼ်လၢမ်းထိုင်မဵဝ်းၶေႃႈမုၼ်း)
မိူဝ်ႈႁဝ်းသၢင်ႈ Variable ၼၼ်ႉ ႁဝ်းဢမ်ႇတႅမ်ႈမဵဝ်း (Type) မၼ်းဝႆႉၵေႃႈလႆႈ။ Swift တေတူၺ်းၵႃႈၶၼ် (Value) မၼ်းသေ လၢမ်းပၼ်ႁင်းၵူၺ်းဝႃႈ မၼ်းပဵၼ်မဵဝ်းသင် ၼႆယဝ်ႉ။

```swift
let appName = "Wann Kart" // Swift ႁူႉဝႃႈပဵၼ် String ႁင်းၵူၺ်း
var releaseYear = 2026    // Swift ႁူႉဝႃႈပဵၼ် Int (Integer) ႁင်းၵူၺ်း
let isActive = true       // Swift ႁူႉဝႃႈပဵၼ် Bool (Boolean) ႁင်းၵူၺ်း
```

### 2. Explicit Type Annotation (ၵၢၼ်မၵ်းမၼ်ႈမဵဝ်းၶေႃႈมูล ႁင်းၵူၺ်း)
သင်ဝႃႈႁဝ်းၶႂ်ႈမၵ်းမၼ်ႈမဵဝ်းမၼ်းႁင်းၵူၺ်း (တွၼ်ႈတႃႇႁႂ်ႈ Code ႁဝ်းလူငၢႆႈ ဢမ်ႇၼၼ် ၸႅၵ်ႇလႅင်းလီ) ႁဝ်းၸႂ်ႉလၢႆးတႅမ်ႈ `:` (Colon) သေ ၸွမ်းလူၺ်ႈၸိုဝ်ႈ Type မၼ်းၶႃႈ။

```swift
let developerName: String = "Sai Mao"
var versionNumber: Double = 1.0
```

---

### 3. Type Safety (လွင်ႈလွတ်ႈၽေးလူၺ်ႈမဵဝ်းၶေႃႈมูล)
Swift တေဢမ်ႇပၼ်ႁဝ်းသႂ်ႇ ၶေႃႈမုၼ်း ဢၼ်မဵဝ်းမၼ်းဢမ်ႇမိူၼ်ၵၼ်ၶႃႈ။ မၼ်းတေၸွႆးႁႂ်ႈ App ႁဝ်းဢမ်ႇလု (Crash) မိူဝ်ႈႁဵတ်းၵၢၼ်ၼၼ်ႉယဝ်ႉ။

```swift
var score = 100        // Swift မၵ်းမၼ်ႈပဵၼ် Int
// score = "Excellent" // ❌ Error: တေဢဝ် String မႃးသႂ်ႇၼႂ်း Int ဢမ်ႇလႆႈ
```

---

### 4. Static Typing (ၵၢၼ်ၵူတ်ႇထတ်းမိူဝ်ႈတႅမ်ႈလိၵ်ႈ)
ၵွပ်ႈပဵၼ် **Static Typing** လႄႈ Compiler ၶူင်းၵၢၼ် တေၵူတ်ႇထတ်းပၼ် တင်ႈတႄႇမိူဝ်ႈႁဝ်းတႅမ်ႈ Code ယူႇၼၼ်ႉယဝ်ႉ။
ပေႃးမီးလွင်ႈၽိတ်းပိူင်ႈ Type မၼ်း ႁဝ်းတေႁူႉလႆႈၵမ်းလဵဝ် ဢမ်ႇလူဝ်ႇလႅၼ်ႈ (Run) တူၺ်း App ၵေႃႈလႆႈၶႃႈ။

---