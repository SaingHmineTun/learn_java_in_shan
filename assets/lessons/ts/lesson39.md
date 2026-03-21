### **Lesson 39: Truthiness Guarding (Handling null and undefined)**

ၼႂ်း JavaScript လႄႈ TypeScript ၼၼ်ႉ `null` လႄႈ `undefined` ပဵၼ်တူဝ်ဢၼ်ႁဵတ်းႁႂ်ႈ App ႁဝ်း "Error" လႄႈ "Crash" ၼမ်သုတ်းၶႃႈ။ **Truthiness Guarding** ပဵၼ်လၢႆးၸႅတ်ႈထတ်းဝႃႈ "ၶေႃႈမုၼ်းမီးတေႉႁႃႉ?" ဢွၼ်တၢင်းတေဢဝ်ၵႂႃႇၸႂ်ႉၶႃႈဢေႃႈ။

---

#### **1. Truthiness ၼႆႉပဵၼ်သင်?**
ၼႂ်း JavaScript ၼၼ်ႉ ၵႃႈၶၼ် (Values) ၸိူဝ်းၼႆႉ ပဵၼ် **Falsy** (တေၼႄပဵၼ် `false` မိူဝ်ႈၸႅတ်ႈၼႂ်း `if`) ၶႃႈ:
* `false`
* `0`
* `""` (Empty string)
* `null`
* `undefined`
* `NaN`

ၵႃႈၶၼ်တၢင်ႇၸိူဝ်းတင်းသဵၼ်ႈ ပဵၼ် **Truthy** (`true`) ၶႃႈဢေႃႈ။

---

#### **2. ၵၢၼ်ၸႅတ်ႈထတ်း (Checking for existence)**
မိူဝ်ႈႁဝ်းမီး Variable ဢၼ်ၸၢင်ႈပဵၼ် `null` ၸိုင် ႁဝ်းလူဝ်ႇၸႅတ်ႈထတ်း "Truthiness" မၼ်းဢွၼ်တၢင်းၶႃႈ။

```typescript
function printMessage(msg: string | null) {
  if (msg) {
    // ၼႂ်းၼႆႉ TypeScript ႁူႉဝႃႈ msg မီးတေႉ (Truthy) လႄႈ ပဵၼ် string
    console.log(msg.toUpperCase());
  } else {
    // ၼႂ်းၼႆႉ msg ပဵၼ် null ဢမ်ႇၼၼ် "" (Empty)
    console.log("No message provided.");
  }
}
```



---

#### **3. ၵၢၼ်ၸႅတ်ႈထတ်း Null တႅတ်ႈတေႃး**
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈႁပ်ႉဢဝ် `0` ဢမ်ႇၼၼ် `""` (Empty string) ယူႇ၊ ၵူၺ်းၵႃႈ ႁဝ်းၶႂ်ႈႁၢမ်ႈၵူၺ်း `null` လႄႈ `undefined` ၸိုင် ႁဝ်းၸၢင်ႈၸႅတ်ႈၸိူဝ်ႉၼႆၶႃႈ:

```typescript
function process(value: number | null | undefined) {
  if (value !== null && value !== undefined) {
    // ယၢမ်းၼႆႉ value တေပဵၼ် number တႅတ်ႈတေႃး (ပႃးတင်း 0)
    console.log(value.toFixed(2));
  }
}
```

---

#### **4. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
* **Avoid Runtime Crashes:** ႁႄႉၵႅတ်ႇ Error ဢၼ်ဝႃႈ `Cannot read property '...' of null` ၶႃႈ။
* **Safe API Calls:** မိူဝ်ႈႁပ်ႉၶေႃႈမုၼ်းမႃးတီႈ Server ဢၼ်ၸၢင်ႈ "ပဝ်ႇ" (Empty) မႃးၼၼ်ႉၶႃႈ။
* **Better Logic:** ၸွႆးႁႂ်ႈပရူဝ်ႇၵရႅမ်ႇႁဝ်း ႁူႉၸတ်းၵၢၼ်ၶေႃႈမုၼ်းဢၼ် "ႁၢႆလၢႆ" ဝႆႉၼၼ်ႉၶႃႈ။



---

#### **5. Summary Checklist**
- [ ] ႁူႉဝႃႈ `null`, `undefined`, `0`, `""` ပဵၼ် Falsy values။
- [ ] ၸႂ်ႉ `if (variable)` တႃႇၸႅတ်ႈထတ်းဝႃႈ ၶေႃႈမုၼ်းမီးတေႉႁႃႉ။
- [ ] ႁူႉလၢႆးၸႅတ်ႈထတ်း `!== null` တႅတ်ႈတေႃး မိူဝ်ႈၶႂ်ႈလႆႈတူဝ်ၼပ်ႉ 0။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇၸႂ်ႉ Method ၶွင် Variable ဢွၼ်တၢင်းတေၸႅတ်ႈ Truthiness။

---