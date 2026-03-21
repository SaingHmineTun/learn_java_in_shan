### **Lesson 4: First Script (Manual Compilation & Type Erasure)**

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးတႄႇတႅမ်ႈၶူတ်ႉ TypeScript ၾိုင််လ်ဢွၼ်တၢင်းသုတ်း သေတူၺ်းဝႃႈ မၼ်းပိၼ်ႇပဵၼ် JavaScript ၸိူဝ်ႉႁိုဝ်ၶႃႈ။

---

#### **1. တႅမ်ႈၶူတ်ႉ TypeScript ဢွၼ်တၢင်း (Writing TS)**
ပိုတ်ႇ VS Code သေ သၢင်ႈၾိုင််လ် (File) ဢၼ်ၸိုဝ်ႈဝႃႈ `app.ts` ၶႃႈ။ (တွၼ်ႈတႃႇ TypeScript တေလႆႈၸႂ်ႉนามสกุล `.ts` ၵူၺ်းၶႃႈၼႃ)။

တႅမ်ႈၶူတ်ႉၼႆႉသႂ်ႇၼႂ်း `app.ts` ၶႃႈ:
```typescript
let myName: string = "Sai Mao";
let myYear: number = 2026;

console.log("Teacher Name:", myName);
console.log("Current Year:", myYear);
```
* **မၢႆတွၼ်ႈ:** တီႈၼႆႉ ႁဝ်းသႂ်ႇ `: string` လႄႈ `: number` ဝႆႉ။ ဢၼ်ၼႆႉ ပဵၼ်လၢႆးမၢႆမဵဝ်းၶေႃႈမုၼ်း (Type Annotation) ၼႂ်း TS ၶႃႈ။

---

#### **2. ပိၼ်ႇလိၵ်ႈလူၺ်ႈမိုဝ်း (Manual Compilation)**
မိူဝ်ႈႁဝ်းတႅမ်ႈယဝ်ႉ ႁဝ်းတေၸႂ်ႉ Compiler (`tsc`) ပိၼ်ႇမၼ်းၶႃႈ။ ပိုတ်ႇ Terminal ၼႂ်း VS Code သေ တႅမ်ႈဝႃႈ:
```bash
tsc app.ts
```
မိူဝ်ႈတႅမ်ႈယဝ်ႉ ၸဝ်ႈၵဝ်ႇတေလႆႈႁၼ်ၾိုင််လ်မႂ်ႇ ဢၼ်ၸိုဝ်ႈဝႃႈ `app.js` ပေႃႇမႃးၼႂ်း Folder လဵဝ်ၵၼ်ၼၼ်ႉၶႃႈ။

---

#### **3. Type Erasure (ၵၢၼ်မွတ်ႇပႅတ်ႈ Types)**
ၵမ်းၼႆႉ ႁႂ်ႈပိုတ်ႇတူၺ်းၾိုင််လ် `app.js` ဢၼ်မၼ်းပိၼ်ႇပၼ်ၼၼ်ႉၶႃႈ။ ၸဝ်ႈၵဝ်ႇတေႁၼ်ဝႃႈ ၶူတ်ႉမၼ်းလႅၵ်ႈလၢႆႈၵႂႃႇၼင်ႇၼႆ:



**ၼႂ်း `app.js` (JavaScript):**
```javascript
var myName = "Sai Mao";
var myYear = 2026;

console.log("Teacher Name:", myName);
console.log("Current Year:", myYear);
```

* **Type Erasure:** တူဝ် Compiler ၼၼ်ႉ မၼ်းတေ "မွတ်ႇပႅတ်ႈ (Erase)" ၸိူဝ်းပဵၼ် Type Annotations (`: string`, `: number`) ၼၼ်ႉပႅတ်ႈသဵင်ႈသဵင်ႈၶႃႈ။
* **Reason:** Browser (Chrome/Safari) ၶဝ်ဢမ်ႇႁူႉၸႂ် TypeScript။ ၶဝ်ႁူႉၸႂ် JavaScript ဢၼ်လဵဝ်ၵူၺ်း။

---

#### **4. လႅၼ်ႈၶူတ်ႉတူၺ်း (Running the Code)**
တႃႇတေတူၺ်းၽူၼ်မၼ်း (Result) ႁဝ်းတေၸႂ်ႉ Node.js လႅၼ်ႈၾိုင််လ် `.js` ၼၼ်ႉၶႃႈ:
```bash
node app.js
```
*မၼ်းတေဢွၵ်ႇမႃးဝႃႈ:* `Teacher Name: Sai Mao`, `Current Year: 2026` ၶႃႈဢေႃႈ။

---

#### **5. Summary Checklist**
- [ ] သၢင်ႈၾိုင််လ် `.ts` လႆႈယဝ်ႉ။
- [ ] ၸႂ်ႉၶေႃႈၵႂၢမ်း `tsc app.ts` ပိၼ်ႇလိၵ်ႈလႆႈယဝ်ႉ။
- [ ] ႁူႉၸႂ်ဝႃႈ Types ၸိူဝ်းၼၼ်ႉ တေထုၵ်ႇမွတ်ႇပႅတ်ႈ (Erase) မိူဝ်ႈပဵၼ် JavaScript။
- [ ] လႅၼ်ႈၶူတ်ႉလူၺ်ႈ Node.js လႆႈယဝ်ႉ။

---