
## 54) Read a file

လွင်ႈတေလူလိၵ်ႈ ဢၼ်မီးၼႂ်း text file ၼႆႉတေႉ ႁဝ်းၸႂ်ႉ open() function သေ ႁွင်ႉၸႂ်ႉ read() method ဢၼ်မီးဝႆႉ တီႈၼႂ်း file ၵေႃႈလႆႈယဝ်ႉ။ ၶူတ်ႉထႅဝ်တႂ်ႈၼႆႉ မၼ်းတေလူပၼ် လိၵ်ႈၵူႊထႅဝ် ဢၼ်မီးဝႆႉ တီႈၼႂ်း text file ဢၼ်ၶႃႈလႆႈ ၵွင်ႉဝႆႉၼၼ်ႉယဝ်ႉ။ သင် text file ၼၼ်ႉ ဢမ်ႇမီးၼႆၸိုင် မၼ်းတေပဵၼ် error ယဝ်ႉ။

```
f = open("D:\\myfiles\\welcome.txt", "r")  
print(f.read())
```

**Read Only Part of the File**

သင်သမ်ႉ ဢမ်ႇလႆႈလူလိၵ်ႈတၢင်းမူတ်းသေ ၶႆႈလူဢဝ် ၵမ်းတူဝ်တူဝ်ၵူၺ်းၼႆၸိုင် တီႈၼႂ်း read() method ၼၼ်ႉ ႁဝ်းသႂ်ႇပၼ် int arg လႆႈယူႇ။

```
f = open("demofile.txt", "r")  
print(f.read(5))
```

**Read Line by Line**

သင်ၶႆႈလူဢဝ် ၵမ်းထႅဝ်ထႅဝ်မၼ်းၼႆၸိုင် ႁဝ်းၸႂ်ႉလႆႈ readline() ယဝ်ႉ။

```
f = open("demofile.txt", "r")  
print(f.readline())
```

**Read with Loop**

ၵွပ်ႈပိူဝ်ႈ file ၵေႃႈပဵၼ် iterator ဢၼ်ၼိုင်ႈလႄႈ ႁဝ်းၸႂ်ႉၸွမ်း for loop သေၵေႃႈ တူၺ်းလႆႈ ၵႃႊၶၼ် ဢၼ်မီးဝႆႉ တီႈၼႂ်းမၼ်းၵွၼ်ႇ။

```
f = open("demofile.txt", "r")  
for x in f:  
    print(x)
```

**Close files**

သင်ႁဵတ်ႉၵၢၼ်ၸွမ်း ၾၢႆႇယဝ်ႉၼႆၸိုင် ႁဝ်းထုၵ်ႇလီ close ပၼ်မၼ်းဢိူဝ်ႈ။ ၼႆႉၵေႃႈ ႁွင်ႉၸႂ်ႉတိုဝ်း close() method ဢၼ်မီးဝႆႉ တီႈၼႂ်း file object ၵူၺ်းၼင်ႇၵဝ်ႇ။

```
f = open("demofile.txt", "r")  
print(f.readline())  
f.close()
```