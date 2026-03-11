
## **Java Basic 70**

#### **GENERIC CLASS AND METHOD**

Link - <https://youtu.be/TdkjzAwg87g>

Generic ၼႆႉ မၼ်းပဵၼ် parameterized type ဢိူဝ်ႈ။ ပွင်ႇဝႃႈ Data type ၼၼ်ႉ မၼ်းဢမ်ႇၸႂ် ပုင်ႇတၢႆ မိူၼ် String, int ၸိူဝ်းၼၼ်ႉယဝ်ႉသေ ႁဝ်းၶႆႈသႂ်ႇပၼ် Type သင်ၵေႃႈ လႆႈၼႆယဝ်ႉ။ တီႈ Java ၼႆႉ ႁဝ်းၸႂ်ႉတိုဝ်း Angle bracket <> တႃႇတႅမ်ႈ Generic ယဝ်ႉ။ Generic ၼႆႉ မၼ်းတေမီးဝႆႉယူႇ 2 လၢႆး

**1\. Generic class**

ၼႆႉသမ်ႉ ပဵၼ်ဢၼ် ႁဝ်းမႃးၸႂ်ႉတိုဝ်း Generic တီႈ class ယဝ်ႉ။ ဝၢႆးသေတႅမ်ႈၸိုဝ်ႈ class ယဝ်ႉၼႆ ႁဝ်းၶိုၼ်းမႃးတႅမ်ႈပၼ် generic ယဝ်ႉ။ ၵမ်းၼႆႉ type ဢၼ်တႅမ်ႈဝႆႉၼၼ်ႉ တေၸႂ်ႉလႆႈၵူႊတီႈ တီႈၼႂ်း class ႁဝ်းယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ

```
public class User<P, N> {
    String name;
    P password;
    N phoneNumber;
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
User<String, Boolean> user = new User();

user.setPassword("Sai Sai");

user.phoneNumber = true;
```

Generic method

ၼႆႉသမ်ႉ ပဵၼ်ဢၼ် ႁဝ်းမႃးႁွင်ႉၸႂ်ႉ Generic တီႈ method ဢိူဝ်ႈ။ တႃႇတေဢဝ် method ႁဝ်းပဵၼ် generic ၼႆၸိုင် ႁဝ်းတေလႆႈသႂ်ႇပၼ် generic type တီႈ ၽၢႆႇၼႃႈ method return type ႁဝ်းယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ

```
public <I> I getValue(I i) {
    return i;
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String s = user.getValue("Hello");
int i = user.getValue(123);
```

