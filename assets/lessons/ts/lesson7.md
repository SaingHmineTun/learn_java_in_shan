## Lesson 7: Primitive Types (string, number, and boolean)

ၼႂ်း TypeScript ၼႆႉ လွင်ႈပိူင်လူင်သုတ်းၵေႃႈ ပဵၼ်ၵၢၼ်မၢႆဝႆႉဝႃႈ ဝေႇရီႇယေႇပူဝ်ႇ (Variable) ၼိုင်ႈဢၼ် တေသိမ်းၶေႃႈမုၼ်း "မဵဝ်းလႂ်" ၶႃႈဢေႃႈ။ ႁဝ်းတေၸႂ်ႉၶိူင်ႈမၢႆ **Colon (`:`)** တႃႇမၢႆ Type မၼ်းၶႃႈ။

### 1. String (လိၵ်ႈ)
ၸႂ်ႉတႃႇသိမ်းတူဝ်လိၵ်ႈ ဢမ်ႇၼၼ် ၶေႃႈၵႂၢမ်း။ ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ Single quote (`'`), Double quote (`"`) ဢမ်ႇၼၼ် Backtick (`` ` ``) กေႃႈလႆႈၶႃႈ။
```typescript
let courseName: string = "TypeScript for Beginners";
let teacher: string = 'Sai Mao';
let welcomeMessage: string = `Welcome to ${courseName} by ${teacher}`;
```

### 2. Number (တူဝ်ၼပ်ႉ)
ၼႂ်း TypeScript ၼႆႉ မၼ်းဢမ်ႇၸႅၵ်ႇ `int` (တူဝ်ၼပ်ႉတဵမ်) ဢမ်ႇၼၼ် `float` (တူဝ်ၼပ်ႉမီးၸူတ်ႉ) မိူၼ်ၼင်ႇ Java ၶႃႈ။ မၼ်းၸႂ်ႉ `number` တူဝ်လဵဝ်ၵူၺ်း တႃႇၵူႈမဵဝ်းၶႃႈ။
```typescript
let price: number = 99.99;    // Floating point
let students: number = 50;     // Integer
let hex: number = 0xf00d;      // Hexadecimal
let binary: number = 0b1010;   // Binary
```

### 3. Boolean (ၸႂ်ႈ/ဢမ်ႇၸႂ်ႈ)
ၸႂ်ႉတႃႇသိမ်းၵႃႈၶၼ်ဢၼ်မီးၵူၺ်း 2 မဵဝ်း ၼၼ်ႉၵေႃႈပဵၼ် `true` (ၸႂ်ႈ) လႄႈ `false` (ဢမ်ႇၸႂ်ႈ) ၶႃႈ။
```typescript
let isCompleted: boolean = false;
let hasCertificate: boolean = true;
```

---

### ⚠️ ၵၢၼ်ၵႅတ်ႇၶႄၶွင် TypeScript (Type Safety)
တီႈလီမၼ်းတႄႉ သင်ၸဝ်ႈၵဝ်ႇမၢႆ Type ဝႆႉယဝ်ႉသေ သမ်ႉၵႂႃႇသႂ်ႇၶေႃႈမုၼ်းၽိတ်းမဵဝ်းမၼ်း TypeScript တေပၼ် Error ၵမ်းလဵဝ်ၶႃႈ။



**တူဝ်ယၢင်ႇ (Example):**
```typescript
let age: number = 25;

// သင်မႄးပဵၼ်လိၵ်ႈ ၼင်ႇၼႆ:
age = "Twenty Five"; 

// ❌ Error: Type 'string' is not assignable to type 'number'.
```
*ပရူဝ်ႇၵရႅမ်ႇတေဢမ်ႇပၼ် Compile ပဵၼ် JavaScript တေႃႇၸဝ်ႈၵဝ်ႇတေမႄးႁႂ်ႈမၼ်းမႅၼ်ႈၶႃႈ။*

---

### 📝 Summary Checklist တႃႇလုၵ်ႈႁဵၼ်း
- [ ] ႁူႉလၢႆးၸႂ်ႉ `:` (Type Annotation) တႃႇမၢႆ Type။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `number` ၸႂ်ႉလႆႈတင်းတူဝ်ၼပ်ႉတဵမ် လႄႈ တူဝ်ၼပ်ႉမီးၸူတ်ႉ။
- [ ] ႁူႉဝႃႈ TypeScript တေႁႄႉၵႅတ်ႇလွင်ႈသႂ်ႇၶေႃႈမုၼ်းၽိတ်းမဵဝ်း (Type Mismatch)။

---
