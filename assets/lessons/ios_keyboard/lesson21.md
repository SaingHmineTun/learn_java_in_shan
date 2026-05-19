

## တွၼ်ႈသွၼ် 21: Standard Key Press Preview Overlay (Instant Visual Feedback on Tap)

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈပၵ်းပိူင် **Key Press Preview** (ပႅၼ်းတူဝ်လိၵ်ႈလူင် Preview) ဢၼ်တေၼႄပၼ် ၼိူဝ်ၼိဝ်ႉမိုဝ်း User ၵမ်းလဵဝ်
မိူဝ်ႈၼဵၵ်းပုမ်ႇ ၼင်ႇႁိုဝ်တေပဵၼ် Visual Feedback ၸၼ်ႉသုင် ၼင်ႇ Keyboard iOS Standard ယဝ်ႉ။

ႁဝ်းတေၸႂ်ႉပၵ်းပိူင် **Global Canvas Broadcasting** ဝၢင်း Component Layer ဝႆႉၼႂ်း `ZStack` တွၼ်ႈတႃႇႁႂ်ႈ Preview တူဝ်လိၵ်ႈလူင် တေၸၢင်ႈလူၼ်ႉဢွၵ်ႇၶွပ်ႇပုမ်ႇ Rows ၵႂႃႇလႆႈ ႁၢင်ႈလီ သႅတ်းသႂ် ဢမ်ႇထုၵ်ႇ Layout Boundary ၶွင် Container တတ်းပႅတ်ႈ (Clipping) ၶႃႈ။

---

### Step 1: Framework Data Setup ၼႂ်း `KeyboardViewModel.swift`

ႁဝ်းလူဝ်ႇမႃးထႅမ်သႂ်ႇ Properties တွၼ်ႈတႃႇ Track ၵႃႈၶၼ်၊ သႅၼ်း width, လႄႈ Position (X, Y) ၶွင် Preview ဝႆႉၼႂ်း `KeyboardViewModel.swift` ၶႃႈ:

```swift
// ၼႂ်း KeyboardViewModel.swift

// MARK: - Lesson 21 Key Press Preview States
@Published var isShowingPreview: Bool = false
@Published var previewCharacter: String = ""
@Published var previewLocation: CGPoint = .zero
@Published var previewKeyWidth: CGFloat = 0

```

---

### Step 2: သၢင်ႈ File Custom Vector Shape (`TMKPreviewBubbleShape.swift`)

သၢင်ႈ File Swift မႂ်ႇၸိုဝ်ႈ **`TMKPreviewBubbleShape.swift`** တွၼ်ႈတႃႇၸၼ်ႁၢင်ႈပႅၼ်း Bubble Preview ႁႂ်ႈမၼ်းပူၼ်ႉလူၼ်ႉၶိုၼ်ႈၵႂႃႇၽၢႆႇၼိူဝ် ႁၢင်ႈလီ လႄႈ Seamless ၶႃႈ:

