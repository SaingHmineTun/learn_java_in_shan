### **Lesson 36: Readonly Arrays (Protecting list integrity)**

မိူဝ်ႈႁဝ်းမီးသဵၼ်ႈမၢႆၶေႃႈမုၼ်း (List) ဢၼ်လွင်ႈယႂ်ႇ၊ ႁဝ်းၵႆႉၶႂ်ႈႁႂ်ႈၼႄႇၸႂ်ဝႃႈ "ဢၢၼ်ႇလႆႈၵူၺ်း၊ မႄးဢမ်ႇလႆႈ" (Immutable) ၶႃႈ။ ၼႂ်း TypeScript ႁဝ်းၸႂ်ႉ **Readonly Arrays** တႃႇႁၢမ်ႈၵၢၼ်ထႅမ် (`push`), ၵၢၼ်လွတ်ႈ (`pop`), ဢမ်ႇၼၼ် ၵၢၼ်လႅၵ်ႈလၢႆႈၵႃႈၶၼ်ၼႂ်း Array ၼၼ်ႉၶႃႈဢေႃႈ။

---

#### **1. Readonly Array Syntax (လၢႆးတႅမ်ႈ)**
ႁဝ်းမၢႆ Type လႆႈ 2 လၢႆး မိူၼ်ၼင်ႇ Array ပိုၼ်ႉထၢၼ်ၶႃႈ:

**လၢႆးၸႂ်ႉ `readonly` Keyword:**
```typescript
let colors: readonly string[] = ["Red", "Green", "Blue"];

// colors.push("Yellow"); // ❌ Error: Property 'push' does not exist on type 'readonly string[]'.
// colors[0] = "Black";   // ❌ Error: Index signature in type 'readonly string[]' only permits reading.
```

**လၢႆးၸႂ်ႉ `ReadonlyArray<T>` Generic:**
```typescript
let scores: ReadonlyArray<number> = [100, 95, 88];
```



---

#### **2. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
* **Data Integrity:** ႁႄႉၵႅတ်ႇလွင်ႈမႄးၶေႃႈမုၼ်းလူၺ်ႈဢမ်ႇတင်ႈၸႂ် (Accidental Mutation)။
* **Functional Programming:** ၵႆႉၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈႁႂ်ႈ Function ႁဝ်း "သႅၼ်ႈသႂ်" (Pure Functions) ဢၼ်ဢမ်ႇၵႂႃႇလႅၵ်ႈလၢႆႈ Input ဢၼ်သူင်ႇၶဝ်ႈမႃးၶႃႈ။
* **Collaboration:** မိူဝ်ႈတႅမ်ႈၶူတ်ႉႁူမ်ႈၵၼ်တင်းလုၵ်ႈႁဵၼ်း၊ မၼ်းပဵၼ်ၵၢၼ်လၢတ်ႈၼႄဝႃႈ "Array ဢၼ်ၼႆႉ ႁၢမ်ႈမႄးၶႃႈၼႃ" ၼႆၶႃႈဢေႃႈ။

---

#### **3. ၵၢၼ်လႅၵ်ႈလၢႆႈ (Converting)**
သင်ဝႃႈၸဝ်ႈၵဝ်ႇမီး Readonly Array သေ ၶႂ်ႈမႄးမၼ်းတႄႉတႄႉၸိုင် ၸဝ်ႈၵဝ်ႇလူဝ်ႇလႆႈ "ၵေႃႇပီႇ" (Copy) မၼ်းဢွၵ်ႇမႃးပဵၼ် Array မႂ်ႇဢွၼ်တၢင်းၶႃႈ။

```typescript
const readonlyNames: readonly string[] = ["Sai", "Mao"];

// ၵေႃႇပီႇဢွၵ်ႇမႃးပဵၼ် Array ธรรมดา
const writableNames = [...readonlyNames]; 
writableNames.push("Kham"); // ✅ မႄးလႆႈယဝ်ႉ
```

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `readonly type[]` တႃႇသၢင်ႈသဵၼ်ႈမၢႆဢၼ် "ဢၢၼ်ႇလႆႈၵူၺ်း"။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Methods ၼင်ႇ `push`, `pop`, `shift`, `splice` တေၸႂ်ႉဢမ်ႇလႆႈ။
- [ ] ႁူႉဝႃႈ `ReadonlyArray<T>` ပဵၼ်လၢႆးတႅမ်ႈထႅင်ႈပိူင်ၼိုင်ႈ။
- [ ] ၸႂ်ႉ Readonly Array တႃႇႁႄႉၵႅတ်ႇ Bug ၼႂ်း Application ဢၼ်သုၵ်ႉယုင်ႈ။

---