## တွၼ်ႈသွၼ် 12: **Persistent Layout Memory**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးႁဵတ်းႁႂ်ႈ Keyboard ႁဝ်း "မီးမၢႆတွင်း" (Memory) ယဝ်ႉ။ မိူဝ်ႈ User လႅၵ်ႈၸႂ်ႉလိၵ်ႈတႆးဝႆႉၼႂ်း App ၼိုင်ႈသေ
ပေႃးၶဝ်ၵႂႃႇပိုတ်ႇထႅင်ႈ App ၼိုင်ႈၼႆ ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းတိုၵ်ႉပဵၼ်လိၵ်ႈတႆးယူႇမိူၼ်ၵဝ်ႇယဝ်ႉ။
တႃႇတေႁဵတ်းၼႆလႆႈ ႁဝ်းတေလႆႈၸႂ်ႉ **App Groups** ဢၼ်ႁဝ်းလႆႈ Setup ဝႆႉၼႂ်း Module 1 ၼၼ်ႉယဝ်ႉ။

---

### 1. ပၢႆးဝူၼ်ႉ Persistent Memory

ယွၼ်ႉ Keyboard Extension ၼႆႉ မၼ်းတေ "တၢႆ" (Terminate) လႄႈ "ၵိူတ်ႇ" (Restart) မႂ်ႇၵူႈပွၵ်ႈ ဢၼ်ႁဝ်းပိုတ်ႇ/ပိၵ်ႉ Keyboard ၼႆလႄႈ
ၵႃႈၶၼ် (Variable) ဢၼ်မီးၼႂ်း Code ၼၼ်ႉ မၼ်းတေႁၢႆၵႂႃႇၵူႈပွၵ်ႈယဝ်ႉ။

* **UserDefaults:** ပဵၼ်တီႈၵဵပ်း Data ၼိူဝ် Disk။
* **App Group Suite:** ပဵၼ်တီႈၵဵပ်း Data ဢၼ် Extension လႄႈ Main App ၸၢင်ႈႁၼ်ၸွမ်းၵၼ်။

---

### 2. Implementation: Updating the ViewModel

ႁဝ်းတေမႃးမႄး `KeyboardViewModel` ႁႂ်ႈမၼ်း Save လႄႈ Load Layout ၵမ်းလိုၼ်းသုတ်း ႁင်းၵူၺ်း (Automatically) ယဝ်ႉ။

**KeyboardViewModel.swift**

```swift
import SwiftUI

class KeyboardViewModel: ObservableObject {
    // 1. Current Layout State
    @Published var currentLayout: TMKLayout = .english {
        didSet {
            // ၵူႈပွၵ်ႈဢၼ် currentLayout လႅၵ်ႈ၊ ႁႂ်ႈမၼ်း Save ၵမ်းလဵဝ်
            saveLayoutToPersistentMemory()
        }
    }
    
    // 2. Shift State (ဢၼ်ၼႆႉႁဝ်းဢမ်ႇ Save ယွၼ်ႉလူဝ်ႇႁႂ်ႈမၼ်း Reset ၵူႈပွၵ်ႈ)
    @Published var isShifted: Bool = false
    
    private let sharedSuite = "group.it.saimao.tmk-keyboard"
    private let layoutKey = "TMK_Persistent_Layout"

    init() {
        loadLayoutFromPersistentMemory()
    }
    
    // 3. Save Logic
    private func saveLayoutToPersistentMemory() {
        if let defaults = UserDefaults(suiteName: sharedSuite) {
            defaults.set(currentLayout.rawValue, forKey: layoutKey)
            // တဵၵ်းႁႂ်ႈမၼ်း Save ၵမ်းလဵဝ် (Optional but safer)
            defaults.synchronize()
        }
    }
    
    // 4. Load Logic
    private func loadLayoutFromPersistentMemory() {
        if let defaults = UserDefaults(suiteName: sharedSuite),
           let savedString = defaults.string(forKey: layoutKey),
           let savedLayout = TMKLayout(rawValue: savedString) {
            self.currentLayout = savedLayout
        }
    }
    
    // 5. Action to toggle layout
    func toggleLanguage() {
        switch currentLayout {
        case .english: currentLayout = .myanmar
        case .myanmar: currentLayout = .shan
        case .shan: currentLayout = .english
        }
    }
}

```

---

### 3. Implementation: Using Shift State in Layouts

ယၢမ်းလဵဝ် ႁဝ်းမီး `isShifted` ၼႂ်း ViewModel ယဝ်ႉ။ ႁဝ်းတေၸႂ်ႉမၼ်းတႃႇလႅၵ်ႈဝူင်ႈၵၢင် **Normal** လႄႈ **Shifted** Layouts ၼႂ်း `KeyboardView` ၼင်ႇၼႆယဝ်ႉ။

**KeyboardView.swift**

```swift
struct KeyboardView: View {
    var controller: UIInputViewController
    @StateObject private var viewModel = KeyboardViewModel()
    
    var body: some View {
        VStack {
            switch viewModel.currentLayout {
            case .english:
                EnglishLayoutView(controller: controller, viewModel: viewModel)
            case .myanmar:
                MyanmarLayoutView(controller: controller, viewModel: viewModel)
            case .shan:
                // ✅ လႅၵ်ႈၸွမ်း Shift State
                if viewModel.isShifted {
                    ShanShiftedLayout(controller: controller, viewModel: viewModel)
                } else {
                    ShanNormalLayout(controller: controller, viewModel: viewModel)
                }
            }
        }
    }
}

```

---

### 4. ၵၢၼ်တဵၵ်းပုမ်ႇ Shift (Wiring the Button)

တီႈၼႂ်း `ShanNormalLayout.swift` ၸဝ်ႈၵဝ်ႇတေလႆႈမႄးပုမ်ႇ Shift ႁႂ်ႈမၼ်းတဵၵ်းလႆႈ ၸိူင်ႉၼႆၶႃႈ:

```swift
// ၼႂ်း ShanNormalLayout
TMKKeyView(label: "⇧", action: {
    viewModel.isShifted = true
}, backgroundColor: .gray.opacity(0.4), width: 55)

// ၼႂ်း ShanShiftedLayout
TMKKeyView(label: "⇪", action: {
    viewModel.isShifted = false
}, backgroundColor: .white, foregroundColor: .black, width: 55)

```

---

### 💡 Why this is important for UX?

* **Frictionless Typing:** User တေဢမ်ႇလူဝ်ႇမႃးလႅၵ်ႈၽႃႇသႃႇၵူႈပွၵ်ႈ။ မၼ်းတေတွင်းဝႆႉပုၼ်ႈတႃႇၶဝ်ၵူႈၶိင်ႇ။
* **Reliability:** ယွၼ်ႉႁဝ်းၸႂ်ႉ `didSet` ၼႂ်း ViewModel၊ ၸဝ်ႈၵဝ်ႇတေဢမ်ႇလိုမ်း Save Data ၵူႈပွၵ်ႈ ဢၼ်လႅၵ်ႈ Layout ယဝ်ႉ။