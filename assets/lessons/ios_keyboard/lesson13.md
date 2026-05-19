## တွၼ်ႈသွၼ် 13: **The Space Bar Language Switcher**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးႁဵတ်းႁႂ်ႈ Keyboard ႁဝ်းမီးလၢႆးၸႂ်ႉတိုဝ်း ဢၼ်ငၢႆႈလိူဝ်ၵဝ်ႇယဝ်ႉ။ 
တွၼ်ႈတႃႇ User ဢၼ်တႅမ်ႈလိၵ်ႈဝႆးဝႆးၼၼ်ႉ ၵၢၼ်ဢၼ်တေလႆႈၵႂႃႇၼိပ်ႉပုမ်ႇ Globe Key ၵူႈပွၵ်ႈၼၼ်ႉ မၼ်းတေၸၢင်ႈယၢပ်ႇဢိတ်းၼိုင်ႈ။ 
ႁဝ်းတေမႃးသႂ်ႇလၢႆး **"Slide on Spacebar"** တႃႇလႅၵ်ႈၽႃႇသႃႇ ၸိူင်ႉၼင်ႇ Gboard ဢမ်ႇၼၼ် iOS Keyboard ယဝ်ႉ။

---

### 1. ပၢႆးဝူၼ်ႉ Space Bar Switcher

ႁဝ်းတေၸႂ်ႉ **DragGesture** ၼႂ်း SwiftUI တႃႇၵူတ်ႇထတ်း (Detect) လွင်ႈပၢၵ်ႈၶၢႆႉၼိူဝ် Space bar ယဝ်ႉ။

* သင် User တဵၵ်း (Tap) ပွၵ်ႈၼိုင်ႈ -> ႁႂ်ႈမၼ်း "ၶၼ်ႈ" (Insert Space)။
* သင် User ပၢၵ်ႈ (Slide) ၵႂႃႇၽၢႆႇသၢႆႉ ဢမ်ႇၼၼ် ၽၢႆႇၶႂႃ -> ႁႂ်ႈမၼ်း "လႅၵ်ႈၽႃႇသႃႇ" (Change Layout)။

---

### 2. Implementation: The `TMKSpaceBarView`

ႁဝ်းတေမႃးသၢင်ႈ Component မႂ်ႇ တႃႇ Space bar ႁင်းၵူၺ်း ၶႃႈ။

**TMKSpaceBarView.swift**

```swift
import SwiftUI

struct TMKSpaceBarView: View {
    var controller: UIInputViewController
    @ObservedObject var viewModel: KeyboardViewModel
    
    // တႃႇမၢႆဝႆႉဝႃႈ User ပၢၵ်ႈၵႂႃႇၵႃႈႁိုင်ယဝ်ႉ
    @State private var dragOffset: CGFloat = 0
    private let threshold: CGFloat = 40 // သင်ပၢၵ်ႈပူၼ်ႉ 40pt ႁႂ်ႈမၼ်းလႅၵ်ႈ
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 6)
                .fill(Color(UIColor.systemBackground))
                .shadow(color: .black.opacity(0.2), radius: 0, x: 0, y: 1)
            
            // ၼႄၸိုဝ်ႈၽႃႇသႃႇၼိူဝ် Space bar
            Text(viewModel.currentLayout.rawValue)
                .font(.subheadline)
                .foregroundColor(.gray)
                .opacity(1.0 - abs(dragOffset) / threshold)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 45)
        .gesture(
            DragGesture(minimumDistance: 10)
                .onChanged { value in
                    dragOffset = value.translation.width
                }
                .onEnded { value in
                    // သင်ပၢၵ်ႈၵႂႃႇ ၽၢႆႇသၢႆႉ/ၶႂႃ ပူၼ်ႉၵႃႈဢၼ်တင်ႈဝႆႉ
                    if abs(value.translation.width) > threshold {
                        viewModel.toggleLanguage() // လႅၵ်ႈၽႃႇသႃႇ
                        hapticFeedback() // သၼ်ႇပၼ်ဢိတ်းၼိုင်ႈ
                    }
                    dragOffset = 0 // Reset ၶိုၼ်း
                }
        )
        .onTapGesture {
            // သင်ၼဵၵ်ႉပွၵ်ႈၼိုင်ႈ (Tap) ႁႂ်ႈမၼ်းၶၼ်ႉ
            controller.textDocumentProxy.insertText(" ")
        }
    }
    
    private func hapticFeedback() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
}

```

