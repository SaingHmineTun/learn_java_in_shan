
# Lesson 75: Package Managers

### 1. Package Manager ပဵၼ်သင်?

**Package Manager** ပဵၼ် Tool ဢၼ်ၸွႆႈႁဝ်း ၸတ်းၵၢၼ် (Install, Update, Remove) Library ဢၼ်ၵူၼ်းတၢင်ႇၵေႃႉတႅမ်ႈဝႆႉ (Third-party code) ၶဝ်ႈမႃးၼႂ်း Project ႁဝ်းၶႃႈ။

* **NPM (Node Package Manager):** ပဵၼ်တူဝ်ဢၼ်ၵႆႉၸႂ်ႉၼမ်သုတ်း လႄႈ ၸပ်းမႃးၸွမ်းမိူဝ်ႈႁဝ်း Install Node.js။
* **Yarn:** ပဵၼ်တူဝ်ဢၼ် Facebook သၢင်ႈမႃး၊ မၼ်းၽႂ်းလိူဝ် လႄႈ မီးလွင်ႈပူတ်ႉၽေး (Security) လိူဝ် NPM ဢိတ်းၼိုင်ႈ (ၵူၺ်းၵႃႈ ယၢမ်းလဵဝ် NPM ၵေႃႈၵတ်ႉၶႅၼ်ႇမႃးယဝ်ႉၶႃႈ)။

---

### 2. File လမ်ႇလွင်ႈ: `package.json`

မိူဝ်ႈႁဝ်းတႄႇ Project မႂ်ႇလူၺ်ႈ `npm init`၊ မၼ်းတေၵိူတ်ႇ File ၼႆႉမႃး။ မၼ်းပဵၼ် "သဵၼ်ႈမၢႆ" (Manifest) ဢၼ်မွၵ်ႇဝႃႈ Project ႁဝ်းမီးသင်ဝႆႉ:

* **Dependencies:** သဵၼ်ႈမၢႆ Library ဢၼ်ႁဝ်းလူဝ်ႇၸႂ်ႉ (မိူၼ်ၼင်ႇ `react`, `lodash`)။
* **Scripts:** ၶေႃႈသင်ႇတႃႇလႅၼ်ႈ (Run) Project (မိူၼ်ၼင်ႇ `npm start`, `npm build`)။

---

### 3. Node_modules & Package-lock.json

* **`node_modules/`**: ပဵၼ် Folder ဢၼ်သိမ်း "ၵူတ်ႉတေႉတေႉ" ဢၼ်ႁဝ်း Download မႃး။ ( Folder ၼႆႉတေယႂ်ႇၼႃႇ၊ ႁဝ်းတေဢမ်ႇ Upload ၶိုၼ်ႈ GitHub ၶႃႈ)။
* **`package-lock.json`**: ပဵၼ် File ဢၼ် "လွၵ်ႉ" (Lock) Version ၶွင် Library ဝႆႉ ႁႂ်ႈၵူၼ်းၵူႈၵေႃႉၼႂ်း Team လႆႈ Version လဵဝ်ၵၼ်တႃႇသေႇၶႃႈ။

---

### 💻 ၶေႃႈသင်ႇ (Commands) ဢၼ်ၸႂ်ႉၼမ်

| Action | NPM Command | Yarn Command |
| --- | --- | --- |
| **Initialize Project** | `npm init -y` | `yarn init -y` |
| **Install Library** | `npm install <name>` | `yarn add <name>` |
| **Install Dev-Only** | `npm install <name> -D` | `yarn add <name> --dev` |
| **Remove Library** | `npm uninstall <name>` | `yarn remove <name>` |
| **Run Scripts** | `npm run <script-name>` | `yarn <script-name>` |

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **Semantic Versioning (SemVer):** Version ၵႆႉမီး 3 တူဝ် မိူၼ်ၼင်ႇ `1.2.3` (Major.Minor.Patch)။
* **`.gitignore`**: ယႃႇလိုမ်းသႂ်ႇ `node_modules` ဝႆႉၼႂ်း File ၼႆႉ ဢွၼ်တၢင်းတေ Push ၶိုၼ်ႈ GitHub ၶႃႈ။
* **Security:** ၸႂ်ႉ `npm audit` တွၼ်ႈတႃႇၵူတ်ႇထတ်းဝႃႈ Library ဢၼ်ႁဝ်းၸႂ်ႉၼၼ်ႉ မီးႁူးႁူဝ်ႉ (Vulnerabilities) ႁႃႉၶႃႈ။

---