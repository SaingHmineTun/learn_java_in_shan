## 87) Handling Future Errors and Timeouts

တွၼ်ႈတႃႇတေပဵၼ် Developer ဢၼ်ၵတ်ႉၶႅၼ်ႇၼၼ်ႉ ႁဝ်းဢမ်ႇၸၢင်ႈမၢႆထိုင်ဝႃႈ Internet တေလီယူႇတႃႇသေႇ။ ၼႂ်း Lesson သုတ်းတွၼ်ႈတႃႇ Module 13 ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလၢႆးႁႄႉၵင်ႈမိူဝ်ႈ App ႁဝ်းမီးပၼ်ႁႃၶႃႈ။

---

### 1. Handling Errors with try-catch

မိူဝ်ႈႁဝ်းၸႂ်ႉ `await`၊ ႁဝ်းလူဝ်ႇဢဝ် `try-catch` ႁေႃႇဝႆႉ တႃႇႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈ App ႁဝ်း Crash မိူဝ်ႈ Future သူင်ႇ Error မႃး။

```dart
Future<void> loadData() async {
  try {
    print("Fetching data...");
    String data = await fetchFromServer(); // သင် Server လူႉ...
    print("Data: $data");
  } catch (e) {
    // တီႈၼႆႈပဵၼ်တီႈၸတ်းၵၢၼ်မိူဝ်ႈမီး Error
    print("Oops! မီးပၼ်ႁႃ: $e");
  } finally {
    // ၵၢၼ်ဢၼ်လူဝ်ႇႁဵတ်း တင်းသဵင်ႈ တင်း Success ဢမ်ႇၼၼ် Error
    print("ၵၢၼ်ယဝ်ႉတူဝ်ႈယဝ်ႉ။");
  }
}

```

---

### 2. Handling Slowness with .timeout()

မၢင်ပွၵ်ႈ Server ဢမ်ႇလႆႈလူႉ ၵူၺ်းၵႃႈ Internet ၸႃႉၼႃႇသေ ႁဵတ်းႁႂ်ႈ Future ၼၼ်ႉ "ပႂ်ႉယူႇ" (Pending) တႃႇသေႇ။ ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈ User ပႂ်ႉႁိုင်ပူၼ်ႉတီႈ၊ ၵပ်းၼၼ် ႁဝ်းလူဝ်ႇတတ်းၶၢဝ်းယၢမ်း (Timeout) ယဝ်ႉ။

```dart
Future<void> getDataWithTimeout() async {
  try {
    // သင်ႁိုင်လိူဝ် 5 ဝိၼႃႇတီႇ ႁႂ်ႈမၼ်းတတ်းၵၢၼ်ပႅတ်ႈ
    String result = await fetchDataFromInternet().timeout(
      Duration(seconds: 5),
      onTimeout: () {
        // သႂ်ႇၶေႃႈမုၼ်းတႅၼ်း (Fallback) ဢမ်ႇၼၼ် Throw Error
        return "ၶေႃႈမုၼ်းၵဝ်ႇ (Offline Data)"; 
      },
    );
    print(result);
  } catch (e) {
    print("ၵၢၼ်ႁွင်ႉၶေႃႈမုၼ်း ႁိုင်ပူၼ်ႉတီႈယဝ်ႉ!");
  }
}

```

---
