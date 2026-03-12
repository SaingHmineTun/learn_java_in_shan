## 35) Function Arguments

မိူဝ်ႈၶူင်သၢင်ႈ function ၼႆႉ တီႈၼႂ်း တူင်ႇမူၼ်းမူၼ်းၼၼ်ႉ ႁဝ်းယွၼ်းလႆႈ argument ဢိူဝ်ႈ။ တီႈၼႆႈ ႁဝ်းၶႆႈတႅမ်ႈ လၢႆတူဝ်ၵေႃႈလႆႈယူႇ၊ တူဝ်လႄႈတူဝ် ၶိုၼ်းၸႂ်ႉ comma (,) သေ ၸႅၵ်ႇဝႆႉၵေႃႈ လႆႈယဝ်ႉ။

```
def my_function(fname): # single parameter  
    print("Hello, " + fname)  

my_function("Emil") # single argument
```

**Parameters vs Arguments**

သွင်ဢၼ်ၼႆႉ တီႈတေႉ မီးတီႈပွင်ႇ ဢၼ်လဵဝ်ၵူၺ်း။ ၵူၺ်းၵႃႊ တီႈႁွင်ႉမၼ်းၼၼ်ႉ တေပႅၵ်ႇၵႂႃႇ ဢိတ်းယူႇ။

မိူဝ်ႈႁဝ်းၶူင်သၢင်ႈ function ၼႆႉ ၼႂ်းတူင်ႇမူၼ်းမၼ်း ဢၼ်ႁဝ်းသႂ်ႇဝႆႉၼၼ်ႉ ႁဝ်းၶိုၼ်းႁွင်ႉဝႃႈ **parameters** ၼႆသေ

မိူဝ်ႈၽွင်း ႁဝ်းႁွင်ႉ function ဢၼ်လႆႈၶူင်ဝႆႉၼၼ်ႉသေ သႂ်ႇပၼ် ၵႃႊၶၼ်ၼၼ်ႉ ႁဝ်းသမ်ႉ ႁွင်ႉဝႃႈ **arguments** ၼႆယဝ်ႉ။

**Number of Arguments**

သင် function ႁဝ်းမီးဝႆႉ parameters 2 ဢၼ်ၼႆ တိုၼ်းတေလႆႈသူင်ႇပၼ် argument 2 ဢၼ်ယဝ်ႉ။ သင်သမ်ႉ 1<sup>st</sup> arg ပဵၼ် string ၊ 2<sup>nd</sup> arg ပဵၼ် int မိူၼ်ၼင်ႇ ၶူတ်ႉတီႈတႂ်ႈၼႆႉၼႆၸိုင် ႁဝ်းတေလႆႈ သူင်ႇပၼ် ႁႂ်ႈ data type မၼ်းမိူၼ်ၵၼ်ယူႇ။ သင်ဢမ်ႇၼၼ် မၼ်းတေပဵၼ် runtime error ယဝ်ႉ။

```
def printInfo(name, age):  
    print("My name is " + name)  
    print("I'm " + str(age) + " years old")  

printInfo("Sai", 18)
```

**Arbitrary Arguments**

သင်ႁဝ်း ၶႆးသူင်ႇ arguments တၢင်းၼမ်၊ ဢမ်ႇၶႆႈ မၵ်းမၼ်ႈဝႆႉ size မၼ်းၼႆၸိုင် ႁဝ်းတေၸႂ်ႉလႆႈ \*args (Arbitrary arguments) ယဝ်ႉ။ သင်ၼၼ် သင်ၸိူဝ်ႉမၼ်းၽႅဝ်ၵႂႃႇတီႈ function ၼႆ parameter မၼ်းၼၼ်ႉ တေပဵၼ် tuple ၵႂႃႇယဝ်ႉ။ ၼႆႉၵေႃႈ မၼ်းတေမိူၼ် varrags တီႈ Java ၼင်ႇၵဝ်ႇ။

