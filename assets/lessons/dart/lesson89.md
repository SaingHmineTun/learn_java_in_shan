## 89) The StreamController: Managing the Flow

မိူဝ်ႈႁဝ်းလူဝ်ႇသၢင်ႈ Stream ႁင်းၵူၺ်းႁဝ်း (Custom Stream) တွၼ်ႈတႃႇသူင်ႇၶေႃႈမုၼ်းၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **StreamController** ၶႃႈ။ မၼ်းမိူၼ်ၼင်ႇ "ၵွၵ်းၵုမ်းထိင်း" ဢၼ်မီးပၢၵ်ႇတၢင်းၶဝ်ႈ လႄႈ တၢင်းဢွၵ်ႇ။

---

### 1. ပိူင်လူင် 2 တွၼ်ႈ ၼႂ်း StreamController

တွၼ်ႈတႃႇတေၵုမ်းထိင်းၼမ်ႉလႆၶေႃႈမုၼ်းလႆႈၼၼ်ႉ မၼ်းမီးပိူင်လမ်ႇလွင်ႈ 2 ယၢင်ႇ:

* **Sink (တၢင်းၶဝ်ႈ):** မိူၼ်ၼင်ႇ ပၢၵ်ႇႁူးၼမ်ႉ။ ႁဝ်းဢဝ်ၶေႃႈမုၼ်း "ယႅတ်း" ၶဝ်ႈၵႂႃႇတီႈၼႆႈ။
* **Stream (တၢင်းဢွၵ်ႇ):** မိူၼ်ၼင်ႇ ပၢၵ်ႇႁူးၵွၵ်ႇၼမ်ႉ။ ၵူၼ်းထွမ်ႇ (Listener) တေပႂ်ႉႁပ်ႉဢဝ်ၶေႃႈမုၼ်းတီႈၼႆႈ။

---

### 2. လၢႆးၸႂ်ႉတူဝ်တႄႇ (Code Example)

ၼႆႉပဵၼ်လၢႆးသၢင်ႈ Controller လႄႈ လၢႆးသူင်ႇ Data ၶႃႈ:

```dart
import 'dart:async'; // လူဝ်ႇ Import တႃႇၸႂ်ႉ StreamController

void main() {
  // 1. သၢင်ႈ Controller
  final controller = StreamController<String>();

  // 2. ပႂ်ႉထွမ်ႇ (Listen) တီႈ Stream
  controller.stream.listen((data) {
    print("လႆႈႁပ်ႉၶေႃႈမုၼ်း: $data");
  });

  // 3. သူင်ႇ Data ၶဝ်ႈၵႂႃႇတီႈ Sink
  controller.sink.add("မႂ်ႇသႂ်ႇၵေႃႉၼိုင်ႈ");
  controller.sink.add("မႂ်ႇသႂ်ႇၵေႃႉသွင်");

  // 4. ပိတ်း Stream မိူဝ်ႈဢမ်ႇၸႂ်ႉယဝ်ႉ (လမ်ႇလွင်ႈၼႃႇ!)
  controller.close();
}

```

---

### 3. ပၵ်းပိူင်လမ်ႇလွင်ႈ (Rules)

* **Memory Leaks:** ၵူႈပွၵ်ႈ ဢၼ်ၸဝ်ႈၵဝ်ႇပိုတ်ႇ `StreamController`၊ ၸဝ်ႈၵဝ်ႇတေလႆႈ **Close** မၼ်းတေႃႇသေႇ မိူဝ်ႈဢမ်ႇၸႂ်ႉယဝ်ႉ (မိူၼ်ၼင်ႇ မိူဝ်ႈပိတ်းၼႃႈ Screen)။ သင်ဢမ်ႇပိတ်း၊ မၼ်းတေၵိၼ် Memory App ႁဝ်းပႅတ်ႈလၢႆလၢႆၶႃႈ။
* **Single Access:** `StreamController` ယူႇးယူႇးၼႆႉ တေမီးၵူၼ်းထွမ်ႇ (Listener) လႆႈ **ၵေႃႉလဵဝ်ၵူၺ်း**။ (ႁဝ်းတေႁဵၼ်းလွင်ႈ လၢႆးႁႂ်ႈထွမ်ႇလႆႈလၢႆၵေႃႉ ၼႂ်း Lesson 91 ၶႃႈ)။

---

### **Summary**

* **Sink**: ပဵၼ်တီႈ `add` Data ၶဝ်ႈ။
* **Stream**: ပဵၼ်တီႈ `listen` ဢဝ် Data ဢွၵ်ႇ။
* **Close**: ပဵၼ်ၵၢၼ်ပိတ်း Pipe တွၼ်ႈတႃႇႁႄႉၵင်ႈ Memory Leak။

---
