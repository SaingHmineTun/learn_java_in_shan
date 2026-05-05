## Lesson 20: For-In Loops: Iterating Over Ranges and Collections

**`for-in`** loop ပဵၼ်လၢႆးဢၼ်ႁဝ်းၸႂ်ႉ "ဢၢၼ်ႇ" ၶေႃႈมูล ဢၼ်မီးပဵၼ်မူႇပဵၼ်ၸုမ်း (Collections) ဢမ်ႇၼၼ် ၸွမ်းၼင်ႇသဵၼ်ႈမၢႆတူဝ်เลข (Ranges) ယဝ်ႉ။ မၼ်းလူငၢႆႈ လႄႈ မီးလွင်ႈလွတ်ႈၽေးသုင်တႄႉတႄႉၶႃႈ။

### 1. Iterating Over Ranges (ၵၢၼ်ဢၢၼ်ႇၸွမ်းတူဝ်เลข)
ႁဝ်းၸႂ်ႉ `...` တွၼ်ႈတႃႇဢဝ်တင်းတူဝ်လင် ဢမ်ႇၼၼ် `..<` တွၼ်ႈတႃႇဢဝ်ဢေႇလိူဝ်တူဝ်လင် 1 တူဝ်ၶႃႈ။

```swift
// ဢၢၼ်ႇ 1 ထိုင် 5
for index in 1...5 {
    print("ပွၵ်ႈၵမ်း \(index)")
}

// ဢၢၼ်ႇ 1 ထိုင် 4 (ဢမ်ႇဢဝ် 5)
for i in 1..<5 {
    print("Value is \(i)")
}
```

---

### 2. Iterating Over Collections (ၵၢၼ်ဢၢၼ်ႇၼႂ်း Array/Set)
ဢၼ်ၼႆႉတေလႆႈၸႂ်ႉၼမ်ပိူၼ်ႈ တွၼ်ႈတႃႇဢဝ်တူဝ်လိၵ်ႈၼႂ်း Keyboard ႁဝ်းဢွၵ်ႇမႃးၼႄၶႃႈ။

```swift
let keyRow = ["ၵ", "ၶ", "င", "ၸ"]

for key in keyRow {
    print("ၼိပ်ႉ Key: \(key)")
}
```

---

### 3. Iterating Over Dictionaries
မိူဝ်ႈႁဝ်းဢၢၼ်ႇ Dictionary ၼၼ်ႉ Swift တေထုတ်ႇဢွၵ်ႇမႃးပဵၼ် **Tuple** (key, value) ႁႂ်ႈႁဝ်းၸႂ်ႉလႆႈငၢႆႈငၢႆႈၶႃႈ။

```swift
let layoutMap = ["a": "ႃ", "s": "သ"]

for (key, character) in layoutMap {
    print("ပေႃးၼိပ်ႉ \(key) တေဢွၵ်ႇ \(character)")
}
```

---

### 4. ၵၢၼ်ၸႂ်ႉ `_` (Wildcard)
သင်ဝႃႈႁဝ်းၶႂ်ႈႁဵတ်းၵၢၼ်မၢင်ပိူင် "လၢႆလၢႆပွၵ်ႈ" ၵူၺ်း၊ ၵူၺ်းၵႃႈဢမ်ႇလူဝ်ႇၸႂ်ႉတူဝ်เลข (Index) မၼ်းၼႆ ႁဝ်းၸႂ်ႉ `_` တႅၼ်းလႆႈၶႃႈ။

```swift
for _ in 1...3 {
    print("သွင်ႇသဵင် (Beep!)")
}
```

---

### 5. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸႂ်ႉ `for-in` မိူဝ်ႈလူဝ်ႇသၢင်ႈ UI Buttons ပၼ်တူဝ်လိၵ်ႈၵူႈတူဝ်ၼႂ်း Array။ မၼ်းတေႁဵတ်းႁႂ်ႈ Code ႁဝ်းဢမ်ႇယၢဝ်း လႄႈ ၸတ်းၵၢၼ်လႆႈငၢႆႈငၢႆႈယဝ်ႉ။"**

---