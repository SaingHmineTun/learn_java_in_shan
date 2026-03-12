
## 32) Try - Except Statements

တီႈ python ၼႆႉမၼ်းတေမီးဝႆႉ error (3) လွင်ႈၼႆႉ။ သင်ဢမ်ႇၵႄႈပၼ်လီလီၼႆ program ႁဝ်းၼႆႉၵေႃႈ မၼ်းတေဢမ်ႇႁဵတ်ႉၵၢၼ် လႆႈလီ။

1) Syntax error

2) Runtime error

3) Logic error

**1) Syntax Error**

ၼႆႉပဵၼ် Error ဢၼ်ၽူႈလဵပ်ႈႁဵၼ်းမႂ်ႇမႂ်ႇ ၵႆႉႁၼ်ဢိူဝ်ႈ။ မၼ်းပဵၼ်လွင်ႈ ဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉတိုဝ်း keyword, variable, function, method ဢၼ်ဢမ်ႇမီးဝႆႉၼၼ်ႉယဝ်ႉ။ မိူၼ်ၼင်ႇ ၶူတ်ႉတီႈတႂ်ႈၼႆႉ ၵွပ်ႈႁဝ်း ဢမ်ႇမီးဝႆႉ variable ၸိုင်ႈႁွင်ႉ x ၼႆလႄႈ တေပဵၼ် error ယဝ်ႉ။

```
print(x)*
```

ဢမ်ႇၼၼ်ၵေႃႈ သင်ႁဝ်းႁွင်ႉၸႂ်ႉ prit() ၼႆၵေႃႈ မၼ်းတေပဵၼ် error ဝႆႉယဝ်ႉ။

```
prit(x)
```

Syntax error ၵမ်ႈၼမ်ၼႆႉ သင်ႁဝ်းၸႂ်ႉတိုဝ်း IDE ၼႆမၼ်းတေ ၸွႆႈထတ်းပၼ်ႁဝ်းၵႂႃႇယူႇ။ သင်ႁၼ် တီႈၽိတ်း၊ သီလႅင်လႅင်ၼႆၵေႃႈ ၵႄႈၶႆပၼ်မၼ်းၵေႃႈ တေလႆႈၵႂႃႇယူႇ။ ၵွပ်ႈၼႆ ၼႂ်း error (3) ဢၼ်ၼႆႉ တေလႆႈဝႃႈ မၼ်းပဵၼ် error ဢၼ်ၵႄႈငၢႆႊသေပိူၼ်ႈယဝ်ႉ။

**2) Runtime Error**

Error ၼႆႉတေႉ IDE ႁဝ်းၵေႃႈ ဢမ်ႇၸွႆႈလႆႈ။ သင်ႁဝ်း ဢမ်ႇၵႄႈလိတ်ႈလီလီၼႆႉ program ႁဝ်း တေၵိုတ်း (crash) ၵႂႃႇယဝ်ႉ။ ၵွပ်ႈၼႆ ၵဵဝ်ႇလူၺ်ႈ error ၼႆႉၼႆ ႁဝ်းတေလႆႈ ၾၢင်ႉတေႉတေႉ။ ၶူတ်ႉတီႈတႂ်ႈၼႆႉ ၵွပ်ႈ age ၼႆႉမၼ်းတေမီးဝႆႉပဵၼ် string type လႄႈ ႁဝ်းတေဢမ်ႇၸႂ်ႉၵိုၵ်း comparison operator လႆႈ။ ၵွပ်ႈၼႆ သင်ႁဝ်း run တူၺ်း program ႁဝ်းၼႆၸိုင် မၼ်းတေပဵၼ် error ဝႆႉယဝ်ႉ။

```
age = "12"  
if age > 18:  
    print("You're a man")
```

**3) Logic Error**

တီႈတေႉ မၼ်းၵေႃႈ ဢမ်ႇၸႂ် error သင်ၼင်ႇၵဝ်ႇ။ မၼ်းတေ ဢမ်ႇဢွၵ်ႇၼႄပၼ် error သင်ႁဝ်း။ ၵူၺ်းၵႃႊ program ႁဝ်းၼႆႉ မၼ်းတေဢမ်ႇႁဵတ်ႉၵၢၼ် မိူၼ်ၼင်ႇ ႁဝ်းယိူင်းဢၢၼ်းဝႆႉ။ ၶူတ်ႉတီႈတႂ်ႈၼႆႉ တီႈတေႉ သင်ဝႃႈ တၢင်းမႆႈ (temperature) ယႂ်ႇသေ 30 ၻီႇၵရီႇၼႆ မၼ်းတေလႆႈ ဢွၵ်ႇၼႄပၼ်မႃးဝႃႈ "It's hot" သေတႃႉ မၼ်းသမ်ႉ ဢွၵ်ႇၼႄပၼ် "It's cold" ၼႆယဝ်ႉ။ လွင်ႈၽိတ်းၸိူင်ႉၼႆၼႆႉ ႁဝ်းတေလႆႈ ၸႅတ်ႈတူၺ်းၶိုၼ်းလီလီ ၸင်ႇၵႄႈလိတ်ႈလႆႈ။