```swift
import SwiftUI

struct TMKPreviewBubbleShape: Shape {
    let keyWidth: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.width
        let height = rect.height
        let cornerRadius: CGFloat = 10
        let baseWidth = keyWidth
        let baseOffsetX = (width - baseWidth) / 2
        
        // တႄႇၸၼ်လုၵ်ႉတီႈ Bottom-Left ၶွင်ပုမ်ႇမူဝ်ႇတေႃႇ
        path.move(to: CGPoint(x: baseOffsetX + 4, y: height))
        
        // ၸၼ်လႅၼ်းၶိုၼ်ႈၽၢႆႇၼိူဝ် ၸွမ်းၶွပ်ႇပုမ်ႇ
        path.addLine(to: CGPoint(x: baseOffsetX + 4, y: height - 40))
        
        // ၸၼ်ၵၢင်ႉပႅၼ်ဢွၵ်ႇ (Flare out) တႃႇပဵၼ်ပႅၼ်းလူင် တီႈၼႄတူဝ်လိၵ်ႈ
        path.addQuadCurve(
            to: CGPoint(x: 0, y: height - 55),
            control: CGPoint(x: baseOffsetX, y: height - 48)
        )
        
        // ၸၼ်ၶိုၼ်ႈတၢင်းသၢႆႉထိုင်ၸွမ်းၸဵင်ႇ Rounded
        path.addLine(to: CGPoint(x: 0, y: cornerRadius))
        path.addArc(
            center: CGPoint(x: cornerRadius, y: cornerRadius),
            radius: cornerRadius,
            startAngle: Angle(degrees: 180),
            endAngle: Angle(degrees: 270),
            clockwise: false
        )
        
        // ၸၼ်လႅၼ်းလင်ၶႃး (Roof Line)
        path.addLine(to: CGPoint(x: width - cornerRadius, y: 0))
        path.addArc(
            center: CGPoint(x: width - cornerRadius, y: cornerRadius),
            radius: cornerRadius,
            startAngle: Angle(degrees: -90),
            endAngle: Angle(degrees: 0),
            clockwise: false
        )
        
        // ၸၼ်လူင်းၽၢႆႇၶႂႃ
        path.addLine(to: CGPoint(x: width, y: height - 55))
        path.addQuadCurve(
            to: CGPoint(x: width - baseOffsetX, y: height - 40),
            control: CGPoint(x: width - baseOffsetX, y: height - 48)
        )
        
        // ၸၼ်လူင်းတိုင်ႈသုတ်း Bottom-Right ၶွင်ၶွပ်ႇပုမ်ႇ
        path.addLine(to: CGPoint(x: width - baseOffsetX - 4, y: height))
        path.closeSubpath()
        
        return path
    }
}


```

---

### Step 3: သၢင်ႈ Layer Component UI (`TMKKeyPreviewOverlay.swift`)

သၢင်ႈ File Swift မႂ်ႇၸိုဝ်ႈ **`TMKKeyPreviewOverlay.swift`** တွၼ်ႈတႃႇပဵၼ်တူဝ် View Overlay ဢၼ်တေမႃးထတ်းဢၢၼ်ႇ Data လုၵ်ႉတီႈ ViewModel သေတႅမ်ႈ Preview တူဝ်လိၵ်ႈလူင်:

```swift
import SwiftUI

struct TMKKeyPreviewOverlay: View {
    @ObservedObject var viewModel: KeyboardViewModel
    
    
    var body: some View {
        let theme = viewModel.currentTheme
        
        if viewModel.isShowingPreview {
            let bubbleWidth = viewModel.previewKeyWidth + 28
            let bubbleHeight: CGFloat = 105
            
            ZStack {
                TMKPreviewBubbleShape(keyWidth: viewModel.previewKeyWidth)
                    .fill(theme.keyPressedBackground)
                    .shadow(color: Color.black.opacity(0.14), radius: 6, x: 0, y: 3)
                
                VStack {
                    Text(viewModel.previewCharacter)
                        .font(.system(size: 34, weight: .regular, design: .default))
                        .foregroundColor(theme.keyForeground)
                        .padding(.top, 12)
                    Spacer()
                }
            }
            .frame(width: bubbleWidth, height: bubbleHeight)
            .position(
                x: viewModel.previewLocation.x,
                y: viewModel.previewLocation.y - (bubbleHeight / 2) + 46
                
            )
            // Ensure the overlay view ignores native layout interactions so it doesn't block key drops
            .allowsHitTesting(false)
        }
    }
}

```

---

### Step 4: ၵွတ်ႇၵၢႆႇဝႆႉၼႂ်း Global Canvas Wrapper (`KeyboardView.swift`)

မႃးဢပ်ႉတဵတ်း `KeyboardView.swift` ႁႂ်ႈပဵၼ်ပၵ်းပိူင် `ZStack` သေဝၢင်း `TMKKeyPreviewOverlay` ဝႆႉၼိူဝ်သုတ်း (တႂ်ႈ Layout Rows) ၸိူင်ႉၼႆၶႃႈ:

