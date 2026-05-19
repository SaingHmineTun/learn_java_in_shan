## တွၼ်ႈသွၼ် 11: **The Row-Based Layout Architecture**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလၢႆးဢဝ် **TMKKeyView** ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉ မႃးၸတ်းပဵၼ်ထႅဝ် (Rows) ယဝ်ႉ။ 
Keyboard ၼိုင်ႈဢၼ်ၼႆႉ မၼ်းၵေႃႇသၢင်ႈဝႆႉလူၺ်ႈ ထႅဝ်လိၵ်ႈ 3-4 ထႅဝ် ဢၼ်ဝၢင်းသွၼ်ႉၵၼ်ဝႆႉ (Stacking) ယဝ်ႉ။ 
ႁဝ်းတေၸႂ်ႉ `VStack` လႄႈ `HStack` တႃႇႁဵတ်းႁႂ်ႈ Layout ႁႂ်ႈပဵၼ် Flexible လႄႈ ၸႂ်ႉလႆႈတင်း iPhone ၵူႈ Model ယဝ်ႉ။

---

### 1. Hierarchy ၶွင် Keyboard Layout

တွၼ်ႈတႃႇ Keyboard ၼိုင်ႈဢၼ် ႁဝ်းတေၸတ်းၵၢၼ် Code ၸိူင်ႉၼႆယဝ်ႉ:

* **VStack (Vertical):** ၵုမ်းထိင်းထႅဝ်တင်းသဵင်ႈ (Row 1, Row 2, Row 3, Control Row)။
* **HStack (Horizontal):** ၵုမ်းထိင်းတူဝ်လိၵ်ႈ ၼႂ်းထႅဝ်ၼိုင်ႈဢၼ်။
* **Spacing:** မၵ်းမၼ်ႈႁႂ်ႈမၼ်းမီးလွင်ႈႁၢင်ႇ ဢၼ်ပဵင်းၵၼ်ၵူႈတီႈ။

---

### 2. Implementation: The Layout Architecture

ႁဝ်းတေတႅမ်ႈ Code တႃႇ Layout ဢၼ်ၼိုင်ႈ (Example: Shan Layout) ႁႂ်ႈမၼ်းပဵၼ် Modular ၶႃႈ။

**ShanLayoutView.swift**

```swift
import SwiftUI

struct ShanLayoutView: View {
    var controller: UIInputViewController
    let spacing: CGFloat = 6 // လွင်ႈႁၢင်ႇဝူင်ႈၵၢင်ပုမ်ႇ
    
    var body: some View {
        VStack(spacing: 8) { // Vertical spacing between rows
            
            // ထႅဝ် 1: တူဝ်လိၵ်ႈ (Top Row)
            HStack(spacing: spacing) {
                renderKeys(["ၸ", "ၸ", "သ", "ႁ", "ၼ", "ယ", "ၾ", "လ", "ပ", "ဢ"])
            }
            
            // ထႅဝ် 2: တူဝ်လိၵ်ႈ (Middle Row)
            HStack(spacing: spacing) {
                Spacer(minLength: 15) // Indent for middle row
                renderKeys(["ၵ", "ၶ", "င", "ၸ", "သ", "ၺ", "တ", "ထ"])
                Spacer(minLength: 15)
            }
            
            // ထႅဝ် 3: Control & Bottom Keys
            HStack(spacing: spacing) {
                // Shift Key
                TMKKeyView(label: "⇧", action: { /* Shift Logic */ }, backgroundColor: .gray.opacity(0.4), width: 45)
                
                renderKeys(["ၼ", "မ", "ယ", "ရ", "လ", "ဝ"])
                
                // Backspace Key
                TMKKeyView(label: "⌫", action: { controller.textDocumentProxy.deleteBackward() }, backgroundColor: .gray.opacity(0.4), width: 45)
            }
            
            // ထႅဝ် 4: Space & Function Keys (The Bottom Row)
            HStack(spacing: spacing) {
                TMKKeyView(label: "123", action: { }, width: 45)
                TMKKeyView(label: "space", action: { controller.textDocumentProxy.insertText(" ") })
                TMKKeyView(label: "return", action: { controller.textDocumentProxy.insertText("\n") }, width: 80)
            }
        }
        .padding(.horizontal, 4)
        .padding(.bottom, 8)
    }
    
    // ✅ Helper Function တႃႇၵေႃႇသၢင်ႈပုမ်ႇတင်းၼမ် ႁႂ်ႈ Code သႅတ်းသႂ်
    private func renderKeys(_ keys: [String]) -> some View {
        ForEach(keys, id: \.self) { key in
            TMKKeyView(label: key) {
                controller.textDocumentProxy.insertText(key)
            }
        }
    }
}

```

---

### 3. Flexible Geometry (Why use Spacer?)

ယွၼ်ႉ iPhone မီးတင်း Model ဢၼ်ၵႅပ်ႈ (SE) လႄႈ ဢၼ်ၵႂၢင်ႈ (Pro Max)၊ ႁဝ်းၸႂ်ႉ `maxWidth: .infinity` ၼႂ်း **TMKKeyView** တႃႇႁႂ်ႈပုမ်ႇမၼ်း "ၸၼ်" (Stretch) ႁႂ်ႈတဵမ် Screen ၵမ်းလဵဝ်ယဝ်ႉ။ 
သင်ထႅဝ်လႂ်မီးတူဝ်လိၵ်ႈၼမ်ၵေႃႈ ပုမ်ႇတေဢွၼ်ႇၵႂႃႇ ၸွမ်းၼင်ႇ Auto Layout ယဝ်ႉ။

### 4. Why this is good for TMK Project?

* **Scalability:** သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈသႂ်ႇထႅဝ် "Numbers" လႄႈ "Symbols" ၼႆၵေႃႈ ၸဝ်ႈၵဝ်ႇၵူၺ်းလူဝ်ႇသႂ်ႇ `HStack` ၼိုင်ႈထႅဝ် ၼႂ်း `VStack` ၵူၺ်းယဝ်ႉ။
* **Shan Script Specifics:** တွၼ်ႈတႃႇလိၵ်ႈတႆးၵေႃႈ ႁဝ်းၸၢင်ႈၸတ်းထႅဝ် ႁႂ်ႈမၼ်းလူတ်း (Shift) ၵႂႃႇၽၢႆႇသၢႆႉ/ၶႂႃ ႁႂ်ႈငၢႆႈၸွမ်းလၢႆးၼိပ်ႉ (Ergonomics) ယဝ်ႉ။

---