

## **Module 6 | Lesson 45: Gesture Recognizers: Tap, Drag, and Magnification**

### **1. Tap Gesture (ၵၢၼ်ၼဵၵ်း)**

ၼႆႉပဵၼ်ပိုၼ်ႉထၢၼ်သုတ်း၊ မၼ်းမိူၼ်တင်း Button ၵူၺ်းၵႃႈႁဝ်းၸၢင်ႈသႂ်ႇပၼ်တီႈ View လႂ်ၵေႃႈလႆႈယဝ်ႉ။

* **Single Tap:** `.onTapGesture { ... }`
* **Double Tap:** `.onTapGesture(count: 2) { ... }`

### **2. Drag Gesture (ၵၢၼ်ၸၼ်/ပွႆႇ)**

ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈ User ၸၢင်ႈ "ၸၼ်" View ၼိုင်ႈဢၼ်ၵႂႃႇမႃးလႆႈ (မိူၼ်ၼင်ႇ ၵၢၼ်ပၢၵ်ႈ Card ပႅတ်ႈ)။

* **onChanged:** ႁဵတ်းၵၢၼ်တူင်ႉၼိုင် ၸွမ်းပၢႆမိုဝ်း မိူဝ်ႈတိုၵ်ႉၸၼ်ယူႇ။
* **onEnded:** ႁဵတ်းၵၢၼ်မိူဝ်ႈ User ပွႆႇမိုဝ်းယဝ်ႉ။

### **3. Magnification Gesture (ၵၢၼ်ယိုတ်ႈ/ယွၼ်ႇ)**

ၸႂ်ႉတႃႇႁဵတ်း Zoom Effect မိူၼ်ၼင်ႇၼႂ်း App Photos ယဝ်ႉ။ ႁဝ်းၸႂ်ႉပၢႆမိုဝ်း 2 ဢၼ်သေ ယိုတ်ႈယႂ်ႇ၊ ယွၼ်ႇလဵၵ်ႉ ယဝ်ႉ။

---

### **4. Example Code: Interactive Image with Drag & Zoom**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ႁဵတ်းႁႂ်ႈ Logo TMK ၸၼ်လႆႈ လႄႈ Zoom လႆႈၶႃႈ:

```swift
import SwiftUI

struct GestureLessonView: View {
    // 1. တူဝ်ၵဵပ်း State တႃႇ Drag
    @State private var offset = CGSize.zero
    
    // 2. တူဝ်ၵဵပ်း State တႃႇ Zoom
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        ZStack {
            VStack {
                Text("ၸၼ်တူၺ်း ဢမ်ႇၼၼ် Zoom တူၺ်းၶႃႈ")
                    .padding()
                
                Image(systemName: "hexagon.fill")
                    .font(.system(size: 150))
                    .foregroundColor(.blue)
                    .shadow(radius: 10)
                    // --- APPLY GESTURES ---
                    .offset(offset) // ၶၢႆႉၸွမ်း Drag
                    .scaleEffect(scale) // ယႂ်ႇၸွမ်း Zoom
                    .gesture(
                        // A. Drag Gesture
                        DragGesture()
                            .onChanged { value in
                                offset = value.translation
                            }
                            .onEnded { _ in
                                withAnimation(.spring()) {
                                    offset = .zero // ပွႆႇမိုဝ်းသေ ႁႂ်ႈမၼ်းၵႂႃႇၶိုၼ်းတီႈၵဝ်ႇ
                                }
                            }
                    )
                    .gesture(
                        // B. Magnification Gesture (Zoom)
                        MagnificationGesture()
                            .onChanged { value in
                                scale = value
                            }
                            .onEnded { _ in
                                withAnimation(.spring()) {
                                    scale = 1.0 // ပွႆႇမိုဝ်းသေ ႁႂ်ႈမၼ်းၶိုၼ်းပဵၼ် တင်းယႂ်ႇၶွင်ၵဝ်ႇ
                                }
                            }
                    )
            }
        }
    }
}

```

---

### **Summary**

| Gesture | Purpose (Shan)                            | Key Parameter                       |
| --- |-------------------------------------------|-------------------------------------|
| **Tap** | ၵၢၼ်ၼဵၵ်း (ၼိုင်ႈပွၵ်ႈ ဢမ်ႇၼၼ် လၢႆပွၵ်ႈ)။ | `count`                             |
| **Drag** | ၵၢၼ်ၸၼ် View ၵႂႃႇမႃး။                     | `translation` ၵႃႊၶၼ်ဢၼ်ၶၢႆႉၵႂႃႇမႃး) |
| **Magnification** | ၵၢၼ်ယိုတ်ႈ/ယွၼ်ႇ (Zoom)။                  | `scale` (ၵႃႊၶၼ်ဢၼ်ယႂ်ႇၶိုၼ်ႈ)       |
| **Rotation** | ၵၢၼ်ပၼ်ႇ View (Pinch & Rotate)။           | `angle`                             |

---

### **Important Note: Gesture Sequence**

ႁဝ်းၸၢင်ႈၸႂ်ႉ Gesture လၢႆမဵဝ်းၸွမ်းၵၼ်လႆႈ လူၺ်ႈၵၢၼ်ၸႂ်ႉ:

* **`.simultaneously(with:)`**: ႁႂ်ႈႁဵတ်းၵၢၼ် မိူဝ်ႈလဵဝ်ၵၼ် (မိူၼ်ၼင်ႇ Drag တင်း Zoom ၸွမ်းၵၼ်)။
* **`.sequenced(before:)`**: ႁႂ်ႈႁဵတ်းဢၼ်ၼိုင်ႈယဝ်ႉ ၸင်ႇႁဵတ်းဢၼ်ၼိုင်ႈၶႃႈ။

---