# Lesson 18: Prototypes & The Prototype Chain

ၼႂ်း Lesson 17၊ ႁဝ်းႁၼ်ယဝ်ႉဝႃႈ ၵၢၼ်သၢင်ႈ Method ဝႆႉၼႂ်း Constructor မၼ်းသုမ်း Memory။ ပိူဝ်ႈတေၵႄႈလႅတ်းၼၼ်ႉ JavaScript ၸႂ်ႉ **Prototypes** ၶႃႈ။

### 1. Prototype ပဵၼ်သင်?

ၵူႈ Function ၼႂ်း JavaScript မီး Property ဢၼ်ၼိုင်ႈႁွင်ႉဝႃႈ `.prototype`။ မၼ်းပဵၼ်မိူၼ် "ထူင်ၵၢင်" ဢၼ်ၵဵပ်း Methods ဝႆႉပၼ် Object ၵူႈတူဝ် ဢၼ်သၢင်ႈမႃးလုၵ်ႉတီႈ Constructor ၼၼ်ႉ ႁႂ်ႈၸၢင်ႈမႃး "ယိမ်" ၸႂ်ႉၸွမ်းၵၼ်လႆႈ။

**တူဝ်ယၢင်ႇ (Example):**

```javascript
function User(name) {
  this.name = name;
}

// ဢဝ် Method မႃးဝႆႉၼႂ်း Prototype (ၵဵပ်းဝႆႉတီႈလဵဝ် ၵူၺ်းၵႃႈ ၸႂ်ႉလႆႈၵူႈၵေႃႉ)
User.prototype.sayHi = function() {
  console.log(`မႂ်ႇသုင်၊ ၶႃႈၸိုဝ်ႈ ${this.name}`);
};

const user1 = new User("ၸၢႆးသႅင်");
const user2 = new User("ၼၢင်းမူဝ်");

user1.sayHi(); // "မႂ်ႇသုင်၊ ၶႃႈၸိုဝ်ႈ ၸၢႆးသႅင်"
user2.sayHi(); // "မႂ်ႇသုင်၊ ၶႃႈၸိုဝ်ႈ ၼၢင်းမူဝ်"

```

* **ႁႅင်းလီ:** `sayHi` မီးဝႆႉၼႂ်း Memory တီႈလဵဝ်ၵူၺ်း၊ ဢမ်ႇဝႃႈႁဝ်းတေမီး User 10,000 ၵေႃႉၵေႃႈယႃႇ။

---

### 2. Prototype Chain (သၢႆသူင်ႇ Prototype)

မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Property ႁိုဝ် Method ၼိုင်ႈယၢင်ႇၼႂ်း Object၊ JavaScript တေႁႃၸွမ်းလမ်ႇတပ်ႉၼႆႉၶႃႈ:

1. ႁႃတူၺ်းၼႂ်း **တူဝ် Object** ၼၼ်ႉဢွၼ်တၢင်း။
2. သင်ဢမ်ႇမီး၊ မၼ်းတေၶိုၼ်ႈၵႂႃႇႁႃၼႂ်း **Prototype** ၶွင်မၼ်း။
3. သင်တိုၵ်ႉဢမ်ႇမီးထႅင်ႈ၊ မၼ်းတေၶိုၼ်ႈၵႂႃႇႁႃၼႂ်း **Object.prototype** (ဢၼ်ပဵၼ် ပူႇမွၼ်ႇလူင် ၶွင်ၵူႈ Object)။
4. သင်ႁႃၸိုင်ႈသုတ်းသၢႆယဝ်ႉ ဢမ်ႇမီးတေႉ၊ မၼ်းတေ Return `undefined` ႁိုဝ် Error ၶႃႈ။

---

### 3. `__proto__` vs `prototype`

ၼႆႉပဵၼ်ဢၼ်ၵူၼ်းၵႆႉသုၵ်ႉယုင်ႈသုတ်း:

* **`.prototype`**: မီးဝႆႉၼႂ်း **Constructor Function** (မိူၼ်ၼင်ႇ `User`)။ မၼ်းပဵၼ် "ပလွၵ်း" တႃႇသူင်ႇပၼ်လုၵ်ႈလၢၼ်။
* **`.__proto__`**: မီးဝႆႉၼႂ်း **Object** (မိူၼ်ၼင်ႇ `user1`)။ မၼ်းပဵၼ် "ၵျော့" (Link) ဢၼ်ၸီႉၶိုၼ်ႈၵႂႃႇၸူး Prototype ၶွင်ပေႃႈမႄႈမၼ်း။

```javascript
console.log(user1.__proto__ === User.prototype); // true

```

---

### 4. Prototypal Inheritance (ၵၢၼ်သိုပ်ႇပူၺ်ႈ)

ႁဝ်းၸၢင်ႈႁဵတ်းႁႂ်ႈ Prototype ၶွင် Object ၼိုင်ႈဢၼ် သိုပ်ႇဢဝ် Properties လုၵ်ႉတီႈထႅင်ႈဢၼ်ၼိုင်ႈလႆႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 18)

* **Prototype**: ပဵၼ်လၢႆးၵဵပ်း Methods ဝႆႉတီႈလဵဝ် ပိူဝ်ႈတေႁႂ်ႈ Objects တင်းၼမ်ၸႂ်ႉလႆႈ (Memory Efficiency)။
* **Prototype Chain**: လၢႆးႁႃၶေႃႈမုၼ်း လုၵ်ႉတီႈ "လုၵ်ႈ" ၶိုၼ်ႈၵႂႃႇၸူး "ပေႃႈမႄႈ" တေႃႇထိုင် "ပူႇမွၼ်ႇ"။
* **`__proto__`**: ပဵၼ်သၢႆၸီႉ ဢၼ်မီးၼႂ်း Object ၵူႈတူဝ်။

---