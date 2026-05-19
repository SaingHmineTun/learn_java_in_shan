## တွၼ်ႈသွၼ် 23: Keys Long-Press Popups - Part 2 (Horizontal Slide & Selection Calculation)

တွၼ်ႈသွၼ်ၼႆႉ ပဵၼ်ႁူဝ်ၸႂ်ယႂ်ႇမၼ်းယဝ်ႉ။ ႁဝ်းတေမႃးသၢင်ႈ **Sliding Selection Engine** (ပၵ်းပိူင်ၼပ်ႉသွၼ်ႇ ႁႃၼိဝ်ႉမိုဝ်းလႅၼ်ႈၵႂႃႇတၢင်းၶႂႃ/တၢင်းသၢႆႉ) ၼႂ်း `TMKKeyView.swift` ယဝ်ႉ။
မိူဝ်ႈ User ၼဵၵ်းႁိုင်တေႃႇထိုင် Popup ပိုတ်ႇဢွၵ်ႇမႃးယဝ်ႉၼၼ်ႉ ၶဝ်တေၸၢင်ႈ **"လႅၼ်ႈၼိဝ်ႉမိုဝ်း (Slide)"** ၵႂႃႇလိူၵ်ႈတူဝ်လိၵ်ႈ တႅတ်ႈတေႃးသေ မိူဝ်ႈပွႆႇၼိဝ်ႉမိုဝ်းယဝ်ႉၼၼ်ႉ ႁဝ်းတေ ႁႂ်ႈမၼ်း Auto-commit Insert တူဝ်လိၵ်ႈဢၼ်လိူၵ်ႈဝႆႉၼၼ်ႉ ၶဝ်ႈၵႂႃႇၵမ်းလဵဝ်ယဝ်ႉ။

---

### 1. ၶပ်ႉၵၢၼ်ၼပ်ႉသွၼ်ႇ Trigonometry & Grid Slide Math

ၼင်ႇႁိုဝ်တေႁူႉလႆႈဝႃႈ ယၢမ်းလဵဝ်ၼိဝ်ႉမိုဝ်း User လႅၼ်ႈထိုင် တူဝ်လိၵ်ႈတူဝ်လႂ် ၼႂ်း Array ယူႇၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **Horizontal Translation Offset Matrix** လုၵ်ႉတီႈ `DragGesture` မႃးၼပ်ႉသွၼ်ႇၸိူင်ႉၼႆယဝ်ႉ:

* ႁဝ်းဢဝ်ၵႃႈၶၼ် `value.translation.width` ၸႅၵ်ႇ (Divide) တင်း သႅၼ်းၵႂၢင်ႈ Item တူဝ်လဵၵ်ႉ (`itemWidth: 20`)။
* ၵႃႈၶၼ် Index ဢၼ်လႆႈမႃး တေထုၵ်ႇဢဝ် ဝႆႉၼႂ်းၵႄႈ `0` ထိုင် `popupVariants.count - 1` တွၼ်ႈတႃႇ pale Index လႅၼ်ႈပူၼ်ႉၶွပ်ႇ ယဝ်ႉ။

---

### 2. ဢပ်ႉတဵတ်း Advanced Gesture Engine ၼႂ်း `TMKKeyView.swift`

ႁဝ်းမႃးမႄး `TMKKeyView.swift` လူၺ်ႈၵၢၼ်ထႅမ်သႂ်ႇ **`Timer`** တွၼ်ႈတႃႇ Check လွင်ႈၶၢဝ်းႁိုင် (Long-Press Detection) လႄႈ ၵၢၼ်ၼပ်ႉသွၼ်ႇ Drag Coordinates ၵမ်းလဵဝ်:

