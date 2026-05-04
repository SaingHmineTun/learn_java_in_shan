## Lesson 2: Type Inference and the Safety Net of Static Typing

ၼႂ်းလိၵ်ႈ Swift ၼႆႉ မၼ်းပဵၼ် **Strongly Typed Language**။ မၼ်းမၢႆထိုင်ဝႃႈ တူဝ်ပႅတ်ႉ (Variable) ၵူႈဢၼ် လူဝ်ႇမီးမဵဝ်းမၼ်း (Type) ဢၼ်ၼႅၼ်ႈၼႃ။ ၵူၺ်းၵႃႈ Swift သမ်ႉမီးလွင်ႈလႅတ်းၽၢႆ (Smart) တႄႉတႄႉ ဢၼ်ႁဝ်းႁွင်ႉဝႃႈ **Type Inference** ၼၼ်ႉယဝ်ႉ။



### 1. Type Inference (ၵၢၼ်လၢမ်းထိုင်မဵဝ်းၶေႃႈมูล)
မိူဝ်ႈႁဝ်းသၢင်ႈ Variable ၼၼ်ႉ ႁဝ်းဢမ်ႇတႅမ်ႈမဵဝ်း (Type) မၼ်းဝႆႉၵေႃႈလႆႈ။ Swift တေတူၺ်းၵႃႈၶၼ် (Value) မၼ်းသေ လၢမ်းပၼ်ႁင်းၵူၺ်းဝႃႈ မၼ်းပဵၼ်မဵဝ်းသင်။

```swift
let appName = "Wann Kart" // Swift ႁူႉဝႃႈပဵၼ် String ႁင်းၵူၺ်း
var releaseYear = 2026    // Swift ႁူႉဝႃႈပဵၼ် Int (Integer) ႁင်းၵူၺ်း
let isActive = true       // Swift ႁူႉဝႃႈပဵၼ် Bool (Boolean) ႁင်းၵူၺ်း
```

### 2. Explicit Type Annotation (ၵၢၼ်မၵ်းမၼ်ႈမဵဝ်းၶေႃႈมูล ႁင်းၵူၺ်း)
သင်ဝႃႈႁဝ်းၶႂ်ႈမၵ်းမၼ်ႈမဵဝ်းမၼ်းႁင်းၵူၺ်း (တွၼ်ႈတႃႇႁႂ်ႈ Code ႁဝ်းလူငၢႆႈ ဢမ်ႇၼၼ် ၸႅၵ်ႇလႅင်းလီ) ႁဝ်းၸႂ်ႉလၢႆးတႅမ်ႈ `:` (Colon) သေၸွမ်းလူၺ်ႈၸိုဝ်ႈ Type မၼ်းၶႃႈ။

```swift
let developerName: String = "Sai Mao"
var versionNumber: Double = 1.0
```

---

### 3. Type Safety (လွင်ႈလွတ်ႈၽေးလူၺ်ႈမဵဝ်းၶေႃႈมูล)
Swift တေဢမ်ႇပၼ်ႁဝ်းသႂ်ႇ ၶေႃႈมูล ဢၼ်မဵဝ်းမၼ်းဢမ်ႇမိူၼ်ၵၼ်။ မၼ်းတေၸွႆးႁႂ်ႈ App ႁဝ်းဢမ်ႇၶႅပ်ႉ (Crash) မိူဝ်ႈႁဵတ်းၵၢၼ်ၼၼ်ႉယဝ်ႉ။

```swift
var score = 100        // Swift မၵ်းမၼ်ႈပဵၼ် Int
// score = "Excellent" // ❌ Error: တေဢဝ် String မႃးသႂ်ႇၼႂ်း Int ဢမ်ႇလႆႈ
```

---

### 4. Static Typing (ၵၢၼ်ၵူတ်ႇထတ်းမိူဝ်ႈတႅမ်ႈလိၵ်ႈ)
ၵွပ်ႈပဵၼ် **Static Typing** လႄႈ Compiler ၶူင်းၵၢၼ်တေၵူတ်ႇထတ်းပၼ် တင်ႈတႄႇမိူဝ်ႈႁဝ်းတႅမ်ႈ Code ယူႇၼၼ်ႉယဝ်ႉ။ ပေႃးမီးလွင်ႈၽိတ်းပိူင်ႈ Type မၼ်း ႁဝ်းတေႁူႉလႆႈၵမ်းလဵဝ် ဢမ်ႇလူဝ်ႇမွၼ်ႈ (Run) တူၺ်း App ၵေႃႈလႆႈၶႃႈ။

---

### 5. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း သွၼ်လုၵ်ႈႁဵၼ်းၼၼ်ႉ:
> **"ပေႃးၵႃႈၶၼ် (Value) မၼ်းၸႅၵ်ႇလႅင်းယူႇၼႆ ၸႂ်ႉ Type Inference (ဢမ်ႇတႅမ်ႈ Type) ၵေႃႈလႆႈ။ ၵူၺ်းၵႃႈ ပေႃးပဵၼ် Variable ဢၼ်ပႆႇမီးၵႃႈၶၼ် (Value) မိူဝ်ႈတႄႇသၢင်ႈၼၼ်ႉ လူဝ်ႇလႆႈတႅမ်ႈ Type Annotation ဝႆႉထႃႈယူႇယဝ်ႉ။"**

```swift
var studentName: String // တႅမ်ႈဝႆႉထႃႈ ၵွပ်ႈပႆႇႁူႉၸိုဝ်ႈလုၵ်ႈႁဵၼ်း
studentName = "Zai"    // ၸင်ႇမႃးသႂ်ႇၵႃႈၶၼ်မၼ်းၽၢႆႇလင်
```

---