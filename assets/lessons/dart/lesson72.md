## 72) The If-Null Operator (??)

မိူဝ်ႈႁဝ်းၸႂ်ႉ Nullable variables, မၢင်ပွၵ်ႈႁဝ်းဢမ်ႇၶႂ်ႈလႆႈၵႃႈၶၼ် `null` ဢွၵ်ႇမႃးၼႄ User။ ႁဝ်းၶႂ်ႈပၼ် **"ၵႃႈၶၼ်ၵႅမ်" (Default Value)** သေယၢင်ႇ တွၼ်ႈတႃႇတႅၼ်းတီႈ `null` ၼၼ်ႉယဝ်ႉ။ ၼႆႉယဝ်ႉပဵၼ်ၼႃႈၵၢၼ်ၶေႃ **If-Null Operator (`??`)**။

---

### 1. လၢႆးႁဵတ်းၵၢၼ်မၼ်း

Operator ၼႆႉ တေၵူတ်ႇထတ်းၵႃႈၶၼ်ၽၢႆႇသၢႆႉ:

* သင်ၵႃႈၶၼ်ၽၢႆႇသၢႆႉ **ဢမ်ႇၸႂ်ႈ null**, မၼ်းတေဢဝ်ၵႃႈၶၼ်ၼၼ်ႉမႃးၸႂ်ႉ။
* သင်ၵႃႈၶၼ်ၽၢႆႇသၢႆႉ **ပဵၼ် null**, မၼ်းတေဢဝ်ၵႃႈၶၼ်ၽၢႆႇၶႂႃမႃးၸႂ်ႉတႅၼ်း။

**Example:**

```dart
void main() {
  String? userName = null;

  // သင် userName ပဵၼ် null, ႁႂ်ႈၸႂ်ႉ "Guest" တႅၼ်း
  String displayName = userName ?? "Guest";

  print(displayName); // Output: Guest

  userName = "Sai Sai";
  displayName = userName ?? "Guest";
  
  print(displayName); // Output: Sai Sai
}

```

---

### 2. Combining with Null-aware Operator (`?.`)

ႁဝ်းၵႆႉၸႂ်ႉ `?.` လႄႈ `??` ႁူမ်ႈၵၼ် တွၼ်ႈတႃႇႁွင်ႉၸႂ်ႉ Property သေ ၵႄႈပၼ်ႁႃလွင်ႈ `null` ၵႂႃႇၼႂ်းထႅဝ်လဵဝ်ၵမ်းလဵဝ်။

```dart
String? city = null;

// သင် city ပဵၼ် null, city?.length တေလႆႈ null
// ယဝ်ႉ ?? တေဢဝ် 0 မႃးတႅၼ်းပၼ်
int length = city?.length ?? 0;

print(length); // Output: 0

```

---

### 3. Why use it?

1. **User Experience (UX)**: ဢမ်ႇၼႄၶေႃႈၵႂၢမ်း "null" ၼိူဝ် Screen App ႁဝ်း (တူဝ်ယၢင်ႇ: ၼႄ "Unknown" တႅၼ်း)။
2. **Type Conversion**: ၸူၺ်းပိၼ်ႇၵႃႈၶၼ်တီႈ `Type?` (Nullable) ႁႂ်ႈပဵၼ် `Type` (Non-nullable) တွၼ်ႈတႃႇၵႂႃႇၸႂ်ႉၼႂ်း Function ဢၼ်ဢမ်ႇႁပ်ႉ null လႆႈ။
3. **Clean Code**: လူတ်းယွၼ်ႇၵၢၼ်တႅမ်ႈ `if (x == null) { ... } else { ... }`။

---

### 4. Comparison Table

| Logic | Traditional Way (`if-else`) | Null-aware Way (`??`) |
| --- | --- | --- |
| **Check Null** | `var res = (a != null) ? a : b;` | `var res = a ?? b;` |
| **Complexity** | ၸႂ်ႉၶၢဝ်းယၢမ်းတႅမ်ႈၼမ် | ပွတ်း လႄႈ လူငၢႆႈ |

---