```
def my_function(*kids):  
    print("The youngest child is " + kids[2])  

my_function("Emil", "Tobias", "Linus")
```

**Keyword Arguments**

Function arguments ၼႆႉသင်ႁွင်ႉယူဝ်းယူဝ်းၼႆၸိုင် ႁဝ်းတေလႆႈသူင်ႇပၼ်လူၺ်ႈ order မၼ်းဢိူဝ်ႈ။ သင်ဢမ်ႇၼၼ် program ႁဝ်းၸၢင်ႊမီး Error ယဝ်ႉ။ သင်သမ်ႉ function ႁဝ်းမီးဝႆႉ arguments ၼမ်ႁႅင်းၼႃႇလႄႈ ဢမ်ႇတွင်းလႆႈ order မၼ်းၼႆၸိုင် ႁဝ်းၸႂ်ႉတိုဝ်းလႆႈ keyword arguments ယဝ်ႉ။ ၼႆႉတေႉ မိူဝ်ႈႁဝ်းသူင်ႇ arguments ၼၼ်ႉ ႁဝ်းသူင်ႇလူၺ်ႈ ၸိုဝ်ႈ parameter မိူၼ်ၼင်ႇ key = value ၼၼ်ႉယဝ်ႉ။

```
def my_function(child3, child2, child1):  
    print("The youngest child is " + child3)  

my_function(child1 = "Emil", child2 = "Tobias", child3 = "Linus")
```

**Arbitrary Keyword Arguments**

သင်ႁဝ်းၶႆႈသူင်ႇ keyword arguments တၢင်းၼမ်ၼႆ ႁဝ်းၸႂ်ႉလႆႈ \*\*kwargs (Arbitrary keyword arguments) လႆႈယူႇ။ သင်ၽႅဝ်ၵႂႃႇတီႈ parameter ၼႆၸိုင် မၼ်းတေႁပ်ႉၶၢမ်ႇ မိူၼ်ၼင်ႇ dictionary လႄႈ ႁဝ်းၶိုၼ်းတေၸၢင်ႊၸႂ်ႉၸွမ်းလႆႈ key-value ယဝ်ႉ။

```
def my_function(**kid):  
    print("His last name is " + kid["lname"])  

my_function(fname = "Tobias", lname = "Refsnes")
```

**Default parameter values**

သင်ႁဝ်း ၶႆႈၶူင်သၢင်ႈ function parameter သေ သမ်ႉၶႆႈသႂ်ႇ ၵႃႊၶၼ်မၼ်းဝႆႉထႃႈၼႆၸိုင် ႁဝ်းၸႂ်ႉလႆႈ default parameter value ယဝ်ႉ။ parameter ၼႆႉ မၼ်းတေပဵၼ် optional ၵႂႃႇ ပွင်ႇဝႃႈ ႁဝ်းဢမ်ႇသူင်ႇပၼ် ၵႃႊၶၼ်မၼ်းၵေႃႈ တေဢမ်ႇၼႄပၼ် error သင်ၼႆယဝ်ႉ။ သင်ၼၼ် မၼ်းတေဢဝ် ၵႃႊၶၼ် default မၼ်းၵႂႃႇယဝ်ႉ။ တီႈၼႆႈ သင်ႁဝ်းသူင်ႇ Sweden ၼႆမၼ်းတေၼႄႁဝ်းဝႃႈ "I am from Sweden" သေ သင်ႁဝ်း ဢမ်ႇသူင်ႇသင်ပၼ်ၼႆ လိူဝ်သေ မၼ်းတေ ဢမ်ႇပဵၼ် error ယဝ်ႉ မၼ်းတေၼႄပၼ်ႁဝ်းဝႃႈ "I am from Norway" ၼႆယဝ်ႉ။

```
def my_function(country = "Norway"):  
    print("I am from " + country)  

my_function("Sweden") # Swden
my_function() # Norway (default)
```
