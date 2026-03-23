
# Lesson 164: "The 'is' and 'as' with Interfaces"

ႁဝ်းၸႂ်ႉ Keyword **`is`** လႄႈ **`as`** တႃႇႁဵတ်းႁႂ်ႈၵၢၼ်ပိၼ်ႇၸိူဝ်ႉၶိူဝ်း (Casting) ၸူး Interface လွတ်ႈၽေး (Safe) ၶႃႈ။

### 1. Using 'is' (ၵူတ်ႇထတ်း)
ၸႂ်ႉတႃႇထတ်းတူၺ်းဝႃႈ Object တူဝ်ၼၼ်ႉ "ႁပ်ႉၵတိ" (Implement) Interface ဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉႁႃႉ?

```csharp
object myDevice = new ShanSmartPhone();

if (myDevice is ICamera) {
    Console.WriteLine("This device can take photos!");
}
```

**Pattern Matching (C# 7.0+):** ႁဝ်းၸၢင်ႈၵူတ်ႇထတ်းသေ သၢင်ႈ Variable မႂ်ႇ ၵမ်းလဵဝ်လႆႈၶႃႈ:
```csharp
if (myDevice is ICamera cam) {
    cam.TakePhoto(); // ၸႂ်ႉ 'cam' လႆႈၵမ်းလဵဝ်
}
```

### 2. Using 'as' (ၸၢမ်းပိၼ်ႇ)
ၸႂ်ႉတႃႇၸၢမ်းပိၼ်ႇ Object ႁႂ်ႈပဵၼ် Interface Type။ သင်မၼ်းဢမ်ႇပဵၼ် Interface ၼၼ်ႉ... မၼ်းတေသူင်ႇ **`null`** မႃးၶႃႈ။

```csharp
IScannable scanner = myDevice as IScannable;

if (scanner != null) {
    scanner.Scan();
} else {
    Console.WriteLine("This device cannot scan.");
}
```



### 3. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇၸႂ်ႉၸွမ် Interface?
1. **Loose Coupling:** ႁဝ်းၸၢင်ႈႁပ်ႉ `object` ဢမ်ႇၼၼ် `BaseClass` မႃးသေ ၸၢမ်းတူၺ်းဝႃႈ "မၼ်းမီး Ability ဢၼ်ႁဝ်းလူဝ်ႇႁႃႉ?" ၼႆၶႃႈ။
2. **Safety:** ႁႄႉၵၢင်ႈဢမ်ႇပၼ် App ၶျႃး (Crash) မိူဝ်ႈႁဝ်းၸႂ်ႉ Direct Cast `(ICamera)myDevice` သေ Object ၼၼ်ႉသမ်ႉဢမ်ႇၸႂ်ႈ ICamera ၶႃႈ။
3. **Plug-in Logic:** ၸွႆးႁႂ်ႈႁဝ်းတႅမ်ႈ Code ဢၼ်လႅတ်းသႅဝ်း (မိူၼ်ၼင်ႇ: "သင် Object ၼႆႉပဵၼ် `IDisposable` ၼႆ... ႁႂ်ႈမၼ်း `Dispose()` ပႅတ်ႈ") ၶႃႈ။

### 4. တူဝ်ယင်ႇ ၼႂ်း Shan Project
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး List ၶွင် `object` ဢၼ်မီးတင်း `Teacher`, `Student`, လႄႈ `Car`။
* ႁဝ်းၶႂ်ႈႁႂ်ႈၵူၼ်းၸိူဝ်းဢၼ် "လၢတ်ႈၵႂၢမ်းလႆႈ" (**`ISpeakable`**) တူၵ်းၵႂၢမ်းၼႄ။
* ႁဝ်းတေၸႂ်ႉ **`is`** တႃႇလိူၵ်ႈဢဝ်ၵူၺ်း ၵူၼ်းၸိူဝ်းဢၼ် Implement `ISpeakable` ၼၼ်ႉယဝ်ႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Interface Casting:** ၵၢၼ်ပိၼ်ႇ Object ႁႂ်ႈပဵၼ် Interface Type။
* **Safe Casting:** ၵၢၼ်ပိၼ်ႇၸိူဝ်ႉၶိူဝ်း ဢၼ်ဢမ်ႇႁဵတ်းႁႂ်ႈမီး Error တီႈ Runtime။
* **Capability Checking:** ၵၢၼ်ၵူတ်ႇထတ်း "ၼႃႈတီႈ/လွင်ႈႁဵတ်းလႆႈ" ၶွင် Object။
* **Null Check:** ၵၢၼ်ၵူတ်ႇထတ်းဝႃႈ ၵႃႈၶၼ်ပဵၼ် null (ဢမ်ႇမီးသင်) ႁႃႉ?

---