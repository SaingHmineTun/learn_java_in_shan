## တွၼ်ႈသွၼ် 22: Keys Long-Press Popups - Part 1 (Alternate Character Extraction Matrix)

ဝၢႆးသေ တွၼ်ႈသွၼ် 21 ႁဝ်းလႆႈပၵ်းပိူင် Touch Gesture Pipeline လႄႈ Unclipping Engine ႁဵတ်းၵၢၼ်လႆႈသႅတ်းသႂ် 100% ယဝ်ႉ၊ 
ၼႂ်းတွၼ်ႈသွၼ် 22 ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ **Data Matrix** တွၼ်ႈတႃႇႁွင်ႉဢဝ်တူဝ်လိၵ်ႈ ဢွၵ်ႇမႃးၼႄ မိူဝ်ႈ User ၼိပ်ႉႁိုင် (Long-Press) ယဝ်ႉ။

---

### 1. System Rendering Engine

မိူဝ်ႈ User ဢဝ်ၼိဝ်ႉမိုဝ်း မႃးၼဵၵ်းႁိုင်ဝႆႉ (Long-Press) ၼိူဝ်ပုမ်ႇလိၵ်ႈၼႆ System တေႁဵတ်းၵၢၼ်ၸိူင်ႉၼႆယဝ်ႉ:

* **Timer Trigger:** Gesture Engine တေၼပ်ႉၶၢဝ်းႁိုင်သေ သင်ၼဵၵ်းႁိုင်ပူၼ်ႉ `0.4 ၸႅၵ်ႉၵႅၼ်ႉ` (Long-Press Threshold) ၼႆ မၼ်းတေ Auto-switch လုၵ်ႉတီႈ *Key Press Preview* ႁႂ်ႈပဵၼ် *Multi-Variant Selector Bar* ၵမ်းလဵဝ်ယဝ်ႉ။
* **Dynamic Width Calculation:** ပႅၼ်း Horizontal Popups တေမီးသႅၼ်းဢၼ်လႅၵ်ႈလၢႆႈ (Dynamic Width) ၸွမ်းႁူဝ်ၼပ်ႉ တူဝ်လိၵ်ႈဢၼ်ၵတ်းထွၼ် (Extract) ဢွၵ်ႇမႃးလႆႈ ၼႂ်း Matrix။

---

### 2. ထႅမ်သႂ်ႇ Properties ၼႂ်း `KeyboardViewModel.swift`

ႁဝ်းလူဝ်ႇမႃးပိုတ်ႇ Variable Channel တွၼ်ႈတႃႇၵုမ်းၵၢၼ် Long-Press ဝႆႉၼႂ်း `KeyboardViewModel.swift` ယဝ်ႉ။
ပိုတ်ႇ File သေ ထႅမ်သႂ်ႇ Properties ၸိူဝ်းၼႆႉ (တေၸႂ်ႉၸွမ်း Data လုၵ်ႉတီႈ `shanAlternateMap` လႄႈ `myanmarAlternateMap` ယဝ်ႉ):

```swift
// ၼႂ်း KeyboardViewModel.swift

// MARK: - Lesson 22 Long-Press Popup States
@Published var isShowingPopup: Bool = false          // 🛠️ တူဝ်ၵုမ်း ပိုတ်ႇ/ပိတ်း Popup Selector Bar
@Published var popupVariants: [String] = []          // 🛠️ တူဝ်ၵွတ်ႇၵၢႆႇ Array တူဝ်လိၵ်ႈသမ်ႉ ဢၼ်ထုၵ်ႇၵတ်းထွၼ်ဢွၵ်ႇမႃး
@Published var popupLocation: CGPoint = .zero        // 🛠️ Anchor Coordinate Center Position
@Published var popupKeyWidth: CGFloat = 0            // 🛠️ Size Width ၶွင်ပုမ်ႇမူဝ်ႇတေႃႇ
@Published var selectedVariantIndex: Int = 0        // 🛠️ Index ဢၼ် User လိူၵ်ႈဝႆႉ (Default ပဵၼ် 0)

```

---

### 3. သၢင်ႈ Component UI Layer မႂ်ႇ (`TMKPopupOverlayView.swift`)

