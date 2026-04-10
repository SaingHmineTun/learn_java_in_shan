## Lesson 33: Intro to Jetpack Navigation

တွၼ်ႈတႃႇတေၸႂ်ႉ Navigation ၼႂ်း Compose ၼၼ်ႉ ႁဝ်းလူဝ်ႇႁူႉၸၵ်း 3 ပိူင်ၼႆႉၶႃႈ:
1.  **`NavController`**: ပဵၼ်တူဝ်ၵုမ်းၵၢၼ် "သဵၼ်ႈတၢင်း" (ပဵၼ်ၵူၼ်းႁေႃႈလူတ်ႉ)။
2.  **`NavHost`**: ပဵၼ် "ႁိူၼ်း" ဢၼ်ၵဵပ်းၼႃႈၸေႃးတင်းသဵင်ႈဝႆႉ (ပဵၼ်ဢွင်ႈတီႈလႅၵ်ႈၼႃႈၸေႃး)။
3.  **`Routes`**: ပဵၼ် "ၸိုဝ်ႈသဵၼ်ႈတၢင်း" (မိူၼ်ၼင်ႇ `"home"` ဢမ်ႇၼၼ် `"detail"`)။



### 1. Setting Up Navigation
ဢွၼ်တၢင်းသုတ်း ႁဝ်းတေလႆႈထႅမ်သႂ်ႇ Dependency တႂ်ႈၼႆႉ ၼႂ်း `build.gradle` ၶႃႈ:
`implementation("androidx.navigation:navigation-compose:2.8.0")`

### 2. Implementation: The NavHost
ႁဝ်းတေၵေႃႇသၢင်ႈ `NavHost` တွၼ်ႈတႃႇမၢႆဝႆႉဝႃႈ App ႁဝ်းမီးၵႃႈႁိုဝ်ၼႃႈၸေႃးၶႃႈ:

```kotlin
@Composable
fun IdiomApp() {
    // 1. ၵေႃႇသၢင်ႈ NavController
    val navController = rememberNavController()

    // 2. တင်ႈ NavHost
    NavHost(
        navController = navController,
        startDestination = "home" // ၼႃႈၸေႃးတႄႇဢွၼ်တၢင်းသုတ်း
    ) {
        // 3. မၢႆသဵၼ်ႈတၢင်း (Composable Routes)
        composable("home") {
            IdiomListScreen(onItemClick = {
                navController.navigate("detail") // ၼဵၵ်းယဝ်ႉၵႂႃႇၼႃႈ Detail
            })
        }
        composable("detail") {
            IdiomDetailScreen()
        }
    }
}
```

### 3. Navigation Actions
ၼႂ်း `IdiomListScreen` (Lesson 30), ႁဝ်းတေဢမ်ႇပိုတ်ႇ Meaning ၼႂ်း Card ယဝ်ႉ (Lesson 31)။ ၵမ်းၼႆႉ ပေႃးၼဵၵ်း Card ယဝ်ႉ ႁဝ်းတေပၼ်မၼ်း "ၵျွၵ်း" (Navigate) ၵႂႃႇၼႃႈၸေႃးမႂ်ႇၶႃႈ။

```kotlin
// ၼႂ်း IdiomItem
Card(
    modifier = Modifier
        .clickable { onItemClick() } // ႁွင်ႉၸႂ်ႉ Action ဢၼ်သူင်ႇမႃး
) { ... }
```

---

### Summary of Lesson 33
ၼႂ်း Lesson ၼႆႉ ၸဝ်ႈၵဝ်ႇလႆႈႁဵၼ်း:
1.  **Nav Infrastructure:** ၵၢၼ်တင်ႈၵၢၼ် `NavController` လႄႈ `NavHost`။
2.  **Declarative Routing:** ၵၢၼ်ၸႂ်ႉ `composable("route")` တွၼ်ႈတႃႇမၢႆၼႃႈၸေႃး။
3.  **Basic Navigation:** ၵၢၼ်လႅၵ်ႈၼႃႈၸေႃးလုၵ်ႉတီႈ Home ၵႂႃႇ Detail။

---

### ၵၢၼ်ႁိူၼ်း (Homework for Lesson 33)
1.  **Setup Test:** တင်ႈၵၢၼ် Navigation ၼႂ်း Project ၸဝ်ႈၵဝ်ႇ ႁႂ်ႈမၼ်း Run လႆႈလူၺ်ႈဢမ်ႇ Error ၶႃႈ။
2.  **Back Button:** ၼႂ်းၼႃႈ `DetailScreen` ၸၢမ်းထႅမ်သႂ်ႇ Button ၼိုင်ႈဢၼ် သေႁႂ်ႈမၼ်းႁွင်ႉ `navController.popBackStack()` တွၼ်ႈတႃႇ "ပွၵ်ႈၶိုၼ်း" ၼႃႈ Home ၶႃႈ။
3.  **Routes Constant:** ၸၢမ်းၵေႃႇသၢင်ႈ `object` ဢမ်ႇၼၼ် `enum` တွၼ်ႈတႃႇၵဵပ်းၸိုဝ်ႈ Route (Example: `Screen.Home.route`) တႅၼ်းတွၼ်ႈတႃႇတႅမ်ႈ String ပဝ်ႇပဝ်ႇ ႁႂ်ႈမၼ်းပဵၼ်ပၵ်းပိူင်ၶႃႈ။