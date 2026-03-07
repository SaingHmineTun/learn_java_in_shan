
## **Java Basic 16**

#### **MULTI-DIMENSIONAL ARRAY**

Link - <https://youtu.be/kXU66J_VyZk>

ၼႂ်း Array ၼႆႉ ဢမ်ႇၸႂ်ဝႃႈ ႁဝ်းတေသႂ်ႇလႆႈ int, char, String လႆႈၵူၺ်း။ ၼႂ်းမၼ်းၼၼ်ႉ ႁဝ်းၶိုၼ်းသိမ်း Array ၵေႃႈလႆႈထႅင်ႈၵွၼ်ႇဢိူဝ်ႈ။ လွင်ႈၼႆႉ ႁဝ်းႁွင်ႉဝႃႈ Multi-dimensional Array ၼႆယဝ်ႉ။ သင်ၸိူဝ်ႉ ႁဝ်းသႂ်ႇ Array ဝႆႉၼႂ်း Array ထႅင်ႈဢၼ်ၼိုင်ႈၼႆ မၼ်းပဵၼ် 2D Array ယဝ်ႉ။ တီႈတေႉ ႁဝ်းႁဵတ်ႉ 3D, 4D ၵေႃႈလႆႈဢွၼ်ႇဢိူဝ်ႈ။ ၶႃႈတေႉ တေၼႄပၼ်လွင်ႈ 2D Array ၵႂႃႇၵူၺ်း။

**ႁဵတ်ႉတူဝ်း 2 Dimensional Array**

ဝႆႉဝႃႈ ႁဝ်းတေသိမ်းဝႆႉ int array တီႈၼႂ်း array ထႅင်ႈၼႆလႄႈ။ ၵမ်းၼႆႉ ႁဝ်းတေလႆႈၸႂ်ႉ squared bracket သွင်ဢၼ်ယဝ်ႉ။ ၵမ်းၼႆႉ ၼႂ်း Array ၼၼ်ႉသမ်ႉ ႁဝ်းတေလႆႈ သႂ်ႇပၼ် Array ထႅင်ႈယဝ်ႉ။ သင်သႂ်ႇ ဢၼ်ဢမ်ႇၸႂ် Array ၼႆၸိုင် IDE ႁဝ်းတေၼႄပၼ် ၽိတ်းၼႆယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String[] person1 = {"Sai Mao", "Muse"};
String[] person2 = {"Sai Lao", "Namhkam"};
String[] person3 = "Sai Yee,Hsenwi".split(",");
String[][] persons = {person1, person2, person3, {"Noung Hom", "Kutkai"}};
```

**ဢဝ်ၵႃႊၶၼ် တီႈၼႂ်းမၼ်း လႄႈ ပိၼ်ႇလၢႆႊၵႃႊၶၼ် တီႈၼႂ်းမၼ်း**

မိူဝ်ႈၽွင်း ၸႂ်ႉတိုဝ်း index ဢွၼ်တၢင်းသုတ်ႉၼႆႉ မၼ်းတေပၼ်ႁဝ်းၶိုၼ်း array ဢၼ်ၼိုင်ႈၵူၺ်း။ ၵွပ်ႈၼႆ ႁဝ်းတေလႆႈၸႂ်ႉ \[\] သွင်ဢၼ် ၸင်ႇတေလႆႈ ၵႃႊၶၼ် တီႈၼႂ်းသုတ်ႉမၼ်းယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String name = persons[1][0]; // Sai Lao  
persons[1][0] = "Sai Hak";  
name = persons[1][0]; // Sai Hak
```

**ထုၵ်ႈဢွၵ်ႇၼႄ ၵႃႊၶၼ်လိုၼ်းသုတ်ႉ ဢၼ်မီးဝႆႉတီႈၼႂ်း 2D Array**

ၼႆႉတေႉၵေႃႈ ႁဝ်းတေလႆႈၸႂ်ႉ length မိူၼ်ၼင်ႇ array ယူဝ်းယူဝ်းယူႇ။ \[\] ဢွၼ်တၢင်းသုတ်ႉၼႆႉ မၼ်းတေ ပၼ်ႁဝ်းၶိုၼ်း array ဢၼ်မီးဝႆႉတီႈ multi array လႄႈ \[\] ထႅင်ႈဢၼ်သမ်ႉ မၼ်းတေ ပၼ်ၶိုၼ်း ၵႃႊၶၼ် value ဢၼ်မီးဝႆႉ တီႈၼႂ်း array ယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
String[] lastArray = persons[persons.length - 1];
String firstValue = lastArray[0];
String lastValue = lastArray[lastArray.length - 1];  
lastValue = persons[persons.length - 1][persons[persons.length-1].length - 1];
```
