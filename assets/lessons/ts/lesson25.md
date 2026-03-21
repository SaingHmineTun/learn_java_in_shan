### **Lesson 25: Object Literals (Defining shapes on the fly)**

ၼႂ်း JavaScript ၼၼ်ႉ Object ပဵၼ်ၶိူင်ႈမုၼ်းဢၼ်ႁဝ်းၸႂ်ႉၼမ်သုတ်း တႃႇသိမ်းၶေႃႈမုၼ်းလၢႆလၢႆဢၼ်ဝႆႉၸွမ်းၵၼ်။ ၼႂ်း TypeScript သမ်ႉ မၼ်းတေၸွႆးမၢႆဝႆႉဝႃႈ Object ၼိုင်ႈဢၼ် လူဝ်ႇမီး **Property** သင်ၽေႈ လႄႈ မီး **Type** သင်တႅတ်ႈတေႃးၶႃႈ။

---

#### **1. Basic Object Type Annotation**
မိူဝ်ႈႁဝ်းသၢင်ႈ Object ႁဝ်းၸၢင်ႈမၢႆ Type ဝႆႉၼႂ်း `{ }` ၵမ်းလဵဝ်ၶႃႈ။ ဢၼ်ၼႆႉႁွင်ႉဝႃႈ "Defining the shape" (ၵၢၼ်မၢႆပိူင်မၼ်း) ၶႃႈဢေႃႈ။

```typescript
let student: {
  name: string;
  age: number;
  isEnrolled: boolean;
};

// ၵၢၼ်ပၼ်ၵႃႈၶၼ် (Assignment)
student = {
  name: "Sai Mao",
  age: 25,
  isEnrolled: true
};
```



---

#### **2. ၵၢၼ်ၸႅတ်ႈထတ်း (Strict Structure)**
TypeScript တေၸႅတ်ႈထတ်းပၼ် ႁႂ်ႈ Object ၼၼ်ႉမီး Property "မိူၼ်ၼင်ႇ" ဢၼ်ႁဝ်းမၢႆဝႆႉတႅတ်ႈတေႃးၶႃႈ။

* **Missing Property:** သင်ဝႃႈလူင်သႂ်ႇ `age` ၸိုင် TypeScript တေပၼ် Error ၵမ်းလဵဝ်။
* **Extra Property:** သင်ဝႃႈသႂ်ႇ Property ဢၼ်ဢမ်ႇမီးၼႂ်း Type ၼၼ်ႉၶဝ်ႈၵႂႃႇ (ၼင်ႇ `address`) မၼ်းၵေႃႈတေပၼ် Error ၶႃႈ။
* **Wrong Type:** သင်ဝႃႈဢဝ် `string` သႂ်ႇၼႂ်း `age` ၵေႃႈဢမ်ႇလႆႈၶႃႈ။

```typescript
// ❌ Error: Property 'isEnrolled' is missing.
student = {
  name: "Kham",
  age: 22
}; 
```

---

#### **3. Objects in Functions**
ႁဝ်းၵႆႉၸႂ်ႉ Object Literal Type ၼႂ်း Parameter ၶွင် Function ၶႃႈ။

```typescript
function printStudentInfo(user: { name: string, age: number }) {
  console.log(`${user.name} is ${user.age} years old.`);
}

printStudentInfo({ name: "Sai Mao", age: 25 });
```



---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးမၢႆ Type ပၼ် Object ၼႂ်း `{ }`။
- [ ] ပွင်ႇၸႂ်ဝႃႈ TypeScript တေၸႅတ်ႈထတ်း ႁႂ်ႈ Property မႅၼ်ႈၵၼ်တႅတ်ႈတေႃး။
- [ ] ႁူႉဝႃႈ ဢမ်ႇၸၢင်ႈထႅမ် Property မႂ်ႇ ဢၼ်ဢမ်ႇလႆႈမၢႆဝႆႉၼႂ်း Type။
- [ ] ၸႂ်ႉ Object Type ၼႂ်း Function Parameters လႆႈ။

---
