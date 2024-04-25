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

@assembly_image_cache = dso_local local_unnamed_addr global [146 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [292 x i32] [
	i32 21928018, ; 0: Project => 0x14e9852 => 89
	i32 38948123, ; 1: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 53
	i32 42244203, ; 3: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 4: System.Threading.Thread => 0x28aa24d => 134
	i32 67008169, ; 5: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 6: Microsoft.Maui.Graphics.dll => 0x44bb714 => 52
	i32 83839681, ; 7: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 8: System.Runtime.InteropServices => 0x6ffddbc => 124
	i32 136584136, ; 9: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 10: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 64
	i32 172961045, ; 12: Syncfusion.Maui.Core.dll => 0xa4f2d15 => 55
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 82
	i32 205061960, ; 14: System.ComponentModel => 0xc38ff48 => 98
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 62
	i32 230752869, ; 16: Microsoft.CSharp.dll => 0xdc10265 => 90
	i32 246610117, ; 17: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 122
	i32 317674968, ; 18: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 59
	i32 321963286, ; 20: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 71
	i32 379916513, ; 22: System.Threading.Thread.dll => 0x16a510e1 => 134
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 111
	i32 395744057, ; 24: _Microsoft.Android.Resource.Designer => 0x17969339 => 35
	i32 405727496, ; 25: Project.dll => 0x182ee908 => 89
	i32 409257351, ; 26: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 95
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 70
	i32 456227837, ; 29: System.Web.HttpUtility.dll => 0x1b317bfd => 136
	i32 456681651, ; 30: Syncfusion.Maui.GridCommon.dll => 0x1b3868b3 => 57
	i32 459347974, ; 31: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 128
	i32 469710990, ; 32: System.dll => 0x1bff388e => 140
	i32 489220957, ; 33: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 34: System.ObjectModel => 0x1dbae811 => 117
	i32 513247710, ; 35: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 46
	i32 530272170, ; 36: System.Linq.Queryable => 0x1f9b4faa => 109
	i32 538707440, ; 37: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 38: Microsoft.Extensions.Logging => 0x20216150 => 43
	i32 597488923, ; 39: CommunityToolkit.Maui => 0x239cf51b => 37
	i32 627609679, ; 40: Xamarin.AndroidX.CustomView => 0x2568904f => 68
	i32 627931235, ; 41: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 42: System.Collections.Concurrent => 0x2814a96c => 91
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 137
	i32 722857257, ; 44: System.Runtime.Loader.dll => 0x2b15ed29 => 125
	i32 759454413, ; 45: System.Net.Requests => 0x2d445acd => 115
	i32 775507847, ; 46: System.IO.Compression => 0x2e394f87 => 107
	i32 777317022, ; 47: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 48: Microsoft.Extensions.Options => 0x2f0980eb => 45
	i32 804715423, ; 49: System.Data.Common => 0x2ff6fb9f => 100
	i32 823281589, ; 50: System.Private.Uri.dll => 0x311247b5 => 118
	i32 830298997, ; 51: System.IO.Compression.Brotli => 0x317d5b75 => 106
	i32 865465478, ; 52: zxing.dll => 0x3395f486 => 88
	i32 869139383, ; 53: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 54: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 55: System.ComponentModel.Primitives.dll => 0x35e25008 => 96
	i32 918734561, ; 56: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 955402788, ; 57: Newtonsoft.Json => 0x38f24a24 => 53
	i32 961460050, ; 58: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 59: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 71
	i32 975874589, ; 60: System.Xml.XDocument => 0x3a2aaa1d => 139
	i32 990727110, ; 61: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 62: System.Collections.dll => 0x3b2c715c => 95
	i32 1012816738, ; 63: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 81
	i32 1019214401, ; 64: System.Drawing => 0x3cbffa41 => 105
	i32 1028951442, ; 65: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1035644815, ; 66: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 60
	i32 1036536393, ; 67: System.Drawing.Primitives.dll => 0x3dc84a49 => 104
	i32 1043950537, ; 68: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 69: System.Linq.Expressions.dll => 0x3e444eb4 => 108
	i32 1052210849, ; 70: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 73
	i32 1082857460, ; 71: System.ComponentModel.TypeConverter => 0x408b17f4 => 97
	i32 1084122840, ; 72: Xamarin.Kotlin.StdLib => 0x409e66d8 => 86
	i32 1098259244, ; 73: System => 0x41761b2c => 140
	i32 1108272742, ; 74: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 75: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 76: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 77: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1175944061, ; 78: Camera.MAUI => 0x46177b7d => 36
	i32 1178241025, ; 79: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 78
	i32 1208641965, ; 80: System.Diagnostics.Process => 0x480a69ad => 102
	i32 1260983243, ; 81: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 82: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 69
	i32 1308624726, ; 83: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 84: System.Linq => 0x4eed2679 => 110
	i32 1336711579, ; 85: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 86: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 87: Xamarin.AndroidX.SavedState => 0x52114ed3 => 81
	i32 1406073936, ; 88: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 65
	i32 1408764838, ; 89: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 127
	i32 1430672901, ; 90: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 91: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 92: System.Collections.Immutable.dll => 0x5718a9ef => 92
	i32 1462112819, ; 93: System.IO.Compression.dll => 0x57261233 => 107
	i32 1469204771, ; 94: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 61
	i32 1470490898, ; 95: Microsoft.Extensions.Primitives => 0x57a5e912 => 46
	i32 1479771757, ; 96: System.Collections.Immutable => 0x5833866d => 92
	i32 1480492111, ; 97: System.IO.Compression.Brotli.dll => 0x583e844f => 106
	i32 1526286932, ; 98: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 99: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 133
	i32 1622152042, ; 100: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 75
	i32 1624863272, ; 101: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 84
	i32 1634654947, ; 102: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 38
	i32 1636350590, ; 103: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 67
	i32 1639515021, ; 104: System.Net.Http.dll => 0x61b9038d => 112
	i32 1639986890, ; 105: System.Text.RegularExpressions => 0x61c036ca => 133
	i32 1657153582, ; 106: System.Runtime => 0x62c6282e => 129
	i32 1658251792, ; 107: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 85
	i32 1677501392, ; 108: System.Net.Primitives.dll => 0x63fca3d0 => 114
	i32 1679769178, ; 109: System.Security.Cryptography => 0x641f3e5a => 130
	i32 1729485958, ; 110: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 63
	i32 1743415430, ; 111: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 112: System.Diagnostics.TraceSource.dll => 0x69239124 => 103
	i32 1766324549, ; 113: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 82
	i32 1770582343, ; 114: Microsoft.Extensions.Logging.dll => 0x6988f147 => 43
	i32 1780572499, ; 115: Mono.Android.Runtime.dll => 0x6a216153 => 144
	i32 1782862114, ; 116: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 117: Xamarin.AndroidX.Fragment => 0x6a96652d => 70
	i32 1793755602, ; 118: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 119: Xamarin.AndroidX.Loader => 0x6bcd3296 => 75
	i32 1813058853, ; 120: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 86
	i32 1813201214, ; 121: Xamarin.Google.Android.Material => 0x6c13413e => 85
	i32 1818569960, ; 122: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 79
	i32 1824175904, ; 123: System.Text.Encoding.Extensions => 0x6cbab720 => 131
	i32 1824722060, ; 124: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 127
	i32 1828688058, ; 125: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 44
	i32 1853025655, ; 126: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 127: System.Linq.Expressions => 0x6ec71a65 => 108
	i32 1870277092, ; 128: System.Reflection.Primitives => 0x6f7a29e4 => 123
	i32 1875935024, ; 129: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 130: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 131: System.Collections.NonGeneric.dll => 0x71dc7c8b => 93
	i32 1939592360, ; 132: System.Private.Xml.Linq => 0x739bd4a8 => 119
	i32 1953182387, ; 133: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 134: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 39
	i32 2003115576, ; 135: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 136: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 73
	i32 2045470958, ; 137: System.Private.Xml => 0x79eb68ee => 120
	i32 2055257422, ; 138: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 72
	i32 2066184531, ; 139: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 140: System.Diagnostics.TraceSource => 0x7b6f419e => 103
	i32 2079903147, ; 141: System.Runtime.dll => 0x7bf8cdab => 129
	i32 2090596640, ; 142: System.Numerics.Vectors => 0x7c9bf920 => 116
	i32 2127167465, ; 143: System.Console => 0x7ec9ffe9 => 99
	i32 2142473426, ; 144: System.Collections.Specialized => 0x7fb38cd2 => 94
	i32 2159891885, ; 145: Microsoft.Maui => 0x80bd55ad => 50
	i32 2169148018, ; 146: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 147: Microsoft.Extensions.Options.dll => 0x820d22b3 => 45
	i32 2192057212, ; 148: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 44
	i32 2193016926, ; 149: System.ObjectModel.dll => 0x82b6c85e => 117
	i32 2201107256, ; 150: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 87
	i32 2201231467, ; 151: System.Net.Http => 0x8334206b => 112
	i32 2207618523, ; 152: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 153: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 40
	i32 2279755925, ; 154: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 80
	i32 2298471582, ; 155: System.Net.Mail => 0x88ffe49e => 113
	i32 2303942373, ; 156: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 157: System.Private.CoreLib.dll => 0x896b7878 => 142
	i32 2353062107, ; 158: System.Net.Primitives => 0x8c40e0db => 114
	i32 2354730003, ; 159: Syncfusion.Licensing => 0x8c5a5413 => 54
	i32 2366048013, ; 160: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 161: System.Xml.ReaderWriter.dll => 0x8d24e767 => 138
	i32 2371007202, ; 162: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 39
	i32 2395872292, ; 163: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 164: System.Web.HttpUtility => 0x8f24faee => 136
	i32 2427813419, ; 165: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 166: System.Console.dll => 0x912896e5 => 99
	i32 2471841756, ; 167: netstandard.dll => 0x93554fdc => 141
	i32 2475788418, ; 168: Java.Interop.dll => 0x93918882 => 143
	i32 2480646305, ; 169: Microsoft.Maui.Controls => 0x93dba8a1 => 48
	i32 2483870181, ; 170: en-US\Syncfusion.Maui.ListView.resources.dll => 0x940cd9e5 => 34
	i32 2503351294, ; 171: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2538310050, ; 172: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 122
	i32 2550873716, ; 173: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 174: Microsoft.CSharp => 0x98ba5a04 => 90
	i32 2576534780, ; 175: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 176: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 131
	i32 2593496499, ; 177: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 178: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 87
	i32 2617129537, ; 179: System.Private.Xml.dll => 0x9bfe3a41 => 120
	i32 2620871830, ; 180: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 67
	i32 2626831493, ; 181: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 182: System.Runtime.Loader => 0x9ec4cf01 => 125
	i32 2664396074, ; 183: System.Xml.XDocument.dll => 0x9ecf752a => 139
	i32 2665622720, ; 184: System.Drawing.Primitives => 0x9ee22cc0 => 104
	i32 2676780864, ; 185: System.Data.Common.dll => 0x9f8c6f40 => 100
	i32 2724373263, ; 186: System.Runtime.Numerics.dll => 0xa262a30f => 126
	i32 2732626843, ; 187: Xamarin.AndroidX.Activity => 0xa2e0939b => 59
	i32 2737747696, ; 188: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 61
	i32 2740698338, ; 189: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2743368605, ; 190: Syncfusion.Maui.DataSource => 0xa3847b9d => 56
	i32 2752995522, ; 191: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 192: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 49
	i32 2764765095, ; 193: Microsoft.Maui.dll => 0xa4caf7a7 => 50
	i32 2778768386, ; 194: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 83
	i32 2785988530, ; 195: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801524761, ; 196: en-US\Syncfusion.Maui.ListView.resources => 0xa6fbe019 => 34
	i32 2801831435, ; 197: Microsoft.Maui.Graphics => 0xa7008e0b => 52
	i32 2810250172, ; 198: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 65
	i32 2853208004, ; 199: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 83
	i32 2861189240, ; 200: Microsoft.Maui.Essentials => 0xaa8a4878 => 51
	i32 2868488919, ; 201: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 38
	i32 2868557005, ; 202: Syncfusion.Licensing.dll => 0xaafab4cd => 54
	i32 2909740682, ; 203: System.Private.CoreLib => 0xad6f1e8a => 142
	i32 2916838712, ; 204: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 84
	i32 2919462931, ; 205: System.Numerics.Vectors.dll => 0xae037813 => 116
	i32 2959614098, ; 206: System.ComponentModel.dll => 0xb0682092 => 98
	i32 2978675010, ; 207: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 69
	i32 3038032645, ; 208: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 35
	i32 3053864966, ; 209: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 210: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 76
	i32 3059408633, ; 211: Mono.Android.Runtime => 0xb65adef9 => 144
	i32 3059793426, ; 212: System.ComponentModel.Primitives => 0xb660be12 => 96
	i32 3140633799, ; 213: Syncfusion.Maui.ListView => 0xbb3244c7 => 58
	i32 3147228406, ; 214: Syncfusion.Maui.Core => 0xbb96e4f6 => 55
	i32 3159123045, ; 215: System.Reflection.Primitives.dll => 0xbc4c6465 => 123
	i32 3170039328, ; 216: Syncfusion.Maui.ListView.dll => 0xbcf2f620 => 58
	i32 3178803400, ; 217: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 77
	i32 3215347189, ; 218: zxing => 0xbfa64df5 => 88
	i32 3220365878, ; 219: System.Threading => 0xbff2e236 => 135
	i32 3258312781, ; 220: Xamarin.AndroidX.CardView => 0xc235e84d => 63
	i32 3265493905, ; 221: System.Linq.Queryable.dll => 0xc2a37b91 => 109
	i32 3305363605, ; 222: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 223: System.Net.Requests.dll => 0xc5b097e4 => 115
	i32 3317135071, ; 224: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 68
	i32 3346324047, ; 225: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 78
	i32 3357674450, ; 226: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 227: System.Text.Json => 0xc82afec1 => 132
	i32 3362522851, ; 228: Xamarin.AndroidX.Core => 0xc86c06e3 => 66
	i32 3366347497, ; 229: Java.Interop => 0xc8a662e9 => 143
	i32 3374999561, ; 230: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 80
	i32 3381016424, ; 231: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3381934622, ; 232: Syncfusion.Maui.GridCommon => 0xc9943a1e => 57
	i32 3428513518, ; 233: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 41
	i32 3430777524, ; 234: netstandard => 0xcc7d82b4 => 141
	i32 3452344032, ; 235: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 47
	i32 3458724246, ; 236: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 237: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 97
	i32 3476120550, ; 238: Mono.Android => 0xcf3163e6 => 145
	i32 3484440000, ; 239: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 240: System.Text.Json.dll => 0xcfbaacae => 132
	i32 3509114376, ; 241: System.Xml.Linq => 0xd128d608 => 137
	i32 3558305335, ; 242: Syncfusion.Maui.DataSource.dll => 0xd4176e37 => 56
	i32 3580758918, ; 243: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 244: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 245: System.Linq.dll => 0xd715a361 => 110
	i32 3641597786, ; 246: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 72
	i32 3643446276, ; 247: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 248: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 77
	i32 3657292374, ; 249: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 40
	i32 3672681054, ; 250: Mono.Android.dll => 0xdae8aa5e => 145
	i32 3682565725, ; 251: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 62
	i32 3724971120, ; 252: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 76
	i32 3748608112, ; 253: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 101
	i32 3751619990, ; 254: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3786282454, ; 255: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 64
	i32 3792276235, ; 256: System.Collections.NonGeneric => 0xe2098b0b => 93
	i32 3800979733, ; 257: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 47
	i32 3802395368, ; 258: System.Collections.Specialized.dll => 0xe2a3f2e8 => 94
	i32 3817368567, ; 259: CommunityToolkit.Maui.dll => 0xe3886bf7 => 37
	i32 3823082795, ; 260: System.Security.Cryptography.dll => 0xe3df9d2b => 130
	i32 3841636137, ; 261: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3844307129, ; 262: System.Net.Mail.dll => 0xe52378b9 => 113
	i32 3849253459, ; 263: System.Runtime.InteropServices.dll => 0xe56ef253 => 124
	i32 3896106733, ; 264: System.Collections.Concurrent.dll => 0xe839deed => 91
	i32 3896760992, ; 265: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 66
	i32 3920221145, ; 266: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 267: System.Xml.ReaderWriter => 0xea213423 => 138
	i32 3931092270, ; 268: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 79
	i32 3955647286, ; 269: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 60
	i32 4003436829, ; 270: System.Diagnostics.Process.dll => 0xee9f991d => 102
	i32 4025784931, ; 271: System.Memory => 0xeff49a63 => 111
	i32 4046471985, ; 272: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 49
	i32 4054681211, ; 273: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 121
	i32 4068434129, ; 274: System.Private.Xml.Linq.dll => 0xf27f60d1 => 119
	i32 4073602200, ; 275: System.Threading.dll => 0xf2ce3c98 => 135
	i32 4091086043, ; 276: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 277: Microsoft.Maui.Essentials.dll => 0xf40add04 => 51
	i32 4099507663, ; 278: System.Drawing.dll => 0xf45985cf => 105
	i32 4100113165, ; 279: System.Private.Uri => 0xf462c30d => 118
	i32 4103439459, ; 280: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 281: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 41
	i32 4142654081, ; 282: Camera.MAUI.dll => 0xf6ebe281 => 36
	i32 4147896353, ; 283: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 121
	i32 4150914736, ; 284: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 285: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 128
	i32 4182413190, ; 286: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 74
	i32 4213026141, ; 287: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 101
	i32 4249188766, ; 288: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 289: Microsoft.Maui.Controls.dll => 0xfea12dee => 48
	i32 4274976490, ; 290: System.Runtime.Numerics => 0xfecef6ea => 126
	i32 4292120959 ; 291: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 74
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [292 x i32] [
	i32 89, ; 0
	i32 0, ; 1
	i32 53, ; 2
	i32 9, ; 3
	i32 134, ; 4
	i32 33, ; 5
	i32 52, ; 6
	i32 17, ; 7
	i32 124, ; 8
	i32 32, ; 9
	i32 25, ; 10
	i32 64, ; 11
	i32 55, ; 12
	i32 82, ; 13
	i32 98, ; 14
	i32 62, ; 15
	i32 90, ; 16
	i32 122, ; 17
	i32 30, ; 18
	i32 59, ; 19
	i32 8, ; 20
	i32 71, ; 21
	i32 134, ; 22
	i32 111, ; 23
	i32 35, ; 24
	i32 89, ; 25
	i32 28, ; 26
	i32 95, ; 27
	i32 70, ; 28
	i32 136, ; 29
	i32 57, ; 30
	i32 128, ; 31
	i32 140, ; 32
	i32 6, ; 33
	i32 117, ; 34
	i32 46, ; 35
	i32 109, ; 36
	i32 27, ; 37
	i32 43, ; 38
	i32 37, ; 39
	i32 68, ; 40
	i32 19, ; 41
	i32 91, ; 42
	i32 137, ; 43
	i32 125, ; 44
	i32 115, ; 45
	i32 107, ; 46
	i32 25, ; 47
	i32 45, ; 48
	i32 100, ; 49
	i32 118, ; 50
	i32 106, ; 51
	i32 88, ; 52
	i32 10, ; 53
	i32 24, ; 54
	i32 96, ; 55
	i32 21, ; 56
	i32 53, ; 57
	i32 14, ; 58
	i32 71, ; 59
	i32 139, ; 60
	i32 23, ; 61
	i32 95, ; 62
	i32 81, ; 63
	i32 105, ; 64
	i32 42, ; 65
	i32 60, ; 66
	i32 104, ; 67
	i32 4, ; 68
	i32 108, ; 69
	i32 73, ; 70
	i32 97, ; 71
	i32 86, ; 72
	i32 140, ; 73
	i32 26, ; 74
	i32 20, ; 75
	i32 16, ; 76
	i32 22, ; 77
	i32 36, ; 78
	i32 78, ; 79
	i32 102, ; 80
	i32 2, ; 81
	i32 69, ; 82
	i32 11, ; 83
	i32 110, ; 84
	i32 31, ; 85
	i32 32, ; 86
	i32 81, ; 87
	i32 65, ; 88
	i32 127, ; 89
	i32 0, ; 90
	i32 6, ; 91
	i32 92, ; 92
	i32 107, ; 93
	i32 61, ; 94
	i32 46, ; 95
	i32 92, ; 96
	i32 106, ; 97
	i32 30, ; 98
	i32 133, ; 99
	i32 75, ; 100
	i32 84, ; 101
	i32 38, ; 102
	i32 67, ; 103
	i32 112, ; 104
	i32 133, ; 105
	i32 129, ; 106
	i32 85, ; 107
	i32 114, ; 108
	i32 130, ; 109
	i32 63, ; 110
	i32 1, ; 111
	i32 103, ; 112
	i32 82, ; 113
	i32 43, ; 114
	i32 144, ; 115
	i32 17, ; 116
	i32 70, ; 117
	i32 9, ; 118
	i32 75, ; 119
	i32 86, ; 120
	i32 85, ; 121
	i32 79, ; 122
	i32 131, ; 123
	i32 127, ; 124
	i32 44, ; 125
	i32 26, ; 126
	i32 108, ; 127
	i32 123, ; 128
	i32 8, ; 129
	i32 2, ; 130
	i32 93, ; 131
	i32 119, ; 132
	i32 13, ; 133
	i32 39, ; 134
	i32 5, ; 135
	i32 73, ; 136
	i32 120, ; 137
	i32 72, ; 138
	i32 4, ; 139
	i32 103, ; 140
	i32 129, ; 141
	i32 116, ; 142
	i32 99, ; 143
	i32 94, ; 144
	i32 50, ; 145
	i32 12, ; 146
	i32 45, ; 147
	i32 44, ; 148
	i32 117, ; 149
	i32 87, ; 150
	i32 112, ; 151
	i32 14, ; 152
	i32 40, ; 153
	i32 80, ; 154
	i32 113, ; 155
	i32 18, ; 156
	i32 142, ; 157
	i32 114, ; 158
	i32 54, ; 159
	i32 12, ; 160
	i32 138, ; 161
	i32 39, ; 162
	i32 13, ; 163
	i32 136, ; 164
	i32 10, ; 165
	i32 99, ; 166
	i32 141, ; 167
	i32 143, ; 168
	i32 48, ; 169
	i32 34, ; 170
	i32 16, ; 171
	i32 122, ; 172
	i32 11, ; 173
	i32 90, ; 174
	i32 15, ; 175
	i32 131, ; 176
	i32 20, ; 177
	i32 87, ; 178
	i32 120, ; 179
	i32 67, ; 180
	i32 15, ; 181
	i32 125, ; 182
	i32 139, ; 183
	i32 104, ; 184
	i32 100, ; 185
	i32 126, ; 186
	i32 59, ; 187
	i32 61, ; 188
	i32 1, ; 189
	i32 56, ; 190
	i32 21, ; 191
	i32 49, ; 192
	i32 50, ; 193
	i32 83, ; 194
	i32 27, ; 195
	i32 34, ; 196
	i32 52, ; 197
	i32 65, ; 198
	i32 83, ; 199
	i32 51, ; 200
	i32 38, ; 201
	i32 54, ; 202
	i32 142, ; 203
	i32 84, ; 204
	i32 116, ; 205
	i32 98, ; 206
	i32 69, ; 207
	i32 35, ; 208
	i32 7, ; 209
	i32 76, ; 210
	i32 144, ; 211
	i32 96, ; 212
	i32 58, ; 213
	i32 55, ; 214
	i32 123, ; 215
	i32 58, ; 216
	i32 77, ; 217
	i32 88, ; 218
	i32 135, ; 219
	i32 63, ; 220
	i32 109, ; 221
	i32 7, ; 222
	i32 115, ; 223
	i32 68, ; 224
	i32 78, ; 225
	i32 24, ; 226
	i32 132, ; 227
	i32 66, ; 228
	i32 143, ; 229
	i32 80, ; 230
	i32 3, ; 231
	i32 57, ; 232
	i32 41, ; 233
	i32 141, ; 234
	i32 47, ; 235
	i32 22, ; 236
	i32 97, ; 237
	i32 145, ; 238
	i32 23, ; 239
	i32 132, ; 240
	i32 137, ; 241
	i32 56, ; 242
	i32 31, ; 243
	i32 33, ; 244
	i32 110, ; 245
	i32 72, ; 246
	i32 28, ; 247
	i32 77, ; 248
	i32 40, ; 249
	i32 145, ; 250
	i32 62, ; 251
	i32 76, ; 252
	i32 101, ; 253
	i32 3, ; 254
	i32 64, ; 255
	i32 93, ; 256
	i32 47, ; 257
	i32 94, ; 258
	i32 37, ; 259
	i32 130, ; 260
	i32 42, ; 261
	i32 113, ; 262
	i32 124, ; 263
	i32 91, ; 264
	i32 66, ; 265
	i32 19, ; 266
	i32 138, ; 267
	i32 79, ; 268
	i32 60, ; 269
	i32 102, ; 270
	i32 111, ; 271
	i32 49, ; 272
	i32 121, ; 273
	i32 119, ; 274
	i32 135, ; 275
	i32 5, ; 276
	i32 51, ; 277
	i32 105, ; 278
	i32 118, ; 279
	i32 29, ; 280
	i32 41, ; 281
	i32 36, ; 282
	i32 121, ; 283
	i32 29, ; 284
	i32 128, ; 285
	i32 74, ; 286
	i32 101, ; 287
	i32 18, ; 288
	i32 48, ; 289
	i32 126, ; 290
	i32 74 ; 291
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
