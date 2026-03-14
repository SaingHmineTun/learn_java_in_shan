## 16) Logical Operators (&&, ||, !)

Logical Operators ၼႆႉ ၸႂ်ႉတႃႇဢဝ် Boolean expressions (ၵႃႈၶၼ် `true`/`false`) လၢႆလၢႆဢၼ် မႃးသိုပ်ႇၵၼ် သေတႅတ်ႈသိၼ်ၸႂ် (Logic)။ ၵမ်းၼမ် ႁဝ်းၸႂ်ႉမၼ်း ၼႂ်းလွင်ႈထတ်းသၢင် (Conditions) ဢၼ်မီးလွင်ႈတၢင်း လၢႆလၢႆယၢင်ႇယဝ်ႉ။

---

### Logical Operators Table

| Operator   | Name        | Meaning (တီႈပွင်ႇ)                   | Result                                     |
|------------|-------------|--------------------------------------|--------------------------------------------|
| **`&&`**   | Logical AND | တေလႆႈပဵၼ် `true` **တင်းသွင်ၽၢႆႇ**    | `true` သင်တင်းသွင်ၽၢႆႇမႅၼ်ႈ                |
| **`\|\|`** | Logical OR  | တေလႆႈပဵၼ် `true` **ၽၢႆႇလဵဝ်**        | `true` သင်သေၽၢႆႇၽၢႆႇမႅၼ်ႈ |
| **`!`**    | Logical NOT | ပိၼ်ႇၵႃႈၶၼ် (ဢမ်ႇၸႂ်ႈ)               | ပိၼ်ႇ `true` -> `false`, `false` -> `true` |

---

### 1. Logical AND (`&&`)

တေလႆႈမႅၼ်ႈ (True) တင်းသွင်လွင်ႈတၢင်း ၸင်ႇတေႁဵတ်းၵၢၼ်။

**Example 1: Login Check**

```dart
bool hasEmail = true;
bool hasPassword = true;

// တေလႆႈမီးတင်း Email လႄႈ Password ၸင်ႇ Login လႆႈ
bool canLogin = hasEmail && hasPassword; 
print(age >= 18 && hasID); // Output: true

```

**Example 2: Range Check**

```dart
int percent = 85;
// တေလႆႈယူႇၼႂ်းၵႄႈ 80 လႄႈ 100
bool isGradeA = percent >= 80 && percent <= 100;
print(isGradeA); // Output: true

```

---

### 2. Logical OR (`||`)

မႅၼ်ႈ (True) ၽၢႆႇလႂ်ၽၢႆႇၼိုင်ႈၵေႃႈ ၸႂ်ႉလႆႈယဝ်ႉ။

**Example 1: Payment Method**

```dart
bool hasCash = false;
bool hasCard = true;

// မီးငိုၼ်းสด ဢမ်ႇၼၼ် မီး Card ၵေႃႈ သိုဝ်းလႆႈယဝ်ႉ
bool canBuy = hasCash || hasCard; 
print(canBuy); // Output: true

```

**Example 2: Weekend Check**

```dart
String day = "Saturday";
bool isHoliday = (day == "Saturday" || day == "Sunday");
print(isHoliday); // Output: true

```

---

### 3. Logical NOT (`!`)

ၸႂ်ႉတႃႇပိၼ်ႇၵႃႈၶၼ် ဢၼ်မီးဝႆႉၼၼ်ႉ ႁႂ်ႈပဵၼ်ၽၢႆႇၶတ်းၵၼ်။

**Example 1: Toggle State**

```dart
bool isLoading = false;
print(!isLoading); // Output: true (ဢမ်ႇတိုၵ်ႉ Loading ယူႇ)

```

**Example 2: Not Empty Check**

```dart
String username = "sai_sai";
bool isNotEmpty = !username.isEmpty; 
print(isNotEmpty); // Output: true

```

---

### 4. Logic Application (Combined)

ႁဝ်းၸၢင်ႈဢဝ်တင်းသၢမ်ယၢင်ႇၼႆႉ မႃးၸႂ်ႉပူၼ်ႇၵၼ်လႆႈ။

**Example: Scholarship Eligibility**

```dart
int gpa = 3.8;
int attendance = 95;
bool isBanned = false;

// တေလႆႈမီး GPA 3.5 ၶိုၼ်ႈ၊ Attendance 90 ၶိုၼ်ႈ လႄႈ ဢမ်ႇၸႂ်ႈၵူၼ်းထုၵ်ႇ Banned
bool getScholarship = (gpa >= 3.5 && attendance >= 90) && !isBanned;

print("Get scholarship: $getScholarship"); // Output: true

```