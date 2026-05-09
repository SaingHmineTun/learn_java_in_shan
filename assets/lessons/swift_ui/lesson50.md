

## **Module 7 | Lesson 50: CRUD Operations: Creating and Reading Data with @Query**

### **1. ModelContext (တူဝ်ၸတ်းၵၢၼ်)**

သင် `ModelContainer` ပဵၼ် "ႁူင်းၵဵပ်းၶေႃႈမုၼ်း"၊ `ModelContext` ၵေႃႈပဵၼ် "ၵူၼ်းႁဵတ်းၵၢၼ်" ၼႂ်းႁူင်းၼၼ်ႉယဝ်ႉ။

* ႁဝ်းၸႂ်ႉ Context တႃႇသင်ႇ **Insert** (ထႅမ်) ဢမ်ႇၼၼ် **Delete** (မွတ်ႇ) Data ယဝ်ႉ။
* ၼႂ်း SwiftUI ႁဝ်းဢဝ်မၼ်းမႃးၸႂ်ႉလႆႈၸွမ်း Environment ၼင်ႇၼႆယဝ်ႉ:
  `@Environment(\.modelContext) private var modelContext`

### **2. @Query (ၵၢၼ်ဢၢၼ်ႇ Data)**

`@Query` ပဵၼ် Macro ဢၼ်ႁဵတ်းႁႂ်ႈ View ႁဝ်း "ၵွင်ႉ" တင်း Database တႃႇသေႇယဝ်ႉ။

* မိူဝ်ႈ Data ၼႂ်း Database လႅၵ်ႈလၢႆႈ၊ `@Query` တေ Refresh View ႁဝ်းႁင်းမၼ်းၵမ်းလဵဝ်ယဝ်ႉ။
* ႁဝ်းၸၢင်ႈသင်ႇ Sort (ၸတ်းထႅဝ်) ၸွမ်း Date ဢမ်ႇၼၼ် Name လႆႈငၢႆႈငၢႆႈယဝ်ႉ။

---

### **3. Example Code: Simple Todo List**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ် "ထႅမ်" လႄႈ "ၼႄ" သဵၼ်ႈမၢႆ Todo ၶႃႈ:

```swift
import SwiftUI
import SwiftData

struct TodoListView: View {
    // 1. ႁွင်ႉၸႂ်ႉ ModelContext တႃႇ Insert/Delete
    @Environment(\.modelContext) private var modelContext
    
    // 2. ၸႂ်ႉ @Query တႃႇဢဝ် Data ဢွၵ်ႇမႃး (ၸတ်းၸွမ်းဝၼ်းတီႈ)
    @Query(sort: \TodoTask.createdAt, order: .reverse) 
    private var tasks: [TodoTask]
    
    @State private var newTaskTitle = ""
    
    var body: some View {
        NavigationStack {
            List {
                // TextField တႃႇထႅမ် Data မႂ်ႇ
                HStack {
                    TextField("Add new task...", text: $newTaskTitle)
                    Button("Add") {
                        addItem()
                    }
                    .disabled(newTaskTitle.isEmpty)
                }
                
                // ၼႄသဵၼ်ႈမၢႆလုၵ်ႉတီႈ Database
                ForEach(tasks) { task in
                    HStack {
                        Text(task.title)
                        Spacer()
                        if task.isCompleted {
                            Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
                        }
                    }
                    // Update: ၼဵၵ်းသေမၵ်းမၼ်ႈဝႃႈယဝ်ႉယဝ်ႉ
                    .onTapGesture {
                        task.isCompleted.toggle()
                    }
                }
                // Delete: ပၢၵ်ႈ (Swipe) သေမွတ်ႇပႅတ်ႈ
                .onDelete(perform: deleteItems)
            }
            .navigationTitle("TMK Tasks")
        }
    }
    
    // Create: ၵၢၼ်ထႅမ် Data
    private func addItem() {
        let newTask = TodoTask(title: newTaskTitle)
        modelContext.insert(newTask) // သင်ႇ Insert
        newTaskTitle = "" // လၢင်ႉ TextField
    }
    
    // Delete: ၵၢၼ်မွတ်ႇ Data
    private func deleteItems(offsets: IndexSet) {
        for index in offsets {
            modelContext.delete(tasks[index]) // သင်ႇ Delete
        }
    }
}

```

---

### **4. CRUD Summary Table**

| Operation | Action in SwiftData (Shan) |
| --- | --- |
| **Create** | `modelContext.insert(object)` |
| **Read** | ၸႂ်ႉ `@Query` တႃႇၼႄသဵၼ်ႈမၢႆ။ |
| **Update** | လႅၵ်ႈ Property ၶွင် Object ၼၼ်ႉၵမ်းလဵဝ် (SwiftData တေ Save ႁင်းမၼ်း)။ |
| **Delete** | `modelContext.delete(object)` |

---

### **5. Auto-Save**

တွၼ်ႈဢၼ်ၵတ်ႉၶႅၼ်ႇသုတ်းၶွင် SwiftData ၵေႃႈပဵၼ် **Auto-save** ယဝ်ႉ။ 
ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code `context.save()` ၵူႈပွၵ်ႈပွၵ်ႈ။ 
ပေႃးႁဝ်းမႄး Data ယဝ်ႉၼႆ SwiftData တေ Save လူင်း Disk ပၼ်ႁင်းမၼ်း ၼႂ်းၶိင်ႇယၢမ်းဢၼ်သၢင်ႇထုၵ်ႇၶႃႈယဝ်ႉ။