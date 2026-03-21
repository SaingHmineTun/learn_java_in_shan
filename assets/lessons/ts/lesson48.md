### **Lesson 48: Source Maps (Debugging TS in the Browser)**

မိူဝ်ႈႁဝ်းတႅမ်ႈ TypeScript ယဝ်ႉ၊ ႁဝ်းလူဝ်ႇ **Compile** မၼ်းႁႂ်ႈပဵၼ် JavaScript ၸင်ႇတေဢဝ်ၵႂႃႇလႅၼ်ႈၼႂ်း Browser (ၼင်ႇ Chrome ဢမ်ႇၼၼ် Edge) လႆႈၶႃႈ။ ၵူၺ်းၵႃႈ မိူဝ်ႈမီး Error ၼၼ်ႉ Browser တေၼႄပၼ် Line Number ၶွင် JavaScript ဢၼ် "သုၵ်ႉယုင်ႈ" ဝႆႉၼၼ်ႉၵူၺ်း။

**Source Maps** ပဵၼ် "ၶူဝ်" (Bridge) ဢၼ်တေၸွႆးၸီႉပၼ်ဝႃႈ JavaScript Line ၼႆႉ မၼ်းမႃးတီႈ TypeScript Line လႂ်ၶႃႈဢေႃႈ။

---

#### **1. Source Map ပဵၼ်သင်?**
မၼ်းပဵၼ် File လဵၵ်ႉလဵၵ်ႉဢၼ်မီးၼၢမ်ႇသၵ်ႉ `.js.map` ၶႃႈ။ မၼ်းသိမ်းၶေႃႈမုၼ်းဝႃႈ:
* JavaScript Code တွၼ်ႈၼႆႉ ပဵၼ် هی TypeScript Code တွၼ်ႈၼႆႉ။
* ၸိုဝ်ႈ Variable ၼႂ်း JS ၼႆႉ မႃးတီႈ ၸိုဝ်ႈသင်ၼႂ်း TS။



---

#### **2. လၢႆးၵေႃႇသၢင်ႈ (How to Enable)**
တွၼ်ႈတႃႇတေၸႂ်ႉ Source Maps လႆႈၼၼ်ႉ ၸဝ်ႈၵဝ်ႇလူဝ်ႇၵႂႃႇမႄးၼႂ်း File **`tsconfig.json`** ၶႃႈ:

```json
{
  "compilerOptions": {
    "sourceMap": true,  // ✅ ပိတ်းဝႆႉႁႂ်ႈမၼ်းသၢင်ႈ .map files
    "outDir": "./dist"
  }
}
```

မိူဝ်ႈၸဝ်ႈၵဝ်ႇ Compile ယဝ်ႉ၊ ၸဝ်ႈၵဝ်ႇတေႁၼ် File မိူၼ်ၼင်ႇ `app.js` လႄႈ `app.js.map` ဢွၵ်ႇမႃးၸွမ်းၵၼ်ၶႃႈ။

---

#### **3. ၵၢၼ် Debug ၼႂ်း Browser**
မိူဝ်ႈၸဝ်ႈၵဝ်ႇပိတ်း `sourceMap: true` ယဝ်ႉ:
1.  ပိုတ်ႇ Browser Console (F12) သေ ၵႂႃႇတီႈ Tab **"Sources"**။
2.  ၸဝ်ႈၵဝ်ႇတေႁၼ် Folder ၶွင် TypeScript Code (`.ts`) ၼႄဝႆႉယူႇၼႂ်းၼၼ်ႉ (တင်းဝႃႈ Browser ဢမ်ႇလႅၼ်ႈ TS ၵေႃႈယဝ်ႉ)။
3.  ၸဝ်ႈၵဝ်ႇၸၢင်ႈသႂ်ႇ **Breakpoint** တီႈ Line ၶွင် TypeScript လႆႈၵမ်းလဵဝ်ၶႃႈ!



---

#### **4. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
* **Easy Debugging:** ဢမ်ႇလူဝ်ႇၵႂႃႇဢၢၼ်ႇ JavaScript ဢၼ် Compile ဝႆႉယဝ်ႉ (ဢၼ်ဢၢၼ်ႇယၢပ်ႇၼၼ်ႉ)။
* **Accurate Error Messages:** မိူဝ်ႈ App Crash၊ Browser တေလၢတ်ႈၼႄ Line Number ၼႂ်း TypeScript ႁဝ်းတေႉတေႉၶႃႈ။
* **Productivity:** မႄး Bug လႆႈၽႂ်းလိူဝ်သေၵဝ်ႇ ယွၼ်ႉႁဝ်းႁၼ်ၶူတ်ႉဢၼ်ႁဝ်းတႅမ်ႈဝႆႉတေႉတေႉၼၼ်ႉၶႃႈ။

---

#### **5. Summary Checklist**
- [ ] ႁူႉဝႃႈ **Source Maps** ၸွႆးၸီႉ TypeScript ၼႂ်း Browser။
- [ ] ပိတ်း `sourceMap: true` ၼႂ်း `tsconfig.json` တႃႇသၢင်ႈ `.map` files။
- [ ] ႁူႉလၢႆးပိုတ်ႇတူၺ်း TypeScript Code ၼႂ်း **Browser DevTools**။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Source Map ၸွႆးႁႂ်ႈႁဝ်းသႂ်ႇ Breakpoint ၼႂ်း TS လႆႈ။

---
