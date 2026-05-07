

## **Module 3 | Lesson 17: The List View: SwiftUI's Powerhouse for Collections**

### **1. List ပဵၼ်သင်?**
`List` ပဵၼ် Container View ဢၼ်ၸွႆႈၼႄ Data ၼမ်လၢႆ ၶပ်ႉလူင်းမႃးတၢင်းတႂ်ႈ (Vertical scrolling list) ယဝ်ႉ။
*   သင်ပဵၼ်တီႈ Android ၼႆ မၼ်းမိူၼ်တင်း `RecyclerView` ဢမ်ႇၼၼ် `ListView` ယဝ်ႉ။
*   သင်ပဵၼ်တီႈ Flutter ၼႆ မၼ်းမိူၼ်တင်း `ListView.builder` ယဝ်ႉ။
*   **ၽွၼ်းလီ:** SwiftUI List ၼႆႉ မၼ်းၸတ်းၵၢၼ် "Cell Reuse" ႁႂ်ႈႁင်းမၼ်းလႄႈ ႁဵတ်းႁႂ်ႈ App ႁဝ်းလႅၼ်ႈလီ (Performant) တေႉတေႉ။

### **2. Static vs. Dynamic List**
ႁဝ်းၸၢင်ႈၸႂ်ႉ List လႆႈ 2 လၢႆးယဝ်ႉ:
1.  **Static List:** ႁဝ်းတႅမ်ႈ View သႂ်ႇဝႆႉပိူင်တၢႆၼႂ်းမၼ်းယဝ်ႉ (မိူၼ်ၼင်ႇၼႃႈၸေႃး Settings)။
2.  **Dynamic List:** ႁဝ်းဢဝ် Data ဢၼ်မီးလၢႆလၢႆဢၼ် (Array) မႃးပၼ်ႇ Loop သေၼႄႁၢင်ႈ (မိူၼ်ၼင်ႇ ၼႃႈၸေႃး News Feed)။

### **3. Sections ၼႂ်း List**
List ၸၢင်ႈၸႅၵ်ႇတွၼ်ႈလႆႈလူၺ်ႈၵၢၼ်ၸႂ်ႉ `Section` ယဝ်ႉ။
ႁဝ်းၸၢင်ႈသႂ်ႇ `header` လႄႈ `footer` တႃႇမၵ်းမၼ်ႈ တွၼ်ႈမၼ်း ႁႂ်ႈလူတ်းယွမ်းလွင်ႈသုၵ်ႉသၵ်ႉယဝ်ႉ။

---

### **4. Example Code: Simple List with Sections**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ List ဢၼ်ၸႅၵ်ႇတွၼ်ႈ (Section) ၶႃႈ:

```swift
import SwiftUI

struct ListLessonView: View {
    var body: some View {
        List {
            // Section 1: Static Content
            Section(header: Text("Programming Languages")) {
                Text("Swift")
                Text("Dart")
                Text("Kotlin")
                Text("Python")
            }
            
            // Section 2: Dynamic Content (ၼႄၵမ်းလွၵ်း)
            Section(header: Text("Frameworks"), footer: Text("TMK Course 2026")) {
                ForEach(0..<3) { index in
                    HStack {
                        Image(systemName: "folder.fill")
                            .foregroundStyle(.blue)
                        Text("Framework Detail \(index + 1)")
                    }
                }
            }
        }
        // လႅၵ်ႈလၢႆႈႁၢင်ႈၽၢင် List
        .listStyle(.insetGrouped) 
    }
}
```

---

### **5. List Styles**
SwiftUI မီး Style ႁၢင်ႈႁႅၼ်းဝႆႉပၼ်လၢႆမဵဝ်း (iOS Native Look):
*   `.plain`: ပဵၼ်သဵၼ်ႈတတ်းယူဝ်းယူဝ်း တေႃႇၵၼ်လူင်းမႃး။
*   `.grouped`: ၸႅၵ်ႇတွၼ်ႈပဵၼ်ထႅဝ် (Group)။
*   `.insetGrouped`: ပဵၼ် Style ဢၼ်ႁၼ်ၼမ်သေပိူၼ်ႈ (မိူၼ်ၼင်ႇၼႃႈၸေႃး Settings) ဢၼ်မီးၶွပ်ႇမူၼ်းၶႃႈ။

---

### **Summary**

| Topic | Explanation (Shan) |
| :--- | :--- |
| **List** | Container ဢၼ်ၸတ်းၵၢၼ် Scrolling လႄႈ Cell Reuse ႁႂ်ႈႁင်းမၼ်း။ |
| **Section** | ၸွႆႈၸႅၵ်ႇတွၼ်ႈ Views ၼႂ်း List ႁႂ်ႈဢၢၼ်ႇငၢႆႈ (Header/Footer)။ |
| **Static List** | ၸႂ်ႉတႃႇ UI ဢၼ်မၵ်းမၼ်ႈဝႆႉယဝ်ႉ (Fixed number of rows)။ |
| **List Style** | လၢႆးလိူၵ်ႈႁၢင်ႈၽၢင် (Plain, Grouped, InsetGrouped) ႁႂ်ႈမိူၼ် iOS Native။ |

---