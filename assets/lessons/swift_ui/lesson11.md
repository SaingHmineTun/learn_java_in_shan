
## **Module 2 | Lesson 11: The @Binding Wrapper: Sharing State with Child Views**

### **1. ပၼ်ႁႃ (The Problem)**
မိူဝ်ႈႁဝ်းၸႅၵ်ႇ View ဢွၵ်ႇပဵၼ် Subview (struct) ၼၼ်ႉ၊ သင်ႁဝ်းသူင်ႇ `@State` Variable ၵႂႃႇၸႂ်ႉလူၺ်ႈလၢႆးယူဝ်းယူဝ်း:
*   Subview တေၸၢင်ႈ "ဢၢၼ်ႇ" (Read) Data ၼၼ်ႉလႆႈၵူၺ်း။
*   Subview တေဢမ်ႇၸၢင်ႈ "လႅၵ်ႈလၢႆႈ" (Update) Data ၼၼ်ႉပၼ် Parent View လႆႈ။

### **2. @Binding ပဵၼ်သင်?**
`@Binding` ပဵၼ် Property Wrapper ဢၼ်ႁဵတ်းၼႃႈတီႈ "သဵၼ်ႈတၢင်း" (Reference) ဢၼ်ၵွင်ႉၸူး `@State` တီႈ Parent View ၼၼ်ႉၶႃႈ။
*   မၼ်းဢမ်ႇလႆႈသၢင်ႈ Data မႂ်ႇ။
*   မၼ်းၵူၺ်း "ယိမ်" (Borrow) Data မႃးၸႂ်ႉ သေပၼ်သုၼ်ႇႁႂ်ႈ Subview ၼၼ်ႉ မႄးလႅၵ်ႈလၢႆႈ Data ၼၼ်ႉပၼ်ၶိုၼ်း။



### **3. လၢႆးၸႂ်ႉ (How to use)**
1.  **တီႈ Subview:** ၸႂ်ႉ `@Binding var ...` (ဢမ်ႇလူဝ်ႇသႂ်ႇ Default Value)။
2.  **တီႈ Parent View:** မိူဝ်ႈႁွင်ႉၸႂ်ႉ Subview ၼၼ်ႉ၊ သူင်ႇ Variable ၵႂႃႇလူၺ်ႈၵၢၼ်ၸႂ်ႉ **`$`** (Binding)။

---

### **4. Example Code: Parent & Child View**

```swift
import SwiftUI

// 1. Subview (Child View)
struct ColorControlView: View {
    // ၸႂ်ႉ @Binding တႃႇၵွင်ႉၸူး Data တီႈ Parent
    @Binding var isOn: Bool
    
    var body: some View {
        VStack {
            Text("Subview Control")
                .font(.caption)
            
            Toggle(isOn: $isOn) {
                Text(isOn ? "ပိၵ်ႉၾႆး (Turn Off)" : "ပိုတ်ႇၾႆး (Turn On)")
            }
            .fixedSize()
        }
        .padding()
        .background(Color.secondary.opacity(0.1))
        .cornerRadius(10)
    }
}

// 2. Main View (Parent View)
struct ParentBindingView: View {
    @State private var isLightOn: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            // Display Area
            Circle()
                .fill(isLightOn ? .yellow : .gray)
                .frame(width: 100, height: 100)
                .shadow(color: isLightOn ? .yellow : .clear, radius: 20)
            
            Text("Parent State: \(isLightOn ? "ON" : "OFF")")
            
            // သူင်ႇ @State ၵႂႃႇပဵၼ် Binding လူၺ်ႈၵၢၼ်ၸႂ်ႉ $
            ColorControlView(isOn: $isLightOn)
            
            Button("Reset Parent State") {
                isLightOn = false
            }
        }
        .padding()
    }
}
```

---

### **Summary**

| Property Wrapper | Usage (Shan) | Owner |
| :--- | :--- | :--- |
| **@State** | တႃႇသၢင်ႈ Data မႂ်ႇ (Source of Truth)။ | Parent View |
| **@Binding** | တႃႇယိမ် Data မႃးၸႂ်ႉ လႄႈ လႅၵ်ႈလၢႆႈပၼ်ၶိုၼ်း။ | Child View |
| **$ Sign** | ၸႂ်ႉမိူဝ်ႈ "သူင်ႇ" Data ၵႂႃႇပဵၼ် Binding။ | Parent View |

---