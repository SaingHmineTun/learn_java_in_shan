

## **Module 1 | Lesson 7: View Composition: Refactoring into Reusable Subviews**

### **1. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Refactor?**
*   **Readability:** ႁဵတ်းႁႂ်ႈ Code ႁဝ်းဢၢၼ်ႇငၢႆႈ။ တႅမ်ႈဝႆႉၼင်ႇ `ContactRow()` ၼႆႉ တေလီလိူဝ်တႅမ်ႈ HStack ယၢဝ်းယၢဝ်းလူင်ၼၼ်ႉၶႃႈ။
*   **Reusability:** ႁဝ်းၸၢင်ႈဢဝ် View ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉ ၵႂႃႇၸႂ်ႉလႆႈလၢႆလၢႆတီႈ။
*   **Maintenance:** မိူဝ်ႈလူဝ်ႇမႄးႁၢင်ႈ (Style) ၼၼ်ႉ ႁဝ်းမႄးတီႈလဵဝ်သေ မၼ်းတေလႅၵ်ႈလၢႆႈပၼ်ၵူႈတီႈၶႃႈ။

### **2. လၢႆးၸႅၵ်ႇ View (Refactoring Methods)**
ႁဝ်းၸၢင်ႈၸႅၵ်ႇ View လႆႈ 3 လၢႆး:

#### **A. Computed Property (ၸႂ်ႉ Property)**
တႃႇ View ဢၼ်ဢမ်ႇယၢပ်ႇ လႄႈ ၸႂ်ႉၼႂ်း File လဵဝ်ၵၼ်ၵူၺ်း။
```swift
var headerView: some View {
    Text("Thung Mao Kham")
        .font(.largeTitle)
}
```

#### **B. Function (ၸႂ်ႉ Function)**
တႃႇ View ဢၼ်လူဝ်ႇသူင်ႇၵႃႈၶၼ် (Parameters) သႂ်ႇပၼ်။
```swift
func infoRow(title: String, icon: String) -> some View {
    HStack {
        Image(systemName: icon)
        Text(title)
    }
}
```

#### **C. Subview Struct (လၢႆးဢၼ်ၶႅမ်ႉသေပိူၼ်ႈ)**
သၢင်ႈပဵၼ် `struct` မႂ်ႇဢၼ်ၼိုင်ႈ။ လၢႆးၼႆႉၶႅမ်ႉသေပိူၼ်ႈ ယွၼ်ႉမၼ်းၸွႆႈႁႂ်ႈ Xcode Performance လီမႃး လႄႈ ၸၢင်ႈဢဝ်ၵႂႃႇၸႂ်ႉလႆႈၵူႈ File ၶႃႈ။

---

### **3. Example Code: Refactoring in Action**

တူၺ်း Code တူဝ်ယၢင်ႇ တီႈႁဝ်းၸႅၵ်ႇ "Contact Row" ဢွၵ်ႇမႃးၶႃႈ:

```swift
import SwiftUI

struct Lesson7View: View {
    var body: some View {
        VStack(spacing: 20) {
            // ၸႂ်ႉ Subview ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ
            ContactRow(icon: "phone.fill", label: "09-xxx-xxx", color: .green)
            ContactRow(icon: "envelope.fill", label: "contact@tmk.com", color: .blue)
            ContactRow(icon: "globe", label: "www.tmk.com", color: .purple)
        }
        .padding()
    }
}

// ၼႆႉပဵၼ် Subview ဢၼ်ၸႂ်ႉၶိုၼ်းလႆႈ (Reusable Subview)
struct ContactRow: View {
    let icon: String
    let label: String
    let color: Color
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(color)
                .frame(width: 30)
            Text(label)
            Spacer()
        }
        .padding()
        .background(color.opacity(0.1))
        .cornerRadius(10)
    }
}
```

---

### **Summary**

| Method | Best Use Case (Shan) |
| :--- | :--- |
| **Computed Property** | တႃႇ View ဢွၼ်ႇဢီႈ ဢၼ်ၸႂ်ႉၼႂ်း File လဵဝ်ၵၼ်။ |
| **Function** | တႃႇ View ဢၼ်လူဝ်ႇသူင်ႇ Logic/Parameter ပႅၵ်ႇၵၼ်။ |
| **Subview Struct** | **လၢႆးဢၼ်လီသေပိူၼ်ႈ** တႃႇသၢင်ႈ Component ဢၼ်ၸႂ်ႉၶိုၼ်းလႆႈၵူႈတီႈ။ |
| **Extraction** | ၵၢၼ်ၸႅၵ်ႇ Code ႁႂ်ႈပဵၼ်တွၼ်ႈ ၸွႆႈႁႂ်ႈ App ႁဝ်း Performance လီ။ |

---