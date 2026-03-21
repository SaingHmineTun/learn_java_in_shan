### **Lesson 29: Readonly & Optional Properties in Objects**

ၼႂ်း TypeScript ၼႆႉ ႁဝ်းဢမ်ႇၵူၺ်းမၢႆ Type ပၼ် Property လႆႈၵူၺ်းၶႃႈ၊ ႁဝ်းယင်းၸၢင်ႈ "ၵႅတ်ႇၶႄ" (Protect) ဢမ်ႇၼၼ် "ပၼ်သုၼ်ႇ" (Allow) ႁႂ်ႈ Property ၼၼ်ႉ မီးလွင်ႈပႅၵ်ႇပိူင်ႈၵၼ်လႆႈထႅင်ႈၶႃႈဢေႃႈ။

---

#### **1. Optional Properties (`?`)**
မိူၼ်ၼင်ႇႁဝ်းႁဵၼ်းမႃးၼႂ်း Functions ၼၼ်ႉၶႃႈ၊ ၼႂ်း Object ၵေႃႈ ႁဝ်းၸၢင်ႈမၢႆ Property ဝႃႈ "တေသူင်ႇၵေႃႈလႆႈ ဢမ်ႇသူင်ႇၵေႃႈလႆႈ" ၶႃႈ။ ႁဝ်းတေၸႂ်ႉ **`?`** ဝႆႉၽၢႆႇလင်ၸိုဝ်ႈ Property ၼၼ်ႉၶႃႈ။

```typescript
interface User {
  id: number;
  username: string;
  phone?: string; // Optional: ဢမ်ႇမီးၵေႃႈဢမ်ႇပဵၼ်သင်
}

const user1: User = { id: 1, username: "saimao" }; // ✅ မႅၼ်ႈယူႇ
const user2: User = { id: 2, username: "kham", phone: "09123456" }; // ✅ မႅၼ်ႈယူႇ
```



---

#### **2. Readonly Properties (`readonly`)**
ၵႆႉမီးလွင်ႈတၢင်းဢၼ်ႁဝ်းၶႂ်ႈႁႂ်ႈ Property ၼိုင်ႈဢၼ် "ပၼ်ဢၢၼ်ႇလႆႈၵူၺ်း၊ မႄးဢမ်ႇလႆႈ" (Immutable) ဝၢႆးသေပၼ်ၵႃႈၶၼ်ၵမ်းဢွၼ်တၢင်းယဝ်ႉ။ ႁဝ်းတေၸႂ်ႉၶေႃႈၵႂၢမ်း **`readonly`** ဝႆႉၽၢႆႇၼႃႈၸိုဝ်ႈ Property ၼၼ်ႉၶႃႈ။

```typescript
interface Point {
  readonly x: number;
  readonly y: number;
}

let p1: Point = { x: 10, y: 20 };

// p1.x = 5; 
// ❌ Error: Cannot assign to 'x' because it is a read-only property.
```



---

#### **3. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
* **Data Integrity:** ႁႄႉၵႅတ်ႇလွင်ႈမႄးၶေႃႈမုၼ်းဢၼ်ဢမ်ႇလူဝ်ႇလႅၵ်ႈလၢႆႈ (ၼင်ႇ `id` ဢမ်ႇၼၼ် `API_KEY`)။
* **Flexibility:** ႁဵတ်းႁႂ်ႈ Object ႁဝ်းႁပ်ႉၶေႃႈမုၼ်းလႆႈလၢႆလၢႆပိူင် (ၼင်ႇ ၵူၼ်းမၢင်ၵေႃႉဢမ်ႇမီး Email)။
* **Bug Prevention:** TypeScript တေၸွႆးထတ်းပၼ် ႁႂ်ႈႁဝ်းဢမ်ႇလူင်ၵႂႃႇမႄးၵႃႈၶၼ်ဢၼ်ႁဝ်း "ႁၢမ်ႈဝႆႉ" ၼၼ်ႉၶႃႈ။

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `?` တႃႇမၢႆ Property ဢၼ်ဢမ်ႇသူင်ႇၵေႃႈလႆႈ။
- [ ] ႁူႉလၢႆးၸႂ်ႉ `readonly` တႃႇႁၢမ်ႈမႄးၵႃႈၶၼ် (Write-protect)။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `readonly` ၸွႆးႁႄႉၵႅတ်ႇ Bug မိူဝ်ႈတႅမ်ႈပရူဝ်ႇၵရႅမ်ႇယႂ်ႇယႂ်ႇ။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇလိူၵ်ႈၸႂ်ႉမႅၼ်ႈၸွမ်းၼင်ႇလွင်ႈတၢင်း (Optional vs Readonly)။

---