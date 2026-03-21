### **Lesson 10: Union Types (Allowing multiple possibilities)**

ၼႂ်းၵၢၼ်တႅမ်ႈပရူဝ်ႇၵရႅမ်ႇတေႉတေႉၼၼ်ႉ ၵႆႉမီးလွင်ႈတၢင်းဢၼ် ဝေႇရီႇယေႇပူဝ်ႇ (Variable) ၼိုင်ႈဢၼ် လူဝ်ႇလႆႈသိမ်းၶေႃႈမုၼ်းလႆႈ **"လိူဝ်သေၼိုင်ႈမဵဝ်း"** ၶႃႈ။ TypeScript ၸွႆးႁဝ်းလႆႈလူၺ်ႈၵၢၼ်ၸႂ်ႉ **Union Types** ၶႃႈဢေႃႈ။

---

#### **1. Union Types ပဵၼ်သင်?**
Union Types မၢႆထိုင် ၵၢၼ်ဢဝ် Type တင်းၼမ်မႃး "ႁူမ်ႈၵၼ်" ဝႆႉၼႂ်း Variable တူဝ်လဵဝ်ၶႃႈ။ ႁဝ်းတေၸႂ်ႉၶိူင်ႈမၢႆ **Pipe (`|`)** တႃႇၸႅၵ်ႇမၼ်း ဢၼ်မၢႆထိုင်ဝႃႈ **"ဢမ်ႇၼၼ် (OR)"** ၼၼ်ႉၶႃႈ။

**တူဝ်ယၢင်ႇ (Example):**
```typescript
let id: string | number;

id = 101;      // ✅ မႅၼ်ႈယူႇ (number)
id = "ID-001"; // ✅ မႅၼ်ႈယူႇ (string)
// id = true;  // ❌ Error: Type 'boolean' is not assignable.
```



---

#### **2. ၵၢၼ်ၸႂ်ႉၸွမ်း Function**
Union Types မီးၽွၼ်းလီတႄႉတႄႉ မိူဝ်ႈႁဝ်းတႅမ်ႈ Function ဢၼ်ႁပ်ႉဢဝ် Parameter လႆႈလၢႆမဵဝ်းၶႃႈ။

```typescript
function printId(id: number | string) {
  console.log("Your ID is: " + id);
}

printId(123);     // ✅ ၸႂ်ႉတူဝ်ၼပ်ႉၵေႃႈလႆႈ
printId("ABC");   // ✅ ၸႂ်ႉတူဝ်လိၵ်ႈၵေႃႈလႆႈ
```

---

#### **3. Type Narrowing (ၵၢၼ်ၵူတ်ႇထတ်း Type)**
မိူဝ်ႈႁဝ်းၸႂ်ႉ Union Type ၼၼ်ႉ TypeScript တေပႂ်ႉတူၺ်းဝႃႈ ႁဝ်းတေႁဵတ်းသင်ၸွမ်း Variable ၼၼ်ႉၶႃႈ။ သင်ႁဝ်းတေၸႂ်ႉ Method ဢၼ်မီးၵူၺ်းၼႂ်း String (ၼင်ႇ `.toUpperCase()`) ႁဝ်းလူဝ်ႇလႆႈ **"ၸႅတ်ႈထတ်း (Check)"** ဢွၼ်တၢင်းၶႃႈ။

```typescript
function formatId(id: number | string) {
  if (typeof id === "string") {
    // ၼႂ်းတွၼ်ႈၼႆႉ TypeScript ႁူႉယဝ်ႉဝႃႈ id ပဵၼ် string
    console.log(id.toUpperCase()); 
  } else {
    // ၼႂ်းတွၼ်ႈၼႆႉ TypeScript ႁူႉယဝ်ႉဝႃႈ id ပဵၼ် number
    console.log(id.toFixed(2));
  }
}
```



---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `|` (Pipe) တႃႇႁူမ်ႈ Type တင်းၼမ်ၶဝ်ႈၵၼ်။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Variable ၼိုင်ႈဢၼ် ၸၢင်ႈသိမ်းလႆႈၶေႃႈမုၼ်းလၢႆမဵဝ်း ၸိူဝ်ႉၼင်ႇႁဝ်းမၢႆဝႆႉ။
- [ ] ႁူႉလၢႆးၸႂ်ႉ `if (typeof ...)` တႃႇၸႅၵ်ႇ Type ဢွၼ်တၢင်းတေၸႂ်ႉၵၢၼ် (Type Narrowing)။

---