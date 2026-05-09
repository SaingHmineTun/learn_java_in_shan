

## **Module 7 | Project 7: Personal Coding Log & Task Manager**

ၼႆႉပဵၼ် Code တင်းမူတ်း ဢၼ်ၸဝ်ႈၵဝ်ႇၸၢင်ႈဢဝ်ၵႂႃႇ Copy သႂ်ႇၼႂ်း Xcode သေ Run လႆႈၵမ်းလဵဝ်ၶႃႈ။ (ၸႅၵ်ႇပဵၼ် 3 Files ယႂ်ႇယႂ်ႇၶႃႈ)

### **File 1: Models.swift**

ၵဵပ်းပိူင် Database ၶွင် App ၶႃႈ။

```swift
import Foundation
import SwiftData

@Model
final class CodingCategory {
    var name: String
    var icon: String
    
    // One-to-Many: Category ၼိုင်ႈဢၼ် မီးလၢႆ Task
    @Relationship(deleteRule: .cascade, inverse: \CodingTask.category)
    var tasks: [CodingTask]? = []
    
    init(name: String, icon: String) {
        self.name = name
        self.icon = icon
    }
}

@Model
final class CodingTask {
    var title: String
    var details: String
    var timestamp: Date
    var isCompleted: Bool
    var category: CodingCategory? // ၵွင်ႉၶိုၼ်းၸူး Category
    
    init(title: String, details: String = "", timestamp: Date = .now, isCompleted: Bool = false) {
        self.title = title
        self.details = details
        self.timestamp = timestamp
        self.isCompleted = isCompleted
    }
}

```

---

### **File 2: CodingLogApp.swift**

တူဝ် Setup ModelContainer ၶွင် App တင်းမူတ်းၶႃႈ။

```swift
import SwiftUI
import SwiftData

@main
struct CodingLogApp: App {
    // သၢင်ႈ Container တႃႇ Models တင်းသွင်ဢၼ်
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            CodingCategory.self,
            CodingTask.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            MainDashboardView()
        }
        .modelContainer(sharedModelContainer)
    }
}

```

---

### **File 3: MainViews.swift (UI တင်းမူတ်း)**

ၼႃႈจอ Dashboard လႄႈ ၵၢၼ်ၸတ်းၵၢၼ် Data ၶႃႈ။

```swift
import SwiftUI
import SwiftData

// --- 1. Dashboard View ---
struct MainDashboardView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \CodingCategory.name) private var categories: [CodingCategory]
    
    @State private var showAddCategory = false
    @State private var newCatName = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(categories) { category in
                    NavigationLink(destination: TaskListView(category: category)) {
                        HStack {
                            Text(category.icon)
                            VStack(alignment: .leading) {
                                Text(category.name).font(.headline)
                                Text("\(category.tasks?.count ?? 0) logs").font(.caption).foregroundColor(.secondary)
                            }
                        }
                    }
                }
                .onDelete(perform: deleteCategory)
            }
            .navigationTitle("TMK Coding Log")
            .toolbar {
                Button(action: { showAddCategory.toggle() }) {
                    Label("Add Category", systemImage: "folder.badge.plus")
                }
            }
            .sheet(isPresented: $showAddCategory) {
                NavigationStack {
                    Form {
                        TextField("Category Name (e.g. Swift, Python)", text: $newCatName)
                    }
                    .navigationTitle("New Category")
                    .toolbar {
                        Button("Save") {
                            let icons = ["💻", "📱", "🌐", "🤖", "🎮"]
                            let newCat = CodingCategory(name: newCatName, icon: icons.randomElement()!)
                            modelContext.insert(newCat)
                            newCatName = ""
                            showAddCategory = false
                        }
                    }
                }
                .presentationDetents([.fraction(0.3)])
            }
            .overlay {
                if categories.isEmpty {
                    ContentUnavailableView("No Logs Yet", systemImage: "doc.text.magnifyingglass", description: Text("Add a category to start logging your code."))
                }
            }
        }
    }
    
    private func deleteCategory(offsets: IndexSet) {
        for index in offsets {
            modelContext.delete(categories[index])
        }
    }
}

// --- 2. Task List View (Detail) ---
struct TaskListView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var category: CodingCategory
    
    @State private var showAddTask = false
    @State private var taskTitle = ""
    
    var body: some View {
        List {
            // Task List ၸတ်းၸွမ်း Status
            let tasks = category.tasks?.sorted(by: { $0.timestamp > $1.timestamp }) ?? []
            
            ForEach(tasks) { task in
                HStack {
                    Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(task.isCompleted ? .green : .gray)
                        .onTapGesture {
                            task.isCompleted.toggle()
                        }
                    
                    VStack(alignment: .leading) {
                        Text(task.title)
                            .strikethrough(task.isCompleted)
                        Text(task.timestamp, style: .date)
                            .font(.caption2).foregroundColor(.secondary)
                    }
                }
            }
            .onDelete(perform: deleteTask)
        }
        .navigationTitle(category.name)
        .toolbar {
            Button(action: { showAddTask.toggle() }) {
                Image(systemName: "plus.circle.fill")
            }
        }
        .sheet(isPresented: $showAddTask) {
            NavigationStack {
                Form {
                    TextField("What did you code today?", text: $taskTitle)
                }
                .navigationTitle("Add Log")
                .toolbar {
                    Button("Add") {
                        let newTask = CodingTask(title: taskTitle)
                        category.tasks?.append(newTask)
                        taskTitle = ""
                        showAddTask = false
                    }
                }
                .presentationDetents([.fraction(0.3)])
            }
        }
    }
    
    private func deleteTask(offsets: IndexSet) {
        for index in offsets {
            if let task = category.tasks?[index] {
                modelContext.delete(task)
            }
        }
    }
}

```

---

### **Summary of Project Features**

| Feature | Description (Shan)                                                                                  |
| --- |-----------------------------------------------------------------------------------------------------|
| **SwiftData Storage** | ၵဵပ်း Data တေႉတေႉၼႂ်း Disk၊ ပိၵ်ႉ App သေပိုတ်ႇမႃးၶိုၼ်းၵေႃႈ Data ဢမ်ႇႁၢႆၶႃႈ။                        |
| **Relationship** | ၸႂ်ႉ One-to-Many တႃႇၵွင်ႉ Task ၶဝ်ႈၸူး Category ဢၼ်မၢၼ်ႇမႅၼ်ႈ။                                      |
| **Interactive UI** | ၸၢင်ႈၼဵၵ်း "Checkmark" တႃႇ Update Status ၼႂ်း Database ၵမ်းလဵဝ်။                                    |
| **Automatic Cleanup** | ယွၼ်ႉၸႂ်ႉ `.cascade`၊ ပေႃးမွတ်ႇ Category ၵေႃႈ Tasks တင်းမူတ်းၼႂ်းမၼ်း တေထုၵ်ႇမွတ်ႇၸွမ်းႁင်းမၼ်းၶႃႈ။ |

---