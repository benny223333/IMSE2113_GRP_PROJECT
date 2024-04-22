using Camera.MAUI;

namespace MAUIFoodInformation;

public partial class BarcodeScanning : ContentPage
{
	public BarcodeScanning()
	{
		InitializeComponent();
	}
    private void cameraView_CamerasLoaded(object sender, EventArgs e)
    {
        if (cameraView.Cameras.Count > 0)
        {
            cameraView.Camera = cameraView.Cameras.First();
            MainThread.BeginInvokeOnMainThread(async () =>
            {
                await cameraView.StopCameraAsync();
                await cameraView.StartCameraAsync();
            });
        }
    }

    /**ivate void InitializeBarCodeOptions()
     {
         cameraView.BarCodeOptions = new BarcodeDecodeOptions
         {
             AutoRotate = true,

             PossibleFormats =
             {
                 ZXing.BarcodeFormat.All_1D
             }
         };
     }**/

    private void cameraView_BarcodeDetected(object sender, Camera.MAUI.ZXingHelper.BarcodeEventArgs args)
    {

        Shell.Current.GoToAsync(
            $"..?format={args.Result[0].BarcodeFormat}&barcode={args.Result[0].Text}");
    }
}