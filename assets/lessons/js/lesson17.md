# Lesson 17: Constructor Functions & The `new` Keyword

မိူဝ်ႈႁဝ်းလူဝ်ႇသၢင်ႈ Object ဢၼ်မီးပိူင်မိူၼ်ၵၼ်တင်းၼမ် (မိူၼ်ၼင်ႇ သဵၼ်ႈမၢႆၵူၼ်းႁဵတ်းၵၢၼ် 100 ၵေႃႉ)၊ ႁဝ်းတေဢမ်ႇတႅမ်ႈ Object Literal `{}` 100 ပွၵ်ႈၶႃႈ။ ႁဝ်းတေၸႂ်ႉ **Constructor Function** ပဵၼ်တူဝ် "ၸၵ်ႉ" တႃႇပၼ်ႇဢွၵ်ႇ Object မႃးယဝ်ႉ။

### 1. Constructor Function ပဵၼ်သင်?

မၼ်းၵေႃႈပဵၼ် Function ယူႇ၊ ၵူၺ်းၵႃႈမၼ်းမီးပၵ်းပိူင်လၢၵ်ႇလၢႆး 2 ယၢင်ႇ:

1. **ၸိုဝ်ႈမၼ်းတေလႆႈတႄႇလူၺ်ႈ တူဝ်လိၵ်ႈယႂ်ႇ (PascalCase)** (မိူၼ်ၼင်ႇ `User`, `Car`, `SmartPhone`) ပိူဝ်ႈတေႁႂ်ႈပႅၵ်ႇပိူင်ႈတင်း Function ၵူႈပွၵ်ႈ။
2. **မၼ်းတေလႆႈထုၵ်ႇႁွင်ႉၸႂ်ႉလူၺ်ႈ Keyword `new**` တႃႇသေႇ။

```javascript
function User(name, role) {
  // 'this' တီႈၼႆႈတေၸီႉၸူး Object မႂ်ႇဢၼ်တိုၵ်ႉသၢင်ႈ
  this.name = name;
  this.role = role;
  
  this.introduce = function() {
    console.log(`မႂ်ႇသုင်၊ ၶႃႈၸိုဝ်ႈ ${this.name} ပဵၼ် ${this.role} ၶႃႈ။`);
  };
}

// သၢင်ႈ Object မႂ်ႇ (Instances)
const user1 = new User("ၸၢႆးၵႅဝ်ႈ", "Developer");
const user2 = new User("ၼၢင်းမူဝ်", "Designer");

user1.introduce(); // "မႂ်ႇသုင်၊ ၶႃႈၸိုဝ်ႈ ၸၢႆးၵႅဝ်ႈ ပဵၼ် Developer ၶႃႈ။"

```

---

### 2. `new` Keyword ႁဵတ်းၵၢၼ်သင်ယူႇ? (The 4 Steps)

မိူဝ်ႈႁဝ်းတႅမ်ႈ `new User(...)`၊ JavaScript တေႁဵတ်းၵၢၼ် 4 ၸၼ်ႉ "ၽၢႆႇတႂ်ႈ" (Under the hood) ၸိူင်ႉၼႆၶႃႈ:

1. **သၢင်ႈ Object ပဝ်ႇ** မႂ်ႇၼိုင်ႈဢၼ် `{}`။
2. **မတ်ႉ (Bind) `this**` ႁႂ်ႈၸီႉၸူး Object ပဝ်ႇၼၼ်ႉ။
3. **မတ်ႉ Object မႂ်ႇ** ၼၼ်ႉ ၸူး **Prototype** ၶွင် Function (ပိူဝ်ႈတေႁႂ်ႈသိုပ်ႇပူၺ်ႈ Methods လႆႈ)။
4. **သူင်ႇ (Return) Object မႂ်ႇ** ၼၼ်ႉဢွၵ်ႇမႃးႁင်းၵူၺ်း (Automatic return)။

---

### 3. ပၼ်ႁႃလွင်ႈ Memory (The Memory Leak)

ၼႂ်းတူဝ်ယၢင်ႇၼိူဝ်ၼၼ်ႉ၊ Method `introduce` တေထုၵ်ႇသၢင်ႈမႂ်ႇ **ၵူႈပွၵ်ႈ** ဢၼ်ႁဝ်းသၢင်ႈ User။

* သင်မီး User 1,000 ၵေႃႉ၊ `introduce` ၵေႃႈတေမီး 1,000 ဢၼ်ၼႂ်း Memory။
* ၼႆႉပဵၼ်လၢႆးတႅမ်ႈဢၼ် "ဢမ်ႇၵတ်ႉၶႅၼ်ႇ" ၵွပ်ႈမၼ်းသုတ်ႉသၢႆ Memory ႁႅင်းၼႃႇ။

**လွၵ်းလၢႆးၵႄႈလႅတ်း:** ႁဝ်းတေလႆႈဢဝ် Method ၸိူဝ်းၼႆႉ ၵႂႃႇဝႆႉၼႂ်း **Prototype** ဢၼ်ပဵၼ် "တီႈၵဵပ်းၶေႃႈမုၼ်းၵၢင်" တႅၼ်းၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 17)

* **Constructor**: ပဵၼ် Function ဢၼ်ၸႂ်ႉတႃႇသၢင်ႈ Object ဢၼ်မီးပိူင်မိူၼ်ၵၼ်။
* **`new` Keyword**: ပဵၼ်တူဝ်ၸိုင်ႈ ဢၼ်ႁဵတ်းႁႂ်ႈ Function သၢင်ႈ Object မႂ်ႇဢွၵ်ႇမႃး။
* **`this`**: ၼႂ်း Constructor၊ `this` မၢႆထိုင် Object မႂ်ႇဢၼ်တိုၵ်ႉၵိူတ်ႇ။

---