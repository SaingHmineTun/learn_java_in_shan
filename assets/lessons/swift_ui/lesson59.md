
## **Module 8 | Lesson 59: Pickers: Segmented, Menu, and Navigation Styles**

### **1. Picker Styles ဢၼ်လွင်ႈယႂ်ႇ**

ၼႂ်း SwiftUI ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈႁၢင်ႈၽၢင် Picker လူၺ်ႈၵၢၼ်ၸႂ်ႉ `.pickerStyle()` ၶႃႈ:

* **NavigationLink Style:** မိူဝ်ႈၼဵၵ်းယဝ်ႉ မၼ်းတေပိုတ်ႇၵႂႃႇၼႃႈမႂ်ႇ တႃႇႁႂ်ႈလိူၵ်ႈ (သၢင်ႇထုၵ်ႇတႃႇ Options ဢၼ်ၼမ်)။
* **Menu Style:** မိူဝ်ႈၼဵၵ်းယဝ်ႉ မၼ်းတေမီး Menu ၸွၵ်ႉဢွၵ်ႇမႃး (Pop-up) တီႈၼၼ်ႈၵမ်းလဵဝ်။
* **Segmented Style:** ၼႄ Options တင်းမူတ်း ပဵၼ်ပုမ်ႇၼိူဝ်သဵၼ်ႈလဵဝ်ၵၼ် (သၢင်ႇထုၵ်ႇတႃႇ 2-3 Options)။
* **Wheel Style:** ပဵၼ်ႁၢင်ႈၵွင်ႇပၼ်ႇ (မိူၼ်ၼင်ႇၵၢၼ်လိူၵ်ႈၶိင်ႇယၢမ်း)။

---

### **2. Example Code: Multi-Style Form**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၸႂ်ႉ Picker လၢႆလၢႆပိူင်ၼႂ်း Form လဵဝ်ၵၼ်ၶႃႈ:

```swift
import SwiftUI

struct PickerExampleView: View {
    @State private var selectedLevel = "Beginner"
    @State private var selectedTheme = "System"
    @State private var selectedGender = "Male"
    
    let levels = ["Beginner", "Intermediate", "Advanced", "Expert"]
    let themes = ["Light", "Dark", "System"]
    let genders = ["Male", "Female", "Other"]
    
    var body: some View {
        NavigationStack {
            Form {
                // 1. NavigationLink Style (လူဝ်ႇယူႇၼႂ်း NavigationStack)
                Section(header: Text("Course Level")) {
                    Picker("Select Level", selection: $selectedLevel) {
                        ForEach(levels, id: \.self) { level in
                            Text(level)
                        }
                    }
                    .pickerStyle(.navigationLink) 
                }
                
                // 2. Segmented Style (တူၺ်းငၢႆႈ တႅပ်းတတ်းဝႆး)
                Section(header: Text("App Appearance")) {
                    Picker("Theme", selection: $selectedTheme) {
                        ForEach(themes, id: \.self) { theme in
                            Text(theme)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                // 3. Menu Style (သႅတ်းလႅတ်း ဢမ်ႇၵိၼ်တီႈ)
                Section(header: Text("Personal Detail")) {
                    Picker("Gender", selection: $selectedGender) {
                        ForEach(genders, id: \.self) { gender in
                            Text(gender)
                        }
                    }
                    .pickerStyle(.menu)
                }
            }
            .navigationTitle("TMK Preferences")
        }
    }
}

```

---

### **3. Summary of Styles**

| Style | Best For (Shan) | User Experience                        |
| --- | --- |----------------------------------------|
| **.segmented** | Options ဢေႇ (2-4 ဢၼ်) | တူၺ်းႁၼ်လႆႈတင်းမူတ်း ၼဵၵ်းဝႆး။         |
| **.menu** | တႃႇမၵ်းမၼ်ႈၵႃႈၶၼ်ထမ်ႇမတႃႇ | သႅတ်းလႅတ်း ဢမ်ႇႁဵတ်းႁႂ်ႈ Form ယၢဝ်း။   |
| **.navigationLink** | Options ၼမ် (5 ဢၼ်ၶိုၼ်ႈၵႂႃႇ) | မီးၼႃႈၸေႃးတႅတ်ႈၼႅတ်ႈ တႃႇလိူၵ်ႈလႆႈငၢႆႈ။ |
| **.wheel** | လိူၵ်ႈဝၼ်းတီႈ ဢမ်ႇၼၼ် တူဝ်ၼပ်ႉ | ပၼ်ႇလိူၵ်ႈလႆႈမူၼ်းလီ။                  |

---