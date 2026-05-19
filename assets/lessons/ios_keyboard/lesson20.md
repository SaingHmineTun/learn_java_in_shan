

## တွၼ်ႈသွၼ် 20: Building Custom Keyboard Themes - Part 3 (UI Preference Integration)

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးမႄး UI ၶွင် Main App ႁႂ်ႈမၼ်းမီးပၵ်းပိူင်ထိင်း Theme ၸိူင်ႉၼင်ႇၼႆၶႃႈ:

### 1. Update KeyboardManager.swift ၵွၼ်ႇ

ႁဝ်းလူဝ်ႇလႆႈမီး `@Published var selectedTheme: String` ဝႆႉၼႂ်း `KeyboardManager` တႃႇ Bind ၸွမ်း SwiftUI Picker လႄႈ တႃႇသေၾ် (Save) ၵႃႈၶၼ်ၶဝ်ႈ App Group ၶႃႈ:

```swift
import SwiftUI

class KeyboardManager: ObservableObject {
    @Published var isKeyboardEnabled = false
    @Published var isFullAccessEnabled = false
    @Published var isHandwritingEnabled = false
    @Published var isVibrationEnabled = false
    @Published var isSoundEnabled = false
    
    // ✅ ထႅမ်သႂ်ႇ State တႃႇၵုမ်းၵႃႈၶၼ် String Theme Name
    @Published var selectedTheme: String = "System" {
        didSet {
            saveThemeToSharedContainer()
        }
    }
    
    private let sharedDefaults = UserDefaults(suiteName: "group.it.saimao.tmktaikeyboard")
    
    func checkStatus() {
        // ... Logic ၵူတ်ႇထတ်း Keyboard Status တူဝ်ၵဝ်ႇ ...
        
        // လူတ်ႉၵႃႈၶၼ် Theme ဢၼ်သိမ်းဝႆႉမႃးၼႄဝႆႉၼႂ်း UI
        self.selectedTheme = sharedDefaults?.string(forKey: "selected_theme") ?? "System"
    }
    
    // ✅ Function တႃႇသိမ်း ၾၢင်ႁၢင်ႈၶီးပွတ်ႇ ဝႆႉၼႂ်းၶိူင်ႈ
    private func saveThemeToSharedContainer() {
        sharedDefaults?.set(selectedTheme, forKey: "selected_theme")
        sharedDefaults?.synchronize() // Force sync ၵမ်းလဵဝ်
        print("Theme saved to App Group: \(selectedTheme)")
    }
}

```

---

### 2. Refined ContentView.swift (With 10-Theme Picker Selection)

ယၢမ်းလဵဝ် ႁဝ်းမႃးထႅမ်သႂ်ႇ Section မႂ်ႇ ဝႆႉၼႂ်းဝူင်ႈၵၢင် **Setup Status** လႄႈ **Settings** ၶႃႈ:

```swift
import SwiftUI

struct ContentView: View {
    @StateObject var mgr = KeyboardManager()
    @State private var testText: String = ""
    @State private var isShowingTestPopup = false
    
    var body: some View {
        NavigationView {
            List {
                // --- Section 1: Keyboard Status ---
                Section(header: Text("Setup Status")) {
                    StatusRow(title: "Keyboard Enabled", isActive: mgr.isKeyboardEnabled)
                    StatusRow(title: "Full Access Granted", isActive: isActiveFullAccess())
                }
                
                // --- 🎨 NEW Section 2: Theme Customization (Part 3) ---
                Section(header: Text("Theme Customization")) {
                    HStack {
                        Image(systemName: "paintpalette.fill")
                            .foregroundColor(.blue)
                        
                        // 🛠️ Picker တွၼ်ႈတႃႇ Loop ၼႄတင်း 10 Themes လုၵ်ႉတီႈ Enum CaseIterable
                        Picker("Keyboard Theme", selection: $mgr.selectedTheme) {
                            ForEach(TMKThemeType.allCases, id: \.rawValue) { themeCase in
                                Text(themeCase.rawValue)
                                    .tag(themeCase.rawValue) // Bind လူၺ်ႈ String RawValue
                            }
                        }
                        .pickerStyle(.navigationLink) // ၼႄပဵၼ် Layout သႅတ်းသႂ် ၼႂ်း iOS Settings style
                    }
                }
                
                // --- Section 3: Keyboard Preference Settings ---
                Section(header: Text("Settings")) {
                    Toggle("Handwriting Mode", isOn: $mgr.isHandwritingEnabled)
                    Toggle("Key Vibration", isOn: $mgr.isVibrationEnabled)
                    Toggle("Key Sound", isOn: $mgr.isSoundEnabled)
                }
                
                // --- Section 4: Test Keyboard Area & Open Popup ---
                Section {
                    Button(action: {
                        isShowingTestPopup = true // ပိုတ်ႇ Popup
                    }) {
                        HStack {
                            Image(systemName: "keyboard")
                            Text("Test Your Keyboard")
                                .fontWeight(.semibold)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 4)
                    }
                }
                
                // --- Section 5: Action Button ---
                Section {
                    Button(action: {
                        if let url = URL(string: UIApplication.openSettingsURLString) {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        HStack {
                            Image(systemName: "gear")
                            Text("Open System Settings")
                                .fontWeight(.bold)
                        }
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle("TMK Keyboard")
            .onAppear { mgr.checkStatus() }
            // ႁွင်ႉၸႂ်ႉ Popup Sheet တီႈၼႆႈ
            .sheet(isPresented: $isShowingTestPopup) {
                KeyboardTestView(testText: $testText)
            }
        }
    }
    
    // Full Access ရှိမရှိ စစ်ဆေးရန် Helper
    private func isActiveFullAccess() -> Bool {
        return mgr.isFullAccessEnabled
    }
}

struct StatusRow: View {
    let title: String
    let isActive: Bool
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Image(systemName: isActive ? "checkmark.circle.fill" : "xmark.circle.fill")
                .foregroundColor(isActive ? .green : .red)
        }
    }
}

```

---

### 💡 လွင်ႈႁဵတ်းၵၢၼ် Engine ၼႆႉ (End-to-End Flow):

1. မိူဝ်ႈ User ၶဝ်ႈမႃးၼႂ်း App သေ လိူၵ်ႈလႅၵ်ႈ Theme (မိူၼ်ၼင်ႇ လိူၵ်ႈ **"TMK Gold"** ဢမ်ႇၼၼ် **"Shan Blue"**) ဝႆႉၼႂ်း Picker၊ ၵႃႈၶၼ် `didSet` တေႁွင်ႉ `saveThemeToSharedContainer()` ၵမ်းလဵဝ်။
2. Data `String` Name တေထုၵ်ႇသူင်ႇၵႂႃႇသိမ်းဝႆႉၼႂ်း Shared Container App Group Box။
3. မိူဝ်ႈ User ပိုတ်ႇပၼ်ႇၼိပ်ႉပုမ်ႇ **"Test Your Keyboard"** Popup၊ `TextEditor` တေတက်းမႃး သေ Force ႁႂ်ႈ Keyboard Extension ႁွင်ႉ `loadSettings()` မႂ်ႇ။ တီႈၼၼ်ႈ Keyboard Extension တေလူတ်ႉဢဝ် String Theme တူဝ်ၼၼ်ႉ မႃးပိၼ်ႇပဵၼ် Dynamic Theme Object သူင်ႇပၼ် Key Views တင်း App ၵမ်းလဵဝ်ၶႃႈ!