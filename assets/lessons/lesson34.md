## **Java Basic 34**

#### **METHOD RETURN TYPE**

Link - <https://youtu.be/bEyFIsuLfQU>

ပေႃးႁဝ်းတေႁဵတ်း Method ၼႆ ႁဝ်းတေလႆႈမီး Method Header လႄႈ Method Body ၼႆၵေႃႈ ၶႃႈလၢတ်ႈဝႆႉယဝ်ႉ။ method return type ၼႆႉ ပွင်ႇဝႃႈ ပေႃးႁဝ်းႁွင်ႉၸႂ်ႉ method ၼႆ ႁဝ်းၶိုၼ်းတေ လႆႈၶိုၼ်း ၵႃႊၶၼ်သေ ဢၼ်ဢၼ်ၼႆယဝ်ႉ။ မိူၼ်ၼင်ႇ ၼႂ်း Scanner class ၼႆႉ nextInt() ပၼ်ႁဝ်းၶိုၼ်း int ၊ nextLine() သမ်ႉ ပၼ်ႁဝ်းၶိုၼ်း String ယဝ်ႉ။

သင်ၸိူဝ်ႉ ႁဝ်းပၼ် return type ပဵၼ် int ဝႆႉၼႆ ႁဝ်းတေလႆႈၶိုၼ်း သူင်ႇပၼ် ၵႃႊၶၼ် ဢၼ်ပဵၼ် data type int မိူၼ်ၼင်ႇ 1, 2, 3 ယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ

```
String password;
String getPassword() {
    if (password == null) password = "PASSWORD";
    return password;
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
FacebookUser facebookUser2 = new FacebookUser();
String password = facebookUser2.getPassword();
```
