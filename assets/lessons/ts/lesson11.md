### **Lesson 11: Literal Types (Creating strict constants)**

ၼႂ်း TypeScript ၼႆႉ ႁဝ်းဢမ်ႇၵူၺ်းမၢႆလႆႈဝႃႈ Variable ၼၼ်ႉပဵၼ် "လိၵ်ႈ (string)" ဢမ်ႇၼၼ် "တူဝ်ၼပ်ႉ (number)" လၢႆလၢႆၶႃႈ။ ႁဝ်းယင်းၸၢင်ႈမၢႆလႆႈဝႃႈ မၼ်းလူဝ်ႇလႆႈပဵၼ် **"ၵႃႈၶၼ်ဢၼ်ၼႆႉဢၼ်လဵဝ်ၵူၺ်း"** ၶႃႈဢေႃႈ။ ဢၼ်ၼႆႉ ႁဝ်းႁွင်ႉဝႃႈ **Literal Types** ၶႃႈ။

---

#### **1. Literal Types ပဵၼ်သင်?**
Literal Types မၢႆထိုင် ၵၢၼ်ဢဝ် "ၵႃႈၶၼ် (Value)" မႃးႁဵတ်းပဵၼ် "Type" ၶႃႈ။ မၼ်းတေႁဵတ်းႁႂ်ႈ Variable ၼၼ်ႉ သိမ်းလႆႈၵႃႈၶၼ်ဢၼ်ႁဝ်းမၢႆဝႆႉၼၼ်ႉၵူၺ်း၊ သႂ်ႇတၢင်ႇဢၼ်ဢမ်ႇလႆႈၶႃႈ။

**တူဝ်ယၢင်ႇ (Example):**
```typescript
let direction: "North";

direction = "North"; // ✅ မႅၼ်ႈယူႇ
// direction = "South"; // ❌ Error: Type '"South"' is not assignable to type '"North"'.
```

---

#### **2. ၵၢၼ်ၸႂ်ႉ Literal ႁူမ်ႈၸွမ်း Union**
လၢႆးၸႂ်ႉဢၼ်မီးၽွၼ်းလီသုတ်းတႄႉ ပဵၼ်ၵၢၼ်ဢဝ် Literal Types မႃးႁူမ်ႈၵၼ်လူၺ်ႈ Pipe (`|`) ၶႃႈ။ မၼ်းတေမိူၼ်ၼင်ႇႁဝ်းသၢင်ႈ **"တၢင်းလိူၵ်ႈ (Options)"** ဝႆႉပၼ်လုၵ်ႈႁဵၼ်းၶႃႈဢေႃႈ။

```typescript
let status: "loading" | "success" | "error";

status = "loading"; // ✅ မႅၼ်ႈယူႇ
status = "success"; // ✅ မႅၼ်ႈယူႇ
// status = "pending"; // ❌ Error: "pending" ဢမ်ႇမီးၼႂ်းတၢင်းလိူၵ်ႈ 3 ဢၼ်ၼၼ်ႉ။
```



---

#### **3. Literal Types ၸွမ်းတူဝ်ၼပ်ႉ (Numeric Literals)**
ႁဝ်းၸႂ်ႉၸွမ်းတူဝ်ၼပ်ႉၵေႃႈလႆႈၶႃႈ။ ၵႆႉၸႂ်ႉတႃႇမၢႆၵႃႈၶၼ်ဢၼ်တႅတ်ႈတေႃး။

```typescript
let diceRoll: 1 | 2 | 3 | 4 | 5 | 6;

diceRoll = 3; // ✅ မႅၼ်ႈယူႇ
// diceRoll = 7; // ❌ Error: 7 ဢမ်ႇမႅၼ်ႈၸွမ်း Type ဢၼ်မၢႆဝႆႉ။
```

---

#### **4. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
* **Safety:** မၼ်းႁႄႉၵႅတ်ႇလွင်ႈတႅမ်ႈလိၵ်ႈၽိတ်း (Typo)။ ၼင်ႇတႅမ်ႈ "Success" တႅၼ်း "success"။
* **Documentation:** မိူဝ်ႈၵူၼ်းတၢင်ႇၵေႃႉမႃးဢၢၼ်ႇၶူတ်ႉႁဝ်း ၶဝ်တေႁူႉၵမ်းလဵဝ်ဝႃႈ Variable ၼႆႉ သႂ်ႇၵႃႈၶၼ်သင်လႆႈၽေႈ။
* **Autocomplete:** မိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ `=` ၼႂ်း VS Code မၼ်းတေမီး Options ပေႃႇမႃးႁႂ်ႈလိူၵ်ႈၵမ်းလဵဝ်ၶႃႈ။



---

#### **5. Summary Checklist**
- [ ] ပွင်ႇၸႂ်ဝႃႈ Literal Types မၢႆထိုင်ၵၢၼ်မၢႆ "ၵႃႈၶၼ်တႅတ်ႈတေႃး" ႁႂ်ႈပဵၼ် Type။
- [ ] ႁူႉလၢႆးၸႂ်ႉ Literal Types ႁူမ်ႈၸွမ်း Union (`|`) တႃႇသၢင်ႈတၢင်းလိူၵ်ႈ (Options)။
- [ ] ႁူႉဝႃႈ TypeScript တေၸွႆးထတ်းပၼ် ႁႂ်ႈၵႃႈၶၼ်မႅၼ်ႈၸွမ်းတၢင်းလိူၵ်ႈၵူၺ်း။

---