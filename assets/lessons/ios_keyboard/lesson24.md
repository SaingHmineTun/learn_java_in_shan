## တွၼ်ႈသွၼ် 24: Advanced Gesture Interaction (Swipe to Move Cursor / Trackpad Mode)

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈပၵ်းပိူင် **Trackpad Mode** ဢၼ်မိူၼ်ၼင်ႇ Keyboard iOS Standard ယဝ်ႉ။
မိူဝ်ႈ User ဢဝ်ၼိဝ်ႉမိုဝ်းမႃး **ၼဵၵ်းႁိုင် (Long-Press) တီႈပုမ်ႇ Spacebar** ၼၼ်ႉ System တေ Auto-switch ပိၼ်ႇ Keyboard တင်းသဵင်ႈႁႂ်ႈပဵၼ် "Trackpad Surface" သေ
မိူဝ်ႈ User **လႅၼ်ႈၼိဝ်ႉမိုဝ်း (Swipe) ၵႂႃႇၽၢႆႇသၢႆႉ ဢမ်ႇၼၼ် ၽၢႆႇၶႂႃ** ၼၼ်ႉ မၼ်းတေ Auto-move ပၼ် Text Cursor ႁႂ်ႈလႅၼ်ႈၸွမ်းမိုဝ်း လႆႈငၢႆႈ လႄႈ Premium သုတ်းယဝ်ႉ။

---

### 1. Trackpad Cursor Tracking Engine

ၼင်ႇႁိုဝ်တေၸၢင်ႈၵုမ်းၵၢၼ် Text Cursor ၶွင် iOS လႆႈၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ **`textDocumentProxy.adjustTextPosition(byCharacterOffset:)`** ၶွင် `UIInputViewController` ယဝ်ႉ:

* မိူဝ်ႈ User Swipe ၵႂႃႇၽၢႆႇၶႂႃ ပူၼ်ႉ `+12 ၸႅတ်ႉ (Threshold)` ၼၼ်ႉ ႁဝ်းတေသူင်ႇၵႃႈၶၼ် `+1` ႁႂ်ႈလႅၼ်ႈၵႂႃႇၽၢႆႇၶႂႃ 1 တူဝ်လိၵ်ႈယဝ်ႉ။
* မိူဝ်ႈ Swipe ၵႂႃႇၽၢႆႇသၢႆႉ ပူၼ်ႉ `-12 ၸႅတ်ႉ` ၼၼ်ႉသမ်ႉ ႁဝ်းတေသူင်ႇၵႃႈၶၼ် `-1` တွၼ်ႈတႃႇထွႆလင်ၵႂႃႇၽၢႆႇသၢႆႉ 1 တူဝ်လိၵ်ႈ ယဝ်ႉ။

---

### 2. ထႅမ်သႂ်ႇ Trackpad States ၼႂ်း `KeyboardViewModel.swift`

ႁဝ်းလူဝ်ႇမႃးပိုတ်ႇ Variable States ဝႆႉၼႂ်း `KeyboardViewModel.swift` တွၼ်ႈတႃႇ Broadcast ပၼ် Views တင်းသဵင်ႈ 
ႁႂ်ႈႁူႉဝႃႈ ယၢမ်းလဵဝ် Keyboard တေၶဝ်ႈ Trackpad Mode ယဝ်ႉႁိုဝ် ၼႆယဝ်ႉ:

```swift
// ၼႂ်း KeyboardViewModel.swift

// MARK: - Lesson 24 Trackpad Mode States
@Published var isTrackpadModeActive: Bool = false    // 🛠️ Check လွင်ႈ Active ၶွင် Trackpad
@Published var trackpadAccumulatedDrag: CGFloat = 0  // 🛠️ Track ၵႃႈၶၼ် Touch Distance Vectors

```

---

### 3. Setup `TMKSpacebarKeyView.swift` (The Gesture Driver)

