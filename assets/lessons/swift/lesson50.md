## Lesson 50: Extensions: Adding Functionality to Existing Types

**Extensions** ၸွႆးႁႂ်ႈႁဝ်းသႂ်ႇ Method ၊ Computed Properties လႄႈ Initializers မႂ်ႇမႂ်ႇ ၶဝ်ႈၵႂႃႇၼႂ်း Type ဢၼ်မီးဝႆႉၼၼ်ႉယဝ်ႉ (Existing Type)။ 
လွင်ႈၶိုၵ်းတွၼ်းမၼ်းတေႉၵေႃႈ **ႁဝ်းဢမ်ႇလူဝ်ႇမီး Code ငဝ်ႈတႄႇ (Source Code)** မၼ်း တွၼ်ႈတႃႇ မူၼ်ႉမႄးတႅမ်ႈမၼ်းယဝ်ႉ။

### 1. Syntax ၵၢၼ်ၸႂ်ႉတိုဝ်း
ႁဝ်းၸႂ်ႉ Keyword `extension` လႄႈ ၸႂ်ႉၸွမ်းၸိုဝ်ႈ Type ဢၼ်ႁဝ်းၶႂ်ႈမႄးယဝ်ႉ။

```swift
extension Int {
    // သႂ်ႇ Method မႂ်ႇပၼ် Int ၵူႈတူဝ်
    func squared() -> Int {
        return self * self
    }
}

let number = 5
print(number.squared()) // Output: 25
```

---

### 2. ၵၢၼ်ၸႂ်ႉ Extension တွၼ်ႈတႃႇ Protocol
ႁဝ်းၸၢင်ႈၸႂ်ႉ Extension တွၼ်ႈတႃႇႁဵတ်းႁႂ်ႈ Type ၼၼ်ႉ "ႁဵတ်းၸွမ်း" (Conform) Protocol မဵဝ်းမဵဝ်း ႁႂ်ႈ Code ႁဝ်းသႅၼ်ႈသႂ်လိူဝ်ၵဝ်ႇယဝ်ႉ။

```swift
struct ShanUser {
    var name: String
}

// ၸႅၵ်ႇ Code ဢၼ်ၵဵဝ်ႇၵပ်း Protocol ဢွၵ်ႇမႃးဝႆႉၼႂ်း Extension
extension ShanUser: CustomStringConvertible {
    var description: String {
        return "User name is \(name)"
    }
}
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Extension?
1.  **Code Organization:** ၸွႆးႁႂ်ႈႁဝ်းၸႅၵ်ႇ Code ဢွၵ်ႇပဵၼ်တွၼ်ႈ ပဵၼ်ပဝ်း (မိူၼ်ၼင်ႇ ၸႅၵ်ႇ Code တွၼ်ႈတႃႇ UI လႄႈ တွၼ်ႈတႃႇ Logic)။
2.  **Retroactive Modeling:** ႁဝ်းၸၢင်ႈသႂ်ႇၼမ်ႉၵတ်ႉပၼ် Type ဢၼ် Apple တႅမ်ႈဝႆႉ (မိူၼ်ၼင်ႇ String, Int, UIView) ႁႂ်းမၼ်းႁဵတ်းၵၢၼ်ၸွမ်းၼင်ႇႁဝ်းၶႂ်ႈလႆႈ။
3.  **Clean Initializers:** သင်ႁဝ်းသႂ်ႇ `init` ၼႂ်း Extension၊ Struct ႁဝ်းတေယင်းၸၢင်ႈၸႂ်ႉ Memberwise Initializer ဢၼ် Swift တႅမ်ႈပၼ်ႁင်းၵူၺ်းၼၼ်ႉလႆႈယူႇၶႃႈ။

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸၢႆးမၢဝ်းၸၢင်ႈတႅမ်ႈ Extension ပၼ် `String` တွၼ်ႈတႃႇၵူတ်ႇထတ်းဝႃႈ 'တူဝ်လိၵ်ႈၼႆႉ ပဵၼ်လိၵ်ႈတႆးယူႇႁႃႉ?'။ မိူၼ်ၼင်ႇ `extension String { var isShan: Bool { ... } }`။ ပေႃးႁဵတ်းၼႆယဝ်ႉ၊ တီႈလႂ်ၵေႃႈယႃႇ ၼႂ်း App ၸၢႆးမၢဝ်း ၸၢင်ႈႁွင်ႉၸႂ်ႉ `.isShan` ၵပ်း String ၵူႈတူဝ်လႆႈငၢႆႈငၢႆႈယဝ်ႉၶႃႈ။"**

---