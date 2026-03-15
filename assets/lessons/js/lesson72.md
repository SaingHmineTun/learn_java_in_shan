
# Lesson 72: LocalStorage & SessionStorage

မိူဝ်ႈႁဝ်းသႂ်ႇၶေႃႈမုၼ်းၼႂ်း Variable ယူႇဝ်းယူဝ်း၊ ပေႃးႁဝ်း Refresh Browser ၵႂႃႇ ၶေႃႈမုၼ်းၸိူဝ်းၼၼ်ႉတေ "ႁၢႆ" တင်းမူတ်း။ တႃႇတေႁႄႉၵင်ႈပၼ်ႁႃၼႆႉ၊ Browser မီး **Web Storage API** မႃးပၼ်ႁဝ်းၶႃႈ။

### 1. LocalStorage ပဵၼ်သင်?

**LocalStorage** ပဵၼ်တီႈသိမ်းၶေႃႈမုၼ်း ဢၼ် **"ဢမ်ႇမီးဝၼ်းသုတ်း"** (No expiration)။ မၼ်းတေယူႇဝႆႉၼႂ်း Browser ၸဝ်ႈၵဝ်ႇ တေႃႇပေႃးၸဝ်ႈၵဝ်ႇမွတ်ႇ (Delete) မၼ်းပႅတ်ႈ ႁိုဝ် လၢင်ႉ Browser Cache ၶႃႈ။

* **Use Case:** သိမ်း Dark Mode Setting, သိမ်း User Preferences, ႁိုဝ် သိမ်း Shopping Cart။

### 2. SessionStorage ပဵၼ်သင်?

**SessionStorage** မိူၼ်တင်း LocalStorage ၵူႈယၢင်ႇ၊ ၵူၺ်းၵႃႈ မၼ်းတေ **"ႁၢႆၵႂႃႇ"** မိူဝ်ႈၸဝ်ႈၵဝ်ႇ "ပိတ်း Tab" ႁိုဝ် ပိတ်း Browser Window ၼၼ်ႉၶႃႈ။

* **Use Case:** သိမ်းၶေႃႈမုၼ်းၸူဝ်ႈၶၢဝ်ႇ ဢၼ်လူဝ်ႇၸႂ်ႉၼႂ်း Tab ၼၼ်ႉၵူၺ်း။

---

### 💻 တူဝ်ယၢင်ႇၵၢၼ်ၸႂ်ႉ (Syntax)

ႁဝ်းၸၢင်ႈၸတ်းၵၢၼ်ၶေႃႈမုၼ်းလူၺ်ႈ Method လမ်ႇလွင်ႈ 4 မဵဝ်း:

```javascript
// 1. သိမ်းၶေႃႈမုၼ်း (Save)
localStorage.setItem("username", "Sai Sai");

// 2. ဢဝ်ၶေႃႈမုၼ်းမႃးၸႂ်ႉ (Read)
const name = localStorage.getItem("username");
console.log(name); // "Sai Sai"

// 3. မွတ်ႇၶေႃႈမုၼ်းဢၼ်ၼိုင်ႈ (Remove)
localStorage.removeItem("username");

// 4. လၢင်ႉၶေႃႈမုၼ်းတင်းမူတ်း (Clear All)
localStorage.clear();

```

---

### ⚠️ ပၵ်းပိူင်လမ်ႇလွင်ႈ: သိမ်း Object လႄႈ Array

LocalStorage သိမ်းလႆႈ "လိၵ်ႈ" (**Strings**) ၵူၺ်းၶႃႈ။ သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈသိမ်း Object ႁိုဝ် Array၊ တေလႆႈလႅၵ်ႈမၼ်းပဵၼ် JSON ဢွၼ်တၢင်းၶႃႈ။

```javascript
const user = { id: 1, theme: "dark" };

// ❌ ၽိတ်း: သိမ်းၵမ်းလဵဝ်မၼ်းတေပဵၼ် "[object Object]"
// localStorage.setItem("user", user); 

// ✅ ထုၵ်ႇ: လႅၵ်ႈပဵၼ် JSON String ဢွၼ်တၢင်း
localStorage.setItem("user", JSON.stringify(user));

// 🔄 မိူဝ်ႈဢဝ်မႃးၸႂ်ႉ: လႅၵ်ႈၶိုၼ်ႈပဵၼ် Object
const savedUser = JSON.parse(localStorage.getItem("user"));
console.log(savedUser.theme); // "dark"

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Security Note:** ယႃႇပေသိမ်းၶေႃႈမုၼ်း "လမ်ႇလွင်ႈ" (မိူၼ်ၼင်ႇ Passwords ႁိုဝ် Credit Card) ဝႆႉၼႂ်း LocalStorage ယွၼ်ႉ JavaScript ၵူႈတူဝ်ၼိူဝ် Website ၼၼ်ႉ ၸၢင်ႈလူလႆႈတင်းမူတ်းၶႃႈ။
* **Capacity:** သိမ်းလႆႈၶေႃႈမုၼ်းမွၵ်ႈ **5MB - 10MB** (ၼမ်လိူဝ် Cookies ၼမ်ၼႃႇ)။
* **Synchronous:** Web Storage ႁဵတ်းၵၢၼ်ပဵၼ် Synchronous၊ သင်သိမ်းၶေႃႈမုၼ်းၼမ်ႁႅတ်း မၼ်းၸၢင်ႈႁဵတ်းႁႂ်ႈ Browser "ၵိုတ်း" (Lag) ဢိတ်းၼိုင်ႈၶႃႈ။

---