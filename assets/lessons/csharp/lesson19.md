# Lesson 19: "String Interpolation vs. Concatenation"

မိူဝ်ႈႁဝ်းတႅမ်ႈ App တႃႇပိၼ်ႇၽႃႇသႃႇ (Translator) ႁဝ်းလူဝ်ႇဢဝ် ၸိုဝ်ႈၵူၼ်းၸႂ်ႉ လႄႈ ၶေႃႈၵႂၢမ်း ၸိူဝ်းၼႆႉမႃးသိုပ်ႇၵၼ်ဢေႃႈ။

### 1. String Concatenation (လၢႆးသိုပ်ႇတင်းမၢႆ `+`)
ၼႆႉပဵၼ်လၢႆးၵဝ်ႇ ဢၼ်ႁဝ်းဢဝ် String လၢႆလၢႆဢၼ် မႃး "ၸပ်း" ၵၼ် လူၺ်ႈၸႂ်ႉတိုဝ်းၶိူင်ႈမၢႆ **Plus (+)**။
* **တူဝ်ယင်ႇ:**
  ```csharp
  string firstName = "Sai";
  string lastName = "Mao";
  string fullName = firstName + " " + lastName; // "Sai Mao"
  ```
> **သတိ:** ပေႃးမီး Variable ၼမ်ၼႃႇ လၢႆးၼႆႉတေႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူယၢပ်ႇ (Messy) ၶႃႈ။

### 2. String Interpolation (လၢႆးသႂ်ႇမၢႆ `$`)
ၼႆႉပဵၼ်လၢႆးသႅၼ်းမႂ်ႇ ဢၼ် Developer တေႃႈလဵဝ်ၸႂ်ႉၼမ်သေပိူၼ်ႈ။ ႁဝ်းတေၸႂ်ႉမၢႆ **Dollar Sign ($)** ဝႆႉၽၢႆႇၼႃႈ String သေ သႂ်ႇ Variable ဝႆႉၼႂ်း **Curly Braces `{ }`** ဢေႃႈ။
* **တူဝ်ယင်ႇ:**
  ```csharp
  string city = "Muse";
  string message = $"I am from {city}."; // "I am from Muse."
  ```


### 3. Verbatim Strings (လၢႆးသႂ်ႇမၢႆ `@`)
မိူဝ်ႈႁဝ်းလူဝ်ႇတႅမ်ႈ String ဢၼ်ယၢဝ်းယၢဝ်း (လၢႆထႅဝ်) ဢမ်ႇၼၼ် String ဢၼ်ပႃး Backslash ၼမ် (မိူၼ်ၼင်ႇ File Path)၊ ႁဝ်းတေၸႂ်ႉမၢႆ **At symbol (@)** ဢေႃႈ။ မၼ်းတေဢမ်ႇသူၼ်ၸႂ် Escape Sequences (မိူၼ်ၼင်ႇ `\n`)။
* **တူဝ်ယင်ႇ:**
  ```csharp
  string path = @"C:\Users\SaiMao\Desktop"; 
  string multiline = @"This is line 1.
  This is line 2.";
  ```

### 4. ၵၢၼ်ၸႂ်ႉႁူမ်ႈၵၼ် (`$@`)
ႁဝ်းၸၢင်ႈၸႂ်ႉတင်းသွင်ယၢင်ႇ ႁူမ်ႈၵၼ်လႆႈယူႇၶႃႈ:
```csharp
string name = "Sai Mao";
string folder = $@"C:\Users\{name}\Documents";
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Concatenation:** ၵၢၼ်ဢဝ် String လၢႆလၢႆဢၼ် မႃးသိုပ်ႇၵၼ် ႁႂ်ႈပဵၼ်ထႅဝ်လဵဝ်။
* **Interpolation:** လၢႆးသိုပ်ႇလိၵ်ႈ ဢၼ်သႂ်ႇ Variable ဝႆႉၼႂ်း String ၵမ်းလဵဝ် (ၸႂ်ႉ `$`)။
* **Verbatim String:** String ဢၼ်မၢႆတွင်း "တၢင်းႁၢင်ႈ" မၼ်းတႅတ်ႉတႅတ်ႉ (ၸႂ်ႉ `@`)။
* **Placeholder:** ဢွင်ႈတီႈၼႂ်း `{ }` ဢၼ်ဝႆႉတႃႇတႅၼ်းတၢင်းတင်း ၵႃႈၶၼ် Variable။

---