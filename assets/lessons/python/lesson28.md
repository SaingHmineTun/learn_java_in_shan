## 28) If Statements

If statement ၼႆႉႁဝ်းၸႂ်ႉတိုဝ်း မိူဝ်ႈၽွင်းႁဝ်း ၶႆႈတူၺ်း **ငဝ်းလၢႆး** သေႁဵတ်ႉၵၢၼ်ယဝ်ႉ။ ဝႆႉဝႃႈ သူတေ တၢၵ်ႇသိူဝ်ႈၶူဝ်းၼႆလႄႈ။ သင်ၾူၼ်တူၵ်ႉဝႆႉ သူၵေႃႈ ဢမ်ႇတၢၵ်ႇ၊ သင်လႅတ်ႇမႆႈ ၸင်ႇတေတၢၵ်ႇ ဢမ်ႇၸႂ်ႁိုဝ်။ လွင်ႈၼႆႉ ႁဝ်းၸႂ်ႉတိုဝ်း if သေတႅမ်ႈလႆႈယဝ်ႉ။

တႃႇၶူင်သၢင်ႈ if statement ၼႆႉ ႁဝ်းမႃးၸႂ်ႉတိုဝ်း if keyword ယဝ်ႉ။ လၢႆးၸႂ်ႉတိုဝ်း တေမိူၼ်ၼင်ႇတီႈတႂ်ႈၼႆႉ။ ဝၢႆးသေ if ယဝ်ႉ ႁဝ်းၶိုၼ်းသႂ်ႇပၼ် boolean expression ယဝ်ႉ။ ၶူတ်ႉသင်သေဢမ်ႇဝႃႈ သင်ဢွၵ်ႇပၼ်ႁဝ်း ၵႃႊၶၼ် boolean ၼႆႁဝ်းႁွင်ႉဝႃႈ boolean expression ၼႆယဝ်ႉ။

```
isRaining = True  
if isRaining:  
    print("Don't dry clothes")
```

**Indentation**

Python ၼႆႉမၼ်းၸႂ်ႉ Indentation တႃႇၶူင်သၢင်ႈ Code Block မၼ်းဢိူဝ်ႈ။ ၼႆႉပဵၼ် space (4) ဢၼ် ဢၼ်ယူႇတီႈ ၽၢႆႇၼႃႈ print() function ၼၼ်ႉယဝ်ႉ။ သင်သူ ဢမ်ႇသႂ်ႇ space ၼၼ်ႉသေ တႅမ်ႈၼႆ program သူ တေပဵၼ် error ယဝ်ႉ။

**if - else statements**

သင်ၶူတ်ႉဢၼ်ႁဝ်း ၸႅတ်ႈဝႆႉ တီႈၼႂ်း if ဢမ်ႇမႅၼ်ႈ (ဢမ်ပဵၼ် True) ၼႆၸိုင် ႁဝ်းၸႂ်ႉၵိုၵ်းၸွမ်း else လႆႈယဝ်ႉ။ သင် if ပဵၼ် True ၊ if block တေၶဝ်ႈႁဵတ်ႉၵၢၼ်သေ သင် if ပဵၼ် False ၼႆၸိုင် ၶူတ်ႉဢၼ်မီးဝႆႉၼႂ်း else block ၼၼ်ႉ တေႁဵတ်ႉၵၢၼ်ၵႂႃႇယဝ်ႉ။

```
isRaining = True  
if isRaining:  
    print("Don't dry your clothes")
else:  
    print("Go and dry your clothes")**
```

**if - elif - else**

မၢင်ပွၵ်ႈ မၢင်လႂ် သင်ႁဝ်းသမ်ႉ ၶႆႈၸႅတ်ႈ condition (ငဝ်းလၢႆး) ဝႆႉတၢင်းၼမ်ၼႆ ဝၢႆးသေ if ၼၼ်ႉ ႁဝ်းၸႂ်ႉတိုဝ်း elif လႆႈယဝ်ႉ။ ဝႆႉဝႃႈ ၶႆႈၸႅတ်ႈတူၺ်း ၵႃႊၶၼ် **a** လႄႈ **b** ၼႆလႄႈ၊ ႁဝ်းတႅမ်ႈလႆး ၸိူင်ႉၼႆယဝ်ႉ။

```
a = 200  
b = 33  
if b > a:  
    print("b is greater than a")  
elif a == b:  
    print("a and b are equal")  
else:  
    print("a is greater than b")
```

**Short hand "if"**

သင်ၸိူဝ်ႉ statement သူၼႆႉ မီးဝႆႉထႅဝ်ၼိုင်ႈၵူၺ်းၼႆ သူတႅမ်ႈလႆႈ ၸိူင်ႉၼႆယဝ်ႉ။

```
if a > b: print("a is greater than b")
```

**Short hand "if - else"**

ၼႆႉၵေႃႈ သင်ၸိူဝ်ႉ if လႄႈ else ၼႆႉ ၼႂ်းမၼ်း တေမီးဝႆႉ statement ထႅဝ်ၼိုင်ႈၵူၺ်းၼႆၸိုင်ႈ ႁဝ်းတႅမ်ႈလႆႈ ၸိူင်ႉၼႆယဝ်ႉ။  

```
print("A") if a > b else print("B")
```

**The "pass" statement**

if statement တီႈ python ၼႆႉ သင်ႁဝ်းၶူင်ယဝ်ႉၼႆၸိုင်၊ ႁဝ်းဢမ်ႇဝႆႉ ပဝ်ႇမၼ်းလႆႈ။ သင်သမ်ႉ ဢမ်ႇၶႆႈတႅမ်ႈ ၶူတ်ႉသင် တီႈၼႂ်းမၼ်းၼႆၸိုင် ၸႂ်ႉတိုဝ်း pass လႆႈယူႇ။

```
if b > a:  
    pass
```

**Nested "if"**

ၼႆႉတေႉၵေႃႈ ပဵၼ်လွင်ႈ ဢၼ်ႁဝ်း ႁွင်ႉၸႂ်ႉ "if" တီႈၼႂ်း "if" ၵူၺ်းၼင်ႇၵဝ်ႇ။

```
x = 41  
if x > 10:  
    print("Above ten,")  
        if x > 20:  
            print("and also above 20!")  
        else:  
            print("but not above 20.")
```