

## **Module 2 | Lesson 12: Computed Properties in SwiftUI Views**

### **1. Computed Property ပဵၼ်သင်?**
မၼ်းပဵၼ် Variable ဢၼ်ဢမ်ႇလႆႈသႂ်ႇၵႃႈၶၼ် (Value) ဝႆႉဢွၼ်ၼႃႈ ၵူၺ်းၵႃႈမၼ်းတေ "ၼပ်ႉသွၼ်ႇ" (Calculate) ၵႃႈၶၼ်မႂ်ႇဢွၵ်ႇမႃး ၵူႈပွၵ်ႈဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉမၼ်းယဝ်ႉ။
*   ၼႂ်း SwiftUI View၊ မိူဝ်ႈ `@State` Variable လႅၵ်ႈလၢႆႈ၊ `body` တေ Re-render။
*   မိူဝ်ႈ `body` Re-render ၼၼ်ႉ၊ Computed Property ၵေႃႈတေ Calculate ၵႃႈမႂ်ႇၸွမ်းၵမ်းလဵဝ်။

### **2. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉမၼ်း?**
1.  **Logic Separation:** ဢဝ်ၵၢၼ်ၼပ်ႉဢၢၼ်ႇ (Calculation) ဢွၵ်ႇၵႂႃႇဝႆႉၽၢႆႇၼွၵ်ႈ `body`။
2.  **Readability:** ႁဵတ်းႁႂ်ႈ Code ဢၢၼ်ႇငၢႆႈ။ တႅမ်ႈဝႃႈ `if isFormValid` တေလီလိူဝ်တႅမ်ႈ Logic ယၢဝ်းယၢဝ်းၼႂ်း UI ၶႃႈ။
3.  **Dynamic Styling:** ၸႂ်ႉတႃႇလိူၵ်ႈ သီ (Color) ဢမ်ႇၼၼ် Icon ႁႂ်ႈလႅၵ်ႈလၢႆႈၸွမ်း Data။

---

### **3. Example Code: Score Tracker with Computed Properties**

တူၺ်းတူဝ်ယၢင်ႇ တီႈႁဝ်းၸႂ်ႉ Computed Property တႃႇတႅပ်းတတ်း "သီ" လႄႈ "ၶေႃႈၵႂၢမ်း" ၶႃႈ:

```swift
import SwiftUI

struct ComputedPropertyView: View {
    @State private var score: Int = 0
    
    // 1. Computed Property တႃႇတႅပ်းတတ်းသီ
    var statusColor: Color {
        if score >= 80 { return .green }
        if score >= 50 { return .orange }
        return .red
    }
    
    // 2. Computed Property တႃႇတႅပ်းတတ်းၶေႃႈၵႂၢမ်း
    var statusMessage: String {
        switch score {
        case 80...100: return "Excellent! (ၶႅမ်ႉၼႃႇ)"
        case 50...79: return "Keep Going! (ၵတ်ႉၶႅၼ်ႇယူႇ)"
        default: return "Need Improvement (လူဝ်ႇမႄးထႅင်ႈ)"
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Score: \(score)")
                .font(.system(size: 50, weight: .bold))
            
            // ၸႂ်ႉ Computed Properties တီႈၼႆႉ
            Text(statusMessage)
                .font(.headline)
                .foregroundStyle(statusColor)
            
            Stepper("Adjust Score", value: $score, in: 0...100)
                .padding()
            
            // 3. ၸႂ်ႉတႃႇ Check Boolean Logic
            if score == 100 {
                Text("🏆 Congratulations!")
                    .transition(.scale)
            }
        }
        .padding()
    }
}
```

---

### **Summary**

| Concept | Explanation (Shan)                                                          |
| :--- |:----------------------------------------------------------------------------|
| **Computed Property** | Variable ဢၼ်ၼပ်ႉသွၼ်ႇ ၵႃႈမၼ်းမႂ်ႇ ၵူႈပွၵ်ႈဢၼ် View ႁဵတ်း Refresh။           |
| **No Storage** | မၼ်းဢမ်ႇၵဵပ်း Data ဝႆႉ၊ မၼ်းၵူၺ်းၸွႆႈ "ပၼ်" (Return) ၵႃႈဢၼ် Calculate ယဝ်ႉ။ |
| **Clean Body** | ၸွႆႈႁႂ်ႈ `body` ႁဝ်းမီး UI Code ၵူၺ်း၊ ဢဝ် Logic ၵႂႃႇဝႆႉၽၢႆႇၼွၵ်ႈ။          |
| **Reactive** | မၼ်းတေ Update ၸွမ်း @State တႃႇသေႇ။                                          |

---