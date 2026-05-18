

### 1. Adding Hex Color Extension

ၵွၼ်ႇတေတႅမ်ႈ Code Themes ႁဝ်းလူဝ်ႇလႆႈမီး Extension တႃႇဢၢၼ်ႇသီ Hex Code (#000000) ၼႂ်း SwiftUI ၵွၼ်ႇၶႃႈ။ သႂ်ႇ Code ၼႆႉဝႆႉၼႂ်း File `TMKTheme.swift` ၶႃႈ:

```swift
import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

```

---

### 2. Implementing All Remaining Premium Themes

ႁဝ်းမႃးသၢင်ႈ Struct ၶွင် Themes ဢၼ်ၵိုတ်းဝႆႉတင်းသဵင်ႈ သႂ်ႇဝႆႉၸွမ်း `LightTheme`/`DarkTheme` ၼႂ်း `TMKTheme.swift` ၶႃႈ:

```swift
// MARK: - 3. TMK Gold Theme
struct TMKGoldTheme: TMKTheme {
    let id: String = "tmkGold"
    let name: String = "TMK Gold"
    var keyboardBackground: Color { Color(hex: "#121212") } // Pure Dark
    var keyBackground: Color { Color(hex: "#1E1E1E") }
    var keyForeground: Color { Color(hex: "#D4AF37") } // TMK Metallic Gold
    var specialKeyBackground: Color { Color(hex: "#2A2A2A") }
    var specialKeyForeground: Color { Color(hex: "#D4AF37") }
    var accentKeyBackground: Color { Color(hex: "#D4AF37") } // Gold Enter Button
    var accentKeyForeground: Color { Color(hex: "#121212") }
}

// MARK: - 4. Shan Blue Theme
struct ShanBlueTheme: TMKTheme {
    let id: String = "shanBlue"
    let name: String = "Shan Blue"
    var keyboardBackground: Color { Color(hex: "#1D3557") } // Deep National flag blue
    var keyBackground: Color { Color(hex: "#457B9D") }
    var keyForeground: Color { .white }
    var specialKeyBackground: Color { Color(hex: "#112233") }
    var specialKeyForeground: Color { Color(hex: "#F1FAEE") }
    var accentKeyBackground: Color { Color(hex: "#E63946") } // Red Accent
    var accentKeyForeground: Color { .white }
}

// MARK: - 5. OLED Black Theme
struct OLEDBlackTheme: TMKTheme {
    let id: String = "oledBlack"
    let name: String = "OLED Black"
    var keyboardBackground: Color { .black } // #000000 for battery saving
    var keyBackground: Color { Color(hex: "#161616") }
    var keyForeground: Color { .white }
    var specialKeyBackground: Color { Color(hex: "#262626") }
    var specialKeyForeground: Color { Color(hex: "#A3A3A3") }
    var accentKeyBackground: Color { Color(hex: "#2563EB") }
    var accentKeyForeground: Color { .white }
}

// MARK: - 6. Cherry Blossom Theme (Pastel)
struct PastelPinkTheme: TMKTheme {
    let id: String = "pastelPink"
    let name: String = "Cherry Blossom"
    var keyboardBackground: Color { Color(hex: "#FFE5EC") } // Soft Pink Pastel
    var keyBackground: Color { .white }
    var keyForeground: Color { Color(hex: "#FB6F92") }
    var specialKeyBackground: Color { Color(hex: "#FFC2D1") }
    var specialKeyForeground: Color { Color(hex: "#FB6F92") }
    var accentKeyBackground: Color { Color(hex: "#FFB3C6") }
    var accentKeyForeground: Color { .white }
}

// MARK: - 7. Forest Green Theme
struct ForestGreenTheme: TMKTheme {
    let id: String = "forestGreen"
    let name: String = "Forest Green"
    var keyboardBackground: Color { Color(hex: "#1A362B") } // Deep Forest
    var keyBackground: Color { Color(hex: "#2D5A47") }
    var keyForeground: Color { Color(hex: "#EAE7DC") }
    var specialKeyBackground: Color { Color(hex: "#11241D") }
    var specialKeyForeground: Color { Color(hex: "#EAE7DC") }
    var accentKeyBackground: Color { Color(hex: "#E6A15C") } // Autumn Orange Accent
    var accentKeyForeground: Color { Color(hex: "#1A362B") }
}

// MARK: - 8. Cyberpunk Neon Theme
struct CyberpunkTheme: TMKTheme {
    let id: String = "cyberpunk"
    let name: String = "Cyberpunk Neon"
    var keyboardBackground: Color { Color(hex: "#03001C") } // Dark Cyber Space
    var keyBackground: Color { Color(hex: "#301E67") }
    var keyForeground: Color { Color(hex: "#5B8FB9") } // Cyan Text
    var specialKeyBackground: Color { Color(hex: "#11001C") }
    var specialKeyForeground: Color { Color(hex: "#B6E2A1") } // Neon Green
    var accentKeyBackground: Color { Color(hex: "#D80032") } // Neon Red Enter
    var accentKeyForeground: Color { .white }
}

// MARK: - 9. Vintage Typewriter Theme
struct VintageTheme: TMKTheme {
    let id: String = "vintage"
    let name: String = "Vintage Typewriter"
    var keyboardBackground: Color { Color(hex: "#D5CABD") } // Sepia Slate
    var keyBackground: Color { Color(hex: "#EFEBE4") }
    var keyForeground: Color { Color(hex: "#4A3F35") }
    var specialKeyBackground: Color { Color(hex: "#BCAAA4") }
    var specialKeyForeground: Color { Color(hex: "#4A3F35") }
    var accentKeyBackground: Color { Color(hex: "#8D6E63") }
    var accentKeyForeground: Color { .white }
}

```

---

### 3. Update the Enum Switch Case

ယၢမ်းလဵဝ် ႁဝ်းမႃးထႅမ်သႂ်ႇ Cases တင်းသဵင်ႈ ၶဝ်ႈၵႂႃႇၼႂ်း `TMKThemeType` Enum ႁဝ်း တွၼ်ႈတႃႇႁႂ်ႈမၼ်း Provider ပၼ် Object Theme လႆႈတဵမ်ထူၼ်ႈ 10 Themes ၶႃႈ:

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
    
    var themeProvider: TMKTheme {
        switch self {
        case .system:      return SystemTheme()
        case .light:       return LightTheme()
        case .dark:        return DarkTheme()
        case .tmkGold:     return TMKGoldTheme()
        case .shanBlue:    return ShanBlueTheme()
        case .oledBlack:   return OLEDBlackTheme()
        case .pastelPink:  return PastelPinkTheme()
        case .forestGreen: return ForestGreenTheme()
        case .cyberpunk:   return CyberpunkTheme()
        case .vintage:     return VintageTheme()
        }
    }
}

