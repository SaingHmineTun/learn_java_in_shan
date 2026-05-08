

## **Module 4 | Lesson 27: Safe Area Insets and Keyboard Avoidance**

### **1. Safe Area ပဵၼ်သင်?**

**Safe Area** ပဵၼ်ပိုၼ်ႉတီႈၼႂ်းၼႃႈၸေႃး ဢၼ်လွတ်ႈၽေး လုၵ်ႉတီႈ Hardware ၶွင် iPhone ယဝ်ႉ။

* **Top:** တွၼ်ႈတႂ်ႈ Notch ဢမ်ႇၼၼ် StatusBar။
* **Bottom:** တွၼ်ႈၼိူဝ်သဵၼ်ႈပတ်ႉ (Home Indicator)။
* SwiftUI တေၸတ်းၵၢၼ်ႁႂ်ႈ Content ႁဝ်း ႁႂ်ႈယူႇၼႂ်း Safe Area ႁင်းမၼ်း (Default) ယဝ်ႉ။

### **2. Ignoring Safe Area**

မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈႁႂ်ႈ "သီပိုၼ်ႉလင်" (Background Color) ဢမ်ႇၼၼ် "ႁၢင်ႈ" (Image) ႁဝ်းလႅၼ်ႈၵႂႃႇတဵမ်ၼႃႈၸေႃး (Edge-to-edge) ၼႆ ႁဝ်းတေလႆႈၸႂ်ႉ Modifier:

* `.ignoresSafeArea()`: ႁဵတ်းႁႂ်ႈ View ၼၼ်ႉ လႅၼ်ႈၵႂႃႇတဵမ်ထိုင်ၶွပ်ႇၼႃႈၸေႃးတင်းမူတ်းယဝ်ႉ။

### **3. Keyboard Avoidance**

ၼႂ်း SwiftUI ဢွၵ်ႇမႂ်ႇၼႆႉ မၼ်းၵတ်ႉၶႅၼ်ႇမႃးတေႉ။ မိူဝ်ႈ User ၼဵၵ်း `TextField` သေ Keyboard ဢွၵ်ႇမႃးၼၼ်ႉ 
SwiftUI တေ "ယုၵ်ႉ" UI ႁဝ်းၶိုၼ်ႈႁင်းမၼ်း (Automatic) ႁႂ်ႈ Keyboard ဢမ်ႇၵႂႃႇတပ်ႉ TextField ၼၼ်ႉၶႃႈယဝ်ႉ။

---

### **4. Example Code: Safe Area & Keyboard Demo**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သႂ်ႇ Background ႁႂ်ႈတဵမ်ၼႃႈจอ လႄႈ ၵၢၼ်ၸတ်း TextField ၶႃႈ:

```swift
import SwiftUI

struct SafeAreaLessonView: View {
    @State private var comment: String = ""
    
    var body: some View {
        ZStack {
            // 1. သီပိုၼ်ႉလင် တဵမ်ၼႃႈၸေႃး (Edge-to-Edge)
            Color.blue.opacity(0.2)
                .ignoresSafeArea() 
            
            VStack {
                Text("Safe Area & Keyboard")
                    .font(.largeTitle).bold()
                    .padding()
                
                Spacer()
                
                // Content ဢၼ်တေယူႇၼႂ်း Safe Area ႁင်းမၼ်း
                VStack(spacing: 20) {
                    Text("တႅမ်ႈၶေႃႈၵႂၢမ်းတွပ်ႇလၢတ်ႈ (Comment):")
                    
                    TextField("တႅမ်ႈတီႈၼႆႉ...", text: $comment)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                }
                .padding()
                
                // 2. တွၼ်ႈ Bottom Safe Area
                // SwiftUI တေၸတ်းၵၢၼ် ဢမ်ႇႁႂ်ႈ TextField တပ်ႉ Keyboard ႁင်းမၼ်း
            }
        }
    }
}

```

---

### **Summary (သူးပ်းႁူဝ်တွၼ်ႈႁဵၼ်း)**

| Feature | Explanation (Shan) |
| --- | --- |
| **Safe Area** | ပိုၼ်ႉတီႈဢၼ် Hardware ဢမ်ႇၵႂႃႇတပ်ႉ (Notch/Bottom Bar)။ |
| **.ignoresSafeArea()** | ၸႂ်ႉတႃႇပၼ်သုၼ်ႇႁႂ်ႈ View လႅၼ်ႈၵႂႃႇတဵမ်ၼႃႈจอ (ၵမ်ႉၼမ်ၸႂ်ႉတႃႇ Background)။ |
| **Keyboard Avoidance** | ၵၢၼ်ယုၵ်ႉ UI ႁင်းမၼ်း မိူဝ်ႈ Keyboard ဢွၵ်ႇမႃး တႃႇဢမ်ႇႁႂ်ႈတပ်ႉ Input။ |
| **Edge-to-Edge UI** | ၵၢၼ်ၸတ်း UI ႁႂ်ႈႁၢင်ႈလီ ၸွမ်းၼင်ႇ Design ၶွင် iOS ဢၼ်မႂ်ႇသုတ်း။ |

---

**ပွင်ႇၸႅင်ႈလွင်ႈၵၢၼ်ၸတ်း Safe Area ယဝ်ႉႁႃႉၶႃႈ?**
တွၼ်ႈၼႃႈ ႁဝ်းတေၵႂႃႇ Lesson 28: **"GeometryReader: Building Proportion-based Layouts"** တႃႇႁဵၼ်းလၢႆးၸတ်း UI ႁႂ်ႈမၼ်း "ပဵင်းၵၼ်" ၸွမ်းၶၼၢတ်ႉၼႃႈจอ (Proportion) ၶႃႈ။

မီးတွၼ်ႈလႂ် ၶႂ်ႈထၢမ်ထႅမ်ၵဵဝ်ႇလူၺ်ႈတွၼ်ႈၼႆႉယူႇႁႃႉၶႃႈ?