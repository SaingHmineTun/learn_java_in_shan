## တွၼ်ႈသွၼ် 10: **Designing the Modular Key Component**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ **Component** တူဝ်လဵဝ် ဢၼ်ၸၢင်ႈဢဝ်ၵႂႃႇၸႂ်ႉလႆႈၵူႈတီႈ (Reusable) ယဝ်ႉ။ 
ယွၼ်ႉဝႃႈ Keyboard ႁဝ်းတေမီးပုမ်ႇ (Buttons) တင်းၼမ်လႄႈ သင်ႁဝ်းတႅမ်ႈ Code မႂ်ႇၵူႈဢၼ်ၼႆၸိုင် မၼ်းတေယုင်ႈယၢင်ႈၼႃႇ။ 
ႁဝ်းတေၸုမ်ႉ (Design) ႁႂ်ႈမၼ်းပဵၼ် "Modular Key" ဢၼ်လႅၵ်ႈလၢႆႈလႆႈ Label လႄႈ Action ယဝ်ႉ။

---

### 1. ပၢႆးဝူၼ်ႉ Modular Design

တူဝ် Key ၼိုင်ႈဢၼ် တေလႆႈႁပ်ႉၵႃႈၶၼ် (Parameters) ၸိူဝ်းၼႆႉ:

* **Label:** တူဝ်လိၵ်ႈ ဢၼ်တေၼႄၼိူဝ်ပုမ်ႇ (မိူၼ်ၼင်ႇ "ၵ", "A", "Enter")။
* **Action:** မိူဝ်ႈၼိပ်ႉယဝ်ႉ ႁႂ်ႈမၼ်းႁဵတ်းသင် (Insert text ဢမ်ႇၼၼ် Delete)။
* **Style:** သီလႄႈ သႅၼ်း (Size) ၶွင်ပုမ်ႇ (ပုမ်ႇတူဝ်လိၵ်ႈ တေလႆႈ ပိူင်ႈၵၼ်တင်း ပုမ်ႇ Shift ဢမ်ႇၼၼ် ပုမ်ႇ Space)။

---

### 2. Implementation: The `TMKKeyView`

ႁဝ်းတေၸႂ်ႉ `Button` ၶွင် SwiftUI မႃးႁဵတ်းပဵၼ် Modular Component ၶႃႈ။

**TMKKeyView.swift**

```swift
import SwiftUI

struct TMKKeyView: View {
    let label: String
    let action: () -> Void
    
    // တႃႇတင်ႈၵႃႈ Style (Default ပဵၼ်သီ Keyboard ပၵ်းပိူင်)
    var backgroundColor: Color = Color(UIColor.systemBackground)
    var foregroundColor: Color = .primary
    var width: CGFloat? = nil // သင်ပဵၼ် nil မၼ်းတေယူႇၸွမ်း Space ဢၼ်မီး
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                    .fill(backgroundColor)
                    .shadow(color: .black.opacity(0.2), radius: 0, x: 0, y: 1)
                
                Text(label)
                    .font(.system(size: 20, weight: .regular))
                    .foregroundColor(foregroundColor)
            }
        }
        .frame(maxWidth: width == nil ? .infinity : width)
        .frame(height: 45) // သုင် 45 ပဵၼ် Standard Keyboard
    }
}

```

---

### 3. လၢႆးဢဝ်ၵႂႃႇၸႂ်ႉ (Example Usage)

မိူဝ်ႈႁဝ်းတေတႅမ်ႈ Layout ၼၼ်ႉ Code ႁဝ်းတေဢၢၼ်ႇငၢႆႈ လႄႈ သႅတ်းသႂ်လိူဝ်ၵဝ်ႇယဝ်ႉ။

**ExampleLayout.swift**

```swift
HStack(spacing: 6) {
    // 1. ပုမ်ႇတူဝ်လိၵ်ႈ (Standard Key)
    TMKKeyView(label: "ၵ") {
        controller.textDocumentProxy.insertText("ၵ")
    }
    
    // 2. ပုမ်ႇ Delete (Special Style)
    TMKKeyView(
        label: "⌫", 
        action: { controller.textDocumentProxy.deleteBackward() },
        backgroundColor: Color(UIColor.lightGray),
        width: 50
    )
}

```

---

### 4. Why this is good for TMK Project?

* **Consistency:** ပုမ်ႇၵူႈဢၼ် ၼႂ်း English, Myanmar, လႄႈ Shan တေမီးၾၢင်ႁၢင်ႈ (Look & Feel) မိူၼ်ၵၼ်တင်းသဵင်ႈ။
* **Easy Maintenance:** သင်ဝႃႈၸဝ်ႈၵဝ်ႇ ၶႂ်ႈလႅၵ်ႈ Corner Radius ႁႂ်ႈမၼ်းမူၼ်းလိူဝ်ၵဝ်ႇၼႆ ၸဝ်ႈၵဝ်ႇလႅၵ်ႈတီႈ `TMKKeyView` တီႈလဵဝ်ၵူၺ်း၊ ပုမ်ႇတင်း Keyboard တေလႅၵ်ႈၸွမ်းၵမ်းလဵဝ်။
* **Dark Mode:** ယွၼ်ႉႁဝ်းၸႂ်ႉ `UIColor.systemBackground` ဝႆႉလႄႈ ပေႃး User လႅၵ်ႈပဵၼ် Dark Mode၊ သီပုမ်ႇႁဝ်းတေပိူင်ႈၸွမ်း ႁႂ်ႈၶဝ်ႈၵပ်းၵၼ်တင်း System ၵမ်းလဵဝ်ယဝ်ႉ။

---