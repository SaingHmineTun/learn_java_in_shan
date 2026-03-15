
# Lesson 06: Template Literals & String Interpolation

မိူဝ်ႈၵွၼ်ႇ (ဢွၼ်တၢင်း ES6)၊ ပေႃးႁဝ်းၶႂ်ႈဢဝ် တူဝ်လိၵ်ႈ (String) မႃးၸွႆးၵၼ်တင်း Variable ၼၼ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉၶိူင်ႈမၢႆ "ပၵ်း (`+`)" ဢၼ်ႁဵတ်းႁႂ်ႈၵူတ်ႉႁဝ်း လူယႃႇယၢပ်ႇၼႃႇၶႃႈ။

### 1. လွင်ႈပႅၵ်ႇပိူင်ႈ (Old Way vs. New Way)

* **လၢႆးၵဝ်ႇ (String Concatenation):** ၸႂ်ႉ Single Quotes `' '` ႁိုဝ် Double Quotes `" "` သေ ၸႂ်ႉ `+` တႃႇၸွႆးၵၼ်။
* **လၢႆးမႂ်ႇ (Template Literals):** ၸႂ်ႉ **Backticks (```)** (ပဵၼ်ပုမ်ႇဢၼ်ယူႇတႂ်ႈ ESC ၼိူဝ် Keyboard ၼၼ်ႉၶႃႈ)။

### 2. String Interpolation (`${}`)

"Interpolation" ပွင်ႇဝႃႈ ၵၢၼ်ဢဝ် Variable ႁိုဝ် Logic သႂ်ႇၶဝ်ႈၵႂႃႇၼႂ်း String ၵမ်းလဵဝ်လူၺ်ႈၸႂ်ႉ **`${variable_name}`** ၶႃႈ။

```javascript
const name = "Sai Kham";
const age = 25;

// လၢႆးၵဝ်ႇ (ယုင်ႈယၢပ်ႇ)
console.log("Hello, I am " + name + " and I am " + age + " years old.");

// လၢႆးမႂ်ႇ (သႅၼ်ႈသႂ်)
console.log(`Hello, I am ${name} and I am ${age} years old.`);

```

### 3. Multi-line Strings

လွင်ႈလီထႅင်ႈဢၼ်ၼိုင်ႈၵေႃႈပဵၼ် သင်ႁဝ်းၸႂ်ႉ Backticks ၸိုင် ႁဝ်းၸၢင်ႈ "ၼဵၵ်း Enter" သေတႅမ်ႈလႆႈလၢႆလၢႆထႅဝ် (Line) လူၺ်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉ `\n` ၶႃႈ။

```javascript
const message = `မႂ်ႇသုင်ၶႃႈ၊
ၼႆႉပဵၼ်ၵၢၼ်တႅမ်ႈလိၵ်ႈ
လၢႆလၢႆထႅဝ် (Multi-line)
လူၺ်ႈၸႂ်ႉ Template Literals ၶႃႈ။`;

console.log(message);

```

---

### 4. Logic Inside Backticks

ႁဝ်းယင်းၸၢင်ႈတႅမ်ႈ Math (ၵၢၼ်ၼပ်ႉသွၼ်ႇ) ဝႆႉၼႂ်း `${}` လႆႈထႅင်ႈၶႃႈ:

```javascript
const price = 500;
const tax = 0.05;

console.log(`Total price is: ${price + (price * tax)} Baht`);
// Result: Total price is: 525 Baht

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Backticks (```)** ၸွႆႈႁႂ်ႈတႅမ်ႈ String လႆႈလွတ်ႈလႅဝ်းလိူဝ် Quotes ယူဝ်းယူဝ်း။
* **`${}`** ၸႂ်ႉတႃႇသႂ်ႇ Variable ႁိုဝ် ၵၢၼ်ၼပ်ႉသွၼ်ႇ ၶဝ်ႈၵႂႃႇၼႂ်းလိၵ်ႈ။
* ၸွႆႈႁႂ်ႈၵူတ်ႉ (Code) ႁဝ်းလူယႃႇငၢႆႈ (Readable) လႄႈ မႄးငၢႆႈ (Maintainable) ၶႃႈ။

---
