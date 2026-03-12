
## Python Scope

Variable ဢၼ်ၼိုင်ႈၼႆႉ မၼ်းၶူင်တီႈလႂ်ၼႆၵေႃႈ မၼ်းတေၸႂ်ႉလႆႈ တီႈၼႂ်းၼၼ်ႉၵူၺ်း။ ၼႆႉမၼ်းပဵၼ် scope မၼ်းယဝ်ႉ။

**Local Scope**

သင်ႁဝ်းၶူင်သၢင်ႈ variable ဝႆႉတီႈၼႂ်း if, match, while, for, function ၼႆ ၼႂ်းၼၼ်ႉၵူၺ်း တေၸႂ်ႉ variable လႆႈ။ ၵွပ်ႈမၼ်းမီးဝႆႉ local scope ၼႆယဝ်ႉ။ သင်ဢွၵ်ႇ function ၼၼ်ႉမႃးၼႆ ႁဝ်းတေႁွင်ႉၸႂ်ႉမၼ်း ဢမ်ႇလႆႈယဝ်ႉ။

```
def main():  
    age = 18  
    print(f"You are {age} years old")  
    
print(age) # Cannot call local variable in globe
```

**Global Scope**

ၼႆႉသမ်ႉ ပဵၼ်ဢၼ် ႁဝ်းၶူင်သၢင်ႈ variable ဢၼ်ဢမ်ႇၸႂ်ၼႂ်း block လႂ်ၼၼ်ႉယဝ်ႉ။ သင် variable ႁဝ်းမီးဝႆႉ global scope ၼႆၸိုင် ႁဝ်းယူႇတီႈလႂ်ၵေႃႈယဝ်ႉ သင်ပဵၼ်ၼႂ်း file ဢၼ်လဵဝ်ၵူၺ်းၼႆ ႁဝ်းတေ ႁွင်ႉၸႂ်ႉမၼ်းလႆႈ ငၢႆငၢႆၵူၺ်း။

```
x = 300  
def myfunc():  
    print(x) # Can call global variable in function
 
myfunc()  
print(x) # Can call global variable in globe
```

**Naming Variables**

သင်ႁဝ်းမီးဝႆႉ global variable လႄႈ local variable သေ ၸိုဝ်ႈၶဝ်မိူၼ်ၵၼ်ၼႆၸိုင် python ၼႆႉတေႁဵတ်ႉပဵၼ်ၵႂႃႇ variable (2) ဢၼ်ယဝ်ႉ။ ၵွပ်ႈၼႆ သင်ႁဝ်း လႅၵ်ႊလၢႆႊ ၵႃႊၶၼ် local variable ၼႆ မၼ်းတေ ဢမ်ႇမႃး တုမ်ႉတိူဝ်ႉ global variable။ ၶူတ်ႉတီႈတႂ်ႈၼႆႉ x ၼႆႉ ထုၵ်ႇလၢႆႊပဵၼ် 200 တီႈၼႂ်း function သေတႃႉ print() statement ဢၼ်ယူႇဝႆႉတီႈ global scope ၼၼ်ႉ တေဢွၵ်ႇၼႄပၼ်ႁဝ်းဝႃႈ 300 ၼႆၵူၺ်း။

```
x = 300  
def myfunc():  
    x = 200  
    print(x) # 200

myfunc()  
print(x) # 300
```

**"global" keyword**

သင်ႁဝ်းၶႂ်ႈလႅၵ်ႊလၢႆႊ global variable တီႈၼႂ်း function ၼႆၸိုင် ႁဝ်းၸႂ်ႉတိုဝ်းလႆႈ global keyword ယဝ်ႉ

```
x = 300
def myfunc():  
    global x  
    x = 200
    print(x) # 200

myfunc()  
print(x) # 200
```

**"nonlocal" keyword**

သင်ႁဝ်း ၶူင်သၢင်ႈ variable တီႈၼႂ်း inner function ထႅင်ႈၼႆ မၼ်းတေမီးဝႆႉ scope တႃႇ inner function ၼၼ်ႉၵူၺ်း။ သင်ႁဝ်း ၶႆႈႁႂ်ႈ outer function မၼ်းၵေႃႈ ႁၼ်လႆႈၼႆၸိုင် ႁဝ်းၸႂ်ႉတိုဝ်း **nonlocal** keyword သေ ၶူင်သၢင်ႈလႆႈယဝ်ႉ။

```
def myfunc1():  
    x = "Jane"  
    def myfunc2():  
        nonlocal x  
        x = "hello"  
    myfunc2()  
    return x  

print(myfunc1()) # hello
```