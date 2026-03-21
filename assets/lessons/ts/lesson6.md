### **Lesson 6: Professional Workflow (Watch Mode & Directory Structure)**

ၼႂ်းတွၼ်ႈၼႆႉ ႁဝ်းတေမႃးႁဵတ်းႁႂ်ႈၵၢၼ်တႅမ်ႈၶူတ်ႉႁဝ်း ၽႂ်းၶိုၼ်းသေၵဝ်ႇ လႄႈ ၸတ်းပိူင်ၾိုင််လ် (File Structure) ႁႂ်ႈမိူၼ်ၼင်ႇ "Professional" ၶဝ်ႁဵတ်းၵၢၼ်ၼၼ်ႉၶႃႈဢေႃႈ။

---

#### **1. Watch Mode (ၵၢၼ်ၸႅတ်ႈထတ်းၵမ်းလဵဝ်)**
မိူဝ်ႈႁဝ်းမႄးၶူတ်ႉဢိတ်းၼိုင်ႈ ႁဝ်းဢမ်ႇၶႂ်ႈမႃးၼဵၵ်း `tsc` ယူႇၵူႈပွၵ်ႈၶႃႈ။ TypeScript မီး "Watch Mode" ဢၼ်တေပႂ်ႉတူၺ်းဝႃႈ သင်ႁဝ်း **Save (Ctrl+S)** ၶူတ်ႉမိူဝ်ႈလႂ် မၼ်းတေပိၼ်ႇ (Compile) ပၼ်ၵမ်းလဵဝ်ၶႃႈ။

**လၢႆးၸႂ်ႉ (How to use):**
ၼႂ်း Terminal တႅမ်ႈဝႃႈ:
```bash
tsc -w
```
*(ဢမ်ႇၼၼ် `tsc --watch`)*

ၵမ်းၼႆႉ တူဝ် Terminal ၼၼ်ႉ တေဝႆႉ "Active" ယူႇတေႃႇသေ မၼ်းတေပႂ်ႉၸႅတ်ႈၶူတ်ႉႁဝ်းဝႆႉၵူႈၶၢဝ်းၶႃႈဢေႃႈ။ သင်တႅမ်ႈၽိတ်း မၼ်းတေတႅမ်ႈ Error လၢတ်ႈၼႄႁဝ်းၵမ်းလဵဝ်ၶႃႈ။

---

#### **2. Professional Directory Structure (ၵၢၼ်ၸတ်းပိူင် Folder)**
တွၼ်ႈတႃႇပရူဝ်ႇၵျႅၵ်ႉဢၼ်မီးမၢတ်ႇထၢၼ် (Standard) ၼၼ်ႉ ႁဝ်းတေဢမ်ႇဢဝ်ၾိုင််လ် `.ts` လႄႈ `.js` ဝႆႉလေႃးၵၼ်ၶႃႈ။ ႁဝ်းတေၸႅၵ်ႇၼင်ႇၼႆ:

* **`src/` (Source):** သိမ်းၾိုင််လ် TypeScript (`.ts`) ဢၼ်ႁဝ်းတႅမ်ႈ။
* **`dist/` (Distribution):** သိမ်းၾိုင််လ် JavaScript (`.js`) ဢၼ် Compiler ပိၼ်ႇဢွၵ်ႇမႃး။



**ၵၢၼ်တင်ႈၵႃႈၼႂ်း `tsconfig.json`:**
ႁႂ်ႈမႄးၶေႃႈမုၼ်းၸိူဝ်းၼႆႉ ႁႂ်ႈမႅၼ်ႈၸွမ်း Folder ႁဝ်း:
```json
{
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./dist"
  }
}
```

---

#### **3. ၶၵ်ႉတွၼ်ႈၵၢၼ်ႁဵတ်းၵၢၼ် (The Workflow)**

မိူဝ်ႈတႄႇႁဵတ်းပရူဝ်ႇၵျႅၵ်ႉမႂ်ႇ ႁႂ်ႈႁဵတ်းၸွမ်းၼင်ႇၼႆၶႃႈ:

1.  **Initialize:** တႅမ်ႈ `tsc --init` တႃႇသၢင်ႈ `tsconfig.json`။
2.  **Folders:** သၢင်ႈ Folder `src` သေ ဢဝ်ၾိုင််လ် `.ts` သႂ်ႇဝႆႉၼႂ်းၼၼ်ႉ။
3.  **Config:** တင်ႈၵႃႈ `rootDir` လႄႈ `outDir` ၼႂ်း `tsconfig.json`။
4.  **Start Watch:** ပိုတ်ႇ Terminal သေ တႅမ်ႈ `tsc -w`။
5.  **Code:** တႅမ်ႈၶူတ်ႉၼႂ်း `src/` သေ သိမ်း (Save)။ တူၺ်းၽူၼ်မၼ်း (Result) ပေႃႇမႃးၼႂ်း `dist/` ၵမ်းလဵဝ်ၶႃႈ။



---

#### **4. Summary Checklist**
- [ ] ၸႂ်ႉ `tsc -w` တႃႇပိၼ်ႇလိၵ်ႈၵမ်းလဵဝ် (Auto-compile) လႆႈယဝ်ႉ။
- [ ] ၸႅၵ်ႇ Folder `src` လႄႈ `dist` လႆႈယဝ်ႉ။
- [ ] ႁူႉလၢႆးလႅၼ်ႈၶူတ်ႉလူၺ်ႈ `node dist/app.js` ယဝ်ႉ။
- [ ] ႁႅၼ်းဝႆႉတႃႇတေတႄႇႁဵၼ်း **Module 2: Variables & Data Types** ယဝ်ႉ။

---
