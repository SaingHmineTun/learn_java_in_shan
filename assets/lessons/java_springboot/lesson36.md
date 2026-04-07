# Lesson 36: "Introduction to Docker & Containers"

**Docker** ပဵၼ် Software ဢၼ်ၸွႆး "ႁေႃႇ" App ႁဝ်းတင်းမူတ်း (Code, Java Runtime, Libraries, Config) ၶဝ်ႈၵႂႃႇၼႂ်း **Container** ဢၼ်လႅၼ်ႈလႆႈႁင်းၵူၺ်းၶႃႈ။

### 1. Container vs Virtual Machine (VM)
* **VM:** မၼ်းသၢင်ႈ "ၶွမ်ႇပိဝ်ႇတႃႇပွမ်" ၼိုင်ႈတူဝ် (မီး OS ႁင်းၵူၺ်း) ယဝ်ႉၶႃႈ။ ၵူၺ်းၵႃႈ မၼ်းၵိၼ် RAM ၼမ် လႄႈ Start ဝႆးဝႆး ဢမ်ႇလႆႈၶႃႈ။
* **Container:** မၼ်း "ၽႄ" (Share) OS ၶွင်ၶွမ်ႇပိဝ်ႇတႃႇ ႁဝ်းၵူၺ်းၶႃႈ။ ၵူၺ်းၵႃႈၸႅၵ်ႇဢွၵ်ႇၵၼ်ဝႆႉ ႁႂ်ႈလႅၼ်ႈလႆႈဝႆး လႄႈ ၸႂ်ႉ RAM ဢေႇၶႃႈ။



---

### 2. ၶေႃႈၵႂၢမ်းလမ်ႇလွင်ႈၼႂ်း Docker
တွၼ်ႈတႃႇပွင်ႇၸႂ် Docker ႁဝ်းလူဝ်ႇႁူႉ 3 ယၢင်ႈၶႃႈ:

1.  **Dockerfile:** ပဵၼ် "သဵၼ်ႈမၢႆၵႂၢမ်းသင်ႇ" (Recipe) တွၼ်ႈတႃႇသၢင်ႈ Image (မိူၼ်ၼင်ႇ ၾၢႆႇတႅမ်ႈလၢႆးႁဵတ်းၵိၼ်ၶဝ်ႈ)။
2.  **Docker Image:** ပဵၼ် "ၾၢႆႇတၢႆ" (Snapshot) ဢၼ်ႁေႃႇ App ႁဝ်းဝႆႉယဝ်ႉတူဝ်ႈ (မိူၼ်ၼင်ႇ ၶဝ်ႈသွႆးဢၼ်ႁဵတ်းယဝ်ႉယဝ်ႉ ၵူၺ်းၵႃႈပႆႇလႆႈၵိၼ်)။
3.  **Docker Container:** ပဵၼ် "တူဝ်လႅၼ်ႈတႄႉ" (Running Instance) ဢၼ်ဢဝ် Image မႃးပိုတ်ႇၸႂ်ႉ (မိူၼ်ၼင်ႇ ၶဝ်ႈသွႆးဢၼ်တိုၵ်ႉ သႂ်ႇၼႂ်းၵွၵ်းႁေၵိၼ်ယူႇ)။



---

### 3. ၽွၼ်းလီၶွင် Docker တွၼ်ႈတႃႇ TaiGlish
* **Consistency:** App ႁဝ်းတေလႅၼ်ႈလႆႈမိူၼ်ၵၼ် 100% ၵူႈတီႈ။
* **Isolation:** App တူဝ်ၼိုင်ႈ တေဢမ်ႇၵႂႃႇယႃႉ App ထႅင်ႈတူဝ်ၼိုင်ႈ (မိူၼ်ၼင်ႇ Version ၶွင် Java ဢမ်ႇမိူၼ်ၵၼ်)။
* **Portability:** ႁဝ်းသူင်ႇပၼ် **Image** ၵႂႃႇၼိူဝ် Server ၵူၺ်း၊ မၼ်းတေပိုတ်ႇလႆႈၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇလူဝ်ႇ Install MySQL ဢမ်ႇၼၼ် Java ၼိူဝ် Server ၼၼ်ႉႁင်းၵူၺ်းၶႃႈ။

---

### 4. ၵၢၼ် Install Docker
ႁဝ်းၵႂႃႇ Download **Docker Desktop** တီႈ [docker.com](https://www.docker.com/products/docker-desktop/) သေ Install ဝႆႉၼႂ်း Windows ၶႃႈ။ မိူဝ်ႈ Install ယဝ်ႉယဝ်ႉ ႁႂ်ႈတႅမ်ႈၸၢမ်းတူၺ်းၼႂ်း Terminal ၼင်ႇတီႈတႂ်ႈၶႃႈ။

```bash
docker --version
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Containerization:** ၵၢၼ်ႁေႃႇ App ၶဝ်ႈၼႂ်း Container။
* **Docker Hub:** တီႈသိမ်း Image ၼိူဝ် Cloud (မိူၼ်ၼင်ႇ GitHub တွၼ်ႈတႃႇ Docker)။
* **Base Image:** Image တေႇငဝ်ႈ ဢၼ်ႁဝ်းဢဝ်မႃးၸႂ်ႉ (မိူၼ်ၼင်ႇ Image ဢၼ်ပႃး Java ဝႆႉယဝ်ႉ)။
* **Daemon:** တူဝ် Background Service ၶွင် Docker ဢၼ်လႅၼ်ႈႇယူႇၼႂ်းၶွမ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ၼႂ်းၵႄႈ **Image** လႄႈ **Container** ၼၼ်ႉ တူဝ်လႂ်ပဵၼ် "ၾၢႆႇတၢႆ" သေ တူဝ်လႂ်ပဵၼ် "တူဝ်လႅၼ်ႈတႄႉ"?
2. ၵွပ်ႈသင် Docker ၸင်ႇလီလိူဝ်ၵၢၼ်ၸႂ်ႉ Virtual Machine တွၼ်ႈတႃႇ Deployment?