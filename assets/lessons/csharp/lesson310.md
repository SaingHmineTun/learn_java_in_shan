# Lesson 310: Final Project - "Shan Learn"

App ၼႆႉတေမီး Features ပိူင်လူင် 3 ဢၼ်ၶႃႈ:
1.  **Vocabulary List:** ၼႄသဵၼ်ႈမၢႆၶေႃႈၵႂၢမ်းတႆး (လူ Data လုၵ်ႉတီႈ Web API)။
2.  **Offline Mode:** သိမ်းၶေႃႈၵႂၢမ်းဢၼ်လမ်ႇလွင်ႈဝႆႉၼႂ်းၾူၼ်း (SQLite)။
3.  **Community Post:** ပၼ် User ထႆႇႁၢင်ႈသေ တႅမ်ႈၶေႃႈၵႂၢမ်းတႆးသူင်ႇၶဝ်ႈမႃး (Camera & Forms)။

### 1. ပိူင်သၢင်ႈ Project (MVVM)
* **Model:** `Word.cs` (ID, Shan, English, Meaning, ImagePath)
* **ViewModel:** `WordViewModel.cs` (ႁွင်ႉ HttpClient တႃႇဢဝ် Data လုၵ်ႉတီႈ API)
* **View:** `MainPage.xaml` (ၸႂ်ႉ CollectionView ၼႄ Data)

### 2. တႅမ်ႈ Code တွၼ်ႈလမ်ႇလွင်ႈ (The Core)

**ၵၢၼ်လူ Data လုၵ်ႉတီႈ API (Services/ApiService.cs):**
```csharp
public async Task<List<Word>> GetWordsAsync()
{
    var response = await client.GetAsync("https://api.itaimao.com/shanlearn/words");
    if (response.IsSuccessStatusCode)
    {
        var json = await response.Content.ReadAsStringAsync();
        return JsonSerializer.Deserialize<List<Word>>(json);
    }
    return new List<Word>();
}
```

**ၼႃႈတႃ UI (Views/MainPage.xaml):**
```xml
<CollectionView ItemsSource="{Binding Words}">
    <CollectionView.ItemTemplate>
        <DataTemplate x:DataType="models:Word">
            <Frame Margin="10" CornerRadius="10" BackgroundColor="{AppThemeBinding Light=White, Dark=#333}">
                <HorizontalStackLayout Spacing="15">
                    <Image Source="{Binding ImageUrl}" WidthRequest="60" HeightRequest="60" Aspect="AspectFill" />
                    <VerticalStackLayout VerticalOptions="Center">
                        <Label Text="{Binding Shan}" FontSize="20" FontFamily="ShanFont" FontAttributes="Bold" />
                        <Label Text="{Binding English}" FontSize="14" TextColor="Gray" />
                    </VerticalStackLayout>
                </HorizontalStackLayout>
            </Frame>
        </DataTemplate>
    </CollectionView.ItemTemplate>
</CollectionView>
```

---

### 3. လွၼ်ႉမၼ်းဢၼ်ႁဝ်းလႆႈႁဵၼ်း (Summary)
* **Multi-platform:** Code ဢၼ်ႁဝ်းတႅမ်ႈၼႆႉ လႅၼ်ႈလႆႈတင်း Android လႄႈ Windows တီႈလဵဝ်ၵမ်းလဵဝ်ၶႃႈ။
* **User Experience:** ႁဝ်းၸႂ်ႉ **Shan Style Theming** ႁႂ်ႈ App မီးသီၸွမ်ၸိုင်ႈတႆး လႄႈ ၸႂ်ႉ Font တႆးဢၼ်လူငၢႆႈၶႃႈ။
* **Data Flow:** ႁဝ်းႁူႉလၢႆးသူင်ႇ Data လုၵ်ႉတီႈ Cloud (API) လူင်းမႃးဝႆႉၼႂ်း Local ၶႃႈ။

---

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Endpoint:** URL တႅတ်ႈတေႃးဢၼ်ႁဝ်းသူင်ႇ Request ၵႂႃႇဢဝ် Data။
* **Data Persistence:** ၵၢၼ်ႁဵတ်းႁႂ်ႈၶေႃႈမုၼ်းယူႇၼႂ်း App တႃႇသေႇ (SQLite)။
* **Asset Management:** ၵၢၼ်ၸတ်းၵၢၼ် Font လႄႈ Images ႁႂ်ႈမႅၼ်ႈၸွမ်း Platform။
* **MVVM Pattern:** လၢႆးၸႅၵ်ႇ UI လႄႈ Logic ဢၼ်ပဵၼ် Standard ၶွင် Mobile App။

---