

## **Module 5 | Lesson 34: Networking with URLSession & JSON Decoding**

### **1. URLSession ပဵၼ်သင်?**

`URLSession` ပဵၼ် API ဢၼ်မီးဝႆႉၼႂ်း iOS ႁင်းမၼ်း တႃႇၸွႆႈႁဝ်းသူင်ႇ (Send) လႄႈ ႁပ်ႉ (Receive) Data လုၵ်ႉတီႈ Web Address (URL) ယဝ်ႉ။
မၼ်းမိူၼ်ၼင်ႇ "သဵၼ်ႈတၢင်း" ဢၼ်တေၵႂႃႇဢဝ်ၶေႃႈမုၼ်းတီႈ Server မႃးပၼ် App ႁဝ်းယဝ်ႉ။

### **2. JSON Decoding ပဵၼ်သင်?**

Data ဢၼ် Server ပၼ်မႃးၼၼ်ႉ ပဵၼ် "လိၵ်ႈ" (Text) ဢၼ်မၵ်းမၼ်ႈဝႆႉၸွမ်းပိူင် JSON ယဝ်ႉ။

* **Decodable:** ပဵၼ် Protocol ဢၼ်ႁဝ်းသႂ်ႇပၼ် `struct` ႁဝ်း တႃႇသင်ႇႁႂ်ႈ Swift ၸၢင်ႈ "လႅၵ်ႈ" (Convert) JSON ၼၼ်ႉ ႁႂ်ႈပဵၼ် Object ၼႂ်း Swift ယဝ်ႉ။
* **JSONDecoder:** ၶိူင်ႈမိုဝ်းဢၼ်တေဢၢၼ်ႇ JSON သေဢဝ်မႃးသႂ်ႇၼႂ်း `struct` ႁဝ်းယဝ်ႉ။

---

### **3. Example Code: Fetching User Data**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်လူတ်ႇသဵၼ်ႈမၢႆ User လုၵ်ႉတီႈ API ၶႃႈ:

```swift
import SwiftUI

// 1. Data Model (လူဝ်ႇၸွမ်း Decodable)
struct User: Decodable, Identifiable {
    let id: Int
    let name: String
    let email: String
}

struct NetworkingView: View {
    @State private var users: [User] = []
    
    var body: some View {
        List(users) { user in
            VStack(alignment: .leading) {
                Text(user.name).font(.headline)
                Text(user.email).font(.subheadline).foregroundColor(.secondary)
            }
        }
        .navigationTitle("TMK Users")
        .task {
            // 2. ႁွင်ႉၸႂ်ႉ Function မိူဝ်ႈ View ပိုတ်ႇမႃး
            await fetchUsers()
        }
    }
    
    // 3. Networking Function
    func fetchUsers() async {
        // A. မၵ်းမၼ်ႈ URL
        guard let url = URL(string: "t") else { return }
        
        do {
            // B. လူတ်ႇ Data လုၵ်ႉတီႈ Internet
            let (data, _) = try await URLSession.shared.data(from: url)
            
            // C. လႅၵ်ႈ JSON ႁႂ်ႈပဵၼ် [User] (Decoding)
            if let decodedUsers = try? JSONDecoder().decode([User].self, from: data) {
                self.users = decodedUsers
            }
        } catch {
            print("Error: Could not fetch users.")
        }
    }
}

```

---

### **4. Steps for Networking**

1. **Define Model:** သၢင်ႈ `struct` ဢၼ်မီး Property မိူၼ်ၼင်ႇ JSON ဢၼ်တေလုၵ်ႉတီႈ Server မႃး။
2. **Create URL:** မၵ်းမၼ်ႈ Address ဢၼ်ႁဝ်းတေၵႂႃႇဢဝ် Data။
3. **Fetch Data:** ၸႂ်ႉ `URLSession.shared.data(from:)` တႃႇလူတ်ႇဢဝ်ၶေႃႈမုၼ်း။
4. **Decode:** ၸႂ်ႉ `JSONDecoder` တႃႇပိၼ်ႇ JSON ႁႂ်ႈပဵၼ် Swift Object။
5. **Update UI:** ဢဝ် Data ဢၼ်လႅၵ်ႈယဝ်ႉၼၼ်ႉ ၵႂႃႇသႂ်ႇၼႂ်း `@State` Variable တႃႇၼႄၼိူဝ် UI။

---

### **Summary**

| Component | Responsibility (Shan) |
| --- | --- |
| **URLSession** | တူဝ်ၸတ်းၵၢၼ်လွင်ႈၵွင်ႉ Internet (Connecting)။ |
| **JSON** | ႁၢင်ႈၽၢင် Data ဢၼ် Server သူင်ႇမႃး (Data format)။ |
| **Decodable** | Protocol ဢၼ်ပၼ်သုၼ်ႇႁႂ်ႈ Swift လႅၵ်ႈ JSON လႆႈ။ |
| **JSONDecoder** | ၶိူင်ႈမိုဝ်းတႃႇ "ဢၢၼ်ႇ" JSON သေသႂ်ႇၼႂ်း Object။ |

---