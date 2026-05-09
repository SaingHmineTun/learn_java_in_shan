## **Module 7 | Lesson 51: Relationship Mapping (One-to-One and One-to-Many)**

### **1. Relationship ပဵၼ်သင်?**

မၼ်းပဵၼ်ၵၢၼ်မၵ်းမၼ်ႈတၢင်းၵွင်ႉၵၢႆႇ (Link) ၼႂ်းၵႄႈ Models သွင်ဢၼ်ယဝ်ႉ။ 
SwiftData တေၸတ်းၵၢၼ်လွင်ႈၼႆႉႁႂ်ႈငၢႆႈငၢႆႈ လူၺ်ႈၵၢၼ်ၸႂ်ႉ Variable ထမ်ႇမတႃႇယဝ်ႉ။

* **One-to-One:** ဢၼ်ၼိုင်ႈ ၵွင်ႉၸူး ဢၼ်ၼိုင်ႈ (မိူၼ်ၼင်ႇ User ၼိုင်ႈၵူၼ်း မီး Profile ၼိုင်ႈဢၼ်)။
* **One-to-Many:** ဢၼ်ၼိုင်ႈ ၵွင်ႉၸူး လၢႆလၢႆဢၼ် (မိူၼ်ၼင်ႇ Project ၼိုင်ႈဢၼ် မီး Tasks တင်းၼမ်တင်းလၢႆ)။

### **2. @Relationship (ၵၢၼ်ၵုမ်းထိင်း)**

ႁဝ်းၸႂ်ႉ `@Relationship` Macro တႃႇမၵ်းမၼ်ႈဝႃႈ သင်ႁဝ်းမွတ်ႇ (Delete) Data ၽၢႆႇၼိုင်ႈပႅတ်ႈၼႆ
Data ထႅင်ႈၽၢႆႇၼိုင်ႈ တေႁဵတ်းၸိူင်ႉႁိုဝ် ၼႆယဝ်ႉ။

* **.cascade:** သင်မွတ်ႇ "Project" ပႅတ်ႈၼႆ "Tasks" ဢၼ်ယူႇၼႂ်းမၼ်းၵေႃႈ ႁႂ်ႈမွတ်ႇၸွမ်းတင်းမူတ်း။
* **.nullify:** သင်မွတ်ႇ "Project" ပႅတ်ႈၼႆ "Tasks" ၼၼ်ႉ ယႃႇပေမွတ်ႇ ၵူၺ်းၵႃႈႁႂ်ႈမၼ်းပဵၼ်တူဝ်ပဝ်ႇ (Empty) ဝႆႉ။

---

### **3. Example Code: Project & Tasks (One-to-Many)**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၵွင်ႉ Project ၼိုင်ႈဢၼ် ၶဝ်ႈၸူး Tasks လၢႆလၢႆဢၼ်ၶႃႈ:

