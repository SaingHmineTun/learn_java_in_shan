# Lesson 32: Object Literals & Property Access

### 1. Object Literal ပဵၼ်သင်?

**Object** ၸွႆႈႁႂ်ႈႁဝ်း "ၸုတုမ်" ၶေႃႈမုၼ်းဢၼ်ၵပ်းၵၢႆႇၵၼ် ဝႆႉႁူမ်ႈၵၼ်ၶႃႈ။ ႁဝ်းၸႂ်ႉၶိူင်ႈမၢႆ **Curly Brackets `{ }**` သေ တႅမ်ႈၶေႃႈမုၼ်းပဵၼ်ပိူင် **Key: Value** ၶႃႈ။

* **Key (Property):** ၸိုဝ်ႈၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ `firstName`)။
* **Value:** ၵႃႈၶၼ်မၼ်း (မိူၼ်ၼင်ႇ `"Sai Kham"`)။

```javascript
const user = {
  firstName: "Sai Kham",
  lastName: "Lao",
  age: 25,
  isDeveloper: true,
  skills: ["JavaScript", "React", "Node"] // သိမ်း Array ၼႂ်း Object ၵေႃႈလႆႈ
};

```

---

### 2. လၢႆးၶဝ်ႈထိုင်ၶေႃႈမုၼ်း (Property Access)

မိူဝ်ႈႁဝ်းမီး Object ယဝ်ႉ၊ ႁဝ်းၸၢင်ႈ "ဢဝ်" ၶေႃႈမုၼ်းၽၢႆႇၼႂ်းမၼ်းမႃးၸႂ်ႉလႆႈ 2 လၢႆးၶႃႈ:

#### A. Dot Notation (`.`)

ၼႆႉပဵၼ်လၢႆးဢၼ်ငၢႆႈ လႄႈ ၵႆႉၸႂ်ႉသုတ်းၶႃႈ။

```javascript
console.log(user.firstName); // "Sai Kham"
console.log(user.age);       // 25

```

#### B. Bracket Notation (`[ ]`)

ႁဝ်းၸႂ်ႉလၢႆးၼႆႉ မိူဝ်ႈ **Key** ႁဝ်းမီး "ပိုၼ်ႉတီႈလွၵ်ႇ (Space)" ႁိုဝ် မိူဝ်ႈႁဝ်းလူဝ်ႇၸႂ်ႉ **Variable** မႃးတႅၼ်း Key ၶႃႈ။

```javascript
console.log(user["firstName"]); // "Sai Kham"

const keyToFind = "skills";
console.log(user[keyToFind]); // ["JavaScript", "React", "Node"]

```

---

### 3. Adding & Modifying (ၵၢၼ်ထႅမ် လႄႈ ၵၢၼ်လႅၵ်ႈလၢႆႈ)

Object ၼႂ်း JavaScript ၼႆႉမၼ်း **Dynamic** ၼႃႇၶႃႈ။ ႁဝ်းၸၢင်ႈလႅၵ်ႈလၢႆႈ ႁိုဝ် ထႅမ် Property မႂ်ႇၶဝ်ႈၵႂႃႇလႆႈၵူႈၶိင်ႇ။

```javascript
// လႅၵ်ႈလၢႆႈၵႃႈၶၼ်
user.age = 26;

// ထႅမ် Property မႂ်ႇ
user.location = "Shan State";

// ထွၼ် Property ဢွၵ်ႇ (Delete)
delete user.isDeveloper;

console.log(user); 
// { firstName: "Sai Kham", age: 26, location: "Shan State", ... }

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Array** လီတႃႇသိမ်းသဵၼ်ႈမၢႆဢၼ်မီး "လမ်ႇတတ်း (Order)"။
* **Object** လီတႃႇသိမ်းၶေႃႈမုၼ်းဢၼ်မီး "လွင်ႈပွင်ႇၸႂ် (Meaning)" လူၺ်ႈၸႂ်ႉ Key။
* ၸႂ်ႉ **Dot Notation** တႃႇၵၢၼ်တႅမ်ႈၵူတ်ႉယူဝ်းယူဝ်း၊ ၸႂ်ႉ **Bracket Notation** မိူဝ်ႈလူဝ်ႇလႅၵ်ႈလၢႆႈ Key ၸွမ်း Variable ၶႃႈ။

---