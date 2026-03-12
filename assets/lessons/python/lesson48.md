
## Class Inheritance

Inheritance ၼႆႉ ပွင်ႇဝႃႈ လႆႈဢမူၺ်ႇ ၼႆယဝ်ႉ။ တီႈ programming ၼႆႉ မၼ်းတေပွင်ႇဝႃႈ class ဢၼ်တေႁဵတ်ႉ inherit (Child class) ၼႆႉ မၼ်းတေလႆႈ properties လႄႈ methods ဢၼ်မီးဝႆႉ တီႈၼႂ်း class ဢၼ်ထုၵ်ႇႁဵတ်ႉ (Parent class) ၼႆယဝ်ႉ။ class ဢၼ်တေထုၵ်ႇႁဵတ်ႉၼၼ်ႉ ႁဝ်းႁွင်ႉဝႃႈ parent class, base class ၼႆသေ class ဢၼ်တေႁဵတ်ႉ inherit ၼႆႉသမ်ႉ ႁဝ်းႁွင်ႉဝႃႈ child class, derived class ၼႆယဝ်ႉ။

ဝႆႉဝႃႈ ႁဝ်းမီးဝႆႉ parent class ၸိုဝ်ႈႁွင်ႉဝႃႈ Person သေ ၼႂ်းမၼ်း ႁဝ်းၶိုၼ်းသႂ်ႇဝႆႉ **first_name**, **last_name** properties လႄႈ **print_name()** method ၼႆလႄႈ။ သင်သမ်ႉ ၶႆႈႁဵတ်ႉ inherit ၼႆၸိုင် ႁဝ်းႁဵတ်ႉၼႆတႅမ်ႈယဝ်ႉ။

```
class Person:
    def __init__(self, fname, lname):
        self.first_name = fname
        self.last_name = lname
    def print_name(self):
        print(self.first_name, self.last_name)
 
class Student(Person):  
    pass
```

ၼႂ်း Student class ၼႆႉ ႁဝ်းဢမ်ႇသႂ်ႇဝႆႉသင်သေတႃႉ ၵွပ်ႈပိူဝ်ႈ ႁဝ်းႁဵတ်ႉ inherit ဝႆႉတီႈ Person class ၼႆလႄႈ ၼႂ်းမၼ်းၼၼ့် တိုၼ်းမီးဝႆႉ properties လႄႈ methods ဢၼ်ႁဝ်း ၶူင်သၢင်ႈဝႆႉၼႂ်း Person class ယူႇယဝ်ႉ။ ၵွပ်ႈၼႆ မိူဝ်ႈၽွင်း ၶူင်သၢင်ႈ object ၼၼ်ႉၵေႃႈ ႁဝ်းၶိုၼ်းတေလႆႈသႂ်ႇပၼ် arguments သေ သင်ဢဝ် object မၼ််းသေၵေႃႈ ႁဝ်းတေၶိုၼ်းႁွင်ႉၸႂ်ႉလႆႈ print_name() method ဢၼ်ၵူၺ်းမီးဝႆႉ တီႈၼႂ်း Person class ၼႆႉယဝ်ႉ။

```
x = Student("Mike", "Olsen")  
x.printname() # Mike Olsen
```

**Overwriting \_\_init\_\_() method**

သင်သမ်ႉ မိူဝ်ႈၶူင်သၢင်ႈ Student class ၼၼ်ႉ ႁဝ်းဢမ်ႇၸႂ်ႉ **pass** သေ ၶူင်သၢင်ႈ \_\_init\_\_() method တီႈၼႂ်းမၼ်းထႅင်ႈၼႆၸိုင် ၼႆႉပွင်ႇဝႃႈ ႁဝ်းတေဢမ်ႇဢဝ် \__init_\_() method ဢၼ်မီးဝႆႉတီႈ parent class ယဝ်ႉၼႆယူႇ။ သင်သမ်ႉ ၶႆႈသူင်ႇပၼ် \_\_init\_\_() method ဢၼ်မီးဝႆႉတီႈ parent class ၼႆၸိုင် ႁဝ်းတေလႆႈႁွင်ႉၸႂ်ႉ ၸိုဝ်ႈ class မၼ်းသေ တေလႆႈသူင်ႇပၼ်ယဝ်ႉ။

```
class Student(Person):  
    def __init__(self, fname, lname):  
        Person.__init__(self, fname, lname)
```

သင်ဢမ်ႇၼၼ်ၵေႃႈ ႁဝ်းႁွင်ႉၸႂ်ႉ super() လႆႈထႅင်ႇယူႇ။ ၼႆႉတေႉၵေႃႈ ႁဝ်းဢမ်ႇလူဝ်ႇႁွင်ႉၸိုဝ်ႈ parent class မၼ်းယဝ်ႉ။

```
class Student(Person):  
    def __init__(self, fname, lname):  
        super().__init__(fname, lname)
```