### **Lesson 16: Switch Statements (Handling multiple conditions)**

မိူဝ်ႈႁဝ်းမီးတၢင်းလိူၵ်ႈတင်းၼမ် (ၼင်ႇ 5 ဢၼ်ၶိုၼ်ႈၼိူဝ်) ၵၢၼ်ၸႂ်ႉ `if...else if` ၸၢင်ႈႁဵတ်းႁႂ်ႈၶူတ်ႉႁဝ်းယၢဝ်းသေ ဢၢၼ်ႇယၢပ်ႇမႃးၶႃႈ။ **Switch Statement** ၸွႆးႁဝ်းလႆႈ ႁႂ်ႈၶူတ်ႉႁဝ်း "ၶႅမ်ႉလႅပ်ႈ" သေ ၸႅတ်ႈထတ်းၵႃႈၶၼ်လႆႈၽႂ်းၶိုၼ်းၶႃႈဢေႃႈ။

---

#### **1. Switch Statement ပဵၼ်သင်?**
မၼ်းပဵၼ်ၵၢၼ်ဢဝ် "ၵႃႈၶၼ် (Value)" ၼိုင်ႈဢၼ် မႃးတႅၵ်ႈၼိူင်းၸွမ်း **Cases** တင်းၼမ်ၶႃႈ။ သင်ဝႃႈမႅၼ်ႈၸွမ်း Case လႂ် ၶူတ်ႉၼႂ်းၼၼ်ႉတေႁဵတ်းၵၢၼ်ၵမ်းလဵဝ်ၶႃႈ။

**Structure (ပိူင်တႅမ်ႈ):**
```typescript
let day: number = 2;

switch (day) {
  case 1:
    console.log("ဝၼ်းၸၼ် (Monday)");
    break;
  case 2:
    console.log("ဝၼ်းဢင်းၵၢၼ်း (Tuesday)");
    break;
  case 3:
    console.log("ဝၼ်းပုၼ်ႉ (Wednesday)");
    break;
  default:
    console.log("ဝၼ်းတၢင်ႇဢၼ်...");
}
```



---

#### **2. ၶေႃႈၵႂၢမ်းလွင်ႈယႂ်ႇ (Key Keywords)**
* **`case`:** ပဵၼ်တၢင်းလိူၵ်ႈဢၼ်ႁဝ်းၶႂ်ႈၸႅတ်ႈ။
* **`break`:** **လွင်ႈယႂ်ႇၼႃႇ!** မၼ်းၸီႉသင်ႇႁႂ်ႈ "ၵတ်း" (Stop) ၵၢၼ်ႁဵတ်းၵၢၼ်သေ ဢွၵ်ႇၵႂႃႇၼႂ်း Switch။ သင်ဢမ်ႇသႂ်ႇ `break` မၼ်းတေလႅၼ်ႈၵႂႃႇ Case တေႃႇၵႂႃႇႁင်းၵူၺ်း (Fall-through)။
* **`default`:** မိူၼ်ၼင်ႇ `else` ၶႃႈ။ သင်ဝႃႈဢမ်ႇမႅၼ်ႈၸွမ်း Case လႂ်သေဢၼ် မၼ်းတေမႃးႁဵတ်းၵၢၼ်တီႈၼႆႉၶႃႈ။

---

#### **3. ၵၢၼ်ၸႂ်ႉ Literal Types ႁူမ်ႈၸွမ်း Switch**
ၼႂ်း TypeScript ၼႆႉ Switch Statement မီးၽွၼ်းလီတႄႉတႄႉ မိူဝ်ႈႁဝ်းၸႂ်ႉႁူမ်ႈၸွမ်း Literal Types (ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼႂ်း Module 2) ၶႃႈ။

```typescript
type UserRole = "admin" | "editor" | "viewer";
let role: UserRole = "admin";

switch (role) {
  case "admin":
    console.log("ၸဝ်ႈၵဝ်ႇ မီးသုၼ်ႇၸတ်းၵၢၼ်ၵူႈလွင်ႈ။");
    break;
  case "editor":
    console.log("ၸဝ်ႈၵဝ်ႇ မႄးလိၵ်ႈလႆႈၵူၺ်း။");
    break;
  case "viewer":
    console.log("ၸဝ်ႈၵဝ်ႇ ဢၢၼ်ႇလႆႈၵူၺ်း။");
    break;
}
```
* **Lecturer's Tip:** သင်ဝႃႈၸဝ်ႈၵဝ်ႇလူင် (Forget) တႅမ်ႈ Case လႂ် Case ၼိုင်ႈၸိုင် TypeScript တေၸွႆးပၼ် Error လၢတ်ႈၼႄဝႃႈ ၸဝ်ႈၵဝ်ႇယင်းလူဝ်ႇထႅမ် Case ၼၼ်ႉယူႇၶႃႈ။

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `switch` တႅၼ်း `if...else if` ယၢဝ်းယၢဝ်း။
- [ ] ပွင်ႇၸႂ်ဝႃႈလူဝ်ႇသႂ်ႇ `break` တႃႇၵတ်းၵၢၼ်ႁဵတ်းၵၢၼ် Case ၼၼ်ႉ။
- [ ] ၸႂ်ႉ `default` တႃႇႁပ်ႉလွင်ႈတၢင်းဢၼ်ဢမ်ႇမႅၼ်ႈၸွမ်း Case လႂ်။
- [ ] ႁူႉလၢႆးၸႂ်ႉ Switch ႁူမ်ႈၸွမ်း Union ဢမ်ႇၼၼ် Literal Types။

---
