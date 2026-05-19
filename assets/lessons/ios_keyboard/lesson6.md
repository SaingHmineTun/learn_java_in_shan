## တွၼ်ႈသွၼ် 6: **The "Next Keyboard" Protocol**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလွင်ႈ "ၵၢၼ်လႅၵ်ႈ Keyboard" (Switching Keyboards) ယဝ်ႉ။ 
ဢၼ်ၼႆႉပဵၼ် ပၵ်းပိူင်လွင်ႈယႂ်ႇ (Strict Requirement) ၶွင် Apple ယဝ်ႉ။ 
သင် Keyboard ၸဝ်ႈၵဝ်ႇ ဢမ်ႇမီးလၢႆးပၼ် User လႅၵ်ႈၵႂႃႇၸႂ်ႉ Keyboard တၢင်ႇတူဝ် (မိူၼ်ၼင်ႇ Emoji ဢမ်ႇၼၼ် System English Keyboard) ၼႆ Apple တေဢမ်ႇပၼ် App ၸဝ်ႈၵဝ်ႇၶဝ်ႈ App Store ယဝ်ႉ။

---

### 1. တူဝ်ၵုမ်းထိင်း (The Protocol)

ၼႂ်း `UIInputViewController` ၼၼ်ႉ မၼ်းမီး Function ဢၼ်ၸိုဝ်ႈဝႃႈ `advanceToNextInputMode()` ၼႆယဝ်ႉ။
မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Function ၼႆႉ၊ iOS တေပၼ်ႇလႅၵ်ႈ Keyboard ၵႂႃႇၸူးတၢင်ႇတူဝ် ဢၼ် User သႂ်ႇဝႆႉၼၼ်ႉယဝ်ႉ။

### 2. Implementation: ၵၢၼ်သႂ်ႇ Globe Key ၼႂ်း SwiftUI

ႁဝ်းတေလႆႈသၢင်ႈ Button ဢၼ်မီးႁူပ်ႉ "လူၵ်ႈၵမ်ႇၾႃႇ" (Globe) သေ ႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ် ၸိူင်ႉၼႆယဝ်ႉ:

**KeyboardView.swift**

```swift
import SwiftUI

struct KeyboardView: View {
    var controller: UIInputViewController
    
    var body: some View {
        HStack {
            // 1. တူဝ်လႅၵ်ႈ Keyboard (The Next Keyboard Button)
            Button(action: {
                controller.advanceToNextInputMode()
            }) {
                Image(systemName: "globe")
                    .font(.title2)
                    .frame(width: 40, height: 40)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(5)
            }
            
            Spacer()
            
            // 2. တူဝ်လႅၵ်ႈ Layout ၼႂ်းတူဝ် TMK Keyboard ႁဝ်း (Internal Switch)
            Button(action: {
                switchInternalLayout()
            }) {
                Text("EN / တႆး")
                    .font(.caption)
                    .padding(8)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(5)
            }
        }
        .padding(5)
    }
    
    func switchInternalLayout() {
        // Code တႃႇလႅၵ်ႈဝူင်ႈၵၢင် English, Myanmar, Shan
        // ဢၼ်ၼႆႉႁဝ်းတေၸႂ်ႉ App Group (UserDefaults) ၸိူင်ႉၼင်ႇ Lesson 5
    }
}

```

---

### 3. လၢႆးၼဵၵ်ႉႁိုင် (Special Handling for Long Press)

Apple မၵ်းမၼ်ႈဝႆႉဝႃႈ သင် User "ၼဵၵ်ႉႁိုင်" (Long Press) တီႈ Globe Key ၼၼ်ႉ၊ မၼ်းတေလႆႈၼႄ "Keyboard Picker List" (သဵၼ်ႈမၢႆ Keyboard တင်းသဵင်ႈ) ၼႆယဝ်ႉ။ 
တွၼ်ႈတႃႇႁဵတ်းၼႆႉ ႁဝ်းတေလႆႈၸႂ်ႉ Code ၼႂ်း UIKit ဢိတ်းၼိုင်ႈ တႃႇ Handle တူဝ် Button ႁဝ်းၶႃႈ။
တွၼ်ႈတႃႇတေႁဵတ်းႁႂ်ႈ Globe Key ႁဝ်း ႁဵတ်းၵၢၼ်လႆႈၸွမ်း ၼဵၵ်ႉပွၵ်ႈလဵဝ် (Single Tap) လႄႈ ၼဵၵ်ႉႁိုင်ႁိုင် ႁႂ်ႈသဵၼ်ႈမၢႆ Keyboard ၼႄမႃး (Long Press) ၼၼ်ႉ
ႁဝ်းတေလႆႈၸႂ်ႉ `UIButton` ၶွင် UIKit မႃးႁဵတ်းပဵၼ် `UIViewRepresentable` ပုၼ်ႈတႃႇ SwiftUI ယဝ်ႉ။


