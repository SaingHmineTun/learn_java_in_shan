## Lesson 5: Strings and Unicode: The Architecture of Shan Script Support

ၼႂ်းလိၵ်ႈ Swift ၼႆႉ `String` ဢမ်ႇၸႂ်ႈၵူၺ်းပဵၼ် တူဝ်လိၵ်ႈဢၼ်မႃးသိုပ်ႇၵၼ်။ 
မၼ်းပဵၼ် **Unicode-compliant** ဢၼ်ၶႅမ်ႉသေပိူၼ်ႈ ၼႂ်းလေႃးၵ Programming ယဝ်ႉ။ 
တွၼ်ႈတႃႇလိၵ်ႈတႆးႁဝ်း ဢၼ်မီးလွင်ႈ "သႂ်ႇမၢႆသဵင်" (Tone marks) လႄႈ "တူဝ်ထႅပ်း" (Subjoined characters) ၼၼ်ႉ Swift ၸွႆးလႆႈလီတႄႉတႄႉ။

### 1. Characters and Strings
*   **Character:** တူဝ်လိၵ်ႈတူဝ်လဵဝ် (မၵ်းမၼ်ႈလူၺ်ႈ `""` ၵူၺ်းၵႃႈလူဝ်ႇသႂ်ႇ Type Annotation)။
*   **String:** တူဝ်လိၵ်ႈလၢႆလၢႆတူဝ် ဢၼ်မႃးသိုပ်ႇၵၼ်။

```swift
let shanLetter: Character = "တ"
let shanWord = "တႆး" // Swift ႁူႉဝႃႈပဵၼ် String ႁင်းၵူၺ်း
```

### 2. Extended Grapheme Clusters
ဢၼ်ၼႆႉပဵၼ်ဢၼ်လွင်ႈယႂ်ႇပိူၼ်ႈ တွၼ်ႈတႃႇလိၵ်ႈတႆးၶႃႈ။ ၼႂ်း Swift ၼႆႉ တူဝ်လိၵ်ႈ 1 တူဝ် ဢၼ်ႁဝ်းႁၼ် (User-perceived character) ၼၼ်ႉ မၼ်းၸၢင်ႈမီး Unicode Scalar လၢႆလၢႆဢၼ်မႃးႁူမ်ႈၵၼ်။

> **တူဝ်ယၢင်ႇ:** တူဝ်ဝႃႈ "တႆး"
> *   မၼ်းမီး တူဝ်လိၵ်ႈ 3 တူဝ် ဢၼ်ႁဝ်းႁၼ် (တ + ႆ + း)။
> *   Swift တေဢၢၼ်ႇဝႃႈ `count` မၼ်းပဵၼ် 3 တူဝ်ယဝ်ႉ။



---

### 3. String Properties & Methods
*   **.count:** ၸႂ်ႉဢၢၼ်ႇတူဝ်လိၵ်ႈ (Swift တေဢၢၼ်ႇၸွမ်း "တူဝ်လိၵ်ႈဢၼ်ႁဝ်းႁၼ်")။
*   **.isEmpty:** ၵူတ်ႇထတ်းဝႃႈ String ပဝ်ႇဝႆႉႁႃႉ။
*   **.lowercased() / .uppercased():** လႅၵ်ႈတူဝ်လဵၵ်ႉ/တူဝ်ယႂ်ႇ (တွၼ်ႈတႃႇလိၵ်ႈဢင်းၵိတ်း)။

```swift
let myLanguage = "လိၵ်ႈတႆး"
print(myLanguage.count) // ဢွၵ်ႇမႃး 8 (လ + ိ + ၵ + ် + ႈ + တ + ႆ + း)
```

### 4. Multiline String Literals
ပေႃးႁဝ်းလူဝ်ႇတႅမ်ႈလိၵ်ႈလၢႆလၢႆထႅဝ်ၼႆ (မိူၼ်ၼင်ႇ တႅမ်ႈၶေႃႈၵႂၢမ်း Help ၼႂ်း Keyboard) ႁဝ်းၸႂ်ႉ `"""` (Double quotes 3 တူဝ်) ယဝ်ႉ။

```swift
let keyboardHelp = """
ၼႆႉပဵၼ် Keyboard တႆး TMK ယဝ်ႉ။
ၸႂ်ႉလႆႈ 4 Layouts:
1. Standard
2. Namkhone
"""
```

---