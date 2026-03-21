### **Lesson 69: Super keyword (Calling parent constructors and methods)**

ၼႂ်း Lesson 68 ႁဝ်းလႆႈႁၼ်ၶေႃႈၵႂၢမ်း **`super`** မႃးယဝ်ႉၶႃႈ။ မိူဝ်ႈႁဝ်းၸႂ်ႉ **Inheritance** (ၵၢၼ်သိုပ်ႇ Class) ၼၼ်ႉ၊ `super` ပဵၼ် "ၶူဝ်" ဢၼ်တေၸွႆးႁႂ်ႈ Class လုၵ်ႈ (Child) ၵပ်းသိုပ်ႇၸူး Class ငဝ်ႈ (Parent) လႆႈၶႃႈဢေႃႈ။

---

#### **1. Super in Constructor (ၵၢၼ်သူင်ႇ Data ၶိုၼ်ႈၼိူဝ်)**
သင်ဝႃႈ Class လုၵ်ႈ မီး `constructor` ႁင်းၵူၺ်းမၼ်း၊ မၼ်း **"လူဝ်ႇလႆႈ"** ႁွင်ႉ `super()` ဢွၼ်တၢင်းပိူၼ်ႈသုတ်းၶႃႈ။
* မၼ်းတေႁွင်ႉ `constructor` ၶွင် Parent ႁႂ်ႈႁဵတ်းၵၢၼ်။
* မၼ်းတေသူင်ႇ Argument ၸိူဝ်းဢၼ် Parent လူဝ်ႇၸႂ်ႉၼၼ်ႉ ၶိုၼ်ႈၵႂႃႇပၼ်ၶႃႈ။

```typescript
class Animal {
  constructor(public name: string) {}
}

class Dog extends Animal {
  constructor(name: string, public breed: string) {
    // 1. လူဝ်ႇႁွင်ႉ super() ဢွၼ်တၢင်း 'this'
    super(name); 
    // 2. ယဝ်ႉယဝ်ႉၸင်ႇမႃးသႂ်ႇ Property ၶွင်တူဝ်မၼ်း
    this.breed = breed;
  }
}
```



---

#### **2. Super in Methods (ၵၢၼ်ၸႂ်ႉ Method ၶွင် Parent)**
မၢင်ပွၵ်ႈ ႁဝ်း Override Method ၶွင် Parent ယဝ်ႉ၊ ၵူၺ်းၵႃႈ ႁဝ်းယင်းတိုၵ်ႉၶႂ်ႈႁႂ်ႈ "Logic ၵဝ်ႇ" ႁဵတ်းၵၢၼ်ၸွမ်းယူႇ။ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`super.methodName()`** တႃႇႁွင်ႉ Method ၶွင် Parent မႃးၸႂ်ႉၶႃႈ။

```typescript
class Mailer {
  send() {
    console.log("Sending basic email...");
  }
}

class PremiumMailer extends Mailer {
  send() {
    // ႁွင်ႉ Logic ၶွင် Parent မႃးၸႂ်ႉဢွၼ်တၢင်း
    super.send(); 
    // ယဝ်ႉၸင်ႇထႅမ် Logic မႂ်ႇၶဝ်ႈၵႂႃႇ
    console.log("Adding premium encryption...");
  }
}

const myMail = new PremiumMailer();
myMail.send(); 
// Output:
// "Sending basic email..."
// "Adding premium encryption..."
```



---

#### **3. Rules of Super (ပိူင်လူဝ်ႇတွၼ်း)**
* **First Line:** ၼႂ်း Constructor, `super()` လူဝ်ႇလႆႈမီးတီႈ Line ဢွၼ်တၢင်းပိူၼ်ႈသုတ်း (တေႃႉတႄႉၼႃႈ `this`)။
* **Mandatory:** သင် Class လုၵ်ႈမီး Constructor, `super()` ပဵၼ်လွင်ႈတိုၵ်းၵၢၼ် (Mandatory)။
* **Context:** `super` ၸီႉၵႂႃႇတီႈ **Prototype** ၶွင် Parent Class ၶႃႈဢေႃႈ။

---

#### **4. Summary Checklist**
- [ ] ၸႂ်ႉ `super()` တႃႇသူင်ႇ Argument ၵႂႃႇပၼ် Parent Constructor။
- [ ] ၼႄႇၸႂ်ဝႃႈ ႁွင်ႉ `super()` ဢွၼ်တၢင်းတေၸႂ်ႉ `this` ၼႂ်း Child Constructor။
- [ ] ၸႂ်ႉ `super.methodName()` တႃႇဢဝ် Logic ၶွင် Parent မႃးၸႂ်ႉၶိုၼ်းၼႂ်း Override Method။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `super` ၸွႆးႁႂ်ႈႁဝ်း "Reuse" လႄႈ "Extend" Logic ၵဝ်ႇလႆႈငၢႆႈငၢႆႈ။

---