ပုမ်ႇ Spacebar တေပဵၼ် Driver Matrix ဢၼ်ႁပ်ႉႁဵတ်းၵၢၼ် Long-Press သေ Auto-lock ၶဝ်ႈ Trackpad Engine ယဝ်ႉ။ 
သၢင်ႈ File မႂ်ႇ ဢမ်ႇၼၼ် ဝၢင်း Code တူဝ်ၼႆႉဝႆႉၼႂ်း Component Spacebar ၶွင်ၸဝ်ႈၵဝ်ႇၶႃႈ:

```swift
import SwiftUI

struct TMKSpacebarKeyView: View {
    let label: String
    let theme: TMKTheme
    let action: () -> Void
    
    @EnvironmentObject var viewModel: KeyboardViewModel
    @State private var isCurrentlyTapped: Bool = false
    @State private var spacebarTimer: Timer? = nil
    
    var body: some View {
        GeometryReader { geometry in
            Button(action: {}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .fill(isCurrentlyTapped ? theme.keyPressedBackground : theme.keyBackground)
                    
                    // သင် Trackpad Active ဝႆႉ ႁႂ်ႈပႅတ်ႈ Text "Space" သေပဵၼ် Blank UI မိူၼ် iOS Native
                    if !viewModel.isTrackpadModeActive {
                        Text(label)
                            .font(.system(size: 16, weight: .medium, design: .rounded))
                            .foregroundColor(theme.keyForeground)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .buttonStyle(PlainButtonStyle())
            .simultaneousGesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { value in
                        if !isCurrentlyTapped {
                            isCurrentlyTapped = true
                            viewModel.trackpadAccumulatedDrag = 0
                            
                            // 🚀 1. Timer Setup: ၼိပ်ႉၶၢင်ႉ Spacebar 0.5 ၸႅၵ်ႉ တွၼ်ႈတႃႇၶဝ်ႈ Trackpad Mode
                            spacebarTimer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in
                                viewModel.isTrackpadModeActive = true
                                viewModel.isShowingPreview = false // Hide Standard Popups
                                let generator = UIImpactFeedbackGenerator(style: .medium)
                                generator.impactOccurred() // Trigger heavy tick feedback
                            }
                        }
                        
                        // 🚀 2. SWIPE TO MOVE CURSOR CALCULATION
                        if viewModel.isTrackpadModeActive {
                            // ဢဝ်ၵႃႈၶၼ် Drag Vector Translation မႃးၼပ်ႉသွၼ်ႇ
                            let dragDistance = value.translation.width - viewModel.trackpadAccumulatedDrag
                            let dragThreshold: CGFloat = 12.0 // ၶွပ်ႇ Threshold 12 ၸႅတ်ႉ တွၼ်ႈတႃႇတူင်ႉ 1 ၵမ်း
                            
                            if abs(dragDistance) >= dragThreshold {
                                // သင်ပဵၼ်ၵႃႈပလတ်ႉ ပဵၼ် Move Right (+1)၊ သင်ပဵၼ်ၵႃႈၼီၵႃႉ ပဵၼ် Move Left (-1)
                                let offset = dragDistance > 0 ? 1 : -1
                                
                                // Direct Injection text Document Proxy alignment tracking native system API
                                viewModel.controller?.textDocumentProxy.adjustTextPosition(byCharacterOffset: offset)
                                
                                // Update accumulated benchmark memory spot
                                viewModel.trackpadAccumulatedDrag = value.translation.width
                                
                                // Tick sound & tactile light haptics instantly
                                let lightGenerator = UIImpactFeedbackGenerator(style: .light)
                                lightGenerator.impactOccurred()
                            }
                        }
                    }
                    .onEnded { _ in
                        spacebarTimer?.invalidate()
                        spacebarTimer = nil
                        
                        isCurrentlyTapped = false
                        
                        if viewModel.isTrackpadModeActive {
                            // Exit Trackpad Mode cleanly on finger release
                            viewModel.isTrackpadModeActive = false
                            let generator = UIImpactFeedbackGenerator(style: .light)
                            generator.impactOccurred()
                        } else {
                            // Standard quick release single tap space input inserting
                            action()
                        }
                    }
            )
        }
        .frame(height: 46)
        .padding(.horizontal, 2)
        .padding(.vertical, 2)
    }
}

```

---

