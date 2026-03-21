### **Lesson 81: Template Literal Types (String manipulation in TS)**

ၼႂ်း JavaScript, ႁဝ်းၸႂ်ႉ **Template Literals** (Backticks `` ` ``) တႃႇႁူမ်ႈ String ၶဝ်ႈၸွမ်းၵၼ်ၶႃႈ။ ၼႂ်း TypeScript, ႁဝ်းယင်းၸၢင်ႈၸႂ်ႉပိူင်ၼႆႉ တႃႇသၢင်ႈ **Type** ဢၼ်ပဵၼ် String ႁႂ်ႈမၼ်းမီး "ပိူင်ၽႅၼ်" (Pattern) ဢၼ်တႅတ်ႈတေႃးၶႃႈဢေႃႈ။

---

#### **1. The Syntax (ပိူင်တႅမ်ႈ)**
ႁဝ်းၸႂ်ႉ `${}` ၼႂ်း Backticks တႃႇဢဝ် Type တၢင်ႇဢၼ်မႃး "သုပ်ႇ" (Interpolate) ၶဝ်ႈၵႂႃႇၼႂ်း String Type ၶႃႈ။

```typescript
type World = "world";
type Greeting = `hello ${World}`; 
// Type ပဵၼ် "hello world" တႅတ်ႈတေႃး
```

---

#### **2. Power of Combinations (ၵၢၼ်ႁူမ်ႈ Union Types)**
လွင်ႈဝိသဵတ်ႇၶွင်မၼ်းတႄႉ ပဵၼ်မိူဝ်ႈႁဝ်းၸႂ်ႉမၼ်းႁူမ်ႈတင်း **Union Types** ၶႃႈ။ TypeScript တေလႅၵ်ႈလၢႆႈ (Multiply) ႁႂ်ႈမၼ်းပဵၼ်ၵူႈလၢႆး (All possibilities) ႁင်းၵူၺ်းမၼ်းၶႃႈဢေႃႈ။



```typescript
type Color = "red" | "blue";
type Intensity = "light" | "dark";

type ColorTone = `${Intensity}-${Color}`;
// Type တေပဵၼ်: "light-red" | "light-blue" | "dark-red" | "dark-blue"
```

---

#### **3. Real-world Use Case: API & CSS**
ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇမၵ်းမၼ်ႈ Type ပၼ် CSS Properties ဢမ်ႇၼၼ် API Endpoints ႁႂ်ႈမၼ်းမီး Pattern ဢၼ်မႅၼ်ႈၸွမ်းပိူင်တႃႇသေႇၶႃႈ။

```typescript
type Padding = `padding-${"left" | "right" | "top" | "bottom"}`;
// "padding-left" | "padding-right" ...

type EventName = `on${Capitalize<string>}`; 
// "onClick", "onHover", "onChange" (ၸႂ်ႉ Capitalize တႃႇႁဵတ်းႁႂ်ႈတူဝ်ၼႃႈပဵၼ်တူဝ်ယႂ်ႇ)
```

---

#### **4. Why use Template Literal Types?**
* **Strict Patterns:** ၼႄႇၸႂ်ဝႃႈ String ဢၼ်သူင်ႇၶဝ်ႈၵႂႃႇ မႅၼ်ႈၸွမ်း Pattern (ၼင်ႇ `ID-${number}`)။
* **Auto-completion:** ၸွႆးႁႂ်ႈ VS Code ၼႄ (Suggest) ၵူႈလၢႆးဢၼ်ၸၢင်ႈပဵၼ်လႆႈ ႁႂ်ႈႁဝ်းလိူၵ်ႈငၢႆႈငၢႆႈ။
* **Type Safety:** ႁႄႉၵႅတ်ႇလွင်ႈတႅမ်ႈ String ၽိတ်း (Typo) တီႈၼႂ်း App ဢၼ်မီး String ၼမ်ၼမ်။



---

#### **5. Summary Checklist**
- [ ] ၸႂ်ႉ **`` `...${Type}...` ``** တႃႇသၢင်ႈ String Type ၸွမ်းၼင်ႇ Pattern။
- [ ] ႁူႉဝႃႈ သင်ၸႂ်ႉ **Union Types**, TypeScript တေႁူမ်ႈ (Combine) ႁႂ်ႈၵူႈလၢႆး။
- [ ] ၸႂ်ႉ Utility ၼင်ႇ **`Capitalize`**, **`Uppercase`**, **`Lowercase`** တႃႇမႄး String Type။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇၸႂ်ႉမၼ်း မိူဝ်ႈလူဝ်ႇမၵ်းမၼ်ႈ ပိူင် String ဢၼ်တႅတ်ႈတေႃး (ၼင်ႇ CSS ဢမ်ႇၼၼ် Event Names)။

---