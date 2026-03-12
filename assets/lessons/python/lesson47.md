
## The \_\_str\_\_() method

သင်ႁဝ်း ၶူင်သၢင်ႈ object ဝႆႉသေ print တူၺ်း object မၼ်းၼႆၸိုင် ႁဝ်းတေဢမ်ႇႁၼ်လႆႈ ၵႃႊၶၼ် properties မၼ်းလႆႈ။ ႁဝ်းတေလႆႈႁၼ် memory address မၼ်းၵူၺ်းဢိူဝ်ႈ။ လွင်ႈၼႆႉ ႁဝ်းမႃးပိၼ်ႇမႄးလႆႈ ၸႂ်ႉတိုဝ်း \_\_str\_\_() method ယဝ်ႉ။ တီႈၼႂ်းမၼ်း ႁဝ်းၶိုၼ်း return ဢဝ်ၵႃႊၶၼ် ဢၼ်ႁဝ်း ၶႆႈလႆႈၼၼ်ႉၵေႃႈ ယဝ်ႉ။ မၼ်းတေမိူၼ် toString() ဢၼ်မီးဝႆႉတီႈ Java ဢိူဝ်ႈ။

```
class Person:  
    def __init__(self, name, age):  
        self.name = name  
        self.age = age  
    def __str__(self):  
        return f"{self.name}({self.age})"  

p1 = Person("John", 36)  
print(p1)
```