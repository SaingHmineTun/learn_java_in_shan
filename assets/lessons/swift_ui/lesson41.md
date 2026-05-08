

## **Module 6 | Lesson 41: Implicit vs Explicit Animations**

ၼႂ်း SwiftUI ၼၼ်ႉ ၵၢၼ်ႁဵတ်းႁႂ်ႈ View ၼိုင်ႈဢၼ်တူင်ႉၼိုင်လႆႈ မီးယူႇ 2 လၢႆးၼင်ႇၼႆၶႃႈ:

### **1. Implicit Animations (ၵၢၼ်တူင်ႉၼိုင်ႁင်းမၼ်း)**

ပဵၼ်လၢႆးဢၼ်ငၢႆႈသုတ်း။ ႁဝ်းသင်ႇဝႆႉတီႈ View ၼၼ်ႉဝႃႈ *"သင်မီး Variable လႂ်လႅၵ်ႈလၢႆႈၵေႃႈ ႁႂ်ႈမႄးႁၢင်ႈ (Animate) ၵႂႃႇႁင်းမၼ်းလႄႈ"* ၼႆယဝ်ႉ။

* **Modifier:** `.animation(.default, value: stateVariable)`
* **ၵၢၼ်ႁဵတ်းၵၢၼ်:** မၼ်းတေတူၺ်း `value`။ သင် Variable ၼၼ်ႉလႅၵ်ႈလၢႆႈ၊ မၼ်းတေ Animate ၵူႈလွင်ႈ ဢၼ်ယူႇၽၢႆႇၼိူဝ် Modifier ၼၼ်ႉယဝ်ႉ။

### **2. Explicit Animations (ၵၢၼ်သင်ႇႁႂ်ႈတူင်ႉၼိုင်)**

ပဵၼ်လၢႆးဢၼ်ႁဝ်း "သင်ႇ" ပဵၼ်ပွၵ်ႈပဵၼ်လႂ်။ ႁဝ်းတေႁေႃႇ (Wrap) Code ဢၼ်လႅၵ်ႈလၢႆႈၼၼ်ႉ ဝႆႉၼႂ်း `withAnimation` ယဝ်ႉ။

* **Function:** `withAnimation { ... }`
* **ၵၢၼ်ႁဵတ်းၵၢၼ်:** မၼ်းတေ Animate တွၼ်ႈဢၼ်လႅၵ်ႈလၢႆႈ ၼႂ်းဝူင်းလဵၵ်ႉ (Closure) ၼၼ်ႉၵူၺ်း။ မၼ်းၸွႆႈႁႂ်ႈႁဝ်းၵုမ်းထိင်းလႆႈလီလိူဝ်ယဝ်ႉ။

---

### **3. Example Code: Comparing Both Styles**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ႁဵတ်းႁႂ်ႈ "ပုမ်ႇ" (Button) ယႂ်ႇလူင်း လႄႈ လႅၵ်ႈသီၶႃႈ:

```swift
import SwiftUI

struct AnimationLessonView: View {
    @State private var isScaled = false
    @State private var isColored = false
    
    var body: some View {
        VStack(spacing: 50) {
            
            // --- Implicit Animation ---
            VStack {
                Text("Implicit")
                Button("Tap Me") {
                    isScaled.toggle()
                }
                .padding()
                .background(isScaled ? .orange : .blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(isScaled ? 1.5 : 1.0)
                // သင်ႇဝႃႈ: သင် isScaled လႅၵ်ႈ၊ ႁႂ်ႈ Animate ၵူႈလွင်ႈၽၢႆႇၼိူဝ်ၼႆႉ
                .animation(.spring(), value: isScaled)
            }
            
            Divider()
            
            // --- Explicit Animation ---
            VStack {
                Text("Explicit")
                Button("Tap Me") {
                    // သင်ႇႁႂ်ႈ Animate ၵမ်းလဵဝ် မိူဝ်ႈၼဵၵ်း
                    withAnimation(.easeInOut(duration: 1.0)) {
                        isColored.toggle()
                    }
                }
                .padding()
                .background(isColored ? .purple : .green)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .rotationEffect(.degrees(isColored ? 360 : 0))
            }
        }
    }
}

```

---

### **Summary**

| Type | How to use (Shan) | When to use                                                                                 |
| --- | --- |---------------------------------------------------------------------------------------------|
| **Implicit** | သႂ်ႇ `.animation()` modifier တီႈတူဝ် View။ | ၸႂ်ႉတႃႇ Animation ငၢႆႈငၢႆႈ ဢၼ်ၸွမ်း Variable ဢၼ်လဵဝ်။                                       |
| **Explicit** | ႁေႃႇ Code ဝႆႉၼႂ်း `withAnimation { }`။ | ၸႂ်ႉမိူဝ်ႈၶႂ်ႈႁႂ်ႈလႅၵ်ႈလၢႆႈ View လၢႆလၢႆဢၼ် ပဵင်းၵၼ် ဢမ်ႇၼၼ် ၶႂ်ႈၵုမ်းထိင်း Logic။ |

---