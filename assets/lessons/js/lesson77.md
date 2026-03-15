# Lesson 77: Environment Variables (.env)

### 1. `.env` File ပဵၼ်သင်?

`.env` ပဵၼ် File လိၵ်ႈ (Text file) ဢွၼ်ႇဢၼ်ၼိုင်ႈ ဢၼ်ယူႇတီႈ Root (မႄႈငဝ်ႈ) ၶွင် Project ႁဝ်း။ မၼ်းမီးဝႆႉတွၼ်ႈတႃႇသိမ်း "ၵႃႈၶၼ်" (Values) ဢၼ်လႅၵ်ႈလၢႆႈၸွမ်း "ဝႅတ်ႉလွမ်ႉ" (Environment) ဢၼ်ႁဝ်းတိုၵ်ႉႁဵတ်းၵၢၼ်ယူႇၶႃႈ။

* **Development:** သိမ်း API URL တွၼ်ႈတႃႇၸၢမ်း (Test)။
* **Production:** သိမ်း API URL တေႉတေႉ တွၼ်ႈတႃႇၵူၼ်းၸႂ်ႉတူဝ်ႈၵႂႃႇ။

### 2. လၢႆးတႅမ်ႈၼႂ်း `.env`

ႁဝ်းတေတႅမ်ႈပဵၼ် `KEY=VALUE` ၶႃႈ။ သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ **Vite** (မိူၼ်ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼႂ်း Lesson 76)၊ ၸဝ်ႈၵဝ်ႇတေလႆႈတႅမ်ႈ `VITE_` ပႃးၽၢႆႇၼႃႈၵွၼ်ႇ ၸင်ႇတေဢဝ်ၵႂႃႇၸႂ်ႉၼႂ်း Frontend လႆႈၶႃႈ။

```text
# .env file
VITE_API_KEY=my_secret_key_12345
VITE_SERVER_URL=https://api.myapp.com

```

### 3. လၢႆးဢဝ်မႃးၸႂ်ႉၼႂ်း JavaScript

ၼႂ်း Vite၊ ႁဝ်းၸႂ်ႉ **`import.meta.env`** တွၼ်ႈတႃႇႁွင်ႉၸႂ်ႉ Variable ၸိူဝ်းၼၼ်ႉၶႃႈ။

```javascript
const apiKey = import.meta.env.VITE_API_KEY;
const apiUrl = import.meta.env.VITE_SERVER_URL;

console.log("Using API Key:", apiKey);

async function fetchData() {
  const response = await fetch(`${apiUrl}/data?key=${apiKey}`);
  // ...
}

```

---

### 4. လွင်ႈပူတ်ႉၽေး (Security Rules)

1. **`.gitignore`**: ၼႆႉပဵၼ်ၶေႃႈသင်ႇဢၼ်လမ်ႇလွင်ႈသုတ်း! ၸဝ်ႈၵဝ်ႇတေလႆႈထႅမ် `.env` ဝႆႉၼႂ်း File `.gitignore` တႃႇသေႇ တွၼ်ႈတႃႇႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈမၼ်းထုၵ်ႇ Upload ၶိုၼ်ႈ GitHub ၶႃႈ။
2. **`.env.example`**: တႅၼ်းၵၢၼ်တေသူင်ႇ File တေႉတေႉ၊ ႁဝ်းတေသူင်ႇ File "ပလွၵ်ႇ" ဢၼ်မီးၵူၺ်း Key (ဢမ်ႇမီး Value) ႁႂ်ႈပီႈၼွင်ႉၼႂ်း Team ႁူႉဝႃႈ ၶဝ်လူဝ်ႇသႂ်ႇ Key သင်ၽေႃႈၶႃႈ။

```text
# .env.example (This IS uploaded to GitHub)
VITE_API_KEY=your_key_here
VITE_SERVER_URL=https://api.example.com

```

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Environment Variables** ၸွႆႈႁႂ်ႈၵူတ်ႉႁဝ်း "ပူတ်ႉၽေး" လႄႈ "ယืดหยุ่น" (Flexible) လိူဝ်ၵဝ်ႇ။
* ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇလႅၵ်ႈၵူတ်ႉ (Source Code) ၵူႈပွၵ်ႈ မိူဝ်ႈလႅၵ်ႈ Server၊ ၵူၺ်းလူဝ်ႇလႅၵ်ႈ Values ၼႂ်း `.env` ၵူၺ်း။
* သတိ: Variable ဢၼ်မီး `VITE_` ပႃးၽၢႆႇၼႃႈၼၼ်ႉ ၵူၼ်းၵူႈၵေႃႉဢၼ်ပိုတ်ႇ Website ၸဝ်ႈၵဝ်ႇ တေၸၢင်ႈ "ႁၼ်" မၼ်းလႆႈၼႂ်း Browser Source။ ၵွပ်ႈၼၼ်၊ ယႃႇပေသိမ်း Private Key ဢၼ်လမ်ႇလွင်ႈသုတ်းယွတ်း (မိူၼ်ၼင်ႇ Database Password) ဝႆႉၼႂ်း Frontend ၶႃႈ။

---
