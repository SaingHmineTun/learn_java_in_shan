### **Lesson 73: Singletons (Ensuring only one instance exists)**

ၼႂ်းလွင်ႈတႅမ်ႈ App ဢၼ်ယႂ်ႇၼၼ်ႉ၊ မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇ Class ဢၼ်မီး **"တူဝ်လဵဝ်" (Single Instance)** တႃႇသေႇၶႃႈ။ တူဝ်ယၢင်ႇ: Class ဢၼ်ၵုမ်းထိင်း Database Connection ဢမ်ႇၼၼ် Class ဢၼ်ၵုမ်းထိင်း Application Settings ၶႃႈဢေႃႈ။ သင်ႁဝ်းသၢင်ႈမၼ်းလၢႆလၢႆတူဝ်၊ မၼ်းတေႁဵတ်းႁႂ်ႈ Memory เปลือง လႄႈ ၶေႃႈမုၼ်းသုၵ်ႉယၢင်ႈလႆႈၶႃႈ။

ႁဝ်းၸႂ်ႉ **Singleton Pattern** တႃႇၵႄႈလွင်ႈၼႆႉၶႃႈ။

---

#### **1. How to create a Singleton? (လၢႆးတႅမ်ႈ)**
တွၼ်ႈတႃႇတေႁဵတ်း Singleton လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇမီး 3 တွၼ်ႈၶႃႈ:
1.  **Private Constructor:** ႁၢမ်ႈဢမ်ႇႁႂ်ႈၵူၼ်းၼွၵ်ႈၸႂ်ႉ `new` တႃႇသၢင်ႈ Object လႆႈႁင်းၵူၺ်း။
2.  **Static Instance Property:** သိမ်း Object တူဝ်ဢၼ်သၢင်ႈဝႆႉယဝ်ႉၼၼ်ႉဝႆႉၼႂ်း Class။
3.  **Static Getter Method:** ပဵၼ်တူဝ်ဢၼ်တေၸႅတ်းထတ်းဝႃႈ "မီး Object ယဝ်ႉႁႃႉ?" သင်ဢမ်ႇပႆႇမီးၵေႃႈသၢင်ႈမႂ်ႇ၊ သင်မီးယဝ်ႉၵေႃႈသူင်ႇတူဝ်ၵဝ်ႇၼၼ်ႉဢွၵ်ႇၵႂႃႇၶႃႈ။

```typescript
class Database {
  private static instance: Database;

  // 1. Private Constructor: ႁၢမ်ႈၸႂ်ႉ 'new' တီႈၽၢႆႇၼွၵ်ႈ
  private constructor() {
    console.log("Connected to Database!");
  }

  // 2. Static Method တႃႇဢဝ် Object တူဝ်လဵဝ်ၼၼ်ႉ
  static getInstance() {
    if (this.instance) {
      return this.instance; // သင်မီးယဝ်ႉ သူင်ႇတူဝ်ၵဝ်ႇ
    }
    this.instance = new Database(); // သင်ဢမ်ႇပႆႇမီး ၸင်ႇသၢင်ႈမႂ်ႇ
    return this.instance;
  }
}

// const db = new Database(); // ❌ Error: Constructor is private
const db1 = Database.getInstance(); // ✅ "Connected to Database!"
const db2 = Database.getInstance(); // ✅ (ဢမ်ႇ Connect မႂ်ႇယဝ်ႉ၊ ဢဝ်တူဝ်ၵဝ်ႇမႃးၸႂ်ႉ)

console.log(db1 === db2); // true (မၼ်းပဵၼ် Object တူဝ်လဵဝ်ၵၼ်တေႉတေႉ)
```



---

#### **2. Why use Singletons?**
* **Resource Management:** လူတ်းယွမ်းၵၢၼ်ၸႂ်ႉ Memory ၼမ်ပူၼ်းတီႈ (ၼင်ႇ ၵၢၼ်ပိုတ်ႇ Connection ၼမ်ၼႃႇ)။
* **Global Access:** ၵူႈတီႈၼႂ်း App ၸၢင်ႈၶဝ်ႈၸႂ်ႉၶေႃႈမုၼ်းလဵဝ်ၵၼ်လႆႈ (Shared State)။
* **Strict Control:** ၼႄႇၸႂ်ဝႃႈ ၶေႃႈမုၼ်းဢၼ်လွင်ႈယႂ်ႇ (Settings) တေဢမ်ႇထုၵ်ႇသၢင်ႈသမ်ႉၵၼ်သေ ႁဵတ်းႁႂ်ႈမီးၵႃႈၶၼ်ပႅၵ်ႇၵၼ်။

---

#### **3. Summary Checklist**
- [ ] ၸႂ်ႉ **`private constructor`** တႃႇႁႄႉၵႅတ်ႇၵၢၼ်ၸႂ်ႉ `new` တီႈၽၢႆႇၼွၵ်ႈ။
- [ ] သၢင်ႈ **`static instance`** တႃႇသိမ်း Object တူဝ်လဵဝ်ၼၼ်ႉဝႆႉ။
- [ ] ၸႂ်ႉ **`static getInstance()`** တႃႇပဵၼ်တၢင်းၶဝ်ႈၸူး Object။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇၸႂ်ႉ Singleton မိူဝ်ႈလူဝ်ႇ "တူဝ်လဵဝ်တေႃႇၸူဝ်ႈ" (Single Instance) တေႉတေႉၵူၺ်း။

---