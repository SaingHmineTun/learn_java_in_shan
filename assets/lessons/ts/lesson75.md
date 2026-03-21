### **Lesson 75: Readonly in Interfaces vs Classes**

ၼႂ်း TypeScript, **`readonly`** ပဵၼ်တူဝ်ၸွႆးႁႄႉၵႅတ်ႇ ဢမ်ႇႁႂ်ႈမီးၵၢၼ်မႄးလၢႆႈၶေႃႈမုၼ်း (Modification) ဝၢႆးသေလႆႈသႂ်ႇၵႃႈၶၼ်ယဝ်ႉၶႃႈ။ ၵူၺ်းၵႃႈ ၵၢၼ်ၸႂ်ႉ `readonly` ၼႂ်း **Interface** လႄႈ **Class** မီးလွင်ႈပႅၵ်ႇပိူင်ႈၵၼ်ဢိတ်းဢွတ်းၶႃႈဢေႃႈ။

---

#### **1. Readonly in Interfaces (ၶေႃႈၵိၼ်ၵႂၢမ်း)**
မိူဝ်ႈႁဝ်းသႂ်ႇ `readonly` ဝႆႉၼႂ်း Interface, မၼ်းပဵၼ်ၵၢၼ် "သင်ႇ" ဝႃႈ Object ဢမ်ႇၼၼ် Class လႂ်ၵေႃႈယဝ်ႉ ဢၼ်ႁပ်ႉၵိၼ်ၵႂၢမ်း (Implement) တီႈမၼ်းၵႂႃႇၼၼ်ႉ **"ႁၢမ်ႈမႄးလၢႆႈ"** Property ၼၼ်ႉၶႃႈ။

```typescript
interface Greetable {
  readonly name: string; // ဝၢင်းပိူင်ဝႃႈ ႁၢမ်ႈမႄးလၢႆႈ
  greet(phrase: string): void;
}
```



---

#### **2. Readonly in Classes (ၵၢၼ်ၸႂ်ႉတေႉ)**
မိူဝ်ႈ Class ၼိုင်ႈဢၼ် `implements` Interface ဢၼ်မီး `readonly` ၸိုင်၊ TypeScript တေထတ်းၸႅတ်းပၼ်ဝႃႈ Property ၼၼ်ႉလူဝ်ႇလႆႈသႂ်ႇၵႃႈၶၼ်ယဝ်ႉတူဝ်ႈၼႂ်း **Constructor** ၵူၺ်းၶႃႈ။

```typescript
class Person implements Greetable {
  name: string; // ၸဝ်ႈၵဝ်ႇတေဢမ်ႇသႂ်ႇ readonly တီႈၼႆႉၵေႃႈလႆႈ၊ ၵူၺ်းၵႃႈ...

  constructor(n: string) {
    this.name = n;
  }

  greet(phrase: string) {
    console.log(phrase + " " + this.name);
  }
}

let user1: Greetable;
user1 = new Person("Sai Mao");

// user1.name = "Mao Mao"; // ❌ Error: Cannot assign to 'name' because it is a read-only property.
```

> **Note:** သင်ဝႃႈႁဝ်းမၵ်းမၼ်ႈ Type ႁႂ်ႈပဵၼ် `Greetable`, TypeScript တေႁႄႉၵႅတ်ႇၵၢၼ်မႄးလၢႆႈၵမ်းလဵဝ် ယွၼ်ႉမၼ်းတူၺ်းၸွမ်း "လိၵ်ႈၵိၼ်ၵႂၢမ်း" (Interface) ၼၼ်ႉၶႃႈဢေႃႈ။

---

#### **3. Key Differences (လွင်ႈပႅၵ်ႇပိူင်ႈ)**

| Feature | In Interface | In Class |
| :--- | :--- | :--- |
| **Purpose** | ဝၢင်းပိူင် (Constraint) | ႁႄႉၵႅတ်ႇတေႉ (Implementation) |
| **Access Modifiers** | ၸႂ်ႉ `public/private` ဢမ်ႇလႆႈ | ၸႂ်ႉႁူမ်ႈၸွမ်းလႆႈ (`private readonly`) |
| **Logic** | မၵ်းမၼ်ႈ Type ၵူၺ်း | တူၺ်းၸွမ်းၵၢၼ်သႂ်ႇၵႃႈၶၼ်ၼႂ်း Constructor |



---

#### **4. Summary Checklist**
- [ ] ၸႂ်ႉ `readonly` ၼႂ်း **Interface** တႃႇဝၢင်းပိူင်ႁၢမ်ႈမႄးလၢႆႈၶေႃႈမုၼ်း။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Class ဢၼ် Implement ၵႂႃႇၼၼ်ႉ လူဝ်ႇၸွမ်းပိူင် `readonly` ၼၼ်ႉတႃႇသေႇ။
- [ ] ႁူႉလၢႆးၸႂ်ႉ `readonly` တႃႇႁႄႉၵႅတ်ႇ Bugs ဢၼ်ၵိူတ်ႇမႃးတီႈၵၢၼ်မႄးၶေႃႈမုၼ်းသုၵ်ႉယၢင်ႈ။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇပွင်ႇၸႂ်ဝႃႈ `readonly` မႄးလၢႆႈလႆႈၵူၺ်းၼႂ်း Constructor။

---
