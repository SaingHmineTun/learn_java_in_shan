## 15) Equality and Relational Operators

Operators ၸိူဝ်းၼႆႉ ၸႂ်ႉတႃႇ "တႅၵ်ႈလိူင်း" (Compare) ၵႃႈၶၼ်သွင်ဢၼ်။ ၽူၼ်မၼ်း (Result) ဢၼ်လႆႈမႃး တေပဵၼ် **`bool`** (`true` ဢမ်ႇၼၼ် `false`) တႃႇသေႇယဝ်ႉ။

---

### Comparison Table

| Operator | Meaning (တီႈပွင်ႇ) | Example | Result |
| --- | --- | --- | --- |
| **`==`** | Equal to (ၽဵင်ႇၵၼ်) | `5 == 5` | `true` |
| **`!=`** | Not equal to (ဢမ်ႇၽဵင်ႇၵၼ်) | `5 != 3` | `true` |
| **`>`** | Greater than (ယႂ်ႇလိူဝ်) | `10 > 5` | `true` |
| **`<`** | Less than (လဵၵ်ႉလိူဝ်) | `2 < 8` | `true` |
| **`>=`** | Greater than or equal to (ယႂ်ႇလိူဝ် ဢမ်ႇၼၼ် ၽဵင်ႇၵၼ်) | `5 >= 5` | `true` |
| **`<=`** | Less than or equal to (လဵၵ်ႉလိူဝ် ဢမ်ႇၼၼ် ၽဵင်ႇၵၼ်) | `4 <= 7` | `true` |

---

### 1. Equality Operators (မၢႆၽဵင်ႇၵၼ်)

**Example 1: Basic Equality (`==`)**

```dart
int speed = 60;
print(speed == 60); // Output: true
print(speed == 80); // Output: false

```

**Example 2: String Equality**

```dart
String status = "active";
print(status == "active"); // Output: true
print(status == "Active"); // Output: false (ယွၼ်ႉ Dart ထတ်းတူဝ်လိၵ်ႈ လူင်/လဵၵ်ႉ)

```

**Example 3: Inequality (`!=`)**

```dart
String role = "user";
print(role != "admin"); // Output: true (ယွၼ်ႉ user ဢမ်ႇမိူၼ်တင်း admin)

```

---

### 2. Relational Operators (မၢႆတႅၵ်ႈလိူင်း)

**Example 1: Greater than and Less than (`>`, `<`)**

```dart
int score = 75;
print(score > 50); // Output: true (ၶႅၼ်ႇလိူဝ် 50)
print(score < 70); // Output: false

```

**Example 2: Greater than or equal to (`>=`)**

```dart
int age = 18;
// သင်ဢႃႇယု 18 ဢမ်ႇၼၼ် လိူဝ် 18 ၸင်ႇတေပဵၼ် true
print(age >= 18); // Output: true

```

**Example 3: Less than or equal to (`<=`)**

```dart
double budget = 100.0;
double expense = 100.0;
// သင်ၸႂ်ႉငိုၼ်း ၽဵင်ႇၵၼ်တင်း Budget ၵေႃႈ တိုၵ်ႉပဵၼ် true
print(expense <= budget); // Output: true

```

---

### 3. Logic Application (လၢႆးၸႂ်ႉတိုင်ႈ)

**Example 1: Password Confirmation**

```dart
String pass = "dart123";
String confirm = "dart123";
print("Password Match: ${pass == confirm}"); // Output: Password Match: true

```

**Example 2: Game High Score**

```dart
int currentScore = 1200;
int highScore = 1500;
bool isNewRecord = currentScore > highScore;
print("Is new record? $isNewRecord"); // Output: Is new record? false

```

**Example 3: Temperature Alert**

```dart
double roomTemp = 38.5;
bool tooHot = roomTemp >= 37.0;
print("Aircon on? $tooHot"); // Output: Aircon on? true

```