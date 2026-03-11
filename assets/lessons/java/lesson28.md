
## **Java Basic 28**

#### **STRING USEFUL METHODS**

Link - <https://youtu.be/cntv3KkAQHs>

String ၼႆႉၵွပ်ႈပဵၼ် Reference လႄႈ ၼႂ်းမၼ်းၵေႃႈ မီးဝႆႉ method တၢင်းၼမ်။ တွၼ်ႈၼႆႉတေႉ တေလၢတ်ႈလွင်ႈ method ၵမ်ႈၽွင်ႈ ဢၼ်ၸႂ်ႉတိုဝ်းၼမ်ဝႆႉယဝ်ႉ။

**isEmpty & isBlank**

isEmpty ၼႆႉ ႁဝ်းၸႅတ်ႈတူၺ်းဝႃႈ ၼႂ်း String ၼႆႉၸွင်ႇမီးၵႃႊၶၼ် ၼႆယဝ်ႉ။ ပေႃးမီးၵေႃႈ ပၼ်ၶိုၼ်း true ၊ ပေႃးဢမ်ႇမီးသမ်ႉ false ။ isBlank ၼႆႉၵေႃႈ မိူၼ်ၼႆၵူၺ်း၊ ၵူၺ်းၵႃႊ သင်ၸိူဝ်ႉ ႁဝ်းသမ်ႉတႅမ်ႈဝႆႉ space ဢမ်ႇၼၼ် tab ဝႆႉ တီႈၼႂ်း String ႁဝ်းၼႆၸိုင် isEmpty ၼၼ်ႉ မၼ်းတေထၢင်ႇမီး ၵႃႊၶၼ်ဝႆႉလႄႈ isBlank တေႉ မၼ်းတေ ၼႄပၼ် false ၵူၺ်း။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String a = " ";
boolean isEmpty = a.isEmpty(); // true
boolean isBlank = a.isBlank(); // false
```

**contains, startsWith, endsWith**

Method သၢမ်ဢၼ်ၼႆႉၵေႃႈ ၸႅတ်ႈၵႃႊၶၼ်ၵူၺ်းလႄႈ ပၼ်ၶိုၼ်း true ဢမ်ႇၼၼ် false ၵူၺ်း။ startsWith သမ်ႉ သင်ႁဝ်းတေႇဝႆႉ ၸႂ်ႉတိုဝ်းတူဝ်လိၵ်ႈ ဢၼ်သႂ်ႇဝႆႉၼႂ်း parameter ၼႆ မၼ်းတေပၼ် true ။ endsWith ၼႆႉသမ်ႉ ၸႅတ်ႈတူၺ်းဝႃႈ တူဝ်လိၵ်ႈ String ၼႆႉ ၸွင်ႇသုတ်ႉၸွမ်း parameter ႁဝ်းၼႆယူႇ။ contains ၼႆႉသမ်ႉ ၸႅတ်ႈတူၺ်းဝႃႈ ၼႂ်း String ၼၼ်ႉ ၸွင်ႇပႃးဝႆႉ parameter ၼႆယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String b = "Sai";
System.out.println(b.contains("ai")); // true
System.out.println(b.startsWith("Sb")); // false
System.out.println(b.endsWith("ai")); // true
```

**strip, stripLeading, stripTrailing**

strip ၼႆႉတေႉ မၼ်းဢဝ်ပႅတ်ႈ space ဢမ်ႇၼၼ် tab ဢၼ်မီးဝႆႉ တီႈၽၢႆႇၼႃႈ၊ ၽၢႆႇလင် String ႁဝ်းသေ stripLeading ၼႆႉသမ်ႉ မၼ်းတေၵႅတ်ႉပႅတ်ႈ ဢၼ်ယူႇတီႈ ၽၢႆႇၼႃႈ String ၵူၺ်းလႄႈ stripTrailing ၼႆႉသမ်ႉ တေၵႅတ်ႉပၼ် ဢၼ်ယူႇတီႈ ၽၢႆႇလင် String ယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String c = " Hello ";
String str = c.strip(); // "Hello"
str = c.stripLeading(); // "Hello "
str = c.stripTrailing(); // " Hello"
```

**indexOf, lastIndexOf**

indexOf ၼႆႉသမ်ႉ မၼ်းႁႃပၼ် တူဝ်လိၵ်ႈ ဢၼ်မီးဝႆႉ တီႈၼႂ်း String သေ ပၼ်ၶိုၼ်း index ႁဝ်းယဝ်ႉ။ သင်ႁႃဢမ်ႇႁၼ် တူဝ်လိၵ်ႈၼႆၸိုင် မၼ်းတေ ပၼ်ၶိုၼ်း -1 ယဝ်ႉ။ သင်သမ်ႉ တူဝ်လိၵ်ႈ ဢၼ်ႁဝ်း ႁႃယူႇၼၼ်ႉ မီးၼမ်သေၼိုင်ႈတူဝ်ၼႆၸိုင် indexOf ၼႆႉတေပၼ်ၶိုၼ်း index ဢၼ်ႁၼ် ဢွၼ်တၢင်းၵူၺ်း။ lastIndexOf ၼႆႉ မၼ်းပၼ်ၶိုၼ်း index ဢၼ်ႁၼ် လိုၼ်းလင်ဢိူဝ်ႈ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String d = "Shan State";
int index = d.indexOf("S"); // 0
index = d.lastIndexOf("S"); // 5
```

**charAt**

ၼႆႉသမ်ႉ ႁဝ်းၸႂ်ႉ index သေ ဢဝ်ၶိုၼ်း char ဢၼ်မီးဝႆႉ တီႈၼႂ်း String ယဝ်ႉ။ မၼ်းၵေႃႈ မိူၼ်ၼင်ႇ ႁဝ်းဢဝ် ၵႃႊၶၼ်သေဢၼ်ဢၼ် ဢၼ်မီးဝႆႉ တီႈၼႂ်း array ယူႇ။ သင် index ဢၼ်ႁဝ်းႁႃၼၼ်ႉ ဢမ်ႇမီးၼႆၸိုင် မၼ်းတေပဵၼ် ERROR ယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
char ch = d.charAt(3); // n
char ch = d.charAt(d.length - 1); // e
```
