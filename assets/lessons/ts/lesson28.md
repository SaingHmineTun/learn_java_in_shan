### **Lesson 28: Extending Interfaces (Building upon existing shapes)**

ၼႂ်းၵၢၼ်တႅမ်ႈပရူဝ်ႇၵရႅမ်ႇၼၼ်ႉ ၵႆႉမီးလွင်ႈတၢင်းဢၼ်ႁဝ်းမီး "ပိူင် (Shape)" ဢၼ်ၼိုင်ႈဝႆႉယဝ်ႉ သေ ၶႂ်ႈသၢင်ႈပိူင်မႂ်ႇဢၼ် **"သိုပ်ႇပၢၼ်"** ဢဝ်ၶေႃႈမုၼ်းၵဝ်ႇမႃးသေ ထႅမ် Property မႂ်ႇၶဝ်ႈၵႂႃႇၶႃႈ။ TypeScript ၸႂ်ႉၶေႃႈၵႂၢမ်း **`extends`** တႃႇႁဵတ်းလွင်ႈၼႆႉၶႃႈဢေႃႈ။

---

#### **1. Inheritance (ၵၢၼ်သိုပ်ႇပၢၼ်)**
မိူၼ်ၼင်ႇႁဝ်းမီး Interface `User` ဢၼ်မီးၵူႈၵေႃႉ၊ ယဝ်ႉႁဝ်းၶႂ်ႈသၢင်ႈ `Admin` ဢၼ်မီး Property မိူၼ် User ၵူၺ်းၵႃႈ ထႅမ်သုၼ်ႇတၢင်းလိူၵ်ႈ (Privileges) ၶဝ်ႈၵႂႃႇၶႃႈ။

```typescript
interface User {
  id: number;
  username: string;
}

// Admin တေမီးတင်း id, username လႄႈ privileges ၶႃႈ
interface Admin extends User {
  privileges: string[];
}

const superUser: Admin = {
  id: 1,
  username: "saimao_admin",
  privileges: ["create-server", "delete-user"]
};
```



---

#### **2. Extending Multiple Interfaces**
တီႈလီမၼ်းတႄႉ Interface ၼိုင်ႈဢၼ် ၸၢင်ႈသိုပ်ႇပၢၼ်ဢဝ်လၢႆလၢႆ Interface ႁူမ်ႈၵၼ်ၵေႃႈလႆႈၶႃႈ (Multiple Inheritance)။

```typescript
interface HasName {
  name: string;
}

interface HasAge {
  age: number;
}

interface Person extends HasName, HasAge {
  address: string;
}

const saiMao: Person = {
  name: "Sai Mao",
  age: 25,
  address: "Muse, Shan State"
};
```

---

#### **3. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
* **DRY (Don't Repeat Yourself):** ဢမ်ႇလူဝ်ႇတႅမ်ႈ Property ၵဝ်ႇၶိုၼ်းလၢႆလၢႆပွၵ်ႈ။
* **Hierarchy (ၸၼ်ႉထၢၼ်):** ႁဵတ်းႁႂ်ႈၶေႃႈမုၼ်းႁဝ်းမီးၸၼ်ႉမီးတွၼ်ႈ ဢၢၼ်ႇငၢႆႈ။
* **Flexibility:** မိူဝ်ႈမႄးတီႈ Base Interface (တူဝ်တႄႇ)၊ တူဝ်ဢၼ် `extends` ဝႆႉတင်းသဵၼ်ႈ တေလႅၵ်ႈလၢႆႈၸွမ်းၵမ်းလဵဝ်ၶႃႈ။



---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉၶေႃႈၵႂၢမ်း `extends` တႃႇသိုပ်ႇပၢၼ် Interface။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Child Interface တေမီး Property တင်းသဵၼ်ႈၶွင် Parent Interface။
- [ ] ႁူႉဝႃႈၸၢင်ႈ `extends` လၢႆလၢႆ Interface ႁူမ်ႈၵၼ်လႆႈ။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇတႅမ်ႈ Property ၵဝ်ႇၶိုၼ်း မိူဝ်ႈၸႂ်ႉ `extends` ယဝ်ႉ။

---
