# Lesson 29: Destructuring (ၵၢၼ်ထွတ်ႇဢဝ်ၶေႃႈမုၼ်း)

မိူဝ်ႈၵွၼ်ႇ၊ သင်ႁဝ်းၶႂ်ႈဢဝ်ၶေႃႈမုၼ်းၼႂ်း Object မႃးၸႂ်ႉ၊ ႁဝ်းတေလႆႈတႅမ်ႈယၢဝ်းၼႃႇ။ ၵူၺ်းၵႃႈ Destructuring ၸွႆႈႁႂ်ႈၵူတ်ႉႁဝ်း "သႅၼ်ႈသႂ်" (Clean) လိူဝ်ၵဝ်ႇၶႃႈ။

### 1. Object Destructuring

ၸႂ်ႉတွၵ်ႇပိၵ်ႉ `{ }` တႃႇထွတ်ႇဢဝ် Properties ၸွမ်းၼင်ႇ "ၸိုဝ်ႈ" မၼ်း။

```javascript
const user = {
  name: "ၸၢႆးၶမ်း",
  age: 25,
  city: "တႃႈၵုင်ႈ"
};

// လၢႆးၵဝ်ႇ:
// const name = user.name;
// const age = user.age;

// လၢႆးမႂ်ႇ (Destructuring):
const { name, age, city } = user;

console.log(name); // "ၸၢႆးၶမ်း"
console.log(city); // "တႃႈၵုင်ႈ"

```

* **ၵၢၼ်လႅၵ်ႈၸိုဝ်ႈ (Renaming):** သင်ႁဝ်းၶႂ်ႈလႅၵ်ႈၸိုဝ်ႈတူဝ်လႅၵ်ႈမႂ်ႇ ၸႂ်ႉ `:` ၶႃႈ။
  `const { name: userName } = user;` -> ၵမ်းၼႆႉၸႂ်ႉ `userName` တႅၼ်း။

---

### 2. Array Destructuring

ၸႂ်ႉတွၵ်ႇၵႅတ်း `[ ]` တႃႇထွတ်ႇဢဝ်ၶေႃႈမုၼ်းၸွမ်းၼင်ႇ "လမ်ႇတပ်ႉ" (Position) မၼ်း။

```javascript
const colors = ["Red", "Green", "Blue"];

// ထွတ်ႇဢဝ်တူဝ်ဢွၼ်တၢင်း လႄႈ တူဝ်ထႅၼ်ႈသွင်
const [firstColor, secondColor] = colors;

console.log(firstColor);  // "Red"
console.log(secondColor); // "Green"

// သင်ၶႂ်ႈၶၢမ်ႈ (Skip) တူဝ်လႂ်တူဝ်ၼိုင်ႈ ၸႂ်ႉ "," ပဝ်ႇဝႆႉ
const [primary, , tertiary] = colors;
console.log(tertiary); // "Blue"

```

---

### 3. Function Parameter Destructuring

ၼႆႉပဵၼ်လၢႆးဢၼ်ၸႂ်ႉၼမ်သုတ်း ၼႂ်းၵၢၼ်တႅမ်ႈ **React** ႁိုဝ် Modern Frameworks ၶႃႈ။

```javascript
const person = { name: "ၼၢင်းမူဝ်", role: "Developer" };

// ထွတ်ႇဢဝ် Properties တီႈၼႂ်း Parameter ၵမ်းလဵဝ်
function greet({ name, role }) {
  console.log(`မႂ်ႇသုင်ၶႃႈ ${name}၊ ၸဝ်ႈၵဝ်ႇပဵၼ် ${role} ႁႃႉ?`);
}

greet(person);

```

---

### 4. Default Values (ၵႃႈၶၼ်ပိုၼ်ႉထၢၼ်)

သင်ဝႃႈၶေႃႈမုၼ်းၼၼ်ႉဢမ်ႇမီး (undefined)၊ ႁဝ်းၸၢင်ႈသႂ်ႇၵႃႈၶၼ်ပိုၼ်ႉထၢၼ်ဝႆႉလႆႈၶႃႈ။

```javascript
const settings = { theme: "dark" };
const { theme, fontSize = 16 } = settings;

console.log(fontSize); // 16 (ၵွပ်ႈၼႂ်း Object ဢမ်ႇမီး fontSize)

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Object Destructuring**: ထွတ်ႇၸွမ်း **"ၸိုဝ်ႈ"** (Key)။
* **Array Destructuring**: ထွတ်ႇၸွမ်း **"လမ်ႇတပ်ႉ"** (Index)။
* ၸွႆႈႁႂ်ႈၵူတ်ႉသိုဝ်ႈငၢႆႈ၊ လူယႃႇငၢႆႈ လႄႈ ဢမ်ႇလူဝ်ႇတႅမ်ႈၸိုဝ်ႈ Object သမ်ႉၵၼ်ၼမ်။

---