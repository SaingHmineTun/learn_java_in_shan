

## တွၼ်ႈသွၼ် 18: Building Custom Keyboard Themes - Part 1 (Core Architecture & System Dark Mode)

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ **Theme Architecture** ဢၼ်ပဵၼ်ပိုၼ်ႉထၢၼ် တွၼ်ႈတႃႇၵုမ်းထိင်းသီပုမ်ႇ Key Layout တင်းသဵင်ႈ 10 Themes ယဝ်ႉ။ 
လၢႆးတႅမ်ႈၼႆႉ ႁဝ်းတေၸႂ်ႉ `Protocol` လႄႈ `Enum` တွၼ်ႈတႃႇႁဵတ်း **Data-Driven UI** ဢၼ်တေၸွႆႈႁႂ်ႈ Keyboard ႁဝ်းလႅၵ်ႈသီၸွမ်း System Light/Dark Mode ႁင်းၵူၺ်း လႄႈ လႅၵ်ႈၸွမ်း Theme ID ဢၼ် User လိူၵ်ႈယဝ်ႉ။

---

### 1. Defining the Theme Protocol (`TMKTheme`)

ၵွၼ်ႇတေတႅမ်ႈသီ ႁဝ်းလူဝ်ႇလႆႈမီး "ပၵ်းပိူင်" (Contract) ၵွၼ်ႇယဝ်ႉ။ Protocol ၼႆႉတေမၢႆဝႆႉဝႃႈ Theme ၵူႈဢၼ်ၼႆႉ လူဝ်ႇလႆႈမီးသီၸိူင်ႉႁိုဝ်ၼႆယဝ်ႉ။

သၢင်ႈ Swift File မႂ်ႇ ၸိုဝ်ႈဝႃႈ `TMKTheme.swift` ၶႃႈ:

```swift
import SwiftUI

// ✅ Protocol တွၼ်ႈတႃႇပဵၼ် Blueprint ၶွင်ၵူႈ Theme
protocol TMKTheme {
    var id: String { get }
    var name: String { get }
    
    // UI Colors
    var keyboardBackground: Color { get }
    var keyBackground: Color { get }
    var keyForeground: Color { get }
    
    // Special Keys (Delete, Shift, Symbols)
    var specialKeyBackground: Color { get }
    var specialKeyForeground: Color { get }
    
    // Accent Keys (Enter, Space bar text)
    var accentKeyBackground: Color { get }
    var accentKeyForeground: Color { get }
}

```

---

### 2. The 10-Theme Identifier Enum

ႁဝ်းတေမႃးသၢင်ႈ `Enum` တွၼ်ႈတႃႇမၢႆ ID ၶွင်တင်း 10 Themes ဢၼ်ႁဝ်းဝၢင်းပလႅၼ်ႇဝႆႉၶႃႈ။

```swift
enum TMKThemeType: String, CaseIterable {
    case system = "System"
    case light = "Standard Light"
    case dark = "Standard Dark"
    case tmkGold = "TMK Gold"
    case shanBlue = "Shan Blue"
    case oledBlack = "OLED Black"
    case pastelPink = "Cherry Blossom"
    case forestGreen = "Forest Green"
    case cyberpunk = "Cyberpunk Neon"
    case vintage = "Vintage Typewriter"
    
    // ✅ Function တႃႇပိၼ်ႇ ID ႁႂ်ႈပဵၼ် Object Theme တႄႇတႄႇ (တေထႅမ်သႂ်ႇၼႂ်း Lesson 19)
    var themeProvider: TMKTheme {
        switch self {
        case .system:
            return SystemTheme() // တေၸႂ်ႉ Light/Dark ၸွမ်း OS
        case .light:
            return LightTheme()
        case .dark:
            return DarkTheme()
        // Case တၢင်ႇဢၼ်တေမႃးတႅမ်ႈသီမၼ်းၼႂ်း Lesson 19 ၶႃႈ
        default:
            return LightTheme()
        }
    }
}

```

---

### 3. Implementing the System Theme (With Dynamic Colors)

တွၼ်ႈတႃႇ Theme တူဝ်တႄႇ **`System Theme`** ၼၼ်ႉ ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်း လႅၵ်ႈသီၸွမ်း System Light Mode လႄႈ Dark Mode ႁင်းၵူၺ်းယဝ်ႉ။
ႁဝ်းၸၢင်ႈၸႂ်ႉ `UIColor` ဢၼ်မီး `dynamicProvider` တႃႇၵုမ်းထိင်းလႆႈငၢႆႈငၢႆႈ ၼင်ႇၼႆယဝ်ႉ:

