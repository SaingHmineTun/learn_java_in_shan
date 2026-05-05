## Lesson 4: Booleans and Logical Operators in Swift

ၼႂ်း Swift ၼႆႉ `Bool` (Boolean) ပဵၼ်မဵဝ်းၶေႃႈမုၼ်း ဢၼ်ငၢႆႈလိူဝ်ပိူၼ်ႈယဝ်ႉ။
ၵူၺ်းၵႃႈ လုမ်ႈၾႃႉ IT ႁဝ်းႁဵတ်းၵၢၼ်လႆႈၵေႃႈ ယွၼ်ႉမၼ်းယဝ်ႉ။ 
ၼႂ်း Bool ၼၼ်ႉ မၼ်းမီးၵႃႈၶၼ် 2 ပိူင်ၵူၺ်း: `true` (ၸႂ်/မၢၼ်ႇ) လႄႈ `false` (ဢမ်ႇၸႂ်/ၽိတ်း) ယဝ်ႉ။

### 1. Boolean Basics
Swift ပဵၼ် Type Safety လႄႈ မၼ်းတေဢမ်ႇပၼ်ႁဝ်းၸႂ်ႉ တူဝ်ၼပ်ႉ 0 ဢမ်ႇၼၼ် 1 မႃးတႅၼ်း `true/false` မိူၼ်ၼင်ႇလိၵ်ႈ C ဢမ်ႇၼၼ် Python ယဝ်ႉ။

```swift
let isShanKeyboard = true
let isThaiKeyboard = false

// Swift တေႁူႉဝႃႈပဵၼ် Bool ႁင်းၵူၺ်း (Type Inference)
```

### 2. Logical Operators (တူဝ်ၼပ်ႉသွၼ်ႇပၢႆးဝူၼ်ႉ)
မီး 3 မဵဝ်းဢၼ်ႁဝ်းၸႂ်ႉၼမ်ပိူၼ်ႈ:
*   **NOT (`!`):** ပိၼ်ႈၵႃႈၶၼ် (ပေႃးပဵၼ် true တေပဵၼ် false)
*   **AND (`&&`):** တေပဵၼ် true လႆႈၵေႃႈ တေႃႇမိူဝ်ႈတင်းသွင်ၽၢႆႇပဵၼ် true ၵူၺ်း။
*   **OR (`||`):** ပေႃးမီး သေၽၢႆႇၽၢႆႇပဵၼ် true ၵေႃႈ မၼ်းတေပဵၼ် true ယဝ်ႉ။

```swift
let hasPermission = true
let isInternetConnected = false

let canDownload = hasPermission && isInternetConnected // false
let canUseOffline = hasPermission || isInternetConnected // true
let isNotConnected = !isInternetConnected               // true
```

---

### 3. Comparison Operators (တူဝ်ၼိူင်းၵၼ်)
မိူဝ်ႈႁဝ်းၼိူင်းတူဝ်ၼပ်ႉၵၼ်ၼၼ်ႉ မၼ်းတေဢွၵ်ႇမႃးပဵၼ် `Bool` ၵူႈပွၵ်ႈယဝ်ႉ။
*   `==` (မိူၼ်ၵၼ်), `!=` (ဢမ်ႇမိူၼ်ၵၼ်)
*   `>` (ယႂ်ႇလိူဝ်), `<` (လဵၵ်ႉလိူဝ်)
*   `>=` (ယႂ်ႇလိူဝ် ဢမ်ႇၼၼ် မိူၼ်ၵၼ်), `<=` (လဵၵ်ႉလိူဝ် ဢမ်ႇၼၼ် မိူၼ်ၵၼ်)

```swift
let currentVersion = 3
let latestVersion = 4
let needsUpdate = currentVersion < latestVersion // true
```

---

### 4. Toggle Method
ၼႂ်း Swift မီး Function ဢၼ်ႁွင်ႉဝႃႈ `.toggle()` ဢၼ်ၸွႆးႁႂ်ႈႁဝ်းပိၼ်ႈၵႃႈၶၼ် Boolean လႆႈငၢႆႈငၢႆႈယဝ်ႉ။

```swift
var isShiftEnabled = false
isShiftEnabled.toggle() // တေပဵၼ် true
isShiftEnabled.toggle() // တေပဵၼ် false ၶိုၼ်း
```

---