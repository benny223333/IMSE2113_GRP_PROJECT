; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [126 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [252 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 82
	i32 38948123, ; 1: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 40744412, ; 2: Xamarin.AndroidX.Camera.Lifecycle.dll => 0x26db5dc => 57
	i32 42244203, ; 3: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 4: System.Threading.Thread => 0x28aa24d => 117
	i32 67008169, ; 5: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 6: Microsoft.Maui.Graphics.dll => 0x44bb714 => 51
	i32 83839681, ; 7: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 8: System.Runtime.InteropServices => 0x6ffddbc => 110
	i32 136584136, ; 9: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 10: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 60
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 78
	i32 205061960, ; 13: System.ComponentModel => 0xc38ff48 => 93
	i32 317674968, ; 14: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 52
	i32 321963286, ; 16: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 67
	i32 379916513, ; 18: System.Threading.Thread.dll => 0x16a510e1 => 117
	i32 385762202, ; 19: System.Memory.dll => 0x16fe439a => 101
	i32 395744057, ; 20: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 21: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 22: System.Collections => 0x1a61054f => 90
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 66
	i32 456227837, ; 24: System.Web.HttpUtility.dll => 0x1b317bfd => 119
	i32 469710990, ; 25: System.dll => 0x1bff388e => 121
	i32 489220957, ; 26: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 27: System.ObjectModel => 0x1dbae811 => 107
	i32 513247710, ; 28: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 45
	i32 538707440, ; 29: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 30: Microsoft.Extensions.Logging => 0x20216150 => 42
	i32 597488923, ; 31: CommunityToolkit.Maui => 0x239cf51b => 36
	i32 627609679, ; 32: Xamarin.AndroidX.CustomView => 0x2568904f => 64
	i32 627931235, ; 33: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 34: System.Collections.Concurrent => 0x2814a96c => 87
	i32 722857257, ; 35: System.Runtime.Loader.dll => 0x2b15ed29 => 111
	i32 759454413, ; 36: System.Net.Requests => 0x2d445acd => 105
	i32 775507847, ; 37: System.IO.Compression => 0x2e394f87 => 98
	i32 777317022, ; 38: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 39: Microsoft.Extensions.Options => 0x2f0980eb => 44
	i32 823281589, ; 40: System.Private.Uri.dll => 0x311247b5 => 108
	i32 830298997, ; 41: System.IO.Compression.Brotli => 0x317d5b75 => 97
	i32 865465478, ; 42: zxing.dll => 0x3395f486 => 85
	i32 869139383, ; 43: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 44: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 45: System.ComponentModel.Primitives.dll => 0x35e25008 => 91
	i32 918734561, ; 46: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 928116545, ; 47: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 82
	i32 961460050, ; 48: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 49: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 67
	i32 990727110, ; 50: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 51: System.Collections.dll => 0x3b2c715c => 90
	i32 1012816738, ; 52: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 77
	i32 1028951442, ; 53: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 41
	i32 1035644815, ; 54: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 53
	i32 1043950537, ; 55: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 56: System.Linq.Expressions.dll => 0x3e444eb4 => 99
	i32 1052210849, ; 57: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 69
	i32 1082857460, ; 58: System.ComponentModel.TypeConverter => 0x408b17f4 => 92
	i32 1084122840, ; 59: Xamarin.Kotlin.StdLib => 0x409e66d8 => 83
	i32 1098259244, ; 60: System => 0x41761b2c => 121
	i32 1108272742, ; 61: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 62: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 63: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 64: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1175944061, ; 65: Camera.MAUI => 0x46177b7d => 35
	i32 1178241025, ; 66: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 74
	i32 1260983243, ; 67: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 68: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 65
	i32 1308624726, ; 69: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 70: System.Linq => 0x4eed2679 => 100
	i32 1336711579, ; 71: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 72: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 73: Xamarin.AndroidX.SavedState => 0x52114ed3 => 77
	i32 1406073936, ; 74: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 61
	i32 1430672901, ; 75: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 76: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 77: System.Collections.Immutable.dll => 0x5718a9ef => 88
	i32 1462112819, ; 78: System.IO.Compression.dll => 0x57261233 => 98
	i32 1469204771, ; 79: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 54
	i32 1470490898, ; 80: Microsoft.Extensions.Primitives => 0x57a5e912 => 45
	i32 1479771757, ; 81: System.Collections.Immutable => 0x5833866d => 88
	i32 1480492111, ; 82: System.IO.Compression.Brotli.dll => 0x583e844f => 97
	i32 1526286932, ; 83: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 84: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 116
	i32 1622152042, ; 85: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 71
	i32 1624863272, ; 86: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 80
	i32 1634654947, ; 87: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 37
	i32 1636350590, ; 88: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 63
	i32 1639515021, ; 89: System.Net.Http.dll => 0x61b9038d => 102
	i32 1639986890, ; 90: System.Text.RegularExpressions => 0x61c036ca => 116
	i32 1657153582, ; 91: System.Runtime => 0x62c6282e => 113
	i32 1658251792, ; 92: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 81
	i32 1677501392, ; 93: System.Net.Primitives.dll => 0x63fca3d0 => 104
	i32 1679769178, ; 94: System.Security.Cryptography => 0x641f3e5a => 114
	i32 1729485958, ; 95: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 59
	i32 1743415430, ; 96: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 97: System.Diagnostics.TraceSource.dll => 0x69239124 => 96
	i32 1766324549, ; 98: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 78
	i32 1770582343, ; 99: Microsoft.Extensions.Logging.dll => 0x6988f147 => 42
	i32 1780572499, ; 100: Mono.Android.Runtime.dll => 0x6a216153 => 124
	i32 1782862114, ; 101: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 102: Xamarin.AndroidX.Fragment => 0x6a96652d => 66
	i32 1793755602, ; 103: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 104: Xamarin.AndroidX.Loader => 0x6bcd3296 => 71
	i32 1813058853, ; 105: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 83
	i32 1813201214, ; 106: Xamarin.Google.Android.Material => 0x6c13413e => 81
	i32 1818569960, ; 107: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 75
	i32 1828688058, ; 108: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 43
	i32 1853025655, ; 109: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 110: System.Linq.Expressions => 0x6ec71a65 => 99
	i32 1875935024, ; 111: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 112: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 113: System.Collections.NonGeneric.dll => 0x71dc7c8b => 89
	i32 1953182387, ; 114: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 115: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 38
	i32 2003115576, ; 116: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 117: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 69
	i32 2045470958, ; 118: System.Private.Xml => 0x79eb68ee => 109
	i32 2055257422, ; 119: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 68
	i32 2066184531, ; 120: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 121: System.Diagnostics.TraceSource => 0x7b6f419e => 96
	i32 2079903147, ; 122: System.Runtime.dll => 0x7bf8cdab => 113
	i32 2090596640, ; 123: System.Numerics.Vectors => 0x7c9bf920 => 106
	i32 2127167465, ; 124: System.Console => 0x7ec9ffe9 => 94
	i32 2159891885, ; 125: Microsoft.Maui => 0x80bd55ad => 49
	i32 2169148018, ; 126: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 127: Microsoft.Extensions.Options.dll => 0x820d22b3 => 44
	i32 2192057212, ; 128: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 43
	i32 2193016926, ; 129: System.ObjectModel.dll => 0x82b6c85e => 107
	i32 2201107256, ; 130: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 84
	i32 2201231467, ; 131: System.Net.Http => 0x8334206b => 102
	i32 2207618523, ; 132: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 133: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 39
	i32 2279755925, ; 134: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 76
	i32 2298471582, ; 135: System.Net.Mail => 0x88ffe49e => 103
	i32 2303942373, ; 136: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 137: System.Private.CoreLib.dll => 0x896b7878 => 122
	i32 2353062107, ; 138: System.Net.Primitives => 0x8c40e0db => 104
	i32 2366048013, ; 139: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 140: System.Xml.ReaderWriter.dll => 0x8d24e767 => 120
	i32 2371007202, ; 141: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 38
	i32 2395872292, ; 142: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 143: System.Web.HttpUtility => 0x8f24faee => 119
	i32 2427813419, ; 144: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 145: System.Console.dll => 0x912896e5 => 94
	i32 2475788418, ; 146: Java.Interop.dll => 0x93918882 => 123
	i32 2480646305, ; 147: Microsoft.Maui.Controls => 0x93dba8a1 => 47
	i32 2503351294, ; 148: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2550873716, ; 149: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2576534780, ; 150: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2593496499, ; 151: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 152: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 84
	i32 2617129537, ; 153: System.Private.Xml.dll => 0x9bfe3a41 => 109
	i32 2620871830, ; 154: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 63
	i32 2626831493, ; 155: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 156: System.Runtime.Loader => 0x9ec4cf01 => 111
	i32 2724373263, ; 157: System.Runtime.Numerics.dll => 0xa262a30f => 112
	i32 2732626843, ; 158: Xamarin.AndroidX.Activity => 0xa2e0939b => 52
	i32 2737747696, ; 159: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 54
	i32 2740698338, ; 160: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 161: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 162: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 48
	i32 2764765095, ; 163: Microsoft.Maui.dll => 0xa4caf7a7 => 49
	i32 2778768386, ; 164: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 79
	i32 2785988530, ; 165: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 166: Microsoft.Maui.Graphics => 0xa7008e0b => 51
	i32 2810250172, ; 167: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 61
	i32 2853208004, ; 168: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 79
	i32 2861189240, ; 169: Microsoft.Maui.Essentials => 0xaa8a4878 => 50
	i32 2868488919, ; 170: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 37
	i32 2909740682, ; 171: System.Private.CoreLib => 0xad6f1e8a => 122
	i32 2916838712, ; 172: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 80
	i32 2919462931, ; 173: System.Numerics.Vectors.dll => 0xae037813 => 106
	i32 2959614098, ; 174: System.ComponentModel.dll => 0xb0682092 => 93
	i32 2965157864, ; 175: Xamarin.AndroidX.Camera.View => 0xb0bcb7e8 => 58
	i32 2978675010, ; 176: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 65
	i32 2991449226, ; 177: Xamarin.AndroidX.Camera.Core => 0xb24de48a => 56
	i32 3000842441, ; 178: Xamarin.AndroidX.Camera.View.dll => 0xb2dd38c9 => 58
	i32 3026793313, ; 179: MAUIFoodInformation => 0xb4693361 => 86
	i32 3038032645, ; 180: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3047751430, ; 181: Xamarin.AndroidX.Camera.Core.dll => 0xb5a8ff06 => 56
	i32 3053864966, ; 182: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 183: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 72
	i32 3059408633, ; 184: Mono.Android.Runtime => 0xb65adef9 => 124
	i32 3059793426, ; 185: System.ComponentModel.Primitives => 0xb660be12 => 91
	i32 3178803400, ; 186: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 73
	i32 3215347189, ; 187: zxing => 0xbfa64df5 => 85
	i32 3220365878, ; 188: System.Threading => 0xbff2e236 => 118
	i32 3258312781, ; 189: Xamarin.AndroidX.CardView => 0xc235e84d => 59
	i32 3305363605, ; 190: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 191: System.Net.Requests.dll => 0xc5b097e4 => 105
	i32 3317135071, ; 192: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 64
	i32 3346324047, ; 193: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 74
	i32 3357674450, ; 194: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 195: System.Text.Json => 0xc82afec1 => 115
	i32 3362522851, ; 196: Xamarin.AndroidX.Core => 0xc86c06e3 => 62
	i32 3366347497, ; 197: Java.Interop => 0xc8a662e9 => 123
	i32 3374999561, ; 198: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 76
	i32 3381016424, ; 199: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3413944578, ; 200: Xamarin.AndroidX.Camera.Camera2.dll => 0xcb7ca902 => 55
	i32 3421910702, ; 201: Xamarin.AndroidX.Camera.Camera2 => 0xcbf636ae => 55
	i32 3425164173, ; 202: MAUIFoodInformation.dll => 0xcc27db8d => 86
	i32 3428513518, ; 203: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 40
	i32 3452344032, ; 204: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 46
	i32 3458724246, ; 205: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 206: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 92
	i32 3476120550, ; 207: Mono.Android => 0xcf3163e6 => 125
	i32 3484440000, ; 208: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 209: System.Text.Json.dll => 0xcfbaacae => 115
	i32 3580758918, ; 210: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 211: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 212: System.Linq.dll => 0xd715a361 => 100
	i32 3641597786, ; 213: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 68
	i32 3643446276, ; 214: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 215: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 73
	i32 3657292374, ; 216: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 39
	i32 3672681054, ; 217: Mono.Android.dll => 0xdae8aa5e => 125
	i32 3676461095, ; 218: Xamarin.AndroidX.Camera.Lifecycle => 0xdb225827 => 57
	i32 3724971120, ; 219: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 72
	i32 3748608112, ; 220: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 95
	i32 3751619990, ; 221: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3786282454, ; 222: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 60
	i32 3792276235, ; 223: System.Collections.NonGeneric => 0xe2098b0b => 89
	i32 3800979733, ; 224: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 46
	i32 3817368567, ; 225: CommunityToolkit.Maui.dll => 0xe3886bf7 => 36
	i32 3823082795, ; 226: System.Security.Cryptography.dll => 0xe3df9d2b => 114
	i32 3841636137, ; 227: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 41
	i32 3844307129, ; 228: System.Net.Mail.dll => 0xe52378b9 => 103
	i32 3849253459, ; 229: System.Runtime.InteropServices.dll => 0xe56ef253 => 110
	i32 3896106733, ; 230: System.Collections.Concurrent.dll => 0xe839deed => 87
	i32 3896760992, ; 231: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 62
	i32 3920221145, ; 232: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 233: System.Xml.ReaderWriter => 0xea213423 => 120
	i32 3931092270, ; 234: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 75
	i32 3955647286, ; 235: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 53
	i32 4025784931, ; 236: System.Memory => 0xeff49a63 => 101
	i32 4046471985, ; 237: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 48
	i32 4073602200, ; 238: System.Threading.dll => 0xf2ce3c98 => 118
	i32 4091086043, ; 239: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 240: Microsoft.Maui.Essentials.dll => 0xf40add04 => 50
	i32 4100113165, ; 241: System.Private.Uri => 0xf462c30d => 108
	i32 4103439459, ; 242: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 243: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 40
	i32 4142654081, ; 244: Camera.MAUI.dll => 0xf6ebe281 => 35
	i32 4150914736, ; 245: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 246: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 70
	i32 4213026141, ; 247: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 95
	i32 4249188766, ; 248: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 249: Microsoft.Maui.Controls.dll => 0xfea12dee => 47
	i32 4274976490, ; 250: System.Runtime.Numerics => 0xfecef6ea => 112
	i32 4292120959 ; 251: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 70
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [252 x i32] [
	i32 82, ; 0
	i32 0, ; 1
	i32 57, ; 2
	i32 9, ; 3
	i32 117, ; 4
	i32 33, ; 5
	i32 51, ; 6
	i32 17, ; 7
	i32 110, ; 8
	i32 32, ; 9
	i32 25, ; 10
	i32 60, ; 11
	i32 78, ; 12
	i32 93, ; 13
	i32 30, ; 14
	i32 52, ; 15
	i32 8, ; 16
	i32 67, ; 17
	i32 117, ; 18
	i32 101, ; 19
	i32 34, ; 20
	i32 28, ; 21
	i32 90, ; 22
	i32 66, ; 23
	i32 119, ; 24
	i32 121, ; 25
	i32 6, ; 26
	i32 107, ; 27
	i32 45, ; 28
	i32 27, ; 29
	i32 42, ; 30
	i32 36, ; 31
	i32 64, ; 32
	i32 19, ; 33
	i32 87, ; 34
	i32 111, ; 35
	i32 105, ; 36
	i32 98, ; 37
	i32 25, ; 38
	i32 44, ; 39
	i32 108, ; 40
	i32 97, ; 41
	i32 85, ; 42
	i32 10, ; 43
	i32 24, ; 44
	i32 91, ; 45
	i32 21, ; 46
	i32 82, ; 47
	i32 14, ; 48
	i32 67, ; 49
	i32 23, ; 50
	i32 90, ; 51
	i32 77, ; 52
	i32 41, ; 53
	i32 53, ; 54
	i32 4, ; 55
	i32 99, ; 56
	i32 69, ; 57
	i32 92, ; 58
	i32 83, ; 59
	i32 121, ; 60
	i32 26, ; 61
	i32 20, ; 62
	i32 16, ; 63
	i32 22, ; 64
	i32 35, ; 65
	i32 74, ; 66
	i32 2, ; 67
	i32 65, ; 68
	i32 11, ; 69
	i32 100, ; 70
	i32 31, ; 71
	i32 32, ; 72
	i32 77, ; 73
	i32 61, ; 74
	i32 0, ; 75
	i32 6, ; 76
	i32 88, ; 77
	i32 98, ; 78
	i32 54, ; 79
	i32 45, ; 80
	i32 88, ; 81
	i32 97, ; 82
	i32 30, ; 83
	i32 116, ; 84
	i32 71, ; 85
	i32 80, ; 86
	i32 37, ; 87
	i32 63, ; 88
	i32 102, ; 89
	i32 116, ; 90
	i32 113, ; 91
	i32 81, ; 92
	i32 104, ; 93
	i32 114, ; 94
	i32 59, ; 95
	i32 1, ; 96
	i32 96, ; 97
	i32 78, ; 98
	i32 42, ; 99
	i32 124, ; 100
	i32 17, ; 101
	i32 66, ; 102
	i32 9, ; 103
	i32 71, ; 104
	i32 83, ; 105
	i32 81, ; 106
	i32 75, ; 107
	i32 43, ; 108
	i32 26, ; 109
	i32 99, ; 110
	i32 8, ; 111
	i32 2, ; 112
	i32 89, ; 113
	i32 13, ; 114
	i32 38, ; 115
	i32 5, ; 116
	i32 69, ; 117
	i32 109, ; 118
	i32 68, ; 119
	i32 4, ; 120
	i32 96, ; 121
	i32 113, ; 122
	i32 106, ; 123
	i32 94, ; 124
	i32 49, ; 125
	i32 12, ; 126
	i32 44, ; 127
	i32 43, ; 128
	i32 107, ; 129
	i32 84, ; 130
	i32 102, ; 131
	i32 14, ; 132
	i32 39, ; 133
	i32 76, ; 134
	i32 103, ; 135
	i32 18, ; 136
	i32 122, ; 137
	i32 104, ; 138
	i32 12, ; 139
	i32 120, ; 140
	i32 38, ; 141
	i32 13, ; 142
	i32 119, ; 143
	i32 10, ; 144
	i32 94, ; 145
	i32 123, ; 146
	i32 47, ; 147
	i32 16, ; 148
	i32 11, ; 149
	i32 15, ; 150
	i32 20, ; 151
	i32 84, ; 152
	i32 109, ; 153
	i32 63, ; 154
	i32 15, ; 155
	i32 111, ; 156
	i32 112, ; 157
	i32 52, ; 158
	i32 54, ; 159
	i32 1, ; 160
	i32 21, ; 161
	i32 48, ; 162
	i32 49, ; 163
	i32 79, ; 164
	i32 27, ; 165
	i32 51, ; 166
	i32 61, ; 167
	i32 79, ; 168
	i32 50, ; 169
	i32 37, ; 170
	i32 122, ; 171
	i32 80, ; 172
	i32 106, ; 173
	i32 93, ; 174
	i32 58, ; 175
	i32 65, ; 176
	i32 56, ; 177
	i32 58, ; 178
	i32 86, ; 179
	i32 34, ; 180
	i32 56, ; 181
	i32 7, ; 182
	i32 72, ; 183
	i32 124, ; 184
	i32 91, ; 185
	i32 73, ; 186
	i32 85, ; 187
	i32 118, ; 188
	i32 59, ; 189
	i32 7, ; 190
	i32 105, ; 191
	i32 64, ; 192
	i32 74, ; 193
	i32 24, ; 194
	i32 115, ; 195
	i32 62, ; 196
	i32 123, ; 197
	i32 76, ; 198
	i32 3, ; 199
	i32 55, ; 200
	i32 55, ; 201
	i32 86, ; 202
	i32 40, ; 203
	i32 46, ; 204
	i32 22, ; 205
	i32 92, ; 206
	i32 125, ; 207
	i32 23, ; 208
	i32 115, ; 209
	i32 31, ; 210
	i32 33, ; 211
	i32 100, ; 212
	i32 68, ; 213
	i32 28, ; 214
	i32 73, ; 215
	i32 39, ; 216
	i32 125, ; 217
	i32 57, ; 218
	i32 72, ; 219
	i32 95, ; 220
	i32 3, ; 221
	i32 60, ; 222
	i32 89, ; 223
	i32 46, ; 224
	i32 36, ; 225
	i32 114, ; 226
	i32 41, ; 227
	i32 103, ; 228
	i32 110, ; 229
	i32 87, ; 230
	i32 62, ; 231
	i32 19, ; 232
	i32 120, ; 233
	i32 75, ; 234
	i32 53, ; 235
	i32 101, ; 236
	i32 48, ; 237
	i32 118, ; 238
	i32 5, ; 239
	i32 50, ; 240
	i32 108, ; 241
	i32 29, ; 242
	i32 40, ; 243
	i32 35, ; 244
	i32 29, ; 245
	i32 70, ; 246
	i32 95, ; 247
	i32 18, ; 248
	i32 47, ; 249
	i32 112, ; 250
	i32 70 ; 251
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
