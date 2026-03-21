### **Lesson 46: Built-in Error Types (Reference, Syntax, Type Errors)**

မိူဝ်ႈႁဝ်းတႅမ်ႈ TypeScript/JavaScript ၼၼ်ႉ Error ဢၼ်ႁဝ်းလႆႈႁၼ်ၵႆႉသုတ်း တေမီးယူႇလၢႆလၢႆမဵဝ်းၶႃႈ။ ၵၢၼ်ႁူႉဝႃႈ Error တူဝ်လႂ် မၢႆထိုင်သင်ၼၼ်ႉ တေၸွႆးႁႂ်ႈၸဝ်ႈၵဝ်ႇ **Debug** (မႄးၶူတ်ႉ) လႆႈၽႂ်းလိူဝ်သေၵဝ်ႇၶႃႈဢေႃႈ။

---

#### **1. Syntax Error**
မၢႆထိုင်ဝႃႈ "လၢႆးတႅမ်ႈၶူတ်ႉ" ၽိတ်းပိူင်ၶႃႈ။ TypeScript/JavaScript ဢမ်ႇပွင်ႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇတႅမ်ႈသင်ဝႆႉ ယွၼ်ႉမၼ်းဢမ်ႇမႅၼ်ႈၸွမ်းပိူင် (Grammar) မၼ်းၶႃႈ။

* **တူဝ်ယၢင်ႇ:** လူင်ပိတ်းဝူင်းလဵၵ်း, တႅမ်ႈၶေႃႈၵႂၢမ်းဝႆႉၽိတ်း။
```typescript
// ❌ SyntaxError: Unexpected token '}'
if (true) {
  console.log("Hello"
// လူင်ပိတ်းဝူင်းလဵၵ်း ')'
```

---

#### **2. Reference Error**
မၢႆထိုင်ဝႃႈ ၸဝ်ႈၵဝ်ႇၵႂႃႇႁွင်ႉၸႂ်ႉ Variable ဢမ်ႇၼၼ် Function ဢၼ် **"ဢမ်ႇမီးယူႇတေႉ"** (Not Defined) ၶႃႈ။

* **တူဝ်ယၢင်ႇ:** တႅမ်ႈၸိုဝ်ႈ Variable ၽိတ်း ဢမ်ႇၼၼ် ႁွင်ႉၸႂ်ႉ Variable ဢၼ်ဢမ်ႇပၼ်ၵႃႈၶၼ်ဝႆႉ။
```typescript
// ❌ ReferenceError: myData is not defined
console.log(myData); 
```

---

#### **3. Type Error**
မၢႆထိုင်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢဝ် Variable မဵဝ်းၼိုင်ႈ ၵႂႃႇၸႂ်ႉၼႂ်းလၢႆးဢၼ် "ဢမ်ႇမႅၼ်ႈ" ၸွမ်း Type မၼ်းၶႃႈ။

* **တူဝ်ယၢင်ႇ:** ဢဝ် Number မႃးႁွင်ႉၸႂ်ႉၼင်ႇ Function ဢမ်ႇၼၼ် ဢဝ် `.toUpperCase()` ၵႂႃႇၸႂ်ႉၸွမ်း Number။
```typescript
let num = 123;
// ❌ TypeError: num.toUpperCase is not a function
num.toUpperCase(); 
```

---

#### **4. Range Error**
မၢႆထိုင်ဝႃႈ ၵႃႈၶၼ် (Value) ဢၼ်ၸဝ်ႈၵဝ်ႇၸႂ်ႉၼၼ်ႉ မၼ်း **"ပူၼ်းၶွပ်ႇ"** ဢၼ်မၼ်းႁပ်ႉလႆႈၶႃႈ။

* **တူဝ်ယၢင်ႇ:** ၵၢၼ်သၢင်ႈ Array ဢၼ်ယႂ်ႇပူၼ်းတီႈ ဢမ်ႇၼၼ် ၵၢၼ်ႁဵတ်း Recursive Function ဢၼ်ဢမ်ႇမီးတီႈၵိုတ်း။
```typescript
// ❌ RangeError: Invalid array length
let arr = new Array(-1); 
```



---

#### **5. Summary Checklist**
- [ ] ႁူႉဝႃႈ **Syntax Error** ပဵၼ်ယွၼ်ႉလၢႆးတႅမ်ႈၶူတ်ႉၽိတ်း။
- [ ] ႁူႉဝႃႈ **Reference Error** ပဵၼ်ယွၼ်ႉႁွင်ႉၸႂ်ႉတူဝ်ဢၼ်ဢမ်ႇမီးယူႇတေႉ။
- [ ] ႁူႉဝႃႈ **Type Error** ပဵၼ်ယွၼ်ႉၸႂ်ႉ Variable ၽိတ်းပိူင် (Wrong usage)။
- [ ] ႁူႉဝႃႈ **Range Error** ပဵၼ်ယွၼ်ႉၵႃႈၶၼ်ပူၼ်းၶွပ်ႇ (Out of bounds)။

---

**Next Lesson:** မိူဝ်ႈမီး Error ယဝ်ႉ ႁဝ်းတေၸႂ်ႉၶိူင်ႈၵျၢပ်ႈၼႂ်း **VS Code** တႃႇ "ၵိုတ်းၶူတ်ႉ" သေ ၸႅတ်ႈထတ်းတူၺ်းၵႃႈၶၼ်ၼႂ်းၼၼ်ႉႁိုဝ်? ႁဝ်းတေၵႂႃႇႁဵၼ်းၼႂ်း **Lesson 47: Debugging in VS Code** ၶႃႈ!

ၸဝ်ႈၵဝ်ႇ ႁႅၼ်းဝႆႉတႃႇတေၵႂႃႇ Lesson 47 ယဝ်ႉႁႃႉၶႃႈ ၸၢႆးမၢဝ်း?