# Lesson 230: "Working with File Paths & Cross-Platform Safety"

သင်ႁဝ်းတႅမ်ႈ Code ဝႃႈ `"C:\\Data\\Note.txt"` ၼႆ
မၼ်းတေလႅၼ်ႈလႆႈၼႂ်း Windows ၵူၺ်းၶႃႈ။ 
သင်ဢဝ်ၵႂႃႇလႅၼ်ႈၼႂ်း Android မၼ်းတေ Crash ၵမ်းလဵဝ် ယွၼ်ႉ Android ၸႂ်ႉ `/` (Forward Slash) တႅၼ်း `\` (Backslash) ၶႃႈ။

### 1. Class Path ပဵၼ်သင်?
**`Path`** ပဵၼ် Static Class ၼႂ်း `System.IO` ဢၼ်ၸွႆးႁဵတ်းႁႂ်ႈ "သဵၼ်ႈတၢင်း File" ႁဝ်းမႅၼ်ႈၸွမ်းပိူင် Windows, Android, လႄႈ iOS ႁင်းၵူၺ်း (Cross-Platform) ၶႃႈ။

### 2. Path.Combine (ၵွင်ႉသဵၼ်ႈတၢင်း)
ၼႆႉပဵၼ် Method ဢၼ်ႁဝ်းတေၸႂ်ႉၼမ်သုတ်းၶႃႈ။ 
မၼ်းတေဢဝ် Folder လႄႈ File Name မႃးၵွင်ႉၵၼ် သေထႅမ် `/` ဢမ်ႇၼၼ် `\` ပၼ်ႁင်းၵူၺ်း ၸွမ်းၼင်ႇ OS ဢၼ် App ႁဝ်းတိုၵ်ႉလႅၼ်ႈယူႇၼၼ်ႉၶႃႈ။

```csharp
string folder = "MyDiary";
string fileName = "day1.txt";

// လၢႆးတႅမ်ႈဢၼ်လီ (Safe)
string fullPath = Path.Combine(folder, fileName);

// Windows: MyDiary\day1.txt
// Android: MyDiary/day1.txt
```



### 3. ၵၢၼ်ၸႅၵ်ႇတွၼ်ႈ File (Parsing Paths)
မၢင်ပွၵ်ႈႁဝ်းမီး Path ယၢဝ်းယၢဝ်းသေ ၶႂ်ႈလႆႈ "ၸိုဝ်ႈ File" မၼ်းၵူၺ်း ဢမ်ႇၼၼ် "ပၢႆလိၵ်ႈ" (.txt) မၼ်းၵူၺ်းၼႆ ၸႂ်ႉလႆးၼင်ႇၼႆၶႃႈ။

* **`Path.GetFileName(path)`**: ဢဝ်ၸိုဝ်ႈ File တင်းမူတ်း (`day1.txt`)။
* **`Path.GetExtension(path)`**: ဢဝ်ပၢႆလိၵ်ႈၵူၺ်း (`.txt`)။
* **`Path.GetFileNameWithoutExtension(path)`**: ဢဝ်ၸိုဝ်ႈ File လၢႆလၢႆ ဢၼ်ဢမ်ႇပႃး ပၢႆလိၵ်ႈ (`day1.txt` -> `day1`)။
* **`Path.GetDirectoryName(path)`**: ဢဝ်ၸိုဝ်ႈ Folder ဢၼ်မၼ်းယူႇဝႆႉၼၼ်ႉၵူၺ်း။

### 4. Path.GetTempPath()
တွၼ်ႈတႃႇ Android ဢမ်ႇၼၼ် App တၢင်ႇပိူင်ၼႆ မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇ "တီႈယူႇၸူဝ်ႈၶၢဝ်ႇ" တႃႇသိမ်း Data။
```csharp
string tempDir = Path.GetTempPath();
// မၼ်းတေႁႃ Folder Temp ၼႂ်းၶွမ်း ဢမ်ႇၼၼ် ၼႂ်းၾူၼ်း ပၼ်ႁင်းၵူၺ်းၶႃႈ။
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Path Separator:** တူဝ်တတ်းသဵၼ်ႈတၢင်း (`\` ၼႂ်း Windows, `/ ၼႂ်း Linux/Android`)။
* **Cross-Platform:** ၵၢၼ်ဢၼ် App ၼိုင်ႈဢၼ် ၸၢင်ႈလႅၼ်ႈလႆႈၼိူဝ် Windows, Android, Mac ၸိူဝ်းၼၼ်ႉ။
* **Extension:** ပၢႆလိၵ်ႈ File ဢၼ်ၼႄဝႃႈမၼ်းပဵၼ် Type သင် (`.jpg`, `.json`, `.txt`)။
* **Absolute Path:** သဵၼ်ႈတၢင်းတဵမ်ထူၼ်ႈ တႄႇတီႈ Root (မိူၼ်ၼင်ႇ `C:\Users\...`)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁႂ်ႈႁဝ်းၸၢမ်းတႅမ်ႈ Code **`ShanPathFixer`**။
1.  မီး Variable `string myFolder = "ShanLessons";` လႄႈ `string myFile = "lesson1.pdf";`။
2.  ၸႂ်ႉ **`Path.Combine`** တႃႇႁဵတ်း Full Path။
3.  ၸႂ်ႉ **`Path.GetExtension`** တႃႇပိုၼ်ႈၶၢဝ်ႇ (Notify) ဝႃႈ File ၼႆႉပဵၼ် Type သင်?