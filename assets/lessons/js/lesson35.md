### 1. Spread Operator (ၵၢၼ်ၽႄႈ/ၵၢၼ်ၵေႃႇပီႇ)

Spread ပွင်ႇဝႃႈ "ၵၢၼ်ဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇမႃးၽႄႈဝႆႉ" ၶႃႈ။ ႁဝ်းၸႂ်ႉမၼ်းတႃႇ ၵေႃႇပီႇ (Copy) ႁိုဝ် ဢဝ် Array/Object မႃးပူတ်းသႂ်ႇၵၼ်ၶႃႈ။

**တူဝ်ယၢင်ႇတင်း Array:**

```javascript
const fruits = ["Apple", "Banana"];
const veggies = ["Carrot", "Potato"];

// ဢဝ်တင်းသွင်ဢၼ်မႃး "ၽႄႈ" သႂ်ႇၼႂ်း Array မႂ်ႇ
const food = [...fruits, ...veggies, "Egg"]; 
console.log(food); // ["Apple", "Banana", "Carrot", "Potato", "Egg"]

```

**တူဝ်ယၢင်ႇတင်း Object:**

```javascript
const baseInfo = { name: "Sai Kham", age: 25 };
// ၵေႃႇပီႇဢဝ် baseInfo မႃး သေထႅမ်/လႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း
const fullInfo = { ...baseInfo, city: "Taunggyi", age: 26 };

console.log(fullInfo); // { name: "Sai Kham", age: 26, city: "Taunggyi" }

```

---

### 2. Rest Operator (ၵၢၼ်တုမ်/ၵၢၼ်ၵဵပ်းသိမ်း)

Rest ပွင်ႇဝႃႈ "ဢၼ်ၵိုတ်းဝႆႉ" ၶႃႈ။ ႁဝ်းၸႂ်ႉမၼ်းတႃႇ "တုမ်" ၶေႃႈမုၼ်းလၢႆလၢႆဢၼ် ႁႂ်ႈပဵၼ် Array ဢၼ်လဵဝ်ၵူၺ်းၶႃႈ။ မၼ်းၵႆႉယူႇၼႂ်း **Destructuring** ႁိုဝ် **Function Parameters** ၶႃႈ။

**တူဝ်ယၢင်ႇၼႂ်း Destructuring:**

```javascript
const [first, second, ...others] = [1, 2, 3, 4, 5];

console.log(first);  // 1
console.log(second); // 2
console.log(others); // [3, 4, 5] (တုမ်ဢၼ်ၵိုတ်းဝႆႉတင်းမူတ်း)

```

**တူဝ်ယၢင်ႇၼႂ်း Function:**

```javascript
function sum(...numbers) {
  return numbers.reduce((acc, curr) => acc + curr, 0);
}

console.log(sum(1, 2, 3, 4)); // 10 (တုမ် Arguments တင်းမူတ်းပဵၼ် Array)

```

---

### 💡 လွင်ႈပႅၵ်ႇပိူင်ႈ ဢၼ်လမ်ႇလွင်ႈ

| Feature | Spread `...` | Rest `...` |
| --- | --- | --- |
| **ၼႃႈတီႈ** | ၸႅၵ်ႇ/ၽႄႈ (Unpack) | တုမ်/ၵဵပ်း (Pack/Gather) |
| **ဢွင်ႈတီႈ** | ယူႇၽၢႆႇၶႂႃ (Right-hand side) | ယူႇၽၢႆႇသၢႆႉ (Left-hand side) |
| **တူဝ်ယၢင်ႇ** | `[...arr]` | `[first, ...rest] = arr` |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Spread** လီလိူဝ်ပိူၼ်ႈတႃႇႁဵတ်း **Shallow Copy** (ၵေႃႇပီႇၶေႃႈမုၼ်း) လူၺ်ႈဢမ်ႇယုင်ႈတင်း Array ငဝ်ႈတိုၼ်း။
* **Rest** လူဝ်ႇယူႇတီႈ "တွၼ်းသုတ်း" (Last position) တႃႇသေႇ၊ မၼ်းတေဢဝ်ၶေႃႈမုၼ်းဢၼ်ၵိုတ်းဝႆႉ တုမ်ဝႆႉပၼ်ႁဝ်း။
* ၸုၵ်းသၢမ်ၸုၵ်းၼႆႉ ၸွႆႈႁႂ်ႈၵူတ်ႉႁဝ်း Modern လႄႈ ၵုမ်းၵမ်ၶေႃႈမုၼ်းလၢႆလၢႆတူဝ်လႆႈငၢႆႈၼႃႇၶႃႈ။

---