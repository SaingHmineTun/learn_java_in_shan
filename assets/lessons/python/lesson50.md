## Operator Polymorphism
Operator Polymorphism ၼႆႉ မီႈတီႈပွင်ႇဝႃႈ operator ဢၼ်ၼိုင်ႈၼႆႉ ယူႇတီႈ ၵႃႊၶၼ် (value) ဢၼ်မၼ်းႁဵတ်းၵၢၼ်ၸွမ်းႁေ
ႁဵတ်းၵၢၼ် ဢမ်ႇမိူၼ်ၵၼ်ၼႆယဝ်ႉ။
ဝႆႉဝႃး ႁဝ်းၶႂ်ႈၸႂ်ႉတိုဝ်း + (Addition Operator) ၼႆလႄႈ။ ယူႇတီႈၵႃႊၶၼ် ဢၼ်ႁဝ်းၶႂ်ႈႁဵတ်းၵၢၼ်ၸွမ်းၼၼ်ႉႁေ
မၼ်းၵေႃႈတေ မီးလွင်ႈလႅၵ်ႊလၢႆႊၼင်ႇတီႈတႂ်ႈယဝ်ႉ။ 
- **int + int = int (addition)**
- **str + str = str (concatenation)**
- **list + list = list (merging)**
```
print(5 + 3) # 8
print("Sai" + " " + "Mao") # Sai Mao
print([1, 2] + [3, 4]) # [1, 2, 3, 4]
```

#### Create your own operator polymorphism
ဝႆႉဝႃႈ ႁဝ်းမီး class ဝႆႉၼင်ႇတီႈတႂ်ႈၼႆႉလႄႈ။
```
class MyNumber:
    def __int__(self, value):
        self.value = value
```

သင်ႁဝ်းဢဝ် MyNumber object (2) ဢၼ် လေႃးၵၼ်ၼႆၸိုင် မၼ်းဢမ်ႇမီးဝႆႉ Operator Polymorphism လႄႈ တေၼႄပၼ် error ယဝ်ႉ။ 
သင်ၸိူဝ်ႉ ႁဝ်းၶႂ်ႈၶူင်ဢဝ် Operator Polymorphism တႃႇ MyNumber class ႁဝ်းၼႆၸိုင် ႁဝ်းၸႂ်ႉတိုဝ်းလႆႈ __add__() method ဢၼ်မီးဝႆႉ တီႈၼႂ်း class ယဝ်ႉ။ 

```
class MyNumber:
    def __init__(self, num):
        self.num = num
    def __add__(self, other):
        return MyNumber(self.num + other.num)
    def __str__(self):
        return str(self.num)

num1 = MyNumber(5)
num2 = MyNumber(6)
print(num1)
print(num2)
print(num1 + num2)
```

တီႈၼႂ်း class ၼႆႉ ဢမ်ႇၸႂ်ဝႃႈ မီးဝႆႉ __add__() ၵူၺ်း။ operator ၵူႊလွင်ႈလွင်ႈၵေႃႈ မီးဝႆႉ method ၽႂ်မၼ်း ၼင်ႇတီႈတႂ်ႈယဝ်ႉ။

| Method         | Operator  | Definition                       |
| -------------- | --------- | -------------------------------- |
| `__add__`      | `+`       | Addition                         |
| `__sub__`      | `-`       | Subtraction                      |
| `__mul__`      | `*`       | Multiplication                   |
| `__truediv__`  | `/`       | Division                         |
| `__floordiv__` | `//`      | Floor division                   |
| `__mod__`      | `%`       | Modulus (remainder)              |
| `__pow__`      | `**`      | Exponentiation (power)           |
| `__iadd__`     | `+=`      | In-place addition                |
| `__isub__`     | `-=`      | In-place subtraction             |
| `__imul__`     | `*=`      | In-place multiplication          |
| `__itruediv__` | `/=`      | In-place division                |
| `__eq__`       | `==`      | Equality comparison              |
| `__ne__`       | `!=`      | Not equal comparison             |
| `__lt__`       | `<`       | Less than comparison             |
| `__le__`       | `<=`      | Less than or equal comparison    |
| `__gt__`       | `>`       | Greater than comparison          |
| `__ge__`       | `>=`      | Greater than or equal comparison |
| `__neg__`      | unary `-` | Negation (negative value)        |
| `__pos__`      | unary `+` | Positive value                   |
| `__abs__`      | `abs()`   | Absolute value                   |
| `__invert__`   | `~`       | Bitwise inversion                |

