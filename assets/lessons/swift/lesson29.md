## Lesson 29: Closures (Part 1): Syntax and Type Inference

**Closure** ၼႆႉ တႄႇတႄႉမၼ်းၵေႃႈပဵၼ် Function ၼင်ႇၵဝ်ႇ၊ ၵူၺ်းၵႃႈမၼ်းမီးလၢႆးတႅမ်ႈ ဢၼ် "သႅၼ်ႈသႂ်" (Clean) လႄႈ ၵိုၵ်းၵပ်း (Compact) လိူဝ်ယဝ်ႉ။ ႁဝ်းၸၢင်ႈတႅမ်ႈ Closure သေသူင်ႇၵႂႃႇပဵၼ် Parameter ၼႂ်း Function တၢင်ႇဢၼ်လႆႈငၢႆႈငၢႆႈၶႃႈ။

### 1. Closure Expression Syntax
လၢႆးတႅမ်ႈ Closure တေယူႇၼႂ်းဝူင်းလႅမ်ႈ `{}` တင်းသဵင်ႈသေ ၸႂ်ႉၶေႃႈၵႂၢမ်း **`in`** တွၼ်ႈတႃႇၸႅၵ်ႇ Argument လႄႈ Code ႁဝ်းၶႃႈ။

```swift
{ (parameters) -> returnType in
    statements
}
```

> **တူဝ်ယၢင်ႇ:** Closure ဢၼ်ႁပ်ႉ String သေဢမ်ႇ Return သင်။
```swift
let sayHello = { (name: String) in
    print("Hello, \(name)!")
}

sayHello("Sai Mao")
```

---

### 2. Type Inference (ၵၢၼ်လႅတ်းၽၢႆၶေႃ Swift)
Swift ၼႆႉမီးၼမ်ႉၵတ်ႉတႄႉတႄႉ။ ပေႃးႁဝ်းသူင်ႇ Closure ၵႂႃႇၼႂ်း Function ဢၼ်မၵ်းမၼ်ႈ Type ဝႆႉယဝ်ႉၼၼ်ႉ ႁဝ်း**ဢမ်ႇလူဝ်ႇတႅမ်ႈ** Parameter Type လႄႈ Return Type မၼ်းၵေႃႈလႆႈၶႃႈ။

```swift
let keys = ["ၵ", "ၶ", "င"]

// လၢႆးတႅမ်ႈတဵမ်တဵမ်
let sortedKeys = keys.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

// လၢႆးတႅမ်ႈလူၺ်ႈ Type Inference (Swift ႁူႉဝႃႈပဵၼ် String လႄႈ Bool ယဝ်ႉ)
let sortedShort = keys.sorted(by: { s1, s2 in s1 > s2 })
```

---

### 3. Implicit Returns
သင်ဝႃႈၼႂ်း Closure ႁဝ်းမီး Code ၵူၺ်း **ထႅဝ်လဵဝ်** (Single-expression)၊ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈၶေႃႈၵႂၢမ်း `return` ၵေႃႈလႆႈၶႃႈ။ Swift တေဢဝ်ၵႃႈၶၼ်ၼၼ်ႉ Return ပၼ်ၵမ်းသိုဝ်ႈယဝ်ႉ။

```swift
let reversed = keys.sorted(by: { s1, s2 in s1 > s2 }) 
// မၢၼ်ႇမိူၼ်ၵၼ်တင်းမီး return
```

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: Closures တေလႆႈၸႂ်ႉၼမ်တႄႉတႄႉ မိူဝ်ႈႁဝ်းၸတ်းၵၢၼ် Array (မိူၼ်ၼင်ႇ map, filter) တွၼ်ႈတႃႇပိၼ်ႇတူဝ်လိၵ်ႈ။ မၼ်းၸွႆးႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇသၢင်ႈ Function မႂ်ႇၵူႈတီႈ ၵူၺ်းၵႃႈ တႅမ်ႈ Logic ဝႆႉၼႂ်းထႅဝ်လဵဝ်ၵေႃႈ ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ။"**

---