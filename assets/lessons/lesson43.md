
## **Java Basic 43**

###### **POLYMORPHISM**

Link - <https://youtu.be/ZUJ5nwQR70k>

Polymorphism ၼႆႉ တွင်းဝႆႉပၼ်ဝႃႈ Many Form ၼႆလႄႈ။ ပွင်ႇဝႃႈ မၼ်းပဵၼ်လႆႈ ပုင်ႇၸၢမ်ႇ/ႁၢင်ႈ တၢင်းၼမ် ၼႆယူႇ။ Polymorphism တေႉၵေႃႈ လုၵ်ႉတီႈ inheritance သေပဵၼ်မႃးၵူၺ်းလႄႈ ႁဝ်းဢမ်ႇလူဝ်ႇ မႄးတႅမ်ႈသင်ထႅင်ႈယဝ်ႉ။

Polymorphism ၼႆႉပဵၼ်လွင်ႈ ဢၼ်ႁဝ်းဢဝ် child object ၼၼ်ႉ သိမ်းဝႆႉၼႂ်း parent variable ဢိူဝ်ႈ။ လွင်ႈလီမၼ်းၼႆႉၵေႃႈ တီႈလႂ် ယွၼ်းဝႆႉ parent class တီႈၼၼ်ႈ ႁဝ်းတေ သူင်ႇပၼ်လႆႈ child object ယဝ်ႉ။

###### ၶူင်သၢင်ႈ children classes

```
public class AikKyaw extends Mother { }

public class NangTun extends Mother { }
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
Mother aikKyaw = new AikKyaw();
Mother nangTun = new NangTun();
```

AikKyaw လႄႈ NangTun ၶဝ်သွင်ၵေႃႉၼႆႉ ၵွပ်ႈလႆႈႁဵတ်ႉ inherit ဝႆႉတီႈ Mother class ၼႆလႄႈ ၸင်ႇဢဝ် object ၶဝ်သိမ်းဝႆႉလႆႈၼႂ်း variable ဢၼ်လႆႈဢဝ် Mother class သေ ၶူင်ဝႆႉယဝ်ႉ။

**Method Overriding**

ၼႂ်း Polymorphism ၼႆႉတေႉ ဢၼ်လမ်ႇလွင်ႈမၼ်းတေႉပဵၼ် Method Overriding ၼႆယဝ်ႉ။ Method Overwriting ဢၼ်ဝႃႈၼၼ်ႉ ၸိုဝ်ႈ method ဢၼ်မီးဝႆႉတီႈၼႂ်း Parent class ၼၼ်ႉ ႁဝ်းၶိုၼ်း မႃးတႅမ်ႈၶိုၼ်း တီႈ Child class သေ တီႈၼႂ်း body မၼ်းၼၼ်ႉ ႁဝ်းၶိုၼ်း ပိၼ်ႇတႅမ်ႈၶိုၼ်းမႂ်ႇယဝ်ႉ။ ၵမ်းၼႆႉ သင်ႁဝ်းႁွင်ႉ method ၼၼ်ႉၼႆၸိုင် မၼ်းတေႁွင်ႉပၼ် ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉတီႈ Child class ၵူၺ်းယဝ်ႉဢိူဝ်ႈ။

တီႈၼႂ်း Mother class ၼၼ်ႉ မၼ်းတေမီးဝႆႉ sellGoods() method ဝႆႉသေ ဝၢႆးသေ inherit ယဝ်ႉ ႁဝ်းၶိုၼ်းမႄးတႅမ်ႈ sellGoods() ၼႆႉၶိုၼ်း တီႈ child class မၼ်းၼႆႉ ပဵၼ် method overriding ယဝ်ႉ။ ၵမ်းၼႆႉ သင်ႁဝ်း ၶူင်သၢင်ႈ child object သေ ႁွင်ႉတူၺ်း sellGoods() ၼႆၸိုင် ဢၼ်တႅမ်ႈဝႆႉ တီႈၼႂ်း child class ၼၼ်ႉၵူၺ်း မၼ်းတေႁဵတ်ႉၵၢၼ်ၵႂႃႇ။

###### လၢႆးၶူင်သၢင်ႈ

```
public class AikKyaw extends Mother {
    public void sellGoods() {
        System.out.println("Aik Kyaw is selling goods!");
    }
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
Mother aikKyaw = new AikKyaw();
aikKyaw.sellGoods(); // Aik Kyaw is selling goods!
```

**super keyword**

this ၼႆႉ မၢႆထိုင်ၶိုၼ်း current object ၼႆ ၶႃႈၵေႃႈလၢတ်ႈၵႂႃႇယဝ်ႉ။ တီႈ inheritance ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉတိုဝ်းလႆႈ super keyword ထႅင်ႈဢိူဝ်ႈ။ မၼ်းမၢႆထိုင် parent object ယဝ်ႉ။ ၵွပ်ႈၼႆ ယူႇတီႈ child object ၼၼ်ႉသေ သင်ၶႆႈႁွင်ႉၸႂ်ႉ global variable, method လႄႈ constructor ဢၼ်မီးဝႆႉတီႈၼႂ်း parent class ၼႆၸိုင် ႁဝ်းၸႂ်ႉ super keyword လႆႈဢိူဝ်ႈ။

###### လၢႆးၶူင်သၢင်ႈ

```
public class NangTun extends Mother {
    public void sellGoods() {
        System.out.print("Nang Tun & ");
        super.sellGoods();
    }
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
Mother nangTun = new NangTun();
nangTun.sellGoods(); // Nang Tun & Mother is selling goods!
```
