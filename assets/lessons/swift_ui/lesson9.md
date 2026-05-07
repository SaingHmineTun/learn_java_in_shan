## **Module 2 | Lesson 1: Introduction to Property Wrappers: Why @State?**

### **1. ပၼ်ႁႃၶွင် Struct (The Limitation of Structs)**
ၼႂ်း Lesson 1 ႁဝ်းႁူႉယဝ်ႉဝႃႈ SwiftUI View ပဵၼ် **Struct**။ ၼႂ်းၽႃႇသႃႇ Swift ၼၼ်ႉ Struct မၼ်းပဵၼ် "Value Type" ဢၼ်လႅၵ်ႈလၢႆႊဢမ်ႇလႆႈ (Immutable) ယဝ်ႉ။
*   **ပၼ်ႁႃ:** ႁဝ်းဢမ်ႇၸၢင်ႈလႅၵ်ႈလၢႆႈၵႃႈၶၼ် (Value) ၶွင် Variable ၼႂ်း Struct View ႁဝ်းလႆႈလူၺ်ႈ လၢႆးယူဝ်းယူဝ်း။
*   **တူဝ်ယၢင်ႇ:** သင်ႁဝ်းမီး `var counter = 0` သေ ၵႂႃႇသင်ႇ `counter += 1` ၼႂ်း Button ၼႆ Xcode တေပၼ် Error ၵမ်းလဵဝ်ဝႃႈ "Self is immutable" ၼႆယဝ်ႉ။

### **2. @State ပဵၼ်သင်? (What is @State?)**
မိူဝ်ႈႁဝ်းသႂ်ႇ `@State` ဝႆႉၽၢႆႇၼႃႈ Variable ၼၼ်ႉ၊ ႁဝ်းလၢတ်ႈသင်ႇ SwiftUI ဝႃႈ:
> "Variable ၼႆႉ ပဵၼ် Data ဢၼ်လွင်ႈယႂ်ႇဢေႃႈ။ ႁႂ်ႈ Apple ၵုမ်းထိင်း Memory မၼ်းပၼ်သေ၊ ပေႃးၵႃႈၶၼ် (Value) မၼ်းလႅၵ်ႈလၢႆႈၵႂႃႇၼႆ ႁႂ်ႈမႄးတႅမ်ႈ (Re-render) UI ၼႃႈၼႆႉပၼ်ၵမ်းလဵဝ်ၶႃႈ။"



### **3. Why @State? (ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉမၼ်း?)**
1.  **Automatic UI Update:** ႁဝ်းဢမ်ႇလူဝ်ႇသင်ႇ Update UI ႁင်းၵူၺ်း။ သင်ႁဝ်း Update Data ယဝ်ႉ UI တေလႅၵ်ႈၸွမ်းႁင်းမၼ်း။
2.  **Simple State Management:** တႃႇ Data ဢွၼ်ႇဢီႈ ဢၼ်ၸႂ်ႉၼႂ်း View လဵဝ်ၵၼ် (မိူၼ်ၼင်ႇ ပုမ်ႇပိုတ်ႇ/ပိတ်း၊ တူဝ်ၼပ်ႉ) မၼ်းငၢႆႈၼႃႇ။
3.  **Source of Truth:** မၼ်းပဵၼ် "ငဝ်ႈငႃႇမၢၼ်ႇမႅၼ်ႈ" တႃႇ View ၼၼ်ႉ။

---

### **4. Example Code: The Counter App**

မႃးတူၺ်းလၢႆးၸႂ်ႉ `@State` တေႉတေႉၶႃႈ:

```swift
import SwiftUI

struct StateLessonView: View {
    // ၸႂ်ႉ @State တႃႇၵုမ်းထိင်း Data ဢၼ်တေလႅၵ်ႈလၢႆႈ
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("တူဝ်ၼပ်ႉ (Counter)")
                .font(.headline)
            
            Text("\(count)")
                .font(.system(size: 80, weight: .bold))
                .foregroundStyle(count >= 0 ? .blue : .red)
            
            HStack(spacing: 40) {
                Button("ယွမ်း (Minus)") {
                    count -= 1 // လႅၵ်ႈလၢႆႈ Data ယဝ်ႉ UI တေ Refresh ႁင်းမၼ်း
                }
                .buttonStyle(.bordered)
                
                Button("ထႅမ် (Plus)") {
                    count += 1
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
}
```

---

### **Summary (သူးပ်းႁူဝ်တွၼ်ႈႁဵၼ်း)**

| Concept | Explanation (Shan)                                                                     |
| :--- |:---------------------------------------------------------------------------------------|
| **Immutable Struct** | View ပဵၼ် Struct လႄႈ ႁဝ်းလႅၵ်ႈလၢႆႈ Data မၼ်းလူၺ်ႈလၢႆးယူဝ်းယူဝ်းဢမ်ႇလႆႈ။                |
| **@State** | ပဵၼ် Property Wrapper ဢၼ်ပၼ်သုၼ်ႇႁႂ်ႈႁဝ်းလႅၵ်ႈလၢႆႈ Data ၼႂ်း Struct လႆႈ။               |
| **Re-render** | မိူဝ်ႈ @State Variable လႅၵ်ႈလၢႆႈ၊ SwiftUI တေတႅမ်ႈ `body` မႂ်ႇထႅင်ႈၵမ်းၼိုင်ႈ ႁင်းမၼ်း။ |
| **Private State** | ၵမ်ႈၼမ် ႁဝ်းတေၸႂ်ႉ `private` တႃႇ @State ယွၼ်ႉမၼ်းလူဝ်ႇၸႂ်ႉၼႂ်း View လဵဝ်ၵၼ်ၵူၺ်း။      |

---