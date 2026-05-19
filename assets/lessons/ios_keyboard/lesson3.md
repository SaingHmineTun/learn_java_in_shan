## တွၼ်ႈသွၼ် 3: **The UIHostingController Bridge**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းႁူႉ လၢႆးဢဝ် **SwiftUI** မႃးၸႂ်ႉၼႂ်း Keyboard ႁဝ်းယဝ်ႉ။ 
ယွၼ်ႉဝႃႈ iOS Keyboard Extension ၼၼ်ႉ မၼ်းတႄႇဝႆႉလူၺ်ႈ `UIInputViewController` (ဢၼ်ပဵၼ် UIKit) ၼႆလႄႈ 
သင်ႁဝ်းၶႂ်ႈၸႂ်ႉ SwiftUI ဢၼ်ပဵၼ်ပိူင်မႂ်ႇၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉ **UIHostingController** ပဵၼ်တူဝ်သိုပ်ႇ (Bridge) မၼ်းယဝ်ႉ။

### 1. UIHostingController ၼႆႉ ပွင်ႇဝႃႈသင်?

**UIHostingController** ၼႆႉ မိူၼ်ၼင်ႇ "ၵွၵ်း" (Container) ဢၼ်ၼိုင်ႈ ဢၼ်ၼႂ်းမၼ်းႁဝ်းၸၢင်ႈသႂ်ႇ SwiftUI View လႆႈယဝ်ႉ။ 
မၼ်းတေႁဵတ်းႁႂ်ႈ Code ဢၼ်ပဵၼ် SwiftUI ၼၼ်ႉ ၵႂႃႇႁဵတ်းၵၢၼ်လႆႈၼႂ်း UIKit ၼၼ်ႉယဝ်ႉ။

### 2. Creating the SwiftUI Keyboard View

ၵမ်းၼႆႉ ႁဝ်းတေၵႂႃႇသၢင်ႈ SwiftUI View ဢၼ်တေပဵၼ်ၼႃႈတႃ Keyboard ႁဝ်းယဝ်ႉ:

1. ၼိၵ်ႉသွင်ၼိဝ်ႉ (Right-click) တီႈ Folder **TMKKeyboardExtension**။
2. လိူၵ်ႈ **New File...** သေလိူၵ်ႈ **SwiftUI View**။
3. သႂ်ႇၸိုဝ်ႈဝႃႈ `KeyboardViewModel.swift`။
4. တႅမ်ႈ Code ပွတ်းပွတ်း တႃႇ Test တူၺ်း:
5. 
```swift
import SwiftUI

struct KeyboardView: View {
    // ✅ Add this line to accept the controller
    var controller: UIInputViewController
    
    var body: some View {
        VStack {
            Text("TMK Keyboard")
                .padding()
            
            HStack {
                // Button to switch to the next system keyboard (Globe)
                Button(action: {
                    controller.advanceToNextInputMode()
                }) {
                    Image(systemName: "globe")
                        .font(.title)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                
                // Example Shan Key
                Button(action: {
                    controller.textDocumentProxy.insertText("ၵ")
                }) {
                    Text("ၵ")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}


#Preview {
    KeyboardView(controller: UIInputViewController())
}


```



### 3. Implementing the Bridge in KeyboardViewController

ၵႂႃႇတီႈၾၢႆႇ `KeyboardViewController.swift` ဢၼ် Xcode သၢင်ႈပၼ်ဝႆႉၼၼ်ႉ သေ လႅၵ်ႈ Code မၼ်းၸိူင်ႉၼႆ:

```swift
import UIKit
import SwiftUI

class KeyboardViewController: UIInputViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let keyboardView = KeyboardView(controller: self)
        
        let hostingController = UIHostingController(rootView: keyboardView)
        
        addChild(hostingController)
        view.addSubview(hostingController.view)
        
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hostingController.view.leftAnchor.constraint(equalTo: view.leftAnchor),
            hostingController.view.rightAnchor.constraint(equalTo: view.rightAnchor),
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        hostingController.didMove(toParent: self)
        hostingController.view.backgroundColor = .clear
    }
    
    
    override func textWillChange(_ textInput: UITextInput?) { }
    override func textDidChange(_ textInput: UITextInput?) { }
}


```

### 4. Why this is Important for TMK Project?

ယွၼ်ႉဝႃႈ TMK Keyboard ႁဝ်း တေမီး 3 Layouts (English, Myanmar, Shan) လႄႈ သင်ႁဝ်းၸႂ်ႉ SwiftUI ၼႆ:

* ႁဝ်းၸၢင်ႈလႅၵ်ႈၼႃႈတႃ (Layout) လႆႈငၢႆႈငၢႆႈ လူၺ်ႈၵၢၼ်ၸႂ်ႉ `@State` ဢမ်ႇၼၼ် `@ObservedObject`။
* လွင်ႈႁဵတ်း Buttons ႁႂ်ႈမၼ်းတဵမ်ၵူႈ Screen (iPhone ဢွၼ်ႇ/ယႂ်ႇ) ၼၼ်ႉ SwiftUI ႁဵတ်းပၼ်လႆႈဝႆးလိူဝ် UIKit ယဝ်ႉ။

---