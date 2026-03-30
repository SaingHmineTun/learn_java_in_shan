## Lesson 81: Deployment (Native Windows .EXE)

ၵၢၼ်ၸႂ်ႉ `jpackage` မၼ်းလီတႄႉတႄႉ ယွၼ်ႉမၼ်းတေဢဝ် **Java Runtime (JRE)** သႂ်ႇၶဝ်ႈၵႂႃႇၼႂ်း Installer ၼၼ်ႉၵမ်းလဵဝ်။ ပွင်ႇဝႃႈ Computer ဢၼ်တေဢဝ် Software ႁဝ်းၵႂႃႇ Install ၼၼ်ႉ ဢမ်ႇလူဝ်ႇမီး Java ဝႆႉၵေႃႈ ႁဵတ်းၵၢၼ်လႆႈၶႃႈ။

### 1. Preparation (ၶၵ်ႉတွၼ်ႈႁၢင်ႈႁႅၼ်း)

ဢွၼ်တၢင်းသုတ်း ၸဝ်ႈၵဝ်ႇလူဝ်ႇမီး:
* **Fat JAR**: ၾၢႆႇ `.jar` ဢၼ်မီး Library တင်းမူတ်း (မိူၼ်ၼင်ႇ MySQL Driver, iText) ယူႇၼႂ်းတူဝ်မၼ်း။
* **Icon**: ၾၢႆႇ `.ico` တွၼ်ႈတႃႇႁဵတ်း Logo Software။
* **WiX Toolset**: တွၼ်ႈတႃႇႁဵတ်း `.msi` ဢမ်ႇၼၼ် `.exe` ၼႂ်း Windows, ၸဝ်ႈၵဝ်ႇလူဝ်ႇ Install [WiX Toolset](https://wixtoolset.org/) ဝႆႉၼႂ်း PC ၶႃႈ။

---

### 2. The jpackage Command (ၶေႃႈသင်ႇထႅၵ်ႇဢွၵ်ႇ .EXE)

ပိုတ်ႇ **Terminal / Command Prompt** သေ တႅမ်ႈၶေႃႈသင်ႇၼင်ႇၼႆၶႃႈ (မႄး Path ႁႂ်ႈမႅၼ်ႈၸွမ်း Project ၸဝ်ႈၵဝ်ႇ):

```bash
jpackage --type exe \
  --input target/ \
  --dest dist/ \
  --name "TMK_Library" \
  --main-jar tmk-library-1.0.jar \
  --main-class top.saimao.MainApp \
  --win-shortcut \
  --win-menu \
  --icon src/main/resources/icons/app_icon.ico \
  --vendor "Thung Mao Kham School" \
  --description "Library Management System for Shan Community"
```

**တီႈပွင်ႇၶေႃႈသင်ႇ:**
* `--input`: တီႈၵဵပ်းၾၢႆႇ JAR ႁဝ်း။
* `--dest`: တီႈဢၼ်ႁဝ်းၶႂ်ႈႁႂ်ႈ .EXE ဢွၵ်ႇမႃး။
* `--win-shortcut`: ႁႂ်ႈမၼ်းႁဵတ်း Shortcut ဝႆႉၼိူဝ် Desktop။
* `--win-menu`: ႁႂ်ႈမၼ်းမီးၼႂ်း Start Menu။



---

### 3. Database Consideration (လွင်ႈ Database)

မိူဝ်ႈၸဝ်ႈၵဝ်ႇဢဝ် Software ၵႂႃႇ Install ၼႂ်း PC တၢင်ႇတူဝ်:
* **MySQL Server**: Computer တူဝ်ၼၼ်ႉ လူဝ်ႇလႆႈ Install MySQL Server ဝႆႉၶႃႈ။
* **DB Connection**: ယႃႇလိုမ်းမႄး `DBConnection.java` ႁႂ်ႈမၼ်းၸႂ်ႉ IP Address (သင်ၸႂ်ႉ Server ၽၢႆႇၼွၵ်ႈ) ဢမ်ႇၼၼ် ႁႂ်ႈ Admin ၸၢင်ႈ Config လႆႈငၢႆႈငၢႆႈၶႃႈ။

---

### 🎓 Summary for Thung Mao Kham Students

* **Self-Contained**: Software ဢၼ်ဢွၵ်ႇမႃးလုၵ်ႉတီႈ `jpackage` ၼၼ်ႉ မၼ်းမီး Java ယူႇၼႂ်းတူဝ်မၼ်းယဝ်ႉ။ ၼႆႉႁွင်ႉဝႃႈ "Native Application" ၶႃႈ။
* **Professional Delivery**: ၵၢၼ်သူင်ႇၾၢႆႇ `.exe` ႁႂ်ႈ Admin မႃး Install ၼၼ်ႉ မၼ်းတူၺ်းလီ လႄႈ မီး Standard လိူဝ်ၵၢၼ်သူင်ႇၾၢႆႇ `.jar` လၢႆလၢႆၶႃႈ။
* **Icon Matters**: ၵၢၼ်သႂ်ႇ Logo `.ico` ႁဵတ်းႁႂ်ႈ Software ႁဝ်းမီး Identity ၶွင်ႁူင်းႁဵၼ်း **Thung Mao Kham** တႄႉတႄႉၶႃႈ။