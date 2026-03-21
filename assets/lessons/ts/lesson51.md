### **Lesson 51: Generics with Interfaces and Classes**

ၼႂ်း Lesson ဢွၼ်တၢင်း ႁဝ်းလႆႈႁၼ်လွင်ႈၸႂ်ႉ Generics ၼႂ်း Function ယဝ်ႉၶႃႈ။ ၵူၺ်းၵႃႈ Generics ယင်းမီး "Power" ၼမ်လိူဝ်ၼၼ်ႉ မိူဝ်ႈႁဝ်းဢဝ်မႃးၸႂ်ႉၸွမ်း **Interfaces** လႄႈ **Classes** တႃႇသၢင်ႈ Component ဢၼ်ၸႂ်ႉၶိုၼ်းလႆႈ (Reusable) ၵူႈ Type ၶႃႈဢေႃႈ။

---

#### **1. Generic Interfaces**
ႁဝ်းၸၢင်ႈသၢင်ႈ Interface ဢၼ် "ဢမ်ႇပႆႇမၵ်းမၼ်ႈ Type" ဝႆႉလႄႈ ၸႂ်ႉ `<T>` တႃႇပဵၼ် Placeholder ဝႆႉၶႃႈ။

```typescript
interface Box<T> {
  content: T;
  label: string;
}

// ၸႂ်ႉ Box တႃႇသိမ်း string
const stringBox: Box<string> = {
  content: "Shan Script",
  label: "Language"
};

// ၸႂ်ႉ Box တူဝ်လဵဝ်ၵၼ် တႃႇသိမ်း number
const numberBox: Box<number> = {
  content: 2026,
  label: "Year"
};
```


---

#### **2. Generic Classes**
Class ဢၼ်ပဵၼ် Generic တေၸွႆးႁႂ်ႈႁဝ်းသၢင်ႈ "Data Structures" (ၼင်ႇ List, Stack, Queue) ဢၼ်ႁပ်ႉလႆႈၵူႈ Type ၶႃႈ။

```typescript
class DataStorage<T> {
  private data: T[] = [];

  addItem(item: T) {
    this.data.push(item);
  }

  removeItem(item: T) {
    this.data.splice(this.data.indexOf(item), 1);
  }

  getItems() {
    return [...this.data];
  }
}

// သၢင်ႈ Storage တႃႇသိမ်း "ၸိုဝ်ႈလိၵ်ႈ" (Strings)
const nameStorage = new DataStorage<string>();
nameStorage.addItem("Sai Mao");
nameStorage.addItem("Kham");

// သၢင်ႈ Storage တႃႇသိမ်း "တူဝ်ၼပ်ႉ" (Numbers)
const scoreStorage = new DataStorage<number>();
scoreStorage.addItem(100);
```


---

#### **3. Why Use Generics in Classes/Interfaces?**
* **Flexibility:** ဢမ်ႇလူဝ်ႇသၢင်ႈ Class မႂ်ႇ တွၼ်ႈတႃႇၵူႈ Type (ၼင်ႇ `StringStorage`, `NumberStorage`)။
* **Type Safety:** TypeScript တေၸွႆးထတ်းပၼ် ႁႂ်ႈႁဝ်းသူင်ႇၶေႃႈမုၼ်းဢၼ်မႅၼ်ႈၸွမ်း Type ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼၼ်ႉၵူၺ်း။
* **Consistency:** ၼႄႇၸႂ်ဝႃႈ Property လႄႈ Method ၼႂ်း Class ၼၼ်ႉ တေၸႂ်ႉ Type လဵဝ်ၵၼ်တႃႇသေႇ။

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `<T>` ဝႆႉၼႃႈ Interface name တႃႇသၢင်ႈ Generic Interface။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `class Name<T>` ၸွႆးႁႂ်ႈ Properties လႄႈ Methods ၸႂ်ႉ Type ဢၼ်လႅၵ်ႈလၢႆႈလႆႈ။
- [ ] ႁူႉလၢႆးမၵ်းမၼ်ႈ Type တႅတ်ႈတေႃး (ၼင်ႇ `new DataStorage<string>()`) မိူဝ်ႈသၢင်ႈ Instance။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇၸႂ်ႉ `any` တႅၼ်း Generics ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈႁၢႆလၢႆ Type Safety။

---
