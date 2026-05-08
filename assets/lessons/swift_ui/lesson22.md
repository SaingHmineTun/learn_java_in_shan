

## **Module 3 | Lesson 22: Swipe Actions and Context Menus**

### **1. Swipe Actions**

ၼႂ်း SwiftUI ႁဝ်းၸၢင်ႈသႂ်ႇပုမ်ႇဝႆႉၽၢႆႇလင် Row ၶွင် List လူၺ်ႈၵၢၼ်ၸႂ်ႉ `.swipeActions` modifier ယဝ်ႉ။

* **Leading:** ပၢၵ်ႈၵႂႃႇၽၢႆႇၶႂႃ (တႄႇတၢင်းသၢႆႉ)။
* **Trailing:** ပၢၵ်ႈၵႂႃႇၽၢႆႇသၢႆႉ (တႄႇတၢင်းၶႂႃ) — ႁၼ်ၼမ်သေပိူၼ်ႈ တႃႇထွၼ်ဢွၵ်ႇ (Delete)။
* **Allows Full Swipe:** သင်ႁဝ်းသႂ်ႇ `true` ၼႆၸိုင် ပေႃး User ပၢၵ်ႈယၢဝ်းယၢဝ်း မၼ်းတေႁဵတ်းၵၢၼ် (Action) ၼၼ်ႉပၼ်ၵမ်းလဵဝ် ႁင်းမၼ်းၶႃႈ။

### **2. Context Menus**

မိူဝ်ႈ User ၼဵၵ်းႁိုင်ႁိုင် (Long Press) တီႈ View ၼိုင်ႈဢၼ်ၼၼ်ႉ ႁဝ်းၸၢင်ႈၼႄ Menu ဢွၼ်ႇ ဢၼ်မီးပုမ်ႇလိူၵ်ႈလႆ လၢႆလၢႆဢၼ်ယဝ်ႉ။

* ၸႂ်ႉ `.contextMenu` modifier။
* ၼႂ်း Menu ၼၼ်ႉ ႁဝ်းသႂ်ႇ `Button` ဢၼ်မီးတင်း Text လႄႈ Icon (SF Symbols) လႆႈယဝ်ႉ။

---

### **3. Example Code: List with Swipe and Menu**

```swift
import SwiftUI

struct SwipeMenuView: View {
    @State private var items = ["Shan Script Font", "Python Course", "Flutter App", "Typing Tutor"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(items, id: \.self) { item in
                    Text(item)
                        .font(.headline)
                        .padding(.vertical, 8)
                        // 1. Context Menu (ၼဵၵ်းႁိုင်ႁိုင် တႃႇႁၼ်မၼ်းလႆႈ)
                        .contextMenu {
                            Button { print("Edit \(item)") } label: {
                                Label("Edit", systemName: "pencil")
                            }
                            Button(role: .destructive) { delete(item) } label: {
                                Label("Delete", systemName: "trash")
                            }
                        }
                        // 2. Swipe Actions (တႃႇပၢၵ်ႈၼိူဝ်မၼ်း)
                        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                            Button(role: .destructive) {
                                delete(item)
                            } label: {
                                Label("Delete", systemName: "trash")
                            }
                            
                            Button {
                                print("Pinned")
                            } label: {
                                Label("Pin", systemName: "pin.fill")
                            }
                            .tint(.orange)
                        }
                        .swipeActions(edge: .leading) {
                            Button {
                                print("Marked as Done")
                            } label: {
                                Label("Done", systemName: "checkmark.circle")
                            }
                            .tint(.green)
                        }
                }
            }
            .navigationTitle("TMK Projects")
        }
    }
    
    func delete(_ item: String) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}

```

---

### **Summary**

| Feature | Description (Shan)                                                |
| --- |-------------------------------------------------------------------|
| **Swipe Actions** | ၸႂ်ႉတႃႇသႂ်ႇပုမ်ႇ ၽၢႆႇသၢႆႉ/ၶႂႃ ၶွင်ထႅဝ် List (Delete, Pin, Mark)။  |
| **Edge** | မၵ်းမၼ်ႈဝႃႈ တေလုၵ်ႉၽၢႆႇလႂ်ပၢၵ်ႈ (`.leading` ဢမ်ႇၼၼ် `.trailing`)။ |
| **Context Menu** | ၼႄ Menu ဢွၼ်ႇ မိူဝ်ႈ User ၼဵၵ်းႁိုင် (Long Press) တီႈ View။       |
| **Role: .destructive** | သင်ႇႁႂ်ႈပုမ်ႇပဵၼ်သီလႅင် ႁင်းမၼ်း (တႃႇလွင်ႈယႃႉ/လူႉ)။               |

---
