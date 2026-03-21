### **Lesson 38: Type Guarding (Using typeof and instanceof)**

မိူဝ်ႈႁဝ်းၸႂ်ႉ **Union Types** (ၼင်ႇ `string | number`) ယဝ်ႉၼၼ်ႉ TypeScript တေဢမ်ႇပၼ်ႁဝ်းၸႂ်ႉ Method ၶွင် Type လႂ် Type ၼိုင်ႈၵမ်းလဵဝ်ၶႃႈ။ တူဝ်ယၢင်ႇ: သင်ပဵၼ် `string` ၸိုင် `.toUpperCase()` လႆႈ၊ ၵူၺ်းၵႃႈ သင်ပဵၼ် `number` ၸိုင် ဢမ်ႇလႆႈၶႃႈ။

တွၼ်ႈတႃႇၵႄႈလွင်ႈၼႆႉ ႁဝ်းလူဝ်ႇလႆႈ "ၵႅပ်ႈလင်း" (Narrowing) Type မၼ်းလူၺ်ႈ **Type Guarding** ၶႃႈဢေႃႈ။

---

#### **1. Using `typeof` Guard**
ၸႂ်ႉတွၼ်ႈတႃႇ **Primitive Types** (ၼင်ႇ `string`, `number`, `boolean`, `symbol`) ၶႃႈ။

```typescript
function formatId(id: string | number) {
  // ၸႅတ်ႈထတ်းဝႃႈ မၼ်းပဵၼ် string ႁႃႉ?
  if (typeof id === "string") {
    // ၼႂ်း Block ၼႆႉ TypeScript ႁူႉဝႃႈ id ပဵၼ် string တႅတ်ႈတေႃးယဝ်ႉ
    return id.toUpperCase(); 
  }
  
  // ၽၢႆႇၼွၵ်ႈ if ၼၼ်ႉ TypeScript ႁူႉဝႃႈ id လူဝ်ႇပဵၼ် number ၵူၺ်းယဝ်ႉ
  return id.toFixed(2);
}
```



---

#### **2. Using `instanceof` Guard**
ၸႂ်ႉတွၼ်ႈတႃႇၸႅတ်းထတ်း **Classes** ဢမ်ႇၼၼ် **Objects** ဢၼ်သၢင်ႈမႃးလူၺ်ႈ `new` keyword ၶႃႈ။ မၼ်းတေၸွႆးထတ်းဝႃႈ Object ၼၼ်ႉပဵၼ် "လုၵ်ႈလၢၼ်" ၶွင် Class လႂ်ၼႆၶႃႈ။

```typescript
class Student {
  study() { console.log("Studying..."); }
}

class Teacher {
  teach() { console.log("Teaching..."); }
}

function contactPerson(person: Student | Teacher) {
  if (person instanceof Student) {
    person.study(); // ✅ TypeScript ပၼ်ၸႂ်ႉ study()
  } else {
    person.teach(); // ✅ TypeScript ႁူႉဝႃႈပဵၼ် Teacher
  }
}
```



---

#### **3. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ Type Guard?**
* **Code Safety:** ႁႄႉၵႅတ်ႇ Runtime Errors ဢၼ်တေပဵၼ်မႃး ယွၼ်ႉၵၢၼ်ၸႂ်ႉ Method ၽိတ်း Type။
* **Intellisense:** မိူဝ်ႈႁဝ်းၸႅတ်ႈ Type ယဝ်ႉ၊ VS Code တေၼႄပၼ် Method ဢၼ်မႅၼ်ႈၸွမ်း Type ၼၼ်ႉၵူၺ်း (Autocomplete)။
* **Clean Logic:** ႁဵတ်းႁႂ်ႈပရူဝ်ႇၵရႅမ်ႇႁဝ်း မီးသဵၼ်ႈတၢင်းၵၢၼ်ႁဵတ်းၵၢၼ်ဢၼ်ၸႅင်ႈလႅင်း။

---

#### **4. Summary Checklist**
- [ ] ၸႂ်ႉ `typeof` တႃႇၸႅတ်ႈထတ်း Primitive Types ၼႂ်း `if` block။
- [ ] ၸႂ်ႉ `instanceof` တႃႇၸႅတ်ႈထတ်း Objects ဢၼ်သၢင်ႈမႃးတီႈ Classes။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Type Guarding ၸွႆးႁဵတ်း **Type Narrowing** (ၵၢၼ်ႁဵတ်းႁႂ်ႈ Type ၵႅပ်ႈလင်းမႃး)။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇၸႂ်ႉ Method ဢၼ်မႅၼ်ႈၸွမ်း Type ဝၢႆးသေ Guard ယဝ်ႉ။

---