```swift//
//  KeyboardViewModel.swift
//  tmk-keyboard-extension
//
//  Created by Sai Mao on 17/5/2569 BE.
//import SwiftUI

import SwiftUI

struct KeyboardView: View {
    var controller: UIInputViewController
    @StateObject private var viewModel = KeyboardViewModel()
    // ✅ Use a computed property for theme referencing to ensure structural compile safety
    private var activeTheme: TMKTheme {
        viewModel.currentTheme
    }
    
    
    var body: some View {
        ZStack {
            
            LinearGradient(
                colors: [
                    activeTheme.keyboardBackground,
                    activeTheme.keyboardBackground.opacity(0.8)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                VStack {
                    switch viewModel.keyboardMode {
                    case .numeric:
                        NumericLayoutView(controller: controller, viewModel: viewModel)
                    case .emoji:
                        EmojiLayoutView(controller: controller, viewModel: viewModel)
                    case .alphabetic:
                        // Normal Layout Switch (English / Shan / Myanmar)
                        renderAlphabeticLayout()
                    }
                }
            }
            .padding(4)

            TMKKeyPreviewOverlay(viewModel: viewModel)
            
        }
        .coordinateSpace(name: "TMKCanvas") // Essential for alignment mapping
        .environmentObject(viewModel)
        .onAppear {
            viewModel.loadSettings()
            print(viewModel.isShowingPreview)
        }
    }
    
    
    @ViewBuilder
    private func renderAlphabeticLayout() -> some View {
        switch viewModel.currentLayout {
        case .english:
            if viewModel.isShifted {
                EnglishShiftedLayout(controller: controller, viewModel: viewModel)
            } else {
                EnglishNormalLayout(controller: controller, viewModel: viewModel)
            }
        case .myanmar:
            if viewModel.isShifted {
                MyanmarShiftedLayout(controller: controller, viewModel: viewModel)
            } else {
                MyanmarNormalLayout(controller: controller, viewModel: viewModel)
            }
        case .shan:
            if viewModel.isShifted {
                ShanShiftedLayout(controller: controller, viewModel: viewModel)
            } else {
                ShanNormalLayout(controller: controller, viewModel: viewModel)
            }
        }
    }
    
}

```

---

### Step 5: Touch Gesture Optimization inside `TMKKeyView.swift`

ယၢမ်းလဵဝ် ႁဝ်းမႃးဢပ်ႉတဵတ်း `TMKKeyView.swift` ႁႂ်ႈၸႂ်ႉ `DragGesture(minimumDistance: 0)` တွၼ်ႈတႃႇ Trigger ပိုတ်ႇ/ပိတ်း Preview လႆႈၵမ်းလဵဝ် (Instant Time Real Sync) လူၺ်ႈၵၢၼ် **တတ်း Code Popup လႄႈ Alternate Mapping ဢွၵ်ႇတင်းသဵင်ႈၶႃႈ**:

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

    var body: some View {
        // GeometryReader calculates layout bounds relative to our custom keyboard canvas
        GeometryReader { geometry in
            let localFrame = geometry.frame(in: .named("TMKCanvas"))
            
            Button(action: {
                // Keep execution tied strictly to gesture lifecycle
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .fill(isCurrentlyTapped ? theme.keyPressedBackground : (isAccentKey ? theme.accentKeyBackground : (isSpecialKey ? theme.specialKeyBackground : theme.keyBackground)))
                    
                    Text(label)
                        .font(.system(size: 21, design: .rounded))
                        .foregroundColor(isAccentKey ? theme.accentKeyForeground : (isSpecialKey ? theme.specialKeyForeground : theme.keyForeground))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .buttonStyle(PlainButtonStyle())
            .simultaneousGesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        if !isSpecialKey && !isAccentKey {
                            isCurrentlyTapped = true
                            
                            // Broadcast states to the top layer layout canvas instantly
                            viewModel.previewCharacter = label
                            viewModel.previewKeyWidth = localFrame.width
                            // Match coordinates to center-top edge of target key frame
                            viewModel.previewLocation = CGPoint(x: localFrame.midX, y: localFrame.minY)
                            viewModel.isShowingPreview = true
                        }
                    }
                    .onEnded { _ in
                        isCurrentlyTapped = false
                        viewModel.isShowingPreview = false // Hide the global preview overlay layer
                        action() // Insert text
                    }
            )
        }
        .frame(maxWidth: width == nil ? .infinity : width)
        .frame(height: 45)
    }
}

```

---
