
## **Java Basic 25**

#### **ENHANCED FOR LOOP**

Link - <https://youtu.be/N0rb1fdppUY>

Enhanced for loop ၼႆႉၵေႃႈ ၸႂ်ႉတိုဝ်း for keyword ၵူၺ်း။ ၵူၺ်းၵႃႊ မၼ်းတေႁဵတ်းၵၢၼ်ၸွမ်း Array လႄႈ Collections ၵူၺ်းဢိူဝ်ႈ။ foreach loop ၼႆၵေႃႈ ပိူၼ်ႈႁွင်ႉမၼ်းယူႇ။ လွင်ႈႁဵတ်းၵၢၼ်မၼ်းၼၼ်ႉ ႁဝ်းၸႂ်ႉ while, do - while, for loop သေၵေႃႈ ႁဵတ်းလႆႈယူႇသေတႃႉ မၼ်းသမ်ႉပဵၼ်လၢႆးငၢႆႊလိူဝ်ဢိူဝ်ႈ။

**continue keyword**

continue ၼႆႉ သင်ႁဝ်းၸႂ်ႉတိုဝ်းၼႂ်း loop ၼႆ မၼ်းတေ ၵႂႃႇၶိုၼ်းတီႈ for loop ၵမ်းလဵဝ်သေ ၶူတ်ႉဢၼ် တႅမ်ႈဝႆႉတီႈတႂ်ႈမၼ်းၼၼ်ႉ တေဢမ်ႇသိုပ်ႇ ႁဵတ်းၵၢၼ်ယဝ်ႉ။ Loop တီႈတႂ်ႈၼႆႉ ႁဝ်းပၼ်ႇတူၺ်း ၵႃႊၶၼ်တၢင်းမူတ်း ဢၼ်မီးဝႆႉတီႈၼႂ်း Array သေတႃႉ မိူဝ်ႈၽွင်ႈဢွၵ်ႇၼႄ Hsenwi ၼၼ်ႉ လႆႈႁဵတ်း continue ဝႆႉလႄႈ သင်ၸႅတ်ႈတူၺ်း totalCities ၼႆ Hsenwi ၼႆႉမၼ်းတေဢမ်ႇပႃးယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String[] cities = {"Mu-se", "Namhkam", "Kutkai", "Hsenwi", "Lashio"};
String totalCities = "";
for (var city: cities) {
    if (city.equals("Hsenwi")) continue;
    totalCities += city + ", ";
}
System._out_.println(totalCities);
```
