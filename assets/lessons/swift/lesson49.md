## Lesson 49: Protocols: Defining Blueprints for Methods and Properties

**Protocol** ပဵၼ် "ၵႅၼ်ႇလိၵ်ႈ" ဢမ်ႇၼၼ် "ၶေႃႈတူၵ်းလူင်း" (Contract/Blueprint) ဢၼ်မၵ်းမၼ်ႈဝႃႈ: *"သင်ဝႃႈ Type လႂ် (Struct ဢမ်ႇၼၼ် Class) ၶႂ်ႈႁဵတ်းၸွမ်းၵဝ်ၼႆ၊ 
မၼ်းတေလႆႈမီး Property လႄႈ Method ၸိူဝ်းၼႆႉၼႃ"* ၼႆယဝ်ႉ။ ၵူၺ်းၵႃႈ Protocol **ဢမ်ႇတႅမ်ႈ Code ၽၢႆႇၼႂ်း** မၼ်းဝႆႉလႄႈ မၼ်းၵူၺ်းမၵ်းမၼ်ႈ "ၸိုဝ်ႈ" လႄႈ "ပိူင်" မၼ်းဝႆႉၵူၺ်း။

### 1. Syntax ၵၢၼ်သၢင်ႈ Protocol
ႁဝ်းၸႂ်ႉ Keyword `protocol` သေ မၵ်းမၼ်ႈ Property (လူဝ်ႇမၵ်းမၼ်ႈဝႃႈ { get } ဢမ်ႇၼၼ် { get set }) လႄႈ Method ဢၼ်တေလႆႈမီးဝႆႉယဝ်ႉ။

```swift
protocol KeyAction {
    var keyLabel: String { get } // တေလႆႈမီး Property ၼႆႉ (ဢၢၼ်ႇလႆႈ)
    func playSound()             // တေလႆႈမီး Method ၼႆႉ
}
```



---

### 2. Protocol Conformance (ၵၢၼ်ႁဵတ်းၸွမ်း)
မိူဝ်ႈႁဝ်းသၢင်ႈ Struct ဢမ်ႇၼၼ် Class ယဝ်ႉၼႆ ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈမၼ်း "Conformance" (ႁဵတ်းၸွမ်း) Protocol ၼၼ်ႉလႆႈယဝ်ႉ။
သင်ၼၼ် ၼႂ်း Struct ဢမ်ႇၼၼ် Class ၼၼ်ႉ တေလႆႈသၢင်ႈဝႆႉ Property လႄႈ Method ဢၼ် Protocol မၵ်းမၼ်ႈဝႆႉယဝ်ႉ။ 

```swift
struct NormalKey: KeyAction {
    var keyLabel: String
    
    func playSound() {
        print("Playing 'click' sound.")
    }
}

struct FunctionKey: KeyAction {
    var keyLabel: String
    
    func playSound() {
        print("Playing 'thump' sound.")
    }
}
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Protocol?
1.  **Polymorphism:** ႁဝ်းၸၢင်ႈၵဵပ်း Object ဢၼ်ပႅၵ်ႇၵၼ် (မိူၼ်ၼင်ႇ NormalKey လႄႈ FunctionKey) ဝႆႉၼႂ်း Array တူဝ်လဵဝ်ၵၼ်လႆႈ သင်ဝႃႈမၼ်းႁဵတ်းၸွမ်း Protocol `KeyAction` မိူၼ်ၵၼ်။
2.  **Decoupling:** ႁဵတ်းႁႂ်ႈ Code ႁဝ်းဢမ်ႇလူဝ်ႇႁူႉဝႃႈ Object ၼၼ်ႉပဵၼ် Type သင်သေ ႁူႉဝႃႈမၼ်း "ႁဵတ်းၵၢၼ်သင်လႆႈ" ၵူၺ်းၵေႃႈယဝ်ႉယဝ်ႉ။
3.  **Standardization:** ႁဵတ်းႁႂ်ႈ Code မီးပၵ်းပိူင်လီ ၵွပ်ႈၵူႈတူဝ်လူဝ်ႇလႆႈမီး Method ၸိုဝ်ႈလဵဝ်ၵၼ်။

---