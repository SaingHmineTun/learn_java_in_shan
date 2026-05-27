

## Lesson 18: Creating the 10 Keyboard Themes Color Repository

ၼႂ်းၵၢၼ်တႅမ်ႈ Code ၵဵပ်း Themes ၼမ်ၼမ် ၼႂ်း Kotlin ႁဝ်းတေၸႂ်ႉ `object` Singleton တႃႇပဵၼ် Repository Context ၶႃႈ။ ႁဝ်းတေၸႂ်ႉ `CornerRadius` ၶွင် Compose Geometry တႃႇတတ်းသႅၼ်း လွင်ႈမူၼ်းၶွင်ၸဵင်ႇ Key ႁႂ်ႈပႅၵ်ႇပိူင်ႈၵၼ် ၸွမ်းၵူႈ Theme ၶႃႈ။

---

### 1. တႅမ်ႈ Code `KeyboardThemesRepository.kt`

ၵႂႃႇသၢင်ႈ ၾၢႆႇ Kotlin ဢၼ်မႂ်ႇ ၼႂ်း Package `data.theme` သေ Setup Themes တိုင် 10 သႅၼ်း ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro.data.theme

import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.graphics.Color

object KeyboardThemesRepository {

    // 🌟 🌟 Array List ၵဵပ်း 10 Themes ဢၼ်လီသုတ်း (Best of the Best)
    val themes = listOf(

        // 1. 🌟 TMK Premium Dark (Theme ပိုၼ်ႉထၢၼ် ၶွင် TMK Group)
        KeyboardThemeData(
            id = "tmk_dark",
            displayName = "TMK Premium Dark",
            backgroundColor = Color(0xFF121212),
            keyBackgroundColor = Color(0xFF1E1E1E),
            keyForegroundColor = Color(0xFFE0E0E0),
            keyPressedBackground = Color(0xFF333333),
            keyPressedForeground = Color(0xFFFFFFFF),
            specialKeyBackgroundColor = Color(0xFF2D2D2D),
            specialForeground = Color(0xFFB0B0B0),
            accentKeyBackgroundColor = Color(0xFF00E676), // Enter သီၶဵဝ်လႅင်း
            accentForeground = Color(0xFF121212),
            borderColor = Color(0xFF252525),
            borderWidth = 1,
            borderRadius = CornerRadius(6f, 6f)
        ),

        // 2. 🌟 TMK Thung Mao Kham (သီၶမ်း ၼမ်ႉၶမ်း ပိုၼ်ႉထၢၼ်တႆး)
        KeyboardThemeData(
            id = "tmk_thung_mao_kham",
            displayName = "ထုင်ႉမၢဝ်းၶမ်း Gold",
            backgroundColor = Color(0xFF1A1508),
            keyBackgroundColor = Color(0xFF2C220E),
            keyForegroundColor = Color(0xFFF5E1A4), // တူဝ်လိၵ်ႈ သီထွင်ႇၶမ်း
            keyPressedBackground = Color(0xFFD4AF37), // မိူဝ်ႈၼဵၵ်း ပဵၼ်သီၶမ်းလႅင်း
            keyPressedForeground = Color(0xFF1A1508),
            specialKeyBackgroundColor = Color(0xFF3A2E14),
            specialForeground = Color(0xFFD4AF37),
            accentKeyBackgroundColor = Color(0xFFD4AF37), // Enter သီၶမ်း Gold
            accentForeground = Color(0xFF1A1508),
            borderColor = Color(0xFF423317),
            borderWidth = 1,
            borderRadius = CornerRadius(8f, 8f) // မူၼ်းဢိတ်းၼိုင်ႈ ႁၢင်ႈလီ
        ),

        // 3. 🌟 Android 15 Material Dark (Standard Style)
        KeyboardThemeData(
            id = "material_dark",
            displayName = "Material You Dark",
            backgroundColor = Color(0xFF1C1B1F),
            keyBackgroundColor = Color(0xFF252428),
            keyForegroundColor = Color(0xFFE6E1E5),
            keyPressedBackground = Color(0xFF49454F),
            keyPressedForeground = Color(0xFFFFFFFF),
            specialKeyBackgroundColor = Color(0xFF353438),
            specialForeground = Color(0xFFCAC4D0),
            accentKeyBackgroundColor = Color(0xFFD0BCFF), // Enter သီ Lavender 
            accentForeground = Color(0xFF381E72),
            borderColor = Color(0xFF49454F),
            borderWidth = 0, // ဢမ်ႇပႃးသဵၼ်ႈႁိမ်းႁွမ်း Flat Style
            borderRadius = CornerRadius(12f, 12f) // ဝူင်းမူၼ်းလိူဝ်ပိူၼ်ႈ
        ),

        // 4. 🌟 Pure White Light (Theme သီလႅင်း သႅၼ်းသႅတ်ႈ)
        KeyboardThemeData(
            id = "pure_light",
            displayName = "Pure White Light",
            backgroundColor = Color(0xFFF2F2F7),
            keyBackgroundColor = Color(0xFFFFFFFF),
            keyForegroundColor = Color(0xFF1C1C1E),
            keyPressedBackground = Color(0xFFE5E5EA),
            keyPressedForeground = Color(0xFF000000),
            specialKeyBackgroundColor = Color(0xFFD1D1D6),
            specialForeground = Color(0xFF48484A),
            accentKeyBackgroundColor = Color(0xFF007AFF), // Enter သီသွမ်ႇ iOS feel
            accentForeground = Color(0xFFFFFFFF),
            borderColor = Color(0xFFE5E5EA),
            borderWidth = 1,
            borderRadius = CornerRadius(5f, 5f)
        ),

        // 5. 🌟 Shan Heritage Red (သီလႅင် ၸုၵ်းၸႅင်ႈ ႁတ်းႁၢၼ်)
        KeyboardThemeData(
            id = "shan_heritage_red",
            displayName = "Shan Heritage Red",
            backgroundColor = Color(0xFF1C0A0A),
            keyBackgroundColor = Color(0xFF331414),
            keyForegroundColor = Color(0xFFFFCCCC),
            keyPressedBackground = Color(0xFFD32F2F), // ၼဵၵ်းယဝ်ႉ ပဵၼ်သီလႅင်ၸႅင်ႈ
            keyPressedForeground = Color(0xFFFFFFFF),
            specialKeyBackgroundColor = Color(0xFF441A1A),
            specialForeground = Color(0xFFFF8A8A),
            accentKeyBackgroundColor = Color(0xFFD32F2F),
            accentForeground = Color(0xFFFFFFFF),
            borderColor = Color(0xFF552222),
            borderWidth = 1,
            borderRadius = CornerRadius(6f, 6f)
        ),

        // 6. 🌟 Midnight OLED (သီလႅတ်းပိၵ်ႉ တွၼ်ႈတႃႇ ၾူၼ်း OLED ပၼ်ႇႁွပ်ႇ Power)
        KeyboardThemeData(
            id = "midnight_oled",
            displayName = "Midnight OLED Pure",
            backgroundColor = Color(0xFF000000), // Black 100% 
            keyBackgroundColor = Color(0xFF121212),
            keyForegroundColor = Color(0xFFFFFFFF),
            keyPressedBackground = Color(0xFF2C2C2C),
            keyPressedForeground = Color(0xFF00E676),
            specialKeyBackgroundColor = Color(0xFF1C1C1C),
            specialForeground = Color(0xFF8E8E93),
            accentKeyBackgroundColor = Color(0xFFFFFFFF), // Enter သီၶၢဝ် Pure
            accentForeground = Color(0xFF000000),
            borderColor = Color(0xFF2C2C2C),
            borderWidth = 1,
            borderRadius = CornerRadius(4f, 4f)
        ),

        // 7. 🌟 Cyberpunk Neon (သီလူၺ်း Neon futuristic)
        KeyboardThemeData(
            id = "cyberpunk_neon",
            displayName = "Cyberpunk Neon 2026",
            backgroundColor = Color(0xFF000B19),
            keyBackgroundColor = Color(0xFF001533),
            keyForegroundColor = Color(0xFF00FFFF), // Cyan Text
            keyPressedBackground = Color(0xFFFF007F), // Neon Pink Feedback
            keyPressedForeground = Color(0xFFFFFFFF),
            specialKeyBackgroundColor = Color(0xFF00224D),
            specialForeground = Color(0xFF00FFFF),
            accentKeyBackgroundColor = Color(0xFFFF007F), // Enter Neon Pink
            accentForeground = Color(0xFFFFFFFF),
            borderColor = Color(0xFF00FFFF), // Cyan Border
            borderWidth = 1,
            borderRadius = CornerRadius(8f, 8f)
        ),

        // 8. 🌟 Soft Sakura Pink (သီပၢင်ႇမူၼ်း ဢွၼ်ႇယဝ်ႉ)
        KeyboardThemeData(
            id = "soft_sakura",
            displayName = "Soft Sakura Pink",
            backgroundColor = Color(0xFFFFF0F5),
            keyBackgroundColor = Color(0xFFFFFFFF),
            keyForegroundColor = Color(0xFFDB7093),
            keyPressedBackground = Color(0xFFFFC0CB),
            keyPressedForeground = Color(0xFFDB7093),
            specialKeyBackgroundColor = Color(0xFFFFE4E1),
            specialForeground = Color(0xFFCD5C5C),
            accentKeyBackgroundColor = Color(0xFFFF69B4), // Hot Pink Enter
            accentForeground = Color(0xFFFFFFFF),
            borderColor = Color(0xFFFFE4E1),
            borderWidth = 1,
            borderRadius = CornerRadius(10f, 10f)
        ),

        // 9. 🌟 Forest Moss Green (သီၶဵဝ်ထိူၼ်ႇ တိုင်ၵုမ်းၸႂ်)
        KeyboardThemeData(
            id = "forest_moss",
            displayName = "Forest Moss Green",
            backgroundColor = Color(0xFF1B241C),
            keyBackgroundColor = Color(0xFF2A382C),
            keyForegroundColor = Color(0xFFE2EFE4),
            keyPressedBackground = Color(0xFF4E6E53),
            keyPressedForeground = Color(0xFFFFFFFF),
            specialKeyBackgroundColor = Color(0xFF354638),
            specialForeground = Color(0xFFA3C0A7),
            accentKeyBackgroundColor = Color(0xFF81C784),
            accentForeground = Color(0xFF1B241C),
            borderColor = Color(0xFF3D5240),
            borderWidth = 1,
            borderRadius = CornerRadius(6f, 6f)
        ),

        // 10. 🌟 Classic Slate Grey (သီၵူၼ်းၵတ်ႉ Standard Profile)
        KeyboardThemeData(
            id = "classic_slate",
            displayName = "Classic Slate Grey",
            backgroundColor = Color(0xFF2F3542),
            keyBackgroundColor = Color(0xFF57606F),
            keyForegroundColor = Color(0xFFFFFFFF),
            keyPressedBackground = Color(0xFF747D8C),
            keyPressedForeground = Color(0xFFFFFFFF),
            specialKeyBackgroundColor = Color(0xFF343A40),
            specialForeground = Color(0xFFCED4DA),
            accentKeyBackgroundColor = Color(0xFF1E90FF), // Clear Blue Enter
            accentForeground = Color(0xFFFFFFFF),
            borderColor = Color(0xFF747D8C),
            borderWidth = 0,
            borderRadius = CornerRadius(7f, 7f)
        )
    )

