# Lesson 71: Forms & Input Validation Logic

### 1. Handling Form Submission

ပၵ်းပိူင်လမ်ႇလွင်ႈသုတ်းမိူဝ်ႈၸတ်းၵၢၼ် Form ပဵၼ်ၵၢၼ်ၸႂ်ႉ Event **`submit`** ၼိူဝ် Element `<form>` (ဢမ်ႇၸႂ်ႈ `click` ၼိူဝ် Button) ၶႃႈ။

* **`e.preventDefault()`**: လူဝ်ႇၸႂ်ႉတႃႇသေႇ တွၼ်ႈတႃႇၵိုတ်း Browser ဢမ်ႇႁႂ်ႈမၼ်း Refresh ၼႃႈလိၵ်ႈ မိူဝ်ႈၼဵၵ်း Submit ၶႃႈ။

---

### 2. Accessing Form Data

ႁဝ်းမီးလၢႆးဢဝ်ၶေႃႈမုၼ်းဢွၵ်ႇတီႈ Input လၢႆလၢႆမဵဝ်း:

* **`.value`**: ဢဝ်လိၵ်ႈဢၼ်တႅမ်ႈဝႆႉၼႂ်း Input ၼၼ်ႉဢွၵ်ႇမႃး။
* **`FormData` Object**: လၢႆး Modern ဢၼ်ၸွႆႈဢဝ်ၶေႃႈမုၼ်းတင်း Form ဢွၵ်ႇမႃးငၢႆႈငၢႆႈ။

```javascript
const myForm = document.querySelector("#loginForm");

myForm.addEventListener("submit", (e) => {
  e.preventDefault();
  
  // ဢဝ်ၶေႃႈမုၼ်းလူၺ်ႈ FormData
  const formData = new FormData(myForm);
  const email = formData.get("email"); // ႁႃၸွမ်း "name" attribute ၼႂ်း HTML
  const password = formData.get("password");

  validateForm(email, password);
});

```

---

### 3. Validation Logic (ၵၢၼ်ၵူတ်ႇထတ်း)

ႁဝ်းၸၢင်ႈၵူတ်ႇထတ်းၶေႃႈမုၼ်းလႆႈလၢႆၸၼ်ႉ:

* **Basic Check:** ၵူတ်ႇထတ်းဝႃႈ "တႅမ်ႈဝႆႉႁႃႉ?" (Required)။
* **Length Check:** ၵူတ်ႇထတ်း "တၢင်းယၢဝ်း Password"။
* **Pattern Check:** ၸႂ်ႉ **RegEx** (Regular Expression) တႃႇၵူတ်ႇထတ်း Email ႁိုဝ် Phone number။

```javascript
function validateForm(email, password) {
  const errorMsg = document.querySelector("#error");

  if (email === "" || password === "") {
    errorMsg.textContent = "ၶေႃႈမုၼ်းဢမ်ႇတဵမ်ထူၼ်ႈၶႃႈ!";
    return false;
  }

  if (password.length < 8) {
    errorMsg.textContent = "Password လူဝ်ႇမီး 8 တူဝ်ၶိုၼ်ႈၼိူဝ်ၶႃႈ!";
    return false;
  }

  // သင်ၵူႈယၢင်ႇမႅၼ်ႈယဝ်ႉ
  alert("Login Successful!");
  return true;
}

```

---

### 4. Real-time Validation

တႅၼ်းၵၢၼ်တေပႂ်ႉတေႃႇၼဵၵ်း Submit၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ Event **`input`** ႁိုဝ် **`blur`** တွၼ်ႈတႃႇၵူတ်ႇထတ်း "ၵမ်းလဵဝ်" မိူဝ်ႈၵူၼ်းၸႂ်ႉတိုၵ်ႉတႅမ်ႈလိၵ်ႈယူႇၶႃႈ။

* **`input`**: ႁဵတ်းၵၢၼ်ၵူႈပွၵ်ႈ ဢၼ်မီးၵၢၼ်တႅမ်ႈလိၵ်ႈ။
* **`blur`**: ႁဵတ်းၵၢၼ် မိူဝ်ႈၵူၼ်းၸႂ်ႉ "ဢွၵ်ႇ" (Focus out) တီႈ Input ၼၼ်ႉၵႂႃႇ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Client-side Validation:** ၸွႆႈႁႂ်ႈၵူၼ်းၸႂ်ႉႁပ်ႉႁူႉၶေႃႈၽိတ်းပိူင်ႈ "ၽႂ်း" သုတ်း (Better UX)။
* **Security:** ယႃႇလိုမ်းဝႃႈ Client-side validation (JS) ၼႆႉ Hacker ၸၢင်ႈ "ပိတ်း" ပႅတ်ႈလႆႈ။ တႃႇသေႇ၊ လူဝ်ႇၵူတ်ႇထတ်းၶေႃႈမုၼ်းထႅင်ႈပွၵ်ႈၼိုင်ႈတီႈ **Backend (Server)** ၶႃႈ။
* ၸႂ်ႉ **CSS Classes** (မိူၼ်ၼင်ႇ `.invalid`) တႃႇပၼ် Feedback ႁၢင်ႈလီလူၺ်ႈ JavaScript ၶႃႈ။

---