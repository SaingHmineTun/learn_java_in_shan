## Lesson 37: Optional Chaining: Safely Calling Methods on Optional Values

**Optional Chaining** ပဵၼ်လၢႆးႁွင်ႉၸႂ်ႉ Properties, Methods, ဢမ်ႇၼၼ် Subscripts ၼိူဝ် Optional ဢၼ်ၸၢင်ႈပဵၼ် `nil` ယဝ်ႉ။ 
ပေႃးဝႃႈ Variable ၼၼ်ႉပဵၼ် `nil` ၼႆ သၢႆၸိူၵ်ႈ (Chain) ၼၼ်ႉတေ "ၶၢတ်ႇ" သေ သူင်ႇၵႃႈၶၼ် `nil` ဢွၵ်ႇမႃး လူၺ်ႈဢမ်ႇႁဵတ်းႁႂ်ႈ App Crash ယဝ်ႉ။

ႁဝ်းၸႂ်ႉမၢႆ **`?`** ဝႆႉၽၢႆႇၼႃႈ `.` (Dot notation) ယဝ်ႉ။

### 1. Syntax ၵၢၼ်ၸႂ်ႉတိုဝ်း
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Keyboard ဢၼ်ၸၢင်ႈမီး `Theme` ဢမ်ႇၼၼ် ဢမ်ႇမီးၵေႃႈလႆႈ ၼႆလႄႈ။

```swift
class Theme {
    var name = "Shan Classic"
}

class Keyboard {
    var theme: Theme?
}

let myKeyboard = Keyboard()

// Optional Chaining: ၵူတ်ႇထတ်း theme ဢွၼ်တၢင်း ၸင်ႇၵႂႃႇဢဝ် name
let themeName = myKeyboard.theme?.name 

print(themeName) // Output: nil (ၵွပ်ႈပႆႇလႆႈမၵ်းမၼ်ႈ theme)
```

---

### 2. ၵၢၼ်ႁွင်ႉ Method လူၺ်ႈ Optional Chaining
သင်ဝႃႈ Optional ပဵၼ် `nil` ၼႆ Method ၼၼ်ႉ တေဢမ်ႇႁဵတ်းၵၢၼ်ယဝ်ႉလႄႈ တေပၼ်ႁဝ်းမႃး nil ယဝ်ႉ။

```swift
myKeyboard.theme?.updateColors() // သင် theme ပဵၼ် nil, Method ၼႆႉတေဢမ်ႇႁဵတ်းၵၢၼ်သင်
```

### 3. ၵၢၼ်သူင်ႇၵႃႈၶၼ်ဢွၵ်ႇ (Result Type)
**ၵႃႈၶၼ် ဢၼ်ဢွၵ်ႇမႃးၼႂ်း Optional Chaining တေပဵၼ် Optional သေႇသေႇ** ဢမ်ႇဝႃႈ Property တူဝ်ၼၼ်ႉ တေပဵၼ် Optional ႁႃႉ ဢမ်ႇပဵၼ်ၵေႃႈယဝ်ႉ။

*   မိူၼ်ၼင်ႇ `theme.name` ပဵၼ် `String`၊ ၵူၺ်းၵႃႈ `theme?.name` တေပဵၼ် **`String?`** ယဝ်ႉ။

---