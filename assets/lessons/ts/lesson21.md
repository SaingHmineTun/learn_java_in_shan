### **Lesson 21: Arrow Functions (The Modern Syntax)**

ၼႂ်း JavaScript လႄႈ TypeScript မႂ်ႇမႂ်ႇၼႆႉ ႁဝ်းမီးလၢႆးတႅမ်ႈ Function ထႅင်ႈမျေဝ်းၼိုင်ႈ ဢၼ်ႁွင်ႉဝႃႈ **Arrow Function** ၶႃႈ။ မၼ်းႁဵတ်းႁႂ်ႈၶူတ်ႉ (Code) ႁဝ်းပွတ်းသေၵဝ်ႇ၊ ႁၢင်ႈလီသေၵဝ်ႇ လႄႈ ၸႂ်ႉလႆႈငၢႆႈလိူဝ်သေၵဝ်ႇၶႃႈဢေႃႈ။

---

#### **1. Arrow Function ပဵၼ်သင်?**
မၼ်းပဵၼ်ၵၢၼ်ၸႂ်ႉၶိူင်ႈမၢႆ **`=>`** (မိူၼ်ၼင်ႇ တူဝ်မၢႆလႅၼ်း - Arrow) တႅၼ်းၶေႃႈၵႂၢမ်း `function` ၶႃႈ။

**တႅၵ်ႈၼိူင်းတူၺ်း လၢႆးတႅမ်ႈၵဝ်ႇ လႄႈ လၢႆးတႅမ်ႈမႂ်ႇ:**

* **လၢႆးၵဝ်ႇ (Function Declaration):**
    ```typescript
    function add(a: number, b: number): number {
      return a + b;
    }
    ```

* **လၢႆးမႂ်ႇ (Arrow Function):**
    ```typescript
    const add = (a: number, b: number): number => {
      return a + b;
    };
    ```



---

#### **2. ၵၢၼ်တႅမ်ႈႁႂ်ႈပွတ်းသုတ်း (Concise Body)**
သင်ဝႃႈ Function ႁဝ်းမီးၵူၺ်း "သဵၼ်ႈလဵဝ်" သေ သူင်ႇၵႃႈၶၼ် (Return) ဢွၵ်ႇမႃးၵမ်းလဵဝ်ၸိုင် ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `{ }` လႄႈ ၶေႃႈၵႂၢမ်း `return` ၵေႃႈလႆႈၶႃႈ။

```typescript
// ပွတ်းလိူဝ်သေၵဝ်ႇ!
const multiply = (a: number, b: number): number => a * b;

console.log(multiply(5, 4)); // 20
```

---

#### **3. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ Arrow Function?**
* **Callback Functions:** မိူဝ်ႈႁဝ်းသူင်ႇ Function ၶဝ်ႈၵႂႃႇၼႂ်း Function တၢင်ႇဢၼ် (ၼင်ႇ `map`, `filter`, `forEach`)။
* **Short Logic:** တွၼ်ႈတႃႇၵၢၼ်ၼပ်ႉသွၼ်ႇပွတ်းပွတ်း။
* **Lexical `this`:** ၼႂ်းၵၢၼ်တႅမ်ႈ OOP (Classes)၊ Arrow Function တေဢမ်ႇသၢင်ႈ `this` မႂ်ႇ၊ မၼ်းတေၸႂ်ႉ `this` ၶွင်တူဝ်ဢၼ်ယူႇဝႆႉၼၼ်ႉၵမ်းလဵဝ် (ဢၼ်ၼႆႉ ၸွႆးႁႄႉၵႅတ်ႇ Bug လႆႈၼမ်ၶႃႈ)။



---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `=>` တႅၼ်းၶေႃႈၵႂၢမ်း `function`။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Arrow Function လူဝ်ႇလႆႈသိမ်းဝႆႉၼႂ်း `const` ဢမ်ႇၼၼ် `let`။
- [ ] ႁူႉလၢႆးတႅမ်ႈ "သဵၼ်ႈလဵဝ်" (Implicit Return) လူၺ်ႈဢမ်ႇၸႂ်ႉ `{ }` လႄႈ `return`။
- [ ] ႁူႉဝႃႈ Arrow Function ပဵၼ်မၢတ်ႇထၢၼ် (Standard) ၼႂ်းၵၢၼ်တႅမ်ႈ Web/Mobile မႂ်ႇမႂ်ႇ။

---