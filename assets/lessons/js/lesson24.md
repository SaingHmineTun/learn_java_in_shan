
# Lesson 24: Scope Chain & Lexical Environment

### 1. Lexical Environment (ဢွင်ႈတီႈပိုၼ်ေၽၢဝ်ႇ)

ၼႂ်း JavaScript၊ "Lexical" ပွင်ႇဝႃႈ **"ဢွင်ႈတီႈဢၼ်တႅမ်ႈဝႆႉ"** ၶႃႈ။
**Lexical Environment** ၵေႃႈပဵၼ် "ထူင်ၶေႃႈမုၼ်း" ဢၼ်သိမ်းဝႆႉ Variable လႄႈ Function ဢၼ်မီးယူႇၼႂ်းတွၼ်ႈၵူတ်ႉၼၼ်ႉၶႃႈ။ မၼ်းတေတႅပ်းတတ်းၸွမ်း **ဢွင်ႈတီႈဢၼ်ၸဝ်ႈၵဝ်ႇတႅမ်ႈၵူတ်ႉဝႆႉ** (ဢမ်ႇၸႂ်ႈတီႈဢၼ်ႁွင်ႉၸႂ်ႉ) ၶႃႈ။

### 2. The Scope Chain (ၵၢၼ်ၸွပ်ႇႁႃ Variable)

မိူဝ်ႈ JavaScript ႁႃ Variable ၼိုင်ႈဢၼ်:

1. မၼ်းတေတႄႇႁႃတီႈ **Current Scope** (Scope ဢၼ်မၼ်းတိုၵ်ႉယူႇဝႆႉ) ၼၼ်ႉဢွၼ်တၢင်း။
2. သင်ဢမ်ႇႁၼ်၊ မၼ်းတေ **"တႆႇၶိုၼ်ႈ (Look up)"** ၵႂႃႇႁႃတီႈ Parent Scope (Scope ၽၢႆႇၼိူဝ်မၼ်း) တိၵ်းတိၵ်း။
3. လွင်ႈတႆႇၶိုၼ်ႈၼႆႉ တေၵႂႃႇသုတ်းတီႈ **Global Scope** ၶႃႈ။

လွင်ႈတႆႇၶိုၼ်ႈသိုပ်ႇၵၼ်ၼႆႉ ႁဝ်းႁွင်ႉဝႃႈ **Scope Chain** ၶႃႈ။

---

### 💻 တူဝ်ယၢင်ႇ (Code Example)

```javascript
const userName = "Sai Kham"; // Global Scope

function first() {
  const age = 25; // Local to first()

  function second() {
    const job = "Developer"; // Local to second()

    // Scope Chain တေႁဵတ်းၵၢၼ်ၼႆႉ:
    console.log(job);      // ✅ ႁၼ် (ယူႇၼႂ်း Scope မၼ်းၵမ်းလဵဝ်)
    console.log(age);      // ✅ ႁၼ် (တႆႇၶိုၼ်ႈၵႂႃႇႁႃတီႈ first)
    console.log(userName); // ✅ ႁၼ် (တႆႇၶိုၼ်ႈၵႂႃႇႁႃတီႈ Global)
  }

  second();
}

first();

```

> ⚠️ **လွင်ႈလမ်ႇလွင်ႈ:** Scope Chain မၼ်းတေတႆႇၶိုၼ်ႈ **"ၽၢႆႇလဵဝ်"** ၵူၺ်း။ Parent Scope တေဢမ်ႇၸၢင်ႈ "တႆႇလူင်း" မႃးဢဝ် Variable တီႈ Child Scope လႆႈၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Lexical Environment** ပွင်ႇဝႃႈ Scope မၼ်းထုၵ်ႇတႅပ်းတတ်း ၸွမ်းၼင်ႇဢွင်ႈတီႈဢၼ်ႁဝ်း "တႅမ်ႈ" ၵူတ်ႉဝႆႉ။
* **Scope Chain** ပဵၼ်လၢႆးႁႃ Variable ဢၼ်တႆႇၶိုၼ်ႈၸွမ်းၸၼ်ႉ Parent Scope။
* Variable ဢၼ်ယူႇၼႃႈၼိူဝ် ၸၢင်ႈထုၵ်ႇႁွင်ႉၸႂ်ႉလႆႈတီႈၼႃႈတႂ်ႈ၊ ၵူၺ်းၵႃႈ Variable တီႈၼႃႈတႂ်ႈ တေ "လပ်ႉ" ဝႆႉတႃႇၼႃႈၼိူဝ် (Hidden from outer scope)။

---
