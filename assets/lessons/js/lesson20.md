# Lesson 20: Encapsulation & Private Fields (ၵၢၼ်ႁေႃႇႁုမ်ႉ)

ၼႂ်းၵၢၼ်တႅမ်ႈ Software ယႂ်ႇယႂ်ႇ၊ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈၽႂ်ၵေႃႈယႃႇ မႃးလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ ၵႃႈၶၼ်ငိၼ်းၼႂ်းယေး) လႆႈၵမ်းလဵဝ်။ ႁဝ်းတေလႆႈႁဵတ်းႁႂ်ႈမၼ်းပဵၼ် "လွင်ႈလပ်ႉ" (Private) ဝႆႉၶႃႈ။

### 1. Private Fields (ၸႂ်ႉ `#`)

ၼႂ်း JavaScript မႂ်ႇ (ES2022)၊ ႁဝ်းၸၢင်ႈသၢင်ႈ Property ဢၼ်ပဵၼ်လွင်ႈလပ်ႉလႆႈ လူၺ်ႈၵၢၼ်သႂ်ႇၶႅပ်း **`#`** ဝႆႉၽၢႆႇၼႃႈၸိုဝ်ႈမၼ်းၶႃႈ။

```javascript
class BankAccount {
  // Private field (ၽႂ်ၵေႃႈႁၼ်ဢမ်ႇလႆႈ လုၵ်ႉတီႈၽၢႆႇၼွၵ်ႈ)
  #balance;

  constructor(owner, amount) {
    this.owner = owner;
    this.#balance = amount;
  }

  deposit(amount) {
    this.#balance += amount;
    console.log(`သႂ်ႇငိၼ်းယဝ်ႉ၊ ၵိုတ်းယူႇ: ${this.#balance}`);
  }
}

const myAcc = new BankAccount("ၸၢႆးသႅင်", 1000);
myAcc.deposit(500); // ႁဵတ်းၵၢၼ်လႆႈ
// console.log(myAcc.#balance); // Error! ၶဝ်ႈထိုင်ဢမ်ႇလႆႈ ၵွပ်ႈမၼ်းပဵၼ် Private

```

---

### 2. Getters & Setters (ၵၢၼ်ၶဝ်ႈထိုင် လႄႈ ၵၢၼ်မႄးထတ်း)

မိူဝ်ႈႁဝ်းႁဵတ်းႁႂ်ႈၶေႃႈမုၼ်းပဵၼ် Private ယဝ်ႉ၊ သင်ႁဝ်းၶႂ်ႈ "လူ" ႁိုဝ် "မႄး" ၵႃႈၶၼ်မၼ်း ႁဝ်းတေၸႂ်ႉ Keyword `get` လႄႈ `set` ၶႃႈ။ ၼႆႉၸွႆႈႁႂ်ႈႁဝ်းၵူတ်ႇထတ်း (Validate) ၶေႃႈမုၼ်းလႆႈ ဢွၼ်တၢင်းတေမႄးမၼ်း။

```javascript
class User {
  constructor(name) {
    this._name = name; // ၸႂ်ႉ '_' ပဵၼ် Convention ဝႃႈမၼ်းပဵၼ် Internal
  }

  // Getter: တႃႇဢဝ်ၵႃႈၶၼ်ဢွၵ်ႇမႃး
  get name() {
    return this._name.toUpperCase();
  }

  // Setter: တႃႇမႄးၵႃႈၶၼ် (မီး Validation)
  set name(newName) {
    if (newName.length > 2) {
      this._name = newName;
    } else {
      console.log("ၸိုဝ်ႈတေလႆႈယၢဝ်းလိူဝ် 2 တူဝ်!");
    }
  }
}

const user1 = new User("Sai");
console.log(user1.name); // "SAI" (ႁွင်ႉၸႂ်ႉမိူၼ် Property ၵူၺ်း)
user1.name = "A"; // "ၸိုဝ်ႈတေလႆႈယၢဝ်းလိူဝ် 2 တူဝ်!"

```

---

### 3. Why Encapsulation? (ယွၼ်ႉသင်ထိုင်လမ်ႇလွင်ႈ?)

1. **Security**: ႁႄႉၵင်ႈၶေႃႈမုၼ်းလမ်ႇလွင်ႈ။
2. **Validation**: ၵူတ်ႇထတ်းၶေႃႈမုၼ်း ဢွၼ်တၢင်းတေသိမ်း (မိူၼ်ၼင်ႇ ဢမ်ႇပၼ်သႂ်ႇ တူဝ်ၼပ်ႉထႅတ်း `-` ၼႂ်း Balance)။
3. **Maintenance**: မိူဝ်ႈႁဝ်းမႄးၵူတ်ႉၼႂ်း Class၊ ၵူတ်ႉတီႈတၢင်ႇဢၼ် ဢၼ်ႁွင်ႉၸႂ်ႉယူႇၼၼ်ႉ တေဢမ်ႇလႆႈမႄးၸွမ်း (ၵွပ်ႈမၼ်းႁွင်ႉၸႂ်ႉ ၸွမ်းၼင်ႇ Interface ဢၼ်ႁဝ်းပၼ်ဝႆႉၵူၺ်း)။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 20)

* **Encapsulation**: ၵၢၼ်ႁေႃႇႁုမ်ႉၶေႃႈမုၼ်းဝႆႉၼႂ်း Class။
* **`#` (Private Fields)**: ၸႂ်ႉတႃႇႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈၶဝ်ႈထိုင်လႆႈ လုၵ်ႉတီႈၽၢႆႇၼွၵ်ႈ။
* **Getters/Setters**: ၸႂ်ႉတႃႇလူ လႄႈ မႄးၶေႃႈမုၼ်း ၼႂ်းပၵ်းပိူင်ဢၼ်ႁဝ်းၵုမ်းထိူင်းလႆႈ။

---