```swift
struct SystemTheme: TMKTheme {
    let id: String = "system"
    let name: String = "System"
    
    // 🛠️ ၸႂ်ႉ UIColor Dynamic Provider တႃႇဢၢၼ်ႇ Light/Dark ၶွင် OS
    var keyboardBackground: Color {
        Color(UIColor { traitCollection in
            return traitCollection.userInterfaceStyle == .dark 
                ? UIColor(red: 27/255, green: 27/255, blue: 27/255, alpha: 1.0) // Dark Grey
                : UIColor(red: 209/255, green: 211/255, blue: 217/255, alpha: 1.0) // Light Grey
        })
    }
    
    var keyBackground: Color {
        Color(UIColor { traitCollection in
            return traitCollection.userInterfaceStyle == .dark
                ? UIColor(red: 63/255, green: 63/255, blue: 63/255, alpha: 1.0)
                : UIColor.white
        })
    }
    
    var keyForeground: Color {
        Color(UIColor { traitCollection in
            return traitCollection.userInterfaceStyle == .dark ? .white : .black
        })
    }
    
    var specialKeyBackground: Color {
        Color(UIColor { traitCollection in
            return traitCollection.userInterfaceStyle == .dark
                ? UIColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 1.0)
                : UIColor(red: 172/255, green: 176/255, blue: 185/255, alpha: 1.0)
        })
    }
    
    var specialKeyForeground: Color {
        .primary
    }
    
    var accentKeyBackground: Color {
        Color.blue // Standard Enter button color
    }
    
    var accentKeyForeground: Color {
        .white
    }
}

// ✅ သၢင်ႈ Standalone LightTheme လႄႈ DarkTheme ဝႆႉလွင်ႈလွင်ႈ
struct LightTheme: TMKTheme {
    let id: String = "light"
    let name: String = "Standard Light"
    var keyboardBackground: Color { Color(red: 209/255, green: 211/255, blue: 217/255) }
    var keyBackground: Color { .white }
    var keyForeground: Color { .black }
    var specialKeyBackground: Color { Color(red: 172/255, green: 176/255, blue: 185/255) }
    var specialKeyForeground: Color { .black }
    var accentKeyBackground: Color { .blue }
    var accentKeyForeground: Color { .white }
}

struct DarkTheme: TMKTheme {
    let id: String = "dark"
    let name: String = "Standard Dark"
    var keyboardBackground: Color { Color(red: 27/255, green: 27/255, blue: 27/255) }
    var keyBackground: Color { Color(red: 63/255, green: 63/255, blue: 63/255) }
    var keyForeground: Color { .white }
    var specialKeyBackground: Color { Color(red: 45/255, green: 45/255, blue: 45/255) }
    var specialKeyForeground: Color { .white }
    var accentKeyBackground: Color { .blue }
    var accentKeyForeground: Color { .white }
}

```

---

### 4. Integrating with KeyboardViewModel

ယၢမ်းလဵဝ် ႁဝ်းမႃးသႂ်ႇ `@Published var currentTheme: TMKTheme` ဝႆႉၼႂ်း `KeyboardViewModel` ၼင်ႇႁိုဝ် Views ၵူႈဢၼ် တေၸၢင်ႈဢဝ်သီတီႈၼႆႈၵႂႃႇ Bind လႆႈၶႃႈ:

```swift
class KeyboardViewModel: ObservableObject {
    @Published var currentTheme: TMKTheme = SystemTheme() // Default ပဵၼ် System 
    
    // App Group Storage Loader (From Lesson 15)
    func loadSettings() {
        let sharedDefaults = UserDefaults(suiteName: "group.it.saimao.tmktaikeyboard")
        let themeRawValue = sharedDefaults?.string(forKey: "selected_theme") ?? "System"
        
        // ပိၼ်ႇလုၵ်ႉတီႈ String ၵႂႃႇပဵၼ် Object Theme ၸွမ်း Enum ႁဝ်း
        if let themeType = TMKThemeType(rawValue: themeRawValue) {
            self.currentTheme = themeType.themeProvider
        }
    }
}

```

---

### 💡 Summary for Lesson 18:

* ႁဝ်းမီး `TMKTheme` Protocol ဢၼ်ၵုမ်းထိင်း Layout Colors တဵမ်ထူၼ်ႈ။
* ႁဝ်းသၢင်ႈ `SystemTheme` ဢၼ်ၸႂ်ႉ `traitCollection` တႃႇ Auto-switch ၸွမ်း iOS Light/Dark Mode ႁင်းၵမ်း။
* `KeyboardViewModel` ယၢမ်းလဵဝ် မီးသၢႆၵၢၼ်လႅၼ်ႈ (Dynamic Data-binding) တႃႇသူင်ႇသီၸူး Key Views တင်းသဵင်ႈယဝ်ႉ။