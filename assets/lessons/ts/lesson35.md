### **Lesson 35: Const Enums (Performance and usage)**

ၼႂ်း TypeScript ၼႆႉ `enum` ธรรมดา တေထိုင်ပဵၼ် JavaScript Object ဝၢႆးသေ Compile ယဝ်ႉၶႃႈ။ ၵူၺ်းၵႃႈ သင်ႁဝ်းၶႂ်ႈႁႂ်ႈၶူတ်ႉ (Code) ႁဝ်း "ၽႂ်း" (Performance) လႄႈ "သႅၼ်ႈသႂ်" (Clean) လိူဝ်သေၵဝ်ႇၸိုင် ႁဝ်းၸၢင်ႈၸႂ်ႉ **`const enum`** ၶႃႈဢေႃႈ။

---

#### **1. Const Enum ပဵၼ်သင်?**
မၼ်းပဵၼ် Enum ဢၼ် "ႁၢႆလၢႆၵႂႃႇ" (Inlined) ဝၢႆးသေ Compile ပဵၼ် JavaScript ယဝ်ႉၶႃႈ။ TypeScript တေဢမ်ႇသၢင်ႈ Object ဝႆႉၼႂ်း Runtime၊ မၼ်းတေဢဝ် "ၵႃႈၶၼ်" (Value) ၼၼ်ႉ သႂ်ႇတႅၼ်းတီႈဝႆႉၵမ်းလဵဝ်ၶႃႈ။

**ပိူင်တႅမ်ႈ (Syntax):**
```typescript
const enum AppStatus {
  Loading,
  Success,
  Error
}

let current = AppStatus.Success;
```



---

#### **2. တႅၵ်ႈၼိူင်းၸွမ်း Regular Enum**

* **Regular Enum:** တေမီး JavaScript Object ၼင်ႇ `{ 0: "Loading", Loading: 0, ... }` ဝႆႉၼႂ်း File ဝၢႆး Compile။ ဢၼ်ၼႆႉ ၸၢင်ႈႁဵတ်းႁႂ်ႈ File Size ယႂ်ႇမႃးဢိတ်းဢွတ်းၶႃႈ။
* **Const Enum:** တေဢမ်ႇမီး Object သင်သေဢၼ်။ တီႈဢၼ်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ `AppStatus.Success` ၼၼ်ႉ တေလႅၵ်ႈပဵၼ် `1` (တူဝ်ၼပ်ႉ) ၵမ်းလဵဝ်ၼႂ်း JavaScript ၶႃႈဢေႃႈ။

---

#### **3. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉ Const Enum?**
* **Performance:** မိူဝ်ႈၶႂ်ႈႁႂ်ႈ App ႁဝ်းလႅၼ်ႈၽႂ်း လႄႈ File Size လဵၵ်ႉ။
* **Internal Constants:** မိူဝ်ႈၸႂ်ႉ Enum ၼႂ်းပရူဝ်ႇၵရႅမ်ႇႁဝ်းၵူၺ်း (ဢမ်ႇၸႂ်ႉတႃႇသူင်ႇဢွၵ်ႇပဵၼ် JSON ဢမ်ႇၼၼ် ၸႂ်ႉၼႂ်း Library တၢင်ႇဢၼ်)။

**ၶေႃႈသင်ႇ (Caution):**
သင်ဝႃႈၸဝ်ႈၵဝ်ႇၶႂ်ႈဢဝ် Enum ၼၼ်ႉ မႃးပၼ်ႇ Loop (ၼင်ႇ `Object.keys`) ၸိုင် ၸဝ်ႈၵဝ်ႇ **ဢမ်ႇၸၢင်ႈၸႂ်ႉ** `const enum` ၶႃႈ။ ယွၼ်ႉဝႃႈမၼ်း "ဢမ်ႇမီး Object" ဝႆႉၼႂ်း JavaScript တႃႇတေပၼ်ႇၼၼ်ႉယဝ်ႉၶႃႈ။

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉၶေႃႈၵႂၢမ်း `const enum` တႃႇႁႂ်ႈၶူတ်ႉ "ၽႂ်း" လိူဝ်သေၵဝ်ႇ။
- [ ] ပွင်ႇၸႂ်ဝႃႈ `const enum` တေဢမ်ႇသၢင်ႈ Object ဝႆႉၼႂ်း JavaScript ဝၢႆး Compile။
- [ ] ႁူႉဝႃႈ `const enum` တေဢဝ် Value သႂ်ႇတႅၼ်း (Inlining) ပၼ်ၵမ်းလဵဝ်။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇၸႂ်ႉ `const enum` မိူဝ်ႈလူဝ်ႇပၼ်ႇ Loop (Iterate) တူၺ်း Keys ၼႂ်း Enum။

---

**Next Lesson:** သင်ဝႃႈႁဝ်းမီး Array ဢၼ်ႁဝ်းၶႂ်ႈႁႂ်ႈ "ဢၢၼ်ႇလႆႈၵူၺ်း" သေ ႁၢမ်ႈမႄး၊ ႁၢမ်ႈထႅမ်၊ ႁၢမ်ႈလွတ်ႈ (Immutable List) ႁဝ်းတေႁဵတ်းႁိုဝ်? ႁဝ်းတေၵႂႃႇႁဵၼ်းၼႂ်း **Lesson 36: Readonly Arrays** ၶႃႈ!

ၸဝ်ႈၵဝ်ႇ ႁႅၼ်းဝႆႉတႃႇတေၵႂႃႇ Lesson 36 ယဝ်ႉႁႃႉၶႃႈ ၸၢႆးမၢဝ်း?