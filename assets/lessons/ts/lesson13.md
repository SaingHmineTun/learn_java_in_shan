### **Lesson 13: Basic Operators (Arithmetic & Assignment)**

ၼႂ်း TypeScript ၼႆႉ Operators တေမိူၼ်ၼင်ႇ JavaScript ၵူႈလွင်ႈၶႃႈ။ ၵူၺ်းၵႃႈ တီႈလီမၼ်းတႄႉ TypeScript တေၸႅတ်ႈထတ်းပၼ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢဝ် "တူဝ်ၼပ်ႉ (number)" တင်း "လိၵ်ႈ (string)" မႃးၼပ်ႉသွၼ်ႇလေႃးၵၼ်ႁႃႉ ၼႆၶႃႈ။

---

#### **1. Arithmetic Operators (ၵၢၼ်ၼပ်ႉသွၼ်ႇ)**
ၸႂ်ႉတႃႇမႃး ႁူမ်ႈ၊ တူတ်ႉ၊ ၼပ်ႉ၊ ၸႅၵ်ႇ ၵႃႈၶၼ်ၶႃႈ။

| Operator | ၼႃႈၵၢၼ် (Description) | တူဝ်ယၢင်ႇ (Example) |
| :--- | :--- | :--- |
| **`+`** | Addition (ႁူမ်ႈ) | `10 + 5 = 15` |
| **`-`** | Subtraction (တူတ်ႉ) | `10 - 5 = 5` |
| **`*`** | Multiplication (ၼပ်ႉ) | `10 * 5 = 50` |
| **`/`** | Division (ၸႅၵ်ႇ) | `10 / 5 = 2` |
| **`%`** | Modulus (ၵမ်းလိူဝ်) | `10 % 3 = 1` |
| **`**`** | Exponentiation (ၵမ်ႉၵၼ်) | `2 ** 3 = 8` |



**တူဝ်ယၢင်ႇၼႂ်းၶူတ်ႉ:**
```typescript
let x: number = 10;
let y: number = 3;

console.log(x + y); // 13
console.log(x % y); // 1 (ၵမ်းလိူဝ်)
```

---

#### **2. Assignment Operators (ၵၢၼ်ပၼ်ၵႃႈၶၼ်)**
ၸႂ်ႉတႃႇဢဝ်ၵႃႈၶၼ် သႂ်ႇဝႆႉၼႂ်း Variable ၶႃႈ။

* **`=`** (ပၼ်ၵႃႈၶၼ်): `let a = 10;`
* **Compound Assignment:** ပဵၼ်လၢႆးတႅမ်ႈ "Shortcut" တွၼ်ႈတႃႇၼပ်ႉသွၼ်ႇသေ သိမ်းၵႃႈၶၼ်ၵမ်းလဵဝ်ၶႃႈ။

| Operator | လၢႆးတႅမ်ႈ (Shorthand) | မၢႆထိုင် (Meaning) |
| :--- | :--- | :--- |
| **`+=`** | `x += 5` | `x = x + 5` |
| **`-=`** | `x -= 5` | `x = x - 5` |
| **`*=`** | `x *= 5` | `x = x * 5` |
| **`/=`** | `x /= 5` | `x = x / 5` |

**တူဝ်ယၢင်ႇၼႂ်းၶူတ်ႉ:**
```typescript
let score: number = 100;

score += 10; // score ယဝ်ႉပဵၼ် 110
score -= 20; // score ယဝ်ႉပဵၼ် 90
```

---

#### **3. Increment & Decrement (ၵၢၼ်ထႅမ် လႄႈ ၵၢၼ်ယွမ်း)**
ၸႂ်ႉတႃႇထႅမ် ဢမ်ႇၼၼ် ယွမ်းၵႃႈၶၼ်ပၼ် 1 ၶႃႈ။

* **`++`** (Increment): `x++` မၢႆထိုင် `x = x + 1`
* **`--`** (Decrement): `x--` မၢႆထိုင် `x = x - 1`

```typescript
let count: number = 0;
count++; // count ပဵၼ် 1
count++; // count ပဵၼ် 2
```

---

#### **4. Summary Checklist**
- [ ] ႁူႉလၢႆးၸႂ်ႉ Arithmetic Operators တႃႇၼပ်ႉသွၼ်ႇပိုၼ်ႉထၢၼ်။
- [ ] ပွင်ႇၸႂ်လွင်ႈ Modulus (`%`) ဢၼ်ဢဝ်ၵႃႈၶၼ် "ၵမ်းလိူဝ်"။
- [ ] ၸႂ်ႉ Assignment Operators (`+=`, `-=`) တႃႇတႅမ်ႈၶူတ်ႉႁႂ်ႈပွတ်းၶိုၼ်း။
- [ ] ႁူႉလၢႆးၸႂ်ႉ `++` လႄႈ `--` တႃႇထႅမ်ယွမ်းၵႃႈၶၼ်ပၼ် 1။

---
