## Lesson 35: Optional Binding: Mastering if let and guard let

**Optional Binding** ပဵၼ်လၢႆးၵူတ်ႇထတ်းဝႃႈ "ၼႂ်းၵွၵ်းၼၼ်ႉ မီးၶေႃႈမုၼ်းယူႇႁႃႉ?" 
သင်ဝႃႈမီး ႁႂ်းပိုတ်ႇမၼ်းဢွၵ်ႇမႃး သႂ်ႇၼႂ်း Constant တူဝ်မႂ်ႇသေ ပၼ်ႁဝ်းၸႂ်ႉလႆႈ **လူၺ်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉမၢႆ `!`** ၼႆယဝ်ႉ။

### 1. if let (ၵူတ်ႇထတ်းယဝ်ႉၸင်ႇၸႂ်ႉ)
လၢႆးၼႆႉတေၸွႆးႁႂ်ႈႁဝ်းၸႂ်ႉၶေႃႈမုၼ်းလႆႈ ၼႂ်းၶွပ်ႇၶဝ်ႈသွႆး `{ }` ၶေႃ `if` ၼၼ်ႉၵူၺ်း။

```swift
var keyboardTheme: String? = "Dark Mode"

if let theme = keyboardTheme {
    // theme တေပဵၼ် String (ဢမ်ႇၸႂ် Optional ယဝ်ႉ)
    print("ၸႂ်ႉ Theme: \(theme)")
} else {
    // ပဵၼ် nil 
    print("ဢမ်ႇပႆႇလႆႈလိူၵ်ႈ Theme ၶႃႈ")
}
```

### 2. guard let (ၵူတ်ႇထတ်းသေ ဢွၵ်ႇၵႂႃႇဢွၼ်တၢင်း)
လၢႆးၼႆႉႁဝ်းၸႂ်ႉၼႂ်း Function တွၼ်ႈတႃႇႁဵတ်း **Early Exit** ယဝ်ႉ။
လွင်ႈၶိုၵ်ႉတွၼ်းမၼ်းတႄႉ Constant ဢၼ်ႁဝ်းပိုတ်ႇဢွၵ်ႇမႃးၼၼ်ႉ တေၸႂ်ႉလႆႈ **ၵူႈတီႈ** ၽၢႆႇၼႂ်း Function ၼၼ်ႉယဝ်ႉ။

```swift
func processInput(text: String?) {
    guard let input = text else {
        print("Error: ဢမ်ႇမီးတူဝ်လိၵ်ႈၶဝ်ႈမႃးၶႃႈ")
        return
    }
    
    // input တေၸႂ်ႉလႆႈၵူႈထႅဝ်ၽၢႆႇတႂ်ႈၼႆႉ
    print("Processing: \(input)")
}
```



---

### 3. ၵွပ်ႈသင်လၢႆးၼႆႉသမ်ႉလီလိူဝ် `!`?
1.  **Safety:** App တေဢမ်ႇ Crash သေပွၵ်ႈ ၵွပ်ႈႁဝ်းမီး `else` တွၼ်ႈတႃႇၸတ်းၵၢၼ်မိူဝ်ႈပဵၼ် `nil` ဝႆႉယဝ်ႉ။
2.  **Clean Code:** ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈမၢႆ `!` ၸွမ်းၽၢႆႇလင် Variable ၵူႈတီႈ ၵူႈၶၢဝ်း။

---