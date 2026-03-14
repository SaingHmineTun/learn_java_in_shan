## 86) Future.wait() and Iterable Futures

ၼႂ်း Lesson 85, ႁဝ်းလႆႈႁူႉဝႃႈ ၵၢၼ်ႁဵတ်းၵၢၼ်လၢႆဢၼ်ပိုင်ႈၵၼ် (Parallel) ၼၼ်ႉ ႁဵတ်းႁႂ်ႈ App ဝႆလိူဝ်ၵဝ်ႇ။ ၵူၺ်းၵႃႈ သင်ႁဝ်းမီး Future 10 ဢၼ်၊ ၵၢၼ်တႅမ်ႈ `await` 10 ထႅဝ်ၼၼ်ႉ မၼ်းလူတူၺ်းယၢပ်ႇၶႃႈ။ လၢႆးၵႄႈမၼ်းၵေႃႈပဵၼ် **`Future.wait()`** ယဝ်ႉ။

---

### 1. Future.wait() ႁဵတ်းၵၢၼ်ၸိူဝ်ႉႁိုဝ်?

`Future.wait()` ႁပ်ႉဢဝ် **List** ႁင်း Futures သေ တႄႇႁဵတ်းၵၢၼ် "ၵူႈဢၼ်" ၼႂ်းပွၵ်ႈလဵဝ်ၵၼ်။ မၼ်းတေပႂ်ႉ (Await) တေႃႇပေႃးၵၢၼ် "တင်းသဵင်ႈ" ယဝ်ႉတူဝ်ႈ ၸင်ႇသူင်ႇ Result ဢွၵ်ႇမႃးပဵၼ် List ၶႃႈ။

### 2. တူဝ်ယၢင်ႇ (Code Example)

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းလူဝ်ႇလူတ်ႇၶေႃႈမုၼ်း 3 ပိူင် တီႈ Dashboard ၼႂ်းပွၵ်ႈလဵဝ်ၵၼ်:

```dart
Future<void> loadDashboard() async {
  print("Loading Dashboard...");

  // တႄႇႁဵတ်းၵၢၼ်တင်း 3 ဢၼ်ၼႂ်းပွၵ်ႈလဵဝ်ၵၼ်
  // တေၵိၼ်ၶၢဝ်းယၢမ်း တတ်းၵၼ်တီႈဢၼ်ႁိုင်လိူဝ်ပိူၼ်ႈၵူၺ်း
  List<dynamic> results = await Future.wait([
    fetchWeather(), // 1 sec
    fetchNews(),    // 2 sec
    fetchStocks(),  // 1.5 sec
  ]);

  // Results တေဢွၵ်ႇမႃးၸွမ်းလမ်ႇတပ်ႉ (Order) ဢၼ်ႁဝ်းသႂ်ႇဝႆႉ
  var weather = results[0];
  var news = results[1];
  var stocks = results[2];

  print("Dashboard Loaded: $weather, $news, $stocks");
}

```

---

### 3. ပိူင်လမ်ႇလွင်ႈ (Key Features)

* **Concurrency (ၵၢၼ်ပိုင်ႈၵၼ်):** မၼ်းႁဵတ်းႁႂ်ႈ App ႁဝ်းဢမ်ႇလူဝ်ႇပႂ်ႉထႅဝ်သိုဝ်ႉၶဝ်ႈ (Sequential)၊ မၼ်းလူတ်ႇ Data တင်းသဵင်ႈၵမ်းလဵဝ်။
* **Order (လမ်ႇတပ်ႉ):** Result ဢၼ်လႆႈမႃးၼႂ်း List ၼၼ်ႉ တေယူႇၸွမ်းမၢႆ (Index) ဢၼ်ႁဝ်းသႂ်ႇဝႆႉၼႂ်း `Future.wait` တေႃႇပေႃးယဝ်ႉ။
* **Fail Fast:** ၼႆႉလမ်ႇလွင်ႈၼႃႇၶႃႈ—သင်မီး Future **ၼိုင်ႈဢၼ်** ၼႂ်း List ၼၼ်ႉ Error (Fail) ၵႂႃႇ၊ `Future.wait` တေ Fail တင်းသဵင်ႈၵမ်းလဵဝ် (မၼ်းတေဢမ်ႇပႂ်ႉဢၼ်ၵူႈဢၼ်ယဝ်ႉ)။

---

### **Summary**

ၸႂ်ႉ `Future.wait()` မိူဝ်ႈ:

1. မီးၵၢၼ် Asynchronous လၢႆဢၼ်လူဝ်ႇႁဵတ်း။
2. ၵၢၼ်ၸိူဝ်းၼၼ်ႉ ဢမ်ႇၵိူဝ်းၵုမ်ႇၵၼ်။
3. လူဝ်ႇလႆႈ Data တင်းသဵင်ႈယဝ်ႉ ၸင်ႇတေႁဵတ်းၵၢၼ်တၢင်ႇဢၼ်တေႃႇ။

---
