

## **Module 7 | Lesson 53: Schema Versions and Data Migration**

### **1. Schema Versioning ပဵၼ်သင်?**

မၼ်းပဵၼ်ၵၢၼ် "မၵ်းမၼ်ႈၸိုဝ်ႈ" ပၼ်ပိူင် Database ႁဝ်း ၼႂ်းၵူႈၸၼ်ႉ ဢၼ်ႁဝ်းမႄးမၼ်းယဝ်ႉ။

* **Version 1:** မီးဝႆႉ `title`, `isCompleted` ၵူၺ်း။
* **Version 2:** ၽိူမ်ႉထႅမ်သႂ်ႇ `priority` ၶဝ်ႈၵႂႃႇ။

### **2. Migration (ၵၢၼ်ၶၢႆႉ Data)**

မိူဝ်ႈ User Update App လုၵ်ႉတီႈ V1 ၵႂႃႇ V2 ၼၼ်ႉ SwiftData လူဝ်ႇလႆႈႁူႉဝႃႈ တေဢဝ် Data ၵဝ်ႇၼၼ်ႉ ၶၢႆႉၵႂႃႇဝႆႉၼႂ်းပိူင်မႂ်ႇၸိူင်ႉႁိုဝ် ၼႆယဝ်ႉ။

* **Lightweight Migration:** SwiftData ႁဵတ်းပၼ်ႁင်းမၼ်း (မိူၼ်ၼင်ႇထႅမ် Column မႂ်ႇဢၼ်မီးၵႃႈၶၼ် Default)။
* **Custom Migration:** ႁဝ်းလူဝ်ႇတႅမ်ႈ Code လႅၵ်ႈ Data ႁင်းၵူၺ်း (မိူၼ်ၼင်ႇ လႅၵ်ႈ String ပဵၼ် Int)။

---

### **3. Example Code: Defining Schema Versions**

ႁဝ်းတေၸႅၵ်ႇ Schema ဢွၵ်ႇပဵၼ် `enum` ၶႃႈ:

```swift
import SwiftData

// 1. မၵ်းမၼ်ႈ Version 1
enum TodoSchemaV1: VersionedSchema {
    static var versionIdentifier = Schema.Version(1, 0, 0)
    static var models: [any PersistentModel.Type] = [TodoTask.self]

    @Model
    class TodoTask {
        var title: String
        var isCompleted: Bool
        init(title: String, isCompleted: Bool = false) {
            self.title = title
            self.isCompleted = isCompleted
        }
    }
}

// 2. မၵ်းမၼ်ႈ Version 2 (ထႅမ် Priority)
enum TodoSchemaV2: VersionedSchema {
    static var versionIdentifier = Schema.Version(1, 1, 0)
    static var models: [any PersistentModel.Type] = [TodoTask.self]

    @Model
    class TodoTask {
        var title: String
        var isCompleted: Bool
        var priority: Int // Property ဢၼ်မႂ်ႇ
        
        init(title: String, isCompleted: Bool = false, priority: Int = 1) {
            self.title = title
            self.isCompleted = isCompleted
            self.priority = priority
        }
    }
}

```

---

### **4. Schema Migration Plan**

ယၢမ်းလဵဝ်ႁဝ်းလူဝ်ႇတႅမ်ႈ "ၽႅၼ်ၵၢၼ်" တႃၶၢႆႉ လုၵ်ႉတီႈ V1 ၵႂႃႇ V2 ၶႃႈ:

```swift
enum TodoMigrationPlan: SchemaMigrationPlan {
    static var schemas: [any VersionedSchema.Type] = [
        TodoSchemaV1.self, 
        TodoSchemaV2.self
    ]
    
    static var stages: [MigrationStage] = [
        // ၸႂ်ႉ .lightweight သင်ၵူၺ်းပဵၼ်ၵၢၼ်ထႅမ် Property မႂ်ႇ
        .lightweight(from: TodoSchemaV1.self, to: TodoSchemaV2.self)
    ]
}

// ၵၢၼ် Setup ၼႂ်း App Container
let container = try ModelContainer(
    for: TodoTask.self,
    migrationPlan: TodoMigrationPlan.self,
    configurations: ModelConfiguration(isStoredInMemoryOnly: false)
)

```

---

### **Summary**

| Concept | Purpose (Shan)                                                            |
| --- |---------------------------------------------------------------------------|
| **VersionedSchema** | ၸႅၵ်ႇပိူင် Database ဢွၵ်ႇပဵၼ်တွၼ်ႈ ၸိူင်ႉၼင်ႇ Version App။                |
| **Lightweight** | ၵၢၼ်ၶၢႆႉ Data ဢၼ်ငၢႆႈ (ထႅမ်/မွတ်း Column) ဢၼ် SwiftData ႁဵတ်းပၼ်ႁင်းမၼ်း။ |
| **Custom Stage** | ၵၢၼ်ၶၢႆႉ Data ဢၼ်ယၢပ်ႇ ဢၼ်လူဝ်ႇတႅမ်ႈ Logic မႄးၶေႃႈမုၼ်း။                  |
| **Data Safety** | ၸွႆႈႁႂ်ႈ App ဢမ်ႇ Crash မိူဝ်ႈမီးၵၢၼ် Update Database Schema။             |

---