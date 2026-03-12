

## 56) Delete a file or folder

သင်ၶႆႈဢဝ်ပႅတ်ႈ file ဢၼ်မီးဝႆႉ တီႈၼႂ်းၶွမ်းႁဝ်းၼႆၸိုင် ႁဝ်းတေလႆႈ import ဢဝ် os module သေ ၸႂ်ႉတိုဝ်း remove() function ဢၼ်မီးဝႆႉ ၼႂ်းမၼ်းၸင်ႇလႆႈ။

```
import os  
os.remove("demofile.txt")
```

**Check if file exists**

လွင်ႈၼႆႉၵေႃႈ ႁဝ်းၸႂ်ႉတိုဝ်း os module သေ ၸႅတ်ႈတူၺ်းလႆႈယူႇ။ ၵွပ်ႈ remove ၼႆႉ သင်ၾၢႆႇဢၼ်ႁဝ်း ၶႆႈထွၼ်ပႅတ်ႈ ဢမ်ႇမီးၼႆ တေပဵၼ် error လႄႈ မိူဝ်ႈပႆႇဢဝ်ပႅတ်ႈၼၼ်ႉ ထုၵ်ႇလီၸႅတ်ႈတူၺ်းဝႃႈ ၾၢႆႇမၼ်း ၸွင်ႇမီးဝႆႉယူႇ ၼႆယဝ်ႉ။

```
import os  
if os.path.exists("demofile.txt"):  
    os.remove("demofile.txt")  
else:  
    print("The file does not exist")
```

**Delete a folder**

သင်ၶႆႈ ဢဝ်ပႅတ်ႈ folder တင်းဢၼ်ၼႆၸိုင် ႁဝ်းတေလႆႈၸႂ်ႉ rmdir() function ၸင်ႇလႆႈ။ remove() ၼႆႉ မၼ်းဢမ်ႇပၼ်ႁဝ်း ဢဝ်ပႅတ်ႈ folder လႆႈ။

```
import os  
os.rmdir("myfolder")
```