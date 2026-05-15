## တွၼ်ႈသွၼ် 7: **Privacy & Request Open Access**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈ လွင်ႈႁူမ်ႇလူမ်ႈ (Privacy) လႄႈ ၵၢၼ်ပိုတ်ႇပၼ် **Allow Full Access** ၼၼ်ႉယဝ်ႉ။ 
တွၼ်ႈတႃႇ Keyboard ဢၼ်မီး Function ၼမ်ၼမ် မိူၼ်ၼင်ႇ TMK Keyboard ၼၼ်ႉ ဢၼ်ၼႆႉပဵၼ်လွင်ႈယႂ်ႇ ဢၼ်ၸဝ်ႈၵဝ်ႇတေလႆႈၵႄႈပၼ် User ယဝ်ႉ။

---

### 1. "Allow Full Access" ၼႆႉပဵၼ်သင်?

မိူဝ်ႈ User သႂ်ႇ Keyboard မႂ်ႇၼၼ်ႉ iOS တေထၢမ်ဝႃႈ "Allow Full Access?" ၼႆယဝ်ႉ။

* **Standard Mode (Off):** Keyboard ႁဵတ်းၵၢၼ်လႆႈယူႇ၊ ၵူၺ်းၵႃႈ မၼ်းတေ "ဢမ်ႇႁၼ်" လွင်ႈၽၢႆႇၼွၵ်ႈ။ မၼ်းတေဢမ်ႇၸၢင်ႈၸႂ်ႉ Internet လႆႈ၊ တေဢမ်ႇၸၢင်ႈသူင်ႇ Data ဢွၵ်ႇၵႂႃႇလႆႈ။
* **Full Access Mode (On):** Keyboard ၸၢင်ႈၸႂ်ႉ Internet လႆႈ၊ ၸၢင်ႈသူင်ႇ Data ၶဝ်ႈ/ဢွၵ်ႇ လႆႈ၊ လႄႈ ၸၢင်ႈၸႂ်ႉ **App Groups** (UserDefaults) ဢၼ်ႁဝ်းတႅမ်ႈမႃးၼႂ်း Lesson 5 ၼၼ်ႉလႆႈလီလိူဝ်ၵဝ်ႇယဝ်ႉ။

### 2. ပဵၼ်သင် TMK Keyboard ၸင်ႇလူဝ်ႇ Full Access?

တွၼ်ႈတႃႇ Keyboard ႁဝ်းၼၼ်ႉ ႁဝ်းလူဝ်ႇ Full Access ပုၼ်ႈတႃႇ:

1. **Shared Settings:** တႃႇလူတ်ႇဢဝ် Data လုၵ်ႉတီႈ Main App (App Group) မႃးၸႂ်ႉ။
2. **Typing Sounds & Haptics:** တႃႇပၼ်မၼ်းမီးသဵင် "ၵွၵ်ႉ ၵွၵ်ႉ" လႄႈ လွင်ႈတူင်ႉသၼ်ႇ မိူဝ်ႈပေႃႉလိၵ်ႈ။
3. **Dictionaries:** တႃႇ Download ဢဝ် သဵၼ်ႈမၢႆတူဝ်လိၵ်ႈ (Dictionary) လုၵ်ႉတီႈ Server မႃးၸႂ်ႉၼႂ်းတူဝ် Keyboard။

---

### 3. Implementation: Setup Info.plist

ႁဝ်းတေလႆႈၵႂႃႇ Setup ဝႆႉၼႂ်း `Info.plist` ၶွင် **Extension** ယဝ်ႉၵွၼ်ႇ ၸင်ႇတေၸၢင်ႈ Request လႆႈၶႃႈ။

1. ၵႂႃႇတီႈ Folder **TMKKeyboardExtension** > ပိုတ်ႇ `Info.plist`
2. ၵႂႃႇတီႈ `NSExtension` > `NSExtensionAttributes`
3. **RequestsOpenAccess:** လႅၵ်ႈပဵၼ် `YES` (Boolean)

---

### 4. Implementation: Checking Access in SwiftUI

ႁဝ်းၸၢင်ႊၵူတ်ႇထတ်း (Check) တူၺ်းဝႃႈ User ပိုတ်ႇပၼ်ယဝ်ႉႁိုဝ်။ ဢမ်ႇၼၼ် တေၼႄ Warning ပၼ်ၶဝ်ၼႂ်း Keyboard ၼင်ႇၼႆယဝ်ႉ။

**KeyboardView.swift**

```swift
import SwiftUI

struct KeyboardView: View {
    var controller: UIInputViewController
    
    // Check if Full Access is granted
    private var hasFullAccess: Bool {
        return controller.hasFullAccess
    }
    
    var body: some View {
        VStack {
            if !hasFullAccess {
                // ၼႄ Warning ပၼ် User မိူဝ်ႈၶဝ်ပိုင်ႇပႆႇလႆႈပိုတ်ႇ Full Access
                Text("⚠️ Please enable 'Full Access' for TMK Keyboard settings.")
                    .font(.caption2)
                    .foregroundColor(.red)
                    .padding(5)
                    .background(Color.yellow.opacity(0.2))
            }
            
            // Your Keyboard Buttons here...
        }
    }
}

```

---

### 5. Implementation: Direct Link to Settings

တွၼ်ႈတႃႇႁႂ်ႈ User ငၢႆႈၸႂ်၊ ႁဝ်းတေတႅမ်ႈ Code ၼႂ်း **Main App** (Container App) တႃႇၼဵၵ်ႉသေ ပိုတ်ႇ Settings ပၼ်ၵမ်းလဵဝ်ယဝ်ႉ:

**MainAppView.swift**

```swift
import SwiftUI

struct MainAppView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("TMK Keyboard Setup")
                .font(.title)
            
            Button(action: {
                openSettings()
            }) {
                Text("Open Settings to Enable Full Access")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
    
    func openSettings() {
        if let url = URL(string: UIApplication.openSettingsURLString) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}

```

---

### 6. Privacy Policy Note

မိူဝ်ႈၸဝ်ႈၵဝ်ႇ Submit ၶဝ်ႈ App Store ၼၼ်ႉ Apple တေတူၺ်းဝႃႈ Keyboard ၸဝ်ႈၵဝ်ႇ ၵဵပ်း Data သင်ၼႆယဝ်ႉ။

* **Best Practice:** ႁႂ်ႈတႅမ်ႈလွင်ႈ Privacy ၼႂ်း Main App ဝႃႈ "TMK Keyboard does not collect any personal data or keystrokes." ဢၼ်ၼႆႉတေႁဵတ်းႁႂ်ႈ User ယုမ်ႇယမ်ၸဝ်ႈၵဝ်ႇလိူဝ်ၵဝ်ႇယဝ်ႉ။

---