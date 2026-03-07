
## **Java Basic 36**

#### **METHOD OVERLOADING**

Link - <https://youtu.be/pqDKNdZt0cU>

Method overloading ၼႆႉ ပွင်ႇဝႃႈ ႁဝ်းၶူင်သၢင်ႈ method ဢၼ်ၸိုဝ်ႈမိူၼ်ၵၼ်ၼႆယဝ်ႉ။ တီႈ class ႁဝ်းၼၼ်ႉ တီႈတေႉ ပေႃးႁဝ်းၶူင်သၢင်ႈ method 2 ဢၼ်လႄႈ ၸိုဝ်ႈၶဝ်ၼႆႉ မိူၼ်ၵၼ်ဝႆႉၼႆၸိုင် မၼ်းတေပဵၼ် Error ဝႆႉယဝ်ႉ။ ၵူၺ်းၵႃႊ သင်ႁဝ်း ၸႂ်ႉတိုဝ်း ပိူင် 2 ပိူင်ၼႆႉၼႆ ႁဝ်းတေၸၢင်ႊ ၶူင်လႆႈဢိူဝ်ႈ။ ၼႆႉႁဝ်း ႁွင်ႉဝႃႈ method overloading ၼႆယဝ်ႉ။

**1\. Number of parameter**

သင်ႁဝ်းၶူင်သၢင်ႈ method သွင်ဢၼ် ၸိုဝ်ႈသမ်ႉမိူၼ်ၵၼ်သေတႃႉ တၢင်းၼမ် parameter ဢမ်ႇမိူၼ်ၵၼ်။ မိူၼ်ၼင်ႇ method ဢၼ်ၼိုင်ႈ မီးဝႆႉ parameter ဢၼ်ၼိုင်ႈသေ ထႅင်ႈ method ဢၼ်ၼိုင်ႈသမ်ႉ ယွၼ်းဝႆႉ parameter သွင်ဢၼ်ယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ

```
private void printAge() {
    System.out.println("ဢသၢၵ်ႈၶႃႈ 28 ပီႊ");
}

private void printAge(int age) {
    System.out.println("ဢသၢၵ်ႈၶႃႈၸၢႆး " + age + " ပီႊ");
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
Main main = new Main();
main.printAge();
main.printAge(28);
```


**2\. Parameter data type**

Method 2 ဢၼ် ၸိုဝ်ႈမိူၼ်ၵၼ်ယူႇၵေႃႈ ဢၼ်ၼိုင်ႈသမ်ႉ ယွၼ်းဝႆႉ int လႄႈ ထႅင်ႈဢၼ်သမ်ႉ ယွၼ်းဝႆႉ byte ။

###### လၢႆးၶူင်သၢင်ႈ

```
private void printAge(int age) {
    System.out.println("ဢသၢၵ်ႈၶႃႈၸၢႆး " + age + " ပီႊ");
}

private void printAge(byte age) {
    System.out.println("ဢသၢၵ်ႈၶႃႈၸၢႆး " + age + " ပီႊ");
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
main.printAge(28);
byte age = 18;
main.printAge(age);
```
