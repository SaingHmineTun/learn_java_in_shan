## Lesson 72: Strict Concurrency Checking: Understanding Swift 6 Compiler Warnings

ၼႂ်း Swift 6, Compiler တေမီးပိူင် **"Strict Concurrency Checking"**။ မၼ်းမၢႆထိုင်ဝႃႈ Swift တေဢမ်ႇပၼ်ႁႂ်ႈမီး Data Race ၵတ်ႉၶိုၼ်းလႆႈယဝ်ႉ။ သင် Code ၸၢႆးမၢဝ်းမီးတီႈဢၼ်ဢမ်ႇလွတ်ႈၽေး၊ Compiler တေပၼ် **Warning** ဢမ်ႇၼၼ် **Error** ၵမ်းလဵဝ်ၶႃႈ။

### 1. ပၼ်ႁႃဢၼ်ၵႆႉထူပ်း: Passing Non-Sendable Types
သင်ႁဝ်းၶတ်းၸႂ်တေသူင်ႇ Class ထမ်ႇမတႃႇ (ဢၼ်ဢမ်ႇၸႂ်ႈ Sendable) ၶၢမ်ႈ Task ဢမ်ႇၼၼ် ၶၢမ်ႈ Actor၊ Swift 6 တေထဵင်ၵမ်းလဵဝ်။

```swift
class KeyboardState { // ဢမ်ႇၸႂ်ႈ Sendable
    var lastKey: String = ""
}

func logKey(state: KeyboardState) async {
    Task {
        // ❌ Error: Passing non-sendable parameter 'state' to a concurrent task
        print(state.lastKey)
    }
}
```

### 2. လၢႆးၵႄႈပၼ်ႁႃ (Common Fixes)
1.  **လႅၵ်ႈပဵၼ် Struct:** သင်ဢမ်ႇလူဝ်ႇၸႂ်ႉ Class တႄႇတႄႉ၊ လႅၵ်ႈပဵၼ် Struct ႁႂ်ႈမၼ်းပဵၼ် Sendable ႁင်းၵူၺ်း။
2.  **သႂ်ႇ Sendable Protocol:** သင်ပဵၼ် Class ဢၼ် Immutable (မႄးဢမ်ႇလႆႈ)၊ သႂ်ႇ `final` လႄႈ `Sendable` ၶဝ်ႈၵႂႃႇ။
3.  **ၸႂ်ႉ Actor:** သင်လူဝ်ႇမႄးၶေႃႈมูล (Mutable State)၊ လႅၵ်ႈ Class ၼၼ်ႉႁႂ်ႈပဵၼ် `actor`။

### 3. @preconcurrency
သင်ႁဝ်းလူဝ်ႇၸႂ်ႉ Library ၵဝ်ႇဢၼ်ယင်းဢမ်ႇပႆႇ Update ၸူး Swift 6, ၸၢႆးမၢဝ်းၸၢင်ႈၸႂ်ႉ Keyword **`@preconcurrency import`** တွၼ်ႈတႃႇပိတ်း Warning ၸိူဝ်းၼၼ်ႉဝႆႉၸူဝ်ႈၶၢဝ်းၶႃႈ။

```swift
@preconcurrency import OldKeyboardLibrary
```

---

### 4. ၵွပ်ႈသင်လူဝ်ႇ Strict Checking?
1.  **Safety Guarantee:** ၼႆႉပဵၼ်ပွၵ်ႈၵမ်းဢွၼ်တၢင်း ဢၼ် Compiler တေႁႄႉၵင်ႈ Data Race ပၼ် 100% (Data Race Safety)။
2.  **Future-Proof:** ႁဵတ်းႁႂ်ႈ App ႁဝ်းႁဵတ်းၵၢၼ်လႆႈၼိမ် (Stable) ၼိူဝ် Hardware မႂ်ႇမႂ်ႇ ဢၼ်မီး CPU လၢႆလၢႆ Core။
3.  **Easier Debugging:** ၵႄႈပၼ်ႁႃလွင်ႈ Concurrency တီႈ Compile-time ၼၼ်ႉ ငၢႆႈလိူဝ်ၵၢၼ်ၵႂႃႇႁႃ Crash တီႈ Runtime ၼၼ်ႉတႄႉတႄႉၶႃႈ။

---