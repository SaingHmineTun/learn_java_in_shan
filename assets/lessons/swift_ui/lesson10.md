

## **Module 2 | Lesson 2: Two-Way Binding with TextFields and Sliders**

### **1. Two-Way Binding ပဵၼ်သင်?**
မိူဝ်ႈႁဝ်းၸႂ်ႉ `TextField` ဢမ်ႇၼၼ် `Slider` ၼၼ်ႉ၊ ႁဝ်းလူဝ်ႇလႆႈႁဵတ်းလွင်ႈသွင်မဵဝ်း:
1.  ၼႄၵႃႈၶၼ် (Value) ဢၼ်မီးဝႆႉၼႂ်း Variable (Data -> UI)။
2.  မိူဝ်ႈ User တႅမ်ႈလိၵ်ႈ ဢမ်ႇၼၼ် လႅၵ်ႈ Slider ၼၼ်ႉ ႁႂ်ႈမၼ်းၵႂႃႇ Update Variable ၼၼ်ႉပၼ်ၵမ်းလဵဝ် (UI -> Data)။



### **2. The Dollar Sign ($ Symbol)**
ၼႂ်း SwiftUI ၼႆႉ တႃႇတေႁဵတ်း Two-Way Binding ႁဝ်းၸႂ်ႉၶိူင်ႈမၢႆ **`$`** ဝႆႉၽၢႆႇၼႃႈၸိုဝ်ႈ Variable ၶႃႈ။
*   `count` (ဢမ်ႇမီး $) = ပဵၼ်ၵၢၼ် "ဢၢၼ်ႇ" (Read) ၵႃႈမၼ်းမႃးၼႄၵူၺ်း။
*   `$count` (မီး $) = ပဵၼ်ၵၢၼ် "သူင်ႇ" (Write/Binding) တႃႇႁႂ်ႈ View တၢင်ႇဢၼ်လႅၵ်ႈလၢႆႈ Data ၼၼ်ႉလႆႈ။

### **3. TextFields & Sliders**
*   **TextField:** လူဝ်ႇလႆႈၸႂ်ႉ Binding တင်း String Variable။
*   **Slider:** လူဝ်ႇလႆႈၸႂ်ႉ Binding တင်း Floating-point Variable (Double/Float)။

---

### **4. Example Code: User Input Demo**

```swift
import SwiftUI

struct BindingLessonView: View {
    @State private var userName: String = ""
    @State private var fontSize: Double = 20.0
    
    var body: some View {
        VStack(spacing: 30) {
            // 1. Text Display (Read-only)
            Text("မႂ်ႇသုင်, \(userName.isEmpty ? "..." : userName)!")
                .font(.system(size: fontSize))
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("တႅမ်ႈၸိုဝ်ႈၸဝ်ႈၵဝ်ႇ (Enter Name):")
                    .font(.caption)
                
                // ၸႂ်ႉ $userName တႃႇႁဵတ်း Two-Way Binding
                TextField("ၸိုဝ်ႈ...", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled()
            }
            
            VStack(alignment: .leading) {
                Text("တင်းယႂ်ႇတူဝ်လိၵ်ႈ (Font Size: \(Int(fontSize))):")
                    .font(.caption)
                
                // ၸႂ်ႉ $fontSize တႃႇ Binding တင်း Slider
                Slider(value: $fontSize, in: 10...50)
            }
        }
        .padding()
    }
}
```

---

### **Summary**

| Concept | Explanation (Shan)                                               |
| :--- |:-----------------------------------------------------------------|
| **Two-Way Binding** | လၢႆးဢၼ် Data လႄႈ UI လႅၵ်ႈလၢႆႈၸွမ်းၵၼ် တင်းသွင်ၽၢႆႇ။              |
| **$ (Dollar Sign)** | ၶိူင်ႈမၢႆဢၼ်ၸႂ်ႉတႃႇသၢင်ႈ Binding Connection တီႈ @State Variable။ |
| **TextField** | View တႃႇႁပ်ႉ User Input ဢၼ်ပဵၼ် Text (လူဝ်ႇၸႂ်ႉ Binding)။        |
| **Slider** | View တႃႇႁပ်ႉ User Input ဢၼ်ပဵၼ် Range (လူဝ်ႇၸႂ်ႉ Binding)။       |

---