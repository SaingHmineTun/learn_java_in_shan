

## **Module 7 | Lesson 52: Data Filtering and Sorting at the Database Level**

### **1. ၵၢၼ်ၸတ်းထႅဝ် (Sorting)**

ႁဝ်းၸႂ်ႉ `SortDescriptor` တႃႇသင်ႇႁႂ်ႈ SwiftData ၸတ်းလၢႆးၵၢၼ်ၼႄ Data ယဝ်ႉ။ ႁဝ်းၸၢင်ႈၸတ်းၸွမ်း:

* **Alphabetical:** ၸတ်းၸွမ်းလိၵ်ႈ (A-Z, Z-A)။
* **Chronological:** ၸတ်းၸွမ်းဝၼ်းတီႈ (မႂ်ႇသုတ်း, ၵဝ်ႇသုတ်း)။
* **Numerical:** ၸတ်းၸွမ်းတူဝ်ၼပ်ႉ (ဢေႇၵႂႃႇၼမ်, ၼမ်ၵႂႃႇဢေႇ)။

### **2. ၵၢၼ်ၸႅတ်ႈတူၺ်းၶေႃႈမုၼ်း (Filtering with #Predicate)**

`#Predicate` ပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ်ၵတ်ႉၶႅၼ်ႇသုတ်းယဝ်ႉ။ မၼ်းပဵၼ်ၵၢၼ်မၵ်းမၼ်ႈ "ပိူင်ၵၢၼ်" (Condition) တႃႇလိူၵ်ႈဢဝ် Data ယဝ်ႉ။

* *တူဝ်ယၢင်ႇ:* "လိူၵ်ႈဢဝ် Task ဢၼ်ပႆႇယဝ်ႉၵူၺ်း" ဢမ်ႇၼၼ် "လိူၵ်ႈဢဝ် Project ဢၼ်မီးၶေႃႈၵႂၢမ်းဝႃႈ 'TMK' ၵူၺ်း"။

---

### **3. Example Code: Advanced @Query**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၸႂ်ႉ `@Query` တႃႇလိူၵ်ႈၼႄၵူၺ်း Task ဢၼ် "လွင်ႈယႂ်ႇ" (High Priority) လႄႈ ၸတ်းၸွမ်းဝၼ်းတီႈၶႃႈ:

```swift
import SwiftUI
import SwiftData

struct FilteredTaskView: View {
    // 1. ၵၢၼ် Filter & Sort ၼႂ်း @Query ၵမ်းလဵဝ်
    @Query(
        filter: #Predicate<TodoTask> { task in
            task.isCompleted == false // ဢဝ်ဢၼ်ပႆႇယဝ်ႉၵူၺ်း
        },
        sort: [SortDescriptor(\TodoTask.createdAt, order: .reverse)] // ၸတ်းဢၼ်မႂ်ႇသုတ်းဝႆႉၽၢႆႇၼိူဝ်
    ) 
    private var activeTasks: [TodoTask]
    
    var body: some View {
        List(activeTasks) { task in
            Text(task.title)
        }
        .navigationTitle("Active Tasks")
    }
}

```

---

### **4. Dynamic Filtering (ၵၢၼ် Filter ၸွမ်းၵၢၼ်လိူၵ်ႈ User)**

မၢင်ပွၵ်ႈ ႁဝ်းလူဝ်ႇလႆႈလႅၵ်ႈလၢႆး Filter ၸွမ်းၼင်ႇ User ၼဵၵ်းလိူၵ်ႈ (မိူၼ်ၼင်ႇ Search Bar) ယဝ်ႉ။
ၼႂ်း SwiftData ႁဝ်းလူဝ်ႇသၢင်ႈ **Custom Init** တႃႇလႅၵ်ႈ @Query ၼင်ႇၼႆယဝ်ႉ:

```swift
struct DynamicTaskListView: View {
    @Query private var tasks: [TodoTask]
    
    // ၵၢၼ်သၢင်ႈ @Query မႂ်ႇ ၸွမ်းၼင်ႇ Search Text
    init(searchText: String) {
        let predicate = #Predicate<TodoTask> { task in
            if searchText.isEmpty {
                return true // သင်ပဝ်ႇဝႆႉ ၼႄတင်းမူတ်း
            } else {
                return task.title.contains(searchText) // ၼႄၵူၺ်းဢၼ်မီးၶေႃႈၵႂၢမ်း Search
            }
        }
        
        _tasks = Query(filter: predicate, sort: \.createdAt)
    }
    
    var body: some View {
        List(tasks) { task in
            Text(task.title)
        }
    }
}

```

---

### **Summary**

| Feature | Tool (Shan) | Description                                                                       |
| --- | --- |-----------------------------------------------------------------------------------|
| **Sorting** | `SortDescriptor` | ၸတ်းထႅဝ် Data ၸွမ်း Property ဢၼ်ႁဝ်းလိူၵ်ႈ။                                       |
| **Filtering** | `#Predicate` | မၵ်းမၼ်ႈပိူင်ၵၢၼ် တႃႇလိူၵ်ႈဢဝ် Data ဢၼ်ႁဝ်းလူဝ်ႇၵူၺ်း။                            |
| **Search** | `contains` | သွၵ်ႈႁႃဢဝ်ၶေႃႈမုၼ်း ၸွမ်းလိၵ်ႈဢၼ် User တႅမ်ႈသႂ်ႇ။                                 |
| **Performance** | Database Level | ၵၢၼ် Filter ၼႂ်း Database တေဝႆးလိူဝ် ၵၢၼ်ဢဝ် Data ဢွၵ်ႇမႃး Filter ၼႂ်း Array ၶႃႈ။ |

---