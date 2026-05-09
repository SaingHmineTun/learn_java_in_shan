

## **Module 8 | Lesson 58: TextEditor vs TextField: Multi-line Input**

### **1. TextField (ထႅဝ်လဵဝ်)**

`TextField` ပဵၼ်ၶိူင်ႈမိုဝ်း တႃႇႁပ်ႉလိၵ်ႈ ဢၼ်မီးယူႇ ထႅဝ်လဵဝ်ၵူၺ်း (Single-line)။

* **Usage:** ၸႂ်ႉတႃႇ ၸိုဝ်ႈ (Name), Email, Password, ဢမ်ႇၼၼ် ႁူဝ်ၶေႃႈ (Title)။
* **Behavior:** ပေႃး User ၼဵၵ်း "Return" တီႈ Keyboard ၼႆ မၼ်းတေဢမ်ႇလူင်းပၼ်သဵၼ်ႈမႂ်ႇ၊ ၵူၺ်းၵႃႈမၼ်းတေသင်ႇ Submit ဢမ်ႇၼၼ် ၶၢႆႉၵႂႃႇၸူး လွၵ်းတၢင်ႇဢၼ်။

### **2. TextEditor (ထႅဝ်ၼမ်)**

`TextEditor` ပဵၼ်ၶိူင်ႈမိုဝ်းတႃႇႁပ်ႉလိၵ်ႈ ဢၼ်ၸၢင်ႊမီး လၢႆလၢႆထႅဝ် (Multi-line)။

* **Usage:** ၸႂ်ႉတႃႇ မၢႆတွင်း (Notes), လွင်ႈသပ်းလႅင်း (Description), ဢမ်ႇၼၼ် ႁူဝ်လိၵ်ႈယၢဝ်းယၢဝ်း။
* **Behavior:** ပေႃး User ၼဵၵ်း "Return" ၼႆ မၼ်းတေလူင်းပၼ် ထႅဝ်မႂ်ႇ (New Line) ပၼ်တႃႇသေႇ။

---

### **3. Example Code: Profile Edit Form**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ဢဝ်တင်းသွင်မဵဝ်းမႃးၸႂ်ႉၸွမ်းၵၼ်ၼႂ်း Form ၶႃႈ:

```swift
import SwiftUI

struct ProfileEditorView: View {
    @State private var username: String = ""
    @State private var bio: String = "တႅမ်ႈလွင်ႈတူဝ်ၸဝ်ႈၵဝ်ႇတီႈၼႆႈ..."
    
    var body: some View {
        NavigationStack {
            Form {
                // 1. TextField တႃႇတႅမ်ႈၸိုဝ်ႈ (မီးထႅဝ်လဵဝ်)
                Section(header: Text("Account Info")) {
                    TextField("ၸိုဝ်ႈၸဝ်ႈၵဝ်ႇ", text: $username)
                }
                
                // 2. TextEditor တႃႇတႅမ်ႈ Bio (မီးဝႆႉထႅဝ်တင်းၼမ်)
                Section(header: Text("Biography")) {
                    TextEditor(text: $bio)
                        .frame(minHeight: 150) // လူဝ်ႇမၵ်းမၼ်ႈတၢင်းသုင် ၸင်ႇတေတူၺ်းလီ
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Edit Profile")
        }
    }
}

```

---

### **4. Key Comparison**

| Feature | TextField                      | TextEditor                             |
| --- |--------------------------------|----------------------------------------|
| **Lines** | ထႅဝ်လဵဝ် (Single-line)         | ထႅဝ်ၼမ် (Multi-line)                   |
| **Placeholder** | မီးတူဝ်ၸွႆႈ (Placeholder text) | ဢမ်ႇမီး (လူဝ်ႇသၢင်ႈႁင်းၵူၺ်း)          |
| **Styling** | မီး Border Style လၢႆမဵဝ်း      | မၼ်းတေပဵၼ်လွၵ်းပဝ်ႇဝႆႉၵူၺ်း (Plain)    |
| **Scroll** | ဢမ်ႇလႆႈ                        | ပေႃးလိၵ်ႈၼမ် မၼ်းတေ Scroll လႆႈၼႂ်းတူဝ် |

---

### **Tip: SwiftUI 4.0 "Axis" Upgrade**

ၼႂ်း iOS 16 ၶိုၼ်ႈၵႂႃႇၼၼ်ႉ `TextField` မီးလွင်ႈၵတ်ႉၶႅၼ်ႇမႃးထႅင်ႈ လွင်ႈၼိုင်ႈၶႃႈ။
ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ TextField "ယိုတ်ႈ" လူင်းလႆႈထႅင်ႈလၢႆလၢႆထႅဝ် လူၺ်ႈဢမ်ႇၸႂ်ႉ TextEditor ၶႃႈ:

```swift
TextField("Notes", text: $bio, axis: .vertical) // မၼ်းတေယႂ်ႇၶိုၼ်ႈၸွမ်းလိၵ်ႈ
    .lineLimit(3...10) // မၵ်းမၼ်ႈဝႃႈ ႁႂ်ႈမၼ်းယႂ်ႇလႆႈ 3 တေႃႇ 10 သဵၼ်ႈ

```

---
