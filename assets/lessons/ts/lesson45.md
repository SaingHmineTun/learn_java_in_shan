### **Lesson 45: Type Guarding 'unknown' errors in catch blocks**

ၼႂ်း TypeScript ၸၼ်ႉသုင် (Version 4.0 ၶိုၼ်ႈၼိူဝ်)၊ Error ဢၼ်ႁဝ်း "Catch" လႆႈမႃးၼၼ်ႉ မၼ်းတေပဵၼ် Type **`unknown`** ၶႃႈဢေႃႈ။ ဢၼ်ၼႆႉပဵၼ်ယွၼ်ႉဝႃႈ ၼႂ်း JavaScript ႁဝ်းၸၢင်ႈ `throw` သင်ၵေႃႈလႆႈ (ၼင်ႇ String, Number, ဢမ်ႇၼၼ် Object)၊ လႄႈ TypeScript ဢမ်ႇၼႄႇၸႂ်ဝႃႈ မၼ်းတေပဵၼ် Error Object တေႉႁႃႉ ၼႆၶႃႈ။

---

#### **1. The Problem: Why `unknown`?**
သင်ႁဝ်းတႅမ်ႈၸိူဝ်ႉၼႆ ၼႂ်း TypeScript ၶိူၼ်းမႂ်ႇ၊ မၼ်းတေပၼ် Error ၶႃႈ:

```typescript
try {
  // some code...
} catch (error) {
  // ❌ Error: 'error' is of type 'unknown'.
  console.log(error.message); 
}
```
ယွၼ်ႉဝႃႈ `unknown` မၼ်းၵႅၼ်ႇၶႅင်လိူဝ် `any`၊ ႁဝ်းဢမ်ႇၸၢင်ႈဢဝ် Property ၼင်ႇ `.message` မႃးၸႂ်ႉၵမ်းလဵဝ် လႅၼ်ႈလႅၼ်ႈလႆႈၶႃႈ။

---

#### **2. The Solution: Type Guarding**
ႁဝ်းလူဝ်ႇလႆႈ "ၸႅတ်ႈထတ်း" (Narrowing) ဢွၼ်တၢင်း တေဢဝ်ၵႂႃႇၸႂ်ႉၶႃႈ။ လၢႆးဢၼ်လီသုတ်းတႄႉ ပဵၼ်ၵၢၼ်ၸႂ်ႉ **`instanceof Error`** ၶႃႈဢေႃႈ။

```typescript
try {
  throw new Error("Something went wrong!");
} catch (error) {
  if (error instanceof Error) {
    // ✅ ယၢမ်းၼႆႉ TypeScript ႁူႉဝႃႈ error မီး .message ယဝ်ႉ
    console.log("Error Message: " + error.message);
  } else {
    // သင်ဝႃႈမၼ်းဢမ်ႇၸႂ်ႉ Error Object (ၼင်ႇ throw "String")
    console.log("An unknown error occurred: " + String(error));
  }
}
```



---

#### **3. ၵွပ်ႈသင်လႄႈလူဝ်ႇႁဵတ်းၼႆ?**
* **Type Safety:** ႁႄႉၵႅတ်ႇလွင်ႈပရူဝ်ႇၵရႅမ်ႇ Crash မိူဝ်ႈ `error` ဢမ်ႇမီး `.message` (ၼင်ႇ မိူဝ်ႈမၼ်းပဵၼ် `undefined` ဢမ်ႇၼၼ် String)။
* **Strict Checking:** ၸွႆးႁႂ်ႈႁဝ်းတႅမ်ႈၶူတ်ႉဢၼ် "ၼိမ်ၵႅၼ်ႇ" (Robust) လႄႈ ၸတ်းၵၢၼ်လႆႈၵူႈလွင်ႈၽိတ်းပိူင်။
* **Better Debugging:** မိူဝ်ႈႁဝ်းၸႅတ်ႈထတ်းယဝ်ႉ၊ ႁဝ်းၸၢင်ႈၼႄၶေႃႈမုၼ်းဢၼ်မႅၼ်ႈၸွမ်း တူဝ် Error ၼၼ်ႉတေႉတေႉၶႃႈ။

---

#### **4. Summary Checklist**
- [ ] ႁူႉဝႃႈ `error` ၼႂ်း catch block ပဵၼ် Type `unknown` တႃႇသေႇ။
- [ ] ၸႂ်ႉ `if (error instanceof Error)` တႃႇၸႅတ်ႈထတ်း ဢွၼ်တၢင်းတေၸႂ်ႉ `.message`။
- [ ] ပွင်ႇၸႂ်ဝႃႈ ၼႂ်း JavaScript ႁဝ်းၸၢင်ႈ `throw` ၶေႃႈမုၼ်းသင်ၵေႃႈလႆႈ ဢၼ်ဢမ်ႇၸႂ်ႉ Error Object။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇမီးလၢႆးၸတ်းၵၢၼ် (Fallback) မိူဝ်ႈ Error ၼၼ်ႉ ဢမ်ႇၸႂ်ႉ Error Object။

---