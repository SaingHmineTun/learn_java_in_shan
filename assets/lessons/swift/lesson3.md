## Lesson 3: Numeric Types: Handling Integers, Doubles, and Type Safety

ၼႂ်းလိၵ်ႈ Swift ၼႆႉ တူဝ်ၼပ်ႉ (Numbers) မၼ်းမီးလွင်ႈၸႅၵ်ႇလႅင်းလီတႄႉတႄႉ။ 
Swift တေဢမ်ႇပၼ်ႁဝ်းဢဝ်တူဝ်ၼပ်ႉ မဵဝ်းဢၼ်ဢမ်ႇမိူၼ်ၵၼ်မႃး "ႁူမ်ႈၵၼ်" ႁင်းၵူၺ်း 
တွၼ်ႈတႃႇႁၵ်ႉသႃလွင်ႈတႅတ်ႈတေႃး (Precision) ယဝ်ႉ။

### 1. Integers (တူဝ်เลขတဵမ်)
ၸႂ်ႉတႃႇတူဝ်เลขဢၼ်ဢမ်ႇမီးၸုတ်း (Decimal)။ ဢၼ်ႁဝ်းၸႂ်ႉၼမ်ပိူၼ်ႈတႄႉပဵၼ် `Int` ယဝ်ႉ။ ၼႂ်း Apple Devices ၵူႈပၢၼ်ၼႆႉ `Int` တေမၵ်းမၼ်ႈပဵၼ် 64-bit ႁင်းၵူၺ်းၶႃႈ။

```swift
let keyCount = 30         // Swift ႁူႉဝႃႈပဵၼ် Int
let rowCount: Int = 4     // တႅမ်ႈ Type Annotation ဝႆႉၵေႃႈလႆႈ
```

### 2. Floating-Point Numbers (တူဝ်เลขမီးၸုတ်း)
မိူဝ်ႈလူဝ်ႇၸႂ်ႉတူဝ်ၼပ်ႉ ဢၼ်မီးၸုတ်း ၼႂ်း Swift မီး 2 မဵဝ်း:
*   **Double:** ၸႂ်ႉတႃႇတူဝ်เลขဢၼ်လူဝ်ႇလွင်ႈတႅတ်ႈတေႃးသုင် (64-bit floating-point)။ Swift တေလၢမ်းပဵၼ် Double ၵမ်းသိုဝ်ႈ ပေႃးႁဝ်းသႂ်ႇၸုတ်း။
*   **Float:** ၸႂ်ႉတႃႇတူဝ်เลขဢၼ်ဢမ်ႇလူဝ်ႇလွင်ႈတႅတ်ႈတေႃးသုင်ၼႃႇ (32-bit floating-point)။

```swift
let version = 1.0         // Swift တေလၢမ်းပဵၼ် Double ႁင်းၵူၺ်း
let pi: Double = 3.14159
```

---

### 3. Numeric Type Safety (လွင်ႈလွတ်ႈၽေးမိူဝ်ႈၼပ်ႉသွၼ်ႇ)
ဢၼ်ၼႆႉပဵၼ်ဢၼ်ထူးပိူၼ်ႈၶႃႈ။ Swift တေဢမ်ႇပၼ်ႁဝ်းဢဝ် `Int` မႃးလေႃး (Add) ၸူး `Double` ႁင်းၵူၺ်း။ 
ႁဝ်းလူဝ်ႇလႅၵ်ႈ (Convert) မၼ်းပဵၼ်မဵဝ်းလဵဝ်ၵၼ်ဢွၼ်တၢင်း။

```swift
let integerFive = 5
let doublePointFive = 0.5

// let total = integerFive + doublePointFive // ❌ Error: ဢဝ် Int လႄႈ Double မႃးႁူမ်ႈၵၼ်ၵမ်းသိုဝ်ႈဢမ်ႇလႆႈ
let total = Double(integerFive) + doublePointFive // ✅ Success: 5.5
```

---

### 4. Numeric Literals (လၢႆးတႅမ်ႈတူဝ်เลขႁႂ်ႈလူငၢႆႈ)
တွၼ်ႈတႃႇတူဝ်เลขဢၼ်ၼမ်ၼႃႇ ႁဝ်းၸႂ်ႉ `_` (Underscore) တႅမ်ႈၶၼ်ႈဝႆႉလႆႈ တွၼ်ႈတႃႇႁႂ်ႈလူငၢႆႈ (Compiler တေဢမ်ႇဢၢၼ်ႇ `_` ၼၼ်ႉၶႃႈ)။

```swift
let population = 1_000_000 // လူငၢႆႈလိူဝ်သေ 1000000
let padding = 000123.450   // သႂ်ႇသုၼ် (Zero) ၽၢႆႇၼႃႈၵေႃႈလႆႈ
```

---

### 5. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"ၸႂ်ႉ `Int` တွၼ်ႈတႃႇၼပ်ႉဢၢၼ်ႇၵူႈပိူင်။ ၸႂ်ႉ `Double` တွၼ်ႈတႃႇတူဝ်เลขမီးၸုတ်း ၵွပ်ႈဝႃႈ Apple မၵ်းမၼ်ႈႁႂ်ႈပဵၼ် Standard ယဝ်ႉ။ ပေႃးလူဝ်ႇၼပ်ႉသွၼ်ႇၵၼ် လူဝ်ႇလႅၵ်ႈ Type (Explicit Conversion) မၼ်းၵူႈပွၵ်ႈၶႃႈ။"**

---