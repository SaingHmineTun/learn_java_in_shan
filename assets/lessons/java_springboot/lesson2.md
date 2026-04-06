# Lesson 2: "The TaiGlish Blueprint" (လၢႆးသၢင်ႈပိုၼ်ႉထၢၼ် App)

မိူဝ်ႈႁဝ်းတေတႅမ်ႈ App ၼိုင်ႈဢၼ်ၼၼ်ႉ ႁဝ်းဢမ်ႇလူဝ်ႇမႃးသၢင်ႈ Folder ႁင်းၵူၺ်းၶႃႈ။ 
Spring Boot မီးဝႅပ်ႉသၢႆႉဢၼ်ၸွႆးသၢင်ႈ "ပိုၼ်ႉထၢၼ်" (Starter Project) ႁႂ်ႈႁဝ်းဝႆးဝႆးၶႃႈ။

### 1. လၢႆးၸႂ်ႉ Spring Initializr
ႁဝ်းၶဝ်ႈၵႂႃႇတီႈ [start.spring.io](https://start.spring.io) သေလိူၵ်ႈတင်ႈ Config ၸိူင်ႉၼႆၶႃႈ:

* **Project:** Maven (ၶိူင်ႈၸတ်းၵၢၼ် Dependency ဢၼ်ၵူၼ်းၸႂ်ႉၼမ်သုတ်း)
* **Language:** Java
* **Spring Boot:** 3.2.x (ဢမ်ႇၼၼ် ဝိူဝ်းသျိၼ်းဢၼ်မႂ်ႇသုတ်း)
* **Java:** 17 ဢမ်ႇၼၼ် 21 (LTS)

### 2. Project Metadata (ၵၢၼ်တင်ႈၸိုဝ်ႈ)
တွၼ်ႈတႃႇ App **TaiGlish** ႁဝ်းၼၼ်ႉ ႁဝ်းတေတင်ႈၸိူင်ႉၼႆၶႃႈ:
* **Group:** `it.saimao` (ၸိုဝ်ႈ "မူႇၸုမ်း" ႁဝ်း)
* **Artifact:** `taiglish` (ၸိုဝ်ႈ "တူဝ် App" ႁဝ်း)
* **Packaging:** Jar
* **Configuration:** Properties
* **Java:** 21 (ဢမ်ႇၼၼ် လိူၵ်ႈပၼ် version လိုၼ်းသုတ်း)

---

### 3. Dependencies (ၵၢၼ်လိူၵ်ႈၶိူင်ႈမိုဝ်း)
တွၼ်ႈတႃႇ Module 1 ၼႆႉ ႁဝ်းလူဝ်ႇလိူၵ်ႈ 3 တူဝ်ၼႆႉၶႃႈ:

1. **Spring Web:** တွၼ်ႈတႃႇတႅမ်ႈ REST API သေ ႁႂ်ႈမၼ်းမီး Apache Tomcat မႃးပႃးၵမ်းလဵဝ်။
2. **Lombok:** တွၼ်ႈတႃႇၸွႆးလူတ်း (Reduce) ၵၢၼ်တႅမ်ႈ Code (Getter/Setter)။
3. **Spring Boot DevTools:** တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်း Restart ႁင်းၵူၺ်း မိူဝ်ႈႁဝ်းမႄး Code ယဝ်ႉ။



### 4. ၵၢၼ် Generate သေ Open Project
မိူဝ်ႈလိူၵ်ႈယဝ်ႉယဝ်ႉၼၼ်ႉ...
* ၼꩡၵ်းပၼ် **Generate** ဢၼ်မီးတီႈတႂ်ႈ။
* မၼ်းတေလူတ်ႇလူင်း (Download) ပဵၼ်ၾၢႆႇ `.zip` မႃးပၼ်ႁဝ်းၶႃႈ။
* Extract ၾၢႆႇၼၼ်ႉ သေဢဝ် **IntelliJ IDEA** ပိုတ်ႇ (Open) ဢဝ်ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Spring Initializr:** ဝႅပ်ႉသၢႆႉ (Tool) ဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ Generate ပိုၼ်ႉထၢၼ် Spring Boot Project။
* **Artifact:** ၸိုဝ်ႈဢၼ်တေၸႂ်ႉႁွင်ႉ တူဝ် Application ႁဝ်း မိူဝ်ႈတႅမ်ႈယဝ်ႉ။
* **Dependency:** Library ဢၼ်ႁဝ်းလိူၵ်ႈသႂ်ႇၶဝ်ႈ (Import) ၼႂ်း App ႁဝ်း။
* **Maven:** ၶိူင်ႈမိုဝ်း ဢၼ်တေလူတ်ႇလူင်း Dependency ၸိူဝ်းဢၼ်ႁဝ်းလိူၵ်ႈဝႆႉၼၼ်ႉ မႃးသႂ်ႇပၼ်ၼႂ်း Project ႁင်းၵူၺ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်းၶႂ်ႈတႅမ်ႈ Web API ၼၼ်ႉၼႆ ၼႂ်း Dependencies ၼၼ်ႉ ႁဝ်းထုၵ်ႇလီလိူၵ်ႈတူဝ်လႂ်? (**Spring Web** ႁႃႉ? ဢမ်ႇၼၼ် **Lombok**?)
2. တွၼ်ႈတႃႇ **Group ID** ၼၼ်ႉ ပိူင်ထမ်ႇမတႃႇ (Convention) ႁဝ်းထုၵ်ႇလီတႅမ်ႈၸိူင်ႉႁိုဝ်? (တႅမ်ႈၸိုဝ်ႈ App ႁႃႉ? ဢမ်ႇၼၼ် တႅမ်ႈၸိုဝ်ႈ Domain/မူႇၸုမ်း?)