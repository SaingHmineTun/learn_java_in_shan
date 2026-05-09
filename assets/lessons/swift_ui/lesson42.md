

## **Module 6 | Lesson 42: Advanced Transitions and MatchedGeometryEffect**

### **1. Transitions (ၵၢၼ်ၶဝ်ႈ/ဢွၵ်ႇ)**

`Transition` တႅပ်းတတ်းဝႃႈ View ၼိုင်ႈဢၼ် တေ "ဢွၵ်ႇမႃး" (Appear) လႄႈ "ႁၢႆၵႂႃႇ" (Disappear) ၸိူင်ႉႁိုဝ်ၼႆယဝ်ႉ။

* **Built-in Transitions:** `.opacity`, `.scale`, `.slide`, `.move(edge: .bottom)`။
* **Asymmetric Transitions:** ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈႁႂ်ႈ "လွင်ႈၶဝ်ႈ" လႄႈ "လွင်ႈဢွၵ်ႇ" ဢမ်ႇမိူၼ်ၵၼ်လႆႈယဝ်ႉ။

### **2. MatchedGeometryEffect (ၵၢၼ်ၵွင်ႉႁၢင်ႈ)**

ၼႆႉပဵၼ် "Magic" ၶွင် SwiftUI ယဝ်ႉ! မၼ်းၸွႆႈႁႂ်ႈ View သွင်ဢၼ် (ဢၼ်ယူႇၵေႃႉတီႈတီႈ) "လႅၵ်ႈႁၢင်ႈ" ၵႂႃႇၸူးၵၼ်လႆႈ ႁႂ်ႈမိူၼ်မၼ်းပဵၼ် View တူဝ်လဵဝ်ၵၼ်ယဝ်ႉ။

* **Usage:** ၸႂ်ႉတႃႇႁဵတ်း Animation မိူဝ်ႈၼဵၵ်း Card ဢွၼ်ႇသေ ႁႂ်ႈမၼ်း "ၶႂၢၵ်ႈ" (Expand) ပဵၼ်ၼႃႈၸေႃးတဵမ်မႃးၼၼ်ႉယဝ်ႉ။

---

### **3. Example Code: Card Expansion Effect**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၸႂ်ႉ `matchedGeometryEffect` တႃႇႁဵတ်းႁႂ်ႈ Logo TMK လႅၼ်ႈၵႂႃႇမႃးၶႃႈ:

```swift
import SwiftUI

struct MatchedGeometryLessonView: View {
    @Namespace private var animation // 1. သၢင်ႈ Namespace တႃႇၵွင်ႉ View
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
            if !isExpanded {
                // --- Small View (Icon Style) ---
                VStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                        .matchedGeometryEffect(id: "shape", in: animation) // 2. သႂ်ႇ ID မိူၼ်ၵၼ်
                        .frame(width: 100, height: 100)
                        .overlay(Text("TMK").foregroundColor(.white))
                }
            } else {
                // --- Expanded View (Header Style) ---
                VStack {
                    RoundedRectangle(cornerRadius: 0)
                        .fill(Color.blue)
                        .matchedGeometryEffect(id: "shape", in: animation) // 2. သႂ်ႇ ID မိူၼ်ၵၼ်
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .overlay(Text("Thung Mao Kham Academy").font(.largeTitle).foregroundColor(.white))
                    
                    Spacer()
                }
                .ignoresSafeArea()
                .transition(.asymmetric(insertion: .opacity, removal: .move(edge: .top)))
            }
            
            Button(isExpanded ? "Close" : "Learn More") {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    isExpanded.toggle()
                }
            }
            .padding()
            .buttonStyle(.borderedProminent)
        }
    }
}

```

---

### **4. Key Points to Remember**

| Concept | Explanation (Shan) |
| --- | --- |
| **@Namespace** | ပဵၼ် "ဝူင်း" တႃႇၵွင်ႉ ID ၶွင် View သွင်ဢၼ် ႁႂ်ႈ SwiftUI ႁူႉဝႃႈမၼ်းၵွင်ႉၵၼ်။ |
| **ID String** | လူဝ်ႇသႂ်ႇ ID မိူၼ်ၵၼ် (မိူၼ်ၼင်ႇ "shape") တီႈ View တင်းသွင်ၽၢႆႇ။ |
| **withAnimation** | Matched Geometry တေႁဵတ်းၵၢၼ်လႆႈၵေႃႈ တေႃႇမိူဝ်ႈႁဝ်းႁေႃႇဝႆႉၼႂ်း Animation block ၵူၺ်း။ |
| **Transitions** | ၸွႆႈထႅမ်လွင်ႈ ၶဝ်ႈ/ဢွၵ်ႇ ႁႂ်ႈမၼ်းပဵင်းၵၼ် (Smooth)။ |

---