```swift
import SwiftUI

struct TMKKeyView: View {
    let label: String
    let action: () -> Void
    let theme: TMKTheme

    var isSpecialKey: Bool = false
    var isAccentKey: Bool = false
    var width: CGFloat? = nil
    
    @EnvironmentObject var viewModel: KeyboardViewModel
    @State private var isCurrentlyTapped: Bool = false
    
    // 🚀 LESSON 23: Long-Press & Slide Core State Trackers
    @State private var longPressTimer: Timer? = nil
    @State private var hasTriggeredPopup: Bool = false

    var body: some View {
        GeometryReader { geometry in
            let localFrame = geometry.frame(in: .named("TMKCanvas"))
            
            Button(action: {}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .fill(isCurrentlyTapped ? theme.keyPressedBackground : (isAccentKey ? theme.accentKeyBackground : (isSpecialKey ? theme.specialKeyBackground : theme.keyBackground)))
                    
                    Text(label)
                        .font(.system(size: 21, weight: .medium, design: .rounded))
                        .foregroundColor(isAccentKey ? theme.accentKeyForeground : (isSpecialKey ? theme.specialKeyForeground : theme.keyForeground))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .buttonStyle(PlainButtonStyle())
            // 🚀 ADVANCED SLIDING GESTURE ENGINE
            .simultaneousGesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { value in
                        if isSpecialKey || isAccentKey { return }
                        
                        if !isCurrentlyTapped {
                            isCurrentlyTapped = true
                            hasTriggeredPopup = false
                            hapticFeedback()
                            
                            // 1. Setup Standard Key Preview First (Lesson 21)
                            viewModel.previewCharacter = label
                            viewModel.previewKeyWidth = localFrame.width
                            viewModel.previewLocation = CGPoint(x: localFrame.midX, y: localFrame.minY)
                            viewModel.isShowingPreview = true
                            
                            // 2. Start Long-Press Detection Timer (0.4 Seconds Threshold)
                            longPressTimer = Timer.scheduledTimer(withTimeInterval: 0.4, repeats: false) { _ in
                                let variants = viewModel.getAlternateVariants(for: label)
                                
                                // Only trigger if this key actually has alternate characters inside matrix
                                if variants.count > 1 {
                                    hasTriggeredPopup = true
                                    viewModel.isShowingPreview = false // Hide standard preview
                                    
                                    viewModel.popupVariants = variants
                                    viewModel.popupKeyWidth = localFrame.width
                                    viewModel.popupLocation = CGPoint(x: localFrame.midX, y: localFrame.minY)
                                    viewModel.selectedVariantIndex = 0 // Default to first item
                                    viewModel.isShowingPopup = true
                                    
                                    hapticFeedback() // Extra tick haptic when popup opens
                                }
                            }
                        }
                        
                        // 3. 🚀 HORIZONTAL SLIDE & SELECTION CALCULATION
                        if hasTriggeredPopup && viewModel.isShowingPopup {
                            let dragOffset = value.translation.width
                            let itemWidth: CGFloat = 20
                            
                            // Calculate current index shift based on touch offset vector
                            // Adding a slight multiplier logic to ease left/right finger movements
                            let indexShift = Int(round(dragOffset / itemWidth))
                            let calculatedIndex = 0 + indexShift
                            
                            // Clamp index safely between 0 and total variant items count bounds
                            let finalIndex = max(0, min(calculatedIndex, viewModel.popupVariants.count - 1))
                            
                            if viewModel.selectedVariantIndex != finalIndex {
                                viewModel.selectedVariantIndex = finalIndex
                                hapticFeedback() // Tick haptic on index selection shift
                            }
                        }
                    }
                    .onEnded { _ in
                        // Clean up Timer instance memory leaks
                        longPressTimer?.invalidate()
                        longPressTimer = nil
                        
                        isCurrentlyTapped = false
                        
                        if hasTriggeredPopup && viewModel.isShowingPopup {
                            // COMMIT POPUP SELECTION ON FINGER RELEASE
                            let selectedText = viewModel.popupVariants[viewModel.selectedVariantIndex]
                            viewModel.controller?.textDocumentProxy.insertText(selectedText)
                            
                            viewModel.isShowingPopup = false // Dismiss Panel
                        } else {
                            // Standard quick release single click entry execution
                            viewModel.isShowingPreview = false
                            action()
                        }
                        
                        hasTriggeredPopup = false
                    }
            )
        }
        .frame(maxWidth: width == nil ? .infinity : width)
        .frame(height: 46)
        .padding(.horizontal, 2)
        .padding(.vertical, 2)
    }
    
    private func hapticFeedback() {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
    }
}

```

