
## **Java Basic 54**

#### **STATIC INNER CLASS**

Link - <https://youtu.be/bU9fyfjthnQ>

**2) Static Inner Class**

ၼႆႉၵေႃႈ ပဵၼ် class ဢၼ်ၶူင်သၢင်ႈဝႆႉၼႂ်း class ဢၼ်ၼိုင်ႈၼင်ႇၵဝ်ႇ။ ၵူၺ်းၵႃႊ မၼ်းၸႂ်ႉ **static** keyword ၼိူဝ် class သေ ၶူင်သၢင်ႈဝႆႉဢိူဝ်ႈ။ ၵွပ်ႈပဵၼ် static class လႄႈ မၼ်းတေႁွင်ႉၸႂ်ႉ global members ဢၼ်မီးဝႆႉ တီႈၼႂ်း outer class ဢမ်ႇလႆႈ။

static class ၼႆႉတေႉ ၵမ်ႈၼမ် ႁဝ်းၸႂ်ႉ တႃႇၶူင် builder pattern ယဝ်ႉ။ Builder Pattern ၼႆႉတေႉ ပဵၼ် pattern ဢၼ်ၸႂ်ႉတိုဝ်းၼမ်ဝႆႉဢၼ်ၼိုင်ႈလႄႈ လီၸႂ်ႉတိုဝ်းတေႉတေႉ။ တီႈၼၼ်ႈ မိူဝ်ႈၶူင်သၢင်ႈ object ၼၼ်ႉ ႁဝ်းတေၸႂ်ႉတိုဝ်းလႆႈ method chaining ဢိူဝ်ႈ။ ၵွပ်ႈၼႆ လၢႆးတႅမ်ႈၵေႃႈ ပဵၼ်ၵႂႃႇ declarative ယဝ်ႉ။

###### လၢႆးၶူင်သၢင်ႈ builder pattern ၸႂ်ႉတိုဝ်း static inner class

```
public class User {
    private String name;
    // Prohibit creating object using new keyword
    private User() { }

    // Static inner class
    public static class UserBuilder {
        private String name;
        // Return UserBuilder to enable chaining
        public UserBuilder setName(String name) {
            this.setName(name);
            return this;
        }
        public User build() {
            User user = new User();
            user.name = this.name;
            return user;
        }
    }
}
```

###### လၢႆးၸႂ်ႉတိုဝ်း

```
User user = new User.UserBuilder().setName("Sai Mao").build();
```
