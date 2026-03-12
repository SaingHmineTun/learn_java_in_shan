
## Methods

တီႈၼႂ်း class ၼႆႉ ႁဝ်းၶူင်သၢင်ႈ method ႁင်းၶေႃၵေႃႈလႆႈၵွၼ်ႇ။ Method ၵေႃႈပဵၼ် function ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း class ၵူၺ်း။ ၵူၺ်းၵႃႊ first parameter မၼ်းတေလႆႈပဵၼ် self ဝႆႉၵူႊဢၼ်ယဝ်ႉ။ method ၼႆႉ ႁဝ်းတေလႆႈ လုၵ်ႉတီႈ object သေ ႁွင်ႉၵူၺ်း။

```
class Person:  
    def __init__(self, name, age):  
        self.name = name  
        self.age = age  
    def myfunc(self):  
        print("Hello my name is " + self.name)  
        
p1 = Person("John", 36)  
p1.myfunc()
```

**The "self" parameter**

Method ၵူႊဢၼ် တီႈၼႂ်း class ၼႆႉ တေလႆႈမီး self ပဵၼ် parameter ဢွၼ်တၢင်းသုတ်ႉမၼ်းယဝ်ႉ။ တီႈတေႉ ႁဝ်းဢမ်ႇၸႂ်ႉ **self** သေ ၸႂ်ႉၸိုဝ်ႈသင်ၵေႃႈလႆႈယူႇ။ ပိူင်ယႂ်ႇမၼ်းတေႉ မၼ်းတေလႆႈပဵၼ် 1<sup>st</sup> parameter ၵူၺ်း။

**The "pass" statement in class**

သင်ႁဝ်းၶႆႈၶူင်သၢင်ႈ class ယဝ်ႉ ၼႂ်းမၼ်းဢမ်ႇၶႆႈတႅမ်ႈ ၶူတ်ႉသင်ဝႆႉၼႆ ႁဝ်းတေလႆႈၸႂ်ႉတိုဝ်း pass ၸင်ႇလႆႈ။

**class Person:  
pass**
