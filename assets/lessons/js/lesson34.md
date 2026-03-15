
# Lesson 34: Array & Object Destructuring

### 1. Object Destructuring

မိူဝ်ႈႁဝ်းမီး Object ယႂ်ႇယႂ်ႇဢၼ်ၼိုင်ႈ၊ တႅၼ်းတၢင်ဢၼ်ႁဝ်းတေတႅမ်ႈ `const name = user.name;` လၢႆလၢႆထႅဝ်၊ ႁဝ်းၸၢင်ႈ "ပႅတ်ႉ" (Unpack) မၼ်းဢွၵ်ႇမႃးၵမ်းလဵဝ်လႆႈၶႃႈ။

```javascript
const person = {
  firstName: "Sai Kham",
  age: 25,
  city: "Taunggyi"
};

// လၢႆးတႅမ်ႈ Destructuring
const { firstName, age, city } = person;

console.log(firstName); // "Sai Kham"
console.log(age);       // 25

```

> 💡 **Tip:** ၸိုဝ်ႈ Variable ၼႂ်း `{ }` တေလႆႈ **"မိူၼ်ၵၼ်"** တင်း Key ၼႂ်း Object ၶႃႈ။

---

### 2. Array Destructuring

တွၼ်ႈတႃႇ Array သမ်ႉ၊ ႁဝ်းၸႂ်ႉ Square Brackets `[ ]` တႃႇထုတ်ႇဢဝ်ၶေႃႈမုၼ်း **ၸွမ်းလမ်ႇတတ်း (Order)** ၶွင် Index မၼ်းၶႃႈ။

```javascript
const coordinates = [10, 20, 30];

// လၢႆးတႅမ်ႈ Destructuring
const [x, y, z] = coordinates;

console.log(x); // 10
console.log(y); // 20

// သင်ၶႂ်ႈၶၢမ်ႇ (Skip) တူဝ်ၵၢင်
const [first, , last] = coordinates; 
console.log(last); // 30

```

---

### 3. Default Values & Renaming

ႁဝ်းယင်းၸၢင်ႈပၼ် "ၵႃႈၶၼ်ပိုၼ်ႉထၢၼ်" ႁိုဝ် "ပၼ်ၸိုဝ်ႈမႂ်ႇ" ၼႂ်းယၢမ်းလဵဝ်ၵၼ်လႆႈၶႃႈ။

```javascript
const settings = { theme: "dark" };

// ပၼ်ၸိုဝ်ႈမႂ်ႇ (theme -> currentTheme) လႄႈ သႂ်ႇ Default (fontSize)
const { theme: currentTheme, fontSize = 16 } = settings;

console.log(currentTheme); // "dark"
console.log(fontSize);     // 16

```

---

### 4. ၸႂ်ႉၼႂ်း Function Parameters

ၼႆႉပဵၼ်လၢႆးဢၼ်ႁဝ်းတေလႆႈႁၼ်ၼမ်သုတ်း ၼႂ်းၵၢၼ်တႅမ်ႈ **React** ၶႃႈ။

```javascript
const user = { id: 101, name: "Nan Shwe" };

// ထုတ်ႇဢဝ် name ၵမ်းလဵဝ်ၼႂ်း Parameter
function welcome({ name }) {
  console.log(`Welcome, ${name}!`);
}

welcome(user); // "Welcome, Nan Shwe!"

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Object Destructuring** ၸႂ်ႉ `{ }` — ၼပ်ႉဢဝ်ၸွမ်း **ၸိုဝ်ႈ (Key)**။
* **Array Destructuring** ၸႂ်ႉ `[ ]` — ၼပ်ႉဢဝ်ၸွမ်း **ဢွင်ႈတီႈ (Index)**။
* ၸွႆႈႁႂ်ႈၵူတ်ႉႁဝ်း "သႅၼ်ႈသႂ်" (Clean) လႄႈ လူယႃႇငၢႆႈလိူဝ်ၵဝ်ႇၼမ်ၼႃႇၶႃႈ။

---