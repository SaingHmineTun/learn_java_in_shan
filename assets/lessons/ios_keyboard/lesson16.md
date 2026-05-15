
## တွၼ်ႈသွၼ် 16: Handwriting Logic (Visual to Logical Normalization)

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ Logic ဢၼ်တေၸွႆႈလႅၵ်ႈ "ေ" လႄႈ "ႄ" ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈၸွမ်း Unicode Standard ႁင်းမၼ်း
မိူဝ်ႈ User ပိုတ်ႇ "Handwriting Mode" ဝႆႉၼႂ်း App Setting ယဝ်ႉ။

### 1. ၵၢၼ်ၵူတ်ႇထတ်း Setting ၼႂ်း KeyboardViewModel

ႁဝ်းတေလႆႈၸႂ်ႉၵႃႈၶၼ် `isHandwritingEnabled` ဢၼ်ဢၢၼ်ႇမႃးတီႈ **App Group Shared Suite** မႃးတႅပ်းတတ်း Logic ၵၢၼ်တႅမ်ႈလိၵ်ႈယဝ်ႉ။

```swift
func handleInput(_ input: String, controller: UIInputViewController) {
    let proxy = controller.textDocumentProxy
    
    // ႁွင်ႉၸႂ်ႉ Feedback (Lesson 15)
    triggerFeedback() 
    
    // ✅ သင် User ပိုတ်ႇ Handwriting Mode (Visual Order Typing) ဝႆႉ
    if isHandwritingEnabled {
        
        // ၵူတ်ႇထတ်းဝႃႈ တူဝ်ဢၼ်ၼိပ်ႉၵႂႃႇၵမ်းလိုၼ်းၼၼ်ႉ ပဵၼ် "ေ" ႁိုဝ် "ႄ" ႁိုဝ်?
        if let lastChar = proxy.documentContextBeforeInput?.last, (lastChar == "ေ" || lastChar == "ႄ") {
            
            // သင်ၼိပ်ႉတူဝ် Consonant (ၵ-ႁ) ၸွမ်းမႃး
            if isConsonant(input) {
                proxy.deleteBackward()  // လိပ်း "ေ/ႄ" ဢွၵ်ႇၵွၼ်ႇ
                proxy.insertText(input)  // သႂ်ႇတူဝ်ဗျည်း (ၵ) ၶဝ်ႈၵႂႃႇ
                proxy.insertText(String(lastChar)) // ၸင်ႇဢဝ် "ေ/ႄ" မႃးသႂ်ႇလင် ႁႂ်ႈပဵၼ် Logical Order
                return
            }
        }
    }
    
    // သင်ပိတ်းဝႆႉ ဢမ်ႇၼၼ် ပဵၼ် Case ပၵ်းပိူင် ႁႂ်ႈသႂ်ႇတူဝ်လိၵ်ႈၵႂႃႇၵမ်းလဵဝ်
    proxy.insertText(input)
}

private func isConsonant(_ char: String) -> Bool {
    let consonants = ["ၵ", "ၶ", "င", "ၸ", "သ", "ၺ", "တ", "ထ", "ၼ", "ပ", "ၽ", "မ", "ယ", "ရ", "လ", "ဝ", "ႁ", "ဢ"]
    return consonants.contains(char)
}

```

---

### 2. ၵၢၼ်သႂ်ႇ Logic ၼႂ်း TMKKeyView

တွၼ်ႈတႃႇႁႂ်ႈပုမ်ႇၵူႈဢၼ်ၼႂ်း Keyboard ၸႂ်ႉ Logic ၼႆႉ၊ ႁဝ်းတေလႆႈမႄး `TMKKeyView` ဢိတ်းၼိုင်ႈၶႃႈ။

```swift
// ၼႂ်း TMKKeyView
Button(action: {
    // ✅ ၸႂ်ႉ Function ဢၼ်မီး Normalization Logic
    viewModel.handleInput(label, controller: controller)
}) {
    // ... UI ၶွင် Button ...
}

```

---

### 3. ပွင်ႇၸႂ်လွင်ႈ Normalization Engine

* **Handwriting Mode = OFF:** User တေလႆႈၼဵၵ်ႉ **ၵ + ေ = ၵေ** (Logical Order)။ သင်ၼဵၵ်ႉ **ေ + ၵ** ၸိုင် မၼ်းတေဢွၵ်ႇၼႄ **ေၵ** ၽိတ်းဝႆႉ။
* **Handwriting Mode = ON:** User ၼဵၵ်ႉ **ေ + ၵ**၊ Keyboard တေလႅၵ်ႈပၼ်ပဵၼ် **ၵေ** (မၢၼ်ႇမႅၼ်ႈ) ႁင်းၵူၺ်းယဝ်ႉ။

### 💡 Why this is important for TMK Project?

* **Standard Compliance:** ႁဵတ်းႁႂ်ႈလိၵ်ႈတႆး ဢၼ်တႅမ်ႈဢွၵ်ႇၵႂႃႇၼၼ်ႉ မၢၼ်ႇမႅၼ်ႈၸွမ်း Standard Unicode ယဝ်ႉ။
* **User Flexibility:** ၸွႆႈပၼ် User ဢၼ်ယၢမ်ႈတႅမ်ႈလိၵ်ႈၼိူဝ်ပပ်ႉ ႁႂ်ႈတႅမ်ႈလႆႈငၢႆႈငၢႆႈ ၸိူင်ႉၼင်ႇၵၢင်ၸႂ်ၶဝ်ယဝ်ႉ။
* **Reliability:** ယွၼ်ႉႁဝ်း Load Setting လုၵ်ႉတီႈ Shared Suite မႃးၼႆလႄႈ ၵႃႈၶၼ်ဢၼ် User တင်ႈဝႆႉၼႂ်း Main App တေမႃးၵုမ်းထိင်း Logic ၼႆႉလႆႈတဵမ်ထူၼ်ႈယဝ်ႉ။

---