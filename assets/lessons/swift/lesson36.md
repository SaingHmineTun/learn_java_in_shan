## Lesson 36: Nil-Coalescing: Providing Smart Defaults with ??

**Nil-Coalescing** ပဵၼ်ၵၢၼ်ပိုတ်ႇ Optional လူၺ်ႈၵၢၼ်လၢတ်ႈဝႃႈ: *"သင်ဝႃႈၼႂ်းၵွၵ်းၼႆႉ မီးၶေႃႈมูล ႁႂ်ႈဢဝ်ၶေႃႈมูลၼၼ်ႉၸႂ်ႉ၊ ၵူၺ်းၵႃႈ သင်ဝႃႈမၼ်းပဵၼ် nil ႁႂ်ႈဢဝ် **'ၵႃႈၶၼ်ထမ်ႇမတႃႇ' (Default Value)** ဢၼ်ၵဝ်မၵ်းမၼ်ႈဝႆႉၼၼ်ႉၸႂ်ႉတႅၼ်းၵႂႃႇလႆႈယဝ်ႉ"*။

ႁဝ်းၸႂ်ႉမၢႆ **`??`** (Double question marks) ၶႃႈ။

### 1. Syntax ၵၢၼ်ၸႂ်ႉတိုဝ်း
```swift
let optionalValue: String? = nil
let result = optionalValue ?? "Default Value"
```

### 2. တူဝ်ယၢင်ႇတႄႉ (Real Example)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈၼႄၸိုဝ်ႈ User၊ သင်ဝႃႈမၼ်းပဵၼ် `nil` ႁဝ်းတေၼႄဝႃႈ "Guest" တႅၼ်းၶႃႈ။

```swift
var username: String? = nil

// ပေႃး username ပဵၼ် nil, display တေပဵၼ် "Guest"
let displayName = username ?? "Guest"

print("Welcome, \(displayName)!") 
// Output: Welcome, Guest!
```



---

### 3. ၵွပ်ႈသင်လၢႆးၼႆႉသမ်ႉလီ?
1.  **Compact:** ႁဵတ်းႁႂ်ႈ Code ဢၼ်လူဝ်ႇတႅမ်ႈ `if let` ယၢဝ်းယၢဝ်းၼၼ်ႉ ၵိုတ်းၵူၺ်းထႅဝ်လဵဝ် (One-liner)။
2.  **Safety:** မၼ်းပၼ်ၵႃႈၶၼ် (Non-optional) မႃးသေႇသေႇ၊ ႁဵတ်းႁႂ်ႈႁဝ်းဢဝ်ၵႂႃႇၸႂ်ႉလႆႈငၢႆႈငၢႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇၵူဝ် App Crash။
3.  **Readability:** လူငၢႆႈ လႄႈ ပွင်ႇၸႂ်ငၢႆႈဝႃႈ "သင်ဢမ်ႇမီး ႁႂ်ႈဢဝ်ဢၼ်ၼႆႉ"။

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸႂ်ႉ `??` မိူဝ်ႈလူဝ်ႇမၵ်းမၼ်ႈ 'သီ (Color)' ၶေႃ Keyboard။ မိူၼ်ၼင်ႇ `let bgColor = userPickedColor ?? .gray`။ ပေႃး User ပႆႇလႆႈလိူၵ်ႈသီသင်ဝႆႉ (ပဵၼ် `nil`) Keyboard ႁဝ်းၵေႃႈတေပဵၼ်သီထဝ်ႇ (Gray) ဢၼ်ပဵၼ် Default ၼၼ်ႉၵမ်းသိုဝ်ႈယဝ်ႉ။"**

---