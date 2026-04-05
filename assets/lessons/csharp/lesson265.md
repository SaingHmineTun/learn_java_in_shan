# Lesson 265: Project - "Shan Student ID Generator"

### 1. ၵၢၼ်ဝၢင်း Layout (XAML)

ႁဝ်းတေၸႅၵ်ႇၼႃႈၸေႃးပဵၼ် 2 ၽၢႆႇ (Left = တီႈတႅမ်ႈ Input, Right = တီႈၼႄ Preview ID Card) ၶႃႈ။

**MainWindow.xaml:**

```xml
<Window x:Class="ShanIDApp.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Shan Student ID Generator" Height="450" Width="800"
        Background="#F0F0F0">
    
    <Grid Margin="20">
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="1*" /> <ColumnDefinition Width="1.5*" /> </Grid.ColumnDefinitions>

        <StackPanel Grid.Column="0" Margin="10">
            <TextBlock Text="တႅမ်ႈၶေႃႈမုၼ်းလုၵ်ႈႁဵၼ်း" FontSize="18" FontWeight="Bold" Margin="0,0,0,20" FontFamily="PangLong"/>
            
            <TextBlock Text="ၸိုဝ်ႈလုၵ်ႈႁဵၼ်း:" Margin="0,10,0,5"/>
            <TextBox x:Name="txtName" Padding="5"/>

            <TextBlock Text="မၢႆၾူၼ်း:" Margin="0,10,0,5"/>
            <TextBox x:Name="txtPhone" Padding="5"/>

            <TextBlock Text="ၸၼ်ႉႁဵၼ်း:" Margin="0,10,0,5"/>
            <ComboBox x:Name="cmbClass" SelectedIndex="0">
                <ComboBoxItem Content="Computer Basic"/>
                <ComboBoxItem Content="C# Programming"/>
                <ComboBoxItem Content="Flutter Development"/>
            </ComboBox>

            <Button x:Name="btnGenerate" Content="သၢင်ႈပဵၼ် ID Card" Margin="0,30,0,0" 
                    Padding="10" Background="DarkGreen" Foreground="White" Click="btnGenerate_Click"/>
        </StackPanel>

        <Border Grid.Column="1" Margin="20" Background="White" CornerRadius="15" 
                BorderBrush="Gold" BorderThickness="3" VerticalAlignment="Center" Height="220">
            <Border.Effect>
                <DropShadowEffect BlurRadius="15" ShadowDepth="5" Color="Gray"/>
            </Border.Effect>
            
            <Grid x:Name="idCardArea">
                <Grid.ColumnDefinitions>
                    <ColumnDefinition Width="120"/> <ColumnDefinition Width="*"/>   </Grid.ColumnDefinitions>

                <Ellipse Grid.Column="0" Width="80" Height="80" Fill="LightGray" Stroke="Gray" VerticalAlignment="Center" Margin="15"/>
                
                <StackPanel Grid.Column="1" VerticalAlignment="Center" Margin="10">
                    <TextBlock x:Name="lblCardSchool" Text="ႁူင်းႁဵၼ်း ထုင်ႉမၢဝ်းၶမ်း" Foreground="DarkGreen" FontWeight="Bold" FontSize="16" FontFamily="PangLong"/>
                    <Separator Margin="0,5,0,10" Background="Gold"/>
                    
                    <TextBlock x:Name="lblCardName" Text="Name: [Name]" FontSize="14" Margin="0,2"/>
                    <TextBlock x:Name="lblCardPhone" Text="Phone: [Phone]" FontSize="14" Margin="0,2"/>
                    <TextBlock x:Name="lblCardClass" Text="Class: [Class]" FontSize="14" FontWeight="SemiBold" Foreground="DarkSlateBlue" Margin="0,5"/>
                </StackPanel>
            </Grid>
        </Border>
    </Grid>
</Window>
```

### 2. ၵၢၼ်တႅမ်ႈ Logic (C#)

မိူဝ်ႈ User ၼဵၵ်းတုမ်ႇ **btnGenerate** ႁဝ်းတေဢဝ်လိၵ်ႈလုၵ်ႉတီႈ Input မႃးၼႄၼိူဝ် Card ၶႃႈ။

**MainWindow.xaml.cs:**

```csharp
private void btnGenerate_Click(object sender, RoutedEventArgs e)
{
    // ၵူတ်ႇထတ်းဝႃႈ တႅမ်ႈလိၵ်ႈယဝ်ႉႁႃႉ?
    if (string.IsNullOrWhiteSpace(txtName.Text))
    {
        MessageBox.Show("ၶႅၼ်းတေႃႈ တႅမ်ႈၸိုဝ်ႈလုၵ်ႈႁဵၼ်းဢွၼ်တၢင်းၶႃႈ။");
        return;
    }

    // ဢဝ် Data မႃးၼႄၼိူဝ် Preview Card
    lblCardName.Text = $"ၸိုဝ်ႈ: {txtName.Text}";
    lblCardPhone.Text = $"ၾူၼ်း: {txtPhone.Text}";
    
    // ဢဝ်ၵႃႈၶၼ်လုၵ်ႉတီႈ ComboBox
    ComboBoxItem selectedClass = (ComboBoxItem)cmbClass.SelectedItem;
    lblCardClass.Text = $"ၸၼ်ႉ: {selectedClass.Content}";

    // ၼႄ Alert ဝႃႈယဝ်ႉယဝ်ႉ
    MessageBox.Show("သၢင်ႈပဵၼ် ID Card ယဝ်ႉတူဝ်ႈယဝ်ႉၶႃႈ!");
}
```

-----

### 3. လွၼ်ႉမၼ်းဢၼ်ႁဝ်းလႆႈႁဵၼ်း

* **Grid Sizing:** ၵၢၼ်ၸႂ်ႉ `1*` လႄႈ `1.5*` ႁဵတ်းႁႂ်ႈ App ႁဝ်းယိုတ်းတူဝ်လႆႈႁၢင်ႈလီ (Responsive) ၶႃႈ။
* **Visual Effects:** ၵၢၼ်ၸႂ်ႉ `DropShadowEffect` လႄႈ `CornerRadius` ၼႂ်း WPF ႁဵတ်းႁႂ်ႈ App ႁဝ်း "Professional" လိူဝ် WinForms ၼမ်ၶႃႈ။
* **Shan Font:** ႁဝ်းၸႂ်ႉ `FontFamily="PangLong"` တႃႇၼႄလိၵ်ႈတႆးႁႂ်ႈၸႅင်ႈလီၶႃႈ။

-----

### ၶေႃႈၵႂၢမ်း Technical ဢၼ်လူဝ်ႇမၢႆတွင်း

* **Placeholder:** ၶေႃႈမုၼ်းဢမ်ႇၼၼ်ႁၢင်ႈ ဢၼ်ဝႆႉတႅၼ်းတီႈၸူဝ်ႈၶၢဝ်ႇ။
* **Shadow Effect:** ၵၢၼ်ထႅမ် "ငဝ်း" ႁႂ်ႈ Control မီးႁၢင်ႈ 3D။
* **Border:** Control ဢၼ်ၸႂ်ႉတႅမ်ႈၶွပ်ႇ လႄႈ မၵ်းမၼ်ႈသီပိုၼ်ႉ (Background)။
* **Drop-down (ComboBox):** ၶိူင်ႈမိုဝ်းဢၼ်ပၼ် User လိူၵ်ႈၵႃႈၶၼ်လုၵ်ႉတီႈသဵၼ်ႈမၢႆ။

-----