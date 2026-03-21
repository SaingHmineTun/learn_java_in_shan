### **Lesson 50: Generic Constraints (Limiting types with 'extends')**

ၼႂ်း Lesson 49 ၼၼ်ႉ ႁဝ်းလႆႈႁၼ်ဝႃႈ **Generics (`<T>`)** ၸၢင်ႈႁပ်ႉဢဝ် "ၵူႈ Type" (Any Type) ၶႃႈ။ ၵူၺ်းၵႃႈ မၢင်ပွၵ်ႈ ႁဝ်းဢမ်ႇၶႂ်ႈႁပ်ႉၵူႈမဵဝ်းတေႉတေႉၶႃႈ။ ႁဝ်းၶႂ်ႈမၵ်းမၼ်ႈဝႃႈ "Type ဢၼ်သူင်ႇၶဝ်ႈမႃးၼၼ်ႉ လူဝ်ႇမီး Property ဢၼ်ႁဝ်းလူဝ်ႇၸႂ်ႉ" ၼႆၶႃႈဢေႃႈ။

ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း **`extends`** တႃႇႁဵတ်း **Generic Constraints** (ၵၢၼ်မၵ်းမၼ်ႈၶွပ်ႇ) ၶႃႈ။

---

#### **1. The Problem: Too much freedom**
သင်ႁဝ်းတႅမ်ႈ Function တႃႇဢၢၼ်ႇ `.length` ၸိုင်:

```typescript
function countThings<T>(arg: T): number {
  // ❌ Error: Property 'length' does not exist on type 'T'.
  return arg.length; 
}
```
ယွၼ်ႉဝႃႈ `T` ၸၢင်ႈပဵၼ် `number` (ဢၼ်ဢမ်ႇမီး `.length`) ၵေႃႈလႆႈ၊ TypeScript ၸင်ႇဢမ်ႇပၼ်ႁဝ်းၸႂ်ႉ `.length` ၵမ်းလဵဝ်ၶႃႈ။

---

#### **2. The Solution: Using `extends`**
ႁဝ်းတေ "သင်ႇဝႆႉ" ဝႃႈ `T` လူဝ်ႇမီး Property ဢၼ်ႁဝ်းလူဝ်ႇ (ၼင်ႇ `length`) ၼၼ်ႉဢွၼ်တၢင်းၶႃႈ။

```typescript
interface Lengthy {
  length: number;
}

// မၢႆထိုင်ဝႃႈ: T ၸၢင်ႈပဵၼ် Type သင်ၵေႃႈလႆႈ ဢၼ်မီး .length ဝႆႉ
function countThings<T extends Lengthy>(arg: T): number {
  return arg.length; // ✅ ယၢမ်းၼႆႉ TypeScript ၼႄႇၸႂ်ဝႃႈ arg မီး .length ယဝ်ႉ
}

console.log(countThings("Hello Muse")); // ✅ OK (string မီး length)
console.log(countThings([1, 2, 3]));     // ✅ OK (array မီး length)
// console.log(countThings(100));        // ❌ Error: number ဢမ်ႇမီး length
```



---

#### **3. Constraints with `keyof`**
ႁဝ်းယင်းၸၢင်ႈမၵ်းမၼ်ႈဝႃႈ Parameter တူဝ်ၼိုင်ႈ လူဝ်ႇပဵၼ် "Key" ဢၼ်မီးၼႂ်း Object ၼိုင်ႈဢၼ်ၵူၺ်း ၼႆၵေႃႈလႆႈၶႃႈ။

```typescript
function getPropertyValue<T extends object, K extends keyof T>(obj: T, key: K) {
  return obj[key];
}

const person = { name: "Sai Mao", age: 25 };

getPropertyValue(person, "name"); // ✅ OK
// getPropertyValue(person, "job"); // ❌ Error: "job" ဢမ်ႇမီးၼႂ်း person
```

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `T extends InterfaceName` တႃႇမၵ်းမၼ်ႈၶွပ်ႇပၼ် Generic။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `extends` ၸွႆးႁႂ်ႈႁဝ်းၸႂ်ႉ Property ၼႂ်း Generic လႆႈလူၺ်ႈဢမ်ႇမီး Error။
- [ ] ႁူႉလၢႆးၸႂ်ႉ `keyof` တႃႇမၵ်းမၼ်ႈ Key ႁႂ်ႈမႅၼ်ႈၸွမ်း Object။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇမၵ်းမၼ်ႈ "ၵႅပ်ႈ" ပူၼ်းတီႈ (Don't over-constrain) ႁႂ်ႈမၼ်းယင်း Flexible ယူႇ။

---