#### 1. သၢင်ႈ File မႂ်ႇ: `GlobeButton.swift`

(ပဵၼ်တူဝ် Bridge ဝူင်ႈၵၢင် SwiftUI လႄႈ UIKit တႃႇ Handle Long Press)

```swift
import SwiftUI
import UIKit

struct GlobeButton: UIViewRepresentable {
    var controller: UIInputViewController

    func makeUIView(context: Context) -> UIButton {
        let button = UIButton(type: .system)
        
        // သႂ်ႇႁူပ်ႉ Globe
        let image = UIImage(systemName: "globe")
        button.setImage(image, for: .normal)
        button.tintColor = .label
        
        // 🛠️ ဢၼ်ၼႆႉပဵၼ် လွင်ႈယႂ်ႇသုတ်း (Special Handling for Long Press)
        // မၼ်းတေႁွင်ႉၸႂ်ႉ System Keyboard Picker ႁႂ်ႈၵမ်းလဵဝ်
        button.addTarget(controller, action: #selector(controller.handleInputModeList(from:with:)), for: .allTouchEvents)
        
        return button
    }

    func updateUIView(_ uiView: UIButton, context: Context) {
        // ဢမ်ႇလူဝ်ႇ Update သင်
    }
}

```

---

#### 2. မႄး (Update) `KeyboardView.swift`

(ဢဝ် `GlobeButton` ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉ မႃးသႂ်ႇၼႂ်း Layout)

```swift
import SwiftUI

struct KeyboardView: View {
    var controller: UIInputViewController
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack(alignment: .bottom) {
                // 1. ၸႂ်ႉ GlobeButton တႅၼ်း SwiftUI Button ဢၼ်ၵဝ်ႇ
                GlobeButton(controller: controller)
                    .frame(width: 45, height: 45)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                Spacer()
                
                // 2. တူဝ်လႅၵ်ႈ Layout ၼႂ်းတူဝ် (Internal Layout Switcher)
                Button(action: {
                    // Logic တႃႇလႅၵ်ႈ EN / Myanmar / Shan
                }) {
                    Text("တႆး")
                        .font(.headline)
                        .frame(width: 60, height: 45)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                // 3. Backspace Button
                Button(action: {
                    controller.textDocumentProxy.deleteBackward()
                }) {
                    Image(systemName: "delete.left")
                        .frame(width: 50, height: 45)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 10)
        }
        .background(Color.clear)
    }
}

```

---


### 4. Why this is key for TMK Keyboard?

ယွၼ်ႉ TMK Keyboard ၸဝ်ႈၵဝ်ႇ မီး 3 ၽႃႇသႃႇ:

* **External Switch:** ၸႂ်ႉ `advanceToNextInputMode()` တႃႇလႅၵ်ႈၵႂႃႇ Keyboard တၢင်ႇတူဝ် (မိူၼ်ၼင်ႇ Gboard, Apple Keyboard)။
* **Internal Switch:** ၸဝ်ႈၵဝ်ႇတေလႆႈတႅမ်ႈ Button တၢင်ႇတူဝ် ၼႂ်း SwiftUI တႃႇလႅၵ်ႈၵႂႃႇမႃး ၼႂ်းၵႄႈ **English <-> Myanmar <-> Shan** ၼႂ်းတူဝ် TMK၊ ဢၼ်ၼႆႉ ဢမ်ႇလူဝ်ႇႁွင်ႉ `advanceToNextInputMode()` ၶႃႈ။

---