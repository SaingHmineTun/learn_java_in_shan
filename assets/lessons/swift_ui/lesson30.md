

## **Module 4 | Lesson 30: Using DisclosureGroups and OutlineGroups for Hierarchy**

### **1. DisclosureGroup ပဵၼ်သင်?**

မၼ်းပဵၼ် View ဢၼ်မီး ႁၢင်ႈလိၼ်ႈၵၢင်ႇ (Chevron icon) တႃႇပၼ် User ၼဵၵ်းပိုတ်ႇတူၺ်း Content ဢၼ်သိူင်ႇဝႆႉယဝ်ႉ။

* **Usage:** ၸႂ်ႉတႃႇ Menu ဢမ်ႇၼၼ် FAQ ဢၼ်ႁဝ်းဢမ်ႇၶႂ်ႈၼႄ Content တင်းမူတ်းၵမ်းလဵဝ် တႃႇလူတ်းယွမ်းလွင်ႈသုၵ်ႉသၵ်ႉ (Clutter)။

### **2. OutlineGroup ပဵၼ်သင်?**

မၼ်းမိူၼ် `DisclosureGroup` ၵူၺ်းၵႃႈမၼ်းၶႅမ်ႉလိူဝ်ၼၼ်ႉၵွၼ်ႇ။ မၼ်းၸၢင်ႈ "ပၼ်ႇ Loop" ၼႄ Data ဢၼ်မီးဝႆႉ လၢႆလၢႆၸၼ်ႉ (Nested Data) ႁင်းမၼ်းၵမ်းလဵဝ်ယဝ်ႉ။

* **Requirement:** Data Model ႁဝ်းလူဝ်ႇမီး Property ဢၼ်ၵွင်ႉၸူးတူဝ်မၼ်းၶိုၼ်ႈ (Recursive)။

---

### **3. Example Code: Course Curriculum Outline**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ Curriculum ဢၼ်ပိုတ်ႇတူၺ်း Lesson လႆႈၶႃႈ:

```swift
import SwiftUI

// 1. Data Model တႃႇ Nested Data
struct CurriculumItem: Identifiable {
    let id = UUID()
    let name: String
    var children: [CurriculumItem]? // Recursive property
}

struct OutlineLessonView: View {
    // 2. Sample Data
    let modules = [
        CurriculumItem(name: "Module 1: Fundamentals", children: [
            CurriculumItem(name: "Lesson 1: Introduction"),
            CurriculumItem(name: "Lesson 2: Swift Basics")
        ]),
        CurriculumItem(name: "Module 2: Layouts", children: [
            CurriculumItem(name: "Lesson 3: Stacks"),
            CurriculumItem(name: "Lesson 4: Grids")
        ])
    ]
    
    @State private var isExpanded = true
    
    var body: some View {
        List {
            // A. DisclosureGroup: ၸႂ်ႉတႃႇ Static Content ဢမ်ႇၼၼ် Manual control
            DisclosureGroup("TMK Academy Info", isExpanded: $isExpanded) {
                Text("ႁပ်ႉတွၼ်ႈၵူႈၵေႃႉၶဝ်ႈၸူး TMK Academy ယူႇၶႃႈ။")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            // B. OutlineGroup: ၸႂ်ႉတႃႇပၼ်ႇ Loop ၼႄ Data
            Section(header: Text("Course Curriculum")) {
                OutlineGroup(modules, children: \.children) { item in
                    HStack {
                        Image(systemName: item.children == nil ? "book.fill" : "folder.fill")
                            .foregroundStyle(.blue)
                        Text(item.name)
                    }
                }
            }
        }
        .listStyle(.insetGrouped)
        .navigationTitle("Hierarchy")
    }
}

```

---

### **Summary**

| View | Explanation (Shan)                                                          |
| --- |-----------------------------------------------------------------------------|
| **DisclosureGroup** | View ဢၼ်ၸွႆႈ "ပိၵ်ႉ/ပိုတ်ႇ" Content တႃႇလူတ်းလွင်ႈသုၵ်ႉသၵ်ႉ။                 |
| **OutlineGroup** | ၸႂ်ႉတႃႇၼႄ Data ဢၼ်မီးလၢႆလၢႆၸၼ်ႉ (Tree structure) ၼႂ်း List ႁင်းမၼ်း။        |
| **isExpanded** | @State Variable တႃႇၵုမ်းထိင်းဝႃႈ ႁႂ်ႈမၼ်း "ပိုတ်ႇ" ဝႆႉ ဢမ်ႇၼၼ် "ပိၵ်ႉ" ဝႆႉ။ |
| **Recursive Data** | Data Model ဢၼ်မီးသဵၼ်ႈမၢႆ (Array) ၶွင်တူဝ်မၼ်း ယူႇၼႂ်းတူဝ်မၼ်းၶိုၼ်း။       |

---