သၢင်ႈ File Swift မႂ်ႇၸိုဝ်ႈ **`TMKPopupOverlayView.swift`** လႄႈ။ Component တူဝ်ၼႆႉ တေႁဵတ်းၵၢၼ်ပဵၼ် Horizontal Option Bar ၸၼ်ႉၼိူဝ်သုတ်း မိူဝ်ႈ User ၼိပ်ႉႁိုင်ယဝ်ႉ။ ၼႂ်း Part 1 ၼႆႉ ႁဝ်းတေၸၼ်ႁၢင်ႈ Grid Horizontal Layout ႁႂ်ႈမၼ်းဢွၵ်ႇမႃးၼႄလႆႈယဝ်ႉ:

```swift
//
//  TMKPopupOverlayView.swift
//  TMK Keyboard
//
//  Created by Sai Mao on 18/5/2569 BE.
//

import SwiftUI

struct TMKPopupOverlayView: View {
    @ObservedObject var viewModel: KeyboardViewModel
    
    var body: some View {
        let theme = viewModel.currentTheme
        
        // 🚀 Trigger render Popup Panel သိုဝ်ႈသိုဝ်ႈ မိူဝ်ႈ isShowingPopup ပဵၼ် true ၵူၺ်း
        if viewModel.isShowingPopup && !viewModel.popupVariants.isEmpty {
            
            // Calculate Total width based on elements inside variant array context
            let itemWidth: CGFloat = 42
            let totalWidth = CGFloat(viewModel.popupVariants.count) * itemWidth + 16
            let panelHeight: CGFloat = 54
            
            HStack(spacing: 4) {
                ForEach(0..<viewModel.popupVariants.count, id: \.self) { index in
                    let variant = viewModel.popupVariants[index]
                    let isSelected = index == viewModel.selectedVariantIndex
                    
                    Text(variant)
                        .font(.system(size: 20, weight: isSelected ? .bold : .medium, design: .rounded))
                        .foregroundColor(isSelected ? theme.accentKeyForeground : theme.keyForeground)
                        .frame(width: itemWidth, height: panelHeight - 12)
                        // 🎨 Highlight option element backgrounds natively
                        .background(
                            RoundedRectangle(cornerRadius: 6, style: .continuous)
                                .fill(isSelected ? theme.accentKeyBackground : Color.clear)
                        )
                        .animation(.easeOut(duration: 0.08), value: isSelected)
                }
            }
            .padding(.horizontal, 8)
            .frame(width: totalWidth, height: panelHeight)
            // Premium Floating Container Box styling specs
            .background(
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .fill(theme.keyBackground)
                    .shadow(color: Color.black.opacity(0.25), radius: 6, x: 0, y: 3)
            )
            // Pin position explicitly over the active touched key mapping tracking metrics
            .position(
                x: viewModel.popupLocation.x,
                y: viewModel.popupLocation.y - (panelHeight / 2) - 10
            )
            .allowsHitTesting(false) // Let touch slide data drag through layers cleanly
            .transition(.scale(scale: 0.92, anchor: .bottom).combined(with: .opacity))
        }
    }
}

```

---

### 4. ၵွတ်ႇၵၢႆႇ Layer ဝႆႉၼႂ်း Master Canvas (`KeyboardView.swift`)

မႃးပိုတ်ႇ `KeyboardView.swift` သေ ၶိုၼ်းဢဝ် **`TMKPopupOverlayView`** ၵႂႃႇဝၢင်းဝႆႉ တီႈတႂ်ႈသုတ်း ၼႂ်း **`ZStack`** (ဝၢင်းဝႆႉတႂ်ႈ `TMKKeyPreviewOverlay` လႄႈ):

```swift
// ၼႂ်း KeyboardView.swift -> inside ZStack Layout Canvas
ZStack {
    // 0. Background Gradient Core Layer
    LinearGradient(...) 
    
    // 1. Keyboard Interface Matrix Rows Layout
    VStack { ... } 
    
    // 2. LESSON 21 - Instant Key Press Preview Overlay Layer
    TMKKeyPreviewOverlay(viewModel: viewModel)
    
    // 🚀 LESSON 22 - Advanced Multi-Variant Long-Press Popups Panel 
    TMKPopupOverlayView(viewModel: viewModel)
}

```

---