## 2) Dart SDK လႄႈ Runtime Environment

တႃႇတေတႅမ်ႈလိၵ်ႈ Dart လႆႈၼၼ်ႉ ႁဝ်းလူဝ်ႇမီး **Dart SDK (Software Development Kit)** ယဝ်ႉ။ မၼ်းပဵၼ်ၸုမ်ႇၶိူင်ႈၵၢၼ် ဢၼ်ၸွႆႈႁႂ်ႈႁဝ်းသၢင်ႈ App လႆႈၼၼ်ႉယဝ်ႉ။

### Dart SDK ပႃးဝႆႉသင်လၢႆလၢႆ?

ၼႂ်း Dart SDK ၼၼ်ႉ မၼ်းတေပႃးဝႆႉ ၶိူင်ႈၵၢၼ်လမ်ႇလွင်ႈ 3 ပိူင်:

**1. Dart Libraries (Core Libraries)**
မၼ်းပဵၼ် Code ဢၼ်ၶဝ်တႅမ်ႈဝႆႉပၼ် တႃႇႁဝ်းၸႂ်ႉတိုင်ႈလႆႈၵမ်းလဵဝ်။ ၼႂ်းၼၼ်ႉပႃးဝႆႉ:

* `dart:core`: တႃႇၸႂ်ႉ Numbers, Strings လႄႈ Collections (Lists, Maps)။
* `dart:math`: တႃႇၵိတ်ႇၼပ်ႉလွင်ႈပၢႆးၼပ်ႉ (Math constants, Random numbers)။
* `dart:convert`: တႃႇပိၼ်ႇ JSON ဢမ်ႇၼၼ် UTF-8 encoding။

**2. Dart Virtual Machine (VM)**
ၼႆႉပဵၼ် "Runtime Environment" ဢၼ်လႅၼ်ႈ Code ႁဝ်းၼၼ်ႉယဝ်ႉ။

* မၼ်းၸွႆႈႁႂ်ႈ Code ႁဝ်းလႅၼ်ႈလႆႈၼိူဝ် Windows, Mac, ဢမ်ႇၼၼ် Linux။
* မိူဝ်ႈႁဝ်းတိုၵ်ႉတႅမ်ႈ Code (Development) ၼၼ်ႉ Dart VM တေၸႂ်ႉ JIT Compilation သေ ႁဵတ်းႁႂ်ႈႁဝ်းႁၼ်ၽူၼ်လႅၵ်ႈလၢႆႈဝႆးဝႆး။

**3. Dart Compiler**
မၼ်းပဵၼ် "ၵူၼ်းပိၼ်ႇလိၵ်ႈ" ဢၼ်တေဢဝ် Code ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉ ပိၼ်ႇပဵၼ် Machine code ဢၼ်ၶွမ်းပွင်ႇၸႂ်။

* **dart2js:** ပိၼ်ႇ Code Dart ႁႂ်ႈပဵၼ် JavaScript တႃႇၸႂ်ႉၼိူဝ် Web Browsers။
* **dartaotruntime:** ပိၼ်ႇ Code ႁႂ်ႈပဵၼ် Native code တႃႇၸႂ်ႉၼိူဝ် Mobile (iOS/Android)။

---

### Dart Runtime ၼႆႉ ႁဵတ်းၵၢၼ်ၸိူဝ်ႉႁိုဝ်?

Dart ၼႆႉပဵၼ် **Single-threaded language** ယဝ်ႉ။ မၼ်းမီးလၢႆးႁဵတ်းၵၢၼ် ဢၼ်ႁွင်ႉဝႃႈ **Event Loop**။

* **Isolate:** တီႈၼႂ်း Dart ၼၼ်ႉ Code တေလႅၼ်ႈယူႇၼႂ်း Isolate။ Isolate ၼိုင်ႈဢၼ် တေမီး Memory ၶေႃၶေႃသေ ဢမ်ႇၵဝ်းၵၼ်တင်း Isolate တၢင်ႇဢၼ်။ ၼႆႉႁဵတ်းႁႂ်ႈ App ႁဝ်းလႅၼ်ႈလႆႈ Smooth လႄႈ ဢမ်ႇ "Hang" ၼၼ်ႉယဝ်ႉ။

---