## **Java Basic 33**

#### **METHODS IN JAVA**

Link - <https://youtu.be/QO8y-M9kE1g>

ပေႃးႁဝ်းၶူင် Class ၼိုင်ႈဢၼ်ၼႆ တီႈၼႂ်းမၼ်း တေမီးလႆႈ State (Variable) လႄႈ Behaviors (Methods) ၼႆ ၶႃႈၵေႃႈလၢတ်ႈၵႂႃႇယဝ်ႉ။ Variable ၼႆႉတေႉ လိူဝ်သေ ႁဝ်းမၵ်းမၼ်ႈ ၊ ထုၵ်ႈဢွၵ်ႇၼႄၵႃႊၶၼ်လႆႈ မၼ်းတေဢမ်ႇႁဵတ်ႉသင်လႆႈ။ ၵွပ်ႈၼႆ ပေႃးႁဝ်းတေ ၶႆႈႁႂ်ႈမၼ်းႁဵတ်ႉၵၢၼ်သေလွင်ႈလွင်ႈၼႆ ႁဝ်းတေလႆႈၸႂ်ႉ method ဢိူဝ်ႈ။ Method ၼႆႉ ဢၼ် Attributes ႁဵတ်ႉလႆႈၼၼ်ႉ မၼ်းတေႁဵတ်ႉလႆႈတၢင်းသဵင်ႈလႄႈ မၼ်းတေႁဵတ်ႉလႆႈထႅင်ႈ ၵၢၼ်တၢင်းၼမ်ယဝ်ႉ။

**ပိူင်တႃႇၶူင်သၢင်ႈ Method**

Method ၼိုင်ႈဢၼ်ၼႆႉ မၼ်းတေလႆႈမီးတူဝ် (Method Body) လႄႈ မီးႁူဝ် (Method Header) ယဝ်ႉ။ **Method Header** ၼႆႉတေလႆႈၸွမ်းပိူင် သၢမ်လွင်ႈၼႆႉ

- တေလႆႈမီး Return Type တႃႇႁဝ်းတေ ပၼ်ၶိုၼ်းၵႃႊၶၼ်သေဢၼ်ဢၼ် ၊ ပေႃးဢမ်ႇၶႆႈပၼ်သင်ၼႆ ၸႂ်ႉတိုဝ်း void လႆႈယူႇ။
- တေလႆႈမၵ်းမၼ်ႈပၼ် ၸိုဝ်ႈ method။ ၸိုဝ်ႈၼႆႉတေႉ ပၼ်ၸိူင်ႉႁိုဝ်ၵေႃႈ လႆႈသေတႃႉ ႁဝ်းထုၵ်ႇလီ ပၼ်ၸွမ်း ပိူင် variable naming convention ။
- ၽၢႆႇလင် ၸိုဝ်ႈ Method သမ်ႉ တေလႆႈမီး တူင်ႇမူၼ်း တႃႇႁဝ်းတေႁပ်ႉဢဝ် ၵႃႊၶၼ် ဢၼ်သူင်ႇမႃးပၼ်ႁဝ်း။ ႁွင်ႉဝႃႈ Parameters or Arguments ၼႆယဝ်ႉ။

**Method Body** ၼႆႉတေႉၵေႃႈ တေမိူၼ်ၵၼ်တၢင်း if လႄႈ while ၵူၺ်းၼင်ႇၵဝ်ႇ။ တေလႆႈၸႂ်ႉ တူင်ႇၶဝ်ႈသွႆး {...} သေ ပိုတ်ႇၽုၺ်ႇသေ ဢိုတ်းပၼ်ယဝ်ႉ။ သင်ၸိူဝ်ႉ method header သမ်ႉ ယွၼ်းဝႆႉ return type ၼႆၸိုင် ႁဝ်းတေလႆႈၶိုၼ်း return ပၼ် ၵႃႊၶၼ် ဢၼ်မၼ်းယွၼ်းဝႆႉလႄႈ၊ သင်ဢမ်ႇယွၼ်းသင်ၼႆတေႉ ဢမ်ႇလူဝ်ႇႁဵတ်ႉသင်ပၼ်ၵေႃႈလႆးယူႇ။

###### လၢႆးၶူင်သၢင်ႈ method တီႈၼႂ်း class

```
public class Nrc {
    String name;
    String location;
    String gender;
    String number = "13/masata(N)123456";

    void printInfo() {
        System.out.println(name);
        System.out.println(location);
        System.out.println(gender);
        System.out.println(number);
    }
}
```

###### လၢႆးႁွင်ႉၸႂ်ႉ method ဢၼ်ၶူင်ဝႆႉ

```
Nrc nrc = new Nrc();
nrc.printInfo();
```