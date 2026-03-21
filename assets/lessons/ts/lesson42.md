### **Lesson 42: User-defined Type Guards (Creating custom checkers)**

ၼႆႉပဵၼ်တွၼ်ႈ "ပၺ်ႇၺႃႇသုင်" (Advanced) ဢၼ်တေႁဵတ်းႁႂ်ႈၸဝ်ႈၵဝ်ႇ သၢင်ႈ Function တႃႇၸႅတ်ႈထတ်း Type ႁင်းၵူၺ်းၶႃႈ။ မၢင်ပွၵ်ႈ လၢႆးၸႅတ်ႈထတ်း `typeof` ဢမ်ႇၼၼ် `in` မၼ်းဢမ်ႇၵုမ်ႇထူၼ်ႈ တွၼ်ႈတႃႇ Logic ဢၼ်သုၵ်ႉယုင်ႈၼၼ်ႉၶႃႈ။

---

#### **1. User-defined Type Guard ပဵၼ်သင်?**
မၼ်းပဵၼ် Function ဢၼ်သူင်ႇ Boolean (`true/false`) ဢွၵ်ႇမႃး၊ ၵူၺ်းၵႃႈ မၼ်းမီးလွင်ႈပႅၵ်ႇပိူင်ႈတီႈ **Return Type** ၶႃႈ။ ႁဝ်းတေၸႂ်ႉၶေႃႈၵႂၢမ်း **`parameterName is Type`** တႅၼ်းတွၼ်ႈတႃႇ `boolean` ၶႃႈဢေႃႈ။

**ပိူင်တႅမ်ႈ (Syntax):**
```typescript
interface Bird {
  fly(): void;
  layEggs(): void;
}

interface Fish {
  swim(): void;
  layEggs(): void;
}

// ၼႆႉပဵၼ် Type Guard Function ၶႃႈ
function isFish(pet: Bird | Fish): pet is Fish {
  return (pet as Fish).swim !== undefined;
}
```



---

#### **2. ၵၢၼ်ၸႂ်ႉတေႉ (Usage)**
မိူဝ်ႈႁဝ်းၸႂ်ႉ Function ၼႆႉၼႂ်း `if` statement ၸိုင် TypeScript တေယုမ်ႇယမ်သေ ၼႄႇၸႂ်ပၼ်ဝႃႈ Type ၼၼ်ႉပဵၼ်သင်တေႉတေႉၶႃႈ။

```typescript
function move(pet: Bird | Fish) {
  if (isFish(pet)) {
    // ၼႂ်းၼႆႉ TypeScript ၼႄႇၸႂ်ဝႃႈ pet ပဵၼ် Fish ယဝ်ႉ
    pet.swim();
  } else {
    // ၼႂ်းၼႆႉ TypeScript ႁူႉဝႃႈမၼ်းလူဝ်ႇပဵၼ် Bird ၵူၺ်းယဝ်ႉ
    pet.fly();
  }
}
```

---

#### **3. ၵွပ်ႈသင်လႄႈလူဝ်ႇၸႂ်ႉ?**
* **Complex Logic:** မိူဝ်ႈလူဝ်ႇၸႅတ်ႈထတ်း Property လၢႆလၢႆဢၼ် ဢမ်ႇၼၼ် ၸႅတ်ႈထတ်း Structure ဢၼ်သုၵ်ႉယုင်ႈၶႃႈ။
* **Reusability:** တႅမ်ႈဝႆႉတီႈလဵဝ်သေ ၸႂ်ႉလႆႈၵူႈတီႈ ၼႂ်းပရူဝ်ႇၵရႅမ်ႇ။
* **Readability:** ႁဵတ်းႁႂ်ႈၶူတ်ႉ `if` ႁဝ်းဢၢၼ်ႇငၢႆႈလိူဝ်သေၵဝ်ႇ (ၼင်ႇ `if (isFish(pet))` တႅၼ်းတွၼ်ႈတႃႇတႅမ်ႈ Logic ယၢဝ်းယၢဝ်း)။



---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ Type Predicate (`parameter is Type`) ပဵၼ် Return Type။
- [ ] ပွင်ႇၸႂ်ဝႃႈ Function ၼႆႉ လူဝ်ႇသူင်ႇ Boolean ဢွၵ်ႇမႃးတႅတ်ႈတေႃး။
- [ ] ၸႂ်ႉ Custom Type Guards တႃႇၸႅတ်းထတ်း Logic ဢၼ် `typeof` ႁဵတ်းဢမ်ႇလႆႈ။
- [ ] ၼႄႇၸႂ်ဝႃႈ Logic ၼႂ်း Function ၼၼ်ႉ မႅၼ်ႈယမ်တေႉတေႉ ဢွၼ်တၢင်းတေသူင်ႇ `true`။

---