using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Core;
using System.Diagnostics;
using System.Reflection.Metadata;
using System.Text.Json;
using System.Web;
using CommunityToolkit.Maui.Storage;
using System.Text;
using Newtonsoft.Json;
using Project.Model;

namespace Project
{
    public partial class MainPage : ContentPage, IQueryAttributable
    {
        HttpClient client = new HttpClient();
        IFileSaver filesaver;
        CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        public void ApplyQueryAttributes(IDictionary<string, object> query)
        {
            EntryBarcode.Text =
                HttpUtility.UrlDecode(query["barcode"].ToString());
            Console.WriteLine(HttpUtility.UrlDecode(
                query["format"].ToString()));
        }


        public MainPage(IFileSaver filesaver)
        {
            InitializeComponent();

            SetListView();


            Routing.RegisterRoute("barcodescanning", typeof(BarcodeScanning));
            this.filesaver = filesaver;
        }

        private async void SetListView()
        {
            string ApiUrl =
                $"https://imse2113g04.imse.hku.hk/api/v1/asset/?format=json";
            HttpClient client = new HttpClient();
            var resp = await client.GetStringAsync(ApiUrl);
            var model = JsonConvert.DeserializeObject<List<Inventory>>(resp);
            listView.ItemsSource = model;
        }

        private async void OnItemSelected(object sender, SelectedItemChangedEventArgs args)
        {
            Inventory item = args.SelectedItem as Inventory;
            ResetInventoryDetail();
            string ApiUrl =
               $"https://imse2113g04.imse.hku.hk/api/v1/asset/?barcode={item.barcode}&format=json";
            var resp = await client.GetStringAsync(ApiUrl);
            ParseInventoryJSON(resp);
            /*using (JsonDocument document = JsonDocument.Parse(resp))
            {
                var rootElement = document.RootElement;
                if (rootElement.TryGetProperty("name", out var inventory_name))
                {
                    LabelName.Text += inventory_name.ToString();
                }

                if (rootElement.TryGetProperty("description", out var description))
                {
                    LabelDescription.Text += description.ToString();
                }

                if (rootElement.TryGetProperty("inventory_number", out var num))
                {
                    LabelLevel.Text += num.ToString();
                }
            }*/
        }
        private async Task Show_Toast(string message)
        {
            CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
            ToastDuration duration = ToastDuration.Short;
            double fontSize = 14;

            var toast = Toast.Make(message, duration, fontSize);

            await toast.Show(cancellationTokenSource.Token);
        }

        private void ResetInventoryDetail()
        {
            // Default contents
            LabelName.Text = "Name: ";
            LabelDescription.Text = "Description: ";
            LabelLevel.Text = "Inventory levels: ";
            LabelNotFound.Text = string.Empty;
        }

        private void ParseInventoryJSON(string json)
        {
            // Convert http response content to JSON object
            using (JsonDocument document = JsonDocument.Parse(json))
            {
                var rootElement = document.RootElement;

                // try to get brand name
                if (rootElement[0].TryGetProperty("name", out var inventory_name))
                {
                    LabelName.Text += inventory_name.ToString();
                }

                if (rootElement[0].TryGetProperty("description", out var description))
                {
                    LabelDescription.Text += description.ToString();
                }

                if (rootElement[0].TryGetProperty("inventory_number", out var num))
                {
                    LabelLevel.Text += num.ToString();  
                }

            }

        }

        private async void FindBtn_Clicked(object sender, EventArgs e)
        {
            if (EntryBarcode.Text.Trim().Length == 0)
            {
                await Show_Toast("Please enter an Inventory number");
                return;
            }
            ResetInventoryDetail();
            try
            {
                await Show_Toast("Querying Inventory information");
                string ApiUrl =
                $"https://imse2113g04.imse.hku.hk/api/v1/asset/?barcode={EntryBarcode.Text.Trim()}&format=json";
                var resp = await client.GetStringAsync(ApiUrl);
                using (JsonDocument document = JsonDocument.Parse(resp))
                {
                    JsonElement rootElement = document.RootElement;
                    if (rootElement[0].TryGetProperty("name", out var name))
                    {

                        LabelNotFound.Text = "Found";
                    }
                }
                ParseInventoryJSON(resp);
            }
            catch (Exception ex)
            {
                LabelNotFound.Text = "Querying Inventory information error. " + ex.Message;
                Debug.WriteLine(LabelNotFound.Text);
            }
        }

        private async void ScanBarcodeBtn_Clicked(object sender, EventArgs e)
        {
            await Shell.Current.GoToAsync("barcodescanning");
        }

        private async void PDFBtn_Clicked(object sender, EventArgs e)
        {
            //create the string first
            string msg = "name, description, inventory level\n";

            string ApiUrl =
                $"https://imse2113g04.imse.hku.hk/api/v1/asset/?barcode={EntryBarcode.Text.Trim()}&format=json";
            var resp = await client.GetStringAsync(ApiUrl);

            using (JsonDocument document = JsonDocument.Parse(resp))
            {
                JsonElement rootElement = document.RootElement;
                for (int i = 0; i < rootElement.GetArrayLength(); i++)
                {
                    if (rootElement[i].TryGetProperty("name", out var name))
                    {
                        msg += name.ToString();
                        msg += ", ";
                    }

                    if (rootElement[i].TryGetProperty("description", out var description))
                    {
                        msg += description.ToString();
                        msg += ", ";
                    }

                    if (rootElement[i].TryGetProperty("inventory_number", out var num))
                    {
                        msg += num.ToString();
                        msg += "\n";
                    }
                }
            }
            // Creating the stream
            using var stream = new MemoryStream(Encoding.Default.GetBytes(msg));
            // Calling  the SaveAsync method
            var filesaverResult = await filesaver.SaveAsync("Inventory.csv", stream, cancellationTokenSource.Token);
            await Show_Toast($"The file was saved successfully to location: {filesaverResult.FilePath}");
        }
    }

}
