
## The \_\_init\_\_() method

Class ၵူႊဢၼ် ၼႂ်းမၼ်းတေမီးဝႆႉ \__init_\_() function ယဝ်ႉ။ မၼ်းတေႁဵတ်ႉၵၢၼ် မိူဝ်ႈၽွင်းႁဝ်းၶူင်သၢင်ႈ object ႁဝ်းၼၼ်ႉယဝ်ႉ။ တီႈ Java တေႉ မၼ်းတေမိူၼ်ၵၼ်တင်း Constructor ၼႆယဝ်ႉ။ တီႈၼႆႈ ႁဝ်းႁပ်ႉႁွင်း arguments ဢၼ်သူင်ႇမႃးသေ မၵ်ႉမၼ်ႈပဵၼ် properties တႃႇႁဝ်းၵေႃႈလႆႈယဝ်ႉ။ method ၵူႊဢၼ် ဢၼ်မီးဝႆႉ တီႈၼႂ်း class ၼႆႉၶဝ်တေမီးဝႆႉ self parameter ဢွၼ်တၢင်းသုတ်ႉပိူၼ်ႈယဝ်ႉ။ မၼ်းမၢႆထိုင် current object ၼႆယဝ်ႉဢိူဝ်ႈ။

ၶူတ်ႉတႂ်ႈၼႆႉ ပဵၼ်လွင်ႈ ဢၼ်ႁဝ်းၶူင်သၢင်ႈ Person class လႄႈ name, age properties ၼႆႉ ႁဝ်းၶိုၼ်းႁဵတ် initiate ဝႆႉတီႈၼႂ်း \__init__method ယဝ်ႉ။ သင်ႁဝ်းတႅမ်ႈ method parameter ဝႆႉတီႈၼႂ်း \__init__ ၼႆၸိုင် မိူဝ်ႈႁဝ်းၶူင်သၢင်ႈ object မၼ်းၼၼ်ႉၵေႃႈ ၼႂ်းတူင်ႇမူၼ်း ၽၢႆႇလင်ၸိုဝ်ႈ clas ႁဝ်းၼၼ်ႉ ႁဝ်းတေလႆႈသူင်ႇပၼ် arguments မၼ်းယဝ်ႉ။

```
class Person:  
    def __init__(self, name, age):  
        self.name = name  
        self.age = age  

p1 = Person("John", 36)  
print(p1.name)  
print(p1.age)
```