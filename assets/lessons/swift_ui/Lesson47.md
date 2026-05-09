
## **Module 6 | Lesson 47: Building Custom Progress Indicators**

### **1. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇတႅမ်ႈႁင်းၵူၺ်း?**

ၼႂ်း SwiftUI ပေႃးမီး `ProgressView()` မႃးပၼ်ဝႆႉယဝ်ႉ။ 
ၵူၺ်းၵႃႈ မၼ်းလႅၵ်ႈႁၢင်ႈၽၢင်ယၢပ်ႇတေႉတေႉ။ သင်ႁဝ်းၶႂ်ႈလႆႈႁၢင်ႈပၼ်ႇ (Circular) ဢၼ်မီးသီလၢႆလၢႆမဵဝ်း (Gradients) လႄႈ မီး Animation ဢၼ်ၼိမ်ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈတႅမ်ႈႁင်းၵူၺ်းႁဝ်းယဝ်ႉ။

### **2. ၶိူင်ႈမိုဝ်းဢၼ်တေၸႂ်ႉ**

* **Circle / Trim:** ၸႂ်ႉတႃႇတႅမ်ႈသဵၼ်ႈပၼ်ႇ လႄႈ တႅပ်း (Trim) သဵၼ်ႈၼၼ်ႉ ၸွမ်းၼင်ႇပိူဝ်ႇသႅၼ်ႈ (%) ဢၼ်ႁဝ်းလူဝ်ႇ။
* **Stroke:** ၸႂ်ႉတႃႇမၵ်းမၼ်ႈတၢင်းၼႃ (Thickness) လႄႈ ႁၢင်ႈၽၢင်ပၢႆသဵၼ်ႈ (Line Cap)။
* **Animation:** ၸွႆႈႁႂ်ႈသဵၼ်ႈ Progress ၼၼ်ႉ "လႅၼ်ႈ" ၵႂႃႇၸွမ်းၼင်ႇ Data ဢၼ်လႅၵ်ႈလၢႆႈ။

---

### **3. Example Code: Circular Progress Ring**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ Progress Ring ဢၼ်ႁၢင်ႈလီ တႃႇၼႄပိူဝ်ႇသဵၼ်ႈၵၢၼ်ႁဵတ်း (0.0 တေႃႇ 1.0) ၶႃႈ:

```swift
import SwiftUI

struct CustomProgressView: View {
    @Binding var progress: Double // ႁပ်ႉၵႃႈၶၼ် 0.0 - 1.0
    var color: Color = .blue
    
    var body: some View {
        ZStack {
            // 1. ပိုၼ်ႉလင် (Background Ring)
            Circle()
                .stroke(color.opacity(0.2), lineWidth: 20)
            
            // 2. သဵၼ်ႈ Progress (Foreground Ring)
            Circle()
                .trim(from: 0, to: progress) // တႅပ်းသဵၼ်ႈၸွမ်းပိူဝ်ႇသႅၼ်ႈ
                .stroke(
                    color.gradient,
                    style: StrokeStyle(lineWidth: 20, lineCap: .round) // ပၢႆမၼ်းႁႂ်ႈမူၼ်း
                )
                .rotationEffect(.degrees(-90)) // ႁႂ်ႈမၼ်းတႄႇတီႈ ၼိူဝ်သုတ်း
                .animation(.easeInOut(duration: 1.0), value: progress) // Animation ၼိမ်ၼိမ်
            
            // 3. တူဝ်ၼပ်ႉပိူဝ်ႇသႅၼ်ႈ (%)
            Text("\(Int(progress * 100))%")
                .font(.system(size: 40, weight: .bold, design: .rounded))
        }
        .frame(width: 200, height: 200)
    }
}

// --- Preview / Test View ---
struct ProgressTestView: View {
    @State private var progressValue: Double = 0.3
    
    var body: some View {
        VStack(spacing: 50) {
            CustomProgressView(progress: $progressValue, color: .orange)
            
            Button("Update Progress") {
                progressValue = Double.random(in: 0.1...1.0)
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

```

---

### **4. Key Techniques (လၢႆးၵၢၼ်ဢၼ်လွင်ႈယႂ်ႇ)**

| Technique | Purpose (Shan)                                                             |
| --- |----------------------------------------------------------------------------|
| **.trim(from:to:)** | ၶိူင်ႈမိုဝ်းဢၼ်လွင်ႈယႂ်ႇသုတ်း တႃႇၼႄ Progress ၼႂ်း Shapes။                  |
| **LineCap.round** | ႁဵတ်းႁႂ်ႈပၢႆသဵၼ်ႈမူၼ်း ႁၼ်ယဝ်ႉသၢင်ႇထုၵ်ႇတႃလိူဝ်ပၢႆပႅတ်း။                   |
| **RotationEffect** | ၸႂ်ႉတႃႇ "ပၼ်ႇ" တီႈတႄႇ ႁႂ်ႈမၼ်းမႃးယူႇတီႈ 12 ၼႃႇရီႇ (Top)။                   |
| **@Binding** | ၸွႆႈႁႂ်ႈ View ၼႆႉၸႂ်ႉလႆႈလၢႆလၢႆတီႈ (Reusable) လူၺ်ႈၵုမ်းထိင်းလုၵ်ႉတီႈၼွၵ်ႈ။ |

---
