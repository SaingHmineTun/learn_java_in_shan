
# Lesson 16: The `this` Keyword & Explicit Binding

ၼႂ်း JavaScript၊ `this` ဢမ်ႇၸႂ်ႈတူဝ်လႅၵ်ႈ (Variable) ပုံႇပႅၵ်ႉ။ မၼ်းပဵၼ် Keyword ဢၼ် "လႅၵ်ႈလၢႆႈၵႃႈၶၼ်" ၸွမ်းၼင်ႇဝႃႈ **"ၽႂ်ပဵၼ်ၵူၼ်းႁွင်ႉၸႂ်ႉမၼ်း"** (Call-site)။ သင်ၸဝ်ႈၵဝ်ႇပွင်ႇၸႂ် `this`၊ ၸဝ်ႈၵဝ်ႇတေၵုမ်းထိူင်း JavaScript လႆႈၵူႈယၢင်ႇၶႃႈ။

### 1. The 4 Rules of `this` (ပၵ်းပိူင် 4 ယၢင်ႇ)

ပိူဝ်ႈတေႁူႉဝႃႈ `this` ၸီႉၸူးသင်၊ ႁဝ်းလူဝ်ႇတူၺ်း 4 ၸၼ်ႉၼႆႉၶႃႈ:

1. **Global Binding**: သင်ႁဝ်းႁွင်ႉ Function ပဝ်ႇၼွၵ်ႈ Object၊ `this` တေပဵၼ် `window` (ၼႂ်း Browser) ႁိုဝ် `global` (ၼႂ်း Node.js)။
2. **Implicit Binding**: မိူဝ်ႈႁွင်ႉၸႂ်ႉၼႂ်း Object၊ `this` တေၸီႉၸူး Object ဢၼ်ယူႇၽၢႆႇၼႃႈ "ၸုၵ်း" (`.`) ၼၼ်ႉၶႃႈ။
* *တူဝ်ယၢင်ႇ:* `user.sayHi()` -> `this` ပဵၼ် `user`။


3. **Explicit Binding**: ႁဝ်း "တႅပ်းတတ်းပၼ်မၼ်း" ဝႃႈတေႁႂ်ႈ `this` ပဵၼ်သင် ၸႂ်ႉလၢႆး `.call()`, `.apply()`, `.bind()`။
4. **New Binding**: မိူဝ်ႈၸႂ်ႉ `new` Keyword၊ `this` တေပဵၼ် Object မႂ်ႇဢၼ်တိုၵ်ႉသၢင်ႈၼၼ်ႉ။

---

### 2. Explicit Binding: Call, Apply, and Bind

မၢင်ၵမ်း ႁဝ်းမီး Function ၼိုင်ႈဢၼ်၊ ၵူၺ်းၵႃႈႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ပၼ် Object တၢင်ႇဢၼ်။ ႁဝ်းမတ်ႉ (Bind) မၼ်းလႆႈၸိူင်ႉၼႆၶႃႈ:

```javascript
const chef = { name: "ၸၢႆးၶမ်း" };
const waiter = { name: "ၼၢင်းဢွၼ်ႇ" };

function introduce(skill) {
  console.log(`ၶႃႈၸိုဝ်ႈ ${this.name}, ၵတ်ႉၶႅၼ်ႇလွင်ႈ ${skill}`);
}

// 1. .call() - ႁွင်ႉၸႂ်ႉၵမ်းလဵဝ်၊ သူင်ႇ Argument ပဵၼ်တူဝ်ၽႂ်တူဝ်မၼ်း
introduce.call(chef, "ၵၢၼ်ႁဵတ်းၶဝ်ႈၽၵ်း");

// 2. .apply() - ႁွင်ႉၸႂ်ႉၵမ်းလဵဝ်၊ သူင်ႇ Argument ပဵၼ် Array []
introduce.apply(waiter, ["ၵၢၼ်လူပၼ်ၶႅၵ်ႇ"]);

// 3. .bind() - ဢမ်ႇပႆႇႁွင်ႉၸႂ်ႉ၊ ၵူၺ်းၵႃႈ "သၢင်ႈ" Function မႂ်ႇ ဢၼ်မတ်ႉ this ဝႆႉယဝ်ႉ
const chefIntro = introduce.bind(chef);
chefIntro("ၵၢၼ်ႁဵတ်းၶဝ်ႈသွႆး"); 

```

---

### 3. Arrow Functions - The Exception

Arrow functions (`=>`) **ဢမ်ႇမီး** `this` ၶွင်တူဝ်မၼ်းၶႃႈ။ မၼ်းတေ "ယိမ်" (Inherit) `this` လုၵ်ႉတီႈ Scope ဢၼ်ယူႇတၢင်းၼွၵ်ႈမၼ်း (Lexical Scoping)။ ၼႆႉမီးၽၼ်ၽွၼ်းၼႃႇ မိူဝ်ႈႁဝ်းတႅမ်ႈၵူတ်ႉၼႂ်း `setTimeout` ႁိုဝ် Event Listeners ဢၼ် `this` ၵႆႉႁၢႆၼၼ်ႉၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway for Lesson 16)

* **`this`** ပဵၼ် Keyword ဢၼ်လႅၵ်ႈလၢႆႈၸွမ်းသၢႆငၢႆၵၢၼ်ႁွင်ႉၸႂ်ႉ။
* ၸႂ်ႉ **`.bind()`** မိူဝ်ႈၶႂ်ႈ "မတ်ႉ" Function ဝႆႉၸူး Object ၼိုင်ႈဢၼ်တေႃႇသေႇ။
* **Arrow functions** တေၸီႉၸူး `this` ၶွင်တီႈဢၼ်မၼ်းတႅမ်ႈဝႆႉ (Parent scope)။

---