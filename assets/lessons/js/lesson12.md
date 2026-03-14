# Lesson 12: Parameters & Arguments (ၵၢၼ်သူင်ႇၶေႃႈမုၼ်းၶဝ်ႈ Function)

ပိူဝ်ႈတေႁႂ်ႈ Function ႁဝ်းႁဵတ်းၵၢၼ်လႆႈလၢႆလၢႆမဵဝ်း (Dynamic)၊ ႁဝ်းလူဝ်ႇသူင်ႇၶေႃႈမုၼ်းပၼ်မၼ်းၶႃႈ။

### 1. Parameters vs. Arguments

သွင်ဢၼ်ၼႆႉ ၵႆႉမီးၵူၼ်းႁွင်ႉလေႃးၵၼ်၊ တေႃႉတေႉမၼ်းပႅၵ်ႇၵၼ်ဢိတ်းၼိုင်ႈၶႃႈ:

* **Parameters (ပႃႇရႃႇမီႇတႃႇ):** ပဵၼ် "ၸိုဝ်ႈတႅၼ်း" ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ မိူဝ်ႈသၢင်ႈ Function (ပဵၼ်မိူၼ် ထူင်ပဝ်ႇ ဢၼ်ပႂ်ႉႁပ်ႉၶေႃႈမုၼ်း)။
* **Arguments (ဢႃႇၵျူႇမႅၼ်ႉ):** ပဵၼ် "ၶေႃႈမုၼ်းတေႉ" ဢၼ်ႁဝ်းသူင်ႇပၼ် မိူဝ်ႈႁွင်ႉၸႂ်ႉ (ပဵၼ်ၶေႃႈမုၼ်း ဢၼ်သႂ်ႇၼႂ်းထူင်)။

```javascript
// 'name' တီႈၼႆႈပဵၼ် Parameter
function greet(name) {
  console.log(`မႂ်ႇသုင်ၶႃႈ ${name}!`);
}

// "ၸၢႆးသႅင်" တီႈၼႆႈပဵၼ် Argument
greet("ၸၢႆးသႅင်"); 
greet("ၼၢင်းမူဝ်"); 

```

---

### 2. Multiple Parameters (သူင်ႇလၢႆလၢႆယၢင်ႇ)

ႁဝ်းသူင်ႇၶေႃႈမုၼ်းလၢႆဢၼ်ၸွမ်းၵၼ်လႆႈ ၸႂ်ႉၶႅၼ်ႇမႃႇ (`,`) ၶၼ်ႈဝႆႉၶႃႈ။

```javascript
function add(a, b) {
  return a + b;
}

console.log(add(5, 10)); // 15

```

---

### 3. Default Parameters (ၵႃႈၶၼ်ပိုၼ်ႉထၢၼ်) - ES6

မၢင်ၵမ်း ၵူၼ်းၸႂ်ႉ (User) ၸၢင်ႈလိုမ်းသူင်ႇ Argument မႃး။ ပိူဝ်ႈတေဢမ်ႇႁႂ်ႈၵူတ်ႉႁဝ်း Error ႁိုဝ် ပဵၼ် `undefined`၊ ႁဝ်းဝႆႉၵႃႈၶၼ်ပိုၼ်ႉထၢၼ်လႆႈၶႃႈ။

```javascript
function welcome(user = "ၵူၼ်းမႂ်ႇ") {
  console.log(`ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈ ${user}`);
}

welcome("ၸၢႆးၵႅဝ်ႈ"); // "ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈ ၸၢႆးၵႅဝ်ႈ"
welcome();          // "ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈ ၵူၼ်းမႂ်ႇ"

```

---

### 4. Rest Parameters (`...`) - ES6

သင်ဝႃႈႁဝ်းဢမ်ႇႁူႉဝႃႈ ၵူၼ်းၸႂ်ႉတေသူင်ႇ Argument မႃးလၢႆဢၼ်၊ ႁဝ်းၸႂ်ႉ `...` (Spread/Rest operator) ပိူဝ်ႈတေႁပ်ႉဢဝ်ၶေႃႈမုၼ်းတင်းမူတ်း မႃးဝႆႉၼႂ်း **Array** ၼိုင်ႈဢၼ်ၶႃႈ။

```javascript
function sumAll(...numbers) {
  let total = 0;
  for (const n of numbers) {
    total += n;
  }
  return total;
}

console.log(sumAll(1, 2, 3, 4, 5)); // 15

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 12)

* **Parameter**: ၸိုဝ်ႈတႅၼ်း ဢၼ်တႅမ်ႈဝႆႉၼႂ်းဝူင်းလဵၵ်း `( )` မိူဝ်ႈသၢင်ႈ Function။
* **Argument**: ၶေႃႈမုၼ်းတေႉ ဢၼ်သူင်ႇပၼ် မိူဝ်ႈႁွင်ႉၸႂ်ႉ။
* **Default Value**: ၸႂ်ႉ `=` ပိူဝ်ႈတေဝႆႉၵႃႈၶၼ် မိူဝ်ႈဢမ်ႇမီး Argument သူင်ႇမႃး။
* **Rest (`...`)**: ၸႂ်ႉတႃႇႁပ်ႉ Argument တင်းၼမ် မႃးဝႆႉၼႂ်း Array။

---