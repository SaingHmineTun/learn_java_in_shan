## 73) Null-aware Assignment (??=)

**Null-aware Assignment (`??=`)** ပဵၼ် Operator ဢၼ်ၸႂ်ႉတႃႇ "ပၼ်ၵႃႈၶၼ်" (Assign) သႂ်ႇၼႂ်း Variable ၼိုင်ႈဢၼ် **ၵူၺ်းမိူဝ်ႈ Variable ၼၼ်ႉပဵၼ် `null**` ယူႇၵူၺ်း။ သင်မၼ်းမီးၵႃႈၶၼ်ဝႆႉယူႇယဝ်ႉ၊ မၼ်းတေဢမ်ႇႁဵတ်းသင်တင်းသဵင်ႈ။

---

### 1. လၢႆးႁဵတ်းၵၢၼ်မၼ်း

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇမီး Variable ဢၼ်ၸၢင်ႈပဵၼ် `null`၊ ယဝ်ႉၸဝ်ႈၵဝ်ႇၶႂ်ႈမၵ်းမၼ်ႈၵႃႈၶၼ် Default ပၼ်မၼ်း သင်မၼ်းတိုၵ်ႉပဝ်ႇဝႆႉယူႇ။

**Example:**

```dart
void main() {
  int? age; // age တိုၵ်ႉပဵၼ် null

  // သင် age ပဵၼ် null, ႁႂ်ႈပၼ်ၵႃႈၶၼ်ပဵၼ် 18
  age ??= 18;
  print(age); // Output: 18

  // ၵမ်းၼႆႉ age မီးၵႃႈၶၼ် (18) ယဝ်ႉ
  // သင်ႁဝ်းၸႂ်ႉ ??= ထႅင်ႈ...
  age ??= 25;
  print(age); // Output: 18 (ဢမ်ႇလႅၵ်ႈလၢႆႈ ယွၼ်ႉမၼ်းဢမ်ႇၸႂ်ႈ null ယဝ်ႉ)
}

```

---

### 2. Why use it?

1. **Lazy Initialization**: ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈပၼ်ၵႃႈၶၼ် Variable ၵူၺ်းမိူဝ်ႈလူဝ်ႇၸႂ်ႉတႄႇတႄႇ (သင်မၼ်းတိုၵ်ႉပဝ်ႇယူႇ)။
2. **Code Conciseness**: လူတ်းယွၼ်ႇၵၢၼ်တႅမ်ႈ:
```dart
if (name == null) {
  name = "Guest";
}

```


မႃးပဵၼ်ထႅဝ်လဵဝ်:
```dart
name ??= "Guest";

```


3. **App Configuration**: ၸႂ်ႉတႃႇသႂ်ႇ Default Settings ၼႂ်း App မိူဝ်ႈ User ဢမ်ႇပႆႇလႆႈလိူၵ်ႈ Options သေယၢင်ႇ။

---

### 3. Comparison with `??`

* **`??` (If-Null)**: ၸႂ်ႉတႃႇ "လိူၵ်ႈ" ၵႃႈၶၼ်ဢွၵ်ႇမႃးၸႂ်ႉ (ဢမ်ႇလႅၵ်ႈလၢႆႈၵႃႈၶၼ်တႄႇၼႂ်း Variable)။
* **`??=` (Null-aware Assignment)**: ၸႂ်ႉတႃႇ "မႄးလႅၵ်ႈလၢႆႈ" (Modify) ၵႃႈၶၼ်ၼႂ်း Variable ၼၼ်ႉၵမ်းလဵဝ်။

---

### Summary Table

| Operator | Usage | Purpose |
| --- | --- | --- |
| **`?.`** | `obj?.prop` | Access property safely (သူင်ႇ null ၶိုၼ်းသင် obj ပဵၼ် null) |
| **`??`** | `a ?? b` | Return `b` if `a` is null |
| **`??=`** | `a ??= b` | Set `a` to `b` **only if** `a` is null |

---