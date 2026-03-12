
## Getting a random joke

တီႈ requests ၼႆႉ တေမီးဝႆႉ method တၢင်းၼမ်လႄႈ ယူႇတီႈလွင်ႈ ဢၼ်ႁဝ်းၶႂ်ႈႁဵတ်ႉၼၼ်ႉသေ တေလႆႈႁွင်ႉၸႂ်ႉဢဝ်ယဝ်ႉ။ သင်ၸိူဝ်ႉ ႁဝ်းၵူၺ်းၶႆႈလႆႈ ၶေႃႈမုၼ်းၼႆၸိုင် တေလႆႈႁွင်ႉၸႂ်ႉ get method ယဝ်ႉ။ လိူဝ်သေ get မၼ်းၵေႃႈ တေမီးဝႆႉထႅင်ႈ post, put, delete ၸိူဝ်းၼႆႉလႄႈ တီႈပပ်ႉၼႆႉတေႉ တေဢမ်ႇသပ်းလႅင်းၼႄပၼ် လွင်ႈၶဝ်ယဝ်ႉ။

```
import requests as req  

response = req.get('https://api.chucknorris.io/jokes/random')  
print(response.status_code) # 200
print(response.text) # json text
```