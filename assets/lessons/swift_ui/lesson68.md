

## **Module 9 | Lesson 68: Accessibility (A11y)**

ၵၢၼ်ႁဵတ်း App ႁႂ်ႈ "ၵူၼ်းၵူႈၵေႃႉ" ၸႂ်ႉလႆႈ (Accessibility) ၼၼ်ႉ ပဵၼ်ႁူဝ်ၶေႃႈလွင်ႈယႂ်ႇၶွင် Apple ဢၼ်ၼိုင်ႈယဝ်ႉ။
App မီးဝႆႉ Accessibility လီလီ တႃႇႁပ်ႉၵၢၼ်ၵမ်ႉထႅမ် (Featured) တီႈၼိူဝ် App Store လႆႈငၢႆႈလိူဝ်ၵဝ်ႇယဝ်ႉ။

### **1. VoiceOver (ၵၢၼ်ဢၢၼ်ႇသဵင်ပၼ်)**

ၵူၼ်းဢၼ်တႃဢမ်ႇႁၼ်လီ ၶဝ်တေၸႂ်ႉ **VoiceOver** တႃႇထွမ်ႇသဵင်ဝႃႈ ၼိူဝ်ၼႃႈၸေႃး App ႁဝ်းမီးသင်ဝႆႉ လၢႆလၢႆၼႆယဝ်ႉ။

* **Accessibility Label:** ႁဝ်းလူဝ်ႇသႂ်ႇၶေႃႈၵႂၢမ်းသပ်းလႅင်းပၼ် Image ဢမ်ႇၼၼ် Button ဢၼ်ဢမ်ႇမီးလိၵ်ႈၼၼ်ႉယဝ်ႉ။

```swift
Image(systemName: "plus.circle.fill")
    .accessibilityLabel("Add New Task") // VoiceOver တေဢၢၼ်ႇဝႃႈ "Add New Task Button"

```

### **2. Dynamic Type (ၵၢၼ်လႅၵ်ႈသႅၼ်းလိၵ်ႈ)**

User မၢင်ၵေႃႉၵႆႉမူၼ်ႉမႄး Font ၼႂ်း iPhone ၶဝ်ႁႂ်ႈ "ယႂ်ႇ" တေႉတေႉ။ သင်ႁဝ်းမၵ်းမၼ်ႈ Font Size ဝႆႉတႅတ်ႈတေႃး (မိူၼ်ၼင်ႇ `.frame(height: 20)`)ၼႆ လိၵ်ႈၼၼ်ႉတေတတ်းပႅတ်ႈ (Clipped) ယဝ်ႉ။

* **Solution:** ၸႂ်ႉ Style ဢၼ် Apple မၵ်းမၼ်ႈဝႆႉ မိူၼ်ၼင်ႇ `.font(.title)` ဢမ်ႇၼၼ် `.font(.body)` တႅၼ်းၵၢၼ်သႂ်ႇတူဝ်ၼပ်ႉ (Fixed size)။

### **3. Color Contrast (လွင်ႈၸႅင်ႈလႅင်းၶွင်သီ)**

ယႃႇပေၸႂ်ႉသီလိၵ်ႈ ဢၼ်မိူၼ်တင်းသီပိုၼ်ႉ (Background) ၼမ်ပူၼ်ႉတီႈ။ ႁဝ်းထုၵ်ႇလီ သႂ်ႇႁႂ်ႈမၼ်း မီးလွင်ႈၸႅင်ႈလႅင်း ႁႂ်ႈၵူၼ်းသၢႆတႃဢမ်ႇလီ လူလႆႈငၢႆႈငၢႆႈယဝ်ႉ။

---

### **4. Example Code: Accessible Task Row**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ View ႁႂ်ႈ Support Accessibility တီႈၼႆႈလႄႈ:

```swift
struct TaskRow: View {
    var taskTitle: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
                .foregroundColor(.green)
                // 1. သပ်းလႅင်းႁၢင်ႈ ႁႂ်ႈ VoiceOver ဢၢၼ်ႇလႆႈ
                .accessibilityLabel("Completed Task Icon")
            
            Text(taskTitle)
                // 2. ၸႂ်ႉ Dynamic Type ႁႂ်ႈလိၵ်ႈယႂ်ႇၸွမ်း System
                .font(.body) 
            
            Spacer()
        }
        // 3. ႁူမ်ႈတင်း Row ႁႂ်ႈ VoiceOver ဢၢၼ်ႇပဵၼ်သဵၼ်ႈလဵဝ်ၵၼ်
        .accessibilityElement(children: .combine)
        .accessibilityHint("Double tap to view task details")
    }
}

```

---

### **Summary**

| Feature | Swift Implementation (Shan)                                             |
| --- |-------------------------------------------------------------------------|
| **VoiceOver** | ၸႂ်ႉ `.accessibilityLabel()` တႃႇသပ်းလႅင်း Visual Elements။              |
| **Dynamic Type** | ၸႂ်ႉ Standard Fonts (.title, .body) တႅၼ်း Fixed Sizes။                  |
| **Hints** | ၸႂ်ႉ `.accessibilityHint()` တႃႇသင်ႇဝႃႈ User လူဝ်ႇသိုပ်ႇႁဵတ်းသင်။        |
| **Traits** | ၸႂ်ႉ `.accessibilityAddTraits(.isButton)` တႃႇႁႂ်ႈ System ႁူႉဝႃႈမၼ်းပဵၼ်ပုမ်ႇ။ |

---