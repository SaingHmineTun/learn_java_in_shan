

# Lesson 62: Fetching Real API Data

### 1. API ပဵၼ်သင်?

ဝူၼ်ႉဝႃႈ API ပဵၼ် "ၵူၼ်းၸွႆႈၵၢၼ်ၼႂ်းလၢၼ်ႉတၢင်းၵိၼ်" (Waiter) ၶႃႈ။ ၸဝ်ႈၵဝ်ႇ (Client) သင်ႇတၢင်းၵိၼ်၊ ဝဵတ်ႉတႃႇ (API) ဢဝ်ၶေႃႈသင်ႇၵႂႃႇမွၵ်ႇတီႈၼႂ်းႁိူၼ်းပရိတ်ႉ (Server) သေ၊ ပေႃးတၢင်းၵိၼ် (Data) ယဝ်ႉယဝ်ႉ ၵေႃႈဢဝ်မႃးသူင်ႇပၼ်ၸဝ်ႈၵဝ်ႇၶႃႈ။

---

### 2. ၵၢၼ်ၸႂ်ႉ `fetch()`

JavaScript မီး Function ၼိုင်ႈဢၼ်ဢၼ်ႁွင်ႉဝႃႈ **`fetch()`**။ မၼ်းတေသူင်ႇ Request ၵႂႃႇၸူး URL သေ သူင်ႇ **Promise** ဢွၵ်ႇမႃးပၼ်ၶႃႈ။

#### ၶၼ်ႉတွၼ်ႈလမ်ႇလွင်ႈ:

1. **Request:** ႁွင်ႉၸႂ်ႉ `fetch(url)`။
2. **Response:** ၵူတ်ႇထတ်းဝႃႈ HTTP Status မႅၼ်ႈႁိုဝ် (200 OK?)။
3. **Parse:** လႅၵ်ႈၶေႃႈမုၼ်းဢၼ်လႆႈမႃး (Raw data) ႁႂ်ႈပဵၼ် **JSON Object**။
4. **Display:** ဢဝ်ၶေႃႈမုၼ်းၼၼ်ႉၵႂႃႇၸႂ်ႉၼႂ်း Website။

---

### 💻 တူဝ်ယၢင်ႇ (Real Code Example)

ႁဝ်းတေၸႂ်ႉ API ပလွၵ်ႇ ဢၼ်ႁွင်ႉဝႃႈ **JSONPlaceholder** တႃႇလူတ်းၶေႃႈမုၼ်း User ၶႃႈ။

```javascript
async function getRandomUser() {
  const url = "https://jsonplaceholder.typicode.com/users/1";

  try {
    console.log("Loading user data...");
    
    const response = await fetch(url);

    // ၵူတ်ႇထတ်းဝႃႈ မီး Error ၽၢႆႇ Server ႁႃႉ (မိူၼ်ၼင်ႇ 404)
    if (!response.ok) {
      throw new Error(`HTTP Error! Status: ${response.status}`);
    }

    // လႅၵ်ႈ Response ႁႂ်ႈပဵၼ် JSON
    const userData = await response.json();

    // ဢဝ်ၶေႃႈမုၼ်းမႃးၼႄ
    console.log("User Name:", userData.name);
    console.log("Email:", userData.email);
    console.log("City:", userData.address.city);

  } catch (error) {
    console.error("Fetch failed:", error.message);
  } finally {
    console.log("Operation complete.");
  }
}

getRandomUser();

```

---

### 3. ပၵ်းပိူင်လမ်ႇလွင်ႈ မိူဝ်ႈလူတ်ႇ API

* **Network Latency:** ၵၢၼ်လူတ်ႇၶေႃႈမုၼ်းတေ "ၵိၼ်ၶိင်ႇ" တႃႇသေႇ၊ ၵွပ်ႈၼၼ် လူဝ်ႇၸႂ်ႉ **Loading Spinner** တႃႇပၼ်ၵူၼ်းၸႂ်ႉႁူႉဝႃႈ App ႁဝ်းတိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ။
* **Security:** ဢမ်ႇလီသိမ်း API Keys လမ်ႇလွင်ႈဝႆႉၼႂ်း Frontend ၵမ်းလဵဝ် (တွၼ်ႈၼႆႉတေႁဵၼ်းၼႂ်း Backend)။
* **JSON Format:** ၶေႃႈမုၼ်း API ၵႆႉမႃးပဵၼ် JSON၊ မၼ်းမိူၼ်တင်း JavaScript Object ၼႃႇ ၵူၺ်းၵႃႈ Key ၵူႈဢၼ်တေလႆႈယူႇၼႂ်း `""` (Double quotes) ၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* `fetch()` တေ Reject ၵေႃႈတေႃႇမိူဝ်ႈ **"Network လူႉ"** (မိူၼ်ၼင်ႇ ဢမ်ႇမီး Internet) ၵူၺ်း။
* သင်ဝႃႈ Server သူင်ႇ Error 404 (ဢမ်ႇႁၼ်ၼႃႈလိၵ်ႈ) ႁိုဝ် 500၊ `fetch()` တေ **ဢမ်ႇ Reject**။ ၸဝ်ႈၵဝ်ႇတေလႆႈၵူတ်ႇထတ်း `response.ok` ႁင်းၵူၺ်းၶႃႈ။
* ၵၢၼ်လူတ်ႇ API ႁဵတ်းႁႂ်ႈ Website ႁဝ်း "မီးသၢႆၸႂ်" (Dynamic) လႄႈ ၸၢင်ႈလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းလႆႈ ဢမ်ႇလူဝ်ႇ Refresh ၼႃႈလိၵ်ႈၶႃႈ။

---