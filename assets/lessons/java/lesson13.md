
## **Java Basic 13**

#### **REQUEST INPUT WITH SCANNER**

Link - <https://youtu.be/mACF8UqFEIs>

System.out ၼႆႉ ႁဝ်းၸႂ်ႉတႃႇၼႄလိၵ်ႈပၼ်တီႈ command prompt လႄႈ System.in သမ်ႉ ႁဝ်းၸႂ်ႉ တႃႇယွၼ်းလိၵ်ႈတီႈ command prompt ယဝ်ႉ။ ၵူၺ်းၵႃႊ ၸႂ်ႉမၼ်းဢၼ်လဵဝ်ၵူၺ်းတေႉ ဢမ်ႇလႆႈ။ ၵွပ်ႈမၼ်းပဵၼ် Input Stream လႄႈႁဝ်းတေလႆႈၸႂ်ႉၸွမ်း class ဢၼ်ႁပ်ႉပၼ် input stream ၼၼ်ႉယဝ်ႉ။

ဢၼ်ငၢႆႊသေပိူၼ်ႈတေႉ ႁွင်ႉၸႂ်ႉၸွမ်း Scanner ၼၼ်ႉယဝ်ႉ။ ၼႂ်း constructor မၼ်းၼၼ်ႉ ႁဝ်းၶိုၼ်း သႂ်ႇပၼ် System.in သေၵေႃႈ ႁွင်ႉၸႂ်ႉလႆႈယဝ်ႉ။ တီႈ Scanner class ၼႆႉမၼ်းတေမီးဝႆႉ method တၢင်းၼမ်။ သင်ႁဝ်းၶႆႈလႆႈ တူဝ် String ႁဝ်းၶိုၼ်း ႁွင်ႉၸႂ်ႉလႆႈ next() ဢမ်ႇၼၼ် nextLine() ။ သင်ၶႆႈယွၼ်း int ၼႆသမ်ႉ ၶိုၼ်းၸႂ်ႉ nextInt() လႆႈ။ တႃႇ primitive တၢင်ႇဢၼ်ၼႆၵေႃႈ တီႈၼႂ်းမၼ်းမီး method ဝႆႉၵမ်ႈၽွင်ႈယူႇ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
System.out.println("ၸိုဝ်ႈသူ ၸိုဝ်ႈသင်ၶႃႈ?");
Scanner sc = new Scanner(System._in_);
String name = sc.nextLine();
System.out.println("ၸိုဝ်ႈသူၸိုဝ်ႈႁွင်ႉ " + name);
```