### **Lesson 37: Union Types (Handling multiple types)**

ၼႂ်း TypeScript ၼႆႉ ၵႆႉမီးလွင်ႈတၢင်းဢၼ် Variable တူဝ်ၼိုင်ႈ ၸၢင်ႈပဵၼ်လႆႈတင်း `string` ဢမ်ႇၼၼ် `number` ၶႃႈ။ တႅၼ်းတွၼ်ႈတႃႇႁဝ်းတေၸႂ်ႉ `any` (ဢၼ်ဢမ်ႇမီး Type Safety ၼၼ်ႉ)၊ ႁဝ်းတေၸႂ်ႉ **Union Types** လူၺ်ႈၶိူင်ႈမၢႆ **`|`** (Pipe) တႃႇမၢႆဝႃႈ "ပဵၼ်လႆႈတင်းသွင်မဵဝ်း" ၼႆၶႃႈဢေႃႈ။

---

#### **1. Basic Union Syntax**
ႁဝ်းၸၢင်ႈမၢႆ Type ဝႆႉလၢႆလၢႆမဵဝ်း ၸွမ်းၵၼ်လႆႈၶႃႈ။

```typescript
let id: string | number;

id = 101;      // ✅ OK (number)
id = "ST-001"; // ✅ OK (string)

// id = true;  // ❌ Error: Type 'boolean' is not assignable to 'string | number'
```



---

#### **2. Union in Arrays**
သင်ဝႃႈၼႂ်းသဵၼ်ႈမၢႆ (Array) ၼၼ်ႉ ႁဝ်းၶႂ်ႈႁပ်ႉဢဝ်ၶေႃႈမုၼ်းလၢႆမဵဝ်းပူၼ်းၵၼ်ၸိုင် ႁဝ်းၸၢင်ႈတႅမ်ႈၸိူဝ်ႉၼႆၶႃႈ:

```typescript
let scores: (string | number)[] = [90, "A+", 85, "B"];
```

---

#### **3. Union in Functions (လွင်ႈၸႂ်ႉတေႉ)**
ဢၼ်ၼႆႉမီးၽွၼ်းလီၼႃႇ မိူဝ်ႈႁဝ်းသၢင်ႈ Function ဢၼ်ႁပ်ႉဢဝ် Parameter လၢႆလၢႆမဵဝ်းၶႃႈ။

```typescript
function printId(id: string | number) {
  console.log(`Your ID is: ${id}`);
}

printId(123);      // ✅ OK
printId("M-99");   // ✅ OK
```

---

#### **4. ၶေႃႈသင်ႇ (The Challenge with Unions)**
မိူဝ်ႈႁဝ်းၸႂ်ႉ Union Type ယဝ်ႉ၊ TypeScript တေ "ယၢင်ႇသတိ" (Cautious) ၼႃႇၶႃႈ။ မၼ်းတေပၼ်ႁဝ်းၸႂ်ႉ Method ဢၼ် **"မီးမိူၼ်ၵၼ်"** (Common Methods) ၼႂ်းတင်းသွင် Type ၼၼ်ႉၵူၺ်း။

* **တူဝ်ယၢင်ႇ:** သင် `id` ပဵၼ် `string | number` ၸိုင် ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ `.toUpperCase()` ၵမ်းလဵဝ်လႆႈ၊ ယွၼ်ႉဝႃႈ `number` ဢမ်ႇမီး Method ၼၼ်ႉၶႃႈ။

တွၼ်ႈတႃႇတေၵႄႈလွင်ႈၼႆႉ ႁဝ်းလူဝ်ႇလႆႈႁဵၼ်းလွင်ႈ **Type Guarding** (ၵၢၼ်ၸႅၵ်ႇ Type) ၼႂ်း Lesson တေႃႇၵႂႃႇၶႃႈဢေႃႈ။

---

#### **5. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `|` တႃႇႁပ်ႉၶေႃႈမုၼ်းလၢႆမဵဝ်း (Union)။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Union ၸွႆးႁႄႉၵႅတ်ႇလွင်ႈၸႂ်ႉ `any`။
- [ ] ႁူႉလၢႆးၸႂ်ႉ Union ၼႂ်း Arrays လႄႈ Function Parameters။
- [ ] ပွင်ႇၸႂ်ဝႃႈ မိူဝ်ႈၸႂ်ႉ Union ယဝ်ႉ လူဝ်ႇလႆႈၸႅတ်ႈထတ်း Type မၼ်းၵေႃႈပိုင်ႈ (Narrowing)။

---