
using System.Diagnostics;
using System.Text.Json;
using System.Web;
using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Core;
namespace MAUIFoodInformation
{
    public partial class MainPage : ContentPage, IQueryAttributable
    {
        HttpClient client = new HttpClient();

        public void ApplyQueryAttributes(IDictionary<string, object> query)
        {
            EntryBarcode.Text =
                HttpUtility.UrlDecode(query["barcode"].ToString());
            Console.WriteLine(HttpUtility.UrlDecode(
                query["format"].ToString()));
        }


        public MainPage()
        {
            InitializeComponent();

            Routing.RegisterRoute("barcodescanning", typeof(BarcodeScanning));
        }

        private async Task Show_Toast(string message)
        {
            CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
            ToastDuration duration = ToastDuration.Short;
            double fontSize = 14;

            var toast = Toast.Make(message, duration, fontSize);

            await toast.Show(cancellationTokenSource.Token);
        }

        private void ResetFoodDetail()
        {
            // Default contents
            LabelBrand.Text = "Brand: ";
            LabelProducrName.Text = "Product: ";
            LabelIngredients.Text = "Ingredients: ";
            LabelCountries.Text = "Countries: ";
            LabelIngredients.TextColor = Colors.Black;
            LabelCountries.TextColor = Colors.Black;
            ImageCover.Source = ImageSource.FromFile("image_coming_soon.png");
            LabelNotFound.Text = string.Empty;
        }

        private void ParseFoodJSON(string json)
        {
            // Convert http response content to JSON object
            using (var jsonDocument = JsonDocument.Parse(json))
            {
                var rootElement = jsonDocument.RootElement;
                if (rootElement.TryGetProperty("product", out var product))
                {
                    // try to get brand name
                    if (product.TryGetProperty("brands", out var brand_name))
                    {
                        LabelBrand.Text += brand_name.ToString();
                    }

                    if (product.TryGetProperty("product_name", out var product_name))
                    {
                        LabelProducrName.Text += product_name.ToString();
                    }


                    if (product.TryGetProperty("image_url", out var picture))
                    {
                        var img_str = picture.ToString();
                        ImageCover.Source = ImageSource.FromUri(new Uri(img_str));
                    }

                    if (product.TryGetProperty("ingredients_text", out var ingredients))
                    {
                        LabelIngredients.Text += ingredients.ToString();
                    }

                    if (product.TryGetProperty("countries", out var countries))
                    {
                        LabelCountries.Text += countries.ToString();
                    }
                }

            }
        }

        private async void FindBtn_Clicked(object sender, EventArgs e)
        {
            if (EntryBarcode.Text.Trim().Length == 0)
            {
                await Show_Toast("Please enter an Barcode number");
                return;
            }
            ResetFoodDetail();
            try
            {
                await Show_Toast("Querying Food information");
                string ApiUrl =
                $"https://world.openfoodfacts.org/api/v0/product/<{EntryBarcode.Text.Trim()}.json";
                var resp = await client.GetStringAsync(ApiUrl);
                using (var jsonDocument = JsonDocument.Parse(resp))
                {
                    var rootElement = jsonDocument.RootElement;
                    if (rootElement.TryGetProperty("status", out var status))
                    {
                        if (status.ToString() != "1")
                        {
                            LabelNotFound.Text = "Food not found";
                            return;
                        }
                    }
                    ParseFoodJSON(resp);
                }
            }
            catch (Exception ex)
            {
                LabelNotFound.Text = "Querying Food information error. " + ex.Message;
                Debug.WriteLine(LabelNotFound.Text);
            }
        }

        private async void ScanBarcodeBtn_Clicked(object sender, EventArgs e)
        {
            await Shell.Current.GoToAsync("barcodescanning");
        }

    }
}

