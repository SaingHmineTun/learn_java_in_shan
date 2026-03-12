
## Variables in Module

ၼႂ်း module ၼႆႉ ဢမ်ႇၸႂ်ဝႃႈ ႁဝ်းၸႂ်ႉၶိုၼ်းလႆႈ function ၵူၺ်း၊ global variables ၵူႊမဵဝ်းမဵဝ်းၵေႃႈ ဢၼ်ၶူင်ဝႆႉ ၼႂ်း module ၼၼ်ႉၵေႃႈ ႁဝ်းၸႂ်ႉၶိုၼ်းလႆႈဢိူဝ်ႈ။ တႅမ်ႈၶူတ်ႉတီႈတႂ်ႈၼႆႉသေ save ပဵၼ် **mymodule.py** သေလႄႈ။

```
person1 = {  
    "name": "John",  
    "age": 36,  
    "country": "Norway"  
}
```

ႁဝ်းၶိုၼ်း import ဢဝ် module မၼ်းသေၵေႃႈ ၸႂ်ႉတိုဝ်းလႆႈ ၼင်ႇတီႈတႂ်ႈၼႆႉယဝ်ႉ။

```
import mymodule  
a = mymodule.person1["age"]  
print(a) # 36
```