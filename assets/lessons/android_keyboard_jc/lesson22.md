

## Lesson 22: App Setting (Select Theme, Enable Key Sound/Vibrate/Handwriting)

### 1. တႅမ်ႈ Code `MainActivity.kt` (The Professional Settings Hub)

ၵႂႃႇမႄးထႅမ်ၾၢႆႇ `MainActivity.kt` Standard ၶွင်ၸဝ်ႈၵဝ်ႇ သေ တႅမ်ႈ Code UI Matrix ၼင်ႇၼႆၶႃႈ:

```kotlin
class MainActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme {
                // Surface background ၶွင် App (သီလႅတ်းၵတ်း Professional Look)
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = Color(0xFF121212)
                ) {
                    SettingsScreen()
                }
            }
        }
    }

    @OptIn(ExperimentalMaterial3Api::class)
    @Composable
    fun SettingsScreen() {
        val context = this@MainActivity
        val scrollState = rememberScrollState()

        // 🌟 🌟 Local States တွၼ်ႈတႃႇ Sync ၸွမ်း SharedPreferences Persistent Storage
        var isSoundEnabled by remember { mutableStateOf(getSoundOnKeyPress(context)) }
        var isVibrateEnabled by remember { mutableStateOf(getVibrateOnKeyPress(context)) }
        var isHandwritingEnabled by remember { mutableStateOf(getHandWritingSystem(context)) }
        var selectedThemeId by remember { mutableStateOf(getKeyboardTheme(context)) }
        val currentThemeName = KeyboardThemesRepository.getThemeById(selectedThemeId).displayName
        var isDropdownExpanded by remember { mutableStateOf(false) }

        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(20.dp)
                .verticalScroll(scrollState),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {

            // ------------------ 🌟 1. DISPLAY APP LOGO ------------------
            Spacer(modifier = Modifier.height(20.dp))
            Image(
                painter = painterResource(id = R.drawable.applogo), // 🌟 လူတ်ႇဢဝ် drawable/applogo.png
                contentDescription = "TMK Keyboard Logo",
                modifier = Modifier
                    .size(110.dp)
                    .clip(RoundedCornerShape(22.dp)) // ႁဵတ်းႁႂ်ႈၸဵင်ႇ Logo မူၼ်း Professional ၸိူၼ်း iOS/Android Icon
            )

            Spacer(modifier = Modifier.height(12.dp))
            Text(
                text = "TMK Keyboard Pro",
                color = Color.White,
                fontSize = 24.sp,
                fontWeight = FontWeight.Bold
            )
            Text(
                text = "ၶီးပွတ်ႇတႆး ထုင်ႉမၢဝ်းၶမ်း",
                color = Color.Gray,
                fontSize = 14.sp
            )

            Spacer(modifier = Modifier.height(30.dp))
            HorizontalDivider(color = Color(0xFF2C2C2C))
            Spacer(modifier = Modifier.height(15.dp))

            // ------------------ 🌟 2. PREFERENCES SWITCH MATRIX ------------------

            // A. Key Sound Switch
            SettingsSwitchRow(
                title = "Enable Key Sound",
                subtitle = "Play standard tactile audio click on keypress",
                checked = isSoundEnabled,
                onCheckedChange = {
                    isSoundEnabled = it
                    saveSoundOnKeyPress(context, isSoundEnabled)
                }
            )

            // B. Key Vibrate Switch
            SettingsSwitchRow(
                title = "Enable Haptic Feedback",
                subtitle = "Vibrate device gently on touch interaction",
                checked = isVibrateEnabled,
                onCheckedChange = {
                    isVibrateEnabled = it
                    saveVibrateOnKeyPress(context, isVibrateEnabled)
                }
            )

            // C. Handwriting System Switch
            SettingsSwitchRow(
                title = "Handwriting (Visual Order)",
                subtitle = "Type 'ေ' + 'ၵ' instead of 'ၵ' + 'ေ' Standard",
                checked = isHandwritingEnabled,
                onCheckedChange = {
                    isHandwritingEnabled = it
                    saveHandWritingSystem(context, isHandwritingEnabled)
                }
            )

            Spacer(modifier = Modifier.height(15.dp))
            HorizontalDivider(color = Color(0xFF2C2C2C))
            Spacer(modifier = Modifier.height(20.dp))

            // ------------------ 🌟 3. THEME SELECTION DROPDOWN (10 THEMES) ------------------
            Text(
                text = "Keyboard Theme Customization",
                color = Color.White,
                fontSize = 16.sp,
                fontWeight = FontWeight.SemiBold,
                modifier = Modifier.fillMaxWidth()
            )
            Spacer(modifier = Modifier.height(10.dp))

            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .clip(RoundedCornerShape(8.dp))
                    .background(Color(0xFF1E1E1E))
                    .clickable { isDropdownExpanded = true }
                    .padding(16.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column {
                        Text(text = "Active Theme", color = Color.Gray, fontSize = 12.sp)
                        Text(text = currentThemeName, color = Color.White, fontSize = 16.sp, fontWeight = FontWeight.Medium)
                    }
                    Text(text = "▼", color = Color.Gray, fontSize = 12.sp)
                }

                // Dropdown Menu Overlay displaying all 10 Themes
                DropdownMenu(
                    expanded = isDropdownExpanded,
                    onDismissRequest = { isDropdownExpanded = false },
                    modifier = Modifier
                        .fillMaxWidth(0.85f)
                        .background(Color(0xFF252525))
                ) {
                    KeyboardThemesRepository.themes.forEach { themeData ->
                        DropdownMenuItem(
                            text = {
                                Text(
                                    text = themeData.displayName,
                                    color = if (themeData.id == selectedThemeId) Color(0xFF00E676) else Color.White // Highlight Active Theme
                                )
                            },
                            onClick = {
                                selectedThemeId = themeData.id
                                saveKeyboardTheme(context, themeData.id)
                                isDropdownExpanded = false
                            }
                        )
                    }
                }
            }
            // ၼႂ်း MainActivity.kt -> SettingsScreen() ၽၢႆႇတႂ်ႈသုတ်း ၶွင် Column

            Spacer(modifier = Modifier.height(30.dp))
            HorizontalDivider(color = Color(0xFF2C2C2C))
            Spacer(modifier = Modifier.height(25.dp))

            // ------------------ 🌟 4. KEYBOARD TESTING DIALOG TRIGGER ------------------
            var showTestDialog by remember { mutableStateOf(false) }

            Button(
                onClick = { showTestDialog = true },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(54.dp),
                shape = RoundedCornerShape(10.dp),
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color(0xFF00E676), // ၸႂ်ႉသီ Highlight Premium Green
                    contentColor = Color(0xFF121212)
                )
            ) {
                Text(
                    text = "⌨️ Test Keyboard Inside App",
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Bold
                )
            }

            Spacer(modifier = Modifier.height(40.dp)) // Padding Extra ၽၢႆႇတႂ်ႈသုတ်း Row

            // 🌟 🌟 THE ALERT DIALOG COMPOSABLE OVERLAY
            if (showTestDialog) {
                var testInputText by remember { mutableStateOf("") }

                AlertDialog(
                    onDismissRequest = { showTestDialog = false },
                    containerColor = Color(0xFF1E1E1E), // သီ Background Overlay လႅတ်းၵတ်း
                    title = {
                        Text(
                            text = "Test Your Keyboard",
                            color = Color.White,
                            fontSize = 18.sp,
                            fontWeight = FontWeight.Bold
                        )
                    },
                    text = {
                        Column {
                            Text(
                                text = "Make sure you have enabled TMK Keyboard in Android Settings. Tap the field below to start typing.",
                                color = Color.Gray,
                                fontSize = 13.sp,
                                modifier = Modifier.padding(bottom = 12.dp)
                            )

                            // 🌟 တူဝ် TextField Context ဢၼ်တေ ႁွင်ႉ Pop Up Keyboard ႁဝ်းဢွၵ်ႇမႃး
                            TextField(
                                value = testInputText,
                                onValueChange = { testInputText = it },
                                placeholder = { Text("Tap here to type and test...", color = Color.DarkGray) },
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .clip(RoundedCornerShape(8.dp)),
                                colors = TextFieldDefaults.colors(
                                    focusedTextColor = Color.White,
                                    unfocusedTextColor = Color.White,
                                    focusedContainerColor = Color(0xFF2D2D2D),
                                    unfocusedContainerColor = Color(0xFF252525),
                                    focusedIndicatorColor = Color(0xFF00E676), // Indicator သီၶဵဝ်
                                    unfocusedIndicatorColor = Color.Transparent
                                )
                            )
                        }
                    },
                    confirmButton = {
                        TextButton(
                            onClick = { showTestDialog = false }
                        ) {
                            Text(text = "Close", color = Color(0xFF00E676), fontWeight = FontWeight.Bold)
                        }
                    }
                )
            }
        }
    }

    /**
     * Reusable Clean Composable Component for Settings Row Layout
     */
    @Composable
    fun SettingsSwitchRow(
        title: String,
        subtitle: String,
        checked: Boolean,
        onCheckedChange: (Boolean) -> Unit
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(vertical = 12.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Column(modifier = Modifier.weight(0.8f)) {
                Text(text = title, color = Color.White, fontSize = 16.sp, fontWeight = FontWeight.Medium)
                Text(text = subtitle, color = Color.Gray, fontSize = 12.sp)
            }
            Switch(
                checked = checked,
                onCheckedChange = onCheckedChange,
                colors = SwitchDefaults.colors(
                    checkedThumbColor = Color.White,
                    checkedTrackColor = Color(0xFF00E676), // Premium Green Accent
                    uncheckedThumbColor = Color.Gray,
                    uncheckedTrackColor = Color(0xFF2C2C2C)
                )
            )
        }
    }
}

```

