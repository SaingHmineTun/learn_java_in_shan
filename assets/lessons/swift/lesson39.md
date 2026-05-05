## Lesson 39: Optional Mapping: Transforming Values Inside an Optional

ၵမ်းမၢင် ႁဝ်းမီး Optional ဢၼ်မီးၶေႃႈมูลယူႇၽၢႆႇၼႂ်း သေႁဝ်းၶႂ်ႈလႅၵ်ႈမၼ်းပဵၼ်ထႅင်ႈမဵဝ်းၼိုင်ႈ (မိူၼ်ၼင်ႇ လႅၵ်ႈတူဝ်လိၵ်ႈဢွၼ်ႇ ပဵၼ်တူဝ်လိၵ်ႈလူင်)။ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`.map`** တွၼ်ႈတႃႇႁဵတ်းၵၢၼ်ၼႆႉ လႆႈငၢႆႈငၢႆႈၶႃႈ။

### 1. `.map` (ၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈมูล)
`.map` တေၵူတ်ႇထတ်းဝႃႈ:
*   သင်ပဵၼ် `nil` -> မၼ်းတေဢမ်ႇႁဵတ်းသင် သေသူင်ႇ `nil` ဢွၵ်ႇမႃးမိူၼ်ၵဝ်ႇ။
*   သင်မီးၶေႃႈมูล -> မၼ်းတေပိုတ်ႇၵွၵ်း၊ ဢဝ်ၶေႃႈมูลၼၼ်ႉၵႂႃႇႁဵတ်းၵၢၼ် (Transform)၊ ယဝ်ႉၸင်ႇႁေႃႇမၼ်းပဵၼ် Optional ၶိုၼ်းၶႃႈ။

```swift
let name: String? = "sai mao"

// လႅၵ်ႈပဵၼ်တူဝ်လိၵ်ႈလူင် (Uppercase)
let upperName = name.map { $0.uppercased() }

print(upperName) // Output: Optional("SAI MAO")
```

### 2. `.flatMap` (မိူဝ်ႈၵၢၼ်လႅၵ်ႈလၢႆႈသူင်ႇ Optional ဢွၵ်ႇမႃး)
သင်ဝႃႈၼႂ်း Closure ႁဝ်းၼၼ်ႉ မၼ်းသူင်ႇ Optional ဢွၵ်ႇမႃးထႅင်ႈၸၼ်ႉၼိုင်ႈၼႆ ႁဝ်းလူဝ်ႇၸႂ်ႉ **`.flatMap`** တွၼ်ႈတႃႇဢမ်ႇႁႂ်ႈမၼ်းပဵၼ် "Optional သႂ်ႇၼႂ်း Optional" (Double nested optional) ၶႃႈ။

```swift
let input: String? = "123"

// Int(input) မၼ်းသူင်ႇ Int? ဢွၵ်ႇမႃး၊ ႁဝ်းၸင်ႇၸႂ်ႉ flatMap
let number = input.flatMap { Int($0) }

print(number) // Output: Optional(123)
```

---

### 3. ၵွပ်ႈသင်လၢႆးၼႆႉသမ်ႉလီ?
1.  **Functional Style:** ႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူငၢႆႈ လႄႈ ဢမ်ႇလူဝ်ႇတႅမ်ႈ `if let` ယၢဝ်းယၢဝ်း။
2.  **Chaining:** ႁဝ်းၸၢင်ႈၸႂ်ႉ `.map` သိုပ်ႇၵၼ်လၢႆလၢႆၸၼ်ႉလႆႈငၢႆႈငၢႆႈ။
3.  **Safety:** မၼ်းၸွႆးႁႄႉၵင်ႈ `nil` ႁင်းၵူၺ်း (Auto nil-handling)။

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸႂ်ႉ `.map` မိူဝ်ႈလူဝ်ႇလႅၵ်ႈလၢႆႈတူဝ်လိၵ်ႈ ဢၼ် User ၼိပ်ႉ (မိူၼ်ၼင်ႇ လႅၵ်ႈတူဝ် 'ၵ' ပဵၼ် 'ၵႃ')။ သင် User ပႆႇၼိပ်ႉသင် (ပဵၼ် nil) Code ႁဝ်းၵေႃႈတေဢမ်ႇႁဵတ်းၵၢၼ်သင် လႄႈ ဢမ်ႇ Crash ၶႃႈယဝ်ႉ။"**

---