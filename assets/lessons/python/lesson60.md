
## Understanding JSON

ၼိူဝ်ဢိၼ်ႇထိူဝ်ႇၼႅတ်ႉၼႆႉ မီး server ဝႆႉတၢင်းၼမ်လႄႈ ၵမ်ႈၼမ်ၼမ် ၶဝ်တေၸႂ်ႉတိုဝ်းဝႆႉ json (Javascript Object Notation) တႃႇပၼ်ၶေႃႈမုၼ်းၶိုၼ်းယဝ်ႉ။ JSON ၼႆႉ တီႈယၢဝ်းပွင်ႇဝႃႈ Javascript Object Notation လႄႈ တေငၢႆးၵၼ်တင်း dictionary ဢၼ်ႁဝ်းလႆႈသွၼ်ပူၼ်ႉဝႆႉယဝ်ႉ။ ၵွပ်ႈၼႆ ဝၢႆးသေ လၢႆႊပဵၼ် json ယဝ်ႉၼႆၸိုင် တေဢဝ်လႆႈလူၺ်ႈ ၸႂ်ႉတိုဝ်း key/value ယဝ်ႉ။

```
response_json = response.json()  
print(response_json['value'])
```

#### JSON Data Types
ၶေႃႈမုၼ်းဢၼ် JSON ပၼ်ႁဝ်းမႃးၼၼ်ႉ တေမီးဝႆႉယူႇ Data Type (6) လွင်ႈ ၼင်ႇတီႈတႂ်ႈယဝ်ႉ။
| JSON Type   | Python Equivalent | Description                   | Example                                  |
| ----------- | ----------------- | ----------------------------- | ---------------------------------------- |
| **String**  | `str`             | A sequence of characters      | `"name": "Sai Mao"`                      |
| **Number**  | `int`, `float`    | Numeric values                | `"age": 25`, `"price": 10.5`             |
| **Boolean** | `bool`            | True or False values          | `"isActive": true`                       |
| **Null**    | `None`            | Represents no value           | `"middleName": null`                     |
| **Array**   | `list`            | Ordered collection of values  | `"colors": ["red", "green", "blue"]`     |
| **Object**  | `dict`            | Collection of key/value pairs | `"student": {"name": "Aung", "age": 20}` |
