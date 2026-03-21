### **Lesson 15: Conditionals (The power of If, Else If, and Else)**

မိူဝ်ႈႁဝ်းမီး Comparison Operators (ၼင်ႇ `>`, `<`, `===`) ယဝ်ႉၼၼ်ႉ ႁဝ်းၸၢင်ႈဢဝ်မၼ်းမႃးၸႂ်ႉၼႂ်း **Conditionals** တႃႇၸီႉသင်ႇပရူဝ်ႇၵရႅမ်ႇႁဝ်းဝႃႈ "သင်မႅၼ်ႈၸိုင် ႁဵတ်းဢၼ်ၼႆႉ၊ သင်ဢမ်ႇမႅၼ်ႈၸိုင် ႁဵတ်းဢၼ်ၼၼ်ႉ" ၼႆၶႃႈဢေႃႈ။

---

#### **1. If Statement (သင်ဝႃႈ...)**
ပဵၼ်ၵၢၼ်ၸႅတ်ႈထတ်းပိုၼ်ႉထၢၼ်သုတ်းၶႃႈ။ သင်ဝႃႈၶေႃႈၵႂၢမ်းၼႂ်းဝူင်းလဵၵ်း `( )` ၼၼ်ႉပဵၼ် `true` ၸိုင် ၶူတ်ႉၼႂ်း `{ }` တေႁဵတ်းၵၢၼ်ၶႃႈ။

```typescript
let age: number = 20;

if (age >= 18) {
  console.log("ၸဝ်ႈၵဝ်ႇ ပဵၼ်ၵူၼ်းလူင်ယဝ်ႉ။");
}
```

---

#### **2. Else Statement (...ဢမ်ႇၼၼ်ၸိုင်)**
ၸႂ်ႉတႃႇႁဵတ်းၵၢၼ် မိူဝ်ႈၶေႃႈၵႂၢမ်းၼႂ်း `if` ၼၼ်ႉပဵၼ် `false` (ဢမ်ႇမႅၼ်ႈ) ၶႃႈ။

```typescript
let score: number = 45;

if (score >= 50) {
  console.log("ၸဝ်ႈၵဝ်ႇ ဢွင်ႇယဝ်ႉ!");
} else {
  console.log("ၸဝ်ႈၵဝ်ႇ ဢမ်ႇဢွင်ႇ၊ လူဝ်ႇၶတ်းၸႂ်ထႅင်ႈ။");
}
```



---

#### **3. Else If Statement (သင်ဝႃႈ... ဢမ်ႇၼၼ် သင်ဝႃႈ...)**
မိူဝ်ႈႁဝ်းမီးတၢင်းလိူၵ်ႈတင်းၼမ် ႁဝ်းၸၢင်ႈၸႂ်ႉ `else if` တႃႇၸႅတ်ႈထတ်းၵႂႃႇပၼ်ႇလၢႆလၢႆၸၼ်ႉၶႃႈ။

```typescript
let marks: number = 85;

if (marks >= 80) {
  console.log("Grade: A");
} else if (marks >= 70) {
  console.log("Grade: B");
} else if (marks >= 60) {
  console.log("Grade: C");
} else {
  console.log("Grade: D");
}
```



---

#### **4. Logic Nested (ၵၢၼ်သႂ်ႇ If ၼႂ်း If)**
ႁဝ်းၸၢင်ႈသႂ်ႇ `if` ဝႆႉၼႂ်း `if` ထႅင်ႈၸၼ်ႉၼိုင်ႈၵေႃႈလႆႈၶႃႈ (ၵႆႉၸႂ်ႉမိူဝ်ႈမီးလွင်ႈတၢင်းဢၼ်သုၵ်ႉယုင်ႈ)။

```typescript
let isMember: boolean = true;
let totalAmount: number = 1000;

if (isMember) {
  if (totalAmount >= 1000) {
    console.log("ၸဝ်ႈၵဝ်ႇလႆႈ Discount 20%!");
  } else {
    console.log("ၸဝ်ႈၵဝ်ႇလႆႈ Discount 10%!");
  }
}
```

---

#### **5. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ `if` တႃႇတႄႇတႅပ်းတ်တ်းသၢႆၸႂ်။
- [ ] ၸႂ်ႉ `else` တႃႇႁဵတ်းၵၢၼ်မိူဝ်ႈတၢင်းလိူၵ်ႈဢွၼ်တၢင်းဢမ်ႇမႅၼ်ႈ။
- [ ] ၸႂ်ႉ `else if` တႃႇၸႅတ်ႈထတ်းတၢင်းလိူၵ်ႈတင်းၼမ်။
- [ ] ပွင်ႇၸႂ်ဝႃႈ ၶူတ်ႉတေႁဵတ်းၵၢၼ်ၵူၺ်းမိူဝ်ႈ Condition ပဵၼ် `true`။

---