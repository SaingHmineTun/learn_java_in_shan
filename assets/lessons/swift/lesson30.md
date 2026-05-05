## Lesson 30: Closures (Part 2): Trailing Closures and Shorthand Syntax

မိူဝ်ႈႁဝ်းပွင်ႇၸႂ်ပိုၼ်ႉထၢၼ် Closure ယဝ်ႉ၊ Swift ယັງမီးလၢႆးတႅမ်ႈဢၼ်ၸွႆးလူတ်းလွင်ႈယုင်ႈယၢင်ႈ ႁႂ်ႈၵူၼ်းတႅမ်ႈ Code ၸႂ်သဝ်းလိူဝ်ၵဝ်ႇယဝ်ႉ။

### 1. Trailing Closure Syntax
သင်ဝႃႈ Closure ပဵၼ် **Parameter တူဝ်သုတ်း** ၶေႃ Function၊ ႁဝ်းၸၢင်ႈဢဝ်မၼ်းဝႆႉ "ၽၢႆႇၼွၵ်ႈ" ဝူင်းလႅမ်ႈ `()` လႆႈၶႃႈ။ ဢၼ်ၼႆႉႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူငၢႆႈလိူဝ်ၵဝ်ႇတႄႉတႄႉ။

```swift
// လၢႆးတႅမ်ႈထမ်ႇမတႃႇ
func performAction(action: () -> Void) {
    action()
}

// ၸႂ်ႉ Trailing Closure (ဢဝ်ဝႆႉၼွၵ်ႈဝူင်းလႅမ်ႈ)
performAction {
    print("Action performed!")
}
```

---

### 2. Shorthand Argument Names
Swift ပၼ်ႁဝ်းၸႂ်ႉ **`$0`**, **`$1`**, **`$2`** တွၼ်ႈတႃႇတိုင်ႈတႅၼ်း Argument တူဝ်တီႈ 1, 2, 3... ၼၼ်ႉယဝ်ႉ။ ပေႃးၸႂ်ႉလၢႆးၼႆႉ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈၸိုဝ်ႈ Parameter လႄႈ ၶေႃႈၵႂၢမ်း `in` ၵေႃႈလႆႈယဝ်ႉ။

```swift
let numbers = [5, 2, 8, 1, 9]

// လၢႆးတႅမ်ႈဢၼ်ပွတ်းသုတ်း (Shorthand)
let sortedNumbers = numbers.sorted { $0 > $1 }

print(sortedNumbers) // [9, 8, 5, 2, 1]
```



---

### 3. Operator Methods
တွၼ်ႈတႃႇၵၢၼ်ၼပ်ႉသွၼ်ႇငၢႆႈငၢႆႈ (မိူၼ်ၼင်ႇ > ဢမ်ႇၼၼ် <)၊ Swift ယັງပၼ်ႁဝ်းသူင်ႇၵူၺ်း **Operator** မၼ်းၵႂႃႇၵေႃႈလႆႈၶႃႈ!

```swift
let evenShorter = numbers.sorted(by: >)
```

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ႁဝ်းတေလႆႈၸႂ်ႉ Shorthand Syntax ၼႆႉၼမ်တႄႉတႄႉ မိူဝ်ႈႁဝ်းၸႂ်ႉ `filter` တွၼ်ႈတႃႇႁႃတူဝ်လိၵ်ႈၼႂ်း Dictionary။ မိူၼ်ၼင်ႇ `keys.filter { $0.hasPrefix("ၵ") }`။ မၼ်းႁဵတ်းႁႂ်ႈ Code ႁဝ်းသႅၼ်ႈသႂ် လႄႈ ၽႂ်းၽၢႆတႄႉတႄႉၶႃႈ။"**

---