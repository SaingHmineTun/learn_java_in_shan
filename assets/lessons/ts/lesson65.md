### **Lesson 65: Access Modifiers (Public, Private, and Protected)**

ၼႂ်း TypeScript, **Access Modifiers** ပဵၼ်ၶေႃႈၵႂၢမ်းဢၼ်ႁဝ်းသႂ်ႇဝႆႉၼႃႈ Property ဢမ်ႇၼၼ် Method တႃႇမၵ်းမၼ်ႈဝႃႈ "ၽႂ်ၸၢင်ႈၶဝ်ႈတူၺ်း ဢမ်ႇၼၼ် ၸႂ်ႉၵၢၼ်လႆႈ" ၶႃႈ။ ၼႆႉပဵၼ်ႁူဝ်ၸႂ်ၶွင် **Encapsulation** (ၵၢၼ်ႁႄႉၵႅတ်ႇၶေႃႈမုၼ်း) ၼႂ်း OOP ၶႃႈဢေႃႈ။

---

#### **1. Public (Default)**
Property ဢၼ်ပဵၼ် `public` ၼၼ်ႉ **ၶဝ်ႈၸႂ်ႉလႆႈၵူႈတီႈ** ၶႃႈ။ သင်ႁဝ်းဢမ်ႇသႂ်ႇသင်ဝႆႉၼႃႈ Property, TypeScript တေမၵ်းမၼ်ႈပဵၼ် `public` တႃႇသေႇ။

```typescript
class Student {
  public name: string;

  constructor(n: string) {
    this.name = n;
  }
}

const s1 = new Student("Sai Mao");
console.log(s1.name); // ✅ OK: ၶဝ်ႈတူၺ်းလႆႈတီႈၽၢႆႇၼွၵ်ႈ
```

---

#### **2. Private (ႁၢမ်ႈၵူၼ်းၼွၵ်ႈ)**
Property ဢၼ်ပဵၼ် `private` ၼၼ်ႉ **ၶဝ်ႈၸႂ်ႉလႆႈၵူၺ်းၼႂ်း Class ၼၼ်ႉၵူၺ်း** ၶႃႈ။ ၵူၼ်းၼွၵ်ႈ (ဢမ်ႇၼၼ် Object ဢၼ်သၢင်ႈဢွၵ်ႇမႃး) တေဢမ်ႇၸၢင်ႈႁၼ် ဢမ်ႇၼၼ် မႄးလၢႆႈမၼ်းလႆႈ။

* **ၵွပ်ႈသင်လႄႈၸႂ်ႉ:** တွၼ်ႈတႃႇႁႄႉၵႅတ်ႇၶေႃႈမုၼ်းဢၼ်လွင်ႈယႂ်ႇ (ၼင်ႇ IDs, Passwords, ဢမ်ႇၼၼ် Logic ၼႂ်း Class)။

```typescript
class BankAccount {
  private balance: number; // ႁၢမ်ႈမႄးလၢႆႈၵမ်းလဵဝ်

  constructor(initialAmount: number) {
    this.balance = initialAmount;
  }

  addMoney(amount: number) {
    this.balance += amount; // ✅ OK: မႄးလၢႆႈလႆႈၼႂ်း Class ၼႆႉ
  }
}

const account = new BankAccount(100);
// account.balance = 1000000; // ❌ Error: Property 'balance' is private
```



---

#### **3. Protected (ပၼ်သုၼ်ႇလုၵ်ႈလၢၼ်)**
Property ဢၼ်ပဵၼ် `protected` ၼၼ်ႉ မိူၼ်တင်း `private` ၶႃႈ၊ ၵူၺ်းၵႃႈ မၼ်းမီးလွင်ႈပႅၵ်ႇပိူင်ႈဢၼ်ၼိုင်ႈ: **Class ဢၼ်သိုပ်ႇ (Inherit) တီႈမၼ်းၵႂႃႇ (Subclasses) တေၸၢင်ႈၶဝ်ႈၸႂ်ႉလႆႈယူႇ** ၶႃႈ။

```typescript
class Person {
  protected id: string = "M-101";
}

class Teacher extends Person {
  printId() {
    console.log(this.id); // ✅ OK: ၶဝ်ႈၸႂ်ႉလႆႈယွၼ်းပဵၼ် Class လုၵ်ႈ
  }
}

const t = new Teacher();
// console.log(t.id); // ❌ Error: ၵူၼ်းၼွၵ်ႈ (External) ယင်းတိုၵ်ႉႁွင်ႉၸႂ်ႉဢမ်ႇလႆႈ
```

---

#### **4. Summary Comparison**

| Modifier | Inside Class | Subclass (Inheritance) | Outside Class |
| :--- | :---: | :---: | :---: |
| **`public`** | ✅ | ✅ | ✅ |
| **`private`** | ✅ | ❌ | ❌ |
| **`protected`** | ✅ | ✅ | ❌ |



---

#### **5. Summary Checklist**
- [ ] ၸႂ်ႉ **`public`** တွၼ်ႈတႃႇ Property ဢၼ်ပၼ်ၵူၼ်းၼွၵ်ႈၸႂ်ႉလႆႈ။
- [ ] ၸႂ်ႉ **`private`** တႃႇႁႄႉၵႅတ်ႇၶေႃႈမုၼ်း ႁႂ်ႈမႄးလၢႆႈလႆႈၵူၺ်းၼႂ်း Class ၼၼ်ႉ။
- [ ] ၸႂ်ႉ **`protected`** မိူဝ်ႈၶႂ်ႈပၼ် Class လုၵ်ႈ (Subclasses) ၸႂ်ႉလႆႈ ၵူၺ်းၵႃႈ ႁၢမ်ႈၵူၼ်းၼွၵ်ႈ။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇမၵ်းမၼ်ႈ Modifier ႁႂ်ႈမႅၼ်ႈၸွမ်းလွင်ႈလူဝ်ႇၵုမ်းထိင်း Security။

---
