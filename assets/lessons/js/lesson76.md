
# Lesson 76: Modern Build Tools (Vite)

### 1. Build Tool ပဵၼ်သင်?

ဝူၼ်ႉတူၺ်းဝႃႈ ၸဝ်ႈၵဝ်ႇမီး File ၼမ်ၼႃႇ (JS, CSS, Images, Modules)။ Build Tool ပဵၼ် "ၸၢၵ်ႈၵၢၼ်ငၢၼ်း" ဢၼ်တေမႃး:

* **Bundle:** ႁူမ်ႈ File လၢႆလၢႆဢၼ် ႁႂ်ႈပဵၼ် File ဢေႇဢေႇ တႃႇ Browser တေလူတ်ႇၽႂ်း။
* **Transpile:** ပိၼ်ႇၵူတ်ႉ JS ပၢၼ်မႂ်ႇ ႁႂ်ႈ Browser ပၢၼ်ၵဝ်ႇၵေႃႈလူလႆႈ။
* **Dev Server:** ပိုတ်ႇ Website ၸဝ်ႈၵဝ်ႇၼိူဝ် Localhost သေ ပႂ်ႉၵူတ်ႇထတ်းၵၢၼ်လႅၵ်ႈလၢႆႈ (Hot Module Replacement)။

### 2. ယွၼ်ႉသင်လူဝ်ႇၸႂ်ႉ Vite?

မိူဝ်ႈၵွၼ်ႇ ႁဝ်းၸႂ်ႉ **Webpack**၊ ၵူၺ်းၵႃႈ ပေႃး Project ယႂ်ႇမႃး Webpack တေႁဵတ်းၵၢၼ် "ဢืดႃႉ" (Slow) ၼႃႇ။

* **Instant Server Start:** Vite ၸႂ်ႉ Native ES Modules၊ မၼ်းဢမ်ႇလူဝ်ႇ Bundle ၵူႈယၢင်ႇဢွၼ်တၢင်းတေတႄႇ၊ ၵွပ်ႈၼၼ်မၼ်း "ပိုတ်ႇပၼ်ၵမ်းလဵဝ်" ၶႃႈ။
* **Lightning Fast HMR:** မိူဝ်ႈၸဝ်ႈၵဝ်ႇလႅၵ်ႈလၢႆႈၵူတ်ႉ၊ ၼႃႈ Browser တေလႅၵ်ႈၸွမ်းၽႂ်းၼႃႇ (မိူၼ်ၼင်ႇ ဢမ်ႇလႆႈ Refresh)။

### 3. လၢႆးတႄႇၸႂ်ႉ Vite (Setup)

ၸဝ်ႈၵဝ်ႇဢမ်ႇလူဝ်ႇ Install သင်ၼမ်၊ ၵူၺ်းလူဝ်ႇၸႂ်ႉ Command ၼႆႉၼႂ်း Terminal ၶႃႈ:

```bash
# တႄႇသၢင်ႈ Project မႂ်ႇ
npm create vite@latest my-app

# လိူၵ်ႈ Framework (Vanilla JS, React, Vue, etc.)
# သေယဝ်ႉ ၶဝ်ႈၵႂႃႇၼႂ်း Folder
cd my-app

# Install Dependencies
npm install

# ပိုတ်ႇ Dev Server
npm run dev

```

---

### 4. Structure ၶွင် Vite Project

မိူဝ်ႈပိုတ်ႇမႃး ၸဝ်ႈၵဝ်ႇတေႁၼ်:

* **`index.html`**: ယူႇတီႈ Root (ဢမ်ႇၸႂ်ႈၼႂ်း public)၊ မၼ်းပဵၼ် Entry point ၶႃႈ။
* **`main.js`**: တီႈၵွင်ႉ JS တင်းမူတ်း။
* **`vite.config.js`**: တီႈတင်ႈၵႃႈ (Settings) ၶွင် Vite။

---

### 5. Production Build

မိူဝ်ႈၸဝ်ႈၵဝ်ႇတႅမ်ႈ App ယဝ်ႉတူဝ်ႈသေ ၶႂ်ႈဢဝ်ၶိုၼ်ႈ Server တေႉတေႉ၊ တေလႆႈၸႂ်ႉ:

```bash
npm run build

```

Vite တေႁဵတ်းၵၢၼ် **Minify** (ႁဵတ်းႁႂ်ႈ File တူဝ်ဢွၼ်ႇသုတ်း) လႄႈ **Optimize** ႁႂ်ႈ Website ၸဝ်ႈၵဝ်ႇလႅၼ်ႈၽႂ်းသုတ်းယွတ်းၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Vite** ပဵၼ် Standard မႂ်ႇ ဢၼ် Developer တင်းၵမ်ၼမ်လႅၵ်ႈမႃးၸႂ်ႉတႅၼ်း Webpack ယဝ်ႉ။
* မၼ်းၸွႆႈႁႂ်ႈၵၢၼ်တႅမ်ႈၵူတ်ႉ (Developer Experience) မီးၵၢၼ်တူင်ႉၼိုင်ဢၼ် "သိူဝ်းၸႂ်" လႄႈ ဢမ်ႇလူဝ်ႇပႂ်ႉႁိုင်ၶႃႈ။

---
