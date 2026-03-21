### **Lesson 79: Method & Property Decorators (Controlling behavior)**

ၼႂ်း Lesson ဢွၼ်တၢင်း ႁဝ်းလႆႈႁၼ်ၵၢၼ်ၸႂ်ႉ Decorator ဝႆႉၼႃႈ Class မႃးယဝ်ႉၶႃႈ။ ဝၼ်းၼႆႉႁဝ်းတေမႃးတူၺ်း ၵၢၼ်သုပ်ႇ Decorator ဝႆႉၼႃႈ **Properties** (Variables) လႄႈ **Methods** (Functions) ၼႂ်း Class ၶႃႈဢေႃႈ။ ၼႆႉပဵၼ်လၢႆးဢၼ်ႁဝ်းတေၵုမ်းထိင်း (Control) ၶေႃႈမုၼ်း လႄႈ ၵၢၼ်ႁဵတ်းၵၢၼ် ႁႂ်ႈမၼ်းမီး "Logic" ဝိသဵတ်ႇၶဝ်ႈမႃးၶႃႈ။

---

#### **1. Property Decorators (ၼႃႈ Variable)**
Property Decorator တေႁပ်ႉဢဝ် Argument 2 တူဝ်:
1.  **Target:** `Prototype` ၶွင် Class ၼၼ်ႉ။
2.  **PropertyName:** ၸိုဝ်ႈၶွင် Property ၼၼ်ႉ (string)။



```typescript
function LogProperty(target: any, propertyName: string) {
  console.log("Property decorator!");
  console.log(target, propertyName);
}

class Product {
  @LogProperty // သုပ်ႇဝႆႉၼႃႈ Property
  title: string;
  private _price: number;

  constructor(t: string, p: number) {
    this.title = t;
    this._price = p;
  }
}
```

---

#### **2. Method Decorators (ၼႃႈ Function)**
Method Decorator တေႁပ်ႉဢဝ် Argument 3 တူဝ်:
1.  **Target:** `Prototype` ၶွင် Class။
2.  **Name:** ၸိုဝ်ႈၶွင် Method ၼၼ်ႉ။
3.  **Descriptor:** တူဝ်ဢၼ်ၵုမ်းထိင်း Method ၼၼ်ႉ (ၸၢင်ႈမႄး Logic ၼႂ်း Method လႆႈ!)။



```typescript
function LogMethod(target: any, name: string, descriptor: PropertyDescriptor) {
  console.log("Method decorator!");
  console.log(target);
  console.log(name);
  console.log(descriptor);
}

class Product {
  @LogMethod // သုပ်ႇဝႆႉၼႃႈ Method
  getPriceWithTax(tax: number) {
    return this._price * (1 + tax);
  }
}
```

---

#### **3. Real-world Use Case: Autobind**
တူဝ်ယၢင်ႇ ဢၼ်ၸႂ်ႉတေႉတေႉ ပဵၼ်ၵၢၼ်ႁဵတ်း **Autobind** တွၼ်ႈတႃႇႁႂ်ႈ `this` ၼႂ်း Method ၸီႉၵႂႃႇတီႈ Object တူဝ်ၼၼ်ႉတႃႇသေႇ (မိူၼ်ၼင်ႇ မိူဝ်ႈႁဝ်းၸႂ်ႉ Event Listener ၼႂ်း Website)။

```typescript
function Autobind(_: any, _2: string, descriptor: PropertyDescriptor) {
  const originalMethod = descriptor.value;
  const adjDescriptor: PropertyDescriptor = {
    configurable: true,
    enumerable: false,
    get() {
      // 'this' တီႈၼႆႉ တေပဵၼ် Object တူဝ်ဢၼ်ႁွင်ႉၸႂ်ႉမၼ်း
      return originalMethod.bind(this);
    }
  };
  return adjDescriptor;
}

class Printer {
  message = "This works!";

  @Autobind
  showMessage() {
    console.log(this.message);
  }
}

const p = new Printer();
const button = document.querySelector('button')!;
button.addEventListener('click', p.showMessage); // ✅ 'this' တေဢမ်ႇႁၢႆ ယွၼ်ႉမီး Autobind
```

---

#### **4. Summary Checklist**
- [ ] ႁူႉဝႃႈ Property Decorator ႁပ်ႉဢဝ် `target` လႄႈ `propertyName`။
- [ ] ႁူႉဝႃႈ Method Decorator ႁပ်ႉဢဝ် **`PropertyDescriptor`** တွၼ်ႈတႃႇမႄး Logic ၼႂ်း Method။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Decorators ၸိူဝ်းၼႆႉ ႁဵတ်းၵၢၼ်မိူဝ်ႈ Class ထုၵ်ႇ **Defined**။
- [ ] ၸႂ်ႉ Method Decorator တႃႇႁဵတ်း Task ဢၼ်သုၵ်ႉယၢင်ႈ ၼင်ႇ Autobind ဢမ်ႇၼၼ် Validation။

---
