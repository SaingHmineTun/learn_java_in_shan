

## တွၼ်ႈသွၼ် 15: Persistent Settings Architecture

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးသၢင်ႈပၵ်းပိူင်ၵဵပ်းၵႃႈၶၼ် (Settings) တႃႇပုမ်ႇသၼ်ႇ (Vibration)၊ သဵင် (Sound) လႄႈ တႅမ်ႈၸွမ်း ပိူင်သွၼ်ႁဵၼ်း (Handwriting) ယဝ်ႉ။

### 1. ၽၢႆႇ Main App: KeyboardManager.swift (The Writer)

တူဝ်ၼႆႉ တေမီးၼႃႈတီႈ Save ၵႃႈၶၼ် Setting တင်းသဵင်ႈ ၵႂႃႇၸူး **App Group Shared Suite** ၶႃႈ။

```swift
class KeyboardManager: ObservableObject {
    private let sharedSuite = "group.it.saimao.tmk_keyboard"
    
    // Setting Keys
    private let keyHandwriting = "TMK_Handwriting"
    private let keyVibration = "TMK_Vibration"
    private let keySound = "TMK_Sound"

    @Published var isHandwritingEnabled: Bool = false {
        didSet { save(key: keyHandwriting, val: isHandwritingEnabled) }
    }
    @Published var isVibrationEnabled: Bool = true {
        didSet { save(key: keyVibration, val: isVibrationEnabled) }
    }
    @Published var isSoundEnabled: Bool = true {
        didSet { save(key: keySound, val: isSoundEnabled) }
    }
    
    init() {
        if let defaults = UserDefaults(suiteName: sharedSuite) {
            isHandwritingEnabled = defaults.bool(forKey: keyHandwriting)
            isVibrationEnabled = defaults.object(forKey: keyVibration) as? Bool ?? true
            isSoundEnabled = defaults.object(forKey: keySound) as? Bool ?? true
        }
    }
    
    private func save(key: String, val: Bool) {
        UserDefaults(suiteName: sharedSuite)?.set(val, forKey: key)
    }
}

```

---

### 2. ၽၢႆႇ Keyboard Extension: KeyboardViewModel.swift (The Reader)

တူဝ် ViewModel ၼႂ်း Keyboard တေမီးၼႃႈတီႈ **ဢၢၼ်ႇ (Read)** ၵႃႈၶၼ်မႃးၸႂ်ႉတိုဝ်းၵူၺ်း၊ မၼ်းတေဢမ်ႇ Save Data သေပွၵ်ႈၶႃႈ။

```swift
import SwiftUI
import AVFoundation

class KeyboardViewModel: ObservableObject {
    private let sharedSuite = "group.it.saimao.tmk_keyboard"

    @Published var isHandwritingEnabled: Bool = false
    @Published var isVibrationEnabled: Bool = true
    @Published var isSoundEnabled: Bool = true
    
    init() {
        loadSettings()
    }
    
    // ✅ Function တႃႇဢၢၼ်ႇၵႃႈၶၼ်လုၵ်ႉတီႈ Group Suite
    func loadSettings() {
        if let defaults = UserDefaults(suiteName: sharedSuite) {
            isHandwritingEnabled = defaults.bool(forKey: "TMK_Handwriting")
            isVibrationEnabled = defaults.object(forKey: "TMK_Vibration") as? Bool ?? true
            isSoundEnabled = defaults.object(forKey: "TMK_Sound") as? Bool ?? true
        }
    }

    // ✅ Trigger Feedback ၸွမ်းၼင်ႇ Setting ဢၼ်ဢၢၼ်ႇမႃးလႆႈ
    func triggerFeedback() {
        if isVibrationEnabled {
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        }
        if isSoundEnabled {
            AudioServicesPlaySystemSound(1104)
        }
    }
}

```

---

### 3. Setting UI ၼႂ်း ContentView.swift

ႁဝ်းတေၸႂ်ႉ Toggle တႃႇလႅၵ်ႈ Setting ၸိူဝ်းၼႆႉၼႂ်း Main App ၶႃႈ။

```swift
Section(header: Text("Settings")) {
    Toggle("Handwriting Mode", isOn: $mgr.isHandwritingEnabled)
    Toggle("Key Vibration", isOn: $mgr.isVibrationEnabled)
    Toggle("Key Sound", isOn: $mgr.isSoundEnabled)
}

```

---

### 4. Visual vs. Logical Ordering (Unicode Concept)

ၵွၼ်ႇတေၶဝ်ႈ Lesson 16 ၼၼ်ႉ ႁဝ်းလူဝ်ႇပွင်ႇၸႂ် Concept လိၵ်ႈတႆးဢွၼ်ႇၼိုင်ႈၶႃႈ။

* **Visual:** ႁဝ်းႁၼ် **"ေ"** မႃးဢွၼ်တၢင်း **"ၵ"**။
* **Logical:** တူဝ်သိမ်း Data (Unicode) တေလႆႈပဵၼ် **"ၵ"** မႃးဢွၼ်တၢင်း **"ေ"** ၵူႈပွၵ်ႈၶႃႈ။

**Summary တွၼ်ႈသွၼ် 15:**

* ႁဝ်းမီးပၵ်းပိူင် **Shared UserDefaults** တႃႇသူင်ႇ Setting ၸူး Keyboard။
* ViewModel ၼႂ်း Keyboard တေပဵၼ်တူဝ် **Read-Only** ၵူၺ်း။
* ႁဝ်းတင်ႈဝႆႉပႃး `isHandwritingEnabled` တႃႇတေၸႂ်ႉၼႂ်းတွၼ်ႈသွၼ်ၼႃႈၶႃႈ။

**တွၼ်ႈသွၼ် 16: "Handwriting Logic & Normalization" ႁဝ်းတေမႃးသၢင်ႈ Canvas တႃႇတႅမ်ႈမိုဝ်း လႄႈ Handle လွင်ႈလႅၵ်ႈ "ေ + ၵ" ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈၸွမ်း Unicode ၶႃႈ။ ၸွင်ႉၸဝ်ႈၵဝ်ႇ ပိုင်ႇၸႂ်တႃႇသိုပ်ႇၵႂႃႇယဝ်ႉႁိုဝ်ၶႃႈ?**