### **Lesson 82: Recursive Types (Handling deeply nested data)**

ၼႆႉပဵၼ် Lesson သုတ်းထၢႆးၶွင် Module 13 လႄႈ ၶွင် Course ႁဝ်းယဝ်ႉၶႃႈ! **Recursive Type** ပဵၼ် Type ဢၼ် "ႁွင်ႉၸႂ်ႉတူဝ်မၼ်းၶိုၼ်း" (Self-reference) ၶႃႈ။ မၼ်းမီးဝႆႉတွၼ်ႈတႃႇၸတ်းၵၢၼ်ၶေႃႈမုၼ်း ဢၼ်မီးသႅၼ်း (Layers) လၢႆလၢႆၸၼ်ႉ ဢၼ်ႁဝ်းဢမ်ႇႁူႉဝႃႈမၼ်းတေၵႂႃႇသုတ်းတီႈလႂ်ၶႃႈဢေႃႈ။

---

#### **1. What is Recursion in Types?**
မိူၼ်ၼင်ႇ Function ဢၼ်ႁွင်ႉတူဝ်မၼ်းၶိုၼ်း (Recursive Function) ၼၼ်ႉၶႃႈ၊ **Recursive Type** တေမၵ်းမၼ်ႈဝႃႈ "ၼႂ်း Object ၼႆႉ မီး Object မဵဝ်းလဵဝ်ၵၼ်ၼႆႉယူႇထႅင်ႈ" ၶႃႈ။

တူဝ်ယၢင်ႇဢၼ်ႁၼ်ငၢႆႈသုတ်း ပဵၼ် **Folder Structure** (ၼႂ်း Folder မီး Folder ထႅင်ႈ) ဢမ်ႇၼၼ် **Comments System** (ၼႂ်း Reply မီး Reply ထႅင်ႈ) ၶႃႈဢေႃႈ။



---

#### **2. Implementation (လၢႆးတႅမ်ႈ)**

သမုၵ်ႉဝႃႈ ႁဝ်းၶႂ်ႈသၢင်ႈ Type တွၼ်ႈတႃႇ JSON Data ဢၼ်ၸၢင်ႈမီး Layers ၼမ်ၵေႃႇလႂ်ၵေႃႈယဝ်ႉ:

```typescript
type JsonValue = 
  | string 
  | number 
  | boolean 
  | null 
  | { [key: string]: JsonValue } // 👈 ၼႆႉၶႃႈ! ႁွင်ႉၸႂ်ႉ JsonValue ၶိုၼ်း
  | JsonValue[];                 // 👈 ၼႆႉၵေႃႈ ႁွင်ႉၸႂ်ႉ JsonValue ၶိုၼ်း

const myData: JsonValue = {
  name: "Sai Mao",
  skills: ["TypeScript", "Java"],
  projects: {
    web: {
      url: "itsaimao.vercel.app",
      status: "online"
    }
  }
};
```

---

#### **3. Real-world Use Case: Nested Comments**
ၼႂ်း App ဢၼ်မီးလွင်ႈထဵင်ၵၼ် (Discussion), Comment ၼိုင်ႈဢၼ် ၸၢင်ႈမီး Reply လၢႆလၢႆဢၼ်၊ လႄႈ ၼႂ်း Reply ၼၼ်ႉၵေႃႈ ၸၢင်ႈမီး Reply ထႅင်ႈၶႃႈ။

```typescript
interface Comment {
  id: string;
  text: string;
  replies: Comment[]; // 👈 Recursive: သိုပ်ႇႁွင်ႉ Comment ၵႂႃႇတိၵ်းတိၵ်း
}

const discussion: Comment = {
  id: "1",
  text: "Hello everyone!",
  replies: [
    {
      id: "2",
      text: "Hi Sai Mao!",
      replies: [
        { id: "3", text: "How are you?", replies: [] }
      ]
    }
  ]
};
```



---

#### **4. Why use Recursive Types?**
* **Infinite Depth:** ၸတ်းၵၢၼ်ၶေႃႈမုၼ်းလႆႈ ဢမ်ႇဝႃႈမၼ်းတေသိုပ်ႇၵႂႃႇၵေႃႉလႂ် (Infinite nesting)။
* **Type Safety:** ၼႄႇၸႂ်ဝႃႈ ၵူႈ Layers ၼႂ်း Nested Data ၼၼ်ႉ မီး Type ဢၼ်မႅၼ်ႈၸွမ်းပိူင်တႃႇသေႇ။
* **Complex Data Structures:** ၸွႆးႁႂ်ႈႁဝ်းသၢင်ႈ Type ပၼ် Trees, Linked Lists, လႄႈ JSON Structures လႆႈငၢႆႈငၢႆႈ။

---

#### **5. Summary Checklist**
- [ ] ၸႂ်ႉ **Recursive Type** မိူဝ်ႈလူဝ်ႇမၵ်းမၼ်ႈ Type ဢၼ် "ႁွင်ႉၸႂ်ႉတူဝ်မၼ်းၶိုၼ်း"။
- [ ] ႁူႉလၢႆးၸႂ်ႉ **`[]`** ဢမ်ႇၼၼ် **Object Mapping** တႃႇသိုပ်ႇ Layer ၶဝ်ႈၵႂႃႇ။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇမီး **Base Case** (ၼင်ႇ string ဢမ်ႇၼၼ် null) တွၼ်ႈတႃႇႁႂ်ႈ Recursion သုတ်းလႆႈ။
- [ ] ပွင်ႇၸႂ်ဝႃႈ TypeScript တေထတ်းၸႅတ်ႈ Layers တင်းသဵၼ်ႈပၼ် ႁႂ်ႈမႅၼ်ႈၸွမ်း Type။

---