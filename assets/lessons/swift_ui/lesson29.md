

## **Module 4 | Lesson 29: Adaptive Layouts: Supporting iPhone, iPad, and Split View**

### **1. Size Classes ပဵၼ်သင်?**

Apple ၸႅၵ်ႇဝႆႉ တင်းယႂ်ႇၼႃႈၸေႃး ဢွၵ်ႇပဵၼ် 2 မဵဝ်း ဢၼ်ႁွင်ႉဝႃႈ **User Interface Size Classes** ၼႆယဝ်ႉ:

* **Compact:** ပဵၼ်ၼႃႈၸေႃးၵႅပ်ႈ (မိူၼ်ၼင်ႇ iPhone)။
* **Regular:** ပဵၼ်ၼႃႈၸေႃးၵႂၢင်ႈ (မိူၼ်ၼင်ႇ iPad ဢမ်ႇၼၼ် iPhone Max တၢင်းၼွၼ်း)။

### **2. @Environment(.horizontalSizeClass)**

ႁဝ်းၸၢင်ႈၸႂ်ႉ Variable ၼႆႉ တႃႇႁူႉဝႃႈ ယၢမ်းလဵဝ် User တူၺ်း App ႁဝ်းၼိူဝ်ၼႃႈၸေႃးၵႂၢင်ႈ ဢမ်ႇၼၼ် ၵႅပ်ႈ ၼႆယဝ်ႉ။

* သင်ပဵၼ် **Compact**: ႁဝ်းၸၢင်ႈၼႄ `VStack` (ထႅဝ်လူင်းတၢင်းတႂ်ႈ)။
* သင်ပဵၼ် **Regular**: ႁဝ်းၸၢင်ႈၼႄ `HStack` (ထႅဝ်ၼွၼ်းပဵင်းၵၼ်)။

### **3. NavigationSplitView**

တႃႇ iPad ၼၼ်ႉ SwiftUI မီး `NavigationSplitView` ဢၼ်တေၸွႆႈႁႂ်ႈႁဝ်းမီး **Sidebar** ၽၢႆႇသၢႆႉ လႄႈ **Detail View** ၽၢႆႇၶႂႃ ပဵင်းၵၼ် (မိူၼ်ၼင်ႇ App Mail ဢမ်ႇၼၼ် Settings ၼိူဝ် iPad) ယဝ်ႉ။

---

### **4. Example Code: Adaptive Layout Demo**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်လႅၵ်ႈလၢႆႈ Layout ႁင်းမၼ်း မိူဝ်ႈၼႃႈၸေႃးလႅၵ်ႈ တင်းယႂ်ႇမၼ်းၶႃႈ:

```swift
import SwiftUI

struct AdaptiveLayoutView: View {
    // 1. တူၺ်း Size Class ၶွင်ၼႃႈၸေႃး
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        NavigationStack {
            Group {
                if sizeClass == .compact {
                    // လၢႆးၼႄတႃႇ iPhone (Vertical)
                    VStack(spacing: 20) {
                        CourseCardView(title: "SwiftUI", color: .blue)
                        CourseCardView(title: "Flutter", color: .orange)
                    }
                    .padding()
                } else {
                    // လၢႆးၼႄတႃႇ iPad (Horizontal)
                    HStack(spacing: 20) {
                        CourseCardView(title: "SwiftUI", color: .blue)
                        CourseCardView(title: "Flutter", color: .orange)
                    }
                    .padding()
                }
            }
            .navigationTitle("TMK Adaptive")
        }
    }
}

struct CourseCardView: View {
    let title: String
    let color: Color
    
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(maxWidth: .infinity)
            .frame(height: 200)
            .cornerRadius(20)
            .overlay(Text(title).font(.largeTitle).bold().foregroundColor(.white))
    }
}

```

---

### **5. Split View & Multitasking**

ၼိူဝ် iPad ၼၼ်ႉ User ၸၢင်ႈၸႂ်ႉ **Split View** (ပိုတ်ႇ App 2 ဢၼ်ပဵင်းၵၼ်) ယဝ်ႉ။
မိူဝ်ႈ User လႅၵ်ႈ တင်းယႂ်ႇၼႃႈၸေႃးၼႆ Size Class တေလုၵ်ႉတီႈ `.regular` ၵႂႃႇပဵၼ် `.compact` ႁင်းမၼ်းလႄႈ UI ႁဝ်းၵေႃႈတေလႅၵ်ႈၸွမ်းၵမ်းလဵဝ်ၶႃႈ။

---

### **Summary**

| Feature | Explanation (Shan)                                               |
| --- |------------------------------------------------------------------|
| **Compact Class** | တူဝ်တႅၼ်းၼႃႈၸေႃးၵႅပ်ႈ (Portrait iPhone) — ၸႂ်ႉ VStack။           |
| **Regular Class** | တူဝ်တႅၼ်းၼႃႈၸေႃးၵႂၢင်ႈ (iPad / Landscape iPhone) — ၸႂ်ႉ HStack။  |
| **@Environment** | ၶိူင်ႈမိုဝ်းတႃႇ "ထၢမ်" ၶေႃႈမုၼ်းတီႈ System။                      |
| **Split View Support** | ၵၢၼ်ႁဵတ်းႁႂ်ႈ App ႁၢင်ႈလီ မိူဝ်ႈ User ၸႂ်ႉလၢႆလၢႆ App ၼိူဝ် iPad။ |

---