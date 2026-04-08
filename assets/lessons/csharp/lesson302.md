# Lesson 302: "Device Info and Connectivity"

### 1. Connectivity (ၵူတ်ႇထတ်း Internet)
တွၼ်ႈတႃႇ App ဢၼ်လူဝ်ႇလူၶၢဝ်ႇ မိူၼ်ၼင်ႇ "Shan News" ၼႆႉ ႁဝ်းလူဝ်ႇႁူႉဝႃႈ ယၢမ်းလဵဝ်ၾူၼ်း User ၵွင်ႉ Internet ဝႆႉႁႃႉ? ဢမ်ႇၼၼ် ၵွင်ႉဝႆႉလူၺ်ႈ WiFi ႁႃႉ?

* **Connectivity.Current.NetworkAccess:** ၸွႆးလၢတ်ႈၼႄငဝ်းလၢႆး Internet (မိူၼ်ၼင်ႇ `Internet`, `Local`, ဢမ်ႇၼၼ် `None`)။
* **Connectivity.ConnectivityChanged:** ၼႆႉပဵၼ် **Event** ဢၼ်တေလၢတ်ႈၼႄ App ႁဝ်းၵမ်းလဵဝ် မိူဝ်ႈ Internet ၶၢတ်ႇ ဢမ်ႇၼၼ် ဝၢႆႇမႃးၵွင်ႉလႆႈၶိုၼ်းၶႃႈ။



**တူဝ်ယင်ႇ Code:**
```csharp
var current = Connectivity.Current.NetworkAccess;

if (current == NetworkAccess.Internet)
{
    // ၵွင်ႉ Internet လႆႈယူႇၶႃႈ
}
else 
{
    // ဢမ်ႇမီး Internet။ ၼႄ Alert လၢတ်ႈ User ၽွင်ႈ
    await DisplayAlert("သတိ", "ၶႅၼ်းတေႃႈၵွင်ႉ Internet သေၸၢမ်းတူၺ်းၶိုၼ်းၶႃႈ", "ႁပ်ႉၸၢပ်ႈ");
}
```

### 2. Device Information (ၶေႃႈမုၼ်းၶိူင်ႈၾူၼ်း)
မၢင်ပွၵ်ႈႁဝ်းလူဝ်ႇႁူႉဝႃႈ User ၸႂ်ႉၾူၼ်းတႅတ်ႈတေႃးသႅၼ်းလႂ် တွၼ်ႈတႃႇၸတ်း UI ႁႂ်ႈမႅၼ်ႈၸေႃးၶႃႈ။
* **DeviceInfo.Model:** ၸိုဝ်ႈသႅၼ်းၾူၼ်း (မိူၼ်ၼင်ႇ Pixel 6, Samsung S24)။
* **DeviceInfo.Platform:** ပဵၼ် Android ႁႃႉ? iOS ႁႃႉ?
* **DeviceInfo.Idiom:** ပဵၼ်ၾူၼ်း (Phone) ႁႃႉ? ဢမ်ႇၼၼ် ပဵၼ်တႅပ်ႉလႅတ်ႉ (Tablet)?

### 3. Battery (ၵူတ်ႇထတ်းထၢတ်ႈၾႆး)
ႁဝ်းၸၢင်ႈၵူတ်ႇထတ်းလႆႈဝႃႈ Battery ၵူၼ်းၸႂ်ႉ မီးဝႆႉၵႃႈႁိုဝ်?
* **Battery.Default.ChargeLevel:** ၼႄပဵၼ် % (မိူၼ်ၼင်ႇ 0.8 ပွင်ႇဝႃႈ 80%)။
* **Battery.Default.State:** ႁူႉဝႃႈတိုၵ်ႉသႂၢင်းၾႆး (Charging) ယူႇႁႃႉ?

---

### 4. ႁဵတ်းသင်လွင်ႈၼႆႉၸင်ႇလမ်ႇလွင်ႈ?
1. **User Experience (UX):** သင် User ဢမ်ႇမီး Internet သေ App ႁဝ်း "ၶမ်" (Freeze) ၵႂႃႇလူၺ်ႈဢမ်ႇလၢတ်ႈသင်ၼႆ User တေထၢင်ႇဝႃႈ App ႁဝ်းလုၶႃႈ။
2. **Optimization:** သင် Battery User ၸမ်တေမူတ်းၼႆ ႁဝ်းၸၢင်ႈဢိုတ်း Animation ဢၼ်ၵိၼ်ၾႆးၼမ်ၼၼ်ႉ ဢွၵ်ႇလႆႈၶႃႈ။
3. **Analytics:** ၸွႆးႁႂ်ႈႁဝ်းႁူႉဝႃႈ ၵူၼ်းတႆးႁဝ်း ၵႆႉၸႂ်ႉၾူၼ်းသႅၼ်းလႂ် ၼႆၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Connectivity:** ငဝ်းလၢႆးၵၢၼ်ၵွင်ႉသၢႆ Network ၼိူဝ်ၾူၼ်း။
* **Event Handler:** Code ဢၼ်ပႂ်ႉ "ထွမ်ႇ" ဝႃႈ မီးလွင်ႈသင် လႅၵ်ႈလၢႆႈၵႂႃႇ (မိူၼ်ၼင်ႇ Internet တူၵ်း)။
* **Idiom:** ပိူင်သၢင်ႈ Hardware ၶွင်ၶိူင်ႈ (Phone, Tablet, Desktop)။
* **Platform-specific:** ၵၢၼ်ႁဵတ်းၵၢၼ်ဢၼ်မီးၼႂ်း OS ၼိုင်ႈဢၼ်ၵူၺ်း။

---

**ၵၢၼ်ႁိူၼ်း (Homework):**
1. သင်ႁဝ်း ၶႂ်ႈၵူတ်ႇထတ်းဝႃႈ "ယၢမ်းလဵဝ် User ၵွင်ႉ WiFi ယူႇႁႃႉ?" ၼႆ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ Property လႂ်ၼႂ်း `Connectivity`?
2. ႁဵတ်းသင် App ဢၼ်လူဝ်ႇ Internet Data ၸင်ႇလူဝ်ႇၸႂ်ႉ `ConnectivityChanged` event?