### 4. ဢပ်ႉတဵတ်း `TMKKeyView.swift` ႁႂ်ႈ Blank မိူဝ်ႈ Trackpad Active

မိူဝ်ႈ Trackpad Mode ႁဵတ်းၵၢၼ်ဝႆႉ၊ ပုမ်ႇလိၵ်ႈတင်းသဵင်ႈၼိူဝ် Keyboard (ၸိူင်ႉၼင်ႇ ၵ, ၶ, ၸ) တေပိၼ်ႇသီပဵၼ် Blank Layout (သီၸၢင်ႁၢႆတူဝ်လိၵ်ႈပႅတ်ႈ) တွၼ်ႈတႃႇၼႄ User ဝႃႈ
ယၢမ်းလဵဝ် ၼိူဝ် Surface တင်းသဵင်ႈ ပဵၼ် Trackpad သေ ဢမ်ႇၸၢင်ႈၼဵၵ်းလိၵ်ႈၶဝ်ႈ ၼႆယဝ်ႉ။

ပိုတ်ႇ **`TMKKeyView.swift`** သေ မႄး Code ၼႂ်း Bracket ၶွင် `Button` ၸိူင်ႉၼႆၶႃႈ:

```swift
// ၼႂ်း TMKKeyView.swift -> inside Button content view
ZStack {
    RoundedRectangle(cornerRadius: 8, style: .continuous)
        .fill(isCurrentlyTapped ? theme.keyPressedBackground : (isAccentKey ? theme.accentKeyBackground : (isSpecialKey ? theme.specialKeyBackground : theme.keyBackground)))
    
    // LESSON 24 DYNAMIC HIGHLIGHT: သင် Trackpad Active ဝႆႉ ႁႂ်ႈပိၼ်ႇ Text opacity ပဵၼ် 0 ၵမ်းလဵဝ်
    Text(label)
        .font(.system(size: 21, weight: .medium, design: .rounded))
        .foregroundColor(isAccentKey ? theme.accentKeyForeground : (isSpecialKey ? theme.specialKeyForeground : theme.keyForeground))
        .opacity(viewModel.isTrackpadModeActive && !isSpecialKey && !isAccentKey ? 0.0 : 1.0) // ✅ Hide letter lines instantly
        .animation(.easeInOut(duration: 0.15), value: viewModel.isTrackpadModeActive)
}

```

လွင်ႈ Gesture Engine ၼႂ်း `TMKKeyView.swift`၊ ထႅမ်သႂ်ႇ Condition Check ဝႆႉၽၢႆႇၼိူဝ်သုတ်း ၼႂ်း `.onChanged` ၸိူင်ႉၼႆၶႃႈ:

```swift
.onChanged { value in
    // သင် Trackpad Mode တိုၵ်ႉဢၼ် Active ဝႆႉယူႇ ႁႂ်ႈ Abort Block ပႅတ်ႈ ဢမ်ႇပၼ် တူဝ်လိၵ်ႈ Preview တက်း
    if viewModel.isTrackpadModeActive { return }
    if isSpecialKey || isAccentKey { return }
    // ... remainder of your Lesson 23 sliding logic continues here smoothly
}

```

---

### 💡 Output Look & Feel:

* မိူဝ်ႈ User **ၼဵၵ်းႁိုင် Spacebar ပူၼ်ႉ 0.5 ၸႅၵ်ႉၵႅၼ်ႉ** ၼႆ တူဝ်လိၵ်ႈတင်းသဵင်ႈၼိူဝ် Keyboard တေ Fade ႁၢႆၵႂႃႇ ပဵၼ်သီ Blank Surface ယဝ်ႉ။
* မိူဝ်ႈ User **လႅၼ်ႈၼိဝ်ႉ Swipe မိုဝ်းသၢႆႉ/ၶႂႃ** ၼိူဝ် Keyboard ၵူႈတီႈၼႆ တူဝ် Text Cursor ၼႂ်း TextField တေလႅၼ်ႈၸွမ်းသေ တေမီးသဵင် တိၵ်ႉ တိၵ်ႉ (`haptic feedback`) ၸွမ်းမိုဝ်းတႅတ်ႈတေႃးယဝ်ႉ။