```
temp = int(input("Enter temperature: "))  
if temp > 30:  
    print("It's cold")  
else:  
    print("It's hot")
```

**Handling with try - except**

Runtime error ၼႆႉ ႁဝ်းၸႂ်ႉ try - except သေၵေႃႈ တေၵႄႈလိတ်ႈလႆႈ ၵမ်ႈၼမ်ယူႇ။ ၼႂ်း try block ၼၼ်ႉ ႁဝ်းသႂ်ႇပၼ် ၶူတ်ႉဢၼ်ၸၢင်ႊပဵၼ် error သေ ၼႂ်း except ၼၼ်ႉသမ်ႉ ႁဝ်းတႅမ်ႈၶူတ်ႉဝႆႉ မိူဝ်ႈၽွင်း မၼ်းပဵၼ် error ယဝ်ႉ။ သင်ၶူတ်ႉႁဝ်း ဢမ်ႇမီး error သင်ၼႆၸိုင် မၼ်းၵေႃႈ တေၶဝ်ႈႁဵတ်ႉၵၢၼ်ၼႂ်း try block ၵႂႃႇၵူၺ်း။ သင်မီး error မၼ်းၸင်ႇ ၶဝ်ႈမႃးတီႈၼႂ်း except block။ ၵွပ်ႈၼႆ ၽိူဝ်တႃႉ တေႁႂ်ႈ program ႁဝ်းၵိုတ်းၵႂႃႇ၊ မၼ်းၵေႃႈ ပဵၼ်လွင်ႈလီ ဢၼ်ႁဝ်း ၵႄႈဝႆႉ တႃႇႁႂ်ႈ program ႁဝ်း ႁဵတ်ႉၵၢၼ်လႆႈ မိူၼ်ၵဝ်ႇယဝ်ႉ။ ၶူတ်ႉတီႈတႂ်ႈၼႆႉ မၼ်းတေၼႄပၼ် "An exception occurred" ၼႆယဝ်ႉ။ ၵွပ်ႈပိူဝ် ႁဝ်းဢမ်ႇမီးဝႆႉ x variable ဢိူဝ်ႈ။

```
try:  
    print(x)  
except:  
    print("An exception occurred")
```

**Handling multiple exceptions**

သင်ၼႂ်း code ႁဝ်း မီးဝႆႉ exceptions တၢင်းၼမ်ၼႆၸိုင် ႁႂ်းၸႂ်ႉ except ၵိုၵ်းၸွမ်း ၸိုဝ်ႈ error ဢၼ်ပဵၼ်ဝႆႉသေ ၺွပ်းလႆႈၵွၼ်ႇ။ ၶူတ်ႉတီႈတႂ်ႈၼႆႉ ႁဝ်းၺွပ်ႉဝႆႉ **NameError** ယဝ်ႉ။

```
try:  
    print(x)  
except NameError:  
    print("Variable x is not defined")  
except:  
    print("Something else went wrong")
```

**Else block**

တီႈ try-except ၼၼ်ႉ ႁဝ်းၸႂ်ႉၵိုၵ်းၸွမ်း else ၵေႃႈလႆႈၵွၼ်ႇ။ သင်ၶူတ်ႉႁဝ်း ဢမ်ႇမီး exception သင်ၼႆ ၶူတ်ႉဢၼ်တႅမ်ႈဝႆႉၼႂ်း else ၼၼ်ႉမၼ်းတေၶဝ်ႈႁဵတ်ႉၵၢၼ်ၸွမ်းယဝ်ႉ။

```
try:  
    print("Hello")  
except:  
    print("Something went wrong")  
else:  
    print("Nothing went wrong")
```

**Finally block**

ၼႆႉသမ်ႉ ၶူတ်ႉႁဝ်း ပဵၼ် error ၵေႃႈလီ၊ ဢမ်ႇပဵၼ်ၵေႃႈလီ တိုၼ်းတေၶဝ်ႈၵႂႃႇ ႁဵတ်ႉၵၢၼ် တီႈၼႂ်းမၼ်းယဝ်ႉ။ ၼႆႉတေႉ ၵမ်ႈၼမ် ႁဝ်းတေၸႂ်ႉ တႃႇပိၵ်ႉဢိုပ်းပႅတ်ႈ object သေဢၼ်ဢၼ်၊ ဢမ်ႇၼၼ် ၸွႆႈတႃႇၽဵဝ်ႈသိမ်း memory ႁဝ်းယဝ်ႉ။

```
try:  
    print(x)  
except:  
    print("Something went wrong")  
finally:  
    print("The 'try except' is finished")
```