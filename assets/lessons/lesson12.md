
## **Java Basic 12**

#### **STRING**

Link - <https://youtu.be/0sBWuMAtwFc>

String ၼႆႉ မၼ်းပဵၼ် Non-primitive ဢိူဝ်ႈ။ ၵူၺ်းၵႃႊ ပဵၼ် Data type ဢၼ်ၵူၼ်းၸႂ်ႉၼမ်ႁႅင်းဝႆႉလႄႈ Java ၸင်ႇႁဵတ်ႉပၼ်ႁႂ်ႈၸႂ်ႉၸွမ်းလႆႈ String literal ယဝ်ႉ။ လွင်ႈလီတိူဝ်း Reference ၼႆႉသမ်ႉ မၼ်းဢမ်ႇမီး Limit လႄႈႁဝ်းတေ ႁွင်ႉၸႂ်ႉလႆႈ method ဢမ်ႇၼၼ် variable ဢၼ်မီးဝႆႉ ၼႂ်းမၼ်းလႆႈယဝ်ႉ။

တႃႇၶူင်သၢင်ႈ String ၼိုင်ႈဢၼ်ၼႆႉတေႉ ၵွပ်ႈၸႂ်ႉလႆႈ literal ၼႆလႄႈ မၼ်းၵေႃႈတေမိူၼ် ႁဝ်းၶူင်သၢင်ႈ primitive ၼိုင်ႈဢၼ်ယူႇ။ ၵူၺ်းၵႃႊ သင်ၶႆႈၸႂ်ႉၸွမ်း new keyword ၵေႃႈလႆႈယူႇ။ သင်ၸႂ်ႉၸွမ်း new keyword ၼႆတေႉ မၼ်းတေဝႄႈပၼ် String Pool ဢိူဝ်ႈ။

###### လၢႆးၸႂ်ႉတိုဝ်း
```
String name = "Sai Mao";
String org = new String("ထုင်ႉမၢဝ်းၶမ်း");
```

**String Pool**

Java String ၼႆႉ သင်ႁဝ်းၶူင်သၢင်ႈ String ၼိုင်ႈဢၼ်ၼႆ မၼ်းတေၵႂႃႇသိမ်းဝႆႉတီႈ String pool ယဝ်ႉ။ တီႈၼႆႈ သင်ႁဝ်း ၶူင်သၢင်ႈ String ၼမ်ၼမ်လႄႈ ၵႃႊၶၼ်ၼႂ်းမၼ်း သမ်ႉမိူၼ်ၵၼ်မူတ်းၼႆၸိုင် မၼ်းတေပၼ် String pool ဢၼ်လဵဝ်ၵူၺ်း။ ၵွပ်ႈၼႆ ပေႃးႁဝ်းၸႅတ်ႈတူၺ်းၸွမ်း double equal (==) ၼႆ မၼ်းၸင်ႇၼႄပၼ် true ယဝ်ႉ။ မၼ်းဢမ်ႇမၢႆထိုင်ဝႃႈ ၵႃႊၶၼ်ၼႂ်း String မိူၼ်ၵၼ်။ == ၼႆႉပေႃးၸႂ်ႉတီႈ non-primitive ၼႆမၼ်းၸႅတ်ႈတူၺ်းဝႃႈ ၵႃႊၶၼ်သွင်ဢၼ်ၼႆႉ လုၵ်ႉတီႈ reference ဢၼ်လဵဝ်သေ မႃးႁၼႆယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String a = "a";
String a2 = "a";  
String a3 = new String("a");  
String a4 = a3;  
boolean sameReference = a == a2; // true;  
sameReference = a2 == a3; // false;  
sameReference = a3 == a4; // true;
```

**String Equality**

သင်ႁဝ်းၶႆႈၸႅတ်ႈတူၺ်းဝႃႈ ၼႂ်း String ၼႆႉၵႃႊၶၼ် ၸွင်ႇမိူၼ်ၵၼ်ၼႆၸိုင် ႁဝ်းႁွင်ႉၸႂ်ႉလႆႈ equals method ဢိူဝ်ႈ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String a = new String("A");
String a2 = new String("A");
boolean isEquals = a.equals(a2); // true
```

**Change String Case**

ႁဝ်းႁွင်ႉၸႂ်ႉလႆႈ toLowerCase() လႄႈ toUpperCase() တႃႇလႅၵ်ႈလၢႆး String ႁႂ်ႈပဵၼ် တူဝ်လဵၵ်ႉ၊ တူဝ်ယႂ်ႇဢိူဝ်ႈ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String myName = "Sai Mao from Muse";
String capital = myName.toUpperCase(); // SAI MAO FROM MUSE
System.out.println(capital);
String small = myName.toLowerCase(); // sai mao from muse
```
**String Concatenation**

တႃႇတေ ႁူမ်ႈလေႃး String သွင်ဢၼ်ၼႆ မၼ်းၵေႃႈမီးဝႆႉ concat() method ယူႇ။ ၼႆႉပဵၼ် method ဢၼ်ၸႂ်ႉၼမ်ဝႆႉလႄႈ Java ၸင်ႇႁဵတ်ႉ operator overloading ပၼ်ႁဝ်း တႃႇၸႂ်ႉၸွမ်း + operator လႆႈယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
System.out.println("Sai".concat("Mao")); // SaiMao
System.out.println("Sai " + "Mao " + "From " + "Muse"); // Sai Mao From Muse
```