
# Lesson 55: The Event Loop in Depth

သင်ၸဝ်ႈၵဝ်ႇပွင်ႇၸႂ်လွင်ႈ **Event Loop**၊ ၸဝ်ႈၵဝ်ႇတေပွင်ႇၸႂ် JavaScript တင်းမူတ်းၶႃႈ။ မၼ်းမီးၼႃႈတီႈလဵဝ်ၵူၺ်း: **"တူၺ်း Call Stack လႄႈ တူၺ်း Queues"** ၶႃႈ။

### 1. ၵၢၼ်ႁဵတ်းၵၢၼ်ၶွင် Event Loop

Event Loop မၼ်းတေႁဵတ်းၵၢၼ်သမ်ႉၵၼ် (Loop) ၸွမ်းၼင်ႇပၵ်းပိူင်ၼႆႉၶႃႈ:

1. **Check Stack:** တူၺ်းဝႃႈၼႂ်း **Call Stack** မီးၵူတ်ႉ (Synchronous code) တိုၵ်ႉလႅၼ်ႈယူႇႁႃႉ? သင်မီး၊ ႁႂ်ႈမၼ်းလႅၼ်ႈႁႂ်ႈယဝ်ႉ။
2. **Microtask Queue:** ပေႃး Stack ပလွၵ်ႇ (Empty) ယဝ်ႉ၊ မၼ်းတေၵႂႃႇၸၼ်ဢဝ်ၵူတ်ႉၼႂ်း **Microtask Queue** (မိူၼ်ၼင်ႇ Promises) မႃးႁဵတ်းႁႂ်ႈယဝ်ႉ "တင်းမူတ်း"။
3. **Render:** သင်မီးၵၢၼ်လႅၵ်ႈလၢႆႈၼိူဝ်ၼႃႈจอ (UI Update)၊ Browser တေလႅၵ်ႈလၢႆႈၼႃႈจอယၢမ်းၼႆႉ။
4. **Task Queue:** ဝၢႆးသုတ်း၊ မၼ်းတေၸၼ်ဢဝ်ၵူတ်ႉ "မၢႆ 1" (ၼိုင်ႈတူဝ်ၵူၺ်း) ၼႂ်း **Task Queue** (မိူၼ်ၼင်ႇ `setTimeout`) ၶိုၼ်ႈၵႂႃႇႁဵတ်းၼႂ်း Stack ၶႃႈ။

---

### 2. ယွၼ်ႉသင် Event Loop ၸင်ႇလမ်ႇလွင်ႈ?

သင်ဝႃႈ JavaScript ဢမ်ႇမီး Event Loop၊ မိူဝ်ႈႁဝ်းလူတ်ႇၶေႃႈမုၼ်း (Fetch API) ဢၼ်ၵိၼ်ၶိင်ႇ 5 သိၵ်ႉ၊ ၼႃႈ Website ႁဝ်းတေ "ၶၢင်း" (Freeze) သေ ၵူၼ်းၸႂ်ႉတေၼဵၵ်း Button သင်ၵေႃႈဢမ်ႇလႆႈ 5 သိၵ်ႉၼၼ်ႉၶႃႈ။

လူၺ်ႈ Event Loop:

* JavaScript သူင်ႇၵၢၼ်ပၼ် Web APIs ႁဵတ်း။
* JavaScript သိုပ်ႇႁဵတ်းၵၢၼ်တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ Scrolling, Clicking)။
* ပေႃး Web APIs ႁဵတ်းယဝ်ႉ၊ မၼ်းၸင်ႇသူင်ႇ Result မႃးပႂ်ႉဝႆႉၼႂ်း Queue တႃႇႁႂ်ႈ Event Loop ၸၼ်ၶဝ်ႈမႃးၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Mental Model Test)

ဝူၼ်ႉၸွမ်းတူၺ်းၶႃႈ၊ ၵူတ်ႉၼႆႉတေဢွၵ်ႇမႃးၼင်ႇႁိုဝ်?

```javascript
console.log("A");

setTimeout(() => console.log("B"), 0);

Promise.resolve().then(() => console.log("C"));

console.log("D");

```

**လၢႆးႁဵတ်းၵၢၼ်:**

1. **A** လႄႈ **D** ၶဝ်ႈ Stack သေလႅၼ်ႈဢွၵ်ႇၵမ်းလဵဝ် (Synchronous)။
2. **C** ၶဝ်ႈ Microtask Queue (Promise)။
3. **B** ၶဝ်ႈ Task Queue (setTimeout)။
4. Event Loop တူၺ်း Stack ပလွၵ်ႇယဝ်ႉ၊ ၸၼ် **C** မႃးႁဵတ်း။
5. ဝၢႆးသုတ်း ၸၼ် **B** မႃးႁဵတ်း။
   **Result: A -> D -> C -> B**

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Don't Block the Event Loop:** ဢမ်ႇလီတႅမ်ႈၵူတ်ႉဢၼ်ၼပ်ႉသွၼ်ႇ (Calculation) ၼမ်ၼႃႇဢၼ်ၵိၼ်ၶိင်ႇယၢဝ်းၼႂ်း Stack၊ ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈ Event Loop ဢမ်ႇၵႂႃႇၸၼ်ဢဝ် Task တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ UI Click) မႃးႁဵတ်းလႆႈ။
* **Priority:** Microtasks (Promises) > Tasks (setTimeout)။

---
