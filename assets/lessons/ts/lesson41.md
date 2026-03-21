### **Lesson 41: The 'in' operator (Checking property existence)**

မၢင်ပွၵ်ႈ ႁဝ်းဢမ်ႇမီး "မၢႆၽၢင်" (Discriminant) ၼင်ႇ `kind` ဢမ်ႇၼၼ် `type` ဝႆႉၼႂ်း Interface ႁဝ်းၶႃႈ။ ၵူၺ်းၵႃႈ ႁဝ်းႁူႉဝႃႈ Object မဵဝ်းၼိုင်ႈ မီး Property ဢၼ်ပႅၵ်ႇပိူင်ႈၵၼ်ဝႆႉ။ ၼႂ်း TypeScript ႁဝ်းၸၢင်ႈၸႂ်ႉ **`in` operator** တႃႇၸႅတ်ႈထတ်းဝႃႈ "Property ၼၼ်ႉ မီးၼႂ်း Object ၼႆႉႁႃႉ?" ၼႆၶႃႈဢေႃႈ။

---

#### **1. The `in` Operator ပဵၼ်သင်?**
မၼ်းပဵၼ် JavaScript operator ဢၼ်တေသူင်ႇ `true` ဢွၵ်ႇမႃး သင်ဝႃႈ Property ၼၼ်ႉ မီးဝႆႉၼႂ်း Object တူဝ်ၼၼ်ႉၶႃႈ။ TypeScript တေၸႂ်ႉလွင်ႈၼႆႉ တႃႇႁဵတ်း **Type Narrowing** ပၼ်ႁဝ်းၵမ်းလဵဝ်ၶႃႈ။

**ပိူင်တႅမ်ႈ (Syntax):**
```typescript
interface Admin {
  name: string;
  privileges: string[];
}

interface Employee {
  name: string;
  startDate: Date;
}

type UnknownUser = Admin | Employee;
```

---

#### **2. ၵၢၼ်ၸႅတ်ႈထတ်း (Implementation)**
ႁဝ်းတေၸႅတ်းထတ်း Property ဢၼ်မီးၼႂ်း Interface ၼိုင်ႈဢၼ် ၵူၺ်းၵႃႈ ဢမ်ႇမီးၼႂ်းထႅင်ႈဢၼ်ၼိုင်ႈၶႃႈ။

```typescript
function printInformation(user: UnknownUser) {
  console.log("Name: " + user.name);

  // ၸႅတ်ႈထတ်းဝႃႈ 'privileges' မီးၼႂ်း user ႁႃႉ?
  if ("privileges" in user) {
    // ၼႂ်းၼႆႉ TypeScript ႁူႉဝႃႈ user ပဵၼ် Admin တႅတ်ႈတေႃး
    console.log("Privileges: " + user.privileges.join(", "));
  }

  // ၸႅတ်ႈထတ်းဝႃႈ 'startDate' မီးၼႂ်း user ႁႃႉ?
  if ("startDate" in user) {
    // ၼႂ်းၼႆႉ TypeScript ႁူႉဝႃႈ user ပဵၼ် Employee တႅတ်ႈတေႃး
    console.log("Start Date: " + user.startDate);
  }
}
```



---

#### **3. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
* **Flexible Interfaces:** မိူဝ်ႈႁဝ်းဢမ်ႇၸၢင်ႈမႄး Interface (ၼင်ႇ ဢဝ်မႃးတီႈ Library ၼွၵ်ႈ) တႃႇသႂ်ႇ `kind` property ၶႃႈ။
* **Simple Checks:** မိူဝ်ႈၶႂ်ႈၸႅတ်ႈလွင်ႈမီး/ဢမ်ႇမီး Property ၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇလူဝ်ႇသၢင်ႈ Class (ၼင်ႇ `instanceof`)။
* **Runtime Safety:** ႁႄႉၵႅတ်ႇၵၢၼ်ႁွင်ႉၸႂ်ႉ Property ဢၼ် "ဢမ်ႇမီး" (Undefined) ၼၼ်ႉၶႃႈ။

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `"propertyName" in object` တႃႇၸႅတ်ႈထတ်း။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `in` operator တေသူင်ႇ boolean (`true/false`) ဢွၵ်ႇမႃး။
- [ ] ၸႂ်ႉ `in` တႃႇႁဵတ်း Type Narrowing မိူဝ်ႈဢမ်ႇမီး Discriminant property။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸိုဝ်ႈ Property ဢၼ်ၸဝ်ႈၵဝ်ႇၸႅတ်ႈၼၼ်ႉ တႅမ်ႈမႅၼ်ႈ (Case-sensitive)။

---
