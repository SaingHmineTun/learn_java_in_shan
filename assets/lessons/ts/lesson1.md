### **Lesson 1: The Anatomy of TypeScript (Compiler vs. Runtime)**

TypeScript ၼႆႉ ပဵၼ် **Superset** ၶွင် JavaScript ၶႃႈ။ မၢႆထိုင်ဝႃႈ ၶူတ်ႉ JavaScript ၵူႈဢၼ် ပဵၼ် TypeScript လႆႈသေတႃႉ၊ TypeScript သမ်ႉထႅမ်သႂ်ႇပၼ် **Static Typing** (ၵၢၼ်မၢႆမဵဝ်းၶေႃႈမုၼ်း) ဢၼ်ၼိမ်သေ JavaScript ၶႃႈဢေႃႈ။

---

#### **1. တူဝ်ပိၼ်ႇလိၵ်ႈ လႄႈ ၶၢဝ်းလႅၼ်ႈ (Compiler vs. Runtime)**
လွင်ႈပႅၵ်ႇပိူင်ႈဢၼ်လွင်ႈယႂ်ႇသုတ်းၼႆႉ မီးၼင်ႇၼႆၶႃႈ:

* **Compiler Time (TypeScript):** ပဵၼ်ၶၢဝ်းယၢမ်းမိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈၶူတ်ႉယူႇၼၼ်ႉၶႃႈ။ တူဝ် Compiler (`tsc`) တေၸႅတ်ႈထတ်းပၼ်ဝႃႈ ၸဝ်ႈၵဝ်ႇတႅမ်ႈ "Types" (မဵဝ်းၶေႃႈမုၼ်း) ၽိတ်းႁႃႉမႅၼ်ႈႁႃႉ။ သင်ၽိတ်း မၼ်းတေပၼ် Error ၵမ်းလဵဝ်။
* **Runtime (JavaScript):** ပဵၼ်ၶၢဝ်းယၢမ်းမိူဝ်ႈၶူတ်ႉၼၼ်ႉ လႅၼ်ႈယူႇၼႂ်း Browser (ၼင်ႇ Chrome) ဢမ်ႇၼၼ် Node.js ၶႃႈ။ တီႈၼႆႉ TypeScript ဢမ်ႇမီးယဝ်ႉ၊ မီးၵူၺ်း JavaScript ဢၼ်လႅၼ်ႈယူႇၼၼ်ႉၶႃႈဢေႃႈ။



---

#### **2. လွင်ႈပႅၵ်ႇပိူင်ႈ (Comparison Table)**

| ဢၼ်ပႅၵ်ႇၵၼ် | **Compiler Time (TypeScript)** | **Runtime (JavaScript)** |
| :--- | :--- | :--- |
| **ၶၢဝ်းယၢမ်း** | မိူဝ်ႈတႅမ်ႈၶူတ်ႉ (Coding) | မိူဝ်ႈပရူဝ်ႇၵရႅမ်ႇလႅၼ်ႈ (Execution) |
| **ၼႃႈၵၢၼ်** | ၸႅတ်ႈလွင်ႈၽိတ်း (Type Checking) | ႁဵတ်းၵၢၼ်ၸွမ်းလူၺ်ႈ Logical |
| **Types** | မီး (: string, : number) | ဢမ်ႇမီး (Type Erasure) |
| **Browser** | ဢမ်ႇႁူႉၸႂ် TypeScript | ႁူႉၸႂ် JavaScript ဢၼ်လဵဝ် |

---

#### **3. Type Erasure (ၵၢၼ်မွတ်ႇပႅတ်ႈ Types)**
လွင်ႈၼႆႉ လွင်ႈယႂ်ႇၼႃႇၶႃႈ။ မိူဝ်ႈ TypeScript ပိၼ်ႇပဵၼ် JavaScript ယဝ်ႉၼၼ်ႉ၊ "Types" ၸိူဝ်းဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉ တေထုၵ်ႇမွတ်ႇပႅတ်ႈ (Erase) သဵင်ႈသဵင်ႈၶႃႈ။

**တူဝ်ယၢင်ႇ (Example):**
* **TypeScript:** `let age: number = 25;`
* **JavaScript:** `var age = 25;`

ယွၼ်ႉသင်လႄႈမွတ်ႇပႅတ်ႈ? ယွၼ်ႉဝႃႈ Browser ၶဝ်ဢမ်ႇႁူႉၸႂ်ဝႃႈ `: number` ၼၼ်ႉပဵၼ်သင်၊ မၼ်းႁူႉၸႂ်ၵူၺ်းဝႃႈ `age = 25` ၶႃႈဢေႃႈ။ ၵွပ်ႈၼၼ် TypeScript မီးဝႆႉတႃႇၸွႆး **"ၵူၼ်းတႅမ်ႈၶူတ်ႉ (Developer)"** ၵူၺ်း၊ ဢမ်ႇၸႂ်ႈတႃႇ Browser ၶႃႈ။

---

#### **4. Summary Checklist**
- [ ] TypeScript ၼႆႉ Browser ဢမ်ႇလႅၼ်ႈလႆႈၵမ်းလဵဝ်။
- [ ] တေလႆႈၸႂ်ႉ Compiler ပိၼ်ႇပဵၼ် JavaScript ဢွၼ်တၢင်း။
- [ ] TypeScript ၸွႆးႁႄႉၵႅတ်ႇလွင်ႈၽိတ်း ၼႂ်းၶၢဝ်းယၢမ်းတႅမ်ႈၶူတ်ႉ (Compile Time)။
- [ ] မိူဝ်ႈလႅၼ်ႈ (Runtime) တေမီးၵူၺ်း JavaScript ဢၼ်ၵႅၼ်ႇၶႅင်ယဝ်ႉၼၼ်ႉၶႃႈ။