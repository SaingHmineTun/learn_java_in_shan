# Lesson 254: "Event-Driven Programming"

ဝူၼ်ႉတူၺ်းဝႃႈ App ႁဝ်းမိူၼ်ၼင်ႇ "ၵူၼ်းပႂ်ႉသႅင်ႇ" ၶႃႈ။ မၼ်းတေၼင်ႈယူႇသိုဝ်ႈသိုဝ်ႈ၊ ၵူၺ်းၵႃႈမိူဝ်ႈမီး User မႃး **"ၼဵၵ်းတုမ်ႇ"** (Button Click) ဢမ်ႇၼၼ် **"တႅမ်ႈလိၵ်ႈ"** (KeyPress) ၼၼ်
မၼ်းၸင်ႇတေတူင်ႉၼိုင်ၶႃႈ။

### 1. Event ပဵၼ်သင်?
**Event** ပဵၼ်ဢၼ် Control သူင်ႇမႃးလၢတ်ႈဝႃႈ "မီးလွင်ႈပႅၵ်ႈပိူင်ႈ သေလွင်ႈလွင်ႈယဝ်ႉၼႃ" ၼႆၶႃႈ။
* **Click:** မိူဝ်ႈ User ၼဵၵ်းတုမ်ႇ။
* **TextChanged:** မိူဝ်ႈ User လႅၵ်ႈပိၼ်ႇလိၵ်ႈၼႂ်း TextBox။
* **Load:** မိူဝ်ႈ App တႄႇပိုတ်ႇၼႃႈၸေႃးမႃးၵမ်းလဵဝ်။

### 2. Event Handler (တူဝ်ၸတ်းၵၢၼ်)
ၼႆႉပဵၼ် Method ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉ တႃႇႁပ်ႉဢဝ် Event ၼၼ်ႉၶႃႈ။ ၼႂ်း WinForms လၢႆးသၢင်ႈမၼ်းငၢႆႈၼႃႇ:
* **လၢႆးႁဵတ်း:** ၵူၺ်းလႆႈ **"ၼဵၵ်းသွင်ပွၵ်ႈ"** (Double Click) ၼိူဝ်တုမ်ႇ (Button) ၼၼ်ႉၼႂ်း Designer သေ Visual Studio တေတႅမ်ႈ Method ပၼ်ႁဝ်းၼႂ်း Code-behind (`Form1.cs`) ၵမ်းလဵဝ်ၶႃႈ။



### 3. တူဝ်ယင်ႇ Code: Button Click
မိူဝ်ႈႁဝ်း Double Click ၼိူဝ်တုမ်ႇဢၼ်ၸိုဝ်ႈဝႃႈ `btnHello` ၼၼ်ႉ မၼ်းတေပိုတ်ႇ Code မႃးၸိူင်ႉၼႆ:

```csharp
private void btnHello_Click(object sender, EventArgs e)
{
    // ၼႆႉပဵၼ် Code ဢၼ်တေလႅၼ်ႈ မိူဝ်ႈ User ၼဵၵ်းတုမ်ႇ
    MessageBox.Show("မႂ်ႇသုင်ၶႃႈ! ယိၼ်းလီႁပ်ႉတွၼ်ႈၸူး App တႆးႁဝ်း။");
}
```

### 4. ၵၢၼ်ၸတ်းၵၢၼ် KeyPress
မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈႁူႉဝႃႈ User ၼဵၵ်းၵီးသင်ၼိူဝ် Keyboard (မိူၼ်ၼင်ႇ ၼဵၵ်း Enter တႃႇ Login)။
* ႁဝ်းၵႂႃႇတီႈ **Properties Window** -> ၼဵၵ်းတူဝ်မၢႆ **"ၾႃႉမႅပ်ႈ"** (Lightning Bolt icon) တႃႇၼႄသဵၼ်ႈမၢႆ Events တင်းမူတ်း။
* ႁႃ `KeyPress` သေ Double Click တီႈၼၼ်ႉၶႃႈ။

```csharp
private void txtInput_KeyPress(object sender, KeyPressEventArgs e)
{
    // ၵူတ်ႇထတ်းဝႃႈ ၼဵၵ်း Enter (Char 13) ႁႃႉ?
    if (e.KeyChar == (char)Keys.Enter)
    {
        MessageBox.Show("ႁဝ်းႁပ်ႉလႆႈၵၢၼ်ၼဵၵ်း Enter ယဝ်ႉ!");
    }
}
```

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Event-Driven:** ပိူင်တႅမ်ႈ Code ဢၼ်လႅၼ်ႈၸွမ်း ၼင်ႇၵၢၼ်တူင်ႉၼိုင် လုၵ်ႉတီႈ User။
* **Event Handler:** Method ဢၼ်ၸတ်းၵၢၼ်မိူဝ်ႈ Event ပဵၼ်မႃး။
* **Sender:** Object ဢၼ်သူင်ႇ Event မႃး (မိူၼ်ၼင်ႇ တုမ်ႇဢၼ်ထုၵ်ႇၼဵၵ်း)။
* **EventArgs:** ၶေႃႈမုၼ်းထႅမ် လွင်ႈ Event ၼၼ်ႉ (မိူၼ်ၼင်ႇ တုမ်ႇ Keyboard မၢႆလႂ်ထုၵ်ႇၼဵၵ်း)။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင် **ႁဝ်း** ၶႂ်ႈႁႂ်ႈ App ၼႄလိၵ်ႈဝႃႈ "တိုၵ်ႉတႄႇပိုတ်ႇ App" ၵမ်းလဵဝ်မိူဝ်ႈ App ပိုတ်ႇမႃးၼႆ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Event လႂ်ၶွင် Form?
2. ၼႂ်း Visual Studio... ႁဝ်းတေလႆႈၼဵၵ်းတူဝ်မၢႆသင် ၼႂ်း Properties Window တႃႇတူၺ်း Events တင်းမူတ်း?