## Lesson 28: Nested Functions and Scope Management

ၼႂ်း Swift ႁဝ်းၸၢင်ႈတႅမ်ႈ **Function သႂ်ႇၼႂ်း Function** (Nested Functions) လႆႈၶႃႈ။ လၢႆးၼႆႉတေၸွႆးႁႂ်ႈႁဝ်း "သိမ်း" (Hide) Logic မၢင်ပိူင် ဢၼ်ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈၵူၼ်းၽၢႆႇၼွၵ်ႈႁၼ် ဢမ်ႇၼၼ် ဢမ်ႇၶႂ်ႈႁႂ်ႈမၼ်းၵႂႃႇယုင်ႈၸူး Code တၢင်ႇတီႈၼၼ်ႉယဝ်ႉ။

### 1. ၵၢၼ်သၢင်ႈ Nested Function
Function တူဝ်ဢၼ်ယူႇၽၢႆႇၼႂ်းၼၼ်ႉ တေၸၢင်ႈၸႂ်ႉလႆႈ (Accessed) ယူႇၼႂ်း Scope ၶေႃ Function တူဝ်ၽၢႆႇၼွၵ်ႈမၼ်းၵူၺ်းၶႃႈ။

```swift
func keyboardSetup() {
    // Nested Function
    func loadKeys() {
        print("Loading Shan characters...")
    }
    
    func setupUI() {
        print("Setting up keyboard buttons...")
    }

    // ႁွင်ႉၸႂ်ႉၼႂ်းၼႆႉၵူၺ်း
    loadKeys()
    setupUI()
}

keyboardSetup()
// loadKeys() // Error: ႁွင်ႉတီႈၼႆႉဢမ်ႇလႆႈ ၵွပ်ႈမၼ်းယူႇၼႂ်း Scope keyboardSetup
```

---

### 2. Scope Management (ၵၢၼ်ၵုမ်းထိင်း Scope)
Nested Function မီးၼမ်ႉၵတ်ႉထႅင်ႈပိူင်ၼိုင်ႈ ပဵၼ်လွင်ႈ **Capturing Values**။ မၼ်းၸၢင်ႈၸႂ်ႉ Variable ဢၼ်မၵ်းမၼ်ႈဝႆႉၼႂ်း Function တူဝ်ၽၢႆႇၼွၵ်ႈမၼ်းလႆႈ ၵမ်းသိုဝ်ႈၶႃႈ။



```swift
func makeIncrementer(amount: Int) -> () -> Int {
    var runningTotal = 0
    
    // Nested Function ဢၼ် Capture 'amount' လႄႈ 'runningTotal' ဝႆႉ
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}

let incrementByTwo = makeIncrementer(amount: 2)
print(incrementByTwo()) // Output: 2
print(incrementByTwo()) // Output: 4
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Nested Functions?
1.  **Encapsulation:** သိမ်း Code ဢၼ်ပဵၼ် Helper Logic ဢမ်ႇႁႂ်ႈမၼ်းၵႂႃႇယုင်ႈၼွၵ်ႈ Scope။
2.  **Organization:** ၸႅၵ်ႇ Code ဢၼ်ယၢဝ်းယၢဝ်း ႁႂ်ႈပဵၼ်တွၼ်ႈဢွၼ်ႇတွၼ်ႈဢီႈ ၼႂ်း Function လဵဝ်ၵၼ်။
3.  **Security:** ႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈ Function တၢင်ႇဢၼ် မႃးႁွင်ႉၸႂ်ႉ Logic ဢၼ်ႁဝ်းဢမ်ႇပႆႇႁႅၼ်းဝႆႉ။

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: မိူဝ်ႈႁဝ်းမီး Function လူင် `func updateKeyboard()`၊ ႁဝ်းၸၢင်ႈတႅမ်ႈ Nested Functions မိူၼ်ၼင်ႇ `updateColors()` လႄႈ `updateLabels()` ဝႆႉၽၢႆႇၼႂ်းမၼ်း။ မၼ်းတေႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူငၢႆႈ လႄႈ ၸတ်းၵၢၼ်လႆႈငၢႆႈလိူဝ်ၵဝ်ႇယဝ်ႉ။"**

---