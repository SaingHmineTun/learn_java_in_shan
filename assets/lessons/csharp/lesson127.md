# Lesson 127: "Exercise: Securing a Shan Bank Account"

ၼႂ်း Project ၼႆႉ ႁဝ်းတေမီးပိူင်ၵၢၼ် (Rules) ၼင်ႇၼႆ:
1.  **`AccountNumber`**: တေလႆႈပဵၼ် `readonly` (ပၼ်လႆႈ ၵႃႈၶၼ်မၼ်း ပွၵ်ႈလဵဝ်ၵူၺ်း)။
2.  **`_balance`**: တေလႆႈပဵၼ် `private` (ဢမ်ႇပၼ်ၵေႃႉၼွၵ်ႈမႄးၵမ်းလဵဝ်)။
3.  **`Deposit` / `Withdraw`**: တေလႆႈပဵၼ် `public` (ပၼ်ပိူၼ်ႈၸႂ်ႉလႆႈ ၵူၺ်းၵႃႈမီး Validation)။

### 1. ပိူင်သၢင်ႈ Code (The Implementation)

```csharp
using System;

public class ShanBankAccount {
    // 1. Readonly: ပၼ်ၵႃႈၶၼ်လႆႈၵူၺ်းၼႂ်း Constructor (Security)
    public readonly string AccountNumber;
    public string AccountHolder;

    // 2. Private: လပ်ႉၶေႃႈမုၼ်းငိုၼ်းၵိုၵ်းပၼ်ႇဝႆႉ (Encapsulation)
    private double _balance;

    public ShanBankAccount(string accountNumber, string holder, double initialDeposit) {
        this.AccountNumber = accountNumber;
        this.AccountHolder = holder;
        
        // ပၼ်ၵႃႈၶၼ်တႄႇ ၵူၺ်းၵႃႈတေလႆႈမႅၼ်ႈပိူင်
        if (initialDeposit >= 0) {
            _balance = initialDeposit;
        }
    }

    // 3. Public Method: တႃႇပၼ်ပိူၼ်ႈတူၺ်းငိုၼ်း (ReadOnly Access)
    public double GetBalance() {
        return _balance;
    }

    // 4. Public Method: တႃႇထႅမ်ငိုၼ်း (မီးၵၢၼ်ၵူတ်ႇထတ်း)
    public void Deposit(double amount) {
        if (amount > 0) {
            _balance += amount;
            Console.WriteLine($">> [DEPOSIT] +{amount} MMK successful.");
        } else {
            Console.WriteLine(">> [ERROR] Invalid deposit amount!");
        }
    }

    // 5. Public Method: တႃႇထွၼ်ငိုၼ်း
    public void Withdraw(double amount) {
        if (amount > 0 && amount <= _balance) {
            _balance -= amount;
            Console.WriteLine($">> [WITHDRAW] -{amount} MMK successful.");
        } else {
            Console.WriteLine(">> [ERROR] Insufficient balance or invalid amount!");
        }
    }
}
```

### 2. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main Program)

```csharp
class Program {
    static void Main() {
        ShanBankAccount myAcc = new ShanBankAccount("SHAN-001", "Sai Mao", 50000);

        // ၸၢမ်းမႄး AccountNumber
        // myAcc.AccountNumber = "SHAN-999"; // Error! (readonly)

        // ၸၢမ်းမႄး _balance ၵမ်းလဵဝ်
        // myAcc._balance = 1000000; // Error! (private)

        // ၸႂ်ႉၵၢၼ်လူၺ်းလွၵ်းလၢႆးဢၼ်ထုၵ်ႇတႅတ်ႉတေႃး
        myAcc.Deposit(10000);
        myAcc.Withdraw(5000);

        Console.WriteLine($"\nAccount: {myAcc.AccountNumber}");
        Console.WriteLine($"Holder: {myAcc.AccountHolder}");
        Console.WriteLine($"Current Balance: {myAcc.GetBalance()} MMK");
    }
}
```

### 3. လွၼ်ႉမၼ်းဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **Encapsulation:** ႁဝ်းႁေႃႇၶေႃႈမုၼ်း `_balance` ဝႆႉသေ ပၼ်သုၼ်ႇၸႂ်ႉလႆႈတီႈ `Deposit/Withdraw` ၵူၺ်း။
* **Data Integrity:** ၶေႃႈမုၼ်းဢမ်ႇၸၢင်ႈ "ယုင်ႈ" (Corrupted) ယွၼ်ႉမီး `if` check တႃႇသေႇ။
* **Access Control:** ၸႅၵ်ႇၽႄလီငၢမ်းဝႆႉဝႃႈ တွၼ်ႈလႂ်ပဵၼ် Public (Service) လႄႈ တွၼ်ႈလႂ်ပဵၼ် Private (Internal State)။
* **ReadOnly Security:** ႁဵတ်းႁႂ်ႈမၢႆဢႅၵ်ႉၶွၼ်ႉ (Account Number) ၼိမ်ဝႆႉတႃႇသေႇ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **State Management:** ၵၢၼ်ၵုမ်းထိင်းၶေႃႈမုၼ်းၼႂ်း Object ႁႂ်ႈမႅၼ်ႈၸွမ်းပိူင်။
* **Data Protection:** ၵၢၼ်ၸႂ်ႉ private လႄႈ readonly တႃႇၵႅတ်ႇၶႄၶေႃႈမုၼ်း။
* **Predictable Code:** ၵၢၼ်တႅမ်ႈ Code ဢၼ်ႁဝ်းႁူႉၽွၼ်းလႆႈတႅတ်ႉတေႃး ယွၼ်ႉဢမ်ႇမီးၽႂ် ၶဝ်ႈမႄးလႆႈ။

---
