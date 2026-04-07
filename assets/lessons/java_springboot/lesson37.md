# Lesson 37: "Writing the Dockerfile for Spring Boot"

**Dockerfile** ပဵၼ်ၾၢႆႇလိၵ်ႈ (Text File) ထမ်ႇမတႃႇ ဢၼ်ဢမ်ႇမီး File Extension (ဢမ်ႇၸႂ်ႉ .txt)။ 
မၼ်းပႃးၵႂၢမ်းသင်ႇ တွၼ်ႈတႃႇသၢင်ႈ **Docker Image** ၶႃႈ။

### 1. ၵၢၼ်သၢင်ႈၾၢႆႇ `Dockerfile`
ႁဝ်းသၢင်ႈၾၢႆႇမႂ်ႇၼိုင်ႈဢၼ် ၸိုဝ်ႈဝႃႈ **`Dockerfile`** ဝႆႉၼႂ်း Root Folder ၶွင် Project (တီႈလဵဝ်ၵၼ်တင်း `pom.xml`) သေ သႂ်ႇ Code ၸိူင်ႉၼႆၶႃႈ:

```dockerfile
# 1. ၸႂ်ႉ Java Runtime ပဵၼ် Base Image (တွၼ်ႈတႃႇ Spring Boot 4/Java 21)
FROM eclipse-temurin:21-jre-alpine

# 2. တင်ႈ Folder ၵၢၼ်ႁဵတ်းၼႂ်း Container
WORKDIR /app

# 3. ၵွပ်ႉပီႇၾၢႆႇ JAR တီႈ Folder 'target' မႃးဝႆႉၼႂ်း Container
COPY target/taiglish-0.0.1-SNAPSHOT.jar app.jar

# 4. ပိုတ်ႇ Port 8081 ႁႂ်ႈၵူၼ်းၽၢႆႇၼွၵ်ႈၶဝ်ႈလႆႈ
EXPOSE 8081

# 5. ၵႂၢမ်းသင်ႇတွၼ်ႈတႃႇပိုတ်ႇ App မိူဝ်ႈ Container တႄႇလႅၼ်ႈ
ENTRYPOINT ["java", "-jar", "app.jar"]
```



---

### 2. ပွင်ႇၸႂ်ၵႂၢမ်းသင်ႇ (Keywords)
* **`FROM`**: ၼႆႉလမ်ႇလွင်ႈသုတ်းၶႃႈ။ မၼ်းပဵၼ်ၵၢၼ်လိူၵ်ႈ "ငဝ်ႈမၼ်း"။ ႁဝ်းလိူၵ်ႈ `alpine` ၵွပ်ႈဝႃႈမၼ်းပဵၼ် Linux ဢၼ်ဢွၼ်ႇသုတ်း (Size ဢေႇ) ႁဵတ်းႁႂ်ႈ Image ႁဝ်းဢမ်ႇၼၵ်းၶႃႈ။
* **`WORKDIR`**: မိူၼ်ၼင်ႇၵၢၼ်တႅမ်ႈ `cd /app` ၼႂ်း Container ၶႃႈ။
* **`COPY`**: ဢဝ်ၾၢႆႇ JAR ဢၼ်ႁဝ်း Build ဝႆႉၼၼ်ႉ သူင်ႇၶဝ်ႈၵႂႃႇၼႂ်း "ၵွင်ႇ" (Container)။
* **`ENTRYPOINT`**: ပဵၼ်ၵႂၢမ်းသင်ႇပိူင်လူင် ဢၼ် App တေလႆႈပၼ်ႇတႃႇသေႇ။

---

### 3. ၵၢၼ်သၢင်ႈ Image (Build)
ပိုတ်ႇ Terminal သေတႅမ်ႈသင်ႇ Docker ႁႂ်ႈသၢင်ႈ Image ၸိုဝ်ႈဝႃႈ **`taiglish-app`** ၶႃႈ:

```bash
# -t မၢႆထိုင် Tag (ၸိုဝ်ႈ Image)
# . မၢႆထိုင်ဝႃႈ ၾၢႆႇ Dockerfile ယူႇတီႈၼႆႉ
docker build -t taiglish-app .
```

### 4. ၵၢၼ်လႅၼ်ႈ Container (Run)
မိူဝ်ႈ Build ယဝ်ႉယဝ်ႉ ႁဝ်းပိုတ်ႇ App **TaiGlish** ႁဝ်းၼႂ်း Docker လႆႈၸိူင်ႉၼႆၶႃႈ:

```bash
# -p မၢႆထိုင် Port Mapping (ၽၢႆႇၼွၵ်ႈ:ၼႂ်း Container)
# -d မၢႆထိုင် Detached mode (ပၼ်ႇဝႆႉၽၢႆႇလင်/Background)
docker run -d -p 8081:8081 --name taiglish-container taiglish-app
```



---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Base Image**: Image တေႇငဝ်ႈ ဢၼ်ပႃး OS လႄႈ Java ဝႆႉယဝ်ႉ။
* **Layer**: ၵူႈထႅဝ်ၼႂ်း Dockerfile တေပဵၼ် Layer ၼိုင်ႈၸၼ်ႉ။ Docker တေသိမ်း (Cache) Layer ၸိူဝ်းၼႆႉဝႆႉ ႁႂ်ႈ Build ဝႆးလိူဝ်ၵဝ်ႇ။
* **Alpine Linux**: Linux Version ဢၼ်ဢွၼ်ႇ လႄႈ လႅၼ်ႈဝႆး (Lightweight)။
* **Port Mapping**: ၵၢၼ်ၵွင်ႉ Port ၶွမ်းႁဝ်း ၸူး Port ၼႂ်း Container။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1.  သင်ႁဝ်းမႄး Code ၼႂ်း Java ယဝ်ႉယဝ်ႉၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈႁဵတ်းသင်ဢွၼ်တၢင်း တေ Build Docker Image မႂ်ႇထႅင်ႈပွၵ်ႈၼိုင်ႈ? (Hint: Maven)
2.  ၵႂၢမ်းသင်ႇ **`EXPOSE 8081`** ၼၼ်ႉ... မၼ်းပိုတ်ႇ Port ၼႂ်းၶွမ်ႇႁဝ်း ႁႃႉ ဢမ်ႇၼၼ် ပိုတ်ႇၼႂ်း Container?