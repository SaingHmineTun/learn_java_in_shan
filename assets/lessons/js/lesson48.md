# Lesson 48: Getters, Setters & Property Validation

### 1. Getter ပဵၼ်သင်? (`get`)

**Getter** ပဵၼ် Method ဢၼ်ႁဝ်းၸႂ်ႉတႃႇ "ဢဝ်" (Read) ၵႃႈၶၼ် Property ဢွၵ်ႇမႃး။ မၼ်းၶႅၼ်ႇတီႈဝႃႈ ႁဝ်းၸၢင်ႈ "ပူတ်းပိၼ်ႇ" (Format) ၶေႃႈမုၼ်းဢွၼ်တၢင်းတေသူင်ႇဢွၵ်ႇၵႂႃႇၶႃႈ။

### 2. Setter ပဵၼ်သင်? (`set`)

**Setter** ပဵၼ် Method ဢၼ်ႁဝ်းၸႂ်ႉတႃႇ "ပၼ်/လႅၵ်ႈ" (Write) ၵႃႈၶၼ် Property။ မၼ်းလမ်ႇလွင်ႈၼႃႇ တႃႇႁဵတ်း **Validation** (ၵူတ်ႇထတ်း) ဝႃႈ ၶေႃႈမုၼ်းဢၼ်သူင်ႇမႃးၼၼ်ႉ မႅၼ်ႈႁိုဝ်ဢမ်ႇမႅၼ်ႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Code Example)

ဝူၼ်ႉဝႃႈ ႁဝ်းမီး Class `User` သေ ႁဝ်းဢမ်ႇၶႂ်ႈပၼ်ၵူၼ်းၸႂ်ႉ သႂ်ႇ "ၸိုဝ်ႈပလွၵ်ႇ" (Empty name) ၶႃႈ။

```javascript
class User {
  constructor(name) {
    this._name = name; // ၸႂ်ႉ _ တႃႇမွၵ်ႇဝႃႈၼႆႉပဵၼ် Private/Internal property
  }

  // Getter: မိူဝ်ႈႁွင်ႉ user.name
  get name() {
    return this._name.toUpperCase(); // ပၼ်ဢွၵ်ႇပဵၼ်တူဝ်ယႂ်ႇတႃႇသေႇ
  }

  // Setter: မိူဝ်ႈသႂ်ႇၵႃႈၶၼ် user.name = "Sai"
  set name(value) {
    if (value.length < 2) {
      console.error("Name is too short!");
      return;
    }
    this._name = value;
  }
}

const me = new User("Sai");
console.log(me.name); // "SAI" (Getter ႁဵတ်းၵၢၼ်)

me.name = "S";        // "Name is too short!" (Setter ၵူတ်ႇထတ်းပၼ်)
me.name = "Kham";     
console.log(me.name); // "KHAM"

```

---

### 3. ယွၼ်ႉသင်ၸင်ႇထုၵ်ႇလီၸႂ်ႉ?

1. **Data Integrity:** ႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈၶေႃႈမုၼ်းဢၼ်ၽိတ်းပိူင်ႈ (မိူၼ်ၼင်ႇ ဢႃႇယုပဵၼ်တူဝ်လိၵ်ႈ ႁိုဝ် ပဵၼ်မၢႆလႅပ်ႈ `-5`) ၶဝ်ႈမႃးၼႂ်း System။
2. **Computed Properties:** ၸၢင်ႈသၢင်ႈ Property ဢၼ်ၵိူတ်ႇဢွၵ်ႇမႃးၼႂ်းၵၢၼ်ၼပ်ႉသွၼ်ႇ (မိူၼ်ၼင်ႇ ဢဝ် `firstName` + `lastName` ပဵၼ် `fullName`)။
3. **Encapsulation:** သိမ်းဝႆႉ Logic ၵၢၼ်ၵူတ်ႇထတ်းဝႆႉၼႂ်း Class ဢမ်ႇလူဝ်ႇၵႂႃႇတႅမ်ႈ `if-else` ၽၢႆႇၼွၵ်ႈၵူႈပွၵ်ႈၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* ႁဝ်းၸႂ်ႉ **Getter/Setter** မိူၼ်တင်း Property ယူဝ်းယူဝ်း (ဢမ်ႇလူဝ်ႇသႂ်ႇ `()` မိူဝ်ႈႁွင်ႉၸႂ်ႉ)။
* **သတိ:** ဢမ်ႇလီၸႂ်ႉၸိုဝ်ႈ Getter/Setter သမ်ႉၵၼ်တင်းၸိုဝ်ႈ Property (မိူၼ်ၼင်ႇ `this.name = name` ၼႂ်း setter `name`) ယွၼ်ႉမၼ်းတေႁွင်ႉတူဝ်မၼ်းသမ်ႉၵၼ် (Recursion) တေႃႇထိုင် Error ၶႃႈ။ ၵွပ်ႈၼၼ် ႁဝ်းၸင်ႇၵႆႉၸႂ်ႉ `_name` တႅၼ်းၶႃႈ။

---