### **Lesson 26: Interfaces (Creating reusable blueprints)**

မိူဝ်ႈႁဝ်းမီး Object လၢႆလၢႆဢၼ် ဢၼ်မီး "ပိူင်" မိူၼ်ၵၼ် (ၼင်ႇ သဵၼ်ႈမၢႆလုၵ်ႈႁဵၼ်း 100 ၵေႃႉ)၊ ၵၢၼ်တႅမ်ႈ Object Type ဝႆႉၵူႈတီႈၼၼ်ႉ မၼ်းတေႁဵတ်းႁႂ်ႈၶူတ်ႉယၢဝ်းသေ မႄးယၢပ်ႇၶႃႈ။ **Interface** ၸွႆးႁဝ်းသၢင်ႈ "Blueprint" (ၽႅၼ်ၽၢင်) ဝႆႉသေ ဢဝ်ၵႂႃႇၸႂ်ႉၶိုၼ်းလႆႈၵူႈတီႈၶႃႈဢေႃႈ။

---

#### **1. Interface Syntax**
ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း `interface` တႃႇတႄႇသၢင်ႈ။ ၵႆႉၸႂ်ႉတူဝ်ယႂ်ႇ (PascalCase) တႄႇၼႃႈၸိုဝ်ႈမၼ်း ၼင်ႇ `Student` ဢမ်ႇၼၼ် `User` ၶႃႈ။

```typescript
interface Student {
  name: string;
  age: number;
  major: string;
}

// ယၢမ်းၼႆႉ ႁဝ်းၸႂ်ႉ 'Student' တႅၼ်း Object Type ယၢဝ်းယၢဝ်းလႆႈယဝ်ႉ
const student1: Student = {
  name: "Sai Mao",
  age: 25,
  major: "Computer Science"
};

const student2: Student = {
  name: "Nang Hom",
  age: 22,
  major: "Information Technology"
};
```



---

#### **2. ၵွပ်ႈသင်လႄႈၸႂ်ႉ Interface?**
* **Reusability (ၸႂ်ႉၶိုၼ်းလႆႈ):** တႅမ်ႈဝႆႉတီႈလဵဝ်သေ ၸႂ်ႉလႆႈတင်းပရူဝ်ႇၵျႅၵ်ႉ။
* **Consistency (မိူၼ်ၵၼ်):** ၼႄႇၸႂ်ဝႃႈ Object ၵူႈဢၼ် တေမီး Property မိူၼ်ၵၼ်တႅတ်ႈတေႃး။
* **Readability (ဢၢၼ်ႇငၢႆႈ):** ၶူတ်ႉႁဝ်းတေတႅတ်ႈတေႃးသေ ႁၼ်ၸိုဝ်ႈ Interface ယဝ်ႉႁူႉၵမ်းလဵဝ်ဝႃႈ မၼ်းပဵၼ်ၶေႃႈမုၼ်းသင်။

---

#### **3. ၵၢၼ်ၸႂ်ႉၸွမ်း Functions**
Interface ႁဵတ်းႁႂ်ႈၵၢၼ်သူင်ႇ Object ၶဝ်ႈၼႂ်း Function ၼၼ်ႉ ၵႅၼ်ႇၶႅင်လိူဝ်သေၵဝ်ႇၶႃႈ။

```typescript
function enrollStudent(newStudent: Student) {
  console.log(`Enrolling ${newStudent.name} in ${newStudent.major}...`);
}

enrollStudent(student1); // ✅ မႅၼ်ႈယူႇ
```

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉၶေႃႈၵႂၢမ်း `interface` တႃႇသၢင်ႈ Blueprint။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Interface ၸွႆးႁႂ်ႈၶူတ်ႉ "သုၵ်ႉယုင်ႈ" (Complex) ပဵၼ်ဢၼ် "ၸတ်းၵၢၼ်ငၢႆႈ" (Manageable)။
- [ ] ႁူႉလၢႆးၸႂ်ႉ Interface တႅၼ်း Object Type ၼႂ်း Variables လႄႈ Functions။
- [ ] ၼႄႇၸႂ်ဝႃႈ Object ဢၼ်ၸႂ်ႉ Interface ၼၼ်ႉ မီး Property ၵူႈတူဝ်ၸွမ်းၼင်ႇမၢႆဝႆႉ။

---