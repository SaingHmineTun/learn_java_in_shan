
## **Module 3 | Lesson 23: Searchable Interfaces: Adding the .searchable() Modifier**

### **1. .searchable() ပဵၼ်သင်?**

မၼ်းပဵၼ် Modifier ဢၼ်တေၸွႆႈသၢင်ႈ **Search Bar** ပၼ်ၽၢႆႇၼိူဝ် List ႁဝ်းႁင်းမၼ်း (Native iOS Look) ယဝ်ႉ။

* **Two-Way Binding:** မၼ်းလူဝ်ႇၵွင်ႉၸူး `@State` String Variable တႃႇၵဵပ်းၶေႃႈၵႂၢမ်းဢၼ် User တႅမ်ႈၶဝ်ႈမႃး။
* **Automatic Placement:** SwiftUI တေဢဝ် Search Bar ဝႆႉတႂ်ႈ Navigation Title ႁင်းမၼ်း။

### **2. လၢႆးႁဵတ်းၵၢၼ် (Logic Flow)**

1. သၢင်ႈ `@State var searchText` တႃႇႁပ်ႉ Input။
2. ၸႂ်ႉ `.searchable(text: $searchText)` တီႈ List ဢမ်ႇၼၼ် NavigationStack။
3. သၢင်ႈ **Computed Property** တႃႇ Filter (လိူၵ်ႈ) Data ဢွၵ်ႇမႃး ၸွမ်းၼင်ႇၶေႃႈၵႂၢမ်းဢၼ်ၶူၼ်ႉႁႃၼၼ်ႉ။

---

### **3. Example Code: Searchable Course List**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ႁဵတ်း Search Bar တႃႇၶူၼ်ႉႁႃၸိုဝ်ႈပပ်ႉလိၵ်ႈ ဢမ်ႇၼၼ် သင်တၢၼ်းၶႃႈ:

```swift
import SwiftUI

struct SearchableListView: View {
    // 1. Data Source
    let allBooks = ["Shan Grammar", "SwiftUI Basics", "Python for Shan", "Flutter Mastery", "Dart Pro", "History of TMK"]
    
    // 2. State တႃႇၵဵပ်းၶေႃႈၵႂၢမ်းၶူၼ်ႉႁႃ
    @State private var searchText = ""
    
    // 3. Computed Property တႃႇ Filter Data
    var filteredBooks: [String] {
        if searchText.isEmpty {
            return allBooks
        } else {
            return allBooks.filter { $0.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        NavigationStack {
            List(filteredBooks, id: \.self) { book in
                Text(book)
                    .padding(.vertical, 4)
            }
            .navigationTitle("TMK Library")
            // 4. သႂ်ႇ Search Bar
            .searchable(text: $searchText, prompt: "ၶူၼ်ႉႁႃပပ်ႉလိၵ်ႈ...")
        }
    }
}

```

---

### **4. Search Suggestions**

ႁဝ်းၸၢင်ႈသႂ်ႇ "ၶေႃႈၵႂၢမ်းၼႄတၢင်း" (Suggestions) ဝႆႉၽၢႆႇတႂ်ႈ Search Bar တႃႇၸွႆႈ User ငၢႆႈငၢႆႈလႆႈၶႃႈ:

```swift
.searchable(text: $searchText) {
    Text("Swift").searchCompletion("SwiftUI")
    Text("Python").searchCompletion("Python for Shan")
}

```

---

### **Summary**

| Concept | Explanation (Shan) |
| --- | --- |
| **.searchable()** | Modifier တႃႇသၢင်ႈ Search Bar ပၼ်ႁင်းမၼ်း။ |
| **searchText** | @State Variable ဢၼ် Binding တင်း Search Bar တႃႇၵဵပ်း Input။ |
| **Filter Logic** | ၵၢၼ်ၸႂ်ႉ `.filter` ၼႂ်း Computed Property တႃႇၼႄ Data ဢၼ်မၢၼ်ႇမႅၼ်ႈ။ |
| **Prompt** | ၶေႃႈၵႂၢမ်းဢွၼ်ႇ ဢၼ်ၼႄဝႆႉၼႂ်း Search Bar (မိူၼ်ၼင်ႇ "Search...")။ |

---