
## **Module 6 | Lesson 43: Drawing Custom Shapes with Paths and CGPath**

### **1. Path ပဵၼ်သင်?**

`Path` ပဵၼ်သဵၼ်ႈတၢင်း ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉ ပဵၼ်ၸၼ်ႉပဵၼ်တွၼ်ႈ။ မၼ်းမိူၼ်တင်းႁဝ်းဢဝ် "ပၢႆၵမ်" (Pen) ဝၢင်းဝႆႉၼိူဝ်ၸေႈသေ 
သင်ႇႁႂ်ႈမၼ်းတႅမ်ႈၵႂႃႇၸွမ်းတူဝ်ၼပ်ႉ (Coordinates) ယဝ်ႉ။

* **move(to:)**: ဢဝ်ပၢႆၵမ်ၵႂႃႇဝၢင်းဝႆႉ တီႈလွၵ်း (x, y)။
* **addLine(to:)**: ထႅမ်သႂ်ႇသဵၼ်ႈၵႂႃႇၸူး တီႈလွၵ်း (x, y)။
* **addArc / addCurve**: တႅမ်ႈသဵၼ်ႈၵူတ်ႉ (Curves)။

### **2. Shape Protocol**

တႃႇႁႂ်ႈ Path ႁဝ်းၸႂ်ႉလႆႈငၢႆႈ မိူၼ်ၼင်ႇ `Circle()` ဢမ်ႇၼၼ် `Rectangle()`ၼၼ်ႉ 
ႁဝ်းထုၵ်ႇလီသၢင်ႈ `struct` ဢၼ်ၸွမ်းပိူင် **Shape Protocol** ယဝ်ႉ။
မၼ်းတေၸွႆႈႁႂ်ႈႁဝ်း မၵ်းမၼ်ႈတင်းယႂ်ႇၵႂၢင်ႈ (CGRect) ၸွမ်းၼင်ႇပိုၼ်ႉတီႈ ဢၼ်မၼ်းယူႇဝႆႉၼၼ်ႉယဝ်ႉ။

---

### **3. Example Code: Creating a Triangle (ႁၢင်ႈသၢမ်ၸဵင်ႇ)**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်တႅမ်ႈႁၢင်ႈသၢမ်ၸဵင်ႇ ႁႂ်ႈမၼ်းမႄးၶၼၢတ်ႉၸွမ်း Frame ၶႃႈ:

```swift
import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // 1. တႄႇတီႈ ၼိူဝ်သုတ်း လႄႈ ၼႂ်းၵၢင်ထႅဝ်ၼွၼ်း
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        
        // 2. ၶၢႆႉလူင်းမႃး ၽၢႆႇၶႂႃတၢင်းတႂ်ႈ
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        // 3. ၶၢႆႉၵႂႃႇ ၽၢႆႇသၢႆႉတၢင်းတႂ်ႈ
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        // 4. ပိၵ်ႉသဵၼ်ႈ (ၶိုၼ်းၵႂႃႇၸူး တီႈတႄႇ)
        path.closeSubpath()
        
        return path
    }
}

struct DrawingLessonView: View {
    var body: some View {
        VStack(spacing: 40) {
            // ၸႂ်ႉ Shape ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ
            Triangle()
                .fill(LinearGradient(colors: [.blue, .cyan], startPoint: .top, endPoint: .bottom))
                .frame(width: 150, height: 150)
            
            Triangle()
                .stroke(Color.orange, lineWidth: 5)
                .frame(width: 100, height: 100)
            
            Text("Custom TMK Shapes")
                .font(.headline)
        }
    }
}

```

---

### **4. CGPath vs Path**

* **Path:** ပဵၼ်ၶွင် SwiftUI (ၸႂ်ႉငၢႆႈ၊ မီး Modifiers ၼမ်)။
* **CGPath (Core Graphics):** ပဵၼ် API ၸၼ်ႉတႂ်ႈ (Lower-level) ဢၼ်မီးမႃးႁိုင်ယဝ်ႉ။ ၵမ်ႉၼမ်ႁဝ်းၸႂ်ႉမိူဝ်ႈလူဝ်ႇလႅၵ်ႈ Data ၸူး Core Animation ဢမ်ႇၼၼ် မိူဝ်ႈလူဝ်ႇႁဵတ်းၵၢၼ်ယၢပ်ႇယၢပ်ႇယဝ်ႉ။

---

### **Summary**

| Concept | Explanation (Shan)                                                       |
| --- |--------------------------------------------------------------------------|
| **Path** | သဵၼ်ႈတၢင်းတႃႇတႅမ်ႈ View ႁင်းၵူၺ်း။                                       |
| **CGRect** | ပိုၼ်ႉတီႈ (Rectangle) ဢၼ်ပၼ်သုၼ်ႇႁႂ်ႈႁဝ်းႁူႉ Width/Height တႃႇတႅမ်ႈႁၢင်ႈ။ |
| **Stroke vs Fill** | `Stroke` ပဵၼ်ၵၢၼ်ၸၼ်သဵၼ်ႈၶွပ်ႇ၊ `Fill` ပဵၼ်ၵၢၼ်သႂ်ႇသီၼႂ်းမၼ်း။           |
| **Shape Protocol** | ႁဵတ်းႁႂ်ႈ Path ႁဝ်းမီးတူဝ်တူင်ႉ (Reusable) မိူၼ် Built-in Shapes။        |

---