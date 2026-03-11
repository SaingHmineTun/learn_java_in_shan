
## 24) Logical Operators

Logical operators ၼႆႉသမ်ႉ မၼ်းတေ ႁဵတ်ႉၵၢၼ်ၸွမ်း boolean သေ ပၼ်ႁဝ်းၶိုၼ်း boolean ၵူၺ်း။

| Operator | Description | Example |
| --- | --- | --- |
| and | Returns True if both statements are true | x < 5 and  x < 10 |
| or  | Returns True if one of the statements is true | x < 5 or x < 4 |
| not | Reverse the result, returns False if the result is true | not(x < 5 and x < 10) |


###### လၢႆးၸႂ်ႉတိုဝ်း 
```
server_email = "sai@gmail.com"
server_password = "abcd1234"

my_email = "saimao@gmail.com"
my_password = "abcd1234"
print(server_email == my_email and server_password == my_password) # True

my_password = "1234abcd"
print(server_email == my_email and server_password == my_password) # False
```

