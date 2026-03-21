### **Lesson 17: Ternary Operator (The shorthand for If-Else)**

မိူဝ်ႈႁဝ်းမီးၵၢၼ်တႅပ်းတ်တ်းသၢႆၸႂ်ငၢႆႈငၢႆႈ ဢၼ်မီးၵူၺ်း **`if`** လႄႈ **`else`** ၼၼ်ႉ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ 4-5 သဵၼ်ႈၵေႃႈလႆႈၶႃႈ။ **Ternary Operator** ၸွႆးႁဝ်းတႅမ်ႈလႆႈၼႂ်း **"သဵၼ်ႈလဵဝ် (Single Line)"** သေ ႁဵတ်းႁႂ်ႈၶူတ်ႉႁဝ်းပွတ်းသေ ဢၢၼ်ႇငၢႆႈၶိုၼ်းၶႃႈ။

---

#### **1. Ternary Operator ပဵၼ်သင်?**
မၼ်းၸႂ်ႉၶိူင်ႈမၢႆသွင်ဢၼ် ၼၼ်ႉၵေႃႈပဵၼ် **`?`** လႄႈ **`:`** ၶႃႈဢေႃႈ။

**Structure (ပိူင်တႅမ်ႈ):**
```typescript
condition ? expressionIfTrue : expressionIfFalse;
```



---

#### **2. တႅၵ်ႈၼိူင်းတူၺ်းၸွမ်း `if...else`**

**လၢႆးတႅမ်ႈ `if...else` ပိုၼ်ႉထၢၼ်:**
```typescript
let age: number = 20;
let message: string;

if (age >= 18) {
  message = "ၸဝ်ႈၵဝ်ႇပဵၼ်ၵူၼ်းလူင်ယဝ်ႉ";
} else {
  message = "ၸဝ်ႈၵဝ်ႇပဵၼ်လုၵ်ႈဢွၼ်ႇယူႇ";
}
```

**လၢႆးၸႂ်ႉ Ternary Operator (ပွတ်းသေၵဝ်ႇ):**
```typescript
let age: number = 20;

let message: string = age >= 18 ? "ၸဝ်ႈၵဝ်ႇပဵၼ်ၵူၼ်းလူင်ယဝ်ႉ" : "ၸဝ်ႈၵဝ်ႇပဵၼ်လုၵ်ႈဢွၼ်ႇယူႇ";
```

---

#### **3. ၵၢၼ်ၸႂ်ႉၼႂ်း TypeScript (Real World Example)**
ႁဝ်းၵႆႉၸႂ်ႉ Ternary Operator မိူဝ်ႈႁဝ်းၶႂ်ႈပၼ်ၵႃႈၶၼ် (Assign Value) ႁႂ်ႈဝေႇရီႇယေႇပူဝ်ႇ (Variable) ၼိုင်ႈဢၼ် ၸွမ်းၼင်ႇလွင်ႈတၢင်းမၼ်းၶႃႈ။

```typescript
let isLoggedIn: boolean = true;

// သင် Login ယဝ်ႉ ႁႂ်ႈၼႄဝႃႈ "Welcome", သင်ဢမ်ႇပႆႇ Login ႁႂ်ႈၼႄဝႃႈ "Please Login"
const statusHeader = isLoggedIn ? "Welcome Back!" : "Please Login";

console.log(statusHeader);
```

---

#### **4. ၶေႃႈသင်ႇ (Warning)**
* **Don't Overuse:** သင်ဝႃႈလွင်ႈတၢင်း (Condition) ႁဝ်းသုၵ်ႉယုင်ႈၼႃႇ (ၼင်ႇမီး `if` ၼႂ်း `if` တင်းၼမ်) ႁဝ်းဢမ်ႇလီၸႂ်ႉ Ternary ၶႃႈ။ ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈၶူတ်ႉဢၢၼ်ႇယၢပ်ႇၵႂႃႇၶႃႈဢေႃႈ။
* **One Level Only:** လီၸႂ်ႉတွၼ်ႈတႃႇၵၢၼ်တႅပ်းတ်တ်းသၢႆၸႂ်ငၢႆႈငၢႆႈ ဢၼ်မီး 2 ၽၢႆႇၵူၺ်းၶႃႈ။

---

#### **5. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `?` လႄႈ `:` တႅၼ်း `if...else`။
- [ ] ပွင်ႇၸႂ်ဝႃႈ ၽၢႆႇၼႃႈ `:` ပဵၼ်တွၼ်ႈတႃႇ `true` သေ ၽၢႆႇလင် `:` ပဵၼ်တွၼ်ႈတႃႇ `false`။
- [ ] ၸႂ်ႉ Ternary Operator တႃႇပၼ်ၵႃႈၶၼ် (Assignment) ႁႂ်ႈပွတ်းသေၵဝ်ႇ။
- [ ] ႁူႉမိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ လႄႈ မိူဝ်ႈလႂ်ဢမ်ႇလူဝ်ႇၸႂ်ႉ (Readability)။

---