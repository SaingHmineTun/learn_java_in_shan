## Lesson 11: Dictionaries (Part 1): Mapping Keys to Shan Characters (Hash Maps)

**Dictionary** ၼႆႉ ပဵၼ်ၵၢၼ်ၵဵပ်းၶေႃႈမုၼ်း ဢၼ်မီးလွင်ႈၵူပ်ႉၵၼ်ဝႆႉပဵၼ် **Key** လႄႈ **Value** ယဝ်ႉ။ မၼ်းမိူၼ်ၼင်ႇ ပပ်ႉသႅၼ်သမ်ႇ (Dictionary) ဢၼ်ႁဝ်းႁႃၸိုဝ်ႈ (Key) သေ ၸင်ႇလႆႈႁူႉတီႈပွင်ႇ (Value) မၼ်းၼၼ်ႉၶႃႈယဝ်ႉ။

တွၼ်ႈတႃႇ Keyboard ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉမၼ်း မၵ်းမၼ်ႈဝႃႈ "ပေႃးၼဵၵ်ႉ Key `u` (Key) ႁႂ်ႈမၼ်းဢွၵ်ႇတူဝ် `ၵ` (Value)" ၼႆယဝ်ႉ။



### 1. ၵၢၼ်သၢင်ႈ Dictionary (Creating Dictionaries)
ႁဝ်းၸႂ်ႉ `[Key: Value]` တွၼ်ႈတႃႇမၵ်းမၼ်ႈၶႃႈ။

```swift
// 1. သၢင်ႈလူၺ်ႈ Type Inference
var layoutMap = ["u": "ၵ", ",": "ၶ", "i": "င"]

// 2. သၢင်ႈ Dictionary ပဝ်ႇဝႆႉ (Empty)
var studentGrades: [String: Double] = [:]
```

---

### 2. ၵၢၼ်ဢဝ်ၸႂ်ႉ ၶေႃႈမုၼ်း (Accessing Values)
မိူဝ်ႈႁဝ်းဢဝ် Key မႃးႁႃ Value ၼၼ်ႉ Swift တေထုတ်ႇဢွၵ်ႇမႃးပဵၼ် **Optional** (ဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်း Module 5) ယဝ်ႉ။ ၵွပ်ႈဝႃႈ Key ဢၼ်ႁဝ်းႁႃၼၼ်ႉ မၼ်းၸၢင်ႈမီး ဢမ်ႇၼၼ် ဢမ်ႇမီးၵေႃႈလႆႈယဝ်ႉ။

```swift
let character = layoutMap["s"] 
print(character) // Output: Optional("သ")
```

---

### 3. ၵၢၼ်ထႅမ်လႄႈၵၢၼ်လႅၵ်ႈလၢႆႈ (Modifying)
*   **Update:** ႁဝ်းၸႂ်ႉ Key တူဝ်ၵဝ်ႇသေ လႅၵ်ႈၵႃႈၶၼ်မၼ်းလႆႈၵမ်းသိုဝ်ႈ။
*   **Add:** ပေႃးသႂ်ႇ Key ဢၼ်ပႆႇမီး မၼ်းတေထႅမ်ပဵၼ်တူဝ်မႂ်ႇပၼ်ယဝ်ႉ။

```swift
var tmkApp = ["version": "1.0", "author": "Sai Mao"]

// လႅၵ်ႈ version
tmkApp["version"] = "1.1"

// ထႅမ်ၶေႃႈမုၼ်းမႂ်ႇ
tmkApp["location"] = "Tachileik"
```

---

### 4. ၵၢၼ်လူတ်းဢွၵ်ႇ (Removing)
ႁဝ်းၸႂ်ႉၵၢၼ်ပၼ်ၵႃႈၶၼ်ပဵၼ် `nil` တွၼ်ႈတႃႇဢဝ် Key ၼၼ်ႉဢွၵ်ႇပႅတ်ႈၶႃႈ။

```swift
tmkApp["author"] = nil // "author" တေထုၵ်ႇဢဝ်ဢွၵ်ႇ
// ဢမ်ႇၼၼ် ၸႂ်ႉ .removeValue(forKey: "author")
```

---

### 5. Properties ဢၼ်လွင်ႈယႂ်ႇ
*   **`.keys`**: ဢဝ်သဵၼ်ႈမၢႆ Key တင်းသဵင်ႈ။
*   **`.values`**: ဢဝ်သဵၼ်ႈမၢႆ Value တင်းသဵင်ႈ။
*   **`.count`**: ဢၢၼ်ႇတူဝ်ၼမ်ဢၼ်ၵူပ်ႉၵၼ်ဝႆႉ။

```swift
for key in layoutMap.keys {
    print("Key ၼိူဝ် Keyboard ပဵၼ်: \(key)")
}
```

---