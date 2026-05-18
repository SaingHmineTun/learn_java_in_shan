## တွၼ်ႈသွၼ် 9: **Defining the Keyboard State (Enum & ViewModel)**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ "ပၢႆးဝူၼ်ႉ" (Logic) ဢၼ်တေပဵၼ်တူဝ်ၵုမ်းထိင်းဝႃႈ ယၢမ်းလဵဝ် Keyboard ႁဝ်းတေၼႄ Layout ၽႃႇသႃႇသင်။
ႁဝ်းတေၸႂ်ႉ **Enum** တႃႇမၢႆၽႃႇသႃႇ လႄႈ **ViewModel** တႃႇပဵၼ်တူဝ်ၵၢင် ၼႂ်းၵၢၼ်လႅၵ်ႈလၢႆႈယဝ်ႉ။

---

### 1. Defining the Layout Enum

ဢွၼ်တၢင်းသုတ်း ႁဝ်းတေလႆႈသၢင်ႈ `Enum` တႃႇမၢႆဝႆႉဝႃႈ Keyboard ႁဝ်းမီး Layout သင်လၢႆလၢႆ ၼႆယဝ်ႉ။

```swift
enum TMKLayout: String {
    case english = "English"
    case myanmar = "Myanmar"
    case shan = "Shan"
}

```

---

### 2. The KeyboardViewModel (The Brain)

ၵမ်းၼႆႉ ႁဝ်းတေၶူင် `KeyboardViewModel` ဢၼ်ပဵၼ် `ObservableObject` ယဝ်ႉ။ 
ၼႃႈတီႈမၼ်းပဵၼ် တႃႇၵဵပ်းၵႃႈၶၼ် (State) လႄႈ တႃႇလႅၵ်ႈ Layout မိူဝ်ႈ User ၼဵၵ်ႉ Button ယဝ်ႉ။

**KeyboardViewModel.swift**

```swift
import SwiftUI

class KeyboardViewModel: ObservableObject {
    @Published var currentLayout: TMKLayout = .english
    
    private let sharedSuite = "group.it.saimao.tmk-keyboard"
    
    init() {
        loadSavedLayout()
    }
    
    // 2. Function တႃႇလႅၵ်ႈ Layout (Toggle)
    func nextLayout() {
        switch currentLayout {
        case .english:
            currentLayout = .myanmar
        case .myanmar:
            currentLayout = .shan
        case .shan:
            currentLayout = .english
        }
        saveLayout()
    }
    
    // 3. Save ၵႃႈၶၼ်ဝႆႉၼႂ်း App Group (UserDefaults)
    private func saveLayout() {
        if let defaults = UserDefaults(suiteName: sharedSuite) {
            defaults.set(currentLayout.rawValue, forKey: "TMK_Last_Layout")
        }
    }
    
    // 4. လူတ်ႇၵႃႈၶၼ်ဢၼ် Save ဝႆႉမႃးၸႂ်ႉ မိူဝ်ႈပိုတ်ႇ Keyboard ၶိုၼ်း
    private func loadSavedLayout() {
        if let defaults = UserDefaults(suiteName: sharedSuite),
           let savedValue = defaults.string(forKey: "TMK_Last_Layout"),
           let layout = TMKLayout(rawValue: savedValue) {
            self.currentLayout = layout
        }
    }
}

```

---

### 3. Using ViewModel in KeyboardView

ၵမ်းၼႆႉ တီႈၼႂ်း SwiftUI View ႁဝ်း၊ ႁဝ်းတေၸႂ်ႉ `@StateObject` တႃႇသိုပ်ႇတေႃႇတင်း ViewModel ၶႃႈ။

**KeyboardView.swift**

```swift
struct KeyboardView: View {
    var controller: UIInputViewController
    
    @StateObject private var viewModel = KeyboardViewModel()
    
    var body: some View {
        VStack {
            // ၼႄၸိုဝ်ႈ Layout ဢၼ်တိုၵ်ႉၸႂ်ႉယူႇ
            Text(viewModel.currentLayout.rawValue)
                .font(.caption)
                .foregroundColor(.gray)
            
            Spacer()
            
            // ၼႄ Layout ၸွမ်းၼင်ႇ Enum
            switch viewModel.currentLayout {
            case .english:
                EnglishLayoutView(controller: controller)
            case .myanmar:
                MyanmarLayoutView(controller: controller)
            case .shan:
                ShanLayoutView(controller: controller)
            }
            
            // Button တႃႇလႅၵ်ႈၽႃႇသႃႇ
            Button(action: {
                viewModel.nextLayout()
            }) {
                Text("Switch Language")
                    .padding(8)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(8)
            }
        }
        .frame(height: 220)
    }
}

```

---

### 💡 Why this is standard for TMK Project?

* **Single Source of Truth:** ၵႃႈၶၼ် Layout ၵူႈပိူင် ယူႇၼႂ်း ViewModel တူဝ်လဵဝ်ၵူၺ်း။ ပေႃး ViewModel လႅၵ်ႈ၊ UI တေလႅၵ်ႈၸွမ်းၵမ်းလဵဝ်။
* **Persistence:** ယွၼ်ႉႁဝ်းၸႂ်ႉ `saveLayout()` လႄႈ ပေႃး User ၸႂ်ႉလိၵ်ႈတႆးသေ ပိၵ်ႉ Messenger ၵႂႃႇသေ ပေႃးၶိုၼ်းပိုတ်ႇမႃး ၼႂ်း Facebook ၵေႃႈ မၼ်းတေတႄႇၼႄပၼ် လိၵ်ႈတႆး ႁႂ်ႈၵမ်းလဵဝ်ယဝ်ႉ။