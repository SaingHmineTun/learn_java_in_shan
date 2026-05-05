## Lesson 27: Function Types: Using Functions as Variables and Arguments

ၼႂ်း Swift ၼႆႉ Function ပဵၼ် **First-class citizens**။ မၢႆထိုင်ဝႃႈ ႁဝ်းၸၢင်ႈဢဝ် Function သႂ်ႇၼႂ်း Variable လႆႈ၊ သူင်ႇၵႂႃႇပဵၼ် Parameter လႆႈ၊ ဢမ်ႇၼၼ် သူင်ႇမၼ်းဢွၵ်ႇမႃး (Return) ၼႂ်း Function တၢင်ႇဢၼ်ၵေႃႈလႆႈယဝ်ႉ။

### 1. Function Types (မဵဝ်းၶေႃႈมูลၶေႃ Function)
ၵူႈ Function မီး Type ႁင်းၵူၺ်းမၼ်း၊ ဢၼ်မၵ်းမၼ်ႈလူၺ်ႈ **Parameter types** လႄႈ **Return type** ယဝ်ႉ။

```swift
func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}
// Function ၼႆႉမီး Type ပဵၼ်: (Int, Int) -> Int
```

---

### 2. Functions as Variables (ဢဝ် Function သႂ်ႇၼႂ်း Variable)
ႁဝ်းၸၢင်ႈၵဵပ်း Function ဝႆႉၼႂ်း Variable သေ ႁွင်ႉၸႂ်ႉမၼ်းမိူဝ်ႈလႂ်ၵေႃႈလႆႈၶႃႈ။

```swift
var mathFunction: (Int, Int) -> Int = addNumbers
print("Result: \(mathFunction(2, 3))") // Output: 5
```

---

### 3. Functions as Parameters (သူင်ႇ Function ၶဝ်ႈၵႂႃႇ)
ဢၼ်ၼႆႉမီးႁႅင်းတႄႉတႄႉၶႃႈ။ ႁဝ်းၸၢင်ႈသၢင်ႈ Function ဢၼ်ႁပ်ႉဢဝ် "ၵၢၼ်ႁဵတ်း" (Logic) ဢၼ်ပႅၵ်ႇပႅင်ႇၵၼ်ၶဝ်ႈၵႂႃႇလႆႈ။

```swift
func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("The result is: \(mathFunc(a, b))")
}

printMathResult(addNumbers, 10, 5) // Output: 15
```

---

### 4. Returning Functions (သူင်ႇ Function ဢွၵ်ႇမႃး)
ႁဝ်းၸၢင်ႈၸႂ်ႉ Function တိုင်ႈတႅၼ်း (Return) ပၼ် Function ထႅင်ႈတူဝ်ၼိုင်ႈ ၸွမ်းၼင်ႇသၢႆငၢႆလႆႈၶႃႈ။

```swift
func stepForward(input: Int) -> Int { return input + 1 }
func stepBackward(input: Int) -> Int { return input - 1 }

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

let move = chooseStepFunction(backward: true)
print(move(10)) // Output: 9
```

---

### 5. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ႁဝ်းၸၢင်ႈသူင်ႇ Function ၵႂႃႇပဵၼ် Parameter မိူဝ်ႈလူဝ်ႇႁႂ်ႈ Button ၼိုင်ႈဢၼ် ႁဵတ်းၵၢၼ်ဢၼ်ပႅၵ်ႇပႅင်ႇၵၼ်။ မိူၼ်ၼင်ႇ Button ၼိုင်ႈတူဝ် ပေႃးၼိပ်ႉ (Short press) ႁႂ်ႈႁဵတ်း Function ၼိုင်ႈမဵဝ်း၊ ပေႃးၼိပ်ႉၵိုတ်း (Long press) ႁႂ်ႈႁဵတ်းထႅင်ႈ Function ၼိုင်ႈမဵဝ်းၼၼ်ႉယဝ်ႉ။"**

---