```swift
import Foundation
import SwiftData

@Model
class TMKProject {
    var name: String
    
    // One-to-Many: Project ၼိုင်ႈဢၼ် မီးလၢႆ Task
    // deleteRule: .cascade ပွင်ႇဝႃႈ ပေႃးမွတ်ႇ Project ၼႆႉၼႆ Task တင်းမူတ်းၵေႃႈတေထုၵ်ႇမွတ်ႇၸွမ်း
    @Relationship(deleteRule: .cascade, inverse: \ProjectTask.project)
    var tasks: [ProjectTask] = []
    
    init(name: String) {
        self.name = name
    }
}

@Model
class ProjectTask {
    var title: String
    var project: TMKProject? // ၵွင်ႉၶိုၼ်းၸူး Project
    
    init(title: String) {
        self.title = title
    }
}

struct ProjectManagerView: View {
    @Environment(\.modelContext) private var modelContext
    
    // 1. ဢဝ် Project တင်းမူတ်းဢွၵ်ႇမႃးၼႄ
    @Query private var projects: [TMKProject]
    
    @State private var showAddProject = false
    @State private var newProjectName = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(projects) { project in
                    // 2. မိူဝ်ႈၼဵၵ်း Project တေၵႂႃႇၼႃႈ Task List ၶွင်မၼ်း
                    NavigationLink(destination: ProjectTaskDetailView(project: project)) {
                        VStack(alignment: .leading) {
                            Text(project.name)
                                .font(.headline)
                            Text("\(project.tasks.count) tasks")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .onDelete(perform: deleteProject)
            }
            .navigationTitle("TMK Projects")
            .toolbar {
                Button(action: { showAddProject.toggle() }) {
                    Image(systemName: "plus")
                }
            }
            .alert("New Project", isPresented: $showAddProject) {
                TextField("Project Name", text: $newProjectName)
                Button("Add") { addProject() }
                Button("Cancel", role: .cancel) { }
            }
        }
    }
    
    private func addProject() {
        let project = TMKProject(name: newProjectName)
        modelContext.insert(project)
        newProjectName = ""
    }
    
    private func deleteProject(offsets: IndexSet) {
        for index in offsets {
            modelContext.delete(projects[index])
            // ယွၼ်ႉႁဝ်းသႂ်ႇ .cascade ဝႆႉလႄႈ Task တင်းမူတ်းၼႂ်း Project တေႁၢႆၸွမ်းၵမ်းလဵဝ်ၶႃႈ
        }
    }
}

// --- ၼႃႈၸေႃးၼႄ Task ၼႂ်း Project ၼၼ်ႉ ---
struct ProjectTaskDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var project: TMKProject // ၸႂ်ႉ @Bindable တႃႇလႅၵ်ႈလၢႆႈ Data ၼႂ်း Model
    
    @State private var newTaskTitle = ""
    
    var body: some View {
        List {
            Section("Add Task") {
                HStack {
                    TextField("Enter task title", text: $newTaskTitle)
                    Button("Add") {
                        let task = ProjectTask(title: newTaskTitle)
                        // 3. ၵၢၼ်ၵွင်ႉ Relationship: ထႅမ် Task ၶဝ်ႈၼႂ်း Project
                        project.tasks.append(task)
                        newTaskTitle = ""
                    }
                    .disabled(newTaskTitle.isEmpty)
                }
            }
            
            Section("Tasks in \(project.name)") {
                ForEach(project.tasks) { task in
                    Text(task.title)
                }
                .onDelete { indexSet in
                    for index in indexSet {
                        let taskToDelete = project.tasks[index]
                        modelContext.delete(taskToDelete)
                    }
                }
            }
        }
        .navigationTitle(project.name)
    }
}

@main
struct Module7App: App {
    var body: some Scene {
        WindowGroup {
            ProjectManagerView()
        }
        .modelContainer(for: [ // ၸႂ်ႉတိုဝ်း List တႃႇသႂ်ႇ Model ဝႆႉလၢႆလၢႆဢၼ်
            TMKProject.self,
            ProjectTask.self
        ])
    }
}

```

---

### **Summary**

| Type | Swift Pattern (Shan) |
| --- | --- |
| **One-to-One** | Property ပဵၼ် Single Object (မိူၼ်ၼင်ႇ `var profile: Profile?`)။ |
| **One-to-Many** | Property ပဵၼ် Array (မိူၼ်ၼင်ႇ `var tasks: [Task]`)။ |
| **Inverse** | ၵၢၼ်မၵ်းမၼ်ႈ "တၢင်းၵွင်ႉၵၢႆႇသွင်ၽၢႆႇ" ႁႂ်ႈ SwiftData ႁူႉဝႃႈမၼ်းၵွင်ႉၵၼ်တေႉ။ |
| **Cascade Delete** | ၵၢၼ်မွတ်ႇ Data တူဝ်မႄႈ သေႁႂ်ႈတူဝ်လုၵ်ႈမၼ်း ႁၢႆၸွမ်းတင်းမူတ်း။ |

---
