## Lesson 36: Nil-Coalescing: Providing Smart Defaults with ??

**Nil-Coalescing** ပဵၼ်ၵၢၼ်ပိုတ်ႇ Optional လူၺ်ႈၵၢၼ်လၢတ်ႈဝႃႈ: *"သင်ဝႃႈၼႂ်းၵွၵ်းၼႆႉ မီးၶေႃႈမုၼ်း ႁႂ်ႈဢဝ်ၶေႃႈမုၼ်းၼၼ်ႉၸႂ်ႉသေ
သင်ဝႃႈမၼ်းပဵၼ် nil ႁႂ်ႈဢဝ် **'ၵႃႈၶၼ်'** ဢၼ်မၵ်းမၼ်ႈဝႆႉၼၼ်ႉ ၸႂ်ႉတႅၼ်းၵႂႃႇၼႆယဝ်ႉ"*။

ႁဝ်းၸႂ်ႉမၢႆ **`??`** (Double question marks) ယဝ်ႉ။

### 1. Syntax ၵၢၼ်ၸႂ်ႉတိုဝ်း
```swift
let optionalValue: String? = nil
let result = optionalValue ?? "Default Value"
```

### 2. တူဝ်ယၢင်ႇတႄႉ (Real Example)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈၼႄၸိုဝ်ႈ User လႄႈ သင်ဝႃႈမၼ်းပဵၼ် `nil` ၼႆၸိုင် ႁဝ်းတေၼႄဝႃႈ "Guest" ၼႆယဝ်ႉ။

```swift
var username: String? = nil

// ပေႃး username ပဵၼ် nil, display တေပဵၼ် "Guest"
let displayName = username ?? "Guest"

print("Welcome, \(displayName)!") 
// Output: Welcome, Guest!
```



---

### 3. ၵွပ်ႈသင်လၢႆးၼႆႉသမ်ႉလီ?
1.  **Compact:** ႁဵတ်းႁႂ်ႈ Code ဢၼ်လူဝ်ႇတႅမ်ႈ `if let` ယၢဝ်းယၢဝ်း (One-liner)။
2.  **Safety:** မၼ်းပၼ်ၵႃႈၶၼ် (Non-optional) မႃးသေႇသေႇလႄႈ ႁဵတ်းႁႂ်ႈႁဝ်းဢဝ်ၵႂႃႇၸႂ်ႉလႆႈငၢႆႈငၢႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇၵူဝ် App Crash။
3.  **Readability:** လူငၢႆႈ လႄႈ ပွင်ႇၸႂ်ငၢႆႈဝႃႈ "သင်ဢမ်ႇမီး ႁႂ်ႈဢဝ်ဢၼ်ၼႆႉ"။

---