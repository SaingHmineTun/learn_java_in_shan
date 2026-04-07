# Lesson 41: "Final Review & Postman Production Testing"

မိူဝ်ႈႁဝ်းဢဝ် App ဝႆႉၼိူဝ် Cloud (Render/Railway) ယဝ်ႉယဝ်ႉၼၼ်ႉ ႁဝ်းဢမ်ႇၸႂ်ႉ `localhost` ထႅင်ႈယဝ်ႉ။
ႁဝ်းလူဝ်ႇလႆႈၸၢမ်းတူၺ်းဝႃႈ API ႁဝ်းလၢတ်ႈတေႃႇတင်း Database ၼိူဝ် Cloud လႆႈလီယူႇႁႃႉ ဢွၼ်တၢင်းတေဢဝ်ၵႂႃႇၸႂ်ႉၼႂ်း Mobile App ၶႃႈ။

### 1. ၵၢၼ်တင်ႈ Environment ၼႂ်း Postman
တွၼ်ႈတႃႇယႃႇႁႂ်ႈလႆႈတႅမ်ႈ URL ယၢဝ်းယၢဝ်းၵူႈပွၵ်ႈၼၼ်ႉ ႁဝ်းၸၢင်ႈသၢင်ႈ **Environment Variable** ၼႂ်း Postman ၶႃႈ:
* **Variable Name:** `base_url`
* **Initial Value:** `https://taiglish-api.onrender.com` (URL ဢၼ်ႁဝ်းလႆႈမႃး)



---

### 2. ၵၢၼ်ၸၢမ်း Full CRUD (Production Test)
ႁဝ်းၸၢမ်းႁဵတ်းၸွမ်း 4 တွၼ်ႈၼႆႉၶႃႈ:

1.  **GET (Read All):** ၸၢမ်းႁွင်ႉ `{{base_url}}/api/words`။ မၼ်းလူဝ်ႇတွပ်ႇပၼ် JSON List ၶွင်လိၵ်ႈတႆး ဢၼ်မီးၼႂ်း Aiven MySQL ၶႃႈ။
2.  **POST (Create):** သူင်ႇ JSON ၶေႃႈၵႂၢမ်းမႂ်ႇၵႂႃႇၸၢမ်းတူၺ်း။ သင်မၼ်းတွပ်ႇ Status `201 Created` မႃး မၢႆထိုင်ဝႃႈ App ၼိူဝ် Cloud ၵွင်ႉၸူး DB လႆႈလီၶႃႈ။
3.  **PUT (Update):** ၸၢမ်းမႄးလိၵ်ႈတႆးၶေႃႈၼိုင်ႈ။
4.  **DELETE (Remove):** ၸၢမ်းလူတ်းပႅတ်ႈၶေႃႈၵႂၢမ်း ဢၼ်ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉယဝ်ႉၼၼ်ႉၶႃႈ။



---

### 3. Final Review: ႁဝ်းႁဵတ်းသင်ယဝ်ႉၵႂႃႇၽႂ်ႇ?
မႃးတူၺ်းၶိုၼ်းဝႃႈ ၼႂ်း Course ၼႆႉ ႁဝ်းလႆႈသၢင်ႈသင်ဝႆႉယဝ်ႉၼႆၶႃႈ:
* **Spring Boot 4:** ၸႂ်ႉ Framework Version မႂ်ႇသုတ်း။
* **MySQL & JPA:** ပွင်ႇၸႂ်လွင်ႈသိမ်းၶေႃႈမုၼ်း (Persistence)။
* **Service Layer & DTO:** ၸတ်းၵၢၼ် Logic လႄႈ Security ႁႂ်ႈၶႅမ်ႉ။
* **Error Handling:** ၸတ်းၵၢၼ် Exception ႁႂ်ႈ App "ၼိမ်"။
* **Docker & Cloud:** ဢဝ် App ၶိုၼ်း Online ႁႂ်ႈၵူၼ်းတင်းလူၵ်ႈၸႂ်ႉလႆႈ။

---

### 4. တေသိုပ်ႇႁဵတ်းသင်? (Next Steps)
မိူဝ်ႈလဵဝ် "ႁူဝ်ၸႂ်" App ႁဝ်းတိုၼ်ႇယဝ်ႉ။ တွၼ်ႈတႃႇႁႂ်ႈပဵၼ် App ဢၼ်တႄႉတႄႉၼၼ်ႉ:
1.  **Mobile App (Flutter):** တႅမ်ႈ UI ႁႂ်ႈႁၢင်ႈလီ သေႁွင်ႉၸႂ်ႉ URL ဢၼ်ႁဝ်းၸၢမ်းယူႇၼႆႉၶႃႈ။
2.  **Authentication (Security):** ထႅမ်သႂ်ႇ Spring Security တွၼ်ႈတႃႇယႃႇႁႂ်ႈပိူၼ်ႈမႃး Delete ၶေႃႈမုၼ်းႁဝ်းလႆႈငၢႆႈငၢႆႈ။
3.  **Frontend Web:** တႅမ်ႈ Website တွၼ်ႈတႃႇၼႄလိၵ်ႈတႆးၸိူဝ်းၼႆႉၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Production Ready:** App ဢၼ်ယဝ်ႉတူဝ်ႈ လႄႈ လွတ်ႈၽေး တွၼ်ႈတႃႇပၼ်ၵူၼ်းတႄႉတႄႉၸႂ်ႉ။
* **Smoke Testing:** ၵၢၼ်ၸၢမ်း API ႁႂ်ႈႁူႉဝႃႈၵူႈလွင်ႈလွင်ႈ တိုၵ်ႉလႅၼ်ႈလီယူႇ။
* **End-to-End (E2E):** ၵၢၼ်ၸၢမ်းတႄႇတီႈ Request ၶဝ်ႈမႃး တေႃႇထိုင်ၶေႃႈမုၼ်းၶဝ်ႈ DB လႄႈ တွပ်ႇဢွၵ်ႇၵႂႃႇၶိုၼ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းမႄး Code ၼႂ်းၶွမ်းယဝ်ႉ သေၶႂ်ႈႁႂ်ႈ App ၼိူဝ် Cloud (Render) Update ၸွမ်းၼၼ်ႉ ႁဝ်းတေလႆႈႁဵတ်းသင် (Command)?
2. ၼႂ်းၵၢၼ်ၸၢမ်း **Production URL**, Status Code လႂ် ဢၼ်ၼႄဝႃႈ App ႁဝ်းမီးပၼ်ႁႃၼိူဝ် Server (Internal Server Error)?