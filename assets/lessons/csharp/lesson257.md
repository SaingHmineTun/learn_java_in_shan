# Lesson 257: Project - "Shan Community Calculator"

ႁဝ်းတေမႃးသၢင်ႈ App ဢၼ်မီး TextBox 2 ဢၼ် တႃႇႁပ်ႉတူဝ်ၼပ်ႉ လႄႈ Button တႃႇ "ႁူမ်ႈ" (+) ၶႃႈဢေႃႈ။

### 1. ၵၢၼ် Design ၼႃႈၸေႃး (The UI)
ႁႂ်ႈႁဝ်းလၢၵ်ႈ Controls ၸိူဝ်းၼႆႉမႃးဝၢင်းၼိူဝ် Form ၶႃႈ:
* **Label 1:** `Text` = "Number 1:", `Name` = `lblNum1`
* **TextBox 1:** `Name` = `txtNum1`
* **Label 2:** `Text` = "Number 2:", `Name` = `lblNum2`
* **TextBox 2:** `Name` = `txtNum2`
* **Button:** `Text` = "Add (+)", `Name` = `btnAdd`, `BackColor` = `LightGreen`
* **Label 3 (Result):** `Text` = "Result: 0", `Name` = `lblResult`, `Font` = `Bold`



### 2. တႅမ်ႈ Code ၸတ်းၵၢၼ် (The Logic)
Double Click ၼိူဝ်တုမ်ႇ **btnAdd** သေတႅမ်ႈ Code ၸိူင်ႉၼႆၶႃႈ:

```csharp
private void btnAdd_Click(object sender, EventArgs e)
{
    try
    {
        // 1. ႁပ်ႉလိၵ်ႈလုၵ်ႉတီႈ TextBox သေပိၼ်ႇပဵၼ် Double (တူဝ်ၼပ်ႉ)
        double num1 = double.Parse(txtNum1.Text);
        double num2 = double.Parse(txtNum2.Text);

        // 2. ၼပ်ႉသွၼ်ႇႁူမ်ႈၵၼ်
        double sum = num1 + num2;

        // 3. ၼႄၽွၼ်းလႆႈၼိူဝ် Label
        lblResult.Text = $"Result: {sum}";
        lblResult.ForeColor = Color.Blue;
    }
    catch (FormatException)
    {
        // ႁပ်ႉမိုဝ်းမိူဝ်ႈ User ဢမ်ႇတႅမ်ႈတူဝ်ၼပ်ႉ
        MessageBox.Show("ၶႅၼ်းတေႃႈ တႅမ်ႈတူဝ်ၼပ်ႉ ႁႂ်ႈမႅၼ်ႈၸွမ်းပိူင်ၶႃႈ။", "Error");
    }
}
```

### 3. လွင်ႈလမ်ႇလွင်ႈဢၼ်ႁဝ်းလႆႈႁဵၼ်း
* **`double.Parse()`:** လိၵ်ႈဢၼ်လုၵ်ႉတီႈ TextBox မႃးၼၼ်ႉ မၼ်းပဵၼ် `string` တႃႇသေႇ။ ႁဝ်းတေလႆႈပိၼ်ႇမၼ်းပဵၼ်တူဝ်ၼပ်ႉ ၸင်ႇတေဢဝ်မႃး (+) လႆႈၶႃႈ။
* **`try-catch`:** ႁဝ်းတေလႆႈႁႄႉၵၢင်ႈမိူဝ်ႈ User တႅမ်ႈလိၵ်ႈ (မိူၼ်ၼင်ႇ "abc") ၶဝ်ႈမႃး ဢၼ်ဢမ်ႇၸၢင်ႈပိၼ်ႇပဵၼ်တူဝ်ၼပ်ႉလႆႈ၊ တႃႇႁႂ်ႈ App ႁဝ်းဢမ်ႇ Crash ၶႃႈ။
* **String Interpolation:** ၵၢၼ်ၸႂ်ႉ `$"Result: {sum}"` ႁဵတ်းႁႂ်ႈႁဝ်းဢဝ်တူဝ်ၼပ်ႉမႃးၼႄၼိူဝ် Label လႆႈငၢႆႈငၢႆႈၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Parsing:** ၵၢၼ်ပိၼ်ႇ Type ၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ String ၵႂႃႇပဵၼ် Double)။
* **Code-behind:** ၾိုင််း (File) C# ဢၼ်ယူႇၽၢႆႇလင်ၼႃႈၸေႃး Designer (`Form1.cs`)။
* **MessageBox:** ၼႃႈတၢင်ႇလဵၵ်ႉๆ ဢၼ်ၵျွၵ်းဢွၵ်ႇမႃး လၢတ်ႈၼႄ User။
* **Event Argument (e):** ၶေႃႈမုၼ်းထႅမ် ဢၼ်မႃးၸွမ်း Event (ၼႂ်း Click ၼႆႉႁဝ်းပႆႇလႆႈၸႂ်ႉမၼ်းၼမ်ၶႃႈ)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. ႁႂ်ႈ **ႁဝ်း** ၸၢမ်းထႅမ်တုမ်ႇ (Button) ထႅင်ႈဢၼ်ၼိုင်ႈ တွၼ်ႈတႃႇ **"Subtract (-)"** (ၵၢၼ်လူတ်း) သေတႅမ်ႈ Logic ႁႂ်ႈမၼ်းၼပ်ႉသွၼ်ႇလႆႈ။
2. သင်ႁဝ်းၶႂ်ႈႁႂ်ႈ Label ၽွၼ်းလႆႈ (`lblResult`) ယူႇ "ၵၢင်ၼႃႈၸေႃး" တႃႇသေႇ မိူဝ်ႈႁဝ်းယိုတ်း Window... ႁဝ်းထုၵ်ႇလီၸႂ်ႉ **Anchor** ဢမ်ႇၼၼ် **Dock**?
