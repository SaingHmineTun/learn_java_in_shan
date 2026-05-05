## Lesson 6: String Interpolation and Multi-line Literals

ၼႂ်းလိၵ်ႈ Swift ၼႆႉ လၢႆးဢၼ်ႁဝ်းတေဢဝ် Variable မႃးသႂ်ႇၼႂ်း String ၼၼ်ႉ မၼ်းငၢႆႈလႄႈမီးလွင်ႈလွတ်ႈၽေး (Safe) တႄႉတႄႉ။ 
ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉတူဝ် `+` မႃးသိုပ်ႇၵၼ်ႁႂ်ႈယုင်ႈယၢင်ႈၵေႃႈလႆႈယဝ်ႉ။

### 1. String Interpolation (ၵၢၼ်သႂ်ႇ Variable ၼႂ်း String)
ႁဝ်းၸႂ်ႉလၢႆးတႅမ်ႈ `\(variableName)` တွၼ်ႈတႃႇဢဝ်ၵႃႈၶၼ် (Value) မဵဝ်းလႂ်ၵေႃႈယႃႇ မႃးသႂ်ႇၼႂ်း String ၶႃႈ။

```swift
let layoutName = "Namkhone"
let version = 2.0

// ဢဝ်မႃးႁူမ်ႈၵၼ်
let message = "ၵမ်းၼႆႉ ၸႂ်ႉဝႆႉ Layout: \(layoutName) Version: \(version)"
print(message) 
// Output: ၵမ်းၼႆႉ ၸႂ်ႉဝႆႉ Layout: Namkhone Version: 2.0
```

*   **တၢင်းလီ:** Swift တေလႅၵ်ႈ (Convert) မဵဝ်းၶေႃႈမုၼ်း (Type) မိူၼ်ၼင်ႇ `Double` ဢမ်ႇၼၼ် `Int` ႁႂ်ႈပဵၼ် String ပၼ်ႁင်းၵူၺ်းယဝ်ႉ။

---

### 2. Multi-line String Literals (ၵၢၼ်တႅမ်ႈလိၵ်ႈလၢႆထႅဝ်)
မိူဝ်ႈႁဝ်းလူဝ်ႇတႅမ်ႈလိၵ်ႈယၢဝ်းယၢဝ်း ဢမ်ႇၼၼ် လူဝ်ႇၸႅၵ်ႇထႅဝ် (New line) ႁဝ်းၸႂ်ႉ `"""` (Triple quotes) ၶႃႈ။

```swift
let aboutApp = """
Shan Keyboard (TMK)
-------------------
- Developed by: Sai Mao
- Origin: Muse
- Layouts: 4 types
"""
print(aboutApp)
```

*   **သတိ (Warning):** တူဝ် `"""` ဢၼ်ပိတ်းၽၢႆႇတႂ်ႈၼၼ်ႉ မၼ်းမၵ်းမၼ်ႈဝႃႈ လိၵ်ႈႁဝ်းတေတႄႇ (Indent) တီႈလႂ်ၼႆယဝ်ႉ။ လူဝ်ႇလႆႈဝႆႉႁႂ်ႈမၼ်းသိုပ်ႇၵၼ်လီလီၶႃႈ။

---

### 3. Expressions inside Interpolation
ႁဝ်းဢမ်ႇၵူၺ်းသႂ်ႇလႆႈ Variable၊ ႁဝ်းႁဵတ်း ၵၢၼ်ၼပ်ႉသွၼ်ႇ (Expression) ၼႂ်း `\()` ၵေႃႈလႆႈယဝ်ႉ။

```swift
let price = 500
let discount = 50
print("ၵႃႈၶၼ်မၼ်းပဵၼ်: \(price - discount) ၵျၢတ်ႉၶႃႈ")
```

---

### 4. Special Characters (တူဝ်လိၵ်ႈၶိုၵ်ႉတွၼ်း)
*   `\n`: လူင်းထႅဝ်မႂ်ႇ
*   `\t`: ထႅပ်ႉ (Tab)
*   `\"`: သႂ်ႇၶေႃႈၵႂၢမ်းၼႂ်းၶွပ်ႇ (Double quote)

```swift
let quote = "Developer ၵမ်ႈၼမ် လၢတ်ႈဝႃႈ \"ႁဵၼ်း Swift ၼႆႉ လီၵျေႃႇတႄႉ\" ၼႆၶႃႈဝႃႇ"
```

---