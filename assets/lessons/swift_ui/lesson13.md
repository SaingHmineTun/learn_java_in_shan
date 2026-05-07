

## **Module 2 | Lesson 13: Conditional Rendering: if/else and Switch in Stacks**

### **1. Conditional Rendering ပဵၼ်သင်?**
မၼ်းပဵၼ်ၵၢၼ်ၸႂ်ႉ **Control Flow** (မိူၼ်ၼင်ႇ `if`, `else`, `switch`) ၼႂ်း `body` ၶွင် SwiftUI တႃႇတႅပ်းတတ်းဝႃႈ View လႂ် တေထုၵ်ႇသၢင်ႈဢွၵ်ႇမႃးယဝ်ႉ။
*   **SwiftUI Power:** မိူဝ်ႈ Condition လႅၵ်ႈလၢႆႈ၊ SwiftUI တေ "ထွၼ်" (Remove) View ဢၼ်ၵဝ်ႇဢွၵ်ႇသေ "သႂ်ႇ" (Insert) View မႂ်ႇၶဝ်ႈမႃး ႁင်းမၼ်းယဝ်ႉ။

### **2. ၸႂ်ႉ `if / else` ၼႂ်း Stacks**
ႁဝ်းၸၢင်ႈတႅမ်ႈ `if` ဝႆႉၼႂ်း `VStack`, `HStack` ဢမ်ႇၼၼ် `ZStack` လႆႈၵမ်းလဵဝ်ၶႃႈ။

```swift
VStack {
    if isLoggedIn {
        Text("Welcome Back!")
    } else {
        Button("Log In") { isLoggedIn = true }
    }
}
```

### **3. ၸႂ်ႉ `switch` တႃႇလၢႆ Condition**
သင်ႁဝ်းမီးလၢႆလၢႆ "ငဝ်းလၢႆး" (States) — မိူၼ်ၼင်ႇ Loading, Success, Error — ၵၢၼ်ၸႂ်ႉ `switch` တေႁဵတ်းႁႂ်ႈ Code ႁဝ်းမူတ်းသႂ်လိူဝ် `if-else` ယၢဝ်းယၢဝ်းၶႃႈ။

---

### **4. Example Code: App State Demo**

တူၺ်းတူဝ်ယၢင်ႇ ဢၼ်ၸႂ်ႉ `switch` တႃႇလႅၵ်ႈၼႃႈၸေႃး ၸွမ်း Status ၶႃႈ:

```swift
import SwiftUI

// သၢင်ႈ Enum တႃႇမၵ်းမၼ်ႈ Status
enum AppStatus {
    case loading
    case success
    case failure
}

struct ConditionalView: View {
    @State private var status: AppStatus = .loading
    
    var body: some View {
        VStack(spacing: 20) {
            
            // ၸႂ်ႉ Switch ၼႂ်း View
            switch status {
            case .loading:
                ProgressView("Loading...") // Built-in loading spinner
                
            case .success:
                VStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundStyle(.green)
                        .font(.system(size: 60))
                    Text("ႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈလီငၢမ်း!")
                }
                
            case .failure:
                VStack {
                    Image(systemName: "exclamationmark.triangle.fill")
                        .foregroundStyle(.red)
                        .font(.system(size: 60))
                    Text("မီးလွင်ႈၽိတ်းပိူင်ႈ!")
                }
            }
            
            Divider().padding()
            
            // ပုမ်ႇတႃႇၸၢမ်းလႅၵ်ႈ Status
            HStack {
                Button("Success") { status = .success }
                Button("Error") { status = .failure }
                Button("Reset") { status = .loading }
            }
            .buttonStyle(.bordered)
        }
        .padding()
        .animation(.default, value: status) // ထႅမ် Animation ႁႂ်ႈမၼ်းလႅၵ်ႈလၢႆႈၶႅမ်ႉၶႅမ်ႉ
    }
}
```

---

### **Summary (သူးပ်းႁူဝ်တွၼ်ႈႁဵၼ်း)**

| Topic | Explanation (Shan)                                                                    |
| :--- |:--------------------------------------------------------------------------------------|
| **if / else** | ၸႂ်ႉတႃႇလိူၵ်ႈၼႄ View မိူဝ်ႈမီး ငဝ်းလၢႆး 2 ဢၼ် (လီၸႂ်ႉၸွမ်း True/False)။               |
| **switch** | ၸႂ်ႉတႃႇလိူၵ်ႈၼႄ View မိူဝ်ႈမီး ငဝ်းလၢႆး တင်းၼမ်လၢႆ (လီၸႂ်ႉၸွမ်း Enum)။                |
| **Dynamic View** | SwiftUI တေထွၼ် View ဢွၵ်ႇ လႄႈ သႂ်ႇ View ၶဝ်ႈႁင်းမၼ်း မိူဝ်ႈ Condition လႅၵ်ႈ။          |
| **Optional UI** | ႁဝ်းၸၢင်ႈၸႂ်ႉ `if` ၵူၺ်းၵေႃႈလႆႈ တႃႇၼႄ View ၵမ်းလွၵ်းၵမ်းလၢႆ (Conditional visibility)။ |

---