
# Lesson 74: ES Modules

### 1. Module ပဵၼ်သင်?

Module ပဵၼ် JavaScript File ၼိုင်ႈဢၼ် ဢၼ်မီးၵၢၼ်ႁဵတ်း "သီးသႃႉ" (Independent) ႁင်းမၼ်း။ ႁဝ်းၸၢင်ႈလိူၵ်ႈလႆႈဝႃႈ တေပၼ် Function ႁိုဝ် Variable တူဝ်လႂ် "ဢွၵ်ႇ" ၵႂႃႇၼွၵ်ႈ File (Export) လႄႈ တေ "ႁပ်ႉ" ဢဝ်တူဝ်လႂ်ၶဝ်ႈမႃးၸႂ်ႉ (Import) ၶႃႈ။

### 2. Export (ၵၢၼ်သူင်ႇဢွၵ်ႇ)

မၼ်းမီး 2 လၢႆးလူင်ၶႃႈ:

* **Named Export:** ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈသူင်ႇဢွၵ်ႇ "လၢႆလၢႆယၢင်ႇ" ၼႂ်း File လဵဝ်ၵၼ်။
* **Default Export:** ၸႂ်ႉမိူဝ်ႈႁဝ်းၶႂ်ႈသူင်ႇဢွၵ်ႇ "တူဝ်လမ်ႇလွင်ႈသုတ်း" ၵူၺ်းတူဝ်လဵဝ်။

```javascript
// mathUtils.js
export const add = (a, b) => a + b;      // Named Export
export const subtract = (a, b) => a - b; // Named Export

export default function multiply(a, b) { // Default Export
  return a * b;
}

```

---

### 3. Import (ၵၢၼ်ႁပ်ႉၶဝ်ႈ)

မိူဝ်ႈတေႁပ်ႉၶဝ်ႈ၊ ၸဝ်ႈၵဝ်ႇတေလႆႈၸီႉၸူး Path ၶွင် File ၼၼ်ႉၶႃႈ။

```javascript
// main.js
import multiply, { add, subtract } from './mathUtils.js';

console.log(add(5, 3));      // 8
console.log(multiply(4, 2)); // 8

```

> 💡 **Note:** တႃႇတေၸႂ်ႉ `import/export` ၼႂ်း Browser လႆႈၼၼ်ႉ၊ တီႈ HTML `<script>` tag လူဝ်ႇသႂ်ႇ `type="module"` ဝႆႉတႃႇသေႇၶႃႈ။

```html
<script type="module" src="main.js"></script>

```

---

### 4. ၽွၼ်းလီၶွင် ES Modules

* **Encapsulation:** Variable ၼႂ်း Module တေဢမ်ႇၵႂႃႇ "တူဝ်း" (Conflict) ၵၼ်တင်း File တၢင်ႇဢၼ် (Global scope)။
* **Reusability:** တႅမ်ႈ Function ဝႆႉတီႈလဵဝ် သေဢဝ်ၵႂႃႇၸႂ်ႉလႆႈၵူႈတီႈ။
* **Maintainability:** ႁႃၵူတ်ႉ လႄႈ ၵႄႈပၼ်ႁႃ (Debug) လႆႈငၢႆႈ ယွၼ်ႉၵူတ်ႉထုၵ်ႇၸႅၵ်ႇဝႆႉပဵၼ်တွၼ်ႈၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Named Export** တေလႆႈၸႂ်ႉ `{ }` တွၼ်ႈတႃႇ Import၊ ၵူၺ်းၵႃႈ **Default Export** ဢမ်ႇလူဝ်ႇၸႂ်ႉၶႃႈ။
* ၸဝ်ႈၵဝ်ႇၸၢင်ႈလႅၵ်ႈၸိုဝ်ႈ (Alias) မိူဝ်ႈ Import လႆႈလူၺ်ႈ Keyword `as` (မိူၼ်ၼင်ႇ `import { add as sum }`)။
* Module တေလႅၼ်ႈၼႂ်း **Strict Mode** တႃႇသေႇလူၺ်ႈ "ပိုၼ်ႉထၢၼ်" ၶႃႈ။

---