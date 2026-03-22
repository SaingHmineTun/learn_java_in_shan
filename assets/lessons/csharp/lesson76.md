# Lesson 76: "Exercise: Shan Student Attendance List System"

ၼႂ်း Project ဢွၼ်ႇၼႆႉ ႁဝ်းတေမီးသဵၼ်ႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်းဝႆႉၼႂ်း Array သေယဝ်ႉ ပၼ်သုၼ်ႇႁႂ်ႈ User လိူၵ်ႈဝႃႈ ၵေႃႉလႂ် "မႃး" (Present) ဢမ်ႇၼၼ် "ၶၢတ်ႇ" (Absent) ၶႃႈ။

### 1. ပိူင်သၢင်ႈ Program (Logic)
* **Students Array:** သိမ်းၸိုဝ်ႈလုၵ်ႈႁဵၼ်း (String).
* **Attendance Array:** သိမ်းၽွၼ်းလႆႈဝႃႈ မႃး/ၶၢတ်ႇ (Boolean).
* **Loop:** ၸႂ်ႉ `for` loop တႃႇထၢမ်ၸိုဝ်ႈလုၵ်ႈႁဵၼ်းၼိုင်ႈၵေႃႉယဝ်ႉ ၼိုင်ႈၵေႃႉ။
* **Output:** ၼႄသဵၼ်ႈမၢႆတင်းမူတ်း မိူဝ်ႈၵူတ်ႇထတ်းယဝ်ႉတူဝ်ႈ။

### 2. တူဝ်ယင်ႇ Code (The Attendance App)

```csharp
using System;

class Program {
    static void Main() {
        // 1. သၢင်ႈ Array သိမ်းၸိုဝ်ႈလုၵ်ႈႁဵၼ်း
        string[] students = { "Sai Mao", "Nang Kham", "Sai Tun", "Nang Aye" };
        
        // 2. သၢင်ႈ Array သိမ်းသႅၼ်း (Status) - တႄႇတူဝ်ႈပဵၼ် false (Absent) တင်းမူတ်း
        bool[] isPresent = new bool[students.Length];

        Console.WriteLine("=== Thung Mao Kham Student Attendance ===");
        Console.WriteLine($"Total Students: {students.Length}\n");

        // 3. Loop တႃႇၵူတ်ႇထတ်းၼိုင်ႈၵေႃႉယဝ်ႉ ၼိုင်ႈၵေႃႉ
        for (int i = 0; i < students.Length; i++) {
            Console.Write($"Is {students[i]} present? (y/n): ");
            string input = Console.ReadLine().ToLower();

            if (input == "y") {
                isPresent[i] = true; // မၢႆတွင်းဝႃႈ 'မႃး'
            } else {
                isPresent[i] = false; // မၢႆတွင်းဝႃႈ 'ၶၢတ်ႇ'
            }
        }

        // 4. ၼႄၽွၼ်းလႆႈတင်းမူတ်း (Final Report)
        Console.WriteLine("\n--- Attendance Report ---");
        for (int i = 0; i < students.Length; i++) {
            string status = isPresent[i] ? "Present [✓]" : "Absent [x]";
            Console.WriteLine($"{i + 1}. {students[i].PadRight(10)} : {status}");
        }

        Console.WriteLine("\nAttendance check completed!");
        Console.ReadKey();
    }
}
```

### 3. ဢၼ်လုၵ်ႈႁဵၼ်းလႆႈႁဵၼ်း
* **Parallel Arrays:** ၵၢၼ်ၸႂ်ႉ Array သွင်ဢၼ် (students လႄႈ isPresent) ဢၼ်မီး Index ၵိုၵ်းၵၼ်။
* **Array.Length:** ၸႂ်ႉတႃႇမၵ်းမၼ်ႈႁူဝ်ၼပ်ႉ Loop ႁႂ်ႈတႅတ်ႉတေႃးၸွမ်းႁူဝ်ၼပ်ႉလုၵ်ႈႁဵၼ်း။
* **Boolean Logic:** ၵၢၼ်ၸႂ်ႉ `true/false` တႃႇသိမ်းသႅၼ်း (Status) ဢၼ်မီးသွင်လၢႆး။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Parallel Arrays:** Array လၢႆလၢႆဢၼ် မီးႁူဝ်ၼပ်ႉ (Size) မိူၼ်ၵၼ် သေသိမ်းၶေႃႈမုၼ်းဢၼ်ၵိုၵ်းၵၼ် ၸွမ်းၼင်ႇ Index။
* **Status:** သႅၼ်း ဢမ်ႇၼၼ် ပိူင်ပဵၼ်ၶွင်ၶေႃႈမုၼ်း ၼႂ်းၶၢဝ်းယၢမ်းၼၼ်ႉ။
* **PadRight:** Method ဢၼ်ၸွႆးၸတ်းတူဝ်လိၵ်ႈ ႁႂ်ႈမၼ်းၽဵင်ႇၵၼ် မိူဝ်ႈၼႄၽွၼ်းလႆႈၼႂ်း Console။
* **Validation:** ၵၢၼ်ၵူတ်ႇထတ်းဝႃႈ User တႅမ်ႈ "y" ဢမ်ႇၼၼ် "n" မႅၼ်ႈႁႃႉ။

---