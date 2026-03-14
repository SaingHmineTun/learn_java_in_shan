# Lesson 35: Promises (resolve, reject)

**Promise** ပဵၼ် Object ဢၼ်တႅၼ်းတၢင် "ၵႃႈၶၼ်" (Value) ဢၼ်တေမႃးၼႂ်းဝၼ်းမိူဝ်ႈၼႃႈ။ မၼ်းမိူၼ်ၼင်ႇၵၢၼ် "ပၼ်ၵတိ" ဝႃႈ—ၵၢၼ်ဢၼ်ႁဝ်းႁဵတ်းယူႇၼၼ်ႉ တေယဝ်ႉတူဝ်ႈလီ (Success) ႁိုဝ် တေမီးပၼ်ႁႃ (Fail) ၶႃႈ။

### 1. States ၶွင် Promise (ငဝ်းလၢႆး 3 ပႅၵ်ႉ)

Promise ၼိုင်ႈဢၼ် ၸၢင်ႈမီးငဝ်းလၢႆးလႆႈ 3 မဵဝ်း:

1. **Pending**: တိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇ (ပႂ်ႉဝႆႉ)။
2. **Fulfilled (Resolved)**: ႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈလီ (ဢွင်ႇမႅၼ်ႈ)။
3. **Rejected**: မီးပၼ်ႁႃ ႁိုဝ် ႁဵတ်းၵၢၼ်ဢမ်ႇဢွင်ႇ (ၽိတ်းပႅၵ်ႇ)။

---

### 2. ၵၢၼ်သၢင်ႈ Promise (Creating a Promise)

ႁဝ်းၸႂ်ႉ `new Promise()` သေ ၼႂ်းမၼ်းတေမီး Function ဢၼ်ႁပ်ႉဢဝ် Argument 2 တူဝ်:

* **resolve**: ႁွင်ႉမိူဝ်ႈၵၢၼ်ယဝ်ႉတူဝ်ႈလီ။
* **reject**: ႁွင်ႉမိူဝ်ႈမီးပၼ်ႁႃ။

```javascript
const myPromise = new Promise((resolve, reject) => {
  const success = true;

  setTimeout(() => {
    if (success) {
      resolve("လူတ်ႇၶေႃႈမုၼ်းယဝ်ႉယဝ်ႉၶႃႈ!");
    } else {
      reject("မီးပၼ်ႁႃ တီႈၵၢၼ်လူတ်ႇၶေႃႈမုၼ်း!");
    }
  }, 2000);
});

```

---

### 3. ၵၢၼ်ၸႂ်ႉ Promise (Consuming a Promise)

မိူဝ်ႈႁဝ်းမီး Promise ယဝ်ႉ၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ Methods ၸိူဝ်းၼႆႉ တႃႇႁပ်ႉဢဝ်ၽွၼ်းလႅတ်းမၼ်း:

* **`.then()`**: ႁဵတ်းၵၢၼ်မိူဝ်ႈ Promise ပဵၼ် `resolve`။
* **`.catch()`**: ႁဵတ်းၵၢၼ်မိူဝ်ႈ Promise ပဵၼ် `reject` (ၸတ်းၵၢၼ် Error)။
* **`.finally()`**: ႁဵတ်းၵၢၼ်တႃႇသေႇ ဢမ်ႇဝႃႈတေဢွင်ႇ ႁိုဝ် ၽိတ်း။

```javascript
myPromise
  .then((data) => {
    console.log(data); // "လူတ်ႇၶေႃႈမုၼ်းယဝ်ႉယဝ်ႉၶႃႈ!"
  })
  .catch((error) => {
    console.log(error); // "မီးပၼ်ႁႃ..."
  })
  .finally(() => {
    console.log("ၵၢၼ်ႁဵတ်းယဝ်ႉတူဝ်ႈယဝ်ႉ!");
  });

```

---

### 4. Promise Chaining (ၵၢၼ်မတ်ႉသိုပ်ႇၵၼ်)

တႅၼ်းၵၢၼ်တႅမ်ႈ Callback Hell၊ ႁဝ်းၸၢင်ႈၸႂ်ႉ `.then()` သိုပ်ႇၵၼ်ၵႂႃႇလႆႈ ႁဵတ်းႁႂ်ႈၵူတ်ႉႁဝ်း လူယႃႇငၢႆႈ (Readable) ၶႃႈ။

```javascript
getData()
  .then(user => getPosts(user))
  .then(posts => getComments(posts))
  .then(comments => console.log(comments))
  .catch(err => console.log(err));

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Promise**: ပဵၼ် Object ဢၼ်ပႂ်ႉႁပ်ႉၵႃႈၶၼ် ဝၼ်းမိူဝ်ႈၼႃႈ။
* **resolve/reject**: ပဵၼ်သဵၼ်ႈတၢင်း 2 ဢၼ် (ဢွင်ႇ/ၽိတ်း)။
* **then/catch**: ပဵၼ်လၢႆးႁပ်ႉဢဝ် ၽွၼ်းလႅတ်း ႁႂ်ႈသိုဝ်ႈသႅၼ်ႈ။

---