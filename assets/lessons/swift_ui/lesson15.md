

## **Module 2 | Lesson 15: Basic Animations: withAnimation and .animation()**

### **1. Animation ၼႂ်း SwiftUI ႁဵတ်းၵၢၼ်ၸိူင်ႉႁိုဝ်?**
မိူဝ်ႈ `@State` Variable လႅၵ်ႈလၢႆႈၼၼ်ႉ SwiftUI တေတႅမ်ႈ View မႂ်ႇပၼ်ၵမ်းလဵဝ်ယဝ်ႉ။
သင်ႁဝ်းဢမ်ႇသႂ်ႇ Animation ၼႆ မၼ်းတေ "တႅပ်း" (Cut) လႅၵ်ႈၵႂႃႇၵမ်းလဵဝ်ယဝ်ႉ။
ပေႃးႁဝ်းသႂ်ႇ Animation ဝႆႉၼႆ SwiftUI တေ Calculate "ၶၼ်ၵၢၼ်ဝၢင်ႈၵၢင်" (Interpolation) ပၼ် ႁႂ်ႈမၼ်းလႅၼ်ႈၵႂႃႇလွႆးလွႆးယဝ်ႉ။



### **2. Implicit Animation (ၸႂ်ႉ `.animation`)**
မၼ်းပဵၼ်ၵၢၼ်သႂ်ႇ Modifier တီႈ View ၼၼ်ႉၵမ်းလဵဝ်ယဝ်ႉ။ မၼ်းတေ "ပႂ်ႉတူၺ်း" (Watch) Value ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉသေ
ပေႃး Value ၼၼ်ႉလႅၵ်ႈလၢႆႊၼႆ ၵူႈလွင်ႈလွင်ႈၼိူဝ် View ၼၼ်ႉ တေလဵၼ်ႈပၼ် Animation ၵႂႃႇႁင်းမၼ်းယဝ်ႉ။
*   **လၢႆးတႅမ်ႈ:** `.animation(.default, value: someVariable)`

### **3. Explicit Animation (ၸႂ်ႉ `withAnimation`)**
မၼ်းပဵၼ်ၵၢၼ် "ႁေႃႇ" Logic တီႈ Action (မိူၼ်ၼင်ႇၼႂ်း Button) ယဝ်ႉ။ 
ႁဝ်းသင်ႇဝႃႈ "ၵူႈလွင်ႈလွင်ႈ ဢၼ်တေလႅၵ်ႈလၢႆႈ ယွၼ်ႉၵၢၼ်ၼဵၵ်းပုမ်ႇၼႆႉ ႁႂ်ႈမၼ်းပဵၼ် Animation တင်းမူတ်း" ၼၼ်ႉယဝ်ႉ။
*   **လၢႆးတႅမ်ႈ:** `withAnimation { someVariable.toggle() }`

### **4. Animation Curves**
ႁဝ်းလိူၵ်ႈ "လၢႆးလႅၼ်ႈ" (Timing) မၼ်းလႆႈ:
*   `.linear`: လႅၼ်ႈမိူၼ်ၵၼ်တင်းသဵၼ်ႈ။
*   `.easeIn`: တႄႇလွႆးလွႆးသေ ၽႂ်းၵႂႃႇတၢင်းပၢႆ။
*   `.easeOut`: တႄႇၽႂ်းသေ လွႆးၵႂႃႇတၢင်းပၢႆ။
*   `.spring()`: လႅၼ်ႈမိူၼ်ၼင်ႇ "သျွၵ်ႉ" (Spring) ဢၼ်မီးလွင်ႈတဵၼ်ႈ (Bounce)။

---

### **5. Example Code: Animation Demo**

```swift
import SwiftUI

struct AnimationLessonView: View {
    @State private var isExpanded = false
    @State private var rotation = 0.0
    
    var body: some View {
        VStack(spacing: 50) {
            
            // 1. Implicit Animation (.animation)
            // ပေႃး rotation လႅၵ်ႈ၊ သီ လႄႈ ၵၢၼ်ပၼ်ႇ တေ Animation ႁင်းမၼ်း
            RoundedRectangle(cornerRadius: 20)
                .fill(isExpanded ? .orange : .blue)
                .frame(width: isExpanded ? 200 : 100, height: 100)
                .rotationEffect(.degrees(rotation))
                .animation(.spring(response: 0.5, dampingFraction: 0.5), value: isExpanded)
                .animation(.easeInOut(duration: 1.0), value: rotation)
            
            VStack(spacing: 20) {
                // Button ၸႂ်ႉ Explicit Animation
                Button("Toggle Size") {
                    withAnimation(.easeInOut) {
                        isExpanded.toggle()
                    }
                }
                .buttonStyle(.bordered)
                
                Button("Rotate 45°") {
                    // ဢမ်ႇၸႂ်ႉ withAnimation တီႈၼႆႈ ၵူၺ်းၵႃႈမၼ်းတေလႅၼ်ႈ 
                    // ယွၼ်ႉႁဝ်းသႂ်ႇ .animation ဝႆႉတီႈ Rectangle ယဝ်ႉ
                    rotation += 45
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

| Method | Explanation (Shan) | Usage |
| :--- | :--- | :--- |
| **.animation()** | သႂ်ႇဝႆႉတီႈ View တႃႇပႂ်ႉတူၺ်း Variable (Implicit)။ | ၸႂ်ႉမိူဝ်ႈၶႂ်ႈႁႂ်ႈ View လႅၵ်ႈလၢႆႈႁင်းမၼ်း။ |
| **withAnimation** | ႁေႃႇဝႆႉတီႈ Action/Code (Explicit)။ | ၸႂ်ႉမိူဝ်ႈၶႂ်ႈၵုမ်းထိင်း Animation ၸွမ်း Action။ |
| **Spring** | လၢႆးလႅၼ်ႈဢၼ်မီးလွင်ႈတဵၼ်ႈ (Bounce)။ | ႁဵတ်းႁႂ်ႈ App Feeling လႅတ်းသႅဝ်း။ |
| **Duration** | ၶၢဝ်းယၢမ်း (Seconds) ဢၼ်တေႁဵတ်း Animation။ | ၸတ်းဝႃႈႁႂ်ႈမၼ်းလွႆး ဢမ်ႇၼၼ် ၽႂ်း။ |

---