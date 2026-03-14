## Lesson 27: Keyframe Animations

သင်ဝႃႈ Transitions ပဵၼ်ၵၢၼ်လႅၵ်ႈလၢႆႈလုၵ်ႉတီႈ A ၵႂႃႇၸူး B ၼႆ၊ Animations သမ်ႉၸွႆႈႁႂ်ႈႁဝ်းသင်ႇလႆႈဝႃႈ ၼႂ်းၵႄႈ A တင်း B ၼၼ်ႉ ႁႂ်ႈမၼ်းႁဵတ်းသင်ပႃးထႅင်ႈၶႃႈ။

### 1. ၵၢၼ်မၵ်းမၼ်ႈ @keyframes

ႁဝ်းလူဝ်ႇတႄႇလူၺ်ႈၵၢၼ်ပၼ် "ၸိုဝ်ႈ" Animation ႁဝ်း သေမၵ်းမၼ်ႈဝႃႈ ၼႂ်း (%) ၶွင်ၶၢဝ်းယၢမ်းၼၼ်ႉ ႁႂ်ႈမၼ်းပဵၼ်ၸိူင်ႉႁိုဝ်:

```css
@keyframes bounce {
  0%   { transform: translateY(0); }      /* တႄႇတီႈၵဝ်ႇ */
  50%  { transform: translateY(-20px); } /* ၵႄႈၵၢင် ႁႂ်ႈမၼ်းၵျွၵ်းၶိုၼ်ႈ */
  100% { transform: translateY(0); }      /* သုတ်းတီႈၵဝ်ႇ */
}

```

---

### 2. ၵၢၼ်ပိုတ်ႇၸႂ်ႉ (Animation Properties)

မိူဝ်ႈႁဝ်းမီး @keyframes ယဝ်ႉ၊ ႁဝ်းလူဝ်ႇဢဝ်မႃးသႂ်ႇတီႈ Element ဢၼ်ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းတူင်ႉၼၼ်ႉၶႃႈ:

* **animation-name:** ၸိုဝ်ႈဢၼ်ႁဝ်းပၼ်ဝႆႉ (တူဝ်ယၢင်ႇ: `bounce`)။
* **animation-duration:** ၶႂ်ႈႁႂ်ႈယၢဝ်းၵေႇႁိုဝ် (တူဝ်ယၢင်ႇ: `2s`)။
* **animation-iteration-count:** ၶႂ်ႈႁႂ်ႈမၼ်းတူင်ႉၵေႇႁိုဝ်ပွၵ်ႈ (`3`, `infinite` တႃႇႁႂ်ႈတူင်ႉတေႃႇၸူဝ်ႈ)။

**တူဝ်ယၢင်ႇ Code:**

```css
.welcome-text {
  animation-name: bounce;
  animation-duration: 2s;
  animation-iteration-count: infinite; /* ႁႂ်ႈမၼ်းၵျွၵ်းယူႇတေႃႇၸူဝ်ႈ */
}

```

---

### 3. လၢႆးတႅမ်ႈပွတ်း (Shorthand)

```css
/* ၸိုဝ်ႈ | ၶၢဝ်းယၢမ်း | ပိူင်တူင်ႉ | ႁူဝ်ၼပ်ႉပွၵ်ႈ */
animation: bounce 2s ease-in-out infinite;

```

---

### 4. တူဝ်ယၢင်ႇတႃႇဝႅပ်ႉသၢႆႉတႆး

ႁဝ်းၸၢင်ႈႁဵတ်းႁႂ်ႈလိၵ်ႈ "မႂ်ႇသုင်" ႁဝ်း ၵွႆႈၵွႆႈလႅင်းဢွၵ်ႇမႃး (Fade In):

```css
@keyframes fadeIn {
  from { opacity: 0; }
  to   { opacity: 1; }
}

.title {
  animation: fadeIn 3s ease-in;
}

```

---

### ၶေႃႈၵိုတ်းယတ်း (Summary)

* **@keyframes:** ၸႂ်ႉတႅမ်ႈ "ပိုတ်ႇ" (Script) ၶွင်ၵၢၼ်တူင်ႉၼိုင်။
* **0% to 100%:** ၸွႆႈႁႂ်ႈႁဝ်းမၵ်းမၼ်ႈလႆႈလၢႆၸၼ်ႉ (မၼ်းလႅတ်းလိူဝ် Transition)။
* **Infinite:** ၸႂ်ႉတွၼ်ႈတႃႇႁဵတ်း Loading icons ဢမ်ႇၼၼ် ႁၢင်ႈၾၢင်ဢၼ်တူင်ႉၼိုင်ယူႇတေႃႇၸူဝ်ႈ။

---