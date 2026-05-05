## Lesson 24: Checking API Availability: The #available Block

မိူဝ်ႈႁဝ်းသၢင်ႈ App ၼၼ်ႉ ၵမ်းမၢင်ႁဝ်းၶႂ်ႈၸႂ်ႉ Feature မႂ်ႇမႂ်ႇ (မိူၼ်ၼင်ႇ Apple Intelligence ဢမ်ႇၼၼ် UI မႂ်ႇၼႂ်း iOS 17/18)။ ၵူၺ်းၵႃႈ သင်ဝႃႈ User ႁဝ်း ယပ်းၸႂ်ႉ iOS တူဝ်ၵဝ်ႇယူႇၼႆ App ႁဝ်းၸၢင်ႈ Crash ၵႂႃႇလႆႈ။ ၼႂ်း Swift ႁဝ်းၸႂ်ႉ **`#available`** တွၼ်ႈတႃႇၵူတ်ႇထတ်းဝႃႈ "ၶိူင်ႈ User ၼၼ်ႉ ႁပ်ႉဢဝ် Feature ၼႆႉလႆႈယူႇႁႃႉ" ၼႆယဝ်ႉ။

### 1. Syntax ၵၢၼ်ၸႂ်ႉတိုဝ်း
ႁဝ်းၸႂ်ႉ `#available` ၼႂ်း `if` ဢမ်ႇၼၼ် `guard` statement ၶႃႈ။

```swift
if #available(iOS 17.0, macOS 14.0, *) {
    // ၸႂ်ႉ API ဢၼ်မီးၼႂ်း iOS 17 ၶိုၼ်းၼိူဝ်လႆႈယဝ်ႉ
    print("ၸႂ်ႉ Feature မႂ်ႇလႆႈၶႃႈ")
} else {
    // ပၼ် User ၸႂ်ႉလၢႆးၵဝ်ႇ တႅၼ်းဝႆႉ
    print("ၸႂ်ႉလၢႆးၵဝ်ႇ တွၼ်ႈတႃႇ iOS တူဝ်ၵဝ်ႇ")
}
```
*   **`*` (Asterisk):** မၢႆထိုင်ဝႃႈ "တႃႇ Platform တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ watchOS, tvOS) ၼၼ်ႉ ႁႂ်ႈႁပ်ႉဢဝ် Version ဢၼ်ဢေႇသုတ်း (Minimum version) ဢၼ်မၵ်းမၼ်ႈဝႆႉၼၼ်ႉၵမ်းသိုဝ်ႈၶႃႈ"။

---

### 2. ၵၢၼ်ၸႂ်ႉ `@available` ၸွမ်း Function
သင်ဝႃႈႁဝ်းတႅမ်ႈ Function ဢၼ်မီး Feature မႂ်ႇမႂ်ႇဝႆႉတင်းဢၼ် ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈဝႆႉတီႈႁူဝ် Function မၼ်းလႆႈၶႃႈ။

```swift
@available(iOS 18.0, *)
func startNewAIKeyboardFeature() {
    // Code တွၼ်ႈတႃႇ iOS 18 ၵူၺ်း
}
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ?
1.  **Safety:** ႁႄႉၵင်ႈ App Crash မိူဝ်ႈႁွင်ႉၸႂ်ႉ API ဢၼ်ဢမ်ႇပႆႇမီးၼႂ်း iOS တူဝ်ၵဝ်ႇ။
2.  **Modernization:** ပၼ်ႁဝ်းၸႂ်ႉ Feature မႂ်ႇပိူၼ်ႈလႆႈ ၼႂ်းၶိူင်ႈဢၼ်ႁပ်ႉလႆႈ၊ သေယဝ်ႉ ယັງသိုပ်ႇပၼ် User ၶိူင်ႈၵဝ်ႇၸႂ်ႉ App ႁဝ်းလႆႈယူႇ (Backward Compatibility)။

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: Apple တေမီးၵၢၼ်လႅၵ်ႈလၢႆႈ `KeyboardExtension` API ယူႇၵူႈပွၵ်ႈ။ ပေႃးႁဝ်းၶႂ်ႈၸႂ်ႉ 'Haptic Feedback' မဵဝ်းမႂ်ႇ ဢၼ်တိုၵ်ႉမီးၼႂ်း iOS ၼိုင်ႈ Version ၼႆ ႁဝ်းလူဝ်ႇၸႂ်ႉ `#available` ၵူတ်ႇထတ်းဢွၼ်တၢင်း ၸင်ႇသင်ႇႁႂ်ႈ Keyboard ႁဝ်းသၼ်ႇ (Vibrate) ၼၼ်ႉယဝ်ႉ။"**

---