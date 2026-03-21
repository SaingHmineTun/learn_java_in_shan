### **Lesson 20: Optional & Default Parameters**

ၼႂ်း JavaScript ပိုၼ်ႉထၢၼ်ၼၼ်ႉ သင်ႁဝ်းဢမ်ႇသူင်ႇ Parameter ၵႂႃႇၸိုင် မၼ်းတေပဵၼ် `undefined` ႁင်းၵူၺ်းၶႃႈ။ ၵူၺ်းၵႃႈ ၼႂ်း TypeScript ၼႆႉ မၼ်းတေၸႅတ်ႈထတ်း "တႅတ်ႈတေႃး" ၼႃႇၶႃႈ။ သင်ဝႃႈႁဝ်းမၢႆဝႆႉ 2 တူဝ် သေသူင်ႇၵႂႃႇ 1 တူဝ်ၵူၺ်းၸိုင် မၼ်းတေပၼ် Error ၵမ်းလဵဝ်ၶႃႈဢေႃႈ။

တွၼ်ႈတႃႇမႄးလွင်ႈၼႆႉ ႁဝ်းမီးလၢႆးၸႂ်ႉ **Optional** လႄႈ **Default** Parameters ၶႃႈ။

---

#### **1. Optional Parameters (`?`)**
သင်ဝႃႈ Parameter တူဝ်လႂ် ႁဝ်းၶႂ်ႈဝႃႈ "တေသူင်ႇၵေႃႈလႆႈ ဢမ်ႇသူင်ႇၵေႃႈလႆႈ" ၼႆၸိုင် ႁဝ်းတေၸႂ်ႉတူဝ်မၢႆထၢမ် **`?`** ဝႆႉၽၢႆႇလင်ၸိုဝ်ႈမၼ်းၶႃႈ။

```typescript
function buildName(firstName: string, lastName?: string): string {
  if (lastName) {
    return firstName + " " + lastName;
  } else {
    return firstName;
  }
}

console.log(buildName("ၸၢႆး", "မၢဝ်း")); // "ၸၢႆး မၢဝ်း"
console.log(buildName("ၼၢင်း"));        // "ၼၢင်း"
```
* **မၢႆတွၼ်ႈ:** Optional Parameter လူဝ်ႇလႆႈဝႆႉတၢင်းလင်သုတ်း (Last position) တႃႇသေႇၶႃႈၼႃ။



---

#### **2. Default Parameters (ၵႃႈၶၼ်တင်ႈဝႆႉ)**
သင်ႁဝ်းဢမ်ႇၶႂ်ႈၸႅတ်ႈ `if (lastName)` မိူၼ်ၼင်ႇတၢင်းၼိူဝ်ၼၼ်ႉ ႁဝ်းၸၢင်ႈပၼ်ၵႃႈၶၼ်ဝႆႉဢွၼ်တၢင်း (Default Value) လႆႈၶႃႈ။ သင်ဝႃႈလုၵ်ႈႁဵၼ်းဢမ်ႇသူင်ႇ Parameter ၼၼ်ႉမႃး မၼ်းတေဢဝ်ၵႃႈၶၼ်ဢၼ်ႁဝ်းတင်ႈဝႆႉၼၼ်ႉၸႂ်ႉၵမ်းလဵဝ်ၶႃႈ။

```typescript
function signUp(userName: string, country: string = "Muse"): void {
  console.log(userName + " comes from " + country);
}

signUp("Sai Mao"); // "Sai Mao comes from Muse"
signUp("Kham", "Namkham"); // "Kham comes from Namkham"
```
* **Type Inference:** မိူဝ်ႈႁဝ်းသႂ်ႇ `= "Muse"` ဝႆႉယဝ်ႉၼၼ်ႉ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `: string` ဝႆႉၵေႃႈလႆႈၶႃႈ၊ ယွၼ်ႉ TypeScript ႁူႉပၼ်ႁင်းၵူၺ်းယဝ်ႉ။



---

#### **3. Summary Checklist**
- [ ] ၸႂ်ႉ `?` တႃႇမၢႆ Parameter ဢၼ် "ဢမ်ႇသူင်ႇၵေႃႈလႆႈ"။
- [ ] ႁူႉဝႃႈ Optional Parameter လူဝ်ႇလႆႈဝႆႉၽၢႆႇလင် Parameter တူဝ်ဢၼ်လူဝ်ႇလႆႈသူင်ႇ (Required)။
- [ ] ၸႂ်ႉ `=` တႃႇပၼ်ၵႃႈၶၼ် Default သင်ဝႃႈဢမ်ႇမီး Parameter သူင်ႇမႃး။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Default Parameter ၸွႆးႁႂ်ႈၶူတ်ႉႁဝ်း "ပွတ်း" သေ `if/else`။

---
