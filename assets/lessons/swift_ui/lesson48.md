

## **Module 6 | Project 6: Fitness Dashboard with Animated Progress Rings**

### **1. ယိူင်းဢၢၼ်း (Goal)**

သၢင်ႈ Dashboard ဢၼ်ၼႄလွင်ႈတူင်ႉၼိုင်ပၢႆးယူႇလီ:

* **Three Nested Rings:** ၼႄလွင်ႈပႆ (Steps), ၵၢၼ်ဢွၵ်ႇႁႅင်း (Exercise), လႄႈ ၵၢၼ်ယူၼ်း (Stand)။
* **Animated Entry:** မိူဝ်ႈပိုတ်ႇ App မႃး ႁႂ်ႈသဵၼ်ႈ Rings ၼၼ်ႉ "လႅၼ်ႈ" (Animate) ဢွၵ်ႇမႃးႁင်းမၼ်း။
* **Interactive Stats:** မီးပုမ်ႇတႃႇ Random ၶေႃႈမုၼ်း တႃႇတူၺ်း Animation (Spring Animation)။
* **Glassmorphism Background:** ၸႂ်ႉ Visual Effects ဢၼ်ႁဵၼ်းမႃးၼႂ်း Module ၵဝ်ႇ တႃႇႁဵတ်းႁႂ်ႈ App တူၺ်း Modern။

---

### **2. Solution Code (တူဝ်ယၢင်ႇ Code)**

```swift
import SwiftUI

// 1. Reusable Activity Ring View
struct ActivityRing: View {
    var progress: Double
    var color: Color
    var outlineColor: Color { color.opacity(0.2) }
    var thickness: CGFloat = 30
    
    var body: some View {
        ZStack {
            // Background Circle
            Circle()
                .stroke(outlineColor, lineWidth: thickness)
            
            // Foreground Progress Circle
            Circle()
                .trim(from: 0, to: progress)
                .stroke(color.gradient, style: StrokeStyle(lineWidth: thickness, lineCap: .round))
                .rotationEffect(.degrees(-90))
        }
    }
}

// 2. Main Fitness Dashboard
struct FitnessDashboardView: View {
    @State private var moveProgress: Double = 0.0
    @State private var exerciseProgress: Double = 0.0
    @State private var standProgress: Double = 0.0
    
    var body: some View {
        ZStack {
            // Background
            Color.black.ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("TMK Activity")
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                
                // --- Nested Rings Section ---
                ZStack {
                    ActivityRing(progress: moveProgress, color: .red, thickness: 35)
                        .frame(width: 280, height: 280)
                    
                    ActivityRing(progress: exerciseProgress, color: .green, thickness: 35)
                        .frame(width: 205, height: 205)
                    
                    ActivityRing(progress: standProgress, color: .cyan, thickness: 35)
                        .frame(width: 130, height: 130)
                }
                
                // --- Stats List ---
                VStack(spacing: 20) {
                    StatRow(title: "Move", value: "450 / 600 kcal", color: .red)
                    StatRow(title: "Exercise", value: "22 / 30 min", color: .green)
                    StatRow(title: "Stand", value: "8 / 12 hr", color: .cyan)
                }
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(25)
                
                Button("Refresh Goals") {
                    withAnimation(.spring(response: 0.6, dampingFraction: 0.7)) {
                        moveProgress = Double.random(in: 0.5...0.9)
                        exerciseProgress = Double.random(in: 0.4...0.8)
                        standProgress = Double.random(in: 0.3...0.7)
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
            }
            .padding()
        }
        .onAppear {
            // Start animation on load
            withAnimation(.easeInOut(duration: 1.5)) {
                moveProgress = 0.75
                exerciseProgress = 0.6
                standProgress = 0.8
            }
        }
    }
}

// Helper View for Stats
struct StatRow: View {
    let title: String
    let value: String
    let color: Color
    
    var body: some View {
        HStack {
            Circle().fill(color).frame(width: 10, height: 10)
            Text(title).bold().foregroundColor(.white)
            Spacer()
            Text(value).foregroundColor(.gray)
        }
    }
}

```

---

### **3. Summary**

| Feature | SwiftUI Concept Used (Shan)                                           |
| --- |-----------------------------------------------------------------------|
| **Nested Rings** | ၸႂ်ႉ `ZStack` တႃႇဢဝ် `ActivityRing` မႃးထပ်းၵၼ်။                       |
| **Ring Design** | ၸႂ်ႉ `.trim()` လႄႈ `StrokeStyle` တႃႇႁဵတ်းႁၢင်ႈ "သဵၼ်ႈပၼ်ႇ" ဢၼ်မူၼ်း။  |
| **Gradients** | ၸႂ်ႉ `color.gradient` တႃႇႁဵတ်းႁႂ်ႈသီ တူၺ်းမီး Depth လႄႈ Modern။       |
| **Spring Animation** | ၸွႆႈႁႂ်ႈၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းမီးလွင်ႈ "ၵျွၵ်ႉ" (Bounce) ႁၢင်ႈလီလီ။   |
| **Life Cycle** | ၸႂ်ႉ `.onAppear` တႃႇသင်ႇႁႂ်ႈ Animation တႄႇႁဵတ်းၵၢၼ် မိူဝ်ႈပိုတ်ႇ App။ |

---