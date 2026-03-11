
## 12) String Type

တီႈ python ၼႆႉတေႉ ႁဝ်းၸႂ်ႉ Single Quote('') ဢမ်ႇၼၼ် Double Quote ("") သေၶူင်သၢင်ႈ String ယဝ်ႉ။

```
name = "Mr Beans"  
address = 'United Kingdoms'
```

ၼႂ်း String ၼၼ်ႉ သင်ႁဝ်းၶႆႈတႅမ်ႈၵိုၵ်း ထႅဝ်လိၵ်ႈတၢင်းၼမ်ၼႆၸိုင် ႁဝ်းၸႂ်ႉတိုဝ်းလႆႈ Triple Quote (""" or ''') ယဝ်ႉ။ တေမိူၼ် Text Block တီႈ Java ယူႇ။

```
text ='''Lorem ipsum dolor sit amet,  
consectetur adipiscing elit,  
sed do eiusmod tempor incididunt  
ut labore et dolore magna aliqua.'''
```

**String is Array of Characters in Python**

တီႈ python ၼႆႉတီႈတေႉ String ၼႆႉမၼ်းပဵၼ် Array of characters ၵူၺ်းဢိူဝ်ႈ။ သင်တူၺ်းလီလီၼႆၸိုင် ၼႂ်းမၼ်းမီးဝႆႉ characters ဝႆႉၵူၺ်း။ တီႈၽႃႇသႃႇတၢင်ႇဢၼ် ၶဝ်တေမီးဝႆႉ character type သေတႃႉ python တေႉဢမ်ႇမီး။

သင်ႁဝ်းၶႆႈလႆႈ တူဝ်လိၵ်ႈ ၵမ်းတူဝ် ဢၼ်မီးဝႆႉ တီႈၼႂ်း string ၼႆၸိုင် ႁဝ်းၸႂ်ႉလႆႈ array indexing ယဝ်ႉ။ ၵွပ်ႈၼႆ ၶူတ်ႉထႅဝ်တီႈတႂ်ႈၼႆႉ သင် run တူၺ်းၼႆ မၼ်းတေဢွၵ်ႇၼႄပၼ် **e** ၼႆယဝ်ႉ။ တွင်းဝႆႉဝႃႈ Array Index ၼႆႉမၼ်းတေႇတီႈ **0** ၼႆလႄႈ။

```
a ="Hello, World!"  
print(a[1]) # e
```

**String length**

သင်ၶႆႈၸႅတ်ႈတူၺ်းဝႃႈ ၼႂ်း string ႁဝ်းၼႆႉ မီးဝႆႉ တူဝ်လိၵ်ႈ လၢႆတူဝ်ၼႆၸိုင် ႁဝ်းၸႂ်ႉလႆႈ len() function ဢိူဝ်ႈ။ ၶူတ်ႉတီႈတႂ်ႈၼႆႉ မၼ်းတေဢွၵ်ႇၼႄပၼ်ဝႃႈ **13** ၼႆယဝ်ႉ။

```
print(len(a)) # 13
```

သင်ၶႆႈလႆႈ တူဝ်လိၵ်ႈလိုၼ်းသုတ်ႉ ဢၼ်မီးဝႆႉ တီႈၼႂ်း string ၼႆၸိုင် ၵွပ်ႈပိူဝ် a မၼ်းမီးဝႆႉ 13 တူဝ်လႄႈ ႁဝ်းၸႂ်ႉလႆႈ a\[12\] ယူႇ။ ၵူၺ်းၵႃႊ လၢႆးငၢႆႊလိူဝ်တေႉၵေႃႈ ပဵၼ်လၢႆး ဢၼ်ၸႂ်ႉၸွမ်း string length ၼင်ႇတီႈတႂ်ႈၼႆႉယဝ်ႉ။ ၵွပ်ႈပိူဝ်ႈ len function ၼႆႉ မၼ်းလၢတ်ႈၼႄဝႃႈ ၼႂ်း string ႁဝ်းမီးဝႆႉ တူဝ်လိၵ်ႈလၢႆတူဝ်ၼႆလႄႈ သင်ႁဝ်းၶႂ်ႈလႆႈ တူဝ်လိၵ်ႈ လိုၼ်းသုတ်ႉၼႆၸိုင် ၵွပ်ႈ index သမ်ႉ တေႇတီႈ 0 လႄႈ ၸင်ႇဢဝ် length of string ထွၼ်ပၼ် 1 ႁႂ်ႈပဵၼ်ၵႂႃႇ 12 ၼႆယဝ်ႉ။

```
print(a[len(a) - 1]) # !
```

**String Concatenation**

သင်ႁဝ်းၶႆႈႁူမ်ႈ string သွင်ဢၼ်ၸွမ်းၵၼ်ၼႆၸိုင် ႁဝ်းၸႂ်ႉတိုဝ်းလႆႈ + operator ယဝ်ႉ။

```
a = "Hello"  
b = "World"  
c = a + " " + b
```

**String Format**

String Concatenation ၼႆႉႁဝ်းတေၸႂ်ႉႁူမ်ႈလႆႈ string လႄႈ string ၵူၺ်း။ သင်ႁဝ်းၸႂ်ႉၸွမ်း data type တၢင်ႇဢၼ်ၼႆၸိုင် မၼ်းတေၼႄပၼ်ႁဝ်း error ဝႆႉယဝ်ႉ။ သင်သမ်ႉ ၶႆႈႁူမ်ႈၸွမ်း data type တၢင်ႇဢၼ်ၼႆၸိုင် ႁဝ်းၸႂ်ႉလႆႈ String format ဢမ်ႇၼၼ် fstring ယဝ်ႉ။

```
age = 36  
txt = f"My name is John, I am {age}"  
print(txt)
```

**Escaped Character**

ၼႂ်း string ၼႆႉ သင်ႁဝ်းသမ်ႉ ဢဝ် double quote သေၶူင်ဝႆႉလႄႈ သင်သမ်ႉ ၶႆႈသႂ်ႇ double quote ၼႂ်းမၼ်းထႅင်ႈၼႆလႄႈ၊ ႁဝ်းတေလႆႈၸႂ်ႉၸွမ်း escaped character ၸင်ႇတႅမ်ႈလႆႈ။

```
txt = "We are the so-called \"Vikings\" from the north."
```

ၼႆႉပဵၼ် escaped character ၵမ်ႈၽွင်ႈ ဢၼ်ႁဝ်းတေ ၸႂ်ႉတီႈ python လႆႈဢိူဝ်ႈ။

| Code | Result |
| --- | --- |
| \\' | Single Quote |
| \\\\ | Backslash |
| \\n | New Line |
| \\r | Carriage Return |
| \\t | Tab |
| \\b | Backspace |
| \\f | Form Feed |
| \\ooo | Octal value |
| \\xhh | Hex value |

**Octal numbers**

ၼႂ်း string ၼၼ်ႉ သင်ႁဝ်းၶႆႈတႅမ်ႈ octal number ၼႆၸိုင် ႁဝ်းတႅမ်ႈမိူၼ်ၼႆယဝ်ႉ။

```
txt = "\110\145\154\154\157"
```

**Hexadecimal numbers**

သင်သမ်ႉ ၶႆႈတႅမ်ႈ Hexadecimal number ၼႆၸိုင် ႁဝ်းၶိုၼ်းတႅမ်ႈ မိူၼ်ၼႆယဝ်ႉ။

```
txt = "\x48\x65\x6c\x6c\x6f"
```

**String Methods**

ၼႂ်း python ၼႆႉ ၵူႊၸိူဝ်ႉၵူႊလွင်ႈ ပဵၼ် object လႄႈ string ၵေႃႈၼင်ႇၼႆယဝ်ႉ။ ၵွပ်ႈၼႆ ၼႂ်းမၼ်းၼၼ်ႉ တေမီးဝႆႉ method တၢင်းၼမ် ဢၼ်ႁဝ်းတေ ႁွင်ႉၸႂ်ႉလႆႈယဝ်ႉ။

| Method | Description |
| --- | --- |
| [capitalize()](https://www.w3schools.com/python/ref_string_capitalize.asp) | Converts the first character to upper case |
| [casefold()](https://www.w3schools.com/python/ref_string_casefold.asp) | Converts string into lower case |
| [center()](https://www.w3schools.com/python/ref_string_center.asp) | Returns a centered string |
| [count()](https://www.w3schools.com/python/ref_string_count.asp) | Returns the number of times a specified value occurs in a string |
| [encode()](https://www.w3schools.com/python/ref_string_encode.asp) | Returns an encoded version of the string |
| [endswith()](https://www.w3schools.com/python/ref_string_endswith.asp) | Returns true if the string ends with the specified value |
| [find()](https://www.w3schools.com/python/ref_string_find.asp) | Searches the string for a specified value and returns the position of where it was found |
| [format()](https://www.w3schools.com/python/ref_string_format.asp) | Formats specified values in a string |
| [index()](https://www.w3schools.com/python/ref_string_index.asp) | Searches the string for a specified value and returns the position of where it was found |
| [isalnum()](https://www.w3schools.com/python/ref_string_isalnum.asp) | Returns True if all characters in the string are alphanumeric |
| [isalpha()](https://www.w3schools.com/python/ref_string_isalpha.asp) | Returns True if all characters in the string are in the alphabet |
| [isascii()](https://www.w3schools.com/python/ref_string_isascii.asp) | Returns True if all characters in the string are ascii characters |
| [isdecimal()](https://www.w3schools.com/python/ref_string_isdecimal.asp) | Returns True if all characters in the string are decimals |
| [isdigit()](https://www.w3schools.com/python/ref_string_isdigit.asp) | Returns True if all characters in the string are digits |
| [isidentifier()](https://www.w3schools.com/python/ref_string_isidentifier.asp) | Returns True if the string is an identifier |
| [islower()](https://www.w3schools.com/python/ref_string_islower.asp) | Returns True if all characters in the string are lower case |
| [isnumeric()](https://www.w3schools.com/python/ref_string_isnumeric.asp) | Returns True if all characters in the string are numeric |
| [isprintable()](https://www.w3schools.com/python/ref_string_isprintable.asp) | Returns True if all characters in the string are printable |
| [isspace()](https://www.w3schools.com/python/ref_string_isspace.asp) | Returns True if all characters in the string are whitespaces |
| [istitle()](https://www.w3schools.com/python/ref_string_istitle.asp) | Returns True if the string follows the rules of a title |
| [isupper()](https://www.w3schools.com/python/ref_string_isupper.asp) | Returns True if all characters in the string are upper case |
| [lower()](https://www.w3schools.com/python/ref_string_lower.asp) | Converts a string into lower case |
| [replace()](https://www.w3schools.com/python/ref_string_replace.asp) | Returns a string where a specified value is replaced with a specified value |
| [split()](https://www.w3schools.com/python/ref_string_split.asp) | Splits the string at the specified separator, and returns a list |
| [splitlines()](https://www.w3schools.com/python/ref_string_splitlines.asp) | Splits the string at line breaks and returns a list |
| [startswith()](https://www.w3schools.com/python/ref_string_startswith.asp) | Returns true if the string starts with the specified value |
| [strip()](https://www.w3schools.com/python/ref_string_strip.asp) | Returns a trimmed version of the string |
| [swapcase()](https://www.w3schools.com/python/ref_string_swapcase.asp) | Swaps cases, lower case becomes upper case and vice versa |
| [title()](https://www.w3schools.com/python/ref_string_title.asp) | Converts the first character of each word to upper case |
| [upper()](https://www.w3schools.com/python/ref_string_upper.asp) | Converts a string into upper case |
