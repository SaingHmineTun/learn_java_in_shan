# Lesson 36: Async / Await

**Async / Await** ပဵၼ် Syntax ဢၼ်သၢင်ႈဝႆႉၼိူဝ် **Promises** (Lesson 35)။ မၼ်းၸွႆႈႁႂ်ႈႁဝ်းတႅမ်ႈၵူတ်ႉ Asynchronous ႁႂ်ႈတူၺ်းမိူၼ်ၵူတ်ႉ Synchronous ပုံႇပႅၵ်ႉ၊ ႁဵတ်းႁႂ်ႈႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ `.then()` လႄႈ `.catch()` ၼမ်ၼမ်ၶႃႈ။

### 1. Keyword "async"

မိူဝ်ႈႁဝ်းသႂ်ႇ `async` ဝႆႉၽၢႆႇၼႃႈ Function၊ မၼ်းတေႁဵတ်းႁႂ်ႈ Function ၼၼ်ႉ Return ပဵၼ် **Promise** တႃႇသေႇၶႃႈ။

```javascript
async function greet() {
  return "မႂ်ႇသုင်ၶႃႈ!";
}

greet().then(val => console.log(val)); // "မႂ်ႇသုင်ၶႃႈ!"

```

---

### 2. Keyword "await"

Keyword `await` ၸႂ်ႉလႆႈၼႂ်း Function ဢၼ်မီး `async` ဝႆႉၵူၺ်း။ မၼ်းတေသင်ႇႁႂ်ႈ JavaScript **"ၸုၵ်းပႂ်ႉ"** တေႃႇထိုင် Promise ၼၼ်ႉယဝ်ႉတူဝ်ႈ (Resolve) ၸင်ႇတေၵႂႃႇထႅဝ်လိၵ်ႈထႅပ်ႈၼၼ်ႉၶႃႈ။

**တူဝ်ယၢင်ႇ (Example):**

```javascript
function loginUser() {
  return new Promise((resolve) => {
    setTimeout(() => resolve("User Logged In!"), 2000);
  });
}

async function displayUser() {
  console.log("Checking status...");
  
  // JavaScript တေၸုၵ်းပႂ်ႉ 2 ၸႅၵ်ႉ တီႈထႅဝ်ၼႆႉ
  const status = await loginUser(); 
  
  console.log(status); // "User Logged In!"
  console.log("Next step...");
}

displayUser();

```

---

### 3. Error Handling (try...catch)

ၼႂ်း Async/Await၊ ႁဝ်းဢမ်ႇၸႂ်ႉ `.catch()` ယဝ်ႉ။ ႁဝ်းတေၸႂ်ႉ **`try...catch`** ဢၼ်ပဵၼ်လၢႆးၸတ်းၵၢၼ် Error ပုံႇပႅၵ်ႉၼၼ်ႉ တႅၼ်းၶႃႈ။

```javascript
async function fetchData() {
  try {
    const data = await someAPICall(); // သင် Promise ၼႆႉ Reject
    console.log(data);
  } catch (error) {
    console.log("မီးပၼ်ႁႃ:", error); // တေမႃးႁဵတ်းၵၢၼ်တီႈၼႆႉ
  }
}

```

---

### 4. ယွၼ်ႉသင် Async / Await ထိုင်လီလိူဝ် Promise?

1. **Clean Code**: ဢမ်ႇလူဝ်ႇၸႂ်ႉ `.then()` သိုပ်ႇၵၼ်ယၢဝ်းယၢဝ်း။
2. **Debugging**: မိူဝ်ႈၵူတ်ႉမီးပၼ်ႁႃ၊ Stack Trace တေၼႄပၼ်ဢွင်ႈတီႈၽိတ်း လႆႈၸႅၼ်ႇလႅင်းလိူဝ်။
3. **Logic**: ႁဝ်းၸၢင်ႈၸႂ်ႉ `if/else` ႁိုဝ် `for loop` ၸွမ်း `await` လႆႈငၢႆႈငၢႆႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`async`**: သႂ်ႇတီႈ Function တႃႇႁႂ်ႈမၼ်း Return ပဵၼ် Promise။
* **`await`**: သႂ်ႇတီႈၼႃႈ Promise တႃႇသင်ႇႁႂ်ႈ "ၸုၵ်းပႂ်ႉ" ၽွၼ်းလႅတ်း။
* **`try...catch`**: ၸႂ်ႉတႃႇၸတ်းၵၢၼ် Error မိူဝ်ႈ Promise ၼၼ်ႉ Reject။

---
