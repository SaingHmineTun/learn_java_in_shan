# Lesson 229: "Managing Directories: Creating and Deleting Folders"

ၼႂ်း C# ႁဝ်းၸႂ်ႉ Class **`Directory`** (Static Class) တႃႇၸတ်းၵၢၼ် Folder ၶႃႈ။ 
မၼ်းငၢႆႈၼႃႇ၊ မိူၼ်ၼင်ႇႁဝ်းၸႂ်ႉ Mouse ၼဵၵ်း New Folder ၼႂ်း Windows ၼၼ်ႉယဝ်ႉ။

### 1. ၵၢၼ်ၵူတ်ႇထတ်း (Exists)
ဢွၼ်တၢင်းတေႁဵတ်းသင်သေယိူင်ႈၼၼ်ႉ ႁဝ်းတေလႆႈၵူတ်ႇထတ်းဢွၼ်တၢင်းဝႃႈ Folder ၼၼ်ႉမီးဝႆႉယူႇယဝ်ႉႁႃႉ?
```csharp
string folderPath = "ShanData";

if (Directory.Exists(folderPath)) {
    Console.WriteLine("Folder ၼႆႉမီးဝႆႉယဝ်ႉၶႃႈ။");
}
```

### 2. ၵၢၼ်သၢင်ႈ Folder (CreateDirectory)
သင်ဢမ်ႇပႆႇမီး... ႁဝ်းသၢင်ႈမၼ်းလႆႈငၢႆႈငၢႆႈ ၶႃႈ။
```csharp
Directory.CreateDirectory("ShanData");
Console.WriteLine("သၢင်ႈ Folder 'ShanData' ယဝ်ႉတူဝ်ႈယဝ်ႉ။");
```



### 3. ၵၢၼ်လူတ်ႇပႅတ်ႈ (Delete)
မိူဝ်ႈႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉယဝ်ႉ ႁဝ်းလူတ်ႇမၼ်းဢွၵ်ႇပႅတ်ႈလႆႈၶႃႈ။
* **`false` (Default):** လူတ်ႇပႅတ်ႈလႆႈ မိူဝ်ႈ Folder ၼၼ်ႉပႅတ်ႈလၢႆ (Empty)။
* **`true` (Recursive):** လူတ်ႇပႅတ်ႈတင်း Folder လႄႈ File တင်းမူတ်း ဢၼ်ယူႇၼႂ်းမၼ်း။

```csharp
// Directory.Delete(path, recursive)
Directory.Delete("ShanData", true); 
```

### 4. ၵၢၼ်ႁႃသဵၼ်ႈမၢႆ File (GetFiles)
ႁဝ်းၸၢင်ႈႁႃတူၺ်းဝႃႈ ၼႂ်း Folder ၼၼ်ႉ မီး File သင်လၢႆလၢႆၶႃႈ။
```csharp
string[] files = Directory.GetFiles("ShanData");

foreach (var file in files) {
    Console.WriteLine($"ႁႃႁၼ် File: {file}");
}
```

### 5. ပၵ်းၵၢၼ်တွင်း တွၼ်ႈတႃႇ Directory
* **Static Methods:** Class `Directory` ၼႆႉ ႁဝ်းဢမ်ႇလူဝ်ႇ `new` ၶႃႈ၊ ႁွင်ႉၸႂ်ႉၸိုဝ်ႈ Class မၼ်းသေ သိုပ်ႇ Method လႆႈၵမ်းလဵဝ်။
* **Permissions:** မၢင်ပွၵ်ႈ App ႁဝ်းတေဢမ်ႇၸၢင်ႈသၢင်ႈ Folder လႆႈ သင် Windows ဢမ်ႇပၼ်သုၼ်ႇ (Permission) ၶႃႈ။
* **Exception:** သင်ႁဝ်းၵႂႃႇ Delete Folder ဢၼ်ဢမ်ႇမီးယူႇတႄႉၸိုင် App ႁဝ်းတေ Crash ၶႃႈ။ ယွၼ်ႉၼၼ် ထုၵ်ႇလီၸႂ်ႉ `Directory.Exists()` ၵူတ်ႇထတ်းဢွၼ်တၢင်းတႃႇသေႇ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Directory:** ၶေႃႈၵႂၢမ်း Technical ၶွင် "Folder"။
* **Static Class:** Class ဢၼ်ႁွင်ႉၸႂ်ႉလႆႈၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇလူဝ်ႇသၢင်ႈ Instance (new)။
* **Recursive Delete:** ၵၢၼ်လူတ်ႇပႅတ်ႈတင်းမူတ်း တႄႇတီႈ Folder မႄႈ ၵႂႃႇတေႃႇ File လုၵ်ႈ ဢၼ်ယူႇၼႂ်းမၼ်းတင်းသဵင်ႈ။
* **Path:** သဵၼ်ႈတၢင်း (Address) ၶွင် Folder ၼႂ်း Computer။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
ႁႂ်ႈႁဝ်းၸၢမ်းတႅမ်ႈ Code **`ShanFolderManager`**။
1.  ၵူတ်ႇထတ်းဝႃႈ မီး Folder ၸိုဝ်ႈဝႃႈ **`MyDiary`** ႁႃႉ?
2.  သင်ဢမ်ႇမီး ႁႂ်ႈသၢင်ႈမၼ်းၶိုၼ်ႈမႃး။
3.  သင်မီးယဝ်ႉ ႁႂ်ႈပိုၼ်ႈၶၢဝ်ႇ (Notify) ဝႃႈ **"Folder is already there!"** ၶႃႈ။