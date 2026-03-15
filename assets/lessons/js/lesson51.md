
# Lesson 51: Private Fields (#) & Encapsulation

### 1. Encapsulation ပဵၼ်သင်?

**Encapsulation** (ၵၢၼ်ႁေႃႇႁုမ်ႉ) ပဵၼ်ပိုၼ်ႉထၢၼ် OOP ဢၼ်မွၵ်ႇဝႃႈ "ၶေႃႈမုၼ်းလႄႈ ၵၢၼ်ႁဵတ်း (Data & Methods) လူဝ်ႇထုၵ်ႇႁေႃႇဝႆႉၼႂ်းပူၵ်ႇလဵဝ်ၵူၺ်း"။ လွင်ႈလမ်ႇလွင်ႈမၼ်းတႄႉၵေႃႈပဵၼ် ၵၢၼ်သိမ်းလပ်ႉ **Internal Logic** ဢမ်ႇလူဝ်ႇပၼ်ၵူၼ်းၸႂ်ႉႁူႉၵူႈလွင်ႈၶႃႈ။

### 2. Private Fields လူၺ်ႈၸႂ်ႉ `#`

ၼႂ်း Modern JavaScript၊ ႁဝ်းၸႂ်ႉမၢႆ **Hash (`#`)** ဝႆႉၽၢႆႇၼႃႈၸိုဝ်ႈ Variable တႃႇမွၵ်ႇဝႃႈၼႆႉပဵၼ် "ၶေႃႈမုၼ်းသုၼ်ႇတူဝ်" (Private) ၶႃႈ။

* **Public Field:** ၵူၼ်းၼွၵ်ႈႁွင်ႉၸႂ်ႉလႆႈ (မိူၼ်ၼင်ႇ `user.name`)။
* **Private Field (`#`):** ႁွင်ႉၸႂ်ႉလႆႈ **ၼႂ်း Class** ၼၼ်ႉၵူၺ်း။ သင်ႁွင်ႉၽၢႆႇၼွၵ်ႈ မၼ်းတေ Syntax Error ၵမ်းလဵဝ်ၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Code Example)

ဝူၼ်ႉဝႃႈ ႁဝ်းမီး Class `BankAccount` သေ ႁဝ်းဢမ်ႇၶႂ်ႈပၼ်ၽႂ်မႃးလႅၵ်ႈလၢႆႈ "ငွေၼပ်ႉ" (Balance) ႁဝ်းလႆႈ ၼွၵ်ႈလိူဝ်သေၸႂ်ႉ Method ဢၼ်ႁဝ်းပၼ်ဝႆႉၶႃႈ။

```javascript
class BankAccount {
  // 1. ပိုၼ်ေၽၢဝ်ႇ Private Field ဝႆႉၽၢႆႇၼိူဝ် Constructor
  #balance = 0; 

  constructor(owner) {
    this.owner = owner;
  }

  // Method တႃႇသႂ်ႇငိုၼ်း (Public)
  deposit(amount) {
    if (amount > 0) {
      this.#balance += amount;
      console.log(`Deposited ${amount}. New balance: ${this.#balance}`);
    }
  }

  // Getter တႃႇတူၺ်းငိုၼ်း (Public)
  get balance() {
    return `Private: $${this.#balance}`;
  }
}

const myAcc = new BankAccount("Sai Kham");

myAcc.deposit(500);       // ✅ "Deposited 500..."
console.log(myAcc.balance); // ✅ "Private: $500"

// ❌ ၵူတ်ႉၽၢႆႇၼွၵ်ႈၶတ်းၸႂ်တေၶဝ်ႈႁႃ Private Field
// console.log(myAcc.#balance); // 🛑 Syntax Error: Private field '#balance' must be declared in an enclosing class

```

---

### 3. ယွၼ်ႉသင်ၸင်ႇထုၵ်ႇလီၸႂ်ႉ?

1. **Security:** ႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈၶေႃႈမုၼ်းလမ်ႇလွင်ႈ ထုၵ်ႇလႅၵ်ႈလၢႆႈလူၺ်ႈဢမ်ႇမီးၵၢၼ်ၵူတ်ႇထတ်း (Validation)။
2. **Maintenance:** မိူဝ်ႈႁဝ်းလႅၵ်ႈလၢႆႈ Logic ၼႂ်း Class၊ ႁဝ်းၼပ်ႉယမ်လႆႈဝႃႈ ၵူတ်ႉၽၢႆႇၼွၵ်ႈတေဢမ်ႇ "လူႉ" (Break) ယွၼ်ႉၶဝ်ဢမ်ႇလႆႈၵပ်းၵၢႆႇတင်း Private Field ၸိူဝ်းၼၼ်ႉၵမ်းလဵဝ်ၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* Private Fields တေလႆႈ **ပိုၼ်ေၽၢဝ်ႇဝႆႉ (Declare)** ၽၢႆႇၼိူဝ် Constructor တႃႇသေႇ။
* မၢႆ `#` ပဵၼ်တွၼ်ႈၼိုင်ႈၶွင်ၸိုဝ်ႈ Variable (လူဝ်ႇတႅမ်ႈ `#balance` တႃႇသေႇ၊ ဢမ်ႇၸႂ်ႈ `balance`)။
* တႃႇသေႇ၊ ၸႂ်ႉ Private တႃႇသိမ်း Logic လႄႈ Data ဢၼ်ယုင်ႈယၢပ်ႈ၊ သေပၼ်ဢွၵ်ႇ (Expose) ၵူၺ်း Method ဢၼ်ငၢႆႈငၢႆႈတႃႇၵူၼ်းၸႂ်ႉၶႃႈ။

---