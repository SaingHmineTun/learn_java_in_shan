
# Lesson 58: Chaining Promises

### 1. Promise Chaining ပဵၼ်သင်?

မိူဝ်ႈႁဝ်းၸႂ်ႉ `.then()`၊ မၼ်းတေသူင်ႇ (Return) **Promise မႂ်ႇ** ဢွၵ်ႇမႃးထႅင်ႈတူဝ်ၼိုင်ႈတႃႇသေႇ။ ၼႆႉမၼ်းပွင်ႇဝႃႈ ႁဝ်းၸၢင်ႈဢဝ် `.then()` မႃး "ၵပ်း" (Chain) ၸပ်းၵၼ်ၵႂႃႇတိၵ်းတိၵ်းလႆႈ ႁႂ်ႈၵၢၼ်ႁဵတ်းလႅၼ်ႈၸွမ်းလမ်ႇတတ်း 1-2-3 ၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (The Flat Structure)

ဝူၼ်ႉတူၺ်း လၢႆးတႅမ်ႈဢၼ် "သိုဝ်ႈ" လိူဝ် Callback Hell ၼၼ်ႉၶႃႈ:

```javascript
// Function ဢၼ်သူင်ႇ Promise ဢွၵ်ႇမႃး
const stepOne = () => Promise.resolve("Step 1 Done");
const stepTwo = (msg) => Promise.resolve(msg + " -> Step 2 Done");
const stepThree = (msg) => Promise.resolve(msg + " -> Step 3 Done");

// ၵၢၼ်ၵပ်း (Chaining)
stepOne()
  .then(res1 => stepTwo(res1))
  .then(res2 => stepThree(res2))
  .then(res3 => {
    console.log(res3); // "Step 1 Done -> Step 2 Done -> Step 3 Done"
  })
  .catch(err => {
    console.error("Oops! Something failed:", err);
  });

```

---

### 2. .catch() လႄႈ .finally()

* **`.catch()`**: ၼႆႉမိူၼ် "ပူၵ်ႇႁပ်ႉ Error" (Safety Net) ၶႃႈ။ သင်ဝႃႈၼႂ်း Chain တူဝ်လႂ်တူဝ်ၼိုင်ႈ "လူႉ" (Reject) ၵႂႃႇ၊ မၼ်းတေလႅၼ်ႈမႃးႁႃ `.catch()` ၵမ်းလဵဝ် သေၵိုတ်းၵၢၼ်ႁဵတ်း Chain တွၼ်ႈၼႃႈတင်းမူတ်းၶႃႈ။
* **`.finally()`**: တွၼ်ႈၼႆႉတေ **"ႁဵတ်းၵၢၼ်တႃႇသေႇ"** ဢမ်ႇဝႃႈ Promise တေ Success ႁိုဝ် Error။ ၵႆႉၸႂ်ႉတႃႇ "ပိတ်း" (Close) Loading Spinner ႁိုဝ် ပိတ်း Database Connection ၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Real-world Pattern)

```javascript
fetchData()
  .then(data => {
    console.log("Processing Data...");
    return processData(data); // လူဝ်ႇ return တႃႇၵႂႃႇ .then() ထႅင်ႈတွၼ်ႈ
  })
  .then(result => {
    console.log("Final Result:", result);
  })
  .catch(error => {
    console.log("Error logic here:", error);
  })
  .finally(() => {
    console.log("All operations finished (Success or Fail).");
  });

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* ၼႂ်း `.then()` တေလႆႈ **`return`** ၵႃႈၶၼ် ႁိုဝ် Return Promise ထႅင်ႈတူဝ်ၼိုင်ႈ၊ တႃႇႁႂ်ႈ `.then()` တွၼ်ႈၼႃႈ ႁပ်ႉဢဝ်ၶေႃႈမုၼ်းလႆႈ။
* ႁဝ်းလူဝ်ႇတႅမ်ႈ **`.catch()` ၵူၺ်းတူဝ်လဵဝ်** ဝႆႉၽၢႆႇတႂ်ႈသုတ်းၵေႃႈ ၸၢင်ႈႁပ်ႉ Error လႆႈတင်းမူတ်း (Centralized Error Handling)။
* Promise Chaining ႁဵတ်းႁႂ်ႈၵူတ်ႉႁဝ်း "လူငၢႆႈ" (Readable) လိူဝ် Callback Hell ၼမ်ၼႃႇ။

---