```

---

### 4. Direct Injection in Key Layout Views

ယၢမ်းလဵဝ် တီႈၼႂ်း File Layout Canvas (မိူၼ်ၼင်ႇ `MaoKeyboardView.swift`)၊ ႁဝ်းတေဢဝ် `viewModel.currentTheme` မႃး Inject သူင်ႇၶဝ်ႈၵႂႃႇၼႂ်း `TMKKeyView` ၵမ်းလဵဝ် ၸိူင်ႉၼင်ႇၼႆၶႃႈ:

```swift
import SwiftUI

struct KeyboardView: View {
    @StateObject var viewModel = KeyboardViewModel()
    
    var body: some View {
        // ✅ Get the current theme object from global state once
        let activeTheme = viewModel.currentTheme
        
        VStack(spacing: 4) {
            // Row 1 Example
            HStack(spacing: 2) {
                TMKKeyView(label: "ၵ", action: { viewModel.handleType("ၵ") }, theme: activeTheme)
                TMKKeyView(label: "ၶ", action: { viewModel.handleType("ၶ") }, theme: activeTheme)
                TMKKeyView(label: "င", action: { viewModel.handleType("င") }, theme: activeTheme)
            }
            
            // Row 2 Special Key Example
            HStack(spacing: 2) {
                TMKKeyView(label: "Shift", action: { viewModel.toggleShift() }, theme: activeTheme, isSpecialKey: true, width: 60)
                TMKKeyView(label: "ၸ", action: { viewModel.handleType("ၸ") }, theme: activeTheme)
                TMKKeyView(label: "သ", action: { viewModel.handleType("သ") }, theme: activeTheme)
            }
        }
        .padding(4)
        .background(activeTheme.keyboardBackground) // ✅ Dynamic Keyboard background
        .onAppear {
            viewModel.loadSettings()
        }
    }
}

```

---

### 💡 Summary for Lesson 19:

* ႁဝ်းမီး Palette သီတဵမ်ထူၼ်ႈတင်း **10 Premium Themes** ၶဝ်ႈၵႂႃႇၼႂ်း System ပၵ်းပိူင်။
* `TMKKeyView` ပဵၼ် **Pure Component** ဢၼ်မီး Performance သုင် (Fast Rendering) ယွၼ်ႉမၼ်းႁပ်ႉဢဝ် Theme Object မႃးၵမ်းလဵဝ် ဢမ်ႇလူဝ်ႇမီး Dependency ၶွင်ႉဝႆႉၼႂ်းတူဝ်မၼ်းၶႃႈ။