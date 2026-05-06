## Lesson 15: Collection Protocols: Understanding Indexing and Sequences

ၼႂ်းလိၵ်ႈ Swift ၼႆႉ Array, Dictionary, လႄႈ Set တင်းသဵင်ႈၼၼ်ႉ မၼ်းမီး "ပၵ်းပဝ်း" (Protocols) ဢၼ်မိူၼ်ၵၼ်ဝႆႉယူႇၽၢႆႇတႂ်ႈမၼ်းယဝ်ႉ။ 
ၵွပ်ႈၼၼ် ႁဝ်းၸင်ႇၸႂ်ႉ `.count` ဢမ်ႇၼၼ် `.isEmpty` လႆႈမိူၼ်ၵၼ်တင်းသဵင်ႈၼၼ်ႉၶႃႈယဝ်ႉ။

### 1. Sequence Protocol
**Sequence** မၢႆထိုင် ၶေႃႈမုၼ်း ဢၼ်ႁဝ်းၸၢင်ႈ "ဢၢၼ်ႇၸွမ်းၶပ်ႉထႅဝ်" (Iterate) လႆႈယဝ်ႉ။ 
ပေႃးမဵဝ်းၶေႃႈမုၼ်း conforms ၸူး Protocol ၼႆႉၼႆ ႁဝ်းတေၸႂ်ႉ `for-in` loop ဢၢၼ်ႇတူၺ်းမၼ်းလႆႈၵူႈပွၵ်ႈယဝ်ႉ။

```swift
let keys = ["ၵ", "ၶ", "င"]
for key in keys {
    print(key)
}
```

---

### 2. Collection Protocol
**Collection** ၼႆႉ မၼ်းသိုပ်ႇမႃးၼႂ်း Sequence ထႅင်ႈၵမ်းၼိုင်ႈ။ မၼ်းမၵ်းမၼ်ႈဝႃႈ ၶေႃႈမုၼ်းၼၼ်ႉ လူဝ်ႇမီး:
*   **StartIndex** လႄႈ **EndIndex** (မၢႆတႄႇလႄႈမၢႆသုတ်း)။
*   **Subscripting:** ၵၢၼ်ၸႂ်ႉ `[]` တွၼ်ႈတႃႇႁႃၶေႃႈမုၼ်းၸွမ်းမၢႆ Index။

```swift
let firstKey = keys[keys.startIndex]
let lastIndex = keys.index(before: keys.endIndex)
```

---

### 3. Indexing in Collections
ဢၼ်ၼႆႉပဵၼ်လွင်ႈသတိၶႃႈ။ ၼႂ်း Array ၼႆႉ မၢႆ Index တေပဵၼ်တူဝ်ၼပ်ႉ (0, 1, 2) ၶႃႈ။
ၵူၺ်းၵႃႈၼႂ်း **String** ၼၼ်ႉ Swift ဢမ်ႇပၼ်ႁဝ်းၸႂ်ႉ `Int` မႃးႁႃ Index ၵမ်းသိုဝ်ႈ (မိူၼ်ၼင်ႇ `myString[0]`) ၶႃႈ။
ၵွပ်ႈဝႃႈ Unicode တူဝ်လိၵ်ႈတႆးႁဝ်း မၼ်းမီးတူဝ်ၼမ်ဢမ်ႇမိူၼ်ၵၼ်လႄႈ Swift ၸင်ႇလူဝ်ႇၸႂ်ႉ `String.Index` တႅၼ်းၶႃႈ။

```swift
let word = "တႆး"
let firstChar = word[word.startIndex] // "တ"
```

---