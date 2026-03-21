### **Lesson 2: The Toolkit (Node.js & Global TSC Installation)**

တွၼ်ႈတႃႇတေတႅမ်ႈ TypeScript လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉၶိူင်ႈမိုဝ်း (Tools) ဢၼ်ပဵၼ်မၢတ်ႇထၢၼ် 2 တူဝ်ၶႃႈ။ မိူၼ်ၼင်ႇႁဝ်းတေၵေႃႇသၢင်ႈႁိူၼ်း ႁဝ်းလူဝ်ႇမီးတင်း "ၶိူင်ႈၸတ်းၵၢၼ်" လႄႈ "တူဝ်ပိၼ်ႇလိၵ်ႈ" ၶႃႈဢေႃႈ။

---

#### **1. Node.js (The Engine)**
**Node.js** ၼႆႉ ပဵၼ် "ၸတ်းၵၢၼ် (Environment)" ဢၼ်ႁဵတ်းႁႂ်ႈ JavaScript လႅၼ်ႈလႆႈၼႂ်းၶွမ်ႇပိဝ်ႇတႃႇႁဝ်းၶႃႈ။
* **NPM (Node Package Manager):** မိူဝ်ႈႁဝ်းသႂ်ႇ Node.js ယဝ်ႉ မၼ်းတေပႃး NPM မႃးၸွမ်း။ NPM ၼႆႉ မိူၼ်ၼင်ႇ "ႁၢၼ်ႉၶၢႆၶိူင်ႈမိုဝ်း" ဢၼ်ႁဝ်းတေၵႂႃႇလူတ်ႇဢဝ် TypeScript မႃးၸႂ်ႉၼၼ်ႉၶႃႈ။



---

#### **2. TSC - TypeScript Compiler (The Translator)**
**TSC** ၼႆႉ ပဵၼ်တူဝ်ပိၼ်ႇလိၵ်ႈ ဢၼ်တေဢဝ်ၾိုင််လ် `.ts` ႁဝ်း ပိၼ်ႇပဵၼ် `.js` ၼၼ်ႉၶႃႈ။ ႁဝ်းတေလႆႈသႂ်ႇမၼ်းဝႆႉၼႂ်းၶွမ်ႇႁဝ်းၵူႈတီႈ (Global) ၼင်ႇႁိုဝ်တေႁွင်ႉၸႂ်ႉလႆႈၵူႈ Folder ၶႃႈ။

---

#### **3. ၶၵ်ႉတွၼ်ႈၵၢၼ်သႂ်ႇ (Installation Steps)**

**Step 1: သႂ်ႇ Node.js**
1. ၵႂႃႇတီႈဝႅပ်ႉသၢႆႉ [nodejs.org](https://nodejs.org/)။
2. လူတ်ႇဢဝ်တူဝ် **LTS (Long Term Support)** (ဢၼ်ၼိမ်သေပိူၼ်ႈ) သေ Install ၸွမ်းၼင်ႇၶွမ်ႇၸီႉသင်ႇၶႃႈ။
3. ၵူတ်ႇထတ်းတူၺ်းၼႂ်း Terminal:
   ```bash
   node -v
   npm -v
   ```

**Step 2: သႂ်ႇ TypeScript Compiler (Global)**
မိူဝ်ႈမီး NPM ယဝ်ႉ ႁဝ်းတေၸႂ်ႉမၼ်းလူတ်ႇ TypeScript မႃးသႂ်ႇ:
1. ၼႂ်း Terminal တႅမ်ႈဝႃႈ:
   ```bash
   npm install -g typescript
   ```
   *(မၢႆတွၼ်ႈ: တူဝ် `-g` မၢႆထိုင် Global ၶႃႈ)*

**Step 3: ၵူတ်ႇထတ်း (Verify)**
တႃႇတေႁူႉဝႃႈ TypeScript ႁဝ်းတႅမ်ႈၵၢၼ်လႆႈယဝ်ႉႁႃႉၼႆ တႅမ်ႈတူၺ်း:
```bash
tsc -v
```



---

#### **4. Summary Checklist**
- [ ] Node.js သႂ်ႇယဝ်ႉယဝ်ႉ (Check via `node -v`).
- [ ] NPM ႁဵတ်းၵၢၼ်ယူႇ (Check via `npm -v`).
- [ ] TypeScript Compiler သႂ်ႇယဝ်ႉယဝ်ႉ (Check via `tsc -v`).
- [ ] ႁႅၼ်းဝႆႉတႃႇတေတႄႇတႅမ်ႈၶူတ်ႉယဝ်ႉ။

---
