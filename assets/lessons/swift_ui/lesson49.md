

## **Module 7 | Lesson 49: Introduction to SwiftData: Models and Containers**

### **1. SwiftData ပဵၼ်သင်?**

မၼ်းပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ်ၸွႆႈႁႂ်ႈႁဝ်းၵဵပ်း Data (မိူၼ်ၼင်ႇ သဵၼ်ႈမၢႆၵၢၼ်ႁဵတ်း, ပိုၼ်းၵၢၼ်သင်ႇၶွင်) ဝႆႉၼႂ်း iPhone/iPad ႁဝ်းယဝ်ႉ။
တႅၼ်းၵၢၼ်ဢၼ် App တေ Reset တူဝ်မၼ်းၵူႈပွၵ်ႈ ဢၼ်ပိုတ်ႇမႃးၼၼ်ႉ SwiftData တေၸွႆႈႁႂ်ႈ Data ၸိူဝ်းၼၼ်ႉ "ယူႇၼိမ်" ဝႆႉတေႃႇထိုင်ႁဝ်းမွတ်ႇပႅတ်ႈမၼ်းယဝ်ႉ။

### **2. @Model (တူဝ်ၵဵပ်းၶေႃႈမုၼ်း)**

`@Model` ပဵၼ် Macro ဢၼ်ႁဝ်းသႂ်ႇပၼ် `class` တႃႇသင်ႇႁႂ်ႈ SwiftData ႁူႉဝႃႈ *"ဢဝ် class ၼႆႉ ၵႂႃႇသၢင်ႈပဵၼ် Table ၼႂ်း Database လႄႈ"* ၼႆယဝ်ႉ။

* မၼ်းတေလႅၵ်ႈ Property ၼႂ်း class (မိူၼ်ၼင်ႇ String, Int) ႁႂ်ႈပဵၼ် လွၵ်းၵဵပ်းၶေႃႈမုၼ်း ႁင်းမၼ်းယဝ်ႉ။

### **3. ModelContainer (ဢွင်ႈတီႈၵဵပ်းၶေႃႈမုၼ်း)**

`ModelContainer` ပဵၼ် "ဢွင်ႈတီႈ" ဢမ်ႇၼၼ် "ႁူင်းၵဵပ်းၶေႃႈမုၼ်း" ယဝ်ႉ။ မၼ်းမီးၼႃႈတီႈ:

* မၵ်းမၼ်ႈဝႃႈ App ႁဝ်းတေၵဵပ်း Data မဵဝ်းလႂ် လႄႈ ၸိူင်ႉႁိုဝ် (Schema)။
* ၸတ်းၵၢၼ်လွင်ႈၵဵပ်း Data လူင်းၼႂ်း Disk (Storage) ယဝ်ႉ။

---

### **4. Example Code: Defining a Model**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ Model တႃႇၵဵပ်း "ၵၢၼ်ႁဵတ်း" (Task) ၼႂ်း App ၶႃႈ:

```swift
import Foundation
import SwiftData

// 1. မၵ်းမၼ်ႈ Model
@Model
class TodoTask {
    var title: String
    var isCompleted: Bool
    var createdAt: Date
    
    init(title: String, isCompleted: Bool = false, createdAt: Date = .now) {
        self.title = title
        self.isCompleted = isCompleted
        self.createdAt = createdAt
    }
}

```

### **5. ၵၢၼ်ႁၢင်ႈႁႅၼ်းတူဝ်တၼ်း (Setup)**

ႁဝ်းလူဝ်ႇလႆႈသင်ႇႁႂ်ႈ App ႁဝ်း ႁႂ်ႈႁူႉၸၵ်း Container ၼႆႉ တီႈ File `App.swift` ၶႃႈ:

```swift
import SwiftUI
import SwiftData

@main
struct TMKTodoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // 2. သႂ်ႇ ModelContainer ႁႂ်ႈ App တင်းမူတ်းၸႂ်ႉလႆႈ
        .modelContainer(for: TodoTask.self)
    }
}

```

---

### **Summary**

| Concept | Explanation (Shan) |
| --- | --- |
| **SwiftData** | Framework တႃႇၵဵပ်း Data ဝႆႉၼႂ်းၶိူင်ႈ (Persistence)။ |
| **@Model** | Macro ဢၼ်လႅၵ်ႈ class ႁႂ်ႈပဵၼ် Database Table။ |
| **ModelContainer** | "ႁူင်းၵဵပ်း" ဢၼ်ၸတ်းၵၢၼ်လွင်ႈၵဵပ်း Data တေႉတေႉ။ |
| **ModelContext** | (တေႁဵၼ်းတွၼ်ႈၼႃႈ) "ၵူၼ်းၵၢင်" ဢၼ်ၸွႆႈႁဝ်း ထႅမ်/မႄး/မွတ်ႇ Data။ |

---