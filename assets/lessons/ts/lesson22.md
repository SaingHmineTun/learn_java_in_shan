### **Lesson 22: Function Types (Defining function signatures)**

ၼႂ်း TypeScript ၼႆႉ ႁဝ်းဢမ်ႇၵူၺ်းမၢႆ Type ပၼ် Variable ပဵၼ် `string` ဢမ်ႇၼၼ် `number` လၢႆလၢႆၶႃႈ။ ႁဝ်းယင်းၸၢင်ႈမၢႆ **Type ပၼ် Function** ႁင်းၵူၺ်းၵေႃႈလႆႈၶႃႈဢေႃႈ။ ဢၼ်ၼႆႉ ႁဝ်းႁွင်ႉဝႃႈ "Function Signature" ဢၼ်မၢႆထိုင်ဝႃႈ "Function ၼႆႉ လူဝ်ႇမီး Parameter သင်ၽေႈ လႄႈ တေသူင်ႇ Return သင်ဢွၵ်ႇမႃး" ၼၼ်ႉၶႃႈ။

---

#### **1. Function Type ပဵၼ်သင်?**
မၼ်းပဵၼ်ၵၢၼ်သၢင်ႈ "ပိူင် (Template)" ဝႆႉပၼ် Function ၶႃႈ။ ႁဝ်းတေၸႂ်ႉ Arrow Syntax `=>` တႃႇမၢႆ Type မၼ်းၶႃႈ။

**ပိူင်တႅမ်ႈ (Syntax):**
```typescript
let myFunc: (a: number, b: number) => number;
```
* **`(a: number, b: number)`**: မၢႆထိုင် Parameter ဢၼ်မၼ်းတေႁပ်ႉဢဝ်။
* **`=> number`**: မၢႆထိုင် Return Type ဢၼ်မၼ်းတေသူင်ႇဢွၵ်ႇမႃး။

---

#### **2. ၵၢၼ်ၸႂ်ႉၸွမ်း Type Alias**
ဢၼ်ၼႆႉ ပဵၼ်လၢႆးၸႂ်ႉဢၼ် "ၶႅမ်ႉ" သေပိူၼ်ႈၶႃႈ။ ႁဝ်းၸၢင်ႈသၢင်ႈ Type ဝႆႉသေ ဢဝ်ၵႂႃႇၸႂ်ႉၸွမ်း Function လၢႆလၢႆဢၼ်လႆႈၶႃႈ။

```typescript
type MathOp = (x: number, y: number) => number;

const add: MathOp = (a, b) => a + b;
const multiply: MathOp = (a, b) => a * b;

console.log(add(10, 5));      // 15
console.log(multiply(10, 5)); // 50
```



---

#### **3. Callback Function Types**
လၢႆးၸႂ်ႉဢၼ်ယႂ်ႇသုတ်းတႄႉ ပဵၼ်မိူဝ်ႈႁဝ်းတႅမ်ႈ Function ဢၼ်ႁပ်ႉဢဝ် Function တၢင်ႇဢၼ် (Callback) ၶဝ်ႈမႃးၶႃႈ။

```typescript
function processRequest(id: number, callback: (msg: string) => void) {
  console.log("Processing ID: " + id);
  callback("Success!");
}

processRequest(101, (result) => {
  console.log("Status: " + result);
});
```

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးမၢႆ Function Type လူၺ်ႈၸႂ်ႉ `(params) => returnType`။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Function Type ၸွႆးႁႄႉၵႅတ်ႇလွင်ႈသူင်ႇ Function ၽိတ်းပိူင်။
- [ ] ၸႂ်ႉ Type Alias တႃႇသၢင်ႈ Template ႁႂ်ႈ Functions လၢႆဢၼ်ၸႂ်ႉၸွမ်းၵၼ်လႆႈ။
- [ ] ႁူႉလၢႆးၸႂ်ႉ Function Type ၸွမ်း Callback Functions။

---