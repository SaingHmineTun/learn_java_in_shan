## Lesson 65: Error Handling in Files: ferror & feof

မိူဝ်ႈႁဝ်းလူလိၵ်ႈ (Read) ယဝ်ႉ သမ်ႉထိုင်တီႈၵိုတ်း၊ ႁဝ်းလူဝ်ႇၸႅၵ်ႇဝႃႈ "မၼ်းယဝ်ႉသဵင်ႈယဝ်ႉ (End of File)" ႁိုဝ် "မၼ်းမီး Error (File Error)" ၼၼ်ႉၶႃႈဢေႃႈ။

### 1. `feof()` (Check for End-of-File)
Function ၼႆႉ တေသူင်ႇ Value ဢၼ်ဢမ်ႇၸႂ်ႇ 0 (Non-zero) ၶိုၼ်းမႃး သင်ဝႃႈႁဝ်းလူလိၵ်ႈၵႂႃႇတေႃႇပေႃး **"ထိုင်ပၢႆသုတ်း"** ၶွင် File ယဝ်ႉၶႃႈ။

**သတိ:** `feof()` တေပဵၼ် True ဝၢႆးသေႁဝ်း "ၸၢမ်းလူ" (Attempt to read) တီႈဢၼ်ပူၼ်ႉပၢႆသုတ်းမၼ်းၵႂႃႇယဝ်ႉၵူၺ်းၶႃႈ။

```c
if (feof(fp)) {
    printf("Reached the end of the file successfully.\n");
}
```

### 2. `ferror()` (Check for Read/Write Error)
သင်ဝႃႈပူဝ်ႇၵရႅမ်ႇၵိုတ်းၵၢၼ်ႁဵတ်းၵၢၼ် ၵွပ်ႈမီးပၼ်ႁႃ (မိူၼ်ၼင်ႇ Disk Error)၊ `ferror()` တေသူင်ႇ Value ၶိုၼ်းမႃးၶႃႈ။

```c
if (ferror(fp)) {
    printf("An error occurred during file operation!\n");
}
```



### 3. `perror()` (Print Professional Error)
ၼႆႉပဵၼ် Function ဢၼ်မီးဢဵၼ်ႁႅင်းသုတ်း ၵွပ်ႈမၼ်းတေ "ပိုတ်ႇပႅတ်ႇ" (Explain) ပၼ်ဝႃႈ Error ၼၼ်ႉပဵၼ်သင်တေႉတေႉ (မိူၼ်ၼင်ႇ: "File not found" ႁိုဝ် "Permission denied") ၶႃႈ။

```c
FILE *fp = fopen("secret.dat", "r");
if (fp == NULL) {
    perror("Error opening file"); // တေၼႄဝႃႈ: Error opening file: No such file or directory
    return 1;
}
```

### 4. `clearerr()` (Reset Errors)
မၢင်ပွၵ်ႈ မိူဝ်ႈႁဝ်းၵႄႈပၼ်ႁႃ Error ယဝ်ႉ၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ `clearerr(fp)` တွၼ်ႈတႃႇ "လၢင်ႉ" (Reset) မၢႆတွၼ်ႈ EOF လႄႈ Error ၼႂ်း File Pointer ၼၼ်ႉ ႁႂ်ႈပဵၼ်သႅၼ်ႈသႂ်ၶိုၼ်းၶႃႈ။

---

## 🏗️ Logic for Expert Programming
ၼႂ်း **TMK Student Manager** ၸဝ်ႈၵဝ်ႇ:
* မိူဝ်ႈၸဝ်ႈၵဝ်ႇ Load ၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း 1,000 ၵေႃႉ၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ **`feof`** ၼႂ်း Loop တွၼ်ႈတႃႇၵိုတ်းၵၢၼ်လူလိၵ်ႈ မိူဝ်ႈၵေႃႉလိုၼ်းသုတ်းယဝ်ႉတူဝ်ႈၶႃႈ။
* သင် `fread` သူင်ႇ Value ဢၼ်ဢမ်ႇမႅၼ်ႈၸွမ်းသႅၼ်း Struct ၶိုၼ်းမႃး၊ ၸဝ်ႈၵဝ်ႇၸၢင်ႈၸႂ်ႉ **`ferror`** တွၼ်ႈတႃႇၼႄၶေႃႈၵႂၢမ်း "Database is corrupted!" (ၶေႃႈမုၼ်းလူႉယဝ်ႉ) ၸိူင်ႉၼႆၶႃႈ။
* ၵၢၼ်ႁဵတ်းၼႆ တေႁဵတ်းႁႂ်ႈ Software ၸဝ်ႈၵဝ်ႇ "လႅတ်း" သုင်သေ ဢမ်ႇ Crash လူၺ်ႈဢမ်ႇမီးလွင်ႈတၢင်းၶႃႈ။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. တႅမ်ႈ Code ဢၼ်ၸၢမ်းပိုတ်ႇ File ဢၼ်ဢမ်ႇမီးဝႆႉ သေၸႂ်ႉ **`perror`** တႃႇတူၺ်းဝႃႈ OS ပၼ်ၶေႃႈၵႂၢမ်း Error သင်ၶႃႈၼႄႇ?
2. လွင်ႈပႅၵ်ႇပိူင်ႈၵႄႈ `feof` လႄႈ `ferror` ပဵၼ်သင်? (ၸွပ်ႇ: `feof` ပွင်ႇဝႃႈယဝ်ႉသေ "လီ"၊ ၵူၺ်းၵႃႈ `ferror` ပွင်ႇဝႃႈယဝ်ႉၵွပ်ႈ "ႁၢႆႉ/လူႉ" ၶႃႈ)။
3. သင်ႁဝ်းလူလိၵ်ႈ File ပဝ်ႇ (Empty File) ၼႆ `feof` တေပဵၼ် True ၵမ်းလဵဝ်ႁိုဝ်ဢမ်ႇပဵၼ်ၶႃႈၼႄႇ? (ၸွပ်ႇ: ဢမ်ႇပဵၼ်ၵမ်းလဵဝ်ၶႃႈ၊ တေလႆႈၸၢမ်း `fgetc` ႁိုဝ် `fread` ၼိုင်ႈၵမ်းဢွၼ်တၢင်း ၸင်ႇမၼ်းတေထိုင် EOF ၶႃႈဢေႃႈ)။

---