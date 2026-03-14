## 52) Creating Getters for Controlled Reading

မိူဝ်ႈႁဝ်းသိပ်း (Hide) Variable ႁဝ်းလူၺ်ႈမၢႆ Underscore (`_`) ယဝ်ႉ၊ ၵူၼ်းၼွၵ်ႈ File တေဢမ်ႇၸၢင်ႈႁၼ်ၶေႃႈမုၼ်းၼၼ်ႉလႆႈထႅင်ႈ။ ၵူၺ်းၵႃႈ မၢင်ပွၵ်ႈႁဝ်းၶႂ်ႈပၼ်ႁႂ်ႈၶဝ် **"လူ" (Read)** လႆႈ၊ ၵူၺ်းၵႃႈ **"မႄး" (Modify)** ဢမ်ႇလႆႈ။ ၼႆႉပဵၼ်တီႈဢၼ် **Getter** ၶဝ်ႈမႃးမီးၵၢၼ်ယဝ်ႉ။

---

### 1. What is a Getter?

**Getter** ပဵၼ် Method ပိူင်လူးၵတ်ႉ ဢၼ်ၸႂ်ႉတႃႇ "ဢဝ်" (Get) ၵႃႈၶၼ် Variable ဢွၵ်ႇမႃးပၼ်ၵူၼ်းႁွင်ႉၸႂ်ႉ။ မၼ်းႁဵတ်းႁႂ်ႈ Field ၼၼ်ႉပဵၼ် **Read-Only** (လူလႆႈၵူၺ်း) တႃႇၵူၼ်းၼွၵ်ႈ File ယဝ်ႉ။

**Syntax:**
ႁဝ်းၸႂ်ႉ Keyword `get` ဝႆႉၽၢႆႇၼႃႈ။

```dart
// Syntax ပိူင်လူင်
ReturnType get propertyName => _privateVariable;

```

---

### 2. တူဝ်ယၢင်ႇ (Example)

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းမီး Class `BankAccount`။ ႁဝ်းၶႂ်ႈႁႂ်ႈ User ၵူတ်ႇထတ်းငိုၼ်းၼႂ်းသဵၼ်ႈမၢႆ (Balance) လႆႈ၊ ၵူၺ်းၵႃႈ ဢမ်ႇပၼ်ၶဝ်မႃးပၼ်ၵႃႈၶၼ်ငိုၼ်းႁင်းၵူၺ်း။

```dart
class BankAccount {
  double _balance = 1000.0; // Private variable

  // Creating a Getter
  // ၼႆႉမၢႆထိုင်ဝႃႈ ၵူၼ်းၼွၵ်ႈ File ႁွင်ႉၸႂ်ႉ 'balance' လႆႈ ၵူၺ်းၵႃႈ '._balance' ဢမ်ႇလႆႈ
  double get balance => _balance;
}

void main() {
  var account = BankAccount();
  
  // ႁွင်ႉၸႂ်ႉ Getter (မိူၼ်တင်းႁွင်ႉ Variable ယူဝ်းယူဝ်း)
  print(account.balance); // Output: 1000.0

  // account.balance = 5000.0; // Error! ယွၼ်ႉမၼ်းဢမ်ႇမီး Setter
}

```

---

### 3. Why use Getters instead of Public Variables?

သင်ႁဝ်းၸႂ်ႉ Public Variable ယူဝ်းယူဝ်း (ဢမ်ႇမီး `_`)၊ ၵူၼ်းၸႂ်ႉၸၢင်ႈမႄးၶေႃႈမုၼ်းႁဝ်းလႆႈၵူႈယၢမ်း။ ၵၢၼ်ၸႂ်ႉ Getter မီးၽွၼ်းလီၼင်ႇၼႆ:

1. **Read-Only Security**: ႁႄႉၵင်ႈၵၢၼ်လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း ဢၼ်ဢမ်ႇထုၵ်ႇလၢတ်ႈဝႆႉ။
2. **Transformation**: ႁဝ်းၸၢင်ႈ "ပိၼ်ႇ" (Format) ၶေႃႈမုၼ်းဢွၼ်တၢင်းတေသူင်ႇပၼ် User။
* *တူဝ်ယၢင်ႇ:* `String get balanceText => "$_balance USD";`


3. **Abstraction**: ၵူၼ်းၼွၵ်ႈဢမ်ႇလူဝ်ႇႁူႉဝႃႈ ၼႂ်း Class ႁဝ်းသိမ်းၶေႃႈမုၼ်းဝႆႉၸိူင်ႉႁိုဝ်၊ ၶဝ်ႁူႉၵူၺ်းဝႃႈႁွင်ႉ Getter ၼႆႉသေ တေလႆႈ Data မႃး။

---

### 4. Expression Body (=>) vs Block Body ({ })

ႁဝ်းၸၢင်ႈတႅမ်ႈ Getter လႆႈသွင်ပိူင်:

* **Shorthand (=>)**: ၸႂ်ႉမိူၼ်တွၼ်ႈတၢင်းၼိူဝ် မိူဝ်ႈၵူၺ်းၶႂ်ႈသူင်ႇၵႃႈၶၼ်ၶိုၼ်းၵမ်းလဵဝ်။
* **Block Body ({ })**: ၸႂ်ႉမိူဝ်ႈလူဝ်ႇမီး Logic ဢိတ်းဢိတ်းဢွၼ်တၢင်းတေ return။

```dart
double get balance {
  // ၸၢင်ႈသႂ်ႇ Logic ၼႂ်းၼႆႉလႆႈ
  print("Someone is checking the balance...");
  return _balance;
}

