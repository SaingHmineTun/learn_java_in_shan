## Function Polymorphism
Function ဢၼ်ၼိုင်ႈ ယူႇတီႈ parameter datatype မၼ်းႁေ ႁဵတ်းၵၢၼ်ဢမ်ႇမိူၼ်ၵၼ်ၼၼ်ႉ ပဵၼ်ယွၼ်ႉ Function Polymorphism ယဝ်ႉ။ 
len() function ၼႆႉ ႁဵတ်းၵၢၼ်ၸွမ်း str, list, dict တင်းမူတ်းယဝ်ႉ။ 

```
print(len("Python")) # 6
print(len([1,2,3,4])) # 4   
print(len({"a":1,"b":2})) # 2
```

**isinstance** function
isinstance() function ၼႆႉ တေၸႅတ်ႈပၼ် object ဝႃႈ မၼ်းပဵၼ် type/class သင်ၼႆယဝ်ႉ။
```
value = "Hello"
print(isinstance(value, str)) # True
print(isinstance(value, int)) # False
```

###### Create your own function polymorphism
```
def display_type(value):
    if isinstance(value, str):
        print("It's a string")
    elif isinstance(value, int):
        print("It's an integer")
    elif isinstance(value, list):
        print("It's a list")
    else:
        print("I'm not sure!'")

display_type(1) # It's an integer
display_type("Hello") # It's a string
display_type([1, 2, 3]) # It's a list
display_type(("Sai", "Mao")) # I'm not sure!
```