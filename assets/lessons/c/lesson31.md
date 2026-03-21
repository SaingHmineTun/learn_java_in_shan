## Lesson 31: String Handling Functions: <string.h> Deep Dive

### 1. `strlen()` – ၵၢၼ်ၼပ်ႉတူဝ်လိၵ်ႈ (String Length)
Function ၼႆႉ ၸႂ်ႉတႃႇတူၺ်းဝႃႈ ၼႂ်း String ၼၼ်ႉ မီးတူဝ်လိၵ်ႈလၢႆတူဝ် (ဢမ်ႇၼပ်ႉ `\0`)။
* **သတိ:** `sizeof()` တေၼႄသႅၼ်း Array တင်းသဵင်ႈ၊ ၵူၺ်းၵႃႈ `strlen()` တေၼႄ "တူဝ်လိၵ်ႈတေႉတေႉ" ဢၼ်မီးၼႂ်းမၼ်းၶႃႈ။

```c
char city[] = "MUSE";
printf("Length: %zu\n", strlen(city)); // Output: 4
printf("Size: %zu\n", sizeof(city));   // Output: 5 (ပႃး \0)
```



### 2. `strcpy()` – ၵၢၼ်ၵေႃႇပီႇလိၵ်ႈ (String Copy)
ၼႂ်း C ႁဝ်းတႅမ်ႈ `str1 = str2;` ဢမ်ႇလႆႈၶႃႈ။ ႁဝ်းတေလႆႈၸႂ်ႉ `strcpy()` တႃႇ "ထွၵ်ႇ" ၶေႃႈမုၼ်းသႂ်ႇၵၼ်။
* **Syntax:** `strcpy(destination, source);`

```c
char src[] = "Shan";
char dest[10];
strcpy(dest, src); // "Shan" တေၵႂႃႇယူႇၼႂ်း dest
```

### 3. `strcat()` – ၵၢၼ်ဢဝ်လိၵ်ႈမႃးၸပ်းၵၼ် (String Concatenation)
ၸႂ်ႉတႃႇဢဝ် String သွင်ဢၼ်မႃး "သိုပ်ႇ" ၵၼ်ႁႂ်ႈပဵၼ်ထႅဝ်လဵဝ်။
* **Syntax:** `strcat(first, second);`

```c
char fName[20] = "Sai ";
char lName[] = "Mao";
strcat(fName, lName); // fName တေပဵၼ် "Sai Mao"
```



### 4. `strcmp()` – ၵၢၼ်တႅၵ်ႈၼိူင်းလိၵ်ႈ (String Comparison)
ၼႆႉလမ်ႇလွင်ႈသုတ်းၶႃႈ! တွၼ်ႈတႃႇၵူတ်ႇထတ်းဝႃႈ လိၵ်ႈသွင်ဢၼ် "မိူၼ်ၵၼ်" ႁိုဝ်ဢမ်ႇၸႂ်။
* **တွပ်ႇမၼ်း:**
    * `0` : သင်လိၵ်ႈတင်းသွင် မိူၼ်ၵၼ်တႅတ်ႈတေႃး။
    * `> 0` : သင်လိၵ်ႈဢၼ်ထီႉ 1 ယႂ်ႇသေ (ၸွမ်းၼင်ႇ ASCII)။
    * `< 0` : သင်လိၵ်ႈဢၼ်ထီႉ 1 ဢွၼ်ႇသေ။

```c
if (strcmp(password, "1234") == 0) {
    printf("Access Granted!");
}
```

### 5. `strrev()` လႄႈ တၢင်ႇၸိူဝ်း
* **`strrev()`**: ၸႂ်ႉတႃႇပိၼ်ႇလိၵ်ႈထွႆလင် (မၢင် Compiler ၸၢင်ႈဢမ်ႇမီး)။
* **`strupr()` / `strlwr()`**: ၸႂ်ႉတႃႇလႅၵ်ႈပဵၼ် တူဝ်လိၵ်ႈယႂ်ႇ / တူဝ်လိၵ်ႈဢွၼ်ႇ။

---

## 🏗️ Logic for Applications
ၼႂ်း **TMK Student Manager**၊ ႁဝ်းၸႂ်ႉ `<string.h>` တွၼ်ႈတႃႇ:
1. **Search:** ၸႂ်ႉ `strcmp()` တႃႇႁႃၸိုဝ်ႈလုၵ်ႈႁဵၼ်း ဢၼ် User သႂ်ႇမႃး။
2. **Formatting:** ၸႂ်ႉ `strcat()` တႃႇဢဝ် "ၸိုဝ်ႈ" လႄႈ "ၼၢမ်ႇသၵုၼ်ႇ" မႃးၸပ်းၵၼ် ၼႄၼိူဝ် Student ID Card။
3. **Validation:** ၸႂ်ႉ `strlen()` တႃႇတူၺ်းဝႃႈ User သႂ်ႇ Password ယၢဝ်းပေႃးႁိုဝ် (မိူၼ်ၼင်ႇ လူဝ်ႇမီး 8 တူဝ်ၶိုၼ်ႈၼိူဝ်)။

---

**ၵၢၼ်ပိုၵ်ႉႁတ်း (Homework):**
1. တႅမ်ႈ Code ႁပ်ႉဢဝ်လိၵ်ႈ 2 ထႅဝ်၊ ယဝ်ႉတႅၵ်ႈၼိူင်းတူၺ်းဝႃႈ ဢၼ်လႂ် "ယၢဝ်းသေ" (Length) ၵၼ်?
2. ၸၢမ်းတႅမ်ႈ Code ႁပ်ႉဢဝ် Password တီႈ User၊ သင်မၼ်းမိူၼ်တင်း "ShanState2026" ၼႆ ႁႂ်ႈၼႄဝႃႈ "Welcome"၊ သင်ဢမ်ႇမိူၼ် ႁႂ်ႈၼႄဝႃႈ "Wrong Password"။
3. ၵွပ်ႈသင် ႁဝ်းသမ်ႉဢဝ် `if (str1 == str2)` မႃးၸႂ်ႉတႅၵ်ႈၼိူင်း String ဢမ်ႇလႆႈၶႃႈၼႄႇ? (ၸွႆႈတွပ်ႇ: ၵွပ်ႈမၼ်းတေၵႂႃႇတႅၵ်ႈ "Address" ၼႂ်း Memory တႅၼ်းၵၢၼ်တႅၵ်ႈ "တူဝ်လိၵ်ႈ" ၶႃႈ)။

---