## 3. Added Popup Characters in ViewModel
သင်ယဝ်ႉ တီႈၼႂ်း `ViewModel` ၼၼ်ႉ ႁဝ်းတေလႆႈမီး လၢႆးဢဝ် popup characters ၼင်ႇၼႆယဝ်ႉ
```swift
// 1. Data Matrix တွၼ်ႈတႃႇ ၽႃႇသႃႇတႆး
    private let shanAlternateMap: [String: [String]] = [
        "င": ["င်", "င်း", "င်ႇ", "င"],
        "ၵ": ["ၷ", "ၵ"],
        "ၶ": ["ၿ", "ၶ"],
        "ၸ": ["ꩡ", "ၸ"],
        "တ": ["ၻ", "တ"],
        "ၼ": ["ၼႂ်", "ၼ"],
        "ပ": ["ၽ", "ပ"],
        "ေ": ["ဵ", "ေ"],
        "ႄ": ["ႅ", "ႄ"]
    ]
    
    // 2. Data Matrix တွၼ်ႈတႃႇ ၽႃႇသႃႇမၢၼ်ႈ
    private let myanmarAlternateMap: [String: [String]] = [
        "က": ["က္က", "က"],
        "စ": ["စ္စ", "စ"],
        "တ": ["တ္တ", "တ"],
        "ပ": ["ပ္ပ", "ပ"],
        "င": ["င်", "င"]
    ]
    
    // 🚀 LESSON 22 & 23: Function တွၼ်ႈတႃႇဢဝ် Data ၸွမ်း Layout
    func getAlternateVariants(for key: String) -> [String] {
        switch currentLayout {
        case .shan:
            return shanAlternateMap[key] ?? [key]
        case .myanmar:
            return myanmarAlternateMap[key] ?? [key]
        case .english:
            // English layout returns lowercase/uppercase profiles natively
            return [key.lowercased(), key.uppercased()]
        }
    }
    
```

---

### 3. ထတ်းၵူတ်ႇလွင်ႈႁဵတ်းၵၢၼ် (How it works under the hood)

1. **Touch Contact (`onChanged`):** မိူဝ်ႈ User ၼဵၵ်းပုမ်ႇ "င" ႁိုင်ဝႆႉၼၼ်ႉ Preview တေဢွၵ်ႇမႃးၵမ်းလဵဝ် (Lesson 21)။
2. **Timer Over (`0.4s`):** ပေႃးႁိုင်ပူၼ်ႉ 0.4 ၸႅၵ်ႉၵႅၼ်ႉၼႆ Preview တေႁၢႆသေ `TMKPopupOverlayView` တေၼႄမႃးလူၺ်ႈ Horizontal Options `["င်", "င်း", "င်ႇ", "င"]` ဢွၵ်ႇမႃးပဵၼ်ထႅဝ် ၵမ်းလဵဝ်ယဝ်ႉ။
3. **Sliding Math Sync:** မိူဝ်ႈ User လႅၼ်ႈၼိဝ်ႉမိုဝ်းၵႂႃႇတၢင်းၶႂႃ (`value.translation.width`) ၼႆ ၵႃႈၶၼ် Index တေ Auto-increment ၶိုၼ်ႈသေ သီပုမ်ႇ Option ၼႂ်း Overlay တေလႅၵ်ႈ Highlight တူင်ႉၸွမ်းတႅတ်ႈတေႃး ယဝ်ႉ။
4. **Finger Lift (`onEnded`):** မိူဝ်ႈပွႆႇၼိဝ်ႉမိုဝ်း ဝၢႆးသေလိူၵ်ႈဝႆႉ တူဝ်လိၵ်ႈယဝ်ႉၼၼ်ႉ တူဝ်လိၵ်ႈတူဝ်ၼၼ်ႉတေထုၵ်ႇ Insert ၶဝ်ႈၵႂႃႇၼႂ်း Proxy Document Text Pipeline ၵမ်းလဵဝ် ႁင်းၵွႆးမၼ်းယဝ်ႉ။

---