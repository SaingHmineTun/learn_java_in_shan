# Lesson 201: "Exercise: Shan Database Input Validator"

### 1. ဝၢင်းၽႅၼ် (The Plan)
ႁဝ်းတေတႅမ်ႈ Program ဢၼ်ႁပ်ႉဢဝ်ၶေႃႈမုၼ်း ၸိုဝ်ႈ (Name) လႄႈ ဢႃႇယု (Age)။
* **ပၵ်းပိူင် 1:** ၸိုဝ်ႈတေလႆႈသႂ်ႇ၊ ယႃႇဝႆႉပဝ်ႇ။
* **ပၵ်းပိူင် 2:** ဢႃႇယုတေလႆႈယူႇၼႂ်းၵႄႈ 5 တေႃႇ 100။
* **ၵၢၼ်ႁပ်ႉမိုဝ်း:** သင်ၽိတ်းပၵ်းပိူင်၊ ႁႂ်ႈ `throw` ပၼ်ႁႃဢွၵ်ႇမႃးသေ ႁပ်ႉမၼ်းဝႆႉ လူၺ်ႈဢမ်ႇပၼ် App ႁဝ်းလူႉ (Crash) ၶႃႈ။

### 2. တႅမ်ႈ Code (The Implementation)

```csharp
using System;

// 1. သၢင်ႈ Custom Exception ႁင်းၵူၺ်း
public class ShanValidationException : Exception {
    public ShanValidationException(string message) : base(message) { }
}

class ShanDatabaseApp {
    static void Main() {
        Console.WriteLine("--- Shan Student Database Input ---");

        try {
            // 2. ႁပ်ႉၶေႃႈမုၼ်း
            Console.Write("သႂ်ႇၸိုဝ်ႈလုၵ်ႈႁဵၼ်း: ");
            string name = Console.ReadLine();

            Console.Write("သႂ်ႇဢႃႇယု: ");
            string ageInput = Console.ReadLine();

            // 3. ၵွင်ႇႁပ်ႉပၼ်ႁႃ (Validator Logic)
            ValidateInput(name, ageInput);

            Console.WriteLine("\n✅ သိမ်းၶေႃႈမုၼ်းယဝ်ႉတူဝ်ႈလီငၢႆႈယဝ်ႉၶႃႈ!");
        }
        catch (ShanValidationException ex) {
            // ႁပ်ႉပၼ်ႁႃဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉ
            Console.WriteLine($"\n❌ ၽိတ်းပၵ်းၵၢၼ်ၶေႃႈမုၼ်း: {ex.Message}");
        }
        catch (FormatException) {
            // ႁပ်ႉပၼ်ႁႃသင် User သႂ်ႇလိၵ်ႈတႅၼ်းတူဝ်ၼပ်ႉ
            Console.WriteLine("\n❌ ၽိတ်းပၵ်းၵၢၼ်: ႁႂ်ႈသႂ်ႇတူဝ်ၼပ်ႉ ၼႂ်းတွၼ်ႈဢႃႇယုၶႃႈ။");
        }
        catch (Exception ex) {
            // ႁပ်ႉပၼ်ႁႃတၢင်ႇၸိူဝ်း ဢၼ်ႁဝ်းဢမ်ႇႁူႉဝႆႉ
            Console.WriteLine($"\n❌ မီးပၼ်ႁႃတၢင်ႇပိူင်: {ex.Message}");
        }
        finally {
            Console.WriteLine("--- ၵၢၼ်ႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈယဝ်ႉ ---");
        }
    }

    static void ValidateInput(string name, string ageStr) {
        // ၵူတ်ႇထတ်းၸိုဝ်ႈ
        if (string.IsNullOrWhiteSpace(name)) {
            throw new ShanValidationException("ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း တေလႆႈတႅမ်ႈသႂ်ႇ၊ ယႃႇဝႆႉလၢႆၶႃႈ။");
        }

        // ၵူတ်ႇထတ်းဢႃႇယု
        int age = int.Parse(ageStr); // ၸၢင်ႈပဵၼ် FormatException တီႈၼႆႉ
        if (age < 5 || age > 100) {
            throw new ShanValidationException("ဢႃႇယု တေလႆႈယူႇၼႂ်းၵႄႈ 5 တေႃႇ 100 ပီႊၵူၺ်းၶႃႈ။");
        }
    }
}
```



---

### 3. လွၼ်ႉမၼ်းဢၼ်ႁဝ်းလႆႈႁဵၼ်း
* **Multiple Catches:** ႁဝ်းၸႅၵ်ႇလႆႈဝႃႈ ပၼ်ႁႃၼၼ်ႉပဵၼ်တီႈ "လိၵ်ႈၽိတ်း" (`FormatException`) ဢမ်ႇၼၼ် "ပၵ်းၵၢၼ်ႁဝ်းၽိတ်း" (`ShanValidationException`)။
* **Code Separation:** ႁဝ်းၸႅၵ်ႇတွၼ်ႈ ၵူတ်ႇထတ်း (`ValidateInput`) ဢွၵ်ႇဝႆႉ ႁဵတ်းႁႂ်ႈ Code ႁဝ်းလူငၢႆႈ။
* **User Safety:** App ႁဝ်းဢမ်ႇပိၵ်ႉၵႂႃႇလၢႆလၢႆ (Graceful handling)၊ မၼ်းတိုၵ်ႉမီးၶေႃႈၵႂၢမ်းလၢတ်ႈၼႄ User ဝႃႈထုၵ်ႇလီမႄးတီႈလႂ်။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Input Validation:** ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈမုၼ်း ဢၼ်ၵူၼ်းၸႂ်ႉသူင်ႇမႃးပၼ်။
* **Custom Exception Type:** ၵၢၼ်ၸႂ်ႉ Class ပၼ်ႁႃ ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ တႃႇၸႅၵ်ႇပၼ်ႁႃၼႃႈၵၢၼ်။
* **Parse Exception:** ပၼ်ႁႃဢၼ်ပဵၼ် မိူဝ်ႈပိၼ်ႇလိၵ်ႈပဵၼ်တူဝ်ၼပ်ႉဢမ်ႇလႆႈ။

---