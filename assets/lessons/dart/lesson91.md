## 91) Single vs Broadcast: One Listener vs Many

ၼႂ်း Dart, Stream မီးယူႇသွင်မဵဝ်းၶႃႈ။ လွင်ႈပႅၵ်ႇပိူင်ႈမၼ်းၼႆႉ မိူၼ်ၼင်ႇၵၢၼ် "သူင်ႇလိၵ်ႈလပ်ႉ" တင်း "ၵၢၼ်ပိုတ်ႇလမ်ႇၽူင် (Radio)" ၼၼ်ႉယဝ်ႉ။

---

### 1. Single-Subscription Stream (ထွမ်ႇလႆႈၵေႃႉလဵဝ်)

ၼႆႉပဵၼ် Stream ပိူင်ယူဝ်းယူဝ်း။ မၼ်းသူင်ႇၶေႃႈမုၼ်းၸူးၵူၼ်းထွမ်ႇ (Listener) **ၵေႃႉလဵဝ်ၵူၺ်း**။

* သင်မီးၵေႃႉသွင်မႃး `.listen()` ထႅင်ႈ၊ App တေ **Error** တၼ်းทีၶႃႈ။
* **ၸႂ်ႉမိူဝ်ႈ:** ၵၢၼ်လူတ်ႇ File, ၵၢၼ်လူတ်ႇ Data တီႈ Internet ဢၼ်သူင်ႇမႃးၸူး User ၵေႃႉလဵဝ်။

### 2. Broadcast Stream (ပိုတ်ႇလမ်ႇၽူင် - ထွမ်ႇလႆႈလၢႆၵေႃႉ)

Stream မဵဝ်းၼႆႉ ၸၢင်ႈမီးၵူၼ်းမႃးထွမ်ႇလႆႈ **လၢႆလၢႆၵေႃႉ (Multiple Listeners)** ၼႂ်းပွၵ်ႈလဵဝ်ၵၼ်။

* ၵူၼ်းထွမ်ႇၵေႃႉဢၼ်မႃးမႂ်ႇ တေလႆးႁပ်ႉၶေႃႈမုၼ်း "တႄႇတီႈမိူဝ်ႈမၼ်းတႄႇထွမ်ႇ" ၼၼ်ႉၵႂႃႇ။ (မၼ်းတေဢမ်ႇလႆႈႁပ်ႉၶေႃႈမုၼ်းဢၼ်လႅၼ်ႈပူၼ်ႉၵႂႃႇယဝ်ႉၼၼ်ႉ)။
* **ၸႂ်ႉမိူဝ်ႈ:** ၵၢၼ်တဵၵ်း Mouse, ၵၢၼ်ၸတ်း Sensor လူမ်းၼၢဝ် ဢၼ်လၢႆလၢႆ Widget ၼႂ်း App လူဝ်ႇပႂ်ႉထွမ်ႇၸွမ်းၵၼ်။

---

### 3. တူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ Broadcast Stream

တွၼ်ႈတႃႇတေပိၼ်ႇ `StreamController` ယူဝ်းယူဝ်း ႁႂ်ႈပဵၼ် Broadcast ၼၼ်ႉ ငၢႆႈၼႃႇၶႃႈ:

```dart
import 'dart:async';

void main() {
  // သၢင်ႈ Broadcast Controller
  final controller = StreamController<String>.broadcast();

  // ၵူၼ်းထွမ်ႇၵေႃႉတီႈ 1
  controller.stream.listen((data) => print("Listener 1: $data"));

  // ၵူၼ်းထွမ်ႇၵေႃႉတီႈ 2 (ႁဵတ်းၵၢၼ်လႆႈ ဢမ်ႇ Error)
  controller.stream.listen((data) => print("Listener 2: $data"));

  controller.sink.add("မႂ်ႇသႂ်ႇၶႃႈ!");
  
  controller.close();
}

```

---

### **Summary Table**

| Feature | Single-Subscription | Broadcast |
| --- | --- | --- |
| **ၵူၼ်းထွမ်ႇ (Listeners)** | လႆႈၵေႃႉလဵဝ်ၵူၺ်း | လႆႈလၢႆလၢႆၵေႃႉ |
| **ထွမ်ႇသွင်ပွၵ်ႈ (Re-listen)** | ဢမ်ႇလႆႈ (Error) | လႆႈတႃႇသေႇ |
| **လၢႆးၸႂ်ႉ** | Default | `.broadcast()` |

---
