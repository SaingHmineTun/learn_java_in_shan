### **Lesson 53: Utility Types (Readonly, Record, and Required)**

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးသိုပ်ႇႁဵၼ်း Utility Types ထႅင်ႈ 3 တူဝ် ဢၼ်တေၸွႆးႁႂ်ႈႁဝ်း ၵုမ်းထိင်း "ၵၢၼ်မႄးၶေႃႈမုၼ်း" လႄႈ ၵၢၼ်သၢင်ႈ Object ဢၼ်မီးပိူင်မိူၼ်ၵၼ် (Map) ၶႃႈဢေႃႈ။

-----

#### **1. Readonly\<T\>**

`Readonly` တေလႅၵ်ႈ Property တင်းသဵၼ်ႈၼႂ်း Interface ႁႂ်ႈပဵၼ် **"ဢၢၼ်ႇလႆႈၵူၺ်း"** (Immutable) ၶႃႈ။ မၼ်းတေႁၢမ်ႈၵၢၼ်လႅၵ်ႈလၢႆႈၵႃႈၶၼ် (Re-assignment) ဝၢႆးသေၵေႃႇသၢင်ႈယဝ်ႉ။

```typescript
interface User {
  name: string;
}

const user: Readonly<User> = { name: "Sai Mao" };

// user.name = "Kham"; // ❌ Error: Cannot assign to 'name' because it is a read-only property.
```

-----

#### **2. Required\<T\>**

`Required` ပဵၼ်ၽၢႆႇသၢၼ်ၶတ်းတင်း `Partial` ၶႃႈ။ မၼ်းတေ "ထွၼ်ပႅတ်ႈ" ၶိူင်ႈမၢႆ `?` (Optional) တင်းသဵၼ်ႈ သေ ႁဵတ်းႁႂ်ႈၵူႈ Property လူဝ်ႇလႆႈသႂ်ႇၶေႃႈမုၼ်း **"တႃႇသေႇ"** ၶႃႈ။

```typescript
interface Profile {
  username: string;
  bio?: string; // Optional
}

// တွၼ်ႈၼႆႉ bio လူဝ်ႇလႆႈမီးတႃႇသေႇယဝ်ႉ
const myProfile: Required<Profile> = {
  username: "saimao",
  bio: "Programming Lecturer" // ✅ လူဝ်ႇလႆႈသႂ်ႇ (သင်ဢမ်ႇသႂ်ႇတေ Error)
};
```

-----

#### **3. Record\<Keys, Type\>**

`Record` ပဵၼ် Utility ဢၼ်မီး Power ၼႃႇ တွၼ်ႈတႃႇသၢင်ႈ Object ဢၼ်ႁဝ်းႁူႉဝႃႈ "Key တေပဵၼ်သင်" လႄႈ "Value တေပဵၼ် Type သင်" ၶႃႈ။

```typescript
type Page = "home" | "about" | "contact";

interface PageInfo {
  title: string;
}

// သၢင်ႈ Object ဢၼ်မီး Key ပဵၼ် Page လႄႈ Value ပဵၼ် PageInfo
const nav: Record<Page, PageInfo> = {
  home: { title: "Home Page" },
  about: { title: "About Us" },
  contact: { title: "Contact Page" }
};
```

-----

#### **4. Summary Checklist**

- [ ] ၸႂ်ႉ `Readonly<T>` မိူဝ်ႈၶႂ်ႈႁႄႉၵႅတ်ႇ ဢမ်ႇႁႂ်ႈမႄးၶေႃႈမုၼ်း (Data Integrity)။
- [ ] ၸႂ်ႉ `Required<T>` မိူဝ်ႈၶႂ်ႈႁႂ်ႈၵူႈ Property (ဢၼ်ပဵၼ် Optional) လူဝ်ႇလႆႈသႂ်ႇတႃႇသေႇ။
- [ ] ၸႂ်ႉ `Record<K, T>` တႃႇသၢင်ႈ Dictionary ဢမ်ႇၼၼ် Map ဢၼ်မီး Key တႅတ်ႈတေႃး။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Utility Types ၸိူဝ်းၼႆႉ ၸွႆးႁႂ်ႈႁဝ်း "Reuse" Interface ဢၼ်မီးဝႆႉယဝ်ႉ ႁႂ်ႈမီးၽွၼ်းလီလိူဝ်သေၵဝ်ႇ။

-----
