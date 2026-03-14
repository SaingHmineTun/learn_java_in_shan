# Lesson 13: Arrow Functions (လၢႆးတႅမ်ႈ Function ပွတ်း - ES6)

**Arrow Function** မၢႆထိုင် လၢႆးတႅမ်ႈ Function ဢၼ်ၸႂ်ႉၶႅပ်းလႅၼ်း `=>` (မိူၼ်ၼင်ႇ ႁၢင်ၵၢင်ႇ) တႅၼ်း Keyword `function` ၶႃႈ။

### 1. တႅၵ်ႈၼိူင်းလၢႆးတႅမ်ႈ (Syntax Comparison)

* **လၢႆးတႅမ်ႈပၵ်းၵဝ်ႇ (Regular Function):**
```javascript
const add = function(a, b) {
  return a + b;
};

```


* **လၢႆးတႅမ်ႈ Arrow Function:**
```javascript
const add = (a, b) => {
  return a + b;
};

```



---

### 2. လၢႆးတႅမ်ႈႁႂ်ႈပွတ်းသုတ်း (Implicit Return)

သင်ဝႃႈၼႂ်း Function ႁဝ်းမီးၵူတ်ႉထႅဝ်လဵဝ် လႄႈ သူင်ႇၵႃႈၶၼ် (Return) ၵမ်းလဵဝ်၊ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ `{ }` လႄႈ Keyword `return` ၵေႃႈလႆႈၶႃႈ။

```javascript
// ပွတ်းသုတ်းၶႃႈ!
const add = (a, b) => a + b;

const square = n => n * n; // သင်မီး Parameter တူဝ်လဵဝ် ဢမ်ႇလူဝ်ႇသႂ်ႇ ( ) ၵေႃႈလႆႈ

```

---

### 3. လွင်ႈပႅၵ်ႇပိူင်ႈဢၼ်လမ်ႇလွင်ႈ (Key Differences)

Arrow Function ဢမ်ႇၸႂ်ႈဝႃႈ မၼ်းပွတ်းၵူၺ်း၊ မၼ်းမီးလွင်ႈႁဵတ်းၵၢၼ်ဢၼ်ပႅၵ်ႇၵၼ်ဝႆႉ:

1. **`this` Keyword:** Arrow Function ဢမ်ႇမီး `this` ၶွင်တူဝ်မၼ်း။ မၼ်းတေၵႂႃႇၸႂ်ႉ `this` ၶွင် Scope ဢၼ်ယူႇတၢင်းၼွၵ်ႈမၼ်း (Lexical this)။ ၼႆႉမီးၽၼ်ၽွၼ်းၼႃႇ မိူဝ်ႈႁဝ်းတႅမ်ႈ Object Method ႁိုဝ် Event Listeners ၶႃႈ။
2. **Arguments Object:** ၼႂ်း Arrow Function ဢမ်ႇမီး `arguments` object။ သင်လူဝ်ႇၸႂ်ႉ ႁဝ်းတေလႆႈၸႂ်ႉ Rest Parameters (`...`) တႅၼ်းၶႃႈ။
3. **Constructor:** ႁဝ်းဢမ်ႇၸၢင်ႈၸႂ်ႉ Arrow Function ပိူဝ်ႈတေႁဵတ်း `new` Class (Constructor) လႆႈၶႃႈ။

---

### 4. မိူဝ်ႈလႂ်ထိုင်လီၸႂ်ႉ? (When to use?)

* **ၸႂ်ႉ:** တႃႇ Function ပွတ်းပွတ်း၊ တႃႇၸႂ်ႉၼႂ်း `map()`, `filter()`, `forEach()` ႁိုဝ် မိူဝ်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉ `this` ၶွင်တူဝ်မၼ်း။
* **ယႃႇၸႂ်ႉ:** တႃႇ Object Methods ဢၼ်လူဝ်ႇၸႂ်ႉ `this` ႁိုဝ် တႃႇသၢင်ႈ Constructors။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 13)

* **Arrow Function**: ၸႂ်ႉ `=>` တႅၼ်း Keyword `function`။
* **Shorthand**: သင်မီးထႅဝ်လဵဝ် ဢမ်ႇလူဝ်ႇတႅမ်ႈ `{ }` လႄႈ `return`။
* **This**: မၼ်းဢမ်ႇမီး `this` ၶွင်တူဝ်မၼ်း (Lexical Scoping)။

---