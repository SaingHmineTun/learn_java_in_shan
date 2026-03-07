
## **Java Basic 42**

#### **INHERITANCE**

Link - <https://youtu.be/jpgUMx3q3lM>

Inheritance ၼႆႉ တီႈပွင်ႇမၼ်းၼႆႉပဵၼ် လွင်ႈလႆႈဢမူၺ်ႇ ၼႆယဝ်ႉ။ မိူၼ်ၼင်ႇ Aik Kyaw inherits his mom's business. ဢၼ်ဝႃႈၼႆႉ ပွင်ႇဝႃႈ ဢၢႆႈၵျေႃႇ လႆႈဢမူၺ်ႇ တီႈမႄႈၶဝ်ယဝ်ႉ၊ မၼ်းပဵၼ် ၸဝ်ႈၶွင် ၼႃႈၵၢၼ်မႄႈၶဝ်ယဝ်ႉ ၼႆယူႇ။

**protected modifier** ၼႆႉ ၵမ်ႈၼမ်ၼမ် မၼ်းတေမိူၼ်ၵၼ်တၢင်း default modifier သေတႃႉ သင်ၸိူဝ်ႉ ၸႂ်ႉၸွမ်း inheritance ၼႆၸိုင် child class ၼႆႉတေႁွင်ႉၸႂ်ႉလႆႈ member ဢၼ်လႆႈဢဝ် protected သေႁဵတ်ႉဝႆႉ တီႈၼႂ်း Parent class ယဝ်ႉ။ class Mother ၼႆႉ ႁဝ်းတေႁွင်ႉဝႃႈ parent class ဢမ်ႇၼၼ် super class သေ class AikKyaw သမ်ႉ ၵွပ်ႈပိူဝ်ႈ မၼ်းလႆႈဢမူၺ်ႇ တီႈ Mother class ဝႆႉလႄႈ ႁဝ်းႁွင်ႉမၼ်းဝႃႈ child class ဢမ်ႇၼၼ် sub class ၼႆယဝ်ႉ။

တီႈပရူဝ်ႇၵရမ်းမိၼ်းၼႆႉတေႉ ပေႃးႁဵတ်ႉ inherit ၼႆ state လႄႈ behaviors ဢၼ်လႆႈဢဝ် public, protected ပၼ်ဝႆႉၼၼ်ႉ child class မၼ်းတေလႆႈမူတ်း။ parent class ၼႆႉ သင်ဢမ်ႇၶႆႈပၼ် child class ၼႆ ၸႂ်ႉတိုဝ်း private modifier သေၵေႃႈ ႁၢမ်ႈသီးဝႆႉလႆႈယူႇ။

တီႈ Java ၼႆႉတေႉ သင် class ဢၼ်ၼိုင်ႈ ၶႆႈႁဵတ်ႉ inherit class ဢၼ်ၼိုင်ႈၼႆၸိုင် ႁဝ်းၸႂ်ႉတိုဝ်း **extends** keyword ယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ parent class

```
public class Mother {
    public String shopName = "Ngeen";
    public void sellGoods() {
        System.out.println("Mother is selling goods!");
    }
}
```

###### လၢႆးဢဝ်ဢမူၺ်ႇ ၸႂ်ႉတိုဝ်း extends

```
public class AikKyaw extends Mother { }
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
AikKyaw aikKyaw = new AikKyaw();
System.out.println("Shop name - " + aikKyaw.shopName);
aikKyaw.sellGoods();
```

AikKyaw ၼႆႉ ၼႂ်းမၼ်း ဢမ်ႇမီးဝႆႉသင်သေတႃႉ ၵွပ်ႈမၼ်း inherit ဝႆႉတီႈ Mother ၼႆလႄႈ သင်ႁဝ်း ၶူင်သၢင်ႈ object မၼ်းယဝ်ႉၼႆၸိုင် ႁဝ်းႁွင်ႉလႆႈ shopName လႄႈ sellGoods() ဢၼ်ၵူၺ်းမီးဝႆႉ တီႈၼႂ်း Mother class ယဝ်ႉ။
