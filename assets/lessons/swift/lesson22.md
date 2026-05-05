## Lesson 22: Control Transfer Statements: break, continue, and fallthrough

**Control Transfer Statements** မၢႆထိုင် ၶေႃႈၵႂၢမ်းဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ "ပိၼ်ႈလႅၵ်ႈ" လၢႆးႁဵတ်းၵၢၼ်ၶေႃ Code ႁဝ်း ႁႂ်ႈမၼ်းၶၢမ်ႈၵႂႃႇတီႈၼိုင်ႈ ဢမ်ႇၼၼ် ၵိုတ်းၵႂႃႇတီႈၼိုင်ႈယဝ်ႉ။

### 1. continue (ၶၢမ်ႈၵႂႃႇတူဝ်ထႅင်ႈတူဝ်ၼိုင်ႈ)
`continue` တေလၢတ်ႈၼႄ Loop ဝႃႈ "ၵိုတ်းၵၢၼ်ႁဵတ်းတီႈတူဝ်ၼႆႉၵမ်းလဵဝ် သေၶၢမ်ႈၵႂႃႇတႄႇႁဵတ်းတူဝ်ထႅင်ႈတူဝ်ၼိုင်ႈ (Next iteration) လႆႈယဝ်ႉ"။



```swift
let keys = ["ၵ", "ၶ", "!", "င"]

for key in keys {
    if key == "!" {
        continue // ပေႃးႁၼ် "!" ႁႂ်ႈၶၢမ်ႈၵႂႃႇ ဢမ်ႇလူဝ်ႇ Print
    }
    print("Processing key: \(key)")
}
// Output: ၵ, ၶ, င
```

---

### 2. break (ၵိုတ်းၵၢၼ်ႁဵတ်းၵမ်းလဵဝ်)
`break` တေသင်ႇႁႂ်ႈ Loop ဢမ်ႇၼၼ် Switch **ၵိုတ်းၵၢၼ်ႁဵတ်းၵမ်းလဵဝ်** သေ ဢွၵ်ႇၵႂႃႇၽၢႆႇၼွၵ်ႈ Scope ၼၼ်ႉယဝ်ႉ။

```swift
for i in 1...100 {
    if i == 5 {
        break // ပေႃးထိုင် 5 ႁႂ်ႈၵိုတ်း Loop တင်းသဵင်ႈၵမ်းလဵဝ်
    }
    print(i)
}
// Output: 1, 2, 3, 4
```

---

### 3. fallthrough (လူင်းၵႂႃႇ Case ၽၢႆႇတႂ်ႈ)
ၼႂ်း Swift ၼၼ်ႉ `switch` တေဢမ်ႇလူင်းၵႂႃႇ Case ၽၢႆႇတႂ်ႈႁင်းၵူၺ်း။ ပေႃးႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ် Case တူဝ်ၽၢႆႇတႂ်ႈမၼ်းၸွမ်း ႁဝ်းလူဝ်ႇၸႂ်ႉ `fallthrough` ၶႃႈ။

```swift
let level = 1
var message = "You are at level \(level)."

switch level {
case 1:
    message += " (Beginner)"
    fallthrough // ႁႂ်ႈလူင်းၵႂႃႇႁဵတ်း Case 2 ၸွမ်း
case 2:
    message += " - Keep going!"
default:
    break
}
print(message) 
// Output: You are at level 1. (Beginner) - Keep going!
```

---

### 4. Labeled Statements (ၵၢၼ်တင်ႈၸိုဝ်ႈပၼ် Loop)
ပေႃးႁဝ်းမီး Loop ၸၼ်ႉသႂ်ႇၸၼ်ႉ (Nested Loops) ႁဝ်းၸၢင်ႈတင်ႈၸိုဝ်ႈပၼ်မၼ်း တွၼ်ႈတႃႇသင်ႇ `break` ဢမ်ႇၼၼ် `continue` ၸူး Loop တူဝ်ဢၼ်ႁဝ်းၶႂ်ႈလႆႈတႄႇတႄႇၼၼ်ႉၶႃႈ။

```swift
rowLoop: for row in 1...3 {
    columnLoop: for col in 1...3 {
        if row == 2 {
            break rowLoop // ၵိုတ်းတင်း Loop ၽၢႆႇၼွၵ်ႈၵမ်းလဵဝ်
        }
    }
}
```

---

### 5. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸႂ်ႉ `continue` မိူဝ်ႈလူဝ်ႇဢၢၼ်ႇတူၺ်းတူဝ်လိၵ်ႈ တွၼ်ႈတႃႇၶၢမ်ႈတူဝ်ဢၼ်ဢမ်ႇၵဵဝ်ႇၶေႃ။ ၸႂ်ႉ `break` မိူဝ်ႈႁဝ်းႁႃတူဝ်လိၵ်ႈဢၼ် User ၼိပ်ႉႁၼ်ယဝ်ႉ (Search found) တွၼ်ႈတႃႇႁၵ်ႉသႃ Performance ၶႃႈ။"**

---