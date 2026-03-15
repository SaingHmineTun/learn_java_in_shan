# Lesson 59: Async/Await Syntax

### 1. Async/Await ပဵၼ်သင်?

**Async/Await** ပဵၼ် "ၼမ်ႉၵႅဝ်ႈႁေႃႇၸွႆႉ" (Syntactic Sugar) ဢၼ်တႅမ်ႈတပ်ႉၼိူဝ် **Promises** ၶႃႈ။ မၼ်းဢမ်ႇလႆႈမႃးလႅၵ်ႈလၢႆႈပိူင်ၵၢၼ် Promise၊ မၼ်းၵူၺ်းမႃးၸွႆႈႁႂ်ႈႁဝ်း "ဢမ်ႇလူဝ်ႇၸႂ်ႉ `.then()` လႄႈ `.catch()`" ယၢဝ်းယၢဝ်းၼၼ်ႉၶႃႈ။

---

### 2. ပၵ်းပိူင်ၵၢၼ်ၸႂ်ႉတူဝ်

မၼ်းမီး Keyword လမ်ႇလွင်ႈ 2 တူဝ်:

1. **`async`**: သႂ်ႇဝႆႉၽၢႆႇၼႃႈ Function တႃႇမွၵ်ႇဝႃႈ "Function ၼႆႉတေႁဵတ်းၵၢၼ် Async ၼႃ"။ မၼ်းတေ Return ပဵၼ် Promise တႃႇသေႇ။
2. **`await`**: ၸႂ်ႉလႆႈ "ၼႂ်း" async function ၵူၺ်း။ မၼ်းၸွႆႈမွၵ်ႇ JavaScript ဝႃႈ **"ၵိုတ်းပႂ်ႉ (Wait) တေႃႇ Promise ၼႆႉတေယဝ်ႉ (Resolved) ၵွၼ်ႇ ၸင်ႇၵွႆႈၵႂႃႇထႅဝ်ၼႃႈ"**။

---

### 💻 တူဝ်ယၢင်ႇ (Comparison)

#### လၢႆးတႅမ်ႈလူၺ်ႈ Promises (.then):

```javascript
function getData() {
  fetch("https://api.example.com/user")
    .then(res => res.json())
    .then(data => console.log(data))
    .catch(err => console.log(err));
}

```

#### လၢႆးတႅမ်ႈလူၺ်ႈ Async/Await:

```javascript
async function getData() {
  try {
    const response = await fetch("https://api.example.com/user");
    const data = await response.json(); // ပႂ်ႉတေႃႇမၼ်းပဵၼ် JSON ယဝ်ႉၵွၼ်ႇ
    console.log(data);
  } catch (err) {
    console.log("Error happened:", err);
  }
}

```

> 💡 **သင်ႇၵဵတ်းတူၺ်း:** ၵူတ်ႉမၼ်းတေ "သိုဝ်ႈ" လႄႈ လူငၢႆႈမိူၼ် Synchronous code ဝႆႉၶႃႈ။

---

### 3. လွင်ႈၶႅၼ်ႇၶွင် Async/Await

* **Readable:** လူငၢႆႈလိူဝ် `.then()` ယွၼ်ႉမၼ်းဢမ်ႇမီးၵၢၼ် "သွၼ်ႉ" (Nesting) ၵၼ်ၼမ်။
* **Debugging:** မိူဝ်ႈၵူတ်ႉလူႉ (Error)၊ Stack Trace မၼ်းတေမွၵ်ႇလႆႈၸႅၼ်ႇလိူဝ်ဝႃႈ လူႉတီႈထႅဝ်လႂ်။
* **Control Flow:** ၸၢင်ႈၸႂ်ႉ `if`, `for` loop ၸွမ်း `await` လႆႈငၢႆႈငၢႆႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`await`** တေႁဵတ်းႁႂ်ႈ Function ၼၼ်ႉ "ၵိုတ်း" (Pause) ယူႇ၊ ၵူၺ်းၵႃႈ မၼ်း **ဢမ်ႇလႆႈပိတ်း (Block)** Browser တင်းမူတ်း။ Event Loop ယင်းတိုၵ်ႉႁဵတ်းၵၢၼ်တၢင်ႇဢၼ်လႆႈယူႇ။
* တႃႇသေႇ၊ လူဝ်ႇၸႂ်ႉ **`try...catch`** ႁူမ်ႈၵၼ်တင်း Async/Await တႃႇၸတ်းၵၢၼ် Error ၶႃႈ။
* ၸဝ်ႈၵဝ်ႇဢမ်ႇၸၢင်ႈၸႂ်ႉ `await` ၽၢႆႇၼွၵ်ႈ async function လႆႈ (ၼွၵ်ႈလိူဝ် "Top-level await" ၼႂ်း Modern Modules)။

---