### **Lesson 30: Index Signatures (Handling dynamic property names)**

မီးလွင်ႈတၢင်းဢၼ်ႁဝ်းဢမ်ႇႁူႉၸိုဝ်ႈ Property တႅတ်ႈတေႃး (ၼင်ႇ Dictionary ဢမ်ႇၼၼ် Translation Object)၊ ၵူၺ်းၵႃႈ ႁဝ်းႁူႉဝႃႈ **"Key"** မၼ်းတေပဵၼ် String သေ **"Value"** မၼ်းတေပဵၼ် Type သင်ၼႆၶႃႈ။ ၼႂ်း TypeScript ႁဝ်းတေၸႂ်ႉ **Index Signatures** တႃႇႁပ်ႉၶေႃႈမုၼ်းၸိူဝ်းၼၼ်ႉၶႃႈ။

---

#### **1. Index Signature ပဵၼ်သင်?**
မၼ်းပဵၼ်လၢႆးမၢႆ Type ဢၼ်ပၼ်သုၼ်ႇႁႂ်ႈ Object မီး Property လၢႆလၢႆဢၼ်လူၺ်ႈဢမ်ႇလူဝ်ႇတင်ႈၸိုဝ်ႈဝႆႉဢွၼ်တၢင်းၶႃႈ။

**ပိူင်တႅမ်ႈ (Syntax):**
ႁဝ်းတေၸႂ်ႉဝူင်းလဵၵ်းၵႅင်ႈ `[key: T]` ဝႆႉၼႂ်း Interface ဢမ်ႇၼၼ် Type ၶႃႈ။

```typescript
interface SalaryMap {
  [name: string]: number; // Key ပဵၼ် String, Value ပဵၼ် Number
}

const salaries: SalaryMap = {
  "Sai Mao": 5000,
  "Kham": 4500,
  "Nang": 4800
};

salaries["Sai"] = 4000; // ✅ ထႅမ်လႆႈၵူႈၶၢဝ်း
```



---

#### **2. ၵၢၼ်ၸႂ်ႉႁူမ်ႈၸွမ်း Property တႅတ်ႈတေႃး**
ႁဝ်းၸၢင်ႈမၢႆ Property ဢၼ်လူဝ်ႇမီး (Required) ဝႆႉၸွမ်းၵေႃႈလႆႈ၊ ၵူၺ်းၵႃႈ Property တင်းသဵၼ်ႈလူဝ်ႇလႆႈမီး **Type မိူၼ်ၵၼ်** တင်း Index Signature ၼၼ်ႉၶႃႈၼႃ။

```typescript
interface UserScores {
  id: string;          // Required Property
  [test: string]: string; // Index Signature
}

const student1: UserScores = {
  id: "ST-001",
  math: "A",
  english: "B+",
  science: "A-"
};
```

---

#### **3. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
* **Dynamic Data:** မိူဝ်ႈႁပ်ႉၶေႃႈမုၼ်းမႃးတီႈ API ဢၼ်ႁဝ်းဢမ်ႇႁူႉ Property တင်းသဵၼ်ႈ။
* **Dictionaries / Maps:** မိူဝ်ႈၶႂ်ႈသၢင်ႈသဵၼ်ႈမၢႆဢၼ်တေမီး Key လၢႆလၢႆဢၼ် (ၼင်ႇ Error Messages ဢမ်ႇၼၼ် Language Translation)။
* **Flexibility:** ႁဵတ်းႁႂ်ႈ Object ႁဝ်း "ယိုတ်ႈ" (Flexible) လႆႈၸွမ်းၼင်ႇၶေႃႈမုၼ်းဢၼ်ၶဝ်ႈမႃးၶႃႈ။



---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `[key: string]: type` တႃႇသၢင်ႈ Index Signature။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Property တင်းသဵၼ်ႈလူဝ်ႇလႆႈမီး Type မႅၼ်ႈၸွမ်း Index Signature။
- [ ] ၸႂ်ႉ Index Signature မိူဝ်ႈဢမ်ႇႁူႉၸိုဝ်ႈ Property တႅတ်ႈတေႃး။
- [ ] ႁူႉဝႃႈ Key ၸၢင်ႈပဵၼ်လႆႈတင်း `string` ဢမ်ႇၼၼ် `number`။

---