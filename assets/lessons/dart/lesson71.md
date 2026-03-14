## 71) The Null-aware Operator (?.)

မိူဝ်ႈႁဝ်းၸႂ်ႉ Nullable types (`String?`, `int?`), ပၼ်ႁႃဢၼ်ႁဝ်းၵႆႉထူပ်းၵေႃႈပဵၼ် ႁဝ်းဢမ်ႇၸၢင်ႈႁွင်ႉၸႂ်ႉ Property ဢမ်ႇၼၼ် Method ႁင်းမၼ်းလႆႈၵမ်းလဵဝ် ယွၼ်ႉ Dart ၵူဝ်မၼ်းပဵၼ် `null` သေ Crash ယဝ်ႉ။

တွၼ်ႈတႃႇၵႄႈပၼ်ႁႃၼႆႉ လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈ `if (obj != null)` ၵူႈတီႈၼၼ်ႉ ႁဝ်းၸႂ်ႉ **Null-aware Operator (`?.`)** ယဝ်ႉ။

---

### 1. လၢႆးႁဵတ်းၵၢၼ်မၼ်း

**`?.`** မၢႆထိုင်:

* သင် Variable ၼၼ်ႉ **မီးၵႃႈၶၼ်**, ႁႂ်ႈႁွင်ႉၸႂ်ႉ Method/Property ၼၼ်ႉ။
* သင် Variable ၼၼ်ႉပဵၼ် **`null`**, ႁႂ်ႈသိုပ်ႇသူင်ႇ `null` ၶိုၼ်းမႃး (ဢမ်ႇႁႂ်ႈ App Crash)။

**Example:**

```dart
void main() {
  String? name = null;

  // လၢႆးၵဝ်ႇ (Error)
  // print(name.length); // ❌ Dart ဢမ်ႇပၼ်ႁဵတ်း

  // လၢႆးမႂ်ႇ (Safe)
  print(name?.length); // ✅ Output: null (App ဢမ်ႇ Crash)
  
  name = "Gemini";
  print(name?.length); // ✅ Output: 6
}

```

---

### 2. Chaining Null-aware Operators

ႁဝ်းၸၢင်ႈၸႂ်ႉ `?.` သိုပ်ႇၵၼ်လၢႆလၢႆၸၼ်ႉလႆႈ (Nested Objects)။ သင်မီးတူဝ်လႂ်တူဝ်ၼိုင်ႈပဵၼ် `null` ၸိုင်၊ မၼ်းတေ "ၵၢတ်ႇ" (Short-circuit) သေသူင်ႇ `null` ဢွၵ်ႇမႃးၵမ်းလဵဝ်။

```dart
// ဝူၼ်ႉတူၺ်းဝႃႈ User ၸၢင်ႈပဵၼ် null လႄႈ Address ၵေႃႈၸၢင်ႈပဵၼ် null
print(user?.address?.street); 

```

> **Note:** သင် `user` ပဵၼ် null, မၼ်းတေဢမ်ႇၵႂႃႇၵူတ်ႇ `address` ထႅင်ႈ၊ မၼ်းတေပၼ် `null` ၵမ်းလဵဝ်။

---

### 3. Comparison Table

| Code | Result if Variable is `null` | Result if Variable has Value |
| --- | --- | --- |
| `obj.method()` | **⚠️ Crash** (Error) | Runs Method |
| `obj?.method()` | **✅ Returns `null**` | Runs Method |

---

### 4. Why use it?

1. **Conciseness**: ႁဵတ်းႁႂ်ႈ Code ပွတ်း (ဢမ်ႇလူဝ်ႇ `if-else` တင်းၼမ်)။
2. **Safety**: ႁႄႉၵင်ႈ Runtime Errors ဢၼ်ၵႆႉပဵၼ်တီႈသုတ်းၼႂ်း Programming။
3. **Readability**: လူငၢႆႈ လႄႈ ႁၼ်ထိုင်လွင်ႈၵပ်းသိုပ်ႇၶေႃႈမုၼ်းလႆႈလီ။

---

