### **Lesson 40: Discriminated Unions (Pattern matching for objects)**

ၼႆႉပဵၼ်လၢႆး "Narrowing" (ၵႅပ်ႈလင်း) Type ဢၼ်မီးပၺ်ႇၺႃႇသုတ်း လႄႈ ၸႂ်ႉၼမ်သုတ်း ၼႂ်း TypeScript ၶႃႈဢေႃႈ။ **Discriminated Union** ပဵၼ်ၵၢၼ်သႂ်ႇ "မၢႆၽၢင်" (Literal Property) ဢၼ်မိူၼ်ၵၼ် ဝႆႉၼႂ်း Interface လၢႆလၢႆဢၼ် တႃႇႁႂ်ႈ TypeScript ၸႅတ်ႈထတ်းလႆႈငၢႆႈငၢႆႈၶႃႈ။

---

#### **1. Discriminated Union ပဵၼ်သင်?**
မၼ်းမီးလွင်ႈတၢင်း 3 ပိူင် ဢၼ်ႁဵတ်းႁႂ်ႈမၼ်းပဵၼ် Discriminated Union ၶႃႈ:
1.  **Interfaces** လၢႆလၢႆဢၼ်။
2.  Property ဢၼ်မီး "ၸိုဝ်ႈမိူၼ်ၵၼ်" (ၼင်ႇ `kind` ဢမ်ႇၼၼ် `type`) ဝႆႉၼႂ်းၵူႈ Interface။
3.  Property ၼၼ်ႉ လူဝ်ႇမီးၵႃႈၶၼ်ပဵၼ် **Literal Type** (ၼင်ႇ `"circle"`, `"square"`)။

```typescript
interface Circle {
  kind: "circle"; // Discriminant (မၢႆၽၢင်)
  radius: number;
}

interface Square {
  kind: "square"; // Discriminant (မၢႆၽၢင်)
  sideLength: number;
}

type Shape = Circle | Square;
```



---

#### **2. ၵၢၼ်ၸႂ်ႉ Switch Statement (Pattern Matching)**
မိူဝ်ႈႁဝ်းၸႅတ်ႈထတ်း `kind` ၼၼ်ႉယဝ်ႉ၊ TypeScript တေႁူႉၵမ်းလဵဝ်ဝႃႈ Object ၼၼ်ႉ မီး Property သင်ၽေႈၶႃႈ။

```typescript
function getArea(shape: Shape) {
  switch (shape.kind) {
    case "circle":
      // ၼႂ်းၼႆႉ TypeScript ႁူႉဝႃႈပဵၼ် Circle တႅတ်ႈတေႃး
      return Math.PI * shape.radius ** 2;
    case "square":
      // ၼႂ်းၼႆႉ TypeScript ႁူႉဝႃႈပဵၼ် Square တႅတ်ႈတေႃး
      return shape.sideLength ** 2;
  }
}
```



---

#### **3. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
* **Type Safety:** သင်ၸဝ်ႈၵဝ်ႇလူင်ၸႂ်ႉ `radius` ၼႂ်း `square` ၸိုင် TypeScript တေပၼ် Error ၵမ်းလဵဝ်။
* **Completeness:** ၸွႆးႁႂ်ႈႁဝ်းႁူႉဝႃႈ ႁဝ်းၸႅတ်ႈထတ်းၶေႃႈမုၼ်း "ၵူႈမဵဝ်း" ယဝ်ႉႁႃႉ (Exhaustiveness checking)။
* **Clean Code:** ဢမ်ႇလူဝ်ႇၸႂ်ႉ `typeof` ဢမ်ႇၼၼ် `instanceof` ဢၼ်ယုင်ႈယၢင်ႈၸိူဝ်းၼၼ်ႉၶႃႈ။

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးသၢင်ႈ Literal Property (ၼင်ႇ `kind`) တႃႇပဵၼ်မၢႆၽၢင်။
- [ ] ၸႂ်ႉ Union `|` တႃႇႁူမ်ႈ Interface လၢႆလၢႆဢၼ်ၶဝ်ႈၸွမ်းၵၼ်။
- [ ] ၸႂ်ႉ `switch` ဢမ်ႇၼၼ် `if` တႃႇၸႅတ်ႈထတ်းမၢႆၽၢင် (Discriminant)။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇၸႅတ်ႈထတ်းၵႃႈၶၼ် (Value) တႅတ်ႈတေႃး ဢွၼ်တၢင်းတေဢဝ် Property တၢင်ႇၸိူဝ်းၵႂႃႇၸႂ်ႉ။

---