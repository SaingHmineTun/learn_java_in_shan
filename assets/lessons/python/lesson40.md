
## Module in Python

Module ၵေႃႈ ပဵၼ်ၾၢႆႇ ဢၼ်ႁဝ်းၸႂ်ႉ .py သေ သိမ်းဝႆႉၵူၺ်း။ ၼႂ်းမၼ်း ႁဝ်းၶိုၼ်းတေတႅမ်ႈလႆႈ code တၢင်းၼမ်ယဝ်ႉ။ 

#### Create a module
တႅမ်ႈၶူတ့်တီႈ ထႅဝ်တႂ်ႈၼႆႉသေ save ဝႆႉလူၺ်ႈ **mymodule.py** သေလႄႈ။

```
def greeting(name):  
    print("Hello, " + name)
```

#### Using a module
သင်ၶႆႈႁွင်ႉၸႂ်ႉၶိုၼ်း module ဢၼ်ႁဝ်းၶူင်ဝႆႉၼႆၸိုင် ႁဝ်းၸႂ်ႉတိုဝ်း import သေ ၽၢႆႇလင်မၼ်း ၶိုၼ်းတႅမ်ႈၵိုၵ်းၸွမ်း module file (ဢမ်ႇသႂ်ႇပႃး .py) ယဝ်ႉ။ ၵမ်းၼႆႉ သင်ႁဝ်းလႆႈ module မၼ်းမႃးယဝ်ႉၼႆၸိုင် function လႄႈ global variables ဢၼ်ႁဝ်းလႆႈၶူင်ဝႆႉၼႂ်း module ၼၼ်ႉ ႁဝ်းတေႁွင်ႉၸႂ်ႉလႆႈငၢႆငၢႆယဝ်ႉ။ ၶူတ်ႉတႂ်ႈၼႆႉ လႆႈႁွင်ႉၸႂ်ႉဝႆႉ greeting() function ဢၼ်မီးဝႆႉတီႈ mymodule.py ဢိူဝ်ႈ။

```
import mymodule  
mymodule.greeting("Jonathan")
```

