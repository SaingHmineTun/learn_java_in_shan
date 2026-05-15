## တွၼ်ႈသွၼ် 8: **Designing the Container App** (The Onboarding Experience)

တွၼ်ႈသွၼ်ၼႆႉ ပဵၼ်တွၼ်ႈလိုၼ်းသုတ်းပုၼ်ႈတႃႇ Module 1 ယဝ်ႉ။
**Container App** ဢၼ်ဝႃႈၼၼ်ႉ ပဵၼ် App တူဝ်လူင် ဢၼ် User တေလႆႈတဵၵ်းပိုတ်ႇ မိူဝ်ႈၶဝ် Download လုၵ်ႉတီႈ App Store ယဝ်ႉၼၼ်ႉယဝ်ႉ။ 
ယွၼ်ႉ iOS ဢမ်ႇပိုတ်ႇ Keyboard ပၼ်ၵမ်းလဵဝ်၊ ႁဝ်းတေလႆႈသၢင်ႈ Onboarding Flow တႃႇသွၼ် User ႁႂ်ႈၶဝ်ပိုတ်ႇ Keyboard ယဝ်ႉ။

---

### 1. Goals of the Container App

* **Education:** သွၼ်ပၼ် User ႁႂ်ႈႁူႉလၢႆးၵႂႃႇပိုတ်ႇ Keyboard ၼႂ်း Settings (Settings > General > Keyboard)။
* **Status Check:** ၼႄပၼ် User ဝႃႈ ယၢမ်းလဵဝ် Keyboard ႁဝ်း ႁဵတ်းၵၢၼ်ယဝ်ႉႁိုဝ် (Enabled)၊ လႄႈ ပိုတ်ႇ Full Access ယဝ်ႉႁိုဝ်။
* **Settings:** ပဵၼ်တီႈမၵ်းမၼ်ႈ Theme, Language, လႄႈ Sounds (ဢၼ်ႁဝ်းသူင်ႇ Data ၸႂ်ႉ App Group ၼၼ်ႉယဝ်ႉ)။

---

### 2. Implementation: Keyboard Status Manager

ႁဝ်းသၢင်ႈ Helper Class ဢၼ်ၼိုင်ႈ တႃႇၵူတ်ႇထတ်းဝႃႈ User ပိုတ်ႇ Keyboard ယဝ်ႉႁိုဝ်။

**KeyboardManager.swift**

```swift

import Foundation
import UIKit
import Combine

class KeyboardManager: ObservableObject {
    @Published var isKeyboardEnabled: Bool = false
    @Published var isFullAccessEnabled: Bool = false
    
    let bundleID = "it.saimao.TMK-Keyboard.TMKKeyboardExtension" // Bundle ID ၶွင် Extension ၸဝ်ႈၵဝ်ႇ
    
    init() {
        checkStatus()
    }
    
    func checkStatus() {
        // ၵူတ်ႇထတ်းဝႃႈ ပိုတ်ႇၽုၺ်ႇဝႆႉ Keyboard ယဝ်ႉႁိုဝ်
        if let keyboards = UserDefaults.standard.dictionaryRepresentation()["AppleKeyboards"] as? [String] {
            isKeyboardEnabled = keyboards.contains(bundleID)
        }
        
        // ၵူတ်ႇထတ်းဝႃႈ ပၼ်ဝႆႉ Full Access ယဝ်ႉႁိုဝ် (ၸႂ်ႉ App Group တႃႇ Check)
        let sharedDefaults = UserDefaults(suiteName: "group.it.saimao.tmk_keyboard")
        isFullAccessEnabled = sharedDefaults?.bool(forKey: "HasFullAccess") ?? false
    }
}

```

---

### 3. Implementation: The Main App UI (SwiftUI)

ၼႃႈတႃ App ႁဝ်းၼႆႉ ထုၵ်ႈလီ တူၺ်းႁၢင်ႈလီ လႄႈ ၸႂ်ႉငၢႆႈယဝ်ႉ။

**ContentView.swift (Main App)**

```swift
import SwiftUI

struct ContentView: View {
    @StateObject var mgr = KeyboardManager()
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Setup Status")) {
                    StatusRow(title: "Keyboard Enabled", isActive: mgr.isKeyboardEnabled)
                    StatusRow(title: "Full Access Granted", isActive: mgr.isFullAccessEnabled)
                }
                
                Section(header: Text("Instructions")) {
                    StepRow(number: "1", text: "Go to Settings > General > Keyboard")
                    StepRow(number: "2", text: "Tap 'Keyboards' and 'Add New Keyboard'")
                    StepRow(number: "3", text: "Select 'TMK Keyboard'")
                    StepRow(number: "4", text: "Tap 'TMK Keyboard' and turn on 'Allow Full Access'")
                }
                
                Button(action: {
                    if let url = URL(string: UIApplication.openSettingsURLString) {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Open System Settings")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("TMK Keyboard")
            .onAppear { mgr.checkStatus() }
        }
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

struct StepRow: View {
    let number: String
    let text: String
    var body: some View {
        HStack {
            Text(number)
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 25, height: 25)
                .background(Color.blue)
                .clipShape(Circle())
            Text(text)
                .font(.subheadline)
        }
        .padding(.vertical, 4)
    }
}

```

---

### 4. Special Trick: Check Full Access from Extension

တွၼ်ႈတႃႇႁႂ်ႈ Main App ႁူႉဝႃႈ Full Access ပိုတ်ႇယဝ်ႉႁိုဝ်ၼၼ်ႉ ႁဝ်းတေလႆႈတႅမ်ႈ Code ၼႂ်း **Keyboard Extension** တႃႇသူင်ႇ Data ၶိုၼ်းမႃးၸူး App Group ယဝ်ႉ။

**KeyboardViewController.swift (Add to viewDidLoad)**

```swift
let sharedDefaults = UserDefaults(suiteName: "group.it.saimao.tmk_keyboard")
sharedDefaults?.set(self.hasFullAccess, forKey: "HasFullAccess")

```
---