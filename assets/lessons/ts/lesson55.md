### **Lesson 55: The Event Loop (How TS handles Asynchronous tasks)**

မိူဝ်ႈႁဝ်းတႅမ်ႈၶူတ်ႉ TypeScript, မၼ်းတေလႅၼ်ႈၸွမ်းလမ်ႇၼပ်ႉ "ၼိူဝ်လူင်းတႂ်ႈ" ၶႃႈ။ ၵူၺ်းၵႃႈ သင်မီး Task ဢၼ်ၵိၼ်ယၢမ်းၼမ် (ၼင်ႇ ၵၢၼ်လူတ်ႇၶေႃႈမုၼ်းတီႈ Internet)၊ မၼ်းတေဢမ်ႇၵိုတ်း (Block) ဝႆႉၶႃႈ။ မၼ်းတေၸႂ်ႉ **Event Loop** တႃႇၸတ်းၵၢၼ်ၶႃႈဢေႃႈ။

#### **1. The Call Stack (ၵၢၼ်ႁဵတ်းၵၢၼ်ယၢမ်းလဵဝ်)**
ၼႆႉပဵၼ် "တီႈႁဵတ်းၵၢၼ်" ၶွင် TypeScript ၶႃႈ။ မၼ်းၸႂ်ႉပိူင် **LIFO** (Last In, First Out)။
* မိူဝ်ႈႁဝ်းႁွင်ႉ Function, မၼ်းတေ "Push" ၶဝ်ႈၵႂႃႇၼႂ်း Stack။
* မိူဝ်ႈ Function ၼၼ်ႉယဝ်ႉယဝ်ႉ, မၼ်းတေ "Pop" ဢွၵ်ႇမႃးၶႃႈ။



---

#### **2. Web APIs (တီႈပိုင်ႈဢိင်ၽၢႆႇၼွၵ်ႈ)**
မိူဝ်ႈႁဝ်းၸႂ်ႉ Function ဢၼ်ပဵၼ် Async ၼင်ႇ `setTimeout`, `fetch`, ဢမ်ႇၼၼ် `DOM Events`, TypeScript တေဢမ်ႇႁဵတ်းၵၢၼ်ၼႂ်း Call Stack ၶႃႈ။ မၼ်းတေသူင်ႇ Task ၼၼ်ႉၵႂႃႇပၼ် **Web APIs** (ၼႂ်း Browser) ဢမ်ႇၼၼ် **Node APIs** (ၼႂ်း Server) ႁႂ်ႈႁဵတ်းၵၢၼ်ပၼ်ဝႆႉၼႂ်း Background ၶႃႈဢေႃႈ။

---

#### **3. The Callback Queue & Microtask Queue**
မိူဝ်ႈ Task ၼႂ်း API ၼၼ်ႉယဝ်ႉယဝ်ႉ (ၼင်ႇ Timer ၼပ်ႉယဝ်ႉ), မၼ်းတေဢမ်ႇလႅၼ်ႈၶဝ်ႈ Stack ၵမ်းလဵဝ်ၶႃႈ။ မၼ်းတေၵႂႃႇထႃႉဝႆႉၼႂ်း "သႅဝ်း" (Queue):
* **Microtask Queue:** (လွင်ႈယႂ်ႇသုတ်း!) ဝႆႉတွၼ်ႈတႃႇ **Promises** (`.then`, `async/await`)။ တွၼ်ႈၼႆႉတေလႅၼ်ႈဢွၼ်တၢင်း Task တၢင်ႇၸိူဝ်းၶႃႈ။
* **Callback Queue (Task Queue):** ဝႆႉတွၼ်ႈတႃႇ `setTimeout`, `setInterval` ၶႃႈ။

---

#### **4. The Event Loop (တူဝ်ပၼ်ႇၵၢၼ်)**
ၼႆႉပဵၼ် "ၵူၼ်းၸတ်းၵၢၼ်" ဢၼ်တူၺ်းယူႇတႃႇသေႇၶႃႈ:
1. မၼ်းတေၸႅတ်းထတ်းဝႃႈ **Call Stack ပဝ်ႇ (Empty) ႁႃႉ?**
2. သင် Stack ပဝ်ႇယဝ်ႉ, မၼ်းတေၵႂႃႇဢဝ် Task တီႈ **Microtask Queue** ၶဝ်ႈမႃးလႅၼ်ႈဢွၼ်တၢင်း။
3. ဝၢႆးၼၼ်ႉ ၸင်ႇတေၵႂႃႇဢဝ် Task တီႈ **Callback Queue** ၶဝ်ႈမႃးၶႃႈ။



---

#### **💡 Summary Checklist**
- [ ] ႁူႉဝႃႈ **Single-threaded** မၢႆထိုင် ႁဵတ်းၵၢၼ်လႆႈ "တူဝ်လဵဝ်" ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ်။
- [ ] ပွင်ႇၸႂ်ဝႃႈ **Event Loop** ၸွႆးႁႂ်ႈ App ႁဝ်းဢမ်ႇ "ၵိုတ်း" (Non-blocking)။
- [ ] ႁူႉဝႃႈ **Microtask Queue** (Promises) မီးဢၢမ်းၼၢတ်ႈ (Priority) သုင်လိူဝ် Callback Queue။
- [ ] ၼႄႇၸႂ်ဝႃႈ ၸဝ်ႈၵဝ်ႇဢမ်ႇတႅမ်ႈ Heavy Logic ၼႂ်း Call Stack ယွၼ်ႉမၼ်းတေႁဵတ်းႁႂ်ႈ UI ၵိုတ်း (Freeze)။

---