

## **Module 8 | Lesson 61: Steppers and Sliders for Numerical Input**

### **1. Stepper**

`Stepper` ပဵၼ်ပုမ်ႇ **[-]** လႄႈ **[+]** တႃႇလႅၵ်ႈလၢႆႈတူဝ်ၼပ်ႉၸွမ်းၼင်ႇ "ၶၼ်" (Step) ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉယဝ်ႉ။

* **Usage:** ၸႂ်ႉတႃႇတူဝ်ၼပ်ႉဢၼ်ဢေႇ (မိူၼ်ၼင်ႇ ၼပ်ႉႁူဝ်ၵူၼ်း)။
* **Precision:** မၼ်းတႅတ်ႈတေႃးၼႃႇ ယွၼ်ႉမၼ်းတေလိူၵ်ႈ ၶိုၼ်ႈ/လူင်း ဢၼ်ယဝ်ႉဢၼ်။

### **2. Slider**

`Slider` ပဵၼ်သဵၼ်ႈယၢဝ်း ဢၼ်ႁႂ်ႈ User လၢၵ်ႈ (Drag) တႃႇလိူၵ်ႈၵႃႈၶၼ်ယဝ်ႉ။

* **Usage:** ၸႂ်ႉတႃႇၵႃႈၶၼ်ဢၼ်မီးၼမ် (မိူၼ်ၼင်ႇ တင်းလႅင်းၼႃႈၸေႃး (Brightness)၊ သဵင် ဢမ်ႇၼၼ် ၼမ်ႉၼၵ်း)။
* **Experience:** မၼ်းပၼ်လွင်ႈတူင်ႉၼိုင်ဢၼ်ၼိမ် (Smooth) ၵူၺ်းၵႃႈ လွင်ႈတႅတ်ႈတေႃးတေဢေႇလိူဝ် Stepper ၶႃႈ။

---

### **3. Example Code: Order & Volume Settings**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၸႂ်ႉတင်းသွင်မဵဝ်းၼႂ်း Form ၶႃႈ:

```swift
import SwiftUI

struct NumberInputView: View {
    @State private var quantity: Int = 1
    @State private var volume: Double = 50.0
    
    var body: some View {
        NavigationStack {
            Form {
                // 1. Stepper တႃႇၼပ်ႉၶၼ်ၶွင်
                Section(header: Text("Order Quantity")) {
                    Stepper("Items: \(quantity)", value: $quantity, in: 1...20)
                    // in: 1...20 မၵ်းမၼ်ႈဝႃႈ ႁႂ်ႈလိူၵ်ႈလႆႈ 1 တေႃႇ 20 ၵူၺ်း
                }
                
                // 2. Slider တႃႇမၵ်းမၼ်ႈသဵင်
                Section(header: Text("App Volume")) {
                    VStack {
                        HStack {
                            Image(systemName: "speaker.fill")
                            Slider(value: $volume, in: 0...100, step: 1.0)
                            Image(systemName: "speaker.wave.3.fill")
                        }
                        Text("Current Volume: \(Int(volume))%")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("TMK Controls")
        }
    }
}

```

---

### **4. Key Comparison (လွင်ႈပႅၵ်ႇပိူင် ၶႃသွင်ဢၼ်)**

| Control | Best For (Shan) | Range Control |
| --- | --- | --- |
| **Stepper** | ၶေႃႈမုၼ်းဢေႇ ဢၼ်လူဝ်ႇတႅတ်ႈတေႃး (Discrete values)။ | `in: 1...10` |
| **Slider** | ၶေႃႈမုၼ်းၼမ် ဢၼ်လူဝ်ႇလွင်ႈၼိမ် (Continuous values)။ | `in: 0...100` |

---

### **Tip: Custom Step**

ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈလႆႈဝႃႈ ႁႂ်ႈမၼ်း လိူၵ်ႈၶိုၼ်ႈ ၵမ်းလၢႆလၢႆတူဝ် (မိူၼ်ၼင်ႇ လိူၵ်ႈၶိုၼ်ႈ ၵမ်း 5 တူဝ်) လူၺ်ႈ ၸႂ်ႉတိုဝ်း `step` ယဝ်ႉ:

```swift
Stepper("Point: \(score)", value: $score, step: 5)

```

---