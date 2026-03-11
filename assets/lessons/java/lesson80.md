
## **Java Basic 76**

#### **WRITE FILE TO TXT**

Link - <https://youtu.be/AQuFMyXZ58s>

#### ထုၵ်ႇလီပဵၼ် 80 သေတႃႉ မိူဝ်ႈထႆႇဝီးတီးဢူဝ်းၼၼ်ႉ တူၵ်းလိုမ်းပႅတ်ႈလႄႈ ၸင်ႇဝႃႈပဵၼ်ဝႆ့ 76 ယဝ်ႉ။


မၼ်းၵေႃႈတေမိူၼ် Read file ၼင်ႇၵဝ်ႇ။ တေမီးဝႆႉ လွၵ်းလၢႆးၼမ်ယူႇၵေႃႈ တွၼ်ႈၼႆႉတေႉ တေၸႂ်ႉတိုဝ်း BufferedWriter သေ တေၼႄပၼ်ၵႂႃႇ။ မၼ်းၵေႃႈ ဢမ်ႇႁပ်ႉဝႆႉ File သေ ႁဝ်းၶိုၼ်းၶူင် FileWriter ပၼ်ထႅင်ႈယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
File file = new File("C:\\Users\\Sai Mao\\Desktop\\Sai Mao.txt");
BufferedWriter writer = new BufferedWriter(new FileWriter(file));
writer.write("Hello");
writer.newLine();
writer.append("Sai Mao");
writer.close();
```