## တွၼ်ႈသွၼ် 14: **Shift, Symbols with Emoji Support**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးႁဵတ်းႁႂ်ႈ Keyboard ႁဝ်းမီးလၢႆးလႅၵ်ႈၵႄႈၵၢင် တူဝ်လိၵ်ႈ (ABC)၊ တူဝ်ၼပ်ႉ (123) လႄႈ Emoji (😊) ႁႂ်ႈမၼ်းတဵမ်ထူၼ်ႈၼႆယဝ်ႉ။

---

### 1. ပၢႆးဝူၼ်ႉ State Machine ၼႂ်း ViewModel

တွၼ်ႈတႃႇ Keyboard ႁဝ်းတေႁူႉဝႃႈ ယၢမ်းလဵဝ်လူဝ်ႇၼႄ Layout လႂ်ၼၼ်ႉ ႁဝ်းလူဝ်ႇမီး `Enum` တႃႇမၢႆဝႆႉ Mode တင်း 3 ဢၼ်ယဝ်ႉ။

**KeyboardViewModel.swift**

```swift
enum KeyboardMode {
    case alphabetic
    case numeric
    case emoji
}

class KeyboardViewModel: ObservableObject {
    @Published var currentLayout: TMKLayout = .english
    @Published var keyboardMode: KeyboardMode = .alphabetic
    @Published var isShifted: Bool = false
    
    // Function တႃႇလႅၵ်ႈ Mode
    func setMode(_ mode: KeyboardMode) {
        self.keyboardMode = mode
        self.isShifted = false // Reset shift မိူဝ်ႈလႅၵ်ႈ Mode
    }
    
    // Function တႃႇလႅၵ်ႈၽႃႇသႃႇ (လုၵ်ႉတီႈ Space bar)
    func toggleLanguage() {
        switch currentLayout {
        case .english: currentLayout = .myanmar
        case .myanmar: currentLayout = .shan
        case .shan: currentLayout = .english
        }
        self.keyboardMode = .alphabetic // ပွၵ်ႈမႃးၼႃႈတူဝ်လိၵ်ႈၵူႈပွၵ်ႈ
    }
}

```

---

### 2. Implementation: Emoji Layout View

ႁဝ်းတေၸႂ်ႉ `LazyVGrid` ၼႂ်း SwiftUI တႃႇၼႄ Emoji ႁႂ်ႈ User လိူၵ်ႈလႆႈငၢႆႈငၢႆႈၶႃႈ။

**EmojiLayoutView.swift**

```swift
struct EmojiLayoutView: View {
    var controller: UIInputViewController
    @ObservedObject var viewModel: KeyboardViewModel
    
    let emojis = ["😀", "😃", "😄", "😁", "😆", "😅", "😂", "🤣", "😊", "😇", "🥰", "😍", "🤩", "😘", "😗"]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.fixed(45)), GridItem(.fixed(45))], spacing: 15) {
                    ForEach(emojis, id: \.self) { emoji in
                        Button(action: {
                            controller.textDocumentProxy.insertText(emoji)
                        }) {
                            Text(emoji).font(.system(size: 32))
                        }
                    }
                }
                .padding()
            }
            .frame(height: 150)
            
            // Bottom Control Row
            HStack {
                TMKKeyView(label: "ABC", action: { viewModel.setMode(.alphabetic) }, width: 70)
                Spacer()
                TMKKeyView(label: "⌫", action: { controller.textDocumentProxy.deleteBackward() }, width: 70)
            }
            .padding(.horizontal)
        }
    }
}

```

---

### 3. Implementation: Numeric Layout View

ပဵၼ် Layout တွၼ်ႈတႃႇတူဝ်ၼပ်ႉ လႄႈ ၶိူင်ႈမၢႆပၵ်းပိူင်ၶႃႈ။

**NumericLayoutView.swift**

```swift
struct NumericLayoutView: View {
    var controller: UIInputViewController
    @ObservedObject var viewModel: KeyboardViewModel
    
    var body: some View {
        VStack(spacing: 8) {
            HStack { renderKeys(["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]) }
            HStack { renderKeys(["-", "/", ":", ";", "(", ")", "$", "&", "@", "\""]) }
            HStack {
                TMKKeyView(label: "#+=", action: { /* Symbol logic */ }, width: 50)
                renderKeys([".", ",", "?", "!", "'"])
                TMKKeyView(label: "⌫", action: { controller.textDocumentProxy.deleteBackward() }, width: 50)
            }
            HStack {
                TMKKeyView(label: "ABC", action: { viewModel.setMode(.alphabetic) }, width: 60)
                TMKSpaceBarView(controller: controller, viewModel: viewModel)
                TMKKeyView(label: "⏎", action: { controller.textDocumentProxy.insertText("\n") }, backgroundColor: .blue, width: 80)
            }
        }
    }
    
    private func renderKeys(_ keys: [String]) -> some View {
        ForEach(keys, id: \.self) { key in
            TMKKeyView(label: key) { controller.textDocumentProxy.insertText(key) }
        }
    }
}

```

---

### 4. Final Wiring in KeyboardView

ၵမ်းၼႆႉ တီႈၼႃႈလူင် (Main View) ႁဝ်းတေၸႂ်ႉ `switch` တႃႇတႅပ်းတ်းဝႃႈ တေၼႄ Layout လႂ် ၼႆယဝ်ႉ။

**KeyboardView.swift**

```swift
struct KeyboardView: View {
    var controller: UIInputViewController
    @StateObject private var viewModel = KeyboardViewModel()
    
    var body: some View {
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
        .frame(height: 250) // Fixed Height for all
    }
    
    @ViewBuilder
    private func renderAlphabeticLayout() -> some View {
        switch viewModel.currentLayout {
        case .english:
            EnglishLayout(controller: controller, viewModel: viewModel)
        case .myanmar:
            MyanmarLayout(controller: controller, viewModel: viewModel)
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