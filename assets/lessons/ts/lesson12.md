### **Lesson 12: Type Aliases (Customizing your data types)**

မိူဝ်ႈႁဝ်းၸႂ်ႉ Union Types ဢမ်ႇၼၼ် Literal Types ၼၼ်ႉ ၶူတ်ႉႁဝ်းၸၢင်ႈယၢဝ်းမႃးသေ ဢၢၼ်ႇယၢပ်ႇမႃးၶႃႈ။ တွၼ်ႈတႃႇႁႂ်ႈၶူတ်ႉႁဝ်း "ၶႅမ်ႉလႅပ်ႈ" လႄႈ "ၸႂ်ႉၶိုၼ်းလႆႈငၢႆႈ" ၼၼ်ႉ TypeScript မီးၶေႃႈၵႂၢမ်းဝႃႈ **Type Alias** ၶႃႈဢေႃႈ။

---

#### **1. Type Alias ပဵၼ်သင်?**
Type Alias မၢႆထိုင် ၵၢၼ်တင်ႈ **"ၸိုဝ်ႈမႂ်ႇ"** ပၼ် Type ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉၶႃႈ။ ႁဝ်းတေၸႂ်ႉၶေႃႈၵႂၢမ်း `type` တႃႇတႄႇသၢင်ႈၶႃႈ။

**တူဝ်ယၢင်ႇ (Example):**
```typescript
// သၢင်ႈၸိုဝ်ႈမႂ်ႇဝႃႈ 'ID' တႅၼ်း 'string | number'
type ID = string | number;

let studentID: ID = 123;
let teacherID: ID = "T-555";
```

---

#### **2. ၵၢၼ်ၸႂ်ႉၸွမ်း Literal Types**
ဢၼ်ၼႆႉ ပဵၼ်လၢႆးၸႂ်ႉဢၼ်လီသုတ်းၶႃႈ။ တႅၼ်းဢၼ်ႁဝ်းတေတႅမ်ႈ Union ယၢဝ်းယၢဝ်းယူႇၵူႈတီႈၼၼ်ႉ ႁဝ်းဢဝ်မၼ်းမႃးတင်ႈၸိုဝ်ႈဝႆႉတူဝ်လဵဝ်ၵူၺ်းၶႃႈ။

```typescript
type UserStatus = "active" | "inactive" | "banned";

let status1: UserStatus = "active";
let status2: UserStatus = "banned";
```



---

#### **3. ၵၢၼ်ၸႂ်ႉၸွမ်း Objects**
Type Alias ယင်းၸၢင်ႈၸႂ်ႉတႃႇမၢႆ "ပိူင် (Shape)" ၶွင် Object ၵေႃႈလႆႈၶႃႈ။ ဢၼ်ၼႆႉ တေႁဵတ်းႁႂ်ႈႁဝ်းႁူႉဝႃႈ ၼႂ်း Object ၼိုင်ႈဢၼ် လူဝ်ႇမီး Property သင်ၽေႈၶႃႈ။

```typescript
type Student = {
  name: string;
  age: number;
  major: string;
};

let newStudent: Student = {
  name: "Sai Mao",
  age: 25,
  major: "Computer Science"
};
```



---

#### **4. ၽွၼ်းလီၶွင် Type Aliases**
* **Reusability (ၸႂ်ႉၶိုၼ်းလႆႈ):** တႅမ်ႈဝႆႉတီႈလဵဝ်သေ ဢဝ်ၵႂႃႇၸႂ်ႉလႆႈၵူႈတီႈၼႂ်းပရူဝ်ႇၵျႅၵ်ႉ။
* **Readability (ဢၢၼ်ႇငၢႆႈ):** ၶူတ်ႉတေတႅတ်ႈတေႃးသေ ႁၼ်ၸိုဝ်ႈ Type ယဝ်ႉႁူႉၵမ်းလဵဝ်ဝႃႈ မၼ်းမၢႆထိုင်သင်။
* **Easy Maintenance (မႄးငၢႆႈ):** သင်ၶႂ်ႈလႅၵ်ႈလၢႆႈ Type ၸိုင် မႄးတီႈလဵဝ်ၵူၺ်း မၼ်းတေလႅၵ်ႈလၢႆႈပၼ်ၵူႈတီႈၶႃႈ။

---

#### **5. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉၶေႃႈၵႂၢမ်း `type` တႃႇတင်ႈၸိုဝ်ႈပၼ် Type။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Type Alias ၸွႆးႁႂ်ႈၶူတ်ႉဢၢၼ်ႇငၢႆႈ လႄႈ ၸႂ်ႉၶိုၼ်းလႆႈ။
- [ ] ႁူႉလၢႆးၸႂ်ႉ Type Alias ၸွမ်း Union Types လႄႈ Objects။

---