    /**
     * Method တႃႇႁွင်ႉလူတ်ႇဢဝ် Theme ၸွမ်း ID (သင်ဢမ်ႇႁၼ် ႁႂ်ႈပၼ် TMK Premium Dark ပဵၼ် Default)
     */
    fun getThemeById(id: String): KeyboardThemeData {
        return themes.find { it.id == id } ?: themes[0]
    }
}

```

---

### 2. မၢႆတွင်း (Core Takeaways)

* **OLED Black Power (`#000000`):** ၼႂ်းတွၼ်ႈ Theme `midnight_oled` ၼၼ်ႉ ႁဝ်းပၼ် Background ပဵၼ် Black တႅတ်ႈတေႃး 100%။ လၢႆးၼႆႉ တိူဝ်ႉၸွႆႈႁႂ်ႈ ၼႃႈၸေႃး OLED ပိတ်းပႅတ်ႈ Light Pixels သေ ႁဵတ်းႁႂ်ႈ ၾူၼ်း User ဢမ်ႇၵိၼ် Battery လႄႈ ၵုမ်းထိန်းသၢႆတႃ လီတႄႉတႄႉၶႃႈ။
* **Geometry Variations (`borderRadius`):** တီႈၼႆႈ ႁဝ်းႁၼ်လႆႈဝႃႈ Theme `material_dark` မီး `borderRadius = CornerRadius(12f)` (မူၼ်းယႂ်ႇသႅၼ်း Modern)၊ သေ Theme `midnight_oled` မီး `borderRadius = CornerRadius(4f)` (သႅၼ်းလႅတ်းၵျႅၼ်ႇၶႅၼ်ႇ)။ ၼႆႉမၼ်းၼႄဝႃႈ Data Structure ႁဝ်း မၼ်းမီး Control သိုဝ်ႈသိုဝ်ႈ ၼိူဝ် ၵူႈ Layout ၶႃႈ။

---