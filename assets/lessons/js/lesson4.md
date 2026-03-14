# Lesson 1.4: Template Literals (လၢႆးတႅမ်ႈလိၵ်ႈ ES6)

**Template Literals** provide a modern way to work with Strings. Instead of using single quotes `' '` or double quotes `" "`, we use the **Backtick** symbol ( ``` ).

### 1. String Interpolation (ၵၢၼ်သႂ်ႇၶေႃႈမုၼ်းၼႂ်းလိၵ်ႈ)

The biggest benefit is being able to insert variables directly into your text using the `${ }` syntax.

* **The Old Way (Concatenation):** You had to use the `+` sign.
```javascript
const name = "ၼၢင်းမူဝ်";
const greeting = "မႂ်ႇသုင်ၶႃႈ " + name + "၊ ၵိၼ်ၶဝ်ႈယဝ်ႉႁိုဝ်?";

```


*Problem:* It is hard to read and easy to forget a space.
* **The New Way (Template Literals):**
```javascript
const name = "ၼၢင်းမူဝ်";
const greeting = `မႂ်ႇသုင်ၶႃႈ ${name}၊ ၵိၼ်ၶဝ်ႈယဝ်ႉႁိုဝ်?`;

```


*Benefit:* It looks exactly like the final sentence.

---

### 2. Multi-line Strings (လိၵ်ႈလၢႆထႅဝ်)

In the old days, if you wanted to start a new line, you had to use `\n`. With Template Literals, you just press **Enter**.

**Example:**

```javascript
const poem = `လိၵ်ႈတႆးတႅမ်ႈငၢႆႈ
လူတ်ႉလႆႈၽႂ်းၽႂ်း
JS ၵေႃႈမိူၼ်ၵၼ်။`;

```

JavaScript will keep the spaces and new lines exactly as you typed them. This is perfect for generating HTML or long messages in your Shan app.

---

### 3. Expressions inside `${ }` (ၵၢၼ်ၼပ်ႉသဵၼ်ႈမၢႆၼႂ်းလိၵ်ႈ)

You aren't limited to just variables. You can put math or logic inside the curly braces too!

```javascript
const price = 500;
const tax = 0.05;
console.log(`သဵၼ်ႈမၢႆတင်းသဵင်ႈပဵၼ်: ${price * (1 + tax)} ၸတ်း`);

```

---

### 4. Tagged Templates (ၵၢၼ်ၸႂ်ႉ Function ၵုမ်းလိၵ်ႈ)

This is an advanced feature. You can attach a function to a template literal to "clean" or "format" the text before it is displayed. This is very useful for security (preventing XSS) or automatic translation.

```javascript
function highlight(strings, ...values) {
  return `${strings[0]}<span style="color: yellow">${values[0]}</span>${strings[1]}`;
}

const user = "ၸၢႆးၵႅဝ်ႈ";
const msg = highlight`ႁူမ်ၸူမ်းႁပ်ႉတွၼ်ႈ ${user} ၶႃႈ!`;

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 1.4)

* **Backticks (```)**: ၸႂ်ႉတႅမ်ႈတႅမ်ႇပလဵတ်ႉ (Template).
* **`${ }`**: ၸႂ်ႉတႃႇသႂ်ႇ Variable ႁမ်ႉ Expression ၼႂ်းၵၢင်လိၵ်ႈ။
* **Multi-line**: တႅမ်ႈလိၵ်ႈလၢႆထႅဝ်လႆႈငၢႆႈငၢႆႈ ဢမ်ႇလူဝ်ႇၸႂ်ႉ `+` ႁမ်ႉ `\n`။

---