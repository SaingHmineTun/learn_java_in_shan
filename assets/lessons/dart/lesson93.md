## 93) Async Generators: Using the 'yield' keyword

ၼႂ်း Dart, ႁဝ်းမီးလၢႆးတႅမ်ႈ Function ဢၼ်ငၢႆႈလိူဝ်ၵၢၼ်ၸႂ်ႉ `StreamController` တွၼ်ႈတႃႇသၢင်ႈ Stream ၶႃႈ။ လၢႆးၼႆႉႁွင်ႉဝႃႈ **Async Generator**။

---

### 1. 'yield' ၼႆႉမၼ်းပဵၼ်သင်?

ၼႂ်း Function ယူဝ်းယူဝ်း, `return` မၢႆထိုင်ဝႃႈ "ယဝ်ႉယဝ်ႉ" သေ ပိတ်း Function ၼၼ်ႉပႅတ်ႈ။ ၵူၺ်းၵႃႈၼႂ်း Stream, ႁဝ်းၶႂ်ႈသူင်ႇၶေႃႈမုၼ်းဢွၵ်ႇမႃး "လၢႆလၢႆပွၵ်ႈ"။

* **`yield`**: မၢႆထိုင်ဝႃႈ "သူင်ႇၶေႃႈမုၼ်းၼႆႉဢွၵ်ႇၵႂႃႇၼႂ်း Pipe"၊ ယဝ်ႉၵေႃႈ သိုပ်ႇႁဵတ်းၵၢၼ်ၼႂ်း Function ၼၼ်ႉတေႃႇ။

---

### 2. ပိူင်တႅမ်ႈ (Syntax)

တွၼ်ႈတႃႇတေတႅမ်ႈ Async Generator ႁဝ်းလူဝ်ႇ:

1. **Return Type**: တေလႆႈပဵၼ် `Stream<T>`။
2. **`async*` Keyword**: သႂ်ႇဝႆႉၼႃႈ Body (လူဝ်ႇမီးၸၵ်းမၢႆ `*`)။
3. **`yield`**: ၸႂ်ႉတွၼ်ႈတႃႇသူင်ႇ Data ဢွၵ်ႇမႃး။

---

### 3. တူဝ်ယၢင်ႇ (Code Example)

ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈႁဵတ်း Function ဢၼ်ၼပ်ႉမၢႆ (Count Down) ၵူႈဝိၼႃႇတီႇ:

```dart
Stream<int> countStream(int max) async* {
  for (int i = max; i >= 1; i--) {
    // ပႂ်ႉ 1 ဝိၼႃႇတီႇ
    await Future.delayed(Duration(seconds: 1));
    
    // သူင်ႇမၢႆၼပ်ႉဢွၵ်ႇၵႂႃႇ ၼႂ်း Stream
    yield i; 
  }
}

void main() async {
  print("Start counting...");
  
  // ၸႂ်ႉ await for တွၼ်ႈတႃႇထွမ်ႇ Stream ၼႂ်း Loop
  await for (int value in countStream(5)) {
    print(value);
  }
  
  print("Done!");
}

```

---

### 4. await for (လၢႆးထွမ်ႇ Stream ထႅင်ႈလၢႆးၼိုင်ႈ)

လိူဝ်သေၵၢၼ်ၸႂ်ႉ `.listen()`, ႁဝ်းၸၢင်ႈၸႂ်ႉ `await for` ၼႂ်း Function ဢၼ်ပဵၼ် `async` ၶႃႈ။ မၼ်းတေ "ပႂ်ႉ" (Await) တေႃႇပေႃးမီး Data မႂ်ႇလႅၼ်ႈမႃးၼႂ်း Stream ၸင်ႇတႄႇပၼ်ႇ Loop ထႅင်ႈပွၵ်ႈၼိုင်ႈ။

---

### **Summary**

* **`async*`**: ၸႂ်ႉသၢင်ႈ Stream Function။
* **`yield`**: သူင်ႇ Data ဢွၵ်ႇမႃး (ၵူၺ်းၵႃႈ ဢမ်ႇပိတ်း Function)။
* **`await for`**: ပႂ်ႉထွမ်ႇ Stream ၸွမ်းလမ်ႇတပ်ႉ။

---

Would you like to move on to **Lesson 94: The StreamBuilder: Connecting Streams to Flutter UI**? ၼႆႉပဵၼ်တွၼ်ႈဢၼ်လမ်ႇလွင်ႈတီႈသုတ်း တွၼ်ႈတႃႇတေဢဝ် Stream ၵႂႃႇၸႂ်ႉၼႂ်း Flutter Screen တႄႇတႄႇယဝ်ႉၶႃႈ!