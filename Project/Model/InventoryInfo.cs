using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace Project.Model
{
    // Root myDeserializedClass = JsonConvert.DeserializeObject<List<Root>>(myJsonResponse);
    public class Inventory
    {
        public string name { get; set; }
        public string description { get; set; }
        public string itemType { get; set; }
        public string barcode { get; set; }
        public string barcode_image { get; set; }
        public int inventory_number { get; set; }

    }

}

