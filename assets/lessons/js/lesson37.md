# Lesson 37: Fetch API & JSON Handling

**Fetch API** ပဵၼ် Interface ဢၼ်မီးၼႂ်း Browser တႃႇႁႂ်ႈ JavaScript ၸၢင်ႈသူင်ႇ Request ၵႂႃႇၸူး Server (မိူၼ်ၼင်ႇ ၵႂႃႇယွၼ်းဢဝ်ၶေႃႈမုၼ်းလုၵ်ႉတီႈ Database)။

### 1. ၵၢၼ်ၸႂ်ႉ `fetch()`

မိူဝ်ႈႁဝ်းႁွင်ႉ `fetch(url)`၊ မၼ်းတေ Return ပဵၼ် **Promise** တႃႇသေႇ။

```javascript
// လၢႆးၸႂ်ႉပိုၼ်ႉထၢၼ်
fetch('https://api.example.com/data')
  .then(response => response.json()) // လႅၵ်ႈ Response ႁႂ်ႈပဵၼ် JSON Object
  .then(data => console.log(data))
  .catch(error => console.log('Error:', error));

```

---

### 2. Fetch ၸွမ်း Async / Await (Modern Way)

ၼႆႉပဵၼ်လၢႆးဢၼ် "ၵတ်ႉ" သုတ်း လႄႈ ၸႂ်ႉၼမ်သုတ်းၼႂ်းၵၢၼ်တႅမ်ႈၵူတ်ႉဝၼ်းမိူဝ်ႈၼႆႉၶႃႈ။

```javascript
async function getUserData() {
  try {
    // 1. သူင်ႇ Request ၵႂႃႇ (ပႂ်ႉ Server တွပ်ႇ)
    const response = await fetch('https://jsonplaceholder.typicode.com/users/1');

    // 2. ၵူတ်ႇထတ်းဝႃႈ Request ဢွင်ႇမႅၼ်ႈႁႃႉ? (Status 200-299)
    if (!response.ok) {
      throw new Error("ဢမ်ႇၸၢင်ႈတိတ်းတေႃႇ Server လႆႈ!");
    }

    // 3. လႅၵ်ႈၶေႃႈမုၼ်းပဵၼ် JSON
    const data = await response.json();

    console.log(data.name); // ၼႄၸိုဝ်ႈ User
  } catch (error) {
    console.log("မီးပၼ်ႁႃ:", error.message);
  }
}

getUserData();

```

---

### 3. HTTP Methods ဢၼ်လမ်ႇလွင်ႈ

မိူဝ်ႈႁဝ်းတိတ်းတေႃႇ Server၊ ႁဝ်းဢမ်ႇၵူၺ်း "ယွၼ်း" (Get) ၶေႃႈမုၼ်း၊ ႁဝ်းယင်းၸၢင်ႈ "သူင်ႇ" (Post) ၶေႃႈမုၼ်းၵႂႃႇလႆႈၶႃႈ။

* **GET**: ယွၼ်းဢဝ်ၶေႃႈမုၼ်း (Default)။
* **POST**: သူင်ႇၶေႃႈမုၼ်းမႂ်ႇၵႂႃႇသိမ်း (မိူၼ်ၼင်ႇ သၢင်ႈ User မႂ်ႇ)။
* **PUT/PATCH**: မႄးၶေႃႈမုၼ်းဢၼ်မီးဝႆႉယဝ်ႉ။
* **DELETE**: မၢတ်ႇၶေႃႈမုၼ်းဢွၵ်ႇ။

**တူဝ်ယၢင်ႇ ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း (POST Request):**

```javascript
async function createPost() {
  const response = await fetch('https://jsonplaceholder.typicode.com/posts', {
    method: 'POST',
    body: JSON.stringify({
      title: 'မႂ်ႇသုင်',
      body: 'ၼႆႉပဵၼ် Post မႂ်ႇၶႃႈ',
      userId: 1
    }),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  });

  const data = await response.json();
  console.log("သၢင်ႈယဝ်ႉယဝ်ႉ:", data);
}

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`fetch()`**: ပဵၼ်ၶေႃႈၵႂၢမ်း (Function) တႃႇလၢတ်ႈတေႃႇတင်း Server။
* **Two-step Await**: လူဝ်ႇ `await` 2 ပွၵ်ႈ (1. တႃႇ Response၊ 2. တႃႇလႅၵ်ႈပဵၼ် JSON)။
* **Error Handling**: လူဝ်ႇၵူတ်ႇထတ်းတင်း `response.ok` လႄႈ `try...catch`။

---

