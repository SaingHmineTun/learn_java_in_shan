# Lesson 38: "Docker Compose for Multi-Container"

**Docker Compose** ပဵၼ်ၶိူင်ႈမိုဝ်း ဢၼ်ၸႂ်ႉၾၢႆႇ **YAML** တွၼ်ႈတႃႇမၵ်းမၼ်ႈ လႄႈ လႅၼ်ႈ App ဢၼ်မီးလၢႆလၢႆ Container ၸွမ်းၵၼ်ၶႃႈ။

### 1. ၵၢၼ်သၢင်ႈၾၢႆႇ `docker-compose.yml`
ႁဝ်းသၢင်ႈၾၢႆႇမႂ်ႇၸိုဝ်ႈဝႃႈ **`docker-compose.yml`** ဝႆႉၼႂ်း Root Folder (တီႈလဵဝ်ၵၼ်တင်း Dockerfile) သေ သႂ်ႇ Code ၸိူင်ႉၼႆၶႃႈ:

```yaml
version: '3.8'
services:
  # 1. Database Service (MySQL)
  db:
    image: mysql:8.0
    container_name: taiglish-db
    environment:
      MYSQL_DATABASE: taiglish_db
      MYSQL_ROOT_PASSWORD: root
    ports:
      - "3306:3306"

  # 2. Application Service (TaiGlish App)
  app:
    build: .
    container_name: taiglish-app
    ports:
      - "8081:8081"
    depends_on:
      - db
    environment:
      # လႅၵ်ႈ localhost ပဵၼ် 'db' (ၸိုဝ်ႈ Service ၽၢႆႇၼိူဝ်)
      SPRING_DATASOURCE_URL: jdbc:mysql://db:3306/taiglish_db
      SPRING_DATASOURCE_USERNAME: root
      SPRING_DATASOURCE_PASSWORD: root
```



---

### 2. ၵွပ်ႈသင်ႁဝ်းၸင်ႇၸႂ်ႉ 'db' တႅၼ်းတၢင် 'localhost'?
ၼႂ်း Docker Network ၼၼ်ႉ Container ၼိုင်ႈတူဝ် တေဢမ်ႇႁူႉဝႃႈ `localhost` ပဵၼ်သင် (ၵွပ်ႈမၼ်းပဵၼ် localhost ၶွင်တူဝ်မၼ်းႁင်းၵူၺ်း)။
* Docker Compose တေၸွႆးသၢင်ႈ **Internal Network** ပၼ်။
* App ႁဝ်းတေႁႃ Database ႁၼ်လူၺ်ႈၵၼ် ၸႂ်ႉၸိုဝ်ႈ Service **`db`** ဢၼ်ႁဝ်းတင်ႈဝႆႉၼၼ်ႉၶႃႈ။

---

### 3. ၵႂၢမ်းသင်ႇပိူင်လူင် (Commands)
မိူဝ်ႈႁဝ်းမီးၾၢႆႇ YAML ယဝ်ႉယဝ်ႉၼၼ်ႉ ႁဝ်းပိုတ်ႇ App တင်းမူတ်းလႆႈငၢႆႈငၢႆႈၸိူင်ႉၼႆၶႃႈ:

* **Start:** ပိုတ်ႇ App တင်းမူတ်း (Build + Run)
  ```bash
  docker-compose up --build -d
  ```
* **Stop:** ပိၵ်ႉ လႄႈ လူတ်းပႅတ်ႈ Container တင်းမူတ်း
  ```bash
  docker-compose down
  ```
* **Logs:** တူၺ်းလိၵ်ႈပိုၼ်း (တွၼ်ႈတႃႇ Debug)
  ```bash
  docker-compose logs -f
  ```



---

### 4. ၽွၼ်းလီၶွင် Docker Compose
1.  **One-Click Setup:** ႁဝ်းဢမ်ႇလူဝ်ႇ Install MySQL ႁင်းၵူၺ်းယဝ်ႉ။ သင်တႅမ်ႈ `docker-compose up` ၵေႃႈ လႅၼ်ႈလႆႈတင်းမူတ်းယဝ်ႉၶႃႈ။
2.  **Order of Execution:** ၸႂ်ႉ **`depends_on`** တွၼ်ႈတႃႇသင်ႇႁႂ်ႈ MySQL ပိုတ်ႇယဝ်ႉ ၸင်ႇပၼ် App လႅၼ်ႈၸွမ်လင်ၶႃႈ။
3.  **Network Isolation:** Container တင်းမူတ်းယူႇၼႂ်း Network လဵဝ်ၵၼ် ႁဵတ်းႁႂ်ႈသူင်ႇၶေႃႈမုၼ်းလႆႈဝႆး လႄႈ လွတ်ႈၽေးၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **YAML:** ပိူင်တႅမ်ႈ Config ဢၼ်လူငၢႆႈ (ၸႂ်ႉ Space/Indentation ပဵၼ်လမ်ႇလွင်ႈ)။
* **Service:** Container ၼိုင်ႈတူဝ် ၼႂ်း Docker Compose။
* **Depends On:** ၵၢၼ်မၵ်းမၼ်ႈ သၢႆငၢႆ (Dependency) ၵႄႈ Services။
* **Environment Variables:** ၵၢၼ်သူင်ႇ Config (မိူၼ်ၼင်ႇ Password) ၶဝ်ႈၵႂႃႇၼႂ်း Container။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းလႅၵ်ႈၸိုဝ်ႈ Service တီႈ MySQL ပဵၼ် **`taiglish-mysql`** ၼႆ ႁဝ်းတေလႆႈမႄး **`SPRING_DATASOURCE_URL`** ၸိူင်ႉႁိုဝ်?
2. ၵႂၢမ်းသင်ႇ **`docker-compose down`** ၼၼ်ႉ မၼ်းတေလူတ်းပႅတ်ႈ **Images** ႁဝ်းပႃးႁႃႉ ဢမ်ႇၼၼ် လူတ်းၵူၺ်း **Containers**?
