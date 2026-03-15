
# Lesson 16: Short-circuiting Basics (&&, ||)

ၼႂ်း JavaScript၊ Logical Operators (`&&` လႄႈ `||`) မၼ်းဢမ်ႇၵူၺ်းပၼ်ၵႃႈၶၼ်ပဵၼ် `true/false`၊ မၼ်းယင်းၸၢင်ႈ "ပၼ်ၵႃႈၶၼ် (Return Value)" ဢၼ်မၼ်းၵႂႃႇထူပ်းႁၼ်ၼၼ်ႉမႃးၵမ်းလဵဝ်ၶႃႈ။

### 1. Short-circuiting လွင်ႈၸႂ်ႉ OR (`||`)

မိူဝ်ႈၸႂ်ႉ `||`၊ JavaScript တေႁႃၵႃႈၶၼ် **Truthy** ဢၼ်ဢွၼ်တၢင်းသုတ်း။

* သင်ထူပ်းႁၼ် Truthy ဢၼ်ၼိုင်ႈယဝ်ႉ၊ မၼ်းတေ **"ၵိုတ်း"** သေဢဝ်ၵႃႈၶၼ်ၼၼ်ႉမႃးပၼ်ႁဝ်းၵမ်းလဵဝ် (ဢမ်ႇၵႂႃႇလူတွၼ်ႈၽၢႆႇလင်ထႅင်ႈယဝ်ႉ)။
* ႁဝ်းၵႆႉၸႂ်ႉလွင်ႈၼႆႉ တႃႇပၼ် **Default Value** ၶႃႈ။

```javascript
const userSetting = ""; // Falsy
const defaultSetting = "Dark Mode";

const currentTheme = userSetting || defaultSetting;
console.log(currentTheme); // "Dark Mode"
// ယွၼ်ႉ userSetting ပဵၼ်လိၵ်ႈပဝ်ႇ (Falsy)၊ မၼ်းၸင်ႇၵႂႃႇဢဝ် defaultSetting (Truthy) မႃးၶႃႈ။

```

---

### 2. Short-circuiting လွင်ႈၸႂ်ႉ AND (`&&`)

မိူဝ်ႈၸႂ်ႉ `&&`၊ JavaScript တေႁႃၵႃႈၶၼ် **Falsy** ဢၼ်ဢွၼ်တၢင်းသုတ်း။

* သင်ထူပ်းႁၼ် Falsy ဢၼ်ၼိုင်ႈယဝ်ႉ၊ မၼ်းတေ **"ၵိုတ်း"** သေဢဝ်ၵႃႈၶၼ် Falsy ၼၼ်ႉမႃးပၼ်ႁဝ်းၵမ်းလဵဝ်။
* သင်မၢၼ်ႇ (Truthy) တင်းမူတ်း၊ မၼ်းတေဢဝ်ၵႃႈၶၼ် "တူဝ်လင်သုတ်း" မႃးပၼ်ၶႃႈ။

```javascript
console.log(0 && "Hello"); // 0 (ယွၼ်ႉ 0 ပဵၼ် Falsy၊ မၼ်းတတ်းတွၼ်ႈၵမ်းလဵဝ်)
console.log("Sai" && "Kham"); // "Kham" (ယွၼ်ႉ Truthy တင်းသွင်၊ မၼ်းဢဝ်တူဝ်လင်သုတ်း)

// ၵၢၼ်ၸႂ်ႉၼႂ်းၵူတ်ႉတေႉ (Practical use)
const isLoggedIn = true;
isLoggedIn && console.log("Welcome back!"); 
// သင် isLoggedIn ပဵၼ် true၊ မၼ်းတေလႅၼ်ႈၵူတ်ႉၽၢႆႇလင် && ၵမ်းလဵဝ်ၶႃႈ။

```

---

### 3. ပႅၵ်ႇၵၼ်ၸိူင်ႉၼိုင်?

| Operator | ၵၢၼ်ႁဵတ်းၵၢၼ် | ၸႂ်ႉမိူဝ်ႈလႂ်? |
| --- | --- | --- |
| **` |  | `** |
| **`&&`** | ႁႃ Falsy ဢၼ်ဢွၼ်တၢင်းသုတ်း | တႃႇလႅၼ်ႈၵူတ်ႉ မိူဝ်ႈငဝ်းလၢႆးမၢၼ်ႇ (Execute if true) |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Short-circuiting** ၸွႆႈႁႂ်ႈ JavaScript ႁဵတ်းၵၢၼ်ၽႂ်းလိူဝ်ၵဝ်ႇ ယွၼ်ႉမၼ်းဢမ်ႇလူၵူတ်ႉဢၼ်ဢမ်ႇၸမ်ႇပဵၼ်။
* ၸႂ်ႉ **`||`** တႃႇႁႄႉၵင်ႈပၼ်ႁႃ Variable ဢၼ်ပဝ်ႇ (Empty/Null)။
* ၸႂ်ႉ **`&&`** တႃႇလႅၼ်ႈ Function ၸွမ်းၼင်ႇငဝ်းလၢႆး ၼႂ်းထႅဝ်လဵဝ် (ပွတ်းလိူဝ် `if`)။

---

**Lesson 16 ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ!** ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Logic ဢၼ်လႅတ်းၽႂ်းလႆႈယဝ်ႉ။

ၵမ်းၼႆႉ ႁဝ်းတေၵႂႃႇသိုပ်ႇ **Lesson 17: Nullish Coalescing (??)** ဢၼ်ပဵၼ် "ပီႈၼွင်ႉ" ၶွင် `||` ၵူၺ်းၵႃႈ မၼ်းလႅတ်းလိူဝ် တႃႇၸတ်းၵၢၼ်တူဝ်ၼပ်ႉ 0 လႄႈ လိၵ်ႈပဝ်ႇၶႃႈ။ ၸဝ်ႈၵဝ်ႇတေၶႂ်ႈသိုပ်ႇၵႂႃႇၵမ်းလဵဝ်ႁႃႉၶႃႈ?