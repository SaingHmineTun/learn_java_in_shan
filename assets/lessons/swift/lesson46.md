## Lesson 46: Property Observers: Reacting to Data Changes with willSet and didSet

**Property Observer** ပဵၼ် Code ဢၼ်တေႁဵတ်းၵၢၼ် ၵူႈပွၵ်ႈ မိူဝ်ႈၵႃႈၶၼ် Property ၼၼ်ႉထုၵ်ႇလႅၵ်ႈလၢႆႈယဝ်ႉ။
ႁဝ်းၸၢင်ႈၸႂ်ႉမၼ်းလႆႈတင်း **Stored Properties** ယဝ်ႉ။

Swift မီး Observers ယူႇ 2 မဵဝ်း ၼင်ႇၼႆယဝ်ႉ:

### 1. willSet (တေလႅၵ်ႈယဝ်ႉၼႃ)
မၼ်းတေႁဵတ်းၵၢၼ် **ဢွၼ်တၢင်း** ဢၼ်ၵႃႈၶၼ်မႂ်ႇ တေထုၵ်ႇၵဵပ်းဝႆႉ။
*   ၸႂ်ႉ Constant **`newValue`** တွၼ်ႈတႃႇတူၺ်းၵႃႈၶၼ်ဢၼ်တေမႃးမႂ်ႇ။

### 2. didSet (လႅၵ်ႈယဝ်ႉယဝ်ႉၶႃႈ)
မၼ်းတေႁဵတ်းၵၢၼ် **ဝၢႆးလင်** ဢၼ်ၵႃႈၶၼ်မႂ်ႇ ထုၵ်ႇၵဵပ်းဝႆႉယဝ်ႉ။
*   ၸႂ်ႉ Constant **`oldValue`** တွၼ်ႈတႃႇတူၺ်းၵႃႈၶၼ်ဢၼ်မီးဝႆႉမိူဝ်ႈၵဝ်ႇ။

```swift
struct KeyboardTheme {
    var brightness: Int = 50 {
        willSet {
            print("တေလႅၵ်ႈသီလႅင်းပဵၼ်: \(newValue)")
        }
        didSet {
            if brightness > 100 {
                print("Error: လႅင်းၼမ်ပူၼ်ႉၵႂႃႇယဝ်ႉ! တေပၼ်ပဵၼ် 100 ၵူၺ်း")
                brightness = 100 // ၸၢင်ႈမႄးၵႃႈၶၼ်ၶိုၼ်းၼႂ်း didSet
            }
            print("လႅၵ်ႈယဝ်ႉယဝ်ႉ။ လႅင်းမိူဝ်ႈၵဝ်ႇပဵၼ်: \(oldValue)")
        }
    }
}

var myTheme = KeyboardTheme()
myTheme.brightness = 80
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Property Observers?
1.  **UI Updates:** မိူဝ်ႈ Variable လႅၵ်ႈ ႁႂ်ႈၼႃႈတႃ App (UI) လႅၵ်ႈၸွမ်းၵမ်းလဵဝ်။
2.  **Validation:** ၵူတ်ႇထတ်းၶေႃႈမုၼ်းဢွၼ်တၢင်း မိူဝ်ႈပႆႇလႅၵ်ႈၶေႃႈမုၼ်း။
3.  **Synchronization:** မိူဝ်ႈလႅၵ်ႈ Variable တူဝ်ၼိုင်ႈ ႁႂ်ႈမၼ်းၵႂႃႇသင်ႇ Variable ထႅင်ႈတူဝ်ၼိုင်ႈလႅၵ်ႈၸွမ်း။

---