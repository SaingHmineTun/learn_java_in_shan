

## **Module 6 | Lesson 46: Combining Gestures and Animations for UI Interaction**

### **1. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉၸွမ်းၵၼ်?**

သင်ႁဝ်းၸႂ်ႉ Gesture လၢႆလၢႆၵူၺ်းၼႆ UI ႁဝ်းတေတူင်ႉၼိုင်ၸွမ်းပၢႆမိုဝ်းသေ ယဝ်ႉၵႂႃႇၵူၺ်း။
မိူဝ်ႈႁဝ်းပွႆႇမိုဝ်းၼၼ်ႉ View ၼၼ်ႉတေ "ၵိုတ်း" ၵႂႃႇၵမ်းလဵဝ် ဢမ်ႇၼၼ် "လႅၼ်ႈပွၵ်ႈ" ၶိုၼ်းတီႈၵဝ်ႇ လူၺ်ႈဢမ်ႇမီးလွင်ႈ တူင်ႉၼိုင်သင်လႄႈ တေတူၺ်းဢမ်ႇႁၢင်ႈလီၶႃႈ။

* **Animations** ၸွႆႈႁႂ်ႈၵၢၼ် "တႄႇ" လႄႈ ၵၢၼ် "ပွႆႇ" မိုဝ်းၼၼ်ႉ မီးလွင်ႈၼိမ် (Fluidity) ယဝ်ႉ။

### **2. ၵၢၼ်ၸႂ်ႉ withAnimation ၼႂ်း Gesture**

ႁဝ်းၸၢင်ႈသႂ်ႇ Animation ၶဝ်ႈၵႂႃႇၼႂ်း `onChanged` ဢမ်ႇၼၼ် `onEnded` တႃႇႁႂ်ႈ View လႅၵ်ႈႁၢင်ႈၵႂႃႇၸွမ်းၼင်ႇပိူင်သၢင်ႈ Physics (မိူၼ်ၼင်ႇ Spring Animation) ယဝ်ႉ။

---

### **3. Example Code: Swipe-to-Dismiss Card**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ႁဵတ်း Card ဢၼ်ၸၼ် (Drag) လႆႈသေ ပေႃးပွႆႇမိုဝ်းၼႆ ႁႂ်ႈမၼ်း Bounce ၶိုၼ်းမိူဝ်းတီႈၵဝ်ႇယဝ်ႉ:

```swift
import SwiftUI

struct InteractiveGestureView: View {
    @State private var offset = CGSize.zero
    @State private var isDragging = false
    
    var body: some View {
        ZStack {
            // Card ၼႄၽွၼ်းၵၢၼ် TMK
            VStack {
                Text("TMK Project Card")
                    .font(.headline)
                    .foregroundColor(.white)
                Image(systemName: "app.badge.checkmark.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.white)
            }
            .frame(width: 300, height: 200)
            .background(LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            .shadow(radius: isDragging ? 20 : 5)
            // 1. သႂ်ႇ Offset တႃႇၶၢႆႉၸွမ်းမိုဝ်း
            .offset(offset)
            // 2. သႂ်ႇ Rotation တႃႇႁႂ်ႈမၼ်း "ဢိူင်ႇ" ၸွမ်းၵၢၼ်ၸၼ်
            .rotationEffect(.degrees(Double(offset.width / 10)))
            .gesture(
                DragGesture()
                    .onChanged { value in
                        // သႂ်ႇ Animation ဢွၼ်ႇဢွၼ်ႇ မိူဝ်ႈတိုၵ်ႉၸၼ်
                        withAnimation(.interactiveSpring()) {
                            offset = value.translation
                            isDragging = true
                        }
                    }
                    .onEnded { _ in
                        // မိူဝ်ႈပွႆႇမိုဝ်း ႁႂ်ႈမၼ်း "bounce" ၶိုၼ်းမိူဝ်းတီႈၵဝ်ႇ
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.6)) {
                            offset = .zero
                            isDragging = false
                        }
                    }
            )
        }
    }
}

```

---

### **4. Advanced Logic: Gesture Velocity**

ၼႂ်း App ၸၼ်ႉသုင်ၼၼ်ႉ ႁဝ်းတေတူၺ်း "တၢင်းဝႆး" (Velocity) ၶွင်ပၢႆမိုဝ်း User ၸွမ်းယဝ်ႉ။

* သင် User ပၢၵ်ႈ (Swipe) ဝႆးဝႆးၼႆ ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ View ၼၼ်ႉ "လႅၼ်ႈဢွၵ်ႇ" ၼႃႈၸေႃးၵႂႃႇၵမ်းလဵဝ်ယဝ်ႉ။
* သင် User ၸၼ်ဢိူၼ်ဢိူၼ်ၼႆ ႁဝ်းၵေႃႈႁႂ်ႈမၼ်း လႅၼ်ႈၶိုၼ်းမိူဝ်းဝႆႉတီႈၵဝ်ႇၶႃႈ။

---

### **Summary**

| Interaction Point | Technique (Shan) | Effect                                                       |
| --- | --- |--------------------------------------------------------------|
| **Start Dragging** | `withAnimation(.easeOut)` | ႁဵတ်းႁႂ်ႈ View တူင်ႉၼိုင်ၸွမ်းမိုဝ်းၵမ်းလဵဝ်။                |
| **During Drag** | `offset` + `rotation` | ႁဵတ်းႁႂ်ႈ View မီးၼမ်ႉၼၵ်း လႄႈ လွင်ႈတူင်ႉၼိုင်ဢၼ်မၢၼ်ႇမႅၼ်ႈ။ |
| **End Drag (Release)** | `withAnimation(.spring())` | ႁဵတ်းႁႂ်ႈ View "ၵျွၵ်ႉ" ၶိုၼ်းတီႈၵဝ်ႇ ႁၢင်ႈလီလီ။             |
| **Active Feedback** | `isDragging` (Scale/Shadow) | ႁဵတ်းႁႂ်ႈ User ႁူႉဝႃႈ တိုၵ်ႉ "ယိပ်း" View ၼၼ်ႉဝႆႉယူႇ။        |

---