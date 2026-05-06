## Lesson 13: Sets: Optimizing for Unique Data and High-Speed Membership Testing

**Set** ၼႆႉ မိူၼ်ၵၼ်တင်း Array ၵူၺ်းၵႃႈမၼ်းမီးလွင်ႈပႅၵ်ႇပိူင်ႈၵၼ်ယူႇ 2 ပိူင်:
1.  **Unique Items:** မၼ်းတေဢမ်ႇပၼ်မီးၶေႃႈမုၼ်း ဢၼ်မိူၼ်ၵၼ် (Duplicates) ၼႂ်း Set လႆႈ။
2.  **Unordered:** မၼ်းဢမ်ႇမီးလွင်ႈၶပ်ႉထႅဝ် (Index) မိူၼ် Array၊ မၼ်းၵဵပ်းဝႆႉၸိူင်ႉႁိုဝ်ၵေႃႈလႆႈ။

### 1. ၵၢၼ်သၢင်ႈ Set
သင်ၶႂ်ႈၸႂ်ႉ Set ၸိုင် တေလႆႈမၵ်းမၼ်ႈပၼ် Type မၼ်း ၸႂ်ႉတိုဝ်း `Set<Type>` ၼႆၶႃႈ။ (ၵွပ်ႈဝႃႈလၢႆးတႅမ်ႈမၼ်းမိူၼ် Array လႄႈ လူဝ်ႇလႆႈတႅမ်ႈ Type ဝႆႉၸႅင်ႈလႅင်းၶႃႈ)။

```swift
// 1. သၢင်ႈ Set လူၺ်ႈမီးၶေႃႈမုၼ်းဝႆႉ
var shanVowels: Set = ["ႃ", "ီ", "ူ", "ႃ"] 

print(shanVowels) 
// Output: ["ႃ", "ီ", "ူ"] (တူဝ် "ႃ" ဢၼ်မိူၼ်ၵၼ်ၼၼ်ႉ တေႁၢႆၵႂႃႇ 1 တူဝ်)

// 2. သၢင်ႈ Set တူဝ်ပဝ်ႇဝႆႉ
var usedKeys = Set<Character>()
```

---

### 2. Membership Testing (ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈมูล)
ဢၼ်ၼႆႉပဵၼ် "ၼမ်ႉၵတ်ႉ" သုတ်ၶွင် Set ၶႃႈ။ ပေႃးႁဝ်းၸႂ်ႉ Array သေႁႃၶေႃႈမုၼ်းၼႆ မၼ်းတေလႆႈၵႂႃႇဢၢၼ်ႇတူၺ်း ႁူဝ်ထိုင်ႁၢင် လႄႈ တေႁဵတ်းႁႂ်ႈ ပရူဝ်ႇၵရမ်ႇႁဝ်း ထိူင်းယဝ်ႉ။ 
ၵူၺ်းၵႃႈ Set တေႁႃႁၼ်လႆႈၵမ်းသိုဝ်ႈ (Lightning Fast) ဢမ်ႇဝႃႈမၼ်းတေမီးၶေႃႈမုၼ်း ၼမ်ၵႃႈႁိုဝ်ၵေႃႈယဝ်ႉ။

```swift
let forbiddenKeys: Set = ["!", "@", "#", "$"]

if forbiddenKeys.contains("@") {
    print("Key ၼႆႉ ဢမ်ႇပၼ်ၸႂ်ႉၶႃႈ")
}
```

---

### 3. Set Operations (ၵၢၼ်ႁူမ်ႈလႄႈၸႅၵ်ႇ Set)
Set မီးလၢႆးၼပ်ႉသွၼ်ႇပၢႆးဝူၼ်ႉ (Set Theory) ဢၼ်ၶႅၼ်ႇတႄႉတႄႉ:

*   **Intersection:** ဢဝ်တူဝ်ဢၼ်မီး "မိူၼ်ၵၼ်" တင်းသွင်ၽၢႆႇၵူၺ်း။
*   **Symmetric Difference:** ဢဝ်တူဝ်ဢၼ် "ဢမ်ႇမိူၼ်ၵၼ်" ၼႂ်းသွင်ၽၢႆႇ။
*   **Union:** ဢဝ်ၶေႃႈမုၼ်းတင်းသွင်ၽၢႆႇမႃးႁူမ်ႈၵၼ် (တူဝ်မိူၼ်ၵၼ်ၵိုတ်း 1 တူဝ်)။
*   **Subtracting:** ဢဝ်ၶေႃႈမုၼ်းၼႂ်း Set ၼိုင်ႈဢၼ် လူတ်းဢွၵ်ႇပႅတ်ႈ ဢၼ်မီးဝႆႉၼႂ်း Set ထႅင်ႈၼိုင်ႈဢၼ်။



```swift
let setA: Set = [1, 2, 3]
let setB: Set = [3, 4, 5]

let combined = setA.union(setB)            // [1, 2, 3, 4, 5]
let common = setA.intersection(setB)      // [3]
let different = setA.subtracting(setB)    // [1, 2]
```

---