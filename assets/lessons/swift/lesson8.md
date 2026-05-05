## Lesson 8: Basic Error Handling with assert and precondition (Developer Safety)

ၼႂ်း Swift ၼႆႉ လွင်ႈ "Error Handling" ဢၼ်တေႉမၼ်း (Real Error Handling) တေမီးယူႇၼႂ်း Module 8 ၶႃႈ။ 
ၵူၺ်းၵႃႈ တီႈတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈ **Developer Safety Tools** ဢၼ်ၸွႆးႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈႁဝ်းတႅမ်ႈ Code ၽိတ်းပိူင်ႈ (Logic Error) မိူဝ်ႈတႄႇသၢင်ႈ App ၼၼ်ႉယဝ်ႉ။

### 1. `assert` (ၵၢၼ်ၵူတ်ႇထတ်းမိူဝ်ႈ Debugging)
`assert` မၢႆထိုင် "ၵၢၼ်ယိုၼ်ယၼ်" ၼႆယဝ်ႉ။ ႁဝ်းၸႂ်ႉမၼ်းတွၼ်ႈတႃႇၵူတ်ႇထတ်းဝႃႈ ၶေႃႈမုၼ်း ဢၼ်ႁဝ်းလႆႈမႃးၼၼ်ႉ မၼ်းမၢၼ်ႇမႅၼ်ႈၸွမ်းၼင်ႇႁဝ်းၶႂ်ႈလႆႈႁႃႉ။

*   **လွင်ႈၶိုၵ်ႉတွၼ်း:** `assert` တေႁဵတ်းၵၢၼ်မိူဝ်ႈႁဝ်းတႅမ်ႈ Code (Debug Mode) ၵူၺ်း။ ပေႃးႁဝ်းထုတ်ႇ App ပၼ် User ၸႂ်ႉတႄႉ (Release Mode) ၼၼ်ႉ မၼ်းတေဢမ်ႇႁဵတ်းၵၢၼ်ယဝ်ႉ။

```swift
let layoutCount = -1
assert(layoutCount >= 0, "မၢႆ layout တေလႆႈယႂ်ႇလိူဝ် ဢမ်ႇၼၼ် မိူၼ်ၵၼ်တင်း 0")
// ပေႃး layoutCount ပဵၼ် -1 တႄႉ App တေၵိုတ်း (Halt) ၵမ်းလဵဝ်ယဝ်ႉ။
```

---

### 2. `precondition` (ၵၢၼ်မၵ်းမၼ်ႈဢၼ်လူဝ်ႇမီးၵူႈပွၵ်ႈ)
`precondition` မိူၼ်ၵၼ်တင်း `assert` ၵူၺ်းၵႃႈ မၼ်း**ႁဵတ်းၵၢၼ်တင်း Debug လႄႈ Release Mode** ယဝ်ႉ။ 
ပေႃးဝႃႈ ဢမ်ႇၶႂ်ႈႁႂ်ႈ ၶေႃႈမုၼ်း ၽိတ်းပိူင်ႈ မိူဝ်ႈတႄႇမၼ်းၸိုင် ႁဝ်းၸႂ်ႉလႆႈၼႆႉယဝ်ႉ။

```swift
let age = -5
precondition(age >= 0, "ဢႃႇယုၵူၼ်း တေဢမ်ႇလႆႈဢေႇလိူဝ် 0")
```

---

### 3. `assertionFailure` လႄႈ `preconditionFailure`
ပေႃးႁဝ်းႁူႉဝႃႈ Logic ၼႂ်း Code ႁဝ်း ဢမ်ႇလူဝ်ႇမႃးထိုင်တီႈၼႆႉလႆႈ (Never happen) ႁဝ်းၸႂ်ႉ 2 တူဝ်ၼႆႉ တွၼ်ႈတႃႇသင်ႇႁႂ်ႈ App ၵိုတ်းၵမ်းလဵဝ်လႆႈၶႃႈ။

```swift
let currentLayout = "Unknown"

if currentLayout == "Standard" {
    // ႁဵတ်းၵၢၼ်
} else {
    assertionFailure("Layout ဢၼ်ၼႆႉ ဢမ်ႇမီးၼႂ်းသဵၼ်ႈမၢႆႁဝ်း!")
}
```

---

### 4. ၵွပ်ႈသင် Developer လူဝ်ႇၸႂ်ႉ?
1.  **Catch bugs early:** ႁႂ်ႈႁဝ်းႁၼ်လွင်ႈၽိတ်းပိူင်ႈ တင်ႈတႄႇမိူဝ်ႈတႅမ်ႈ Code။
2.  **Documentation:** မၼ်းပဵၼ်ၵၢၼ်လၢတ်ႈၼႄ Developer တၢင်ႇၵေႃႉဝႃႈ "ၶေႃႈမုၼ်းတွၼ်ႈၼႆႉ လူဝ်ႇမီးၵႃႈၶၼ်ၸိူင်ႉၼႆၵူၺ်းၼႃ" ၼႆယဝ်ႉ။

---