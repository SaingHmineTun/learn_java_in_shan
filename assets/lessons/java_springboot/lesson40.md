# Lesson 40: "Deploying Spring Boot to the Cloud (Render/Railway)"

မိူဝ်ႈလဵဝ် ႁဝ်းမီး Docker Image ယဝ်ႉ။ တွၼ်ႈတႃႇႁႂ်ႈ ၵူၼ်းတင်းလူၵ်ႈ ၶဝ်ႈၸႂ်ႉ API ႁဝ်းလႆႈ 24/7 ၼၼ်ႉ ႁဝ်းတေဢဝ် Image ႁဝ်းၵႂႃႇဝႆႉၼိူဝ် **PaaS (Platform as a Service)** ၶႃႈ။

### 1. လိူၵ်ႈ Platform တွၼ်ႈတႃႇ Deploy
မီးလၢႆလၢႆတီႈ ဢၼ်ပၼ် Deploy **Dockerized Spring Boot** လႆႈလႅပ်ႈငၢႆႈၶႃႈ:
* **Render:** ပဵၼ်ဢၼ်ၵူၼ်းၸႂ်ႉၼမ် ၵွပ်ႈမၼ်းၵွင်ႉၸူး GitHub သေ Build Docker ႁင်းၵူၺ်း။
* **Railway:** လႅၼ်ႈဝႆး လႄႈ Setup ငၢႆႈသုတ်းတွၼ်ႈတႃႇ Spring Boot + MySQL။
* **Koyeb:** ပၼ်ၸႂ်ႉ Free တွၼ်ႈတႃႇ Instance ဢွၼ်ႇဢွၼ်ႇ။



---

### 2. ၸၼ်ႉၵၢၼ်ဢဝ် App ၶိုၼ်း Online (Render Example)
1.  **Push to GitHub:** ဢဝ် Code **TaiGlish** ႁဝ်းတင်းမူတ်း (ပႃးတင်း Dockerfile) Push ၶိုၼ်းၼိူဝ် GitHub Repository ၶွင်ၸဝ်ႈၶူး။
2.  **Connect to Render:**
    * ၶဝ်ႈ [render.com](https://render.com) သေ Register လူၺ်ႈ GitHub။
    * ၼိပ်ႉ **New +** $\rightarrow$ **Web Service**။
    * လိူၵ်ႈ Repository ၶွင် TaiGlish။
3.  **Configure:**
    * **Runtime:** လိူၵ်ႈပဵၼ် **Docker** (Render တေႁူႉၸၵ်း Dockerfile ႁဝ်းႁင်းၵူၺ်း)။
    * **Environment Variables:** ထႅမ်သႂ်ႇ Config ဢၼ်ၵွင်ႉၸူး Aiven MySQL (Lesson 39) ၼၼ်ႉၶႃႈ:
        * `SPRING_DATASOURCE_URL`
        * `SPRING_DATASOURCE_USERNAME`
        * `SPRING_DATASOURCE_PASSWORD`



---

### 3. ၵၢၼ်ၵူတ်ႇထတ်း (Checking Online)
မိူဝ်ႈ Render Build ယဝ်ႉတူဝ်ႈယဝ်ႉ (တေၸႂ်ႉၶၢဝ်းယၢမ်း 3-5 မိၼိတ်ႉ)၊ ႁဝ်းတေလႆႈ **Public URL** မႃးၶႃႈ မိူၼ်ၼင်ႇ:
`https://taiglish-api.onrender.com`

ႁဝ်းၸၢင်ႈဢဝ် URL ၼႆႉ ၵႂႃႇပိုတ်ႇၼႂ်း Browser ဢမ်ႇၼၼ် Phone သေတူၺ်းလႆႈၵမ်းလဵဝ်ၶႃႈ:
`https://taiglish-api.onrender.com/api/words`

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **PaaS (Platform as a Service):** တီႈဢၼ်ႁဝ်းဢဝ် Code ၵႂႃႇဝႆႉသေ ၶဝ်ၸတ်းၵၢၼ် Server ပၼ်ႁဝ်းတင်းမူတ်း။
* **CI/CD (Continuous Deployment):** မိူဝ်ႈႁဝ်းမႄး Code သေ Push ၶိုၼ်ႈ GitHub ၼၼ်ႉ Render တေ Build လႄႈ Update App ႁႂ်ႈပဵၼ် Version မႂ်ႇႁင်းၵူၺ်း။
* **Cold Start:** ၼႂ်း Free Plan, သင်ဢမ်ႇမီးၵူၼ်းၸႂ်ႉ App ႁဝ်းတေ "ၼွၼ်း" ဝႆႉ။ မိူဝ်ႈမီးၵူၼ်းၶဝ်ႈမႃး ၸၢင်ႈတေၸႂ်ႉၶၢဝ်းယၢမ်း 30 ဝိၼႃတီႇ တွၼ်ႈတႃႇ "တိုၼ်ႇ" မႃးၶႃႈ။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းဢဝ် App ဝႆႉၼိူဝ် **Render** ယဝ်ႉၼၼ်ႉ ႁဝ်းယင်းလူဝ်ႇလႅၼ်ႈ **Docker Desktop** ၼႂ်းၶွမ်ႇႁဝ်းယူႇႁႃႉ တွၼ်ႈတႃႇႁႂ်ႈပိူၼ်ႈၸႂ်ႉ API လႆႈ?
2. ၵွပ်ႈသင်ႁဝ်းၸင်ႇလိူၵ်ႈ Runtime ပဵၼ် **Docker** တႅၼ်းတၢင်ၵၢၼ်လိူၵ်ႈ Java ၵမ်းလဵဝ် မိူဝ်ႈႁဝ်း Deploy ၼိူဝ် Cloud?