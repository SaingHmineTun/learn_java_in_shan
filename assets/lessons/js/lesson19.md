# Lesson 19: Modern ES6 Classes (ပၵ်းပိူင် Class)

ၼႂ်း JavaScript၊ **Class** ဢၼ်တေႃႉတေႉပဵၼ် "သႅၼ်းသႃႇ" (Syntactic Sugar) ၶွင် Prototypes ၵူၺ်းၶႃႈ။ မၼ်းမၢႆထိုင်ဝႃႈ ၽၢႆႇတႂ်ႈမၼ်းတိုၵ်ႉၸႂ်ႉ Prototypes ယူႇ၊ ၵူၺ်းၵႃႈလၢႆးတႅမ်ႈမၼ်း မိူၼ် Programming languages တၢင်ႇမဵဝ်း (မိူၼ် Java, C#) လိူဝ်ၵဝ်ႇၶႃႈ။

### 1. လၢႆးသၢင်ႈ Class (Class Syntax)

ႁဝ်းၸႂ်ႉ Keyword `class` လႄႈ `constructor` ပိူဝ်ႈတေဝႆႉၵႃႈၶၼ်ပိုၼ်ႉထၢၼ်။

```javascript
class User {
  // 1. Constructor: တေႁဵတ်းၵၢၼ်ၵမ်းလဵဝ် မိူဝ်ႈႁဝ်းၸႂ်ႉ 'new'
  constructor(name, email) {
    this.name = name;
    this.email = email;
  }

  // 2. Methods: တႅမ်ႈဝႆႉလႆႈၵမ်းလဵဝ် (မၼ်းတေၵႂႃႇယူႇၼႂ်း Prototype ႁင်းၵူၺ်း)
  sayHi() {
    console.log(`မႂ်ႇသုင်၊ ၶႃႈၸိုဝ်ႈ ${this.name}`);
  }

  logout() {
    console.log(`${this.email} လႆႈဢွၵ်ႇသတ်ႉႉပတ်ႉယဝ်ႉ`);
  }
}

const user1 = new User("ၸၢႆးသႅင်", "sai@email.com");
user1.sayHi(); // "မႂ်ႇသုင်၊ ၶႃႈၸိုဝ်ႈ ၸၢႆးသႅင်"

```

---

### 2. Method Chaining (ၵၢၼ်ႁွင်ႉ Method သိုပ်ႇၵၼ်)

မၢင်ၵမ်းႁဝ်းၶႂ်ႈႁွင်ႉ `user1.login().update().logout()` သိုပ်ႇၵၼ်။ ပိူဝ်ႈတေႁဵတ်းလႆႈၼၼ်ႉ၊ ၼႂ်း Method ႁဝ်းလူဝ်ႇ `return this;` ၶိုၼ်းၶႃႈ။

```javascript
class Account {
  constructor(balance) {
    this.balance = balance;
  }
  deposit(amount) {
    this.balance += amount;
    return this; // သူင်ႇတူဝ် Object ၼႆႉၶိုၼ်း
  }
  withdraw(amount) {
    this.balance -= amount;
    return this;
  }
}

const myAcc = new Account(100);
myAcc.deposit(50).withdraw(20); 
console.log(myAcc.balance); // 130

```

---

### 3. Static Methods (Method ၶွင် Class)

**Static Method** ပဵၼ် Function ဢၼ်မတ်ႉဝႆႉၸွမ်း "တူဝ် Class" ၵူၺ်း၊ ဢမ်ႇၸႂ်ႈၶွင် Object ဢၼ်သၢင်ႈဢွၵ်ႇမႃး (Instance)။ ႁဝ်းၵႆႉၸႂ်ႉမၼ်းတႃႇႁဵတ်း Helper functions။

```javascript
class Helper {
  static logTime() {
    console.log(new Date().toLocaleTimeString());
  }
}

Helper.logTime(); // ႁွင်ႉလႆႈၵမ်းလဵဝ် လုၵ်ႉတီႈၸိုဝ်ႈ Class
// const h = new Helper(); h.logTime(); // Error! ႁွင်ႉလုၵ်ႉတီႈ Object ဢမ်ႇလႆႈ

```

---

### 4. Class vs Constructor Function

| Feature | Constructor Function | ES6 Class |
| --- | --- | --- |
| **Hoisting** | Hoisted (ႁွင်ႉဢွၼ်တၢင်းလႆႈ) | Not Hoisted (တေလႆႈတႅမ်ႈဢွၼ်တၢင်း) |
| **Methods** | တေလႆႈထႅမ်သႂ်ႇ `.prototype` | တႅမ်ႈဝႆႉၼႂ်း `{ }` လႆႈၵမ်းလဵဝ် |
| **Strict Mode** | ပဝ်ႇဝႆႉ (Optional) | ႁဵတ်းၵၢၼ်ၼႂ်း Strict Mode တႃႇသေႇ |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 19)

* **Class**: ပဵၼ်လၢႆးတႅမ်ႈ OOP ဢၼ်သႅၼ်းသႃႇ လႄႈ ႁၢင်ႈလီ (Modern syntax)။
* **Constructor**: ပဵၼ်တီႈသၢင်ႈ Properties မိူဝ်ႈတႄႇသၢင်ႈ Object။
* **Static**: ၸႂ်ႉတႃႇသၢင်ႈ Methods ဢၼ်ၸႂ်ႉလႆႈလူၺ်ႈဢမ်ႇလူဝ်ႇ `new` Object။

---