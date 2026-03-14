## 82) Future States: Uncompleted vs Completed

ၼႂ်း Dart, **Future** ၼႆႉပဵၼ် Object ဢၼ်တႅၼ်းတၢင် "ၶေႃႈမုၼ်းဢၼ်တေမႃးထိုင်ၼႂ်းဝၼ်းၼႃႈ"။ မိူဝ်ႈႁဝ်းႁဵတ်းၵၢၼ် Asynchronous (မိူၼ်ၼင်ႇ လူတ်ႇ Data တီႈ Internet), ႁဝ်းတေလႆႈ Future မႃးဢွၼ်တၢင်းၶႃႈ။

သၢႆငၢႆ (Lifecycle) ႁင်း Future မီးယူႇသွင်တွၼ်ႈလူင်မၼ်းၶႃႈ:

---

### 1. Uncompleted (Pending)

ၼႆႉပဵၼ်သၢႆငၢႆ မိူဝ်ႈႁဝ်းတႄႇႁွင်ႉၸႂ်ႉ Function Asynchronous ၼၼ်ႉယဝ်ႉ။

* ၵၢၼ် (Operation) ၼၼ်ႉ **တိုၵ်ႉႁဵတ်းယူႇ**။
* မၼ်းဢမ်ႇပႆႇသူင်ႇ Result သင်ပွၵ်ႈမႃး။
* ၸဝ်ႈၵဝ်ႇတိုၵ်ႉပႂ်ႉယူႇ။

### 2. Completed

မိူဝ်ႈၵၢၼ် Asynchronous ၼၼ်ႉယဝ်ႉတူဝ်ႈၵႂႃႇ၊ Future ၼၼ်ႉတေ "Completed" (ယဝ်ႉတူဝ်ႈ)။ မၼ်းၸၢင်ႈဢွၵ်ႇမႃးလႆႈ 2 လၢႆး:

* **Completed with Value**: ၵၢၼ်ၼၼ်ႉယဝ်ႉတူဝ်ႈလီ လႄႈ လႆႈၶေႃႈမုၼ်း (Data) ဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼၼ်ႉမႃး။ တူဝ်ယၢင်ႇ: `Future<String>` တေသူင်ႇ String မႃး။
* **Completed with Error**: မီးပၼ်ႁႃသေယၢင်ႇ (မိူၼ်ၼင်ႇ Internet လူႉ ဢမ်ႇၼၼ် Server ၵျေႃႇ)။ Future ၼၼ်ႉတေသူင်ႇ Error မႃးတႅၼ်း Data။

---

### 3. တူဝ်ယၢင်ႇ (Code Example)

```dart
Future<String> fetchUserData() {
  // ၼႆႉပဵၼ် Future ဢၼ်တေပႂ်ႉ 2 ဝိၼႃႇတီႇ
  return Future.delayed(Duration(seconds: 2), () {
    return "Sai Sai"; // Completed with Value
    // throw Exception("Server Down!"); // Completed with Error
  });
}

```

---

### **Summary**

* **Uncompleted**: တိုၵ်ႉႁဵတ်းယူႇ၊ ပႆႇမီး Result။
* **Completed**: ႁဵတ်းယဝ်ႉယဝ်ႉ (လႆႈ Data ဢမ်ႇၼၼ် လႆႈ Error)။

တွၼ်ႈတႃႇတေ "ၸတ်းၵၢၼ်" မိူဝ်ႈ Future မၼ်း Completed ယဝ်ႉၼၼ်ႉ ႁဝ်းလူဝ်ႇၸႂ်ႉ **.then()** ဢမ်ႇၼၼ် **await** ဢၼ်ႁဝ်းတေႁဵၼ်းၼႂ်း Lesson ၼႃႈၼၼ်ႉယဝ်ႉၶႃႈ။

---