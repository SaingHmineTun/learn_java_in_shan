### **Lesson 33: Tuples (Fixed-length and mixed-type arrays)**

ၼႂ်း TypeScript ၼႆႉ **Tuple** ပဵၼ် Array မဵဝ်းပိူင်ၼိုင်ႈ ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉဝႃႈ "မၼ်းတေမီးၶေႃႈမုၼ်းလၢႆတူဝ်" (Fixed Length) လႄႈ "တူဝ်လႂ်ပဵၼ် Type သင်" (Fixed Types) ၼၼ်ႉၶႃႈ။ မၼ်းလီသုတ်းတွၼ်ႈတႃႇသိမ်းၶေႃႈမုၼ်းဢၼ်မီးပိူင်တႅတ်ႈတေႃး ၼင်ႇ API Response ဢမ်ႇၼၼ် Coordinates ၶႃႈ။

---

#### **1. Tuple Syntax (ပိူင်တႅမ်ႈ)**
ႁဝ်းတေမၢႆ Type ဝႆႉၼႂ်း `[ ]` ၸွမ်းၼင်ႇလႃလႃၸၼ်ႉ (Order) ဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉၶႃႈ။

```typescript
// မၢႆဝႆႉဝႃႈ: တူဝ်ၵမ်း 1 ပဵၼ် number, တူဝ်ၵမ်း 2 ပဵၼ် string
let student: [number, string];

student = [101, "Sai Mao"]; // ✅ မႅၼ်ႈယူႇ
// student = ["Sai Mao", 101]; // ❌ Error: Type string is not assignable to number
```



---

#### **2. ၵွပ်ႈသင်လႄႈၸႂ်ႉ Tuple တႅၼ်း Array?**
သင်ဝႃႈႁဝ်းၸႂ်ႉ Array ရူဝ်းရူဝ်း ၼင်ႇ `(string | number)[]` ၸိုင် ႁဝ်းတေဢမ်ႇႁူႉဝႃႈ တူဝ်လႂ်ယူႇတီႈလႂ်ၶႃႈ။ ၵူၺ်းၵႃႈ Tuple တေၸွႆးထတ်းပၼ် ႁႂ်ႈတႅတ်ႈတေႃးၵူႈတူဝ်ၶႃႈ။

* **RGB Color:** `[number, number, number]` (ၼႄႇၸႂ်ဝႃႈမီး 3 တူဝ်တႃႇသေႇ)
* **HTTP Response:** `[number, string]` (ၼင်ႇ `[404, "Not Found"]`)
* **Coordinates:** `[number, number]` (ၼင်ႇ `[23.8, 97.9]`)

---

#### **3. Optional Elements in Tuples**
ႁဝ်းယင်းၸၢင်ႈမၢႆဝႃႈ ၶေႃႈမုၼ်းတူဝ်လင်ၼၼ်ႉ "တေမီးၵေႃႈလႆႈ ဢမ်ႇမီးၵေႃႈလႆႈ" လူၺ်ႈၵၢၼ်ၸႂ်ႉ **`?`** ၶႃႈ။

```typescript
let point: [number, number, number?];

point = [10, 20];      // ✅ OK (2 values)
point = [10, 20, 30];  // ✅ OK (3 values)
```

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `[type, type]` တႃႇသၢင်ႈ Tuple ဢၼ်မီးတၢင်းယၢဝ်းတႅတ်ႈတေႃး။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Order (လမ်ႇၼပ်ႉ) ၼႂ်း Tuple ပဵၼ်လွင်ႈယႂ်ႇသုတ်း။
- [ ] ၸႂ်ႉ `?` တႃႇမၢႆ Optional Element ၼႂ်း Tuple။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇသူင်ႇ Type ပႅၵ်ႇပိူင်ႈ ၶဝ်ႈၵႂႃႇၼႂ်း Position ဢၼ်မၢႆဝႆႉယဝ်ႉ။

---
