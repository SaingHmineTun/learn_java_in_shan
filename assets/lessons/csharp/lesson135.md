# Lesson 135: "Validation Logic in Setters"

မိူဝ်ႈႁဝ်းၸႂ်ႉ Manual Property... ႁဝ်းၸၢင်ႈတႅမ်ႈ Code `if-else` ဝႆႉၼႂ်း `set` accessor။ ၼႆႉႁဵတ်းႁႂ်ႈ Class ႁဝ်း "လႅတ်း" (Smart) သေ ႁူႉဝႃႈ ၶေႃႈမုၼ်းဢၼ်လုၵ်ႈႁဵၼ်းသူင်ႇမႃးၼၼ်ႉ မႅၼ်ႈ/ၽိတ်း ၼႆၶႃႈ။

### 1. ႁဵတ်းသင်ၸင်ႇလူဝ်ႇ Validation?
ဝူၼ်ႉတူၺ်းဝႃႈ ၶူးသၢႆမၢဝ်းသၢင်ႈ Class `ShanEmployee` သေမီး Property `Salary`။
* သင်ဢမ်ႇမီး Validation: ပိူၼ်ႈၸၢင်ႈမႄး `emp.Salary = -5000;` လႆႈ (ငိုၼ်းလိူၼ်တိတ်းလပ်း ဢမ်ႇမီးၼႂ်းလူၵ်ႈတႄႉၶႃႈ)။
* သင်မီး Validation: ႁဝ်းႁႄႉဝႆႉလႆႈ တီႈထႅဝ် Code လဵဝ်ၵူၺ်းၶႃႈ။



### 2. တူဝ်ယင်ႇ Code (The Smart Setter)

```csharp
public class ShanAccount {
    private double _balance; // Backing Field

    public double Balance {
        get { return _balance; }
        set {
            // 'value' ပဵၼ်ၵႃႈၶၼ်ဢၼ်ပိူၼ်ႈသူင်ႇမႃး
            if (value >= 0) {
                _balance = value; // ပၼ်သိမ်း မိူဝ်ႈမႅၼ်ႈပိူင်
            } else {
                Console.WriteLine(">> [Error] Balance cannot be negative!");
                // ဢမ်ႇၼၼ် ၸၢင်ႈ Throw Exception (တေႁဵၼ်းဝၢႆးၼႃႈ)
            }
        }
    }
}
```

### 3. လၢႆးၵူတ်ႇထတ်း ဢၼ်ၵႆႉၸႂ်ႉ (Common Rules)
* **Range Check:** ၵူတ်ႇထတ်းၵႃႈၶၼ် (မိူၼ်ၼင်ႇ Age တေလႆႈယူႇၼႂ်း 0-120)။
* **String Check:** ၵူတ်ႇထတ်းလိၵ်ႈ (မိူၼ်ၼင်ႇ ဢမ်ႇပၼ် Name ပဵၼ်ၵေႃဝ်ႈလၢႆ Empty)။
* **Format Check:** ၵူတ်ႇထတ်းႁၢင်ႈၽၢင် (မိူၼ်ၼင်ႇ Email တေလႆႈမီး `@`)။

### 4. ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Main)
```csharp
ShanAccount myAcc = new ShanAccount();

myAcc.Balance = 1000;  // OK: _balance = 1000
myAcc.Balance = -50;   // Fail: တေဢွၵ်ႇ Error Message သေ _balance တေတိုၵ်ႉပဵၼ် 1000 ယူႇမိူၼ်ၵဝ်ႇ
```

---

### ၶေႃႈၵႂမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Validation:** ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမုၼ်း ႁႂ်ႈမႅၼ်ႈၸွမ်းပိူင်မီႈ (Business Rules)။
* **Data Integrity:** လွင်ႈမႅၼ်ႈယံ လႄႈ လွင်ႈၵႅၼ်ႇၶႅင် ၶွင်ၶေႃႈမုၼ်းၼႂ်း Object။
* **Guard Clause:** တွၼ်ႈ Code `if` ဢၼ်ယူႇၽၢႆႇၼႃႈ တႃႇႁႄႉၵၢင်ႈ Error။
* **Business Logic:** ပၵ်းၵၢၼ်ၶွင် App ဢၼ်ႁဝ်းတႅမ်ႈသႂ်ႇဝႆႉၼႂ်း Code။

---