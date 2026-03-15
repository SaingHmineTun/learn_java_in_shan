# Lesson 54: The Call Stack & Microtask Queue

တွၼ်ႈတႃႇတေပွင်ႇၸႂ်လွင်ႈ Async JS ၼၼ်ႉ ၸဝ်ႈၵဝ်ႇလူဝ်ႇႁူႉဝႃႈ JavaScript ႁဵတ်းၵၢၼ် "ၽၢႆႇလင်" (Behind the scenes) ၼင်ႇႁိုဝ်ဢွၼ်တၢင်းၶႃႈ။

### 1. Call Stack (ၵၢၼ်ႁဵတ်းၵၢၼ်ၸွမ်းထႅဝ်)

JavaScript ပဵၼ် **Single-threaded** language၊ မၼ်းပွင်ႇဝႃႈ မၼ်းႁဵတ်းၵၢၼ်လႆႈ "ၼိုင်ႈလွင်ႈ" ၼႂ်းၼိုင်ႈၶိင်ႇၵူၺ်း။ **Call Stack** ပဵၼ်တီႈဢၼ် JavaScript သိမ်းဝႆႉဝႃႈ ယၢမ်းလဵဝ်မၼ်းတိုၵ်ႉႁဵတ်း Function ဢၼ်လႂ်ယူႇ။

* မၼ်းၸႂ်ႉပိူင် **LIFO** (Last In, First Out) — တူဝ်ၶဝ်ႈဝၢႆးသုတ်း တေဢွၵ်ႇၵႂႃႇဢွၼ်တၢင်းသုတ်းၶႃႈ။

### 2. Web APIs & Task Queues

မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉၵၢၼ်ဢၼ် "ၵိၼ်ၶိင်ႇ" (မိူၼ်ၼင်ႇ `setTimeout` ႁိုဝ် `fetch`), JavaScript တေဢမ်ႇၵိုတ်းပႂ်ႉ။ မၼ်းတေသူင်ႇၵၢၼ်ၼၼ်ႉပၼ် **Web APIs** (ၼႂ်း Browser) ႁဵတ်းပၼ်သေ၊ ပေႃးယဝ်ႉယဝ်ႉ ၸင်ႇၵွႆႈသူင်ႇ Callback မႃးဝႆႉၼႂ်း Queue (ထႅဝ်ပႂ်ႉ) ၶႃႈ။

### 3. Microtask Queue vs. Task Queue

တွၼ်ႈၼႆႉလမ်ႇလွင်ႈၼႃႇၶႃႈ! ၼႂ်း JavaScript မီးထႅဝ်ပႂ်ႉ 2 မဵဝ်း:

1. **Microtask Queue:** ဝႆႉတႃႇ **Promises** (`.then`)။ ၼႆႉမီး "ဢႃႇမ်းၼၢတ်ႈ" (Priority) သုင်လိူဝ်။
2. **Task Queue (Callback Queue):** ဝႆႉတႃႇ `setTimeout`, `setInterval` လႄႈ DOM Events ၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Code Execution Order)

ၸဝ်ႈၵဝ်ႇထၢင်ႇဝႃႈ ၵူတ်ႉတွၼ်ႈၼႆႉ တေဢွၵ်ႇမႃးလမ်ႇတတ်းၼင်ႇႁိုဝ်ၶႃႈ?

```javascript
console.log("1. Start");

setTimeout(() => {
  console.log("2. Timeout (Task)");
}, 0);

Promise.resolve().then(() => {
  console.log("3. Promise (Microtask)");
});

console.log("4. End");

```

**ၽົນလႆႈ (Result):**

1. `1. Start` (Synchronous - ၶဝ်ႈ Stack ၵမ်းလဵဝ်)
2. `4. End` (Synchronous - ၶဝ်ႈ Stack ၵမ်းလဵဝ်)
3. `3. Promise (Microtask)` (Microtask Queue - မီး Priority သုင်လိူဝ် Task)
4. `2. Timeout (Task)` (Task Queue - ပႂ်ႉဝၢႆးသုတ်း)

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Call Stack** တေလႆႈ "ပလွၵ်ႇ" (Empty) ဢွၼ်တၢင်း၊ ၸင်ႇတေဢဝ်ၶေႃႈမုၼ်းၼႂ်း Queue မႃးႁဵတ်းလႆႈ။
* **Microtasks (Promises)** တေလႆႈႁဵတ်းၵၢၼ် "ဢွၼ်တၢင်း" **Tasks (setTimeout)** တႃႇသေႇၶႃႈ။
* ၼႆႉပဵၼ်ယွၼ်ႉသင် JavaScript ၸင်ႇႁဵတ်းၵၢၼ် Async လႆႈ လူၺ်ႈဢမ်ႇပိတ်း (Block) သၢႆၵၢၼ်ႁဵတ်းၵၢၼ်ငဝ်ႈတိုၼ်း (Main Thread) ၶႃႈ။

---
