## Lesson 19: Advanced Pattern Matching: The Exhaustive switch Statement

ၼႂ်းလိၵ်ႈ Swift ၼႆႉ **`switch`** ဢမ်ႇၸႂ်ႈၵူၺ်းပဵၼ်လၢႆးၵူတ်ႇထတ်း `if-else` ယၢဝ်းယၢဝ်း၊ 
ၵူၺ်းၵႃႈမၼ်းပဵၼ် **Pattern Matching** ဢၼ်မီးႁႅင်းတႄႉတႄႉ။ 
လွင်ႈၶိုၵ်ႉတွၼ်းမၼ်းသုတ်းတႄႉ ပဵၼ်လွင်ႈဢၼ်မၼ်းတေလႆႈ **Exhaustive** (ၵူတ်ႇထတ်းပၼ်ၵူႈသၢႆငၢႆ ဢမ်ႇပၼ်ႁႂ်ႈမီး ဢၼ်ၵိုတ်းလွတ်ႈ) ယဝ်ႉ။

### 1. Exhaustiveness (ၵၢၼ်ၵူတ်ႇထတ်းႁႂ်ႈၵူႈပိူင်)
Swift တေၸွႆးၵူတ်ႇထတ်းဝႃႈ ႁဝ်းတႅမ်ႈ `case` ႁပ်ႉလႆႈၵူႈသၢႆငၢႆယဝ်ႉႁႃႉ။ 
သင်ဝႃႈပႆႇၼႆ ႁဝ်းလူဝ်ႇသႂ်ႇ `default` တွၼ်ႈတႃႇႁပ်ႉဢဝ်သၢႆငၢႆဢၼ်ၵိုတ်းလိူဝ်တင်းသဵင်ႈယဝ်ႉ။

```swift
let selectedLayout = "Namkhone"

switch selectedLayout {
case "Standard":
    print("ၸႂ်ႉ Layout Standard")
case "Namkhone":
    print("ၸႂ်ႉ Layout Namkhone")
case "Panglong":
    print("ၸႂ်ႉ Layout Panglong")
default:
    print("ဢမ်ႇမီး Layout ၼႆႉၶႃႈ")
}
```

---

### 2. Multiple Conditions (ၵၢၼ်ႁူမ်ႈ Case)
ႁဝ်းၸၢင်ႈဢဝ်လၢႆလၢႆ Case မႃးႁူမ်ႈၵၼ်ဝႆႉၼႂ်းထႅဝ်လဵဝ်လႆႈလူၺ်ႈ ၸႂ်ႉတိုဝ်း `,` (Comma) ၶၼ်ႈဝႆႉၶႃႈ။

```swift
let character = "ၵ"

switch character {
case "ၵ", "ၶ", "င", "ၸ":
    print("ၼႆႉပဵၼ် တူဝ်မႄႈလိၵ်ႈတႆး")
case "ႃ", "ီ", "ူ":
    print("ၼႆႉပဵၼ် မၢႆသဵင် / သရ")
default:
    print("တူဝ်လိၵ်ႈတၢင်ႇမဵဝ်း")
}
```

---

### 3. Interval Matching (ၵၢၼ်ၵူတ်ႇထတ်းၸွမ်းသဵၼ်ႈမၢႆ)
ႁဝ်းၸၢင်ႈၸႂ်ႉ `...` (Range) တွၼ်ႈတႃႇၵူတ်ႇထတ်းတူဝ်ၼပ်ႉလႆႈငၢႆႈငၢႆႈၶႃႈ။

```swift
let score = 85

switch score {
case 0..<50:
    print("ဢမ်ႇပူၼ်ႉ (Fail)")
case 50...100:
    print("ပူၼ်ႉယဝ်ႉ (Pass)")
default:
    print("မၢႆၶႅၼ်းဢမ်ႇမၢၼ်ႇမႅၼ်ႈ")
}
```

---

### 4. No Implicit Fallthrough
ၼႂ်း Swift ၼႆႉ ပေႃးမၼ်းႁဵတ်းၵၢၼ်ၼႂ်း `case` ၼိုင်ႈဢၼ်ယဝ်ႉတူဝ်ႈယဝ်ႉ မၼ်းတေ**ဢွၵ်ႇ** (Exit) ၼႂ်း `switch` ၵႂႃႇၵမ်းလဵဝ်။ 
မၼ်းဢမ်ႇမိူၼ်ၼင်ႇလိၵ်ႈ C ဢမ်ႇၼၼ် Java ဢၼ်တေလူင်းၵႂႃႇႁဵတ်း `case` ၽၢႆႇတႂ်ႈသိုပ်ႇၵၼ် (Fallthrough) ၶႃႈ။
ပေႃးႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းလူင်းၵႂႃႇ ႁဝ်းတေလႆႈၸႂ်ႉၶေႃႈၵႂၢမ်း `fallthrough` ႁင်းၵူၺ်းၶႃႈ။

```swift
let keyStep = 2

switch keyStep {
case 1:
    print("Step 1: တႄႇပိုတ်ႇ Keyboard")
    fallthrough
case 2:
    print("Step 2: လိူၵ်ႈ Layout တႆး")
    fallthrough
case 3:
    print("Step 3: တႅမ်ႈလိၵ်ႈလႆႈယဝ်ႉ")
default:
    print("ယဝ်ႉတူဝ်ႈ")
}

// ၽွၼ်းလႆႈ (Output):
// Step 2: လိူၵ်ႈ Layout တႆး
// Step 3: တႅမ်ႈလိၵ်ႈလႆႈယဝ်ႉ
```
---
