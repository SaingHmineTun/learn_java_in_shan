

## **Module 3 | Lesson 21: Customizing List Styles and Insets**

### **1. List Styles (လၢႆးလိူၵ်ႈႁၢင်ႈၽၢင်)**

SwiftUI မီး Style ဢၼ်ႁၢင်ႈႁႅၼ်းဝႆႉပၼ် (Built-in) တႃႇၼႄ List လူၺ်ႈ လၢႆလၢႆႁၢင်ႈယဝ်ႉ:

* `.listStyle(.plain)`: ပဵၼ်သဵၼ်ႈတတ်းယူဝ်းယူဝ်း၊ ႁၼ်ၼမ်ၼႂ်း App ဢၼ်ၼႄ Data တင်းၼမ်။
* `.listStyle(.inset)`: မိူၼ် Plain ၵူၺ်းၵႃႈမီးလွၵ်းပဝ်ႇ (Padding) ၽၢႆႇသၢႆႉၶႂႃဢိတ်းၼိုင်ႈ။
* `.listStyle(.grouped)`: ၸႅၵ်ႇတွၼ်ႈ (Section) ပဵၼ်ထႅဝ်သေ မီးပိုၼ်ႉလင်သီလႅတ်း။
* `.listStyle(.insetGrouped)`: **(Popular)** ပဵၼ် Style ဢၼ်မီးၶွပ်ႇမူၼ်း လႄႈ ပိဝ် (Floating) ဝႆႉ၊ မိူၼ်ၼႃႈၸေႃး Settings ၶွင် iPhone။

### **2. Row Customization (ၵၢၼ်မႄးထႅဝ်)**

ႁဝ်းၸၢင်ႈမႄးသီပိုၼ်ႉလင် လႄႈ သဵၼ်ႈတတ်း (Separator) ၼႂ်းထႅဝ် List လႆႈၶႃႈ:

* `.listRowBackground()`: ၸႂ်ႉတႃႇလႅၵ်ႈသီပိုၼ်ႉလင် ၶွင် Row။
* `.listRowSeparator(.hidden)`: ၸႂ်ႉတႃႇသိူင်ႇ သဵၼ်ႈတတ်းၵၢင်ထႅဝ်။
* `.listRowInsets()`: ၸႂ်ႉတႃႇမၵ်းမၼ်ႈ လွၵ်းပဝ်ႇ (Padding) ၼႂ်း Row ႁင်းၵူၺ်း။

---

### **3. Example Code: Advanced List Styling**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ List ႁႂ်ႈမီးသီ လႄႈ ႁၢင်ႈၽၢင်ဢၼ်ပႅၵ်ႇပိူင်ႈၶႃႈ:

```swift
import SwiftUI

struct ListCustomView: View {
    let tmkTools = ["IntelliJ", "Android Studio", "XCode", "Visual Studio Code"]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Dev Environment")) {
                    ForEach(tmkTools, id: \.self) { tool in
                        HStack {
                            Image(systemName: "laptopcomputer")
                                .foregroundStyle(.blue)
                            Text(tool)
                                .font(.headline)
                        }
                        // 1. မႄးသီပိုၼ်ႉလင်Row
                        .listRowBackground(Color.blue.opacity(0.05))
                        // 2. သိူင်ႇသဵၼ်ႈတတ်း (သင်ၶႂ်ႈသိူင်ႇ)
                        .listRowSeparator(.visible)
                    }
                }
                
                Section(header: Text("Settings")) {
                    HStack {
                        Image(systemName: "bell.fill")
                        Text("Notifications")
                    }
                    // 3. မႄးလွၵ်းပဝ်ႇ (Insets) တႃႇ Row
                    .listRowInsets(EdgeInsets(top: 10, leading: 50, bottom: 10, trailing: 10))
                }
            }
            // 4. လႅၵ်ႈလၢႆႈ Style တင်းမူတ်း
            .listStyle(.insetGrouped)
            .navigationTitle("Custom List")
        }
    }
}

```

---

### **Summary**

| Modifier | Purpose (Shan)                                              |
| --- |-------------------------------------------------------------|
| **.listStyle()** | တႅပ်းတတ်းႁၢင်ႈၽၢင် List တင်းမူတ်း (မိူၼ်ၼင်ႇ InsetGrouped)။ |
| **.listRowBackground()** | လႅၵ်ႈလၢႆႈသီပိုၼ်ႉလင် ၶွင်ထႅဝ်။                              |
| **.listRowSeparator()** | ၼႄ ဢမ်ႇၼၼ် သိူင်ႇ သဵၼ်ႈတတ်းၵၢင်ထႅဝ်။                        |
| **.listRowInsets()** | ၸတ်းလွၵ်းပဝ်ႇ (Padding) ၼႂ်းထႅဝ် ႁႂ်ႈပဵင်းၸွမ်းၸႂ်။         |

---