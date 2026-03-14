## 66) Basic Enums for State

**Enum** (ဢမ်ႇၼၼ် **Enumerated Type**) ပဵၼ် Class ပိူင်လူးၵတ်ႉ ဢၼ်ၸႂ်ႉတႃႇမၵ်းမၼ်ႈ "ၸုမ်ႇၵႃႈၶၼ်ဢၼ်တႅတ်ႉတေႃ" (Fixed set of constant values)။ မၼ်းၸူၺ်းႁႂ်ႈ Code ႁဝ်းဢမ်ႇမီး "Magic Strings" ဢမ်ႇၼၼ် "Magic Numbers" ဢၼ်တေႁဵတ်းႁႂ်ႈႁဝ်းလူင် လႄႈ တႅမ်ႈၽိတ်းငၢႆႈၼၼ်ႉယဝ်ႉ။

---

### 1. ႁဵတ်းသင်လႄႈလူဝ်ႇ Enums?

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇတႅမ်ႈ App ၸၢႆႇငိုၼ်း (Payment App)။ ၸဝ်ႈၵဝ်ႇလူဝ်ႇသိမ်း "သၢႆငၢႆ" (Status) ၶေႃႈၵၢၼ်ၸၢႆႇငိုၼ်း:

* သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `String status = "success"`, မၢင်ပွၵ်ႈၸဝ်ႈၵဝ်ႇၸၢင်ႈတႅမ်ႈၽိတ်းပဵၼ် `"sucess"` (တူဝ် `c` ႁၢႆ) သေ ႁဵတ်းႁႂ်ႈ Logic ၼႂ်း App ၽိတ်းပိူင်ၵႂႃႇတင်းသဵင်ႈ။
* **Enum** တေမႃးႁႄႉၵင်ႈလွင်ႈၼႆႉ လူၺ်ႈၵၢၼ်မၵ်းမၼ်ႈၵႃႈၶၼ်ဢၼ်ၸႂ်ႉလႆႈတႄႇတႄႇၵူၺ်း။

---

### 2. Syntax: Creating and Using Enums

ႁဝ်းၸႂ်ႉ Keyword `enum` သေၸွမ်းလူၺ်ႈၸိုဝ်ႈတူဝ်လူင် (PascalCase)။

```dart
enum OrderStatus {
  pending,
  shipped,
  delivered,
  cancelled
}

void main() {
  // ၵၢၼ်ၸႂ်ႉတိုဝ်း
  var currentStatus = OrderStatus.pending;

  // ၵူတ်ႇထတ်းလူၺ်ႈ Switch (Dart တေၸူၺ်းၵူတ်ႇဝႃႈ ႁဝ်းသႂ်ႇပႃးၵူႈ Case ယဝ်ႉႁႃႉ)
  switch (currentStatus) {
    case OrderStatus.pending:
      print("Please wait, your order is pending.");
      break;
    case OrderStatus.shipped:
      print("Your order is on the way!");
      break;
    case OrderStatus.delivered:
      print("Order arrived.");
      break;
    case OrderStatus.cancelled:
      print("Order was cancelled.");
      break;
  }
}

```

---

### 3. Benefits of Using Enums (ၽွၼ်းလီ)

1. **Type Safety**: ၸဝ်ႈၵဝ်ႇဢမ်ႇၸၢင်ႈပၼ်ၵႃႈၶၼ်တၢင်ႇဢၼ် ဢၼ်ဢမ်ႇမီးၼႂ်း Enum ၼၼ်ႉလႆႈ။
2. **Readability**: Code လူငၢႆႈလိူဝ်ၵဝ်ႇ (တူဝ်ယၢင်ႇ: `OrderStatus.shipped` လူငၢႆႈလိူဝ် `1` ဢမ်ႇၼၼ် `"shipped"`)။
3. **Tooling Support**: IDE (မိူၼ်ၼင်ႇ VS Code) တေၸူၺ်း Suggest ပၼ်ၵႃႈၶၼ် ဢွၼ်တၢင်းႁဝ်းတေတႅမ်ႈယဝ်ႉ။
4. **Exhaustiveness Check**: မိူဝ်ႈၸႂ်ႉ `switch`, Dart တေပၼ် Error သင်ဝႃႈၸဝ်ႈၵဝ်ႇလူင်သႂ်ႇ Case သေဢၼ်ဢၼ် (တူဝ်ယၢင်ႇ: လူင်သႂ်ႇ `cancelled`)။

---

### 4. Basic Properties

* **`index`**: Enum ၵူႈဢၼ်မီးမၢႆၼပ်ႉ (တႄႇတီႈ 0)။
* `OrderStatus.pending.index` -> `0`


* **`values`**: သူင်ႇဢွၵ်ႇမႃးပဵၼ် List ဢၼ်မီးၵႃႈၶၼ် Enum တင်းသဵင်ႈ။
* `OrderStatus.values` -> `[pending, shipped, ...]`



---

### Summary

Enums ပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ်လီသုတ်း တႃႇမၵ်းမၼ်ႈ **Options** ဢၼ်ႁဝ်းႁူႉဝႃႈမၼ်းတေဢမ်ႇလႅၵ်ႈလၢႆႈ (မိူၼ်ၼင်ႇ: သီ, ဝၼ်းၼႂ်းဝူင်ႈ, သၢႆငၢႆ Network)။

---