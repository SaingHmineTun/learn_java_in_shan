

## **Module 8 | Lesson 63: Handling Focus States and Keyboard Toolbars**

### **1. @FocusState ပဵၼ်သင်?**

မၼ်းပဵၼ် Property Wrapper ဢၼ်ၸွႆႈႁႂ်ႈႁဝ်း "ႁူႉ" လႄႈ "သင်ႇ" လႆႈဝႃႈ လွၵ်းလႂ်တိုၵ်ႉထုၵ်ႇလိူၵ်ႈဝႆႉ (Focused) ယူႇၼႆယဝ်ႉ။

* ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ Keyboard ပိုတ်ႇၵမ်းလဵဝ်မိူဝ်ႈပိုတ်ႇၼႃႈၸေႃး (Auto-focus)။
* ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ မၼ်းလႅၼ်ႈၵႂႃႇလွၵ်းထႅင်ႈဢၼ်ၼိုင်ႈ မိူဝ်ႈ User ၼဵၵ်း Return။

### **2. Keyboard Toolbars**

ပဵၼ်ၵၢၼ်ထႅမ်ပုမ်ႇ (Buttons) ဝႆႉၼိူဝ် Keyboard (Input Accessory View) တႃႇၸွႆႈၵၢၼ်တႅမ်ႈလိၵ်ႈယဝ်ႉ။

---

### **3. Example Code: Smooth Multi-field Form**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ႁဵတ်းႁႂ်ႈ Keyboard လႅၼ်ႈၸွမ်းလွၵ်းၼင်ႇၵၢင်ၸႂ်ၶႃႈ:

```swift
import SwiftUI

struct FocusFormView: View {
    // 1. မၵ်းမၼ်ႈ Enum တႃႇလွၵ်းလၢႆလၢႆဢၼ်
    enum Field {
        case firstName, lastName, email
    }
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    
    // 2. ၸႂ်ႉ @FocusState တႃႇၵုမ်းထိင်း Cursor
    @FocusState private var focusedField: Field?
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Contact Info")) {
                    TextField("First Name", text: $firstName)
                        .focused($focusedField, equals: .firstName)
                        .submitLabel(.next) // လႅၵ်ႈပုမ်ႇ Return ပဵၼ် "Next"
                    
                    TextField("Last Name", text: $lastName)
                        .focused($focusedField, equals: .lastName)
                        .submitLabel(.next)
                    
                    TextField("Email", text: $email)
                        .focused($focusedField, equals: .email)
                        .submitLabel(.done) // လႅၵ်ႈပုမ်ႇ Return ပဵၼ် "Done"
                }
            }
            .navigationTitle("TMK Contact")
            // 3. သင်ႇပၼ် Logic မိူဝ်ႈ User ၼဵၵ်း Return တီႈ Keyboard
            .onSubmit {
                switch focusedField {
                    case .firstName: focusedField = .lastName
                    case .lastName: focusedField = .email
                    default: focusedField = nil // ပိၵ်ႉ Keyboard
                }
            }
            // 4. ထႅမ် Toolbar ၼိူဝ် Keyboard
            .toolbar {
                ToolbarItem(placement: .keyboard) {
                    HStack {
                        Spacer()
                        Button("Done") {
                            focusedField = nil // ပိၵ်ႉ Keyboard
                        }
                    }
                }
            }
            .onAppear {
                // ႁႂ်ႈ Keyboard ပိုတ်ႇတီႈ First Name ၵမ်းလဵဝ်
                focusedField = .firstName
            }
        }
    }
}

```

---

### **4. Key UX Tips**

| Feature | Action (Shan) | Result |
| --- | --- | --- |
| **submitLabel** | `.next`, `.go`, `.send`, `.done` | ပၼ်ၾၢင်ႉ User ဝႃႈ ၼဵၵ်းယဝ်ႉတေၵႂႃႇတီႈလႂ်။ |
| **.keyboardType** | `.emailAddress`, `.numberPad` | ၼႄ Keyboard ဢၼ်သၢင်ႇထုၵ်ႇတင်းၶေႃႈမုၼ်း။ |
| **Dismiss Keyboard** | `focusedField = nil` | ၸွႆႈပိၵ်ႉ Keyboard မိူဝ်ႈ User ႁဵတ်းၵၢၼ်ယဝ်ႉ။ |

---