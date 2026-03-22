# Lesson 26: "The Convert Class and Data Parsing"

ၼႂ်း Lesson 8 ႁဝ်းႁူႉယဝ်ႉဝႃႈ `Console.ReadLine()` ၼႆႉမၼ်းသူင်ႇ "String" မႃးပၼ်ႁဝ်းတႃႇသေႇ။ 
ပေႃးၵူၼ်းၸႂ်ႉတႅမ်ႈမၢႆၼပ်ႉ "25" မႃး၊ မၼ်းတေပဵၼ်လိၵ်ႈသေ ႁဝ်းဢဝ်ၵႂႃႇ + - * / ၵမ်းလဵဝ်ဢမ်ႇလႆႈ။ 
ႁဝ်းလူဝ်ႇ **Parsing** ဢေႃႈ။

### 1. The Convert Class
**Convert** ၼႆႉပဵၼ် Class ဢၼ်မီး Method လၢႆလၢႆဢၼ် တႃႇပိၼ်ႇ Type ၼိုင်ႈဢၼ် ႁႂ်ႈပဵၼ် Type ၼိုင်ႈဢၼ် ငၢႆႈငၢႆႈယဝ်ႉ။
* **တူဝ်ယင်ႇ:**
  ```csharp
  string input = "100";
  int myNumber = Convert.ToInt32(input); // ပိၼ်ႇလိၵ်ႈပဵၼ် int
  ```

### 2. int.Parse vs. int.TryParse
ၼႆႉပဵၼ်လၢႆးပိၼ်ႇ ဢၼ် Developer ၸႂ်ႉၼမ်သေပိူၼ်ႈ၊ ၵူၺ်းၵႃႈမၼ်းပႅၵ်ႇၵၼ်တီႈ "လွင်ႈလွတ်ႈၽေး" ၶႃႈ။

#### **A. int.Parse()**
* **ၵၢၼ်ႁဵတ်း:** ပိၼ်ႇ String ႁႂ်ႈပဵၼ် Integer ၵမ်းလဵဝ်။
* **သတိ:** ပေႃး String ၼၼ်ႉ ဢမ်ႇၸႂ်ႈမၢႆၼပ်ႉ (တူဝ်ယင်ႇ: "ABC")၊ App ႁဝ်းတေလူႉ **Crash** (Runtime Error) ၵမ်းလဵဝ်။
  ```csharp
  int num = int.Parse("25"); // Safe
  // int error = int.Parse("Mao"); // App Crashes!
  ```

#### **B. int.TryParse()**
* **ၵၢၼ်ႁဵတ်း:** မၼ်းတေ "ၸၢမ်း" ပိၼ်ႇတူၺ်းဢွၼ်တၢင်း။ ပေႃးပိၼ်ႇလႆႈ မၼ်းတေပၼ် `true`၊ ပေႃးပိၼ်ႇဢမ်ႇလႆႈ မၼ်းတေပၼ် `false` သေ App ႁဝ်းတေဢမ်ႇလူႉ။
* **တူဝ်ယင်ႇ:**
  ```csharp
  string userInput = "25";
  bool success = int.TryParse(userInput, out int result);
  
  if (success) {
      Console.WriteLine($"Success: {result}");
  } else {
      Console.WriteLine("Invalid input! Please enter a number.");
  }
  ```


### 3. မိူဝ်ႈလႂ်လူဝ်ႇၸႂ်ႉသင်?
* **ၸႂ်ႉ Parse:** မိူဝ်ႈႁဝ်း "မၼ်ႈၸႂ် 100%" ဝႃႈ ၶေႃႈမုၼ်းၼၼ်ႉတေလႆႈပဵၼ်မၢႆၼပ်ႉတႃႇသေႇ။
* **ၸႂ်ႉ TryParse:** မိူဝ်ႈႁပ်ႉၶေႃႈမုၼ်းတီႈ "ၵူၼ်းၸႂ်ႉ" (User Input) ယွၼ်ႉမၼ်းၸၢင်ႈတႅမ်ႈၽိတ်းလႆႈၵူႈၶၢဝ်း။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Parsing:** ၵၢၼ်ပိၼ်ႇၶေႃႈမုၼ်းလုၵ်ႉတီႈ String (Text) ႁႂ်ႈပဵၼ် Data Type ဢၼ်ၼပ်ႉသၢင်ႈလႆႈ (မိူၼ်ၼင်ႇ int, double)။
* **Out Keyword:** ၶေႃႈၵႂၢမ်းဢၼ်ၸႂ်ႉၼႂ်း `TryParse` တႃႇ "သူင်ႇၵႃႈၶၼ်" ဢွၵ်ႇမႃးသႂ်ႇၼႂ်း Variable ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ။
* **Exception:** ၶေႃႈၽိတ်းပိူင် (Error) ဢၼ်ပဵၼ်မိူဝ်ႈ App ႁဵတ်းၵၢၼ်ယူႇ (မိူၼ်ၼင်ႇ FormatException မိူဝ်ႈ Parse ၽိတ်း)။
* **Validation:** ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမုၼ်းဝႃႈ မၼ်းမၢၼ်ႇမႅၼ်ႈၸွမ်းပိူင် ဢၼ်ႁဝ်းၶႂ်ႈလႆႈယူႇႁႃႉ။

---