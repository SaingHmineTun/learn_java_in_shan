

## **Module 6 | Lesson 44: The Canvas API for High-Performance Graphics**

### **1. Canvas ပဵၼ်သင်?**

`Canvas` ပဵၼ်ပိုၼ်ႉတီႈတႅမ်ႈႁၢင်ႈ (Drawing Area) ဢၼ်ၸႂ်ႉ **Immediate Mode Rendering** ယဝ်ႉ။

* တႅၼ်းၵၢၼ်ဢၼ် SwiftUI တေလႆႈသၢင်ႈ "Object" (Views) ဝႆႉၼႂ်း Memory ၼမ်ၼမ်ၼၼ်ႉ `Canvas` တေတႅမ်ႈ "သီ" လႄႈ "ႁၢင်ႈ" လူင်းၵႂႃႇၼိူဝ်ၼႃႈၸေႃးၵမ်းလဵဝ်ယဝ်ႉ။
* မၼ်းၸႂ်ႉ `GraphicsContext` တႃႇတႅမ်ႈသေ မိူၼ်တင်းပိုၼ်ႉတီႈတႅမ်ႈႁၢင်ႈ (Drawing commands) ၶွင် Framework ၵဝ်ႇၵဝ်ႇ မိူၼ်ၼင်ႇ Core Graphics ယဝ်ႉ။

### **2. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉ Canvas?**

1. **Performance:** တႃႇတႅမ်ႈ View ၼပ်ႉႁူဝ်ႁဵင် ႁူဝ်သႅၼ် ဢၼ်တူင်ႉၼိုင်ၽဵင်ႇပဵင်းၵၼ်။
2. **Rich Visuals:** ၸႂ်ႉတႃႇႁဵတ်း Effects ဢၼ်ယၢပ်ႇယၢပ်ႇ မိူၼ်ၼင်ႇ Shaders, Masks, လႄႈ Blending Modes။
3. **Efficiency:** လူတ်းယွမ်းၵၢၼ်ၸႂ်ႉ Memory ယွၼ်ႉမၼ်းဢမ်ႇသၢင်ႈ View Hierarchy ၶႃႈ။

---

### **3. Example Code: Drawing Thousands of Stars**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၸႂ်ႉ Canvas တႃႇတႅမ်ႈ "လၢဝ်" (Dots) ႁဵတ်းပဵၼ် Galaxy ၶႃႈ:

```swift
import SwiftUI

struct CanvasLessonView: View {
    var body: some View {
        // 1. သၢင်ႈ Canvas
        Canvas { context, size in
            // 2. ၸႂ်ႉ GraphicsContext တႃႇတႅမ်ႈ
            for _ in 0..<500 {
                // သုမ်ႇ (Random) တီႈယူႇ လႄႈ ၶၼၢတ်ႉ
                let x = Double.random(in: 0...size.width)
                let y = Double.random(in: 0...size.height)
                let s = Double.random(in: 1...4)
                
                let rect = CGRect(x: x, y: y, width: s, height: s)
                
                // 3. တႅမ်ႈႁၢင်ႈလူင်းၵႂႃႇ
                context.fill(
                    Path(ellipseIn: rect),
                    with: .color(.white.opacity(Double.random(in: 0.3...1.0)))
                )
            }
        }
        .background(Color.black)
        .ignoresSafeArea()
    }
}

```

---

### **4. Canvas vs Path (Shape)**

| Feature | Shape / Path | Canvas API                                     |
| --- | --- |------------------------------------------------|
| **Mode** | Retained (ပဵၼ် View Object) | Immediate (တႅမ်ႈလူင်းၵမ်းလဵဝ်)                 |
| **Interaction** | ၼဵၵ်း (Tap) လႆႈၵမ်းလဵဝ် တီႈတူဝ်မၼ်း | ၼဵၵ်းလႆႈယၢပ်ႇ (လူဝ်ႇတႅၵ်ႈလွၵ်း x, y ႁင်းၵူၺ်း) |
| **Performance** | လီ (တႃႇ View ဢေႇ) | ၶႅမ်ႉသုတ်း (တႃႇ View ၼမ်ၼမ်)                   |
| **Usage** | UI Components (Buttons, Cards) | Visualizations, Games, Effects                 |

---

### **Summary**

* **GraphicsContext:** ၶိူင်ႈမိုဝ်းတႃႇသင်ႇႁႂ်ႈ Canvas တႅမ်ႈ (Fill, Stroke, Draw Image)။
* **Resolution Independent:** ႁၢင်ႈဢၼ်တႅမ်ႈဢွၵ်ႇမႃး တေႁၼ်ၸႅင်ႈလီ (Sharp) တႃႇသေႇ တီႈၵူႈၶိူင်ႈ။
* **Symbol:** ႁဝ်းၸၢင်ႈဢဝ် SwiftUI Views တူဝ်တေႉ (မိူၼ်ၼင်ႇ Text ဢမ်ႇၼၼ် Image) မႃးၸႂ်ႉၼႂ်း Canvas လႆႈလူၺ်ႈၵၢၼ်ၸႂ်ႉ `resolvedSymbol` ယဝ်ႉ။

---