---

### 3. Updating the Layouts

ၵမ်းၼႆႉ တီႈၼႂ်း `ShanNormalLayout` လႄႈ `ShanShiftedLayout` ႁဝ်းၼၼ်ႉ ႁဝ်းတေလႆႈဢဝ် `TMKSpaceBarView` ၵႂႃႇသႂ်ႇတႅၼ်း တီႈပုမ်ႇ Space ဢၼ်ၵဝ်ႇၶႃႈ။

**ShanNormalLayout.swift (Updated Row 5)**

```swift
HStack(spacing: spacing) {
    GlobeButton(controller: controller)...
    
    TMKKeyView(label: "123", action: { }, width: 45)
    
    // ✅ ၸႂ်ႉ Component မႂ်ႇ ဢၼ်တူတ်ႉလႆႈ
    TMKSpaceBarView(controller: controller, viewModel: viewModel)
    
    TMKKeyView(label: "။ ၊", action: { ... }, width: 50)
    
    TMKKeyView(label: "⏎", action: { ... }, backgroundColor: .blue, width: 65)
}

```

---

### 4. Why this adds "Pro" feel?

1. **Efficiency:** User ဢမ်ႇလူဝ်ႇယုၵ်ႉမိုဝ်းၵႂႃႇၼိပ်ႉတီႈၸဵင်ႇသၢႆႉတႂ်ႈ (Globe Key) ၵူႈပွၵ်ႈ။
2. **Visual Feedback:** ယွၼ်ႉႁဝ်းသႂ်ႇ `opacity` ၼိူဝ် Text၊ မိူဝ်ႈ User တူတ်ႉၼၼ်ႉ တူဝ်လိၵ်ႈတေၸိူဝ်ႉ (Fade) ၵႂႃႇ ႁဵတ်းႁႂ်ႈမၼ်းၵပ်းၵပ်းၵၼ်တင်း Interface iOS တႄႇတႄႇယဝ်ႉ။
3. **Haptic Integration:** ၵၢၼ်သၼ်ႇ (Haptic) မိူဝ်ႈလႅၵ်ႈၽႃႇသႃႇၼၼ်ႉ မၼ်းတေပၼ် "Feel" ဢၼ်လီပုၼ်ႈတႃႇ User ယဝ်ႉ။

---

**Summary ပုၼ်ႈတႃႇ Lesson 13:**
ယၢမ်းလဵဝ် Keyboard ၸဝ်ႈၵဝ်ႇ မီးလၢႆးလႅၵ်ႈၽႃႇသႃႇ ဢၼ် "Smart" လိူဝ်ၵဝ်ႇယဝ်ႉ။

**Lesson 14 ၼၼ်ႉ ႁဝ်းတေမႃးႁဵၼ်းလၢႆး "Dynamic Height Management" တႃႇႁႂ်ႈ Keyboard ႁဝ်းသုင်/တႅမ်ႇ ၸွမ်းၼင်ႇ Layout ဢၼ်ႁဝ်းၸႂ်ႉယူႇၼၼ်ႉၶႃႈ။ ၸွင်ႉၸဝ်ႈၵဝ်ႇ တူတ်ႉ (Slide) တီႈ Space bar သေ လႅၵ်ႈၽႃႇသႃႇလႆႈယဝ်ႉႁိုဝ်ၶႃႈ?**