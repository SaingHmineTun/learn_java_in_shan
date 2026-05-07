
## **Module 3 | Lesson 18: Iterating with ForEach and the Identifiable Protocol**

### **1. Identifiable Protocol ပဵၼ်သင်?**
မိူဝ်ႈႁဝ်းသၢင်ႈ `struct` တႃႇၵဵပ်း Data (မိူၼ်ၼင်ႇ Student ဢမ်ႇၼၼ် Course) ၼၼ်ႉ ႁဝ်းလူဝ်ႇသႂ်ႇ Protocol ဢၼ်ၸိုဝ်ႈဝႃႈ `Identifiable` ယဝ်ႉ။
*   **ၼႃႈတီႈ:** မၼ်းသင်ႇႁႂ်ႈ `struct` ၼၼ်ႉ တေလႆႈမီး Property ဢၼ်ၸိုဝ်ႈဝႃႈ `id` တႃႇသေႇၼႆယဝ်ႉ။
*   **ၽွၼ်းလီ:** SwiftUI တေၸၢင်ႈၸတ်းၵၢၼ် Animation (မိူၼ်ၼင်ႇ Move, Delete, Insert) လႆႈမၢၼ်ႇမႅၼ်ႈ ယွၼ်ႉမၼ်းႁူႉဝႃႈ `id` လႂ် လႅၵ်ႈလၢႆႈၵႂႃႇၼႆယဝ်ႉ။

### **2. ForEach ပဵၼ်သင်?**
`ForEach` ဢမ်ႇၸႂ် Loop ယူဝ်းယူဝ်း (မိူၼ်ၼင်ႇ for-in loop)၊ မၼ်းပဵၼ် **View Structure** ဢၼ်ၸွႆႈသၢင်ႈ View လၢႆလၢႆဢၼ် ဢွၵ်ႇမႃးၸွမ်း Data ဢၼ်ႁဝ်းပၼ်မၼ်းယဝ်ႉ။

### **3. လၢႆးၸႂ်ႉ (Usage)**
သင် Data ႁဝ်းၸွမ်း `Identifiable` ယဝ်ႉၼႆ ႁဝ်းၵူၺ်းလူဝ်ႇသူင်ႇ Array ၼၼ်ႉၶဝ်ႈၵႂႃႇၼႂ်း `ForEach` လႆႈၵမ်းလဵဝ်ယဝ်ႉ။

---

### **4. Example Code: Dynamic Course List**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ Data Model လႄႈ ၵၢၼ်ၼႄႁၢင်ႈၼႂ်း List ၶႃႈ:

```swift
import SwiftUI

// 1. Data Model ဢၼ်ၸွမ်း Identifiable Protocol
struct Course: Identifiable {
    let id = UUID() // သၢင်ႈ Unique ID ႁင်းမၼ်း
    let name: String
    let icon: String
}

struct ForEachLessonView: View {
    // 2. Data Array
    let courses = [
        Course(name: "SwiftUI for Beginners", icon: "swift"),
        Course(name: "Dart & Flutter Mastery", icon: "bird"),
        Course(name: "Python for Data Science", icon: "terminal"),
        Course(name: "Android Dev with Kotlin", icon: "android")
    ]
    
    var body: some View {
        List {
            Section(header: Text("TMK Available Courses")) {
                // 3. ၸႂ်ႉ ForEach တႃႇပၼ်ႇ Loop ၼႄ View
                ForEach(courses) { course in
                    HStack(spacing: 15) {
                        Image(systemName: course.icon)
                            .foregroundStyle(.blue)
                            .frame(width: 30)
                        
                        Text(course.name)
                            .font(.headline)
                    }
                    .padding(.vertical, 5)
                }
            }
        }
    }
}
```

---

### **Summary**

| Topic | Explanation (Shan)                                                                 |
| :--- |:-----------------------------------------------------------------------------------|
| **Identifiable** | Protocol ဢၼ်မၵ်းမၼ်ႈႁႂ်ႈ Data ႁဝ်းမီး `id` ဢၼ်ဢမ်ႇမိူၼ်ပိူၼ်ႈ။                     |
| **UUID()** | ၶိူင်ႈမိုဝ်းတႃႇသၢင်ႈ ID ဢၼ်လႅၵ်ႈလၢႆႈယူႇတႃႇသေႇ (Unique Universal ID)။               |
| **ForEach** | View Structure ဢၼ်ၸွႆႈသၢင်ႈ Views လၢႆလၢႆဢၼ်ၸွမ်း Data Array။                       |
| **Dynamic UI** | SwiftUI တေၸႂ်ႉ `id` တႃႇပႂ်ႉတူၺ်းလွင်ႈလႅၵ်ႈလၢႆႈ လႄႈ ႁဵတ်း Animation ႁႂ်ႈမၢၼ်ႇမႅၼ်ႈ။ |

---