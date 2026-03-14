## 90) Listening to Streams: Subscription and Cancellation

မိူဝ်ႈႁဝ်းၸႂ်ႉ `.listen()` တီႈ Stream ၼိုင်ႈဢၼ်၊ မၼ်းတေသူင်ႇ Object ဢၼ်ၼိုင်ႈပွၵ်ႈမႃး ဢၼ်ႁွင်ႉဝႃႈ **StreamSubscription**။ ဢၼ်ၼႆႉယဝ်ႉ ပဵၼ်တူဝ်ဢၼ်ႁဝ်းတေၸႂ်ႉ "ၵုမ်းထိင်း" ၵၢၼ်ထွမ်ႇၶေႃႈမုၼ်းၶႃႈ။

---

### 1. StreamSubscription ၵုမ်းထိင်းသင်လႆႈ?

မိူၼ်ၼင်ႇၸဝ်ႈၵဝ်ႇ Subscribe ဝႆႉၼႂ်း YouTube ၼၼ်ႉယဝ်ႉ။ ၸဝ်ႈၵဝ်ႇၸၢင်ႈၵုမ်းထိင်းမၼ်းလႆႈ ၸိူင်ႉၼႆ:

* **cancel()**: ပိတ်းၵၢၼ်ထွမ်ႇပႅတ်ႈတႄႉတႄႉ။ (တေဢမ်ႇလႆႈႁပ်ႉၶေႃႈမုၼ်းထႅင်ႈယဝ်ႉ)။
* **pause()**: ၵိုတ်းၵၢၼ်ႁပ်ႉၶေႃႈမုၼ်းဝႆႉၸူဝ်ႈၶၢဝ်း။
* **resume()**: သိုပ်ႇႁပ်ႉၶေႃႈမုၼ်းတေႃႇ ထႅင်ႈပွၵ်ႈၼိုင်ႈ။

---

### 2. တူဝ်ယၢင်ႇ ၵၢၼ်ၸႂ်ႉတူဝ်တႄႇ (Code Example)

```dart
import 'dart:async';

void main() {
  final controller = StreamController<int>();

  // 1. သိမ်း Subscription ဝႆႉၼႂ်း Variable
  StreamSubscription<int> subscription = controller.stream.listen((data) {
    print("လႆႈႁပ်ႉမၢႆ: $data");
  });

  controller.sink.add(1);
  controller.sink.add(2);

  // 2. ၵိုတ်းပႂ်ႉၸူဝ်ႈၶၢဝ်း
  subscription.pause();
  print("--- ၵိုတ်းဝႆႉၸူဝ်ႈၶၢဝ်း ---");
  
  controller.sink.add(3); // ဢၼ်ၼႆႉတေဢမ်ႇပႆႇဢွၵ်ႇမႃး

  // 3. သိုပ်ႇႁဵတ်းၵၢၼ်တေႃႇ
  subscription.resume();
  
  // 4. ပိတ်းၵၢၼ်ထွမ်ႇ (လမ်ႇလွင်ႈၼႃႇ တွၼ်ႈတႃႇ Flutter)
  // မိူဝ်ႈပိတ်းၼႃႈ Screen လူဝ်ႇ Cancel တႃႇသေႇ
  // subscription.cancel();
}

```

---

### 3. လွင်ႈတေလႆႈသတိ (Safety First)

ၼႂ်း Flutter, သင်ၸဝ်ႈၵဝ်ႇ `listen` ဝႆႉၼႂ်း `initState()`၊ ၸဝ်ႈၵဝ်ႇ **တေလႆႈ** `cancel()` မၼ်းပႅတ်ႈၼႂ်း `dispose()` တႃႇသေႇၶႃႈ။

* **သင်ဢမ်ႇ Cancel**: App ၸဝ်ႈၵဝ်ႇတေလႅၼ်ႈ Code ၼၼ်ႉယူႇတႃႇသေႇ ၼႂ်း Background (ႁွင်ႉဝႃႈ **Memory Leak**)၊ မၼ်းတေႁဵတ်းႁႂ်ႈ App ၸႃႉ လႄႈ ၵိၼ် Battery ၼမ်ၶႃႈ။

---

### **Summary**

* **listen()**: သူင်ႇ `StreamSubscription` ပွၵ်ႈမႃး။
* **pause() / resume()**: ၵုမ်းထိင်းၶၢဝ်းယၢမ်းႁပ်ႉ Data။
* **cancel()**: ပိတ်းၵၢၼ်ထွမ်ႇ တွၼ်ႈတႃႇႁႄႉၵင်ႈ Memory Leak။

---