---

### 2. မၢႆတွင်း (Core Takeaways for the Final Module Setup)

* **`verticalScroll(scrollState)`**: ၵၢၼ်သႂ်ႇ Scroll State ၼိူဝ် Column Container ၸွႆႈမၼ်ႈၸႂ်ဝႃႈ သင် User ၸႂ်ႉၾူၼ်းၼႃႈၸေႃးၵတ်း ဢမ်ႇၼၼ် ပိၼ်ႇၼႃႈၸေႃးသႅၼ်း Landscape, ၼႃႈ UI Settings ႁဝ်း တေဢမ်ႇလုပႅတ်ႈ လႄႈ ၸၢင်ႈ Scroll လူင်းဢၢၼ်ႇလႆႈ တႅတ်ႈတေႃး ၵူႈပိူင်ၶႃႈ။
* **Reactive Dynamic Preference Re-indexing**: မိူဝ်ႈ User Lိူၵ်ႈလႅၵ်ႈ Theme လုၵ်ႉတီႈ Dropdown Menu ၼႂ်း Settings Hub ၼႆႉ, ID ၶွင် Theme တေထုၵ်ႇသူင်ႇၵႂႃႇတႅမ်ႈ Disk ၵမ်းသိုဝ်ႈ။ မိူဝ်ႈ User ၶိုၼ်းၵႂႃႇပိုတ်ႇၸႂ်ႉ Keyboard ၼႂ်း App တၢင်ႇဢၼ် (မိူၼ်ၼင်ႇ Facebook) တူဝ် `MaoKeyboardService` တေ Auto-Read ဢဝ် ID မႂ်ႇၼၼ်ႉ လုၵ်ႉတီႈ SharedPreferences သေ လႅၵ်ႈသီပုမ်ႇ ႁင်းမၼ်းၵမ်းလဵဝ် ၶိုၵ်ႉတွၼ်ႈတႄႉတႄႉၶႃႈ။

---

