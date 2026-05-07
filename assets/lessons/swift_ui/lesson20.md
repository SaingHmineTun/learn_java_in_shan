

## **Module 3 | Lesson 20: Master-Detail Flow: Passing Data Between Screens**

### **1. Master-Detail Flow ပဵၼ်သင်?**
မၼ်းပဵၼ် Design Pattern ဢၼ်ႁဝ်း တေလႆႈႁၼ် ၼမ်သေပိူၼ်ႈယဝ်ႉ:
*   **Master View:** ပဵၼ်ၼႃႈၸေႃးဢၼ်ၼႄ List တင်းမူတ်း (မိူၼ်ၼင်ႇ သဵၼ်ႈမၢႆလုၵ်ႈႁဵၼ်း)။
*   **Detail View:** ပဵၼ်ၼႃႈၸေႃး ဢၼ်ၼႄလွင်ႈတၢင်းႁူဝ်ယွႆႈ ၶွင်ဢၼ်ႁဝ်းလိူၵ်ႈၼၼ်ႉ (မိူၼ်ၼင်ႇ ႁၢင်ႈ လႄႈ ပိုၼ်းလုၵ်ႈႁဵၼ်း)။



### **2. လၢႆးသူင်ႇ Data (Passing Data)**
ၼႂ်း SwiftUI ၼႆႉ ၵၢၼ်သူင်ႇ Data ငၢႆႈၼႃႇ။ ယွၼ်ႉႁဝ်းသူင်ႇၵႂႃႇၸူး **Initializer** ၶွင် Detail View ၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ။
1.  **တီႈ Detail View:** သၢင်ႈ Variable တႃႇႁပ်ႉ Data (မိူၼ်ၼင်ႇ `let course: Course`)။
2.  **တီႈ Master View:** မိူဝ်ႈႁွင်ႉၸႂ်ႉ `NavigationLink` ၼၼ်ႉ၊ သူင်ႇ Object ၵႂႃႇပၼ်မၼ်း။

---

### **3. Example Code: Passing Course Data**

မႃးတူၺ်းလၢႆးၵွင်ႉ List ၵႂႃႇၸူး ၼႃႈၸေႃး Detail ၶႃႈ:

```swift
import SwiftUI

// 1. Data Model
struct TechItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let icon: String
}

// 2. Detail View (ၼႃႈจอတွၼ်ႈပႅၵ်ႇလႅင်း)
struct DetailView: View {
    let item: TechItem // Variable တႃႇႁပ်ႉ Data ဢၼ်သူင်ႇမႃး
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: item.icon)
                .font(.system(size: 100))
                .foregroundStyle(.blue)
            
            Text(item.title)
                .font(.largeTitle).bold()
            
            Text(item.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        }
        .navigationTitle(item.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// 3. Master View (ၼႃႈจอသဵၼ်ႈမၢႆ)
struct MasterView: View {
    let items = [
        TechItem(title: "SwiftUI", description: "Apple's declarative framework for building UI.", icon: "swift"),
        TechItem(title: "Flutter", description: "Google's UI toolkit for multi-platform apps.", icon: "bird"),
        TechItem(title: "Kotlin", description: "Modern language for Android development.", icon: "android")
    ]
    
    var body: some View {
        NavigationStack {
            List(items) { item in
                // သူင်ႇ item ၵႂႃႇၸူး DetailView
                NavigationLink(destination: DetailView(item: item)) {
                    HStack {
                        Image(systemName: item.icon)
                            .frame(width: 30)
                        Text(item.title)
                    }
                }
            }
            .navigationTitle("TMK Tech")
        }
    }
}
```

---

### **Summary (သူးပ်းႁူဝ်တွၼ်ႈႁဵၼ်း)**

| Role | Responsibility (Shan) |
| :--- | :--- |
| **Master View** | ၼႄ List တင်းမူတ်း လႄႈ ၸႂ်ႉ `NavigationLink` တႃႇသူင်ႇ Data။ |
| **Detail View** | သၢင်ႈ Variable (let) တႃႇႁပ်ႉ Data သေဢဝ်မႃးၼႄႁၢင်ႈၽၢင်။ |
| **Passing Data** | သူင်ႇ Object တင်းမူတ်းၵႂႃႇ ၸွမ်းလၢႆး Initializer ၶွင် View မႂ်ႇ။ |
| **User Flow** | User ၼဵၵ်း List -> DetailView သၢင်ႈမႃးၸွမ်း Data ၼၼ်ႉ -> ၼႄၼိူဝ် Screen။ |

---

**လွင်ႈသူင်ႇ Data ၸိူင်ႉၼႆ တေႁဵတ်းႁႂ်ႈ App ၸဝ်ႈၵဝ်ႇ မီးလွင်ႈၵွင်ႉၵၢႆႇၵၼ်ၶႅမ်ႉၶႅမ်ႉၶႃႈ။**
တွၼ်ႈၼႃႈ ႁဝ်းတေၵႂႃႇ Lesson 21: **"Customizing List Styles and Insets"** တႃႇႁဵတ်းႁႂ်ႈ List ႁဝ်း ႁၢင်ႈလီလိူဝ်ၵဝ်ႇၶႃႈ။

မီးတွၼ်ႈလႂ် ၶႂ်ႈထၢမ်ထႅမ်ၵဵဝ်ႇလူၺ်ႈ Master-Detail ယူႇႁႃႉၶႃႈ?