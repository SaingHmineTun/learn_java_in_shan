

## **Module 8 | Lesson 57: The Form View and Sectioning UI**

### **1. Form View ပဵၼ်သင်?**

`Form` ပဵၼ် View ဢၼ်ၸတ်းၵၢၼ်လွင်ႈ Alignment, Spacing လႄႈ Background ႁႂ်ႈသၢင်ႇထုၵ်ႇတင်းၵၢၼ် "တႅမ်ႈသႂ်ႇ" ၶေႃႈမုၼ်းယဝ်ႉ။

* သင်ၸႂ်ႉ `List` မၼ်းတေတူၺ်းမိူၼ် ၵၢၼ်ၼႄ Data (Read-only) ၵူၺ်း။
* သင်ၸႂ်ႉ `Form` မၼ်းၸင်ႇတေတူၺ်းမိူၼ် ၵၢၼ်ႁပ်ႉ Data (Input) ယဝ်ႉ။

### **2. Sectioning UI (ၵၢၼ်ၸႅၵ်ႇတွၼ်ႈ)**

မိူဝ်ႈ Form ႁဝ်းမီးၶေႃႈမုၼ်းၼမ်ၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ `Section` တႃႇၸႅၵ်ႇ "ၸုမ်း" ၶေႃႈမုၼ်း ႁႂ်ႈ User လူတ်းယွမ်း လွင်ႈသုၵ်ႉသၵ်ႉတႃယဝ်ႉ။

* **Header:** ၶေႃႈၵႂၢမ်းဝႆႉတွၼ်ႈၼိူဝ် (မိူၼ်ၼင်ႇ "Account Info")။
* **Footer:** ၶေႃႈၵႂၢမ်းသပ်းလႅင်းဝႆႉတွၼ်ႈတႂ်ႈ (မိူၼ်ၼင်ႇ "Your data is safe with TMK")။

---

### **3. Example Code: User Registration Form**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ Form တႃႇႁပ်ႉၸိုဝ်ႈ လႄႈ ၵၢၼ်တင်ႈၵႃႈ (Settings) ၶႃႈ:

```swift
import SwiftUI

struct RegistrationFormView: View {
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var sendNews: Bool = true
    @State private var themeSelection: Int = 0
    
    var body: some View {
        NavigationStack {
            Form {
                // တွၼ်ႈ 1: ၶေႃႈမုၼ်းသုၼ်ႇတူဝ်
                Section(header: Text("Personal Information")) {
                    TextField("Full Name", text: $fullName)
                    TextField("Email Address", text: $email)
                        .keyboardType(.emailAddress)
                }
                
                // တွၼ်ႈ 2: လွင်ႈမၵ်းမၼ်ႈ App
                Section(header: Text("App Preferences"), footer: Text("We will send you occasional updates.")) {
                    Toggle("Receive Newsletters", isOn: $sendNews)
                    
                    Picker("App Theme", selection: $themeSelection) {
                        Text("Light").tag(0)
                        Text("Dark").tag(1)
                        Text("System").tag(2)
                    }
                }
                
                // တွၼ်ႈ 3: Actions
                Section {
                    Button("Save Changes") {
                        print("Saving data for \(fullName)...")
                    }
                    .foregroundColor(.blue)
                    
                    Button("Reset All", role: .destructive) {
                        fullName = ""
                        email = ""
                    }
                }
            }
            .navigationTitle("TMK Registration")
        }
    }
}

```

---

### **4. Key Takeaways**

| Element | Purpose (Shan) |
| --- | --- |
| **Form** | တူဝ်ၵုမ်းထိင်း UI ႁႂ်ႈမၼ်းမီးပိူင်မိူၼ် Settings App။ |
| **Section** | ၸွႆႈၸႅၵ်ႇတွၼ်ႈ ႁႂ်ႈ User ၸႅၵ်ႇလႆႈဝႃႈ ၶေႃႈမုၼ်းလႂ် ၵွင်ႉၸူးသင်။ |
| **Grouping** | ၼႂ်း iOS, Form တေၸတ်း "လွၵ်းမူၼ်း" (Grouped Style) ႁႂ်ႈႁင်းမၼ်း။ |
| **Interactivity** | ၼႂ်း Form ႁဝ်းၸၢင်ႈသႂ်ႇလႆႈတင်း TextField, Toggle, Picker, လႄႈ Button ၸွမ်းၵၼ်ၶႃႈ။ |

---