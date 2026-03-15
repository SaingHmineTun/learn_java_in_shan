
# Lesson 52: Optional Chaining (?.)

### 1. ပၼ်ႁႃ: "TypeError: Cannot read property of undefined"

ဝူၼ်ႉဝႃႈ ႁဝ်းလႆႈၶေႃႈမုၼ်းမႃးၼႂ်း API သေ ႁဝ်းၶႂ်ႈၶဝ်ႈႁႃ `user.address.street`။ သင်ဝႃႈ `address` ဢမ်ႇမီး (undefined) ၼႆၸိုင်၊ Browser တေထႅင်ႇ Error သေ ၵူတ်ႉတင်းမူတ်းတေၵိုတ်းၵၢၼ်ႁဵတ်းၵၢၼ်ၵမ်းလဵဝ်ၶႃႈ။

---

### 2. Optional Chaining (`?.`) ၸွႆႈလႆႈသင်?

မိူဝ်ႈႁဝ်းၸႂ်ႉ **`?.`** တႅၼ်း `.` ယူဝ်းယူဝ်း:

* သင်ဝႃႈ တူဝ်ၽၢႆႇၼႃႈမၼ်းမီးယူႇ -> မၼ်းတေၸူးတူဝ်ထႅင်ႈတွၼ်ႈၼိုင်ႈ။
* သင်ဝႃႈ တူဝ်ၽၢႆႇၼႃႈမၼ်းပဵၼ် `null` ႁိုဝ် `undefined` -> မၼ်းတေ **"ၵိုတ်း"** သေသူင်ႇ `undefined` ဢွၵ်ႇမႃးပၼ် တႅၼ်းၵၢၼ်ထႅင်ႇ Error ၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Code Example)

#### A. ၵၢၼ်ၸႂ်ႉၸွမ်း Object Properties

```javascript
const user = {
  name: "Sai Kham",
  // address: { city: "Taunggyi" } // ဝူၼ်ႉဝႃႈတွၼ်းၼႆႉႁၢႆၵႂႃႇ
};

// ❌ လၢႆးၵဝ်ႇ (တေ Error: Cannot read property 'city' of undefined)
// console.log(user.address.city); 

// ✅ လၢႆးမႂ်ႇ (Optional Chaining)
console.log(user.address?.city); // undefined (ဢမ်ႇ Error ယဝ်ႉ!)

```

#### B. ၵၢၼ်ၸႂ်ႉၸွမ်း Method (Function)

ႁဝ်းယင်းၸႂ်ႉတႃႇၵူတ်ႇထတ်းဝႃႈ Function ၼၼ်ႉမီးယူႇတေႉႁႃႉ ဢွၼ်တၢင်းတေႁွင်ႉၸႂ်ႉၵေႃႈလႆႈၶႃႈ။

```javascript
const admin = {
  sayHi() { console.log("Hello!"); }
};

const guest = {};

admin.sayHi?.(); // "Hello!"
guest.sayHi?.(); // (ဢမ်ႇမီးသင်ၵိူတ်ႇၶိုၼ်ႈ၊ ဢမ်ႇ Error)

```

---

### 3. ၸႂ်ႉႁူမ်ႈတင်း Nullish Coalescing (`??`)

ႁဝ်းၵႆႉၸႂ်ႉ `?.` ၵပ်းၵၼ်တင်း `??` (Lesson 24) တႃႇပၼ်ၵႃႈၶၼ် Default မိူဝ်ႈႁႃဢမ်ႇႁၼ်ၶႃႈ။

```javascript
const city = user.address?.city ?? "Unknown City";
console.log(city); // "Unknown City"

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`?.`** ပွင်ႇဝႃႈ "သင်မီး... ၸင်ႇၵႂႃႇသိုပ်ႇ"။
* မၼ်းၸွႆႈႁႂ်ႈၵူတ်ႉႁဝ်း "သႅၼ်ႈသႂ်" (Clean) လိူဝ်ၵဝ်ႇ ယွၼ်ႉဢမ်ႇလူဝ်ႇတႅမ်ႈ `if (user && user.address && ...)` ယၢဝ်းယၢဝ်းယဝ်ႉ။
* **သတိ:** ဢမ်ႇလီၸႂ်ႉ `?.` ၵူႈတီႈၵူႈဢွင်ႈ။ ထုၵ်ႇလီၸႂ်ႉတီႈ "ဢွင်ႈတီႈဢၼ်ၶေႃႈမုၼ်းၸၢင်ႈႁၢႆ" ၵူၺ်း။ သင်ၸႂ်ႉၵူႈတီႈ၊ ၸဝ်ႈၵဝ်ႇတေႁႃ Bug ဢၼ်တေႉတေႉယၢပ်ႇၶႃႈ။

---