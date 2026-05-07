

## **Module 2 | Project 2: Interactive Unit Converter & Calculator**

### **1. ယိူင်းဢၢၼ်း (Goal)**
သၢင်ႈ App တႃႇလႅၵ်ႈလၢႆႈၶၼ် (Unit Converter) မိူၼ်ၼင်ႇ လႅၵ်ႈတင်းလိူတ်ႇမႆႈ (Temperature: Celsius to Fahrenheit) ဢမ်ႇၼၼ် လႅၵ်ႈတၢင်းယၢဝ်း (Length) ဢၼ်မီး:
*   တီႈတႅမ်ႈတူဝ်ၼပ်ႉ (TextField for Input).
*   တီႈလိူၵ်ႈလၢႆးလႅၵ်ႈ (Picker/Segmented Control).i
*   ၵၢၼ်ၼပ်ႉဢၢၼ်ႇဢွၵ်ႇမႃးၵမ်းလဵဝ် (Live Calculation using Computed Properties).
*   ႁၢင်ႈၽၢင်ဢၼ်လႅၵ်ႈလၢႆႈၸွမ်းသီ (Dynamic Styling & Animations).

### **2. Structure & Logic**
1.  **State:** ၵဵပ်းၵႃႈ `inputAmount` (String) လႄႈ `selectedUnit` (Enum).
2.  **Logic:** ၸႂ်ႉ Computed Property တႃႇပၼ်ႇ (Convert) ၵႃႈမၼ်းဢွၵ်ႇမႃး။
3.  **UI:** ၸႂ်ႉ `TextField`, `Picker`, လႄႈ `Haptic Feedback` မိူဝ်ႈမီးၵၢၼ်လႅၵ်ႈလၢႆႈ။

---

### **3. Solution Code (တူဝ်ယၢင်ႇ Code)**

```swift
import SwiftUI

struct UnitConverterApp: View {
    // 1. State Variables
    @State private var inputAmount: String = ""
    @State private var isCelsiusToFahrenheit: Bool = true
    @State private var showResult: Bool = false
    
    // 2. Computed Property တႃႇၼပ်ႉဢၢၼ်ႇ (Logic)
    var convertedAmount: Double {
        let amount = Double(inputAmount) ?? 0
        if isCelsiusToFahrenheit {
            return (amount * 9/5) + 32
        } else {
            return (amount - 32) * 5/9
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                // Input Section
                VStack(alignment: .leading) {
                    Text("တႅမ်ႈတူဝ်ၼပ်ႉ (Enter Value)")
                        .font(.caption).foregroundStyle(.secondary)
                    
                    TextField("0.0", text: $inputAmount)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(.roundedBorder)
                        .font(.largeTitle)
                        .onChange(of: inputAmount) {
                            withAnimation { showResult = !inputAmount.isEmpty }
                        }
                }
                .padding()

                // Unit Selector
                Picker("Direction", selection: $isCelsiusToFahrenheit) {
                    Text("°C to °F").tag(true)
                    Text("°F to °C").tag(false)
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                .sensoryFeedback(.selection, trigger: isCelsiusToFahrenheit)

                // Result Display (Conditional Rendering + Animation)
                if showResult {
                    VStack {
                        Text("ၽွၼ်းလႅၵ်ႈလၢႆႈ (Result):")
                            .font(.headline)
                        
                        Text("\(convertedAmount, specifier: "%.2f")")
                            .font(.system(size: 60, weight: .bold))
                            .foregroundStyle(isCelsiusToFahrenheit ? .orange : .blue)
                            .transition(.scale.combined(with: .opacity))
                        
                        Text(isCelsiusToFahrenheit ? "Degrees Fahrenheit" : "Degrees Celsius")
                            .font(.subheadline).foregroundStyle(.secondary)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.secondary.opacity(0.1))
                    .cornerRadius(20)
                }

                Spacer()
                
                // Reset Button
                Button("Reset All") {
                    withAnimation {
                        inputAmount = ""
                        showResult = false
                    }
                }
                .buttonStyle(.bordered)
                .tint(.red)
            }
            .padding()
            .navigationTitle("TMK Converter")
        }
    }
}

#Preview {
    UnitConverterApp()
}
```

---

### **Summary**

| Feature | SwiftUI Concept Used (Shan)                                             |
| :--- |:------------------------------------------------------------------------|
| **Data Input** | `TextField` တင်း Two-way binding (`$`) တႃႇႁပ်ႉၵႃႈၶၼ်တီႈ ၽူႈၸႂ်ႉတိုဝ်း။  |
| **Live Calculation** | `Computed Property` တႃႇၼပ်ႉဢၢၼ်ႇၵမ်းလဵဝ် မိူဝ်ႈ Data မီးလွင်ႈလႅၵ်ႈလၢႆႊ။ |
| **Selection** | `Picker` တႃႇလိူၵ်ႈလၢႆးလႅၵ်ႈ (Logic toggle)။                             |
| **Haptics** | `.sensoryFeedback` တႃႇပၼ်လွင်ႈတုမ်ႉတွပ်ႇမိူဝ်ႈလိူၵ်ႈ Unit။              |
| **Visual Effects** | `withAnimation` လႄႈ `.transition` တႃႇၼႄ Result ႁႂ်ႈၶႅမ်ႉ။               |

---