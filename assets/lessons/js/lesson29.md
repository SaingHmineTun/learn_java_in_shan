# Lesson 29: Adding/Removing Elements

ၼႂ်း JavaScript မီး Method ပိုၼ်ႉထၢၼ် 4 ဢၼ် ဢၼ်ႁဝ်းတေလႆႈၸႂ်ႉၵႆလိူဝ်ပိူၼ်ႈ တႃႇၸတ်းၵၢၼ်တင်း ႁူဝ် (Front) လႄႈ ႁၢင် (End) ၶွင် Array ၶႃႈ။

### 1. ၵၢၼ်ၸတ်းၵၢၼ်တီႈ "ႁၢင်" (The End)

လၢႆးၼႆႉပဵၼ်ဢၼ်ၽႂ်းသုတ်း လႄႈ ၵႆႉၸႂ်ႉသုတ်းၶႃႈ။

* **`push()`**: ထႅမ်ၶေႃႈမုၼ်းသႂ်ႇ **ၽၢႆႇလင်သုတ်း** ၶွင် Array။
* **`pop()`**: ထွၼ်ဢဝ်ၶေႃႈမုၼ်း **တူဝ်လင်သုတ်း** ဢွၵ်ႇပႅတ်ႈ (သေမၼ်းတေသူင်ႇ Return ၵႃႈၶၼ်ဢၼ်ထွၼ်ဢွၵ်ႇၼၼ်ႉမႃးပၼ်ႁဝ်းၶႃႈ)။

```javascript
let sports = ["Football", "Tennis"];

sports.push("Basketball"); 
// ["Football", "Tennis", "Basketball"]

let removedSport = sports.pop(); 
// sports ပဵၼ် ["Football", "Tennis"]
// removedSport ပဵၼ် "Basketball"

```

---

### 2. ၵၢၼ်ၸတ်းၵၢၼ်တီႈ "ႁူဝ်" (The Front)

လၢႆးၼႆႉတေၸႂ်ႉၶိင်ႇၼမ်လိူဝ်ဢိတ်းၼိုင်ႈ ယွၼ်ႉ JavaScript တေလႆႈ "ၶၢႆႉ" (Re-index) ၶေႃႈမုၼ်းတူဝ်တၢင်ႇၸိူဝ်းၵႂႃႇၽၢႆႇလင်ၶႃႈ။

* **`unshift()`**: ထႅမ်ၶေႃႈမုၼ်းသႂ်ႇ **ၽၢႆႇၼႃႈသုတ်း**။
* **`shift()`**: ထွၼ်ဢဝ်ၶေႃႈမုၼ်း **တူဝ်ၼႃႈသုတ်း** ဢွၵ်ႇပႅတ်ႈ။

```javascript
let cats = ["Persian", "Siamese"];

cats.unshift("Maine Coon");
// ["Maine Coon", "Persian", "Siamese"]

cats.shift();
// ["Persian", "Siamese"]

```

---

### 💡 တွၼ်းငၢႆႈငၢႆႈ (Memory Aid)

တႃႇႁႂ်ႈဢမ်ႇလူင်ၵၼ် ႁႂ်ႈတွၼ်းဝႆႉၼႆၶႃႈ:

* **Push & Pop**: ၸတ်းၵၢၼ်တီႈ **End** (ႁၢင်)။
* **Unshift & Shift**: ၸတ်းၵၢၼ်တီႈ **Start** (ႁူဝ်)။
* **Pop & Shift**: ပဵၼ်ၵၢၼ် **Remove** (ထွၼ်ဢွၵ်ႇ) — သွင်တူဝ်ၼႆႉၸိုဝ်ႈမၼ်း "ပွတ်း" လိူဝ်။
* **Push & Unshift**: ပဵၼ်ၵၢၼ် **Add** (ထႅမ်သႂ်ႇ) — သွင်တူဝ်ၼႆႉၸိုဝ်ႈမၼ်း "ယၢဝ်း" လိူဝ်။

---

### 💻 တူဝ်ယၢင်ႇပွင်း (Combined Example)

```javascript
const todoList = ["Eat", "Sleep"];

todoList.push("Code");      // ["Eat", "Sleep", "Code"]
todoList.unshift("Pray");   // ["Pray", "Eat", "Sleep", "Code"]
todoList.pop();             // ["Pray", "Eat", "Sleep"]
todoList.shift();           // ["Eat", "Sleep"]

console.log(todoList);      // ["Eat", "Sleep"]

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **`push`** လႄႈ **`pop`** ႁဵတ်းၵၢၼ်ၽႂ်းလိူဝ် (Faster) ယွၼ်ႉဢမ်ႇလူဝ်ႇလႅၵ်ႈလၢႆႈ Index တူဝ်တၢင်ႇၸိူဝ်း။
* Method တင်း 4 ဢၼ်ၼႆႉ တေ **လႅၵ်ႈလၢႆႈ (Mutate)** Array တူဝ်တေႉမၼ်းၵမ်းလဵဝ်ၶႃႈ။

---