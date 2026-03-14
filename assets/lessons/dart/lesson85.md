## 85) Declaring Future-Returning Functions

မိူဝ်ႈႁဝ်းတႅမ်ႈ App တႄႇတႄႇၼၼ်ႉ ႁဝ်းလူဝ်ႇတႅမ်ႈ Function ဢၼ်ႁဵတ်းၵၢၼ် Asynchronous ႁင်းၵူၺ်းႁဝ်းၶိုၼ်းၶႃႈ။ လၢႆးတႅမ်ႈမၼ်းမီးပိူင်လမ်ႇလွင်ႈယူႇ 3 ပိူင်:

---

### 1. ပိူင်တႅမ်ႈ (Syntax)

တွၼ်ႈတႃႇတေမၵ်းမၼ်ႈ Function ၼိုင်ႈဢၼ် ႁႂ်ႈပဵၼ် Asynchronous ၼၼ်ႉ:

1. **Return Type**: တေလႆႈပဵၼ် `Future<T>` (T ၼႆႉပဵၼ် Type ၶေႃႈမုၼ်း ဢၼ်ႁဝ်းၶႂ်ႈသူင်ႇဢွၵ်ႇ)။
2. **`async` Keyword**: တေလႆႈသႂ်ႇဝႆႉၼႃႈ Body `{}`။
3. **`return` Value**: သူင်ႇၶေႃႈမုၼ်းဢွၵ်ႇမႃးၸွမ်းပိူင်ယူႇးယူႇး၊ Dart တေဢဝ်မၼ်းသႂ်ႇၼႂ်း "ၵူၵ်း" Future ပၼ်ႁင်းမၼ်းၶႃႈ။

```dart
// Function ၼႆႉသူင်ႇ String ဢွၵ်ႇမႃးၼႂ်းဝၼ်းၼႃႈ
Future<String> fetchStatus() async {
  await Future.delayed(Duration(seconds: 2));
  return "ၵၢၼ်ယဝ်ႉတူဝ်ႈလီ"; 
}

```

---

### 2. Sequential vs Parallel (ၵၢၼ်ႁဵတ်းၸွမ်းထႅဝ် vs ၵၢၼ်ႁဵတ်းပိုင်ႈၵၼ်)

ၼႆႉပဵၼ်လွင်ႈတႅပ်းတတ်းၸႂ် ဢၼ်လမ်ႇလွင်ႈတီႈသုတ်း ၼႂ်းၵၢၼ်တႅမ်ႈ Code ႁႂ်ႈမၼ်းဝႆၶႃႈ။

#### **Sequential Execution (ႁဵတ်းၸွမ်းထႅဝ်)**

သင်ၸဝ်ႈၵဝ်ႇ `await` ၵူႈထႅဝ်၊ ၵၢၼ်ဢၼ်ၼိုင်ႈတေလႆႈယဝ်ႉ ၸင်ႇတေတႄႇထႅင်ႈဢၼ်ၼိုင်ႈ။

* **ၸႂ်ႉမိူဝ်ႈ**: ၵၢၼ်ထႅၼ်ႈသွင် လူဝ်ႇလႆႈ Data တီႈၵၢၼ်ထႅဝ်ၼိုင်ႈ။

```dart
// ၵိၼ်ၶၢဝ်းယၢမ်း 4 ဝိၼႃႇတီႇ
var user = await fetchUser(); // ပႂ်ႉ 2 sec
var posts = await fetchPosts(user.id); // ပႂ်ႉထႅင်ႈ 2 sec

```

#### **Parallel Execution (ႁဵတ်းပိုင်ႈၵၼ်)**

သင်ၵၢၼ်သွင်ဢၼ်ၼၼ်ႉ ဢမ်ႇၵိူဝ်းၵုမ်ႇၵၼ် (Independent)၊ ႁဝ်းဢမ်ႇလူဝ်ႇပႂ်ႉႁႂ်ႈဢၼ်ၼိုင်ႈယဝ်ႉ။ ႁဝ်းတႄႇႁဵတ်းတင်းသွင်ဢၼ် ၼႂ်းပွၵ်ႈလဵဝ်ၵၼ်လႆႈ။

```dart
// ၵိၼ်ၶၢဝ်းယၢမ်း 2 ဝိၼႃႇတီႇ (ၶၢဝ်းယၢမ်းဢၼ်ႁိုင်လိူဝ်ပိူၼ်ႈ)
Future<String> weatherFuture = fetchWeather(); // တႄႇႁဵတ်း၊ ဢမ်ႇပႆႇပႂ်ႉ
Future<String> newsFuture = fetchNews();       // တႄႇႁဵတ်း၊ ဢမ်ႇပႆႇပႂ်ႉ

var weather = await weatherFuture; // ၸင်ႇမႃးပႂ်ႉဢဝ် Result
var news = await newsFuture;       // ၸင်ႇမႃးပႂ်ႉဢဝ် Result

```

---

### 3. Void Futures

သင် Function ၸဝ်ႈၵဝ်ႇ ဢမ်ႇမီးၶေႃႈမုၼ်းသင်တေသူင်ႇဢွၵ်ႇ (မိူၼ်ၼင်ႇ ၵူၺ်းလူဝ်ႇ Save Data)၊ ၸဝ်ႈၵဝ်ႇလူဝ်ႇၸႂ်ႉ `Future<void>` ၶႃႈ။

```dart
Future<void> logActivity() async {
  await saveToDatabase();
  print("Saved!");
}

```

---

### **Summary**

* ၸႂ်ႉ `Future<T>` တႃႇမၵ်းမၼ်ႈ Type ၶေႃႈမုၼ်း။
* ၸႂ်ႉ `await` ၸွမ်းထႅဝ် မိူဝ်ႈၵၢၼ်မၼ်းၵိူဝ်းၵုမ်ႇၵၼ်။
* တႄႇ Future ဝႆႉဢွၼ်တၢင်း (Parallel) မိူဝ်ႈၵၢၼ်မၼ်းဢမ်ႇၵိူဝ်းၵုမ်ႇၵၼ်။

---
