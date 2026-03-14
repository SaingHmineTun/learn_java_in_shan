# Lesson 30: Spread & Rest Operator (`...`)

တူဝ်လႅၵ်ႈ `...` ၼႆႉ ၸွႆႈႁႂ်ႈႁဝ်းၸတ်းၵၢၼ် Array လႄႈ Object လႆႈလႅတ်းၽႂ်းၼႃႇ။

### 1. Spread Operator (ၵၢၼ်ၽႅၼ်ႇဢွၵ်ႇ)

ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ "ၽႅၼ်ႇ" (Unpack) ၶေႃႈမုၼ်းလုၵ်ႉၼႂ်း Array ႁိုဝ် Object ဢွၵ်ႇမႃး တႃႇသႂ်ႇၼႂ်းဢွင်ႈတီႈမႂ်ႇ။

* **ၵၢၼ်ႁူမ်ႈ Array:**
```javascript
const meat = ["မူႇ", "ၵႆႇ"];
const veg = ["ၽၵ်းၵတ်း", "ၶဝ်ႈโพတ်း"];

const food = [...meat, ...veg, "ၼမ်ႉၽိၵ်ႉ"]; 
// ["မူႇ", "ၵႆႇ", "ၽၵ်းၵတ်း", "ၶဝ်ႈโพတ်း", "ၼမ်ႉၽိၵ်ႉ"]

```


* **ၵၢၼ် Copy Object:**
```javascript
const user = { name: "Sai", age: 20 };
const updatedUser = { ...user, city: "Taunggyi" }; 
// { name: "Sai", age: 20, city: "Taunggyi" }

```



---

### 2. Rest Operator (ၵၢၼ်ၵဵပ်းႁူမ်ႈ)

ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈ "ၵဵပ်း" (Pack) ၶေႃႈမုၼ်းတင်းၼမ် မႃးဝႆႉၼႂ်း Array တူဝ်လဵဝ်။ မၼ်းတေယူႇၽၢႆႇသၢႆႉ (Left-hand side) ၶွင်ၵၢၼ်တႅမ်ႈၵူတ်ႉၶႃႈ။

* **ၸႂ်ႉၼႂ်း Function (Rest Parameters):**
  ၸွႆႈႁႂ်ႈ Function ႁပ်ႉဢဝ် Argument လႆႈလၢႆလၢႆတူဝ် ဢမ်ႇၵၼ်ႉၶေႃပ်ႇ။
```javascript
function sum(...numbers) {
  return numbers.reduce((acc, curr) => acc + curr, 0);
}

console.log(sum(1, 2, 3, 4, 5)); // 15

```


* **ၸႂ်ႉၸွမ်း Destructuring:**
```javascript
const [first, second, ...others] = [10, 20, 30, 40, 50];

console.log(first);  // 10
console.log(others); // [30, 40, 50] (ၵဵပ်းဢၼ်ၵိုတ်းတင်းမူတ်း)

```



---

### 3. ပႅၵ်ႇပိူင်ႈၵၼ်ၸိူင်ႉႁိုဝ်? (Spread vs Rest)

| Feature | **Spread** | **Rest** |
| --- | --- | --- |
| **ၵၢၼ်ႁဵတ်း** | ၽႅၼ်ႇဢွၵ်ႇ (Unpacks) | ၵဵပ်းႁူမ်ႈ (Packs) |
| **ဢွင်ႈတီႈ** | ယူႇတီႈ Array/Object literal | ယူႇတီႈ Parameter/Destructuring |
| **တူဝ်ယၢင်ႇ** | `[...arr]` | `(...args) => {}` |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Spread** ၸွႆႈႁႂ်ႈၵၢၼ် Copy လႄႈ ၵၢၼ်ႁူမ်ႈ (Merge) ၶေႃႈမုၼ်းငၢႆႈလိူဝ်ၵဝ်ႇ။
* **Rest** ၸွႆႈႁႂ်ႈႁဝ်းၵဵပ်းၶေႃႈမုၼ်းဢၼ်ၵိုတ်း (Remaining items) မႃးဝႆႉၼႂ်းၸုမ်းလဵဝ်ၵၼ်။
* **Immutability**: ၵၢၼ်ၸႂ်ႉ Spread တႃႇ Copy ၸွႆႈႁႂ်ႈႁဝ်းဢမ်ႇလႆႈၵႂႃႇမႄး (Mutate) ၶေႃႈမုၼ်းတူဝ်ၵဝ်ႇ။

---