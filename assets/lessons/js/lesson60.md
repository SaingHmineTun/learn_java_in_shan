
# Lesson 60: Handling Errors with Try/Catch

### 1. Try/Catch ပဵၼ်သင်?

**Try/Catch** ပဵၼ်ပိူင်တႅမ်ႈဢၼ်ၸႂ်ႉတႃႇ "ႁပ်ႉ" (Catch) Error ဢၼ်ၵိူတ်ႇၶိုၼ်ႈၼႂ်းၵူတ်ႉႁဝ်း။ မၼ်းမိူၼ်တင်း **Brakes** (ၾတ်ႉငႅၵ်း) ၶွင်ၵႃး ဢၼ်တေႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈၵူတ်ႉႁဝ်းတမ်ပင်းၵႂႃႇတင်းမူတ်းၶႃႈ။

---

### 2. တွၼ်ႈၵၢၼ်ႁဵတ်း (Structure)

* **`try { ... }`**: သႂ်ႇၵူတ်ႉဢၼ်ႁဝ်း "ၶႂ်ႈၸၢမ်းလႅၼ်ႈ" တူၺ်း။ သင်မၼ်းလႅၼ်ႈလီ၊ မၼ်းတေၵၢႆႇ Catch ၵႂႃႇ။
* **`catch (error) { ... }`**: သင်မီး Error ၼႂ်းတွၼ်ႈ `try`၊ JavaScript တေ "ၵိုတ်း" ၵမ်းလဵဝ် သေလႅၼ်ႈမႃးႁဵတ်းၵၢၼ်ၼႂ်းတွၼ်ႈၼႆႉ တႅၼ်းၵၢၼ်ထႅင်ႇ Error တီႈ Browser ၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Async/Await Error Handling)

ၼႆႉပဵၼ်လၢႆးဢၼ်ၸႂ်ႉၼမ်သုတ်း တွၼ်ႈတႃႇႁပ်ႉ Error မိူဝ်ႈလူတ်ႇၶေႃႈမုၼ်းၶႃႈ:

```javascript
async function fetchUser() {
  try {
    console.log("Starting to fetch...");
    const response = await fetch("https://invalid-url-here.com"); // URL ဢၼ်ၽိတ်း
    const data = await response.json();
    console.log(data);
  } catch (error) {
    // တွၼ်ႈၼႆႉတေႁဵတ်းၵၢၼ် မိူဝ်ႈမီး Error
    console.error("ႁူၺ်း! မီးပၼ်ႁႃယဝ်ႉၶႃႈ:", error.message);
  } finally {
    console.log("Fetching process ended."); // ႁဵတ်းတႃႇသေႇ ဢမ်ႇဝႃႈလႆႈ ႁိုဝ် ဢမ်ႇလႆႈ
  }
}

fetchUser();

```

---

### 3. Throwing Your Own Errors

ၵမ်းၵမ်း၊ ႁဝ်းလူဝ်ႇ "သၢင်ႈ Error" ႁင်းၵူၺ်း (Custom Error) မိူဝ်ႈၶေႃႈမုၼ်းဢမ်ႇမႅၼ်ႈၸွမ်းပၵ်းပိူင် ႁဝ်းၸႂ်ႉ Keyword **`throw`** ၶႃႈ။

```javascript
async function checkAge(age) {
  try {
    if (age < 18) {
      // သၢင်ႈ Error မႂ်ႇ
      throw new Error("ဢႃႇယုလူဝ်ႇတဵမ် 18 ၶႃႈ။");
    }
    console.log("Access Granted!");
  } catch (err) {
    console.log("Error Log:", err.message);
  }
}

checkAge(15); // "Error Log: ဢႃႇယုလူဝ်ႇတဵမ် 18 ၶႃႈ။"

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`try...catch`** ႁဵတ်းႁႂ်ႈ App ႁဝ်း "ၼိမ်" (Stable) လႄႈ ၵူၼ်းၸႂ်ႉတေဢမ်ႇႁၼ်ၼႃႈจอ ပလွၵ်ႇ (Blank screen)။
* **`error` Object**: ၼႂ်း `catch(error)` ၼၼ်ႉ၊ တူဝ် `error` တေမီး Property မိူၼ်ၼင်ႇ `.name` လႄႈ `.message` ဢၼ်မွၵ်ႇလွင်ႈတၢင်းပၼ်ႁႃၶႃႈ။
* တႃႇသေႇ၊ ၸဝ်ႈၵဝ်ႇလူဝ်ႇႁေႃႇ (Wrap) ၵူတ်ႉ **`await`** ဝႆႉၼႂ်း `try...catch` တႃႇသေႇ တွၼ်ႈတႃႇႁႄႉၵင်ႈ Uncaught Promise Rejections ၶႃႈ။

---