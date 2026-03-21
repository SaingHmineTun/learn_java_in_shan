## **Lesson 72: Project Part 1: Architecture of a CLI Todo App**

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးသၢင်ႈ **"TMK Task Manager"**။ ဢွၼ်တၢင်းတေတႅမ်ႈ Code ႁဝ်းတေလႆႈပွင်ႇၸႂ်လွင်ႈ "ၵွင်ႉသၢင်ႈ" (Structure) ႁဝ်းဢွၼ်တၢင်းၶႃႈ။

### **1. Data Model (ၶေႃႈမုၼ်းႁဝ်းပဵၼ်သင်?)**
ႁဝ်းလူဝ်ႇ Type တွၼ်ႈတႃႇၵဵပ်း "ၵၢၼ်တေႁဵတ်း" (Task) ၼိုင်ႈဢၼ်။ ႁဝ်းတေၸႂ်ႉ **Record Syntax** (Lesson 43) ၶႃႈဢေႃႈ။

```haskell
data Task = Task {
    todoId   :: Int,
    todoName :: String,
    done     :: Bool
} deriving (Show, Read) -- ၸႂ်ႉ Read တႃႇလူလုၵ်ႉတီႈ String ၼႂ်း File ၶိုၼ်း
```

### **2. The App State (Memory ႁဝ်း)**
ႁဝ်းတေၵဵပ်း List ၶေႃႈ Task ဝႆႉၼႂ်း Memory မိူဝ်ႈ Program လႅၼ်ႈယူႇၶႃႈ။
`type TodoList = [Task]`

---

### **3. Functional Architecture (လၢႆးၸတ်းၵၢၼ်)**
ႁဝ်းတေၸႅၵ်ႇ Program ဢွၵ်ႇပဵၼ် 3 တွၼ်ႈယႂ်ႇယႂ်ႇ ၸွမ်းၼင်ႇပၵ်းပိူင် Haskell ၶႃႈ:

1.  **Pure Logic (The Core)**: Function ၸိူဝ်းဢၼ်ၼပ်ႉထႅမ် Task ဢမ်ႇၼၼ် မၢႆဝႃႈ Done။ (ဢမ်ႇမီး IO)
2.  **File Handler (The Persistence)**: Function ၸိူဝ်းဢၼ်လူလႄႈသိမ်း `tasks.txt`။ (မီး IO)
3.  **CLI Interface (The Interaction)**: Function ၸိူဝ်းဢၼ်ႁပ်ႉ Argument သေၼႄၽွၼ်းလႅၼ်ႈ။ (မီး IO)



---

### **4. Command Design (User တေတႅမ်ႈသင်?)**
ႁဝ်းတေဝၢင်းၽႅၼ် Argument (Lesson 69) ႁႂ်ႈမီး 4 ဢၼ်ၶႃႈ:
* `tmk add "Task Name"` : ထႅမ်ၵၢၼ်မႂ်ႇ။
* `tmk list` : ၼႄၵၢၼ်တင်းหมด။
* `tmk done <id>` : မၢႆဝႃႈၵၢၼ်ၼၼ်ႉယဝ်ႉယဝ်ႉ။
* `tmk remove <id>` : ယႃႉၵၢၼ်ၼၼ်ႉပႅတ်ႈ။

---

### **Teacher's Lab: "The Pure Core"**
ႁႂ်ႈလုၵ်ႈႁဵၼ်း တႅမ်ႈ Function တွၼ်ႈတႃႇ "ထႅမ် Task" ဢၼ်ပဵၼ် **Pure Function** (ဢမ်ႇပႃး IO) ၶႃႈ:

```haskell
addTask :: TodoList -> String -> TodoList
addTask existingTasks name = 
    let newId = length existingTasks + 1
        newTask = Task newId name False
    in existingTasks ++ [newTask]

-- တူဝ်ယၢင်ႇ: addTask [] "Learn Haskell" --> [Task 1 "Learn Haskell" False]
```
> **Teacher's Note:** ၸဝ်ႈၶူး တေလႆႈၼႄႁႂ်ႈလုၵ်ႈႁဵၼ်းႁၼ်ဝႃႈ ပၢႆးဝူၼ်ႉ (Logic) တင်းหมด တိုၼ်းတေလႆႈယူႇၼႂ်း Pure Function ၼႆႉ၊ ယဝ်ႉၸင်ႇဢဝ် IO မႃး "ႁေႃႇ" (Wrap) မၼ်းၽၢႆႇၼွၵ်ႈၶႃႈ။

---

### **Summary for TMK Students:**
* **Separation of Concerns**: ၸႅၵ်ႇ Logic ဢွၵ်ႇလုၵ်ႉတီႈ IO ႁႂ်ႈတႅတ်ႈတေႃး။
* **Data Driven**: သၢင်ႈ Record Type တႃႇၵဵပ်းၶေႃႈမုၼ်း။
* **CLI Plan**: ဝၢင်းၽႅၼ် Commands ဢၼ် User တေၸႂ်ႉ။
