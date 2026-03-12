## Method Polymorphism
Method ဢၼ်မီးၸိုဝ်ႈမိူၼ်ၵၼ် ၵူၺ်းၵႃႊ လွင်ႈႁဵတ်းသၢင်ႈ ဢမ်ႇမိူၼ်ၵၼ်ၼၼ်ႉ ႁဝ်းတေႁွင်ႉဝႃႈ Method Polymorphism ၼႆယဝ်ႉ။ 
ဝႆႉဝႃႈ ႁဝ်းမီးဝႆႉ class (2) ဢၼ်လႄႈ။ class တင်းသွင် ၶိုၼ်းမီးဝႆႉ sound() method သေတႃႉ လွင်ႈႁဵတ်းသၢင်ႈၶဝ် ဢမ်ႇမိူၼ်ၵၼ်ၼႆလႄႈ။ 


```python
class Cat:
    def sound(self):
        print("Meow")
        
class Dog:
    def sound(self):
        print("Wook")
        
cat = Cat()
dog = Dog()
cat.sound() # Meow
dog.sound() # Wook
```