
## **Java Basic 35**

#### **METHOD PARAMETER**

Link - <https://youtu.be/nQy7w93OIwE>

Method Arguments ၼႆၵေႃႈ ပိူၼ်ႈႁွင်ႉၵၼ်ယူႇ။ မိူဝ်ႈၶူင်သၢင်ႈ Method ၼၼ်ႉ () ဢၼ်မီးယူႇတီႈ Method Header ၼႆႉ ၵဵဝ်ႇလူၺ်ႈတၢင်းမၼ်းယူႇယဝ်ႉ။ ဢၼ်ယၢမ်ႈႁဵတ်းမႃး ထိုင်မိူဝ်ႈလဵဝ်ၼႆႉတေႉ ၵွပ်ႈႁဝ်းၵေႃႈ ဢမ်ႇယွၼ်းဝႆႉသင်ၼႆလႄႈ ၸင်ႇလႆႈသူင်ႇ () တူင်ႇမူၼ်းပဝ်ႇၵႂႃႇ။ မိူဝ်ႈႁဝ်း ၶူင်သၢင်ႈ method ၼၼ်ႉ သင်ႁဝ်း ယွၼ်းဝႆႉ parameter လႄႈ သမ်ႉၶိုၼ်း ဢမ်ႇသူင်ႇပၼ်ၼႆၸိုင် IntelliJ ၼႆႉ မၼ်းတေ ၼႄပၼ်ႁဝ်းၽိတ်း ဝႆႉယဝ်ႉ။ တီႈ parameter ၼႆႉၵေႃႈ သင်ႁဝ်း ယွၼ်းဝႆႉ String ၼႆ ႁဝ်းတေသူင်ႇပၼ် int ဢမ်ႇလႆႈ၊ ႁဝ်းတေလႆႈသူင်ပၼ် ၵႃႊၶၼ် String မိူၼ်ၼင်ႇ "Sai Mao" ယဝ်ႉ။

Method parameter ၼႆႉတေႉ ႁဝ်းယွၼ်းမၼ်းလႆႈတၢင်းၼမ်ဢိူဝ်ႈ။ ယွၼ်းဝႆႉ လၢႆဢၼ်ၵေႃႈယႃႇ မိူဝ်ႈၽွင်းႁဝ်းႁွင်ႉ ၸႂ်ႉတိုဝ်းမၼ်းၼၼ်ႉ ႁဝ်းတေလႆႈသူင်ႇပၼ်ၶိုၼ်း တၢင်းမူတ်းယဝ်ႉ။ parameter ဢွၼ်တၢင်းသုတ်ႉၼႆႉ ပေႃးပဵၼ် String လႄႈ parameter မၢႆသွင်သမ်ႉ ပေႃးပဵၼ် int ၼႆၸိုင် မိူဝ်ႈႁဝ်း ႁွင်ႉၸႂ်ႉ method ၼၼ်ႉၵေႃႈ ႁဝ်းတေလႆႈ သူင်ႇပၼ် String ယဝ်ႉသေ ၸင်ႇသူင်ႇပၼ် int လႆႈ။ ပေႃးသူင်ႇၽိတ်း မိူၼ်ၼင်ႇ သူင်ႇပၼ် int, String ၼႆၵေႃႈ ဢမ်ႇလႆႈ။

**this keyword**

this ၼႆႉမၢႆထိုင် current object ဢိူဝ်ႈ။ keyword ၼႆႉ ႁဝ်းတေႁွင်ႉၸႂ်ႉလႆႈ တီႈၼႂ်း class ယဝ်ႉ။ ၸႂ်ႉတိုဝ်း မၼ်းသေ ႁဝ်းတေႁွင်ႉလႆႈ state လႄႈ behavior ဢၼ်မီးဝႆႉ တီႈၼႂ်း class ႁဝ်းယဝ်ႉ။ သင်ၸိူဝ်ႉ ၼႂ်း method ႁဝ်းၼၼ်ႉ ၸိုဝ်ႈ state လႄႈ ၸိုဝ်ႈ parameter ၼႆႉမိူၼ်ၵၼ်ဝႆႉၼႆၸိုင် ႁဝ်းၸႂ်ႉ this သေၸႅၵ်ႇၵၼ်လႆႈဢိူဝ်ႈ။ သင်ၵေႃႈယဝ်ႉ ပေႃးၸႂ်ႉၵိုၵ်း state ၼႆ မၼ်းတေမၢႆထိုင် ဢၼ်ၶူင်ဝႆႉတီႈ global scope ဢိူဝ်ႈ။

###### လၢႆးၶူင်သၢင်ႈ

```
String name;
int pin;

// Single parameter method
void setName(String name) {
    if (name.length() < 3) return;
    this.name = name;
}

// Multiple parameter method
void setData(String name, int pin) {
    setName(name);
    this.pin = pin;
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
User user1 = new User();
user1.setName("TMK Group");
user1.setData("Sai Mao", 1234);
```
