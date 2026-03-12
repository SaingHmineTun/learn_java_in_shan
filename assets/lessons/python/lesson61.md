
## Joke and Cat Fact Generator

Program ၼႆႉ လႆးၼႄဝႆႉ လၢႆးဢဝ် Joke လႄႈ Cat Fact ၼိူဝ်သႃႇဝႃႇဝႆႉသေ ၶႂ်ႈလႆႈသင်ၼႆၼၼ်ႉ တေယူႇတီႈ user လိူၵ်ႈပၼ်ၼၼ်ႉယဝ်ႉ။ သင်လိူၵ်ႈပၼ် 1 တေၼႄပၼ် Joke လႄႈ သင်လိူၵ်ႈပၼ် 2 တေၼႄပၼ် Cat Fact ၼႆယဝ်ႉ။ သင်ၶႂ်ႈၵိုတ်းလွင်ႈ program ႁဝ်းတေႉ လိူၵ်ႈပၼ် 3 လႆႈယူႇ။

```
import requests  

def get_joke():  
    url = "<https://api.chucknorris.io/jokes/random>"  
    response = requests.get(url)  
    data = response.json()  
    print("\n😂 Chuck Norris Joke:")  
    print(data\["value"\])  

def get_cat_fact():  
    url = "https://catfact.ninja/fact"  
    response = requests.get(url)  
    data = response.json()  
    print("\\n🐱 Cat Fact:")  
    print(data\["fact"\])  

while True:  
    print("\\n--- Menu ---")  
    print("1. Get Chuck Norris Joke")  
    print("2. Get Cat Fact")  
    print("3. Exit")  
    choice = input("Choose an option (1-3): ")  
    if choice == "1":  
        get_joke()  
    elif choice == "2":  
        get_cat_fact()  
    elif choice == "3":  
        print("Goodbye!")  
        break  
    else:  
        print("Invalid option. Try again.")  
```
