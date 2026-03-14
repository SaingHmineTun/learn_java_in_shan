## 53) Creating Setters for Validation

သင် **Getter** ပဵၼ် "ၵၢၼ်ပိုတ်ႇၽၵ်းတူ" ႁႂ်ႈလူၶေႃႈမုၼ်းလႆႈၼႆ၊ **Setter** သမ်ႉပဵၼ် "ၵိတ်ႉ" (Gate) ဢၼ်ၵူတ်ႇထတ်းၶေႃႈမုၼ်း ဢွၼ်တၢင်းတေပၼ်လႅၵ်ႈလၢႆႈ Variable ဢၼ်ႁဝ်းသိပ်းဝႆႉၼၼ်ႉယဝ်ႉ။

---

### 1. What is a Setter?

**Setter** ပဵၼ် Method ပိူင်လူးၵတ်ႉ ဢၼ်ၸႂ်ႉတႃႇ "ပၼ်ၵႃႈၶၼ်" (Set) သႂ်ႇၼႂ်း Private Variable။ ၽွၼ်းလီလူင်မၼ်းၵေႃႈပဵၼ် ႁဝ်းၸၢင်ႈသႂ်ႇ **Validation Logic** (ၵၢၼ်ၵူတ်ႇထတ်း) တႃႇႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈ Data ၽိတ်းၽိတ်းၽိူဝ်ႇၽိူဝ်ႇ ၶဝ်ႈမႃးၼႂ်း System ႁဝ်း။

**Syntax:**
ႁဝ်းၸႂ်ႉ Keyword `set` ဝႆႉၽၢႆႇၼႃႈ။

```dart
set propertyName(Type value) {
  _privateVariable = value;
}

```

---

### 2. တူဝ်ယၢင်ႇ (Example: Bank Account)

ဝူၼ်ႉတူၺ်းဝႃႈ သင်ႁဝ်းပၼ် User မႄး `balance` ႁင်းၵူၺ်း၊ ၶဝ်ၸၢင်ႈသႂ်ႇမၢႆၼပ်ႉဢၼ်ပဵၼ် "လပ်း" (Negative value) ၸိူင်ႉၼင်ႇ `-500`။ ၵၢၼ်ၸႂ်ႉ Setter တေၸၢင်ႈႁႄႉၵင်ႈလွင်ႈၼႆႉလႆႈ။

```dart
class BankAccount {
  double _balance = 0.0;

  // Getter တႃႇလူ
  double get balance => _balance;

  // Setter တႃႇမႄး (လူၺ်ႈၵၢၼ်ၵူတ်ႇထတ်း)
  set balance(double newAmount) {
    if (newAmount >= 0) {
      _balance = newAmount;
    } else {
      print("Error: Amount cannot be negative!");
    }
  }
}

void main() {
  var myAcc = BankAccount();

  myAcc.balance = 500.0;  // မႅၼ်ႈၸွမ်းပိူင် (Valid) -> _balance ပဵၼ် 500
  myAcc.balance = -100.0; // ၽိတ်းပိူင် (Invalid) -> တေ Output Error
  
  print(myAcc.balance);   // တိုၵ်ႉပဵၼ် 500.0 ယူႇ
}

```

---

### 3. Why use Setters?

1. **Data Integrity**: မၼ်းမၵ်းမၼ်ႈဝႃႈ ၶေႃႈမုၼ်းၼႂ်း Object ႁဝ်းတေလႆႈပဵၼ်ဢၼ်မႅၼ်ႈတႃႇသေႇ (Always valid)။
2. **Side Effects**: ႁဝ်းၸၢင်ႈႁဵတ်းႁႂ်ႈမၼ်း "တူင်ႉၼိုင်" သင်သေယၢင် မိူဝ်ႈၵႃႈၶၼ်လႅၵ်ႈလၢႆႈ (တူဝ်ယၢင်ႇ: မိူဝ်ႈလႅၵ်ႈလၢႆႈသီ App၊ ႁႂ်ႈမၼ်း Save ဝႆႉၼႂ်း Database ၵမ်းလဵဝ်)။
3. **Read-Write Control**: ႁဝ်းၸၢင်ႈလိူၵ်ႈလႆႈဝႃႈ တေပၼ်လူ (Getter) ၵူၺ်းႁႃႉ၊ ဢမ်ႇၼၼ် တေပၼ်တင်းလူတင်းမႄး (Getter & Setter)။

---

### 4. Important Tip: Getter/Setter Pair

ၼႂ်း Dart, သင်ၸဝ်ႈၵဝ်ႇသၢင်ႈ Setter၊ မၼ်းပဵၼ်လွင်ႈလီ ဢၼ်တေလႆႈသၢင်ႈ **Getter** ၸွမ်းလူၺ်ႈၸိုဝ်ႈလဵဝ်ၵၼ်။ မၼ်းတေႁဵတ်းႁႂ်ႈ ၵူၼ်းၸႂ်ႉ (Developer) ႁူႉဝႃႈ Property ၼႆႉ ၸၢင်ႈၸႂ်ႉလႆႈမိူၼ် Variable ယူဝ်းယူဝ်းၼၼ်ႉယဝ်ႉ။

| Access Type | Has Getter? | Has Setter? |
| --- | --- | --- |
| **Read-Only** | ✅ | ❌ |
| **Write-Only** | ❌ | ✅ |
| **Read-Write** | ✅ | ✅ |

---
