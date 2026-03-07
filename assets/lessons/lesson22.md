
## **Java Basic 22**

#### **WHILE LOOP**

Link - <https://youtu.be/IvoZyklMpRk>

while loop ၼႆႉ ပဵၼ် looping ဢၼ်ၸႂ်ႉတိုဝ်းငၢႆႊသေပိူၼ်ႈယဝ်ႉ။ တႃႇႁဝ်းတေမႃးၸႂ်ႉတိုဝ်း while ၼႆ ႁဝ်းမႃးၸႂ်ႉ while keyword ဢၼ်ၼိုင်ႈၵူၺ်းၵေႃႈ လႆႈယဝ်ႉ။ တီႈၼႂ်း တူင်ႇမူၼ်းမၼ်းသမ်ႉ ႁဝ်းၶိုၼ်းသႂ်ႇပၼ် boolean expression သေၵေႃႈ သင်မၼ်း တိုၵ်ႉပဵၼ် true ဝႆႉယူႇၼႆ မၼ်းတေၶဝ်ႈၼႂ်း block မၼ်းသေ ႁဵတ်ႉၵႂႃႇယူႇတိၵ်ႉတိၵ်ႉ ထိုင်တီႈပေႃးပဵၼ် false ၼႆယဝ်ႉ။

**Infinite Loop**

သင်ၸိူဝ်ႉ တီႈၼႂ်းတူင်ႇမူၼ်း loop ႁဝ်းၼၼ်ႉ ပဵၼ် true ဝႆႉယူႇတႃႇသေႇၼႆၸိုင် loop ႁဝ်းၵေႃႈ တေႁဵတ်ႉၵၢၼ် ဢမ်ႇၵိုတ်ႉဢမ်ႇလိုဝ်ႈၼႆလႄႈ ႁဝ်းၶိုၼ်းႁွင်ႉမၼ်းဝႃႈ infinite loop ၼႆယဝ်ႉ။ သင်ၸိူဝ်ႉ code ႁဝ်းၶမ်ဝႆႉတီႈ infinite loop ၼႆၸိုင် code ဢၼ်တႅမ်ႈဝႆႉ တီႈတႂ်ႈမၼ်းၼၼ်ႉ တေဢမ်ႇသိုပ်ႇႁဵတ်ႉၵၢၼ်လႆႈယဝ်ႉ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
boolean go = true;
while (go) {
    System.out.println("Infinite loop");
}
```

**Definite Loop**

Definite loop ၼႆႉ ပဵၼ် loop ဢၼ်မီး terminate condition မၼ်းဢိူဝ်ႈ။ ပွင်ႇဝႃႈ ပေႃးႁဵတ်ႉၵၢၼ် ထိုင်တီႈမႅၼ်ႈၸႂ်ယဝ်ႉ မၼ်းတေဢွၵ်ႇၵႂႃႇ တီႈ loop ၼႆယဝ်ႉ။ တႃႇတေတႅမ်ႈ definite loop ၼႆႉ ႁဝ်းတေလႆႈၸွမ်း ပိူင် 3 ပိူင်ၼႆႉဢိူဝ်ႈ။

- _Initial statement_
- _Conditional statement_
- _Update statement_

###### လၢႆးၸႂ်ႉတိုဝ်း

```
int x = 1; // 1. Initial statement
while (x <= 1000) { // 2. Conditional statement
    System.out.println(x + " - Sai Mao");
    x = x + 1; // 3. Update statement
}
```

**Iterating Array using while loop**

ႁဝ်းၸႂ်ႉ while loop သေၵေႃႈ ထုၵ်ႈဢွၵ်ႇၼႄပၼ် ၵႃႊၶၼ် ဢၼ်မီးဝႆႉ တီႈၼႂ်း Array လႆႈဢိူဝ်ႈ။

###### လၢႆးၸႂ်ႉတိုဝ်း

```
char[] chars = { 'a', 'b', 'c', 'd', 'e', 'f', 'g'};
int x = 0;
while (x < chars.length) {
    System.out.println(chars[x]);
    x ++;
}
```