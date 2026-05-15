## တွၼ်ႈသွၼ် 5: **Communication via App Groups**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလၢႆး "သူင်ႇၶေႃႈမုၼ်း" (Data Communication) ၼႂ်းၵႄႈၵၢင် Main App လႄႈ Keyboard Extension ယဝ်ႉ။ 
ယွၼ်ႉ iOS Sandbox ပဵၼ်ႁူဝ်ႉၵၼ်ဝႆႉလႄႈ ႁဝ်းတေလႆႈၸႂ်ႉ **App Groups** ပဵၼ်တူဝ်ၵၢင်ယဝ်ႉ။

### 1. ပဵၼ်သင်ႁဝ်းၸင်ႇလူဝ်ႇ App Groups?

ပိူင်သၢင်ႈ Security ၶွင် iOS ၼၼ်ႉ မၼ်းဢမ်ႇပၼ် App ဢၼ်ၼိုင်ႈတင်းဢၼ်ၼိုင်ႈ ႁၼ် Data ၵၼ်လႆႈ။

* သင် User လႅၵ်ႈ Theme ပဵၼ် "သီလႅင်" ၼႂ်း Main App ၼႆ တူဝ် Keyboard တေဢမ်ႇႁူႉၸွမ်းလႆႈ။
* သင် User ပိၵ်ႉသဵင် Keyboard ၼႂ်း Main App ၼႆ တူဝ် Keyboard ၵေႃႈတေဢမ်ႇႁူႉ။

**App Groups** ၼႆႉ မၼ်းတေမႃးပိုတ်ႇ "ပိုၼ်ႉတီႈၵၢင်" (Shared Container) ဢၼ်တင်းသွင်ၽၢႆႇ ၸၢင်ႈၶဝ်ႈလူတ်ႇဢဝ် Data လႆႈၼၼ်ႉယဝ်ႉ။

### 2. လၢႆးၶူင်သၢင်ႈ App Groups (Setup)

ၸဝ်ႈၵဝ်ႇလႆႈႁဵတ်းဝႆႉယဝ်ႉၼႆသေတႃႉ ႁဝ်းမႃးၵူတ်ႇထတ်း (Review) ၶိုၼ်းၵမ်းၼိုင်ႈ:

1. ၵႂႃႇတီႈ Xcode > Project Settings > **Signing & Capabilities**။
2. ၼဵၵ်ႉ **+ Capability** သေလိူၵ်ႈ **App Groups**။
3. သႂ်ႇၸိုဝ်ႈဝႃႈ `group.it.saimao.tmk_keyboard` (ႁႂ်ႈမိူၼ်ၵၼ်တင်း 2 Targets)။

### 3. Implementation: ၵၢၼ်ၵုမ်းထိင်း Data ၼႂ်း Main App
တီႈၼႂ်း Main App (SwiftUI) ၼႆႉ ႁဝ်းတေတႅမ်ႈ Code တႃႇပၼ် User လိူၵ်ႈၽႃႇသႃႇ (Language) ယဝ်ႉ။

**MainAppView.swift**

```swift
import SwiftUI

struct MainAppView: View {
    @State private var selectedLanguage: String = "Shan"
    
    // ၸိုဝ်ႈ App Group ႁဝ်း
    let sharedSuite = "group.it.saimao.tmk_keyboard"
    
    var body: some View {
        Form {
            Section(header: Text("Keyboard Settings")) {
                Picker("Default Language", selection: $selectedLanguage) {
                    Text("English").tag("English")
                    Text("Myanmar").tag("Myanmar")
                    Text("Shan").tag("Shan")
                }
                .onChange(of: selectedLanguage) { newValue in
                    saveToSharedContainer(lang: newValue)
                }
            }
        }
    }
    
    func saveToSharedContainer(lang: String) {
        // ၸႂ်ႉ SuiteName တႅၼ်း UserDefaults.standard
        if let sharedDefaults = UserDefaults(suiteName: sharedSuite) {
            sharedDefaults.set(lang, forKey: "SelectedLanguage")
            sharedDefaults.synchronize()
            print("Saved \(lang) to App Group")
        }
    }
}

```

---

### 3. Implementation: ၵၢၼ်လူတ်ႇ Data ၼႂ်း Keyboard Extension

ၵမ်းၼႆႉ တီႈၼႂ်း Keyboard, ႁဝ်းတေလႆႈလူတ်ႇ Data ၼၼ်ႉမႃး တႃႇတေၼႄ Layout ႁႂ်ႈမၼ်းတႅတ်ႈတေႃးယဝ်ႉ။

**KeyboardView.swift**

```swift
import SwiftUI

struct KeyboardView: View {
    var controller: UIInputViewController
    
    // လူတ်ႇ Data လုၵ်ႉတီႈ App Group
    private var currentLanguage: String {
        let sharedSuite = "group.it.saimao.tmk_keyboard"
        let sharedDefaults = UserDefaults(suiteName: sharedSuite)
        return sharedDefaults?.string(forKey: "SelectedLanguage") ?? "English"
    }
    
    var body: some View {
        VStack {
            // ၼႄၸိုဝ်ႈၽႃႇသႃႇ ဢၼ်လူတ်ႇမႃးလႆႈ
            Text("Mode: \(currentLanguage)")
                .font(.caption)
            
            HStack {
                if currentLanguage == "Shan" {
                    shanLayout
                } else if currentLanguage == "Myanmar" {
                    myanmarLayout
                } else {
                    englishLayout
                }
            }
        }
        .frame(height: 200)
    }
    
    // Sample Layouts
    var shanLayout: some View {
        Button("ၵ") { controller.textDocumentProxy.insertText("ၵ") }
            .buttonStyle(.borderedProminent)
    }
    
    var englishLayout: some View {
        Button("A") { controller.textDocumentProxy.insertText("A") }
            .buttonStyle(.bordered)
    }
    
    var myanmarLayout: some View {
        Button("က") { controller.textDocumentProxy.insertText("က") }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
    }
}

```

---

### 4. Why this is important for TMK Keyboard?

* **Persistence:** မိူဝ်ႈ User ပိၵ်ႉ iPhone သေပိုတ်ႇမႃးၶိုၼ်းၼၼ်ႉ Keyboard တေတွင်းဝႆႉဝႃႈ ၽႃႇသႃႇသင် ဢၼ်ၶဝ်ၸႂ်ႉၵမ်းလိုၼ်းသုတ်း ၼႆယဝ်ႉ။
* **User Experience:** User ဢမ်ႇလူဝ်ႇမႃးလႅၵ်ႈ Layout ၵူႈပွၵ်ႈ၊ မၼ်းတေ "Sync" တင်း Settings ဢၼ်မီးဝႆႉၼႂ်း App လူင်ၼၼ်ႉၵမ်းလဵဝ်ယဝ်ႉ။

---