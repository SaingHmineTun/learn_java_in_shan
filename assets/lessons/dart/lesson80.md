## 80) Creating Custom Exception Classes

တီႈၼႂ်း Lesson 79 ၼၼ်ႉ ႁဝ်းလႆႈၸႂ်ႉ `throw Exception("Message")` သေသူင်ႇ Error ၵႂႃႇယဝ်ႉ။ ၵူၺ်းၵႃႈ သင် App ႁဝ်းယႂ်ႇမႃး၊ ၵၢၼ်ၸႂ်ႉၵူၺ်း `Exception` ယူႇယူဝ်းယူဝ်းၼၼ်ႉ မၼ်းႁဵတ်းႁႂ်ႈႁဝ်း "ၸႅၵ်ႇ" ပၼ်ႁႃလႆႈယၢပ်ႇ (ယွၼ်ႉၵူႈလွင်ႈပဵၼ် Exception မိူၼ်ၵၼ်တင်းသဵင်ႈ)။

လၢႆးဢၼ် "Professional" လိူဝ်ၼၼ်ႉၵေႃႈပဵၼ် ၵၢၼ်သၢင်ႈ **Custom Exception Class** ႁင်းႁဝ်းယဝ်ႉ။

---

### 1. လၢႆးသၢင်ႈ Custom Exception

တႃႇသၢင်ႈ Exception Class ႁင်းႁဝ်း၊ ႁဝ်းၵူၺ်းလူဝ်ႇသၢင်ႈ Class မႂ်ႇသေ `implements Exception` ယဝ်ႉ။

**Example: Banking App**
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈသူင်ႇ Error မိူဝ်ႈ User ထုတ်ႇငိုၼ်း "ပူၼ်ႉၵႃႈငိုၼ်းဢၼ်မီးဝႆႉ"။

```dart
// 1. သၢင်ႈ Class မၵ်းမၼ်ႈ Exception ႁင်းႁဝ်း
class InsufficientFundsException implements Exception {
  final double balance;
  final double withdrawAmount;

  InsufficientFundsException(this.balance, this.withdrawAmount);

  @override
  String toString() {
    return "Error: You have \$$balance, but tried to withdraw \$$withdrawAmount.";
  }
}

// 2. ၵၢၼ်ၸႂ်ႉတိုဝ်း
void withdrawMoney(double amount, double currentBalance) {
  if (amount > currentBalance) {
    throw InsufficientFundsException(currentBalance, amount);
  }
  print("Withdrawal successful!");
}

void main() {
  try {
    withdrawMoney(500, 200);
  } on InsufficientFundsException catch (e) {
    // ယၢမ်းၼႆႉႁဝ်းၸၢင်ႈ "on" မႅၼ်ႈၸွမ်းပၼ်ႁႃတႅတ်ႉတေႃယဝ်ႉ
    print(e); 
  }
}

```

---

### 2. Why use Custom Exceptions?

1. **Readability**: Code ၸဝ်ႈၵဝ်ႇတေလူငၢႆႈလိူဝ်ၵဝ်ႇ။ မိူဝ်ႈႁၼ် `on InsufficientFundsException` ၵူၼ်းလူ Code တေႁူႉၵမ်းလဵဝ်ဝႃႈ တွၼ်ႈၼႆႉၵႄႈပၼ်ႁႃလွင်ႈ "ငိုၼ်းဢမ်ႇပေႃး"။
2. **Extra Data**: ၸဝ်ႈၵဝ်ႇၸၢင်ႈ "သိမ်း" ၶေႃႈမုၼ်းဢၼ်ၵပ်းၵၢႆႇတင်း Error ၼၼ်ႉဝႆႉၼႂ်း Class လႆႈ (မိူၼ်ၼင်ႇ `balance` ၼႂ်းတူဝ်ယၢင်ႇတၢင်းၼိူဝ်)။
3. **Type Safety**: ၸူၺ်းႁႂ်ႈ `try-catch` ႁဝ်းႁဵတ်းၵၢၼ်လႆႈတႅတ်ႉတေႃလိူဝ်ၵဝ်ႇ၊ ဢမ်ႇလူဝ်ႇၵႂႃႇ String check ဝႃႈ "သင် Message မၼ်းမီးၶေႃႈၵႂၢမ်းဝႃႈ ငိုၼ်း..." ၼႆယဝ်ႉ။

---

### 3. Best Practices

* **PascalCase**: ၸိုဝ်ႈ Class ထုၵ်ႇလီလူတ်းသုတ်းလူၺ်ႈၶေႃႈၵႂၢမ်းဝႃႈ `Exception` (တူဝ်ယၢင်ႇ: `InvalidUserException`, `DatabaseConnectionException`)။
* **Override toString()**: ထုၵ်ႇလီမႄး `toString()` ႁႂ်ႈမၼ်းသူင်ႇ Message ဢၼ်ၵူၼ်းလူယဝ်ႉပွင်ႇၸႂ်ငၢႆႈ။

---

