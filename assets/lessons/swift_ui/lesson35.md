

## **Module 5 | Lesson 35: The Observable Pattern: @Observable and @Published**

### **1. Observable Pattern ပဵၼ်သင်?**

မၼ်းပဵၼ်လၢႆးၵၢၼ်ဢၼ် "တူဝ်ၵဵပ်းၶေႃႈမုၼ်း" (Data Store) ပွင်ႇၶၢဝ်ႇပၼ် View ဝႃႈ: 
*"ယၢမ်းလဵဝ် Data လႅၵ်ႈလၢႆႈယဝ်ႉဢိူဝ်ႈ၊ မႄးႁၢင်ႈ (Update UI) ၵမ်းလဵဝ်လႄႈ!"* ၼႆယဝ်ႉ

ၼႂ်း SwiftUI မၼ်းမီး 2 လၢႆး ဢၼ်ၸႂ်ႉတိုဝ်းၵၼ်ၼမ်ယဝ်ႉ:

* **`@Observable` (Modern - Swift 5.9+):** ငၢႆႈသုတ်း၊ လႅၼ်ႈဝႆသုတ်း၊ လႄႈ ၸႂ်ႉတိုဝ်းငၢႆႈသုတ်း။
* **`ObservableObject` & `@Published` (Classic):** ၸႂ်ႉတႃႇ App ဢၼ်လူဝ်ႇ Support iOS 16 လူင်းတႂ်ႈ။

### **2. @Observable (ပၢၼ်မႂ်ႇ)**

မိူဝ်ႈႁဝ်းသႂ်ႇ `@Observable` ၼိူဝ် `class` ၼိုင်ႈဢၼ်ၼၼ်ႉ SwiftUI တေပႂ်ႉတူၺ်း Property ၵူႈဢၼ်ၼႂ်း class ၼၼ်ႉႁင်းမၼ်းယဝ်ႉ။ 
ပေႃးမၼ်း မီးလွင်ႈလႅၵ်ႈလၢႆႈၼႆ View တေ Refresh ၵမ်းလဵဝ်ယဝ်ႉl။

### **3. @State လႄႈ @Bindable**

* **`@State`:** ၸႂ်ႉတႃႇသၢင်ႈ Object ၼႂ်း View တႃႇၵုမ်းထိင်း Lifecycle။
* **`@Bindable`:** ၸႂ်ႉတႃႇ "ၵွင်ႉ" (Binding) Data လုၵ်ႉတီႈ Observable Object ၵႂႃႇၸူး TextField ဢမ်ႇၼၼ် Picker။

---

### **4. Example Code: User ViewModel with @Observable**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၸႅၵ်ႇ Logic ဢွၵ်ႇတီႈ View ၶႃႈ:

```swift
import SwiftUI
import Observation // လူဝ်ႇ Import တႃႇၸႂ်ႉ @Observable

// 1. Data Model
struct TechUser: Identifiable {
    let id = UUID()
    var name: String
}

// 2. ViewModel (တူဝ်ၸတ်းၵၢၼ် Data)
@Observable
class UserViewModel {
    var users: [TechUser] = [
        TechUser(name: "Sai Mao"),
        TechUser(name: "TMK Dev")
    ]
    
    func addUser() {
        let newUser = TechUser(name: "New Student \(users.count + 1)")
        users.append(newUser)
    }
}

// 3. View (တူဝ်ၼႄ UI)
struct ObservableLessonView: View {
    // သၢင်ႈ Instance ၶွင် ViewModel
    @State private var viewModel = UserViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.users) { user in
                Text(user.name)
            }
            .navigationTitle("TMK Community")
            .toolbar {
                Button(action: {
                    viewModel.addUser() // ႁွင်ႉၸႂ်ႉ Logic ၼႂ်း ViewModel
                }) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

```

---

### **Summary**

| Keyword | Purpose (Shan)                                                             |
| --- |----------------------------------------------------------------------------|
| **@Observable** | Macro ဢၼ်ႁဵတ်းႁႂ်ႈ class ၼိုင်ႈဢၼ် ၸၢင်ႈပွင်ႇၶၢဝ်ႇလွင်ႈလႅၵ်ႈလၢႆႈ Data လႆႈ။ |
| **ViewModel** | ၼႃႈတီႈၸတ်းၵၢၼ် Logic လႄႈ Networking (ၸႅၵ်ႇဢွၵ်ႇမႃးတီႈ UI)။                 |
| **Separation of Concerns** | ၵၢၼ်ၸႅၵ်ႇ "Logic" (ViewModel) လႄႈ "Display" (View) ႁႂ်ႈ Code တူၺ်းငၢႆႈ။    |
| **Observation Framework** | ပဵၼ်ၶိူင်ႈမိုဝ်းမႂ်ႇ ဢၼ်ႁဵတ်းႁႂ်ႈ App လႅၼ်ႈဝႆး လႄႈ ၸႂ်ႉ Memory ဢေႇ။        |

---