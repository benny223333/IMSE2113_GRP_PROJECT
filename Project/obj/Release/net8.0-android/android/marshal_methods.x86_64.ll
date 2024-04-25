; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [146 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [292 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 46
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 145
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 51
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 108
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 64
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 81
	i64 560278790331054453, ; 6: System.Reflection.Primitives => 0x7c6829760de3975 => 123
	i64 750875890346172408, ; 7: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 134
	i64 799765834175365804, ; 8: System.ComponentModel.dll => 0xb1956c9f18442ac => 98
	i64 805302231655005164, ; 9: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 12
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 69
	i64 1010599046655515943, ; 11: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 123
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 85
	i64 1268860745194512059, ; 13: System.Drawing.dll => 0x119be62002c19ebb => 105
	i64 1369545283391376210, ; 14: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 77
	i64 1476839205573959279, ; 15: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 114
	i64 1486715745332614827, ; 16: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 48
	i64 1513467482682125403, ; 17: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 144
	i64 1537168428375924959, ; 18: System.Threading.Thread.dll => 0x15551e8a954ae0df => 134
	i64 1624659445732251991, ; 19: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 61
	i64 1628611045998245443, ; 20: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 74
	i64 1731380447121279447, ; 21: Newtonsoft.Json => 0x18071957e9b889d7 => 53
	i64 1735388228521408345, ; 22: System.Net.Mail.dll => 0x181556663c69b759 => 113
	i64 1743969030606105336, ; 23: System.Memory.dll => 0x1833d297e88f2af8 => 111
	i64 1767386781656293639, ; 24: System.Private.Uri.dll => 0x188704e9f5582107 => 118
	i64 1795316252682057001, ; 25: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 60
	i64 1835311033149317475, ; 26: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 27: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 81
	i64 1875417405349196092, ; 28: System.Drawing.Primitives => 0x1a06d2319b6c713c => 104
	i64 1881198190668717030, ; 29: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 30: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 49
	i64 1981742497975770890, ; 31: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 73
	i64 2102659300918482391, ; 32: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 104
	i64 2133195048986300728, ; 33: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 53
	i64 2165725771938924357, ; 34: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 62
	i64 2262844636196693701, ; 35: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 69
	i64 2287834202362508563, ; 36: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 91
	i64 2329709569556905518, ; 37: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 72
	i64 2470498323731680442, ; 38: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 65
	i64 2497223385847772520, ; 39: System.Runtime => 0x22a7eb7046413568 => 129
	i64 2547086958574651984, ; 40: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 59
	i64 2602673633151553063, ; 41: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2656907746661064104, ; 42: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 41
	i64 2662981627730767622, ; 43: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 44: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 45: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 85
	i64 3289520064315143713, ; 46: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 71
	i64 3311221304742556517, ; 47: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 116
	i64 3325875462027654285, ; 48: System.Runtime.Numerics => 0x2e27e21c8958b48d => 126
	i64 3344514922410554693, ; 49: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 87
	i64 3429672777697402584, ; 50: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 51
	i64 3494946837667399002, ; 51: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 39
	i64 3522470458906976663, ; 52: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 82
	i64 3551103847008531295, ; 53: System.Private.CoreLib.dll => 0x31480e226177735f => 142
	i64 3567343442040498961, ; 54: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 55: System.Runtime.dll => 0x319037675df7e556 => 129
	i64 3638003163729360188, ; 56: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 40
	i64 3647754201059316852, ; 57: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 138
	i64 3655542548057982301, ; 58: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 39
	i64 3716579019761409177, ; 59: netstandard.dll => 0x3393f0ed5c8c5c99 => 141
	i64 3727469159507183293, ; 60: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 80
	i64 3869221888984012293, ; 61: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 43
	i64 3890352374528606784, ; 62: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 49
	i64 3933965368022646939, ; 63: System.Net.Requests => 0x369840a8bfadc09b => 115
	i64 3966267475168208030, ; 64: System.Memory => 0x370b03412596249e => 111
	i64 4009997192427317104, ; 65: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 128
	i64 4070326265757318011, ; 66: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 3
	i64 4073500526318903918, ; 67: System.Private.Xml.dll => 0x3887fb25779ae26e => 120
	i64 4073631083018132676, ; 68: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 47
	i64 4120493066591692148, ; 69: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 70: System.ComponentModel => 0x39a7562737acb67e => 98
	i64 4187479170553454871, ; 71: System.Linq.Expressions => 0x3a1cea1e912fa117 => 108
	i64 4205801962323029395, ; 72: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 97
	i64 4360412976914417659, ; 73: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 28
	i64 4477672992252076438, ; 74: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 136
	i64 4528662779432222825, ; 75: en-US\Syncfusion.Maui.ListView.resources => 0x3ed90acdd3974069 => 34
	i64 4794310189461587505, ; 76: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 59
	i64 4795410492532947900, ; 77: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 82
	i64 4809057822547766521, ; 78: System.Drawing => 0x42bd349c3145ecf9 => 105
	i64 4853321196694829351, ; 79: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 125
	i64 4871824391508510238, ; 80: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 18
	i64 4953714692329509532, ; 81: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 26
	i64 5103417709280584325, ; 82: System.Collections.Specialized => 0x46d2fb5e161b6285 => 94
	i64 5182934613077526976, ; 83: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 94
	i64 5290786973231294105, ; 84: System.Runtime.Loader => 0x496ca6b869b72699 => 125
	i64 5332349484191854038, ; 85: Syncfusion.Maui.Core.dll => 0x4a004f9a977e2dd6 => 55
	i64 5471532531798518949, ; 86: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 87: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 88: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 106
	i64 5573260873512690141, ; 89: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 130
	i64 5692067934154308417, ; 90: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 84
	i64 6200764641006662125, ; 91: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 92: System.Text.Json.dll => 0x565a67a0ffe264a7 => 132
	i64 6284145129771520194, ; 93: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 121
	i64 6300676701234028427, ; 94: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 6
	i64 6357457916754632952, ; 95: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 35
	i64 6401687960814735282, ; 96: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 72
	i64 6471714727257221498, ; 97: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 7
	i64 6478287442656530074, ; 98: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6504860066809920875, ; 99: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 62
	i64 6548213210057960872, ; 100: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 68
	i64 6560151584539558821, ; 101: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 45
	i64 6743165466166707109, ; 102: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6786606130239981554, ; 103: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 103
	i64 6814185388980153342, ; 104: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 139
	i64 6876862101832370452, ; 105: System.Xml.Linq => 0x5f6f85a57d108914 => 137
	i64 6894844156784520562, ; 106: System.Numerics.Vectors => 0x5faf683aead1ad72 => 116
	i64 7083547580668757502, ; 107: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 119
	i64 7270811800166795866, ; 108: System.Linq => 0x64e71ccf51a90a5a => 110
	i64 7377312882064240630, ; 109: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 97
	i64 7488575175965059935, ; 110: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 137
	i64 7489048572193775167, ; 111: System.ObjectModel => 0x67ee71ff6b419e3f => 117
	i64 7526939507201682620, ; 112: Syncfusion.Maui.DataSource.dll => 0x68750f9a349c2cbc => 56
	i64 7592577537120840276, ; 113: System.Diagnostics.Process => 0x695e410af5b2aa54 => 102
	i64 7654504624184590948, ; 114: System.Net.Http => 0x6a3a4366801b8264 => 112
	i64 7694700312542370399, ; 115: System.Net.Mail => 0x6ac9112a7e2cda5f => 113
	i64 7714652370974252055, ; 116: System.Private.CoreLib => 0x6b0ff375198b9c17 => 142
	i64 7735176074855944702, ; 117: Microsoft.CSharp => 0x6b58dda848e391fe => 90
	i64 7735352534559001595, ; 118: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 86
	i64 7742555799473854801, ; 119: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 14
	i64 7836164640616011524, ; 120: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 61
	i64 7975724199463739455, ; 121: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 25
	i64 8064050204834738623, ; 122: System.Collections.dll => 0x6fe942efa61731bf => 95
	i64 8083354569033831015, ; 123: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 71
	i64 8087206902342787202, ; 124: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 101
	i64 8108129031893776750, ; 125: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 16
	i64 8167236081217502503, ; 126: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 143
	i64 8185542183669246576, ; 127: System.Collections => 0x7198e33f4794aa70 => 95
	i64 8246048515196606205, ; 128: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 52
	i64 8264926008854159966, ; 129: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 102
	i64 8368701292315763008, ; 130: System.Security.Cryptography => 0x7423997c6fd56140 => 130
	i64 8386351099740279196, ; 131: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 31
	i64 8400357532724379117, ; 132: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 79
	i64 8410671156615598628, ; 133: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 122
	i64 8518412311883997971, ; 134: System.Collections.Immutable => 0x76377add7c28e313 => 92
	i64 8563666267364444763, ; 135: System.Private.Uri => 0x76d841191140ca5b => 118
	i64 8599632406834268464, ; 136: CommunityToolkit.Maui => 0x7758081c784b4930 => 37
	i64 8626175481042262068, ; 137: Java.Interop => 0x77b654e585b55834 => 143
	i64 8638972117149407195, ; 138: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 90
	i64 8639588376636138208, ; 139: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 78
	i64 8677882282824630478, ; 140: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 141: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 101
	i64 8941376889969657626, ; 142: System.Xml.XDocument => 0x7c1626e87187471a => 139
	i64 9045785047181495996, ; 143: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 144: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 84
	i64 9324707631942237306, ; 145: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 60
	i64 9363564275759486853, ; 146: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 5
	i64 9551379474083066910, ; 147: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 29
	i64 9659729154652888475, ; 148: System.Text.RegularExpressions => 0x860e407c9991dd9b => 133
	i64 9678050649315576968, ; 149: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 65
	i64 9698302840614392355, ; 150: Project.dll => 0x86974b0cbafb9223 => 89
	i64 9702891218465930390, ; 151: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 93
	i64 9773637193738963987, ; 152: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 1
	i64 9808709177481450983, ; 153: Mono.Android.dll => 0x881f890734e555e7 => 145
	i64 9933555792566666578, ; 154: System.Linq.Queryable.dll => 0x89db145cf475c552 => 109
	i64 9956195530459977388, ; 155: Microsoft.Maui => 0x8a2b8315b36616ac => 50
	i64 10038780035334861115, ; 156: System.Net.Http.dll => 0x8b50e941206af13b => 112
	i64 10051358222726253779, ; 157: System.Private.Xml => 0x8b7d990c97ccccd3 => 120
	i64 10092835686693276772, ; 158: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 48
	i64 10143853363526200146, ; 159: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10172042533944518731, ; 160: Syncfusion.Maui.GridCommon.dll => 0x8d2a5aca73ed684b => 57
	i64 10209869394718195525, ; 161: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 19
	i64 10229024438826829339, ; 162: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 68
	i64 10245369515835430794, ; 163: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 122
	i64 10364469296367737616, ; 164: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 121
	i64 10406448008575299332, ; 165: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 87
	i64 10430153318873392755, ; 166: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 66
	i64 10506226065143327199, ; 167: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10512690409504421330, ; 168: Syncfusion.Maui.GridCommon => 0x91e4943a942ab5d2 => 57
	i64 10761706286639228993, ; 169: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 33
	i64 10785150219063592792, ; 170: System.Net.Primitives => 0x95ac8cfb68830758 => 114
	i64 10822644899632537592, ; 171: System.Linq.Queryable => 0x9631c23204ca5ff8 => 109
	i64 10880838204485145808, ; 172: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 37
	i64 11002576679268595294, ; 173: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 44
	i64 11009005086950030778, ; 174: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 50
	i64 11103970607964515343, ; 175: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11156122287428000958, ; 176: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 27
	i64 11157797727133427779, ; 177: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 8
	i64 11162124722117608902, ; 178: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 83
	i64 11220793807500858938, ; 179: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 180: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 45
	i64 11340910727871153756, ; 181: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 67
	i64 11485890710487134646, ; 182: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 124
	i64 11518296021396496455, ; 183: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 184: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 83
	i64 11530571088791430846, ; 185: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 43
	i64 11597940890313164233, ; 186: netstandard => 0xa0f429ca8d1805c9 => 141
	i64 11855031688536399763, ; 187: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 30
	i64 11939416560205642949, ; 188: Camera.MAUI => 0xa5b1541a90793cc5 => 36
	i64 12145679461940342714, ; 189: System.Text.Json => 0xa88e1f1ebcb62fba => 132
	i64 12201331334810686224, ; 190: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 128
	i64 12269460666702402136, ; 191: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 92
	i64 12341818387765915815, ; 192: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 38
	i64 12451044538927396471, ; 193: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 70
	i64 12466513435562512481, ; 194: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 75
	i64 12475113361194491050, ; 195: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 35
	i64 12517810545449516888, ; 196: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 103
	i64 12538491095302438457, ; 197: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 63
	i64 12550732019250633519, ; 198: System.IO.Compression => 0xae2d28465e8e1b2f => 107
	i64 12634831966142587901, ; 199: Project => 0xaf57f0bb22ade3fd => 89
	i64 12700543734426720211, ; 200: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 64
	i64 12708922737231849740, ; 201: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 131
	i64 12843321153144804894, ; 202: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 46
	i64 12989346753972519995, ; 203: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 0
	i64 13005833372463390146, ; 204: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 21
	i64 13066492115845567480, ; 205: Camera.MAUI.dll => 0xb5558159a16ad3f8 => 36
	i64 13068258254871114833, ; 206: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 127
	i64 13343850469010654401, ; 207: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 144
	i64 13381594904270902445, ; 208: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 209: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 86
	i64 13492260750531519258, ; 210: Syncfusion.Maui.ListView.dll => 0xbb3e23aae460631a => 58
	i64 13540124433173649601, ; 211: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13572454107664307259, ; 212: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 80
	i64 13717397318615465333, ; 213: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 96
	i64 13881769479078963060, ; 214: System.Console.dll => 0xc0a5f3cade5c6774 => 99
	i64 13959074834287824816, ; 215: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 70
	i64 13970307180132182141, ; 216: Syncfusion.Licensing => 0xc1e0805ccade287d => 54
	i64 14124974489674258913, ; 217: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 63
	i64 14125464355221830302, ; 218: System.Threading.dll => 0xc407bafdbc707a9e => 135
	i64 14254574811015963973, ; 219: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 131
	i64 14349907877893689639, ; 220: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 23
	i64 14353329275190349375, ; 221: Syncfusion.Maui.ListView => 0xc73144edb7ef8e3f => 58
	i64 14461014870687870182, ; 222: System.Net.Requests.dll => 0xc8afd8683afdece6 => 115
	i64 14464374589798375073, ; 223: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14491877563792607819, ; 224: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 32
	i64 14538127318538747197, ; 225: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 54
	i64 14556034074661724008, ; 226: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 38
	i64 14610046442689856844, ; 227: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 2
	i64 14622043554576106986, ; 228: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 127
	i64 14669215534098758659, ; 229: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 41
	i64 14690985099581930927, ; 230: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 136
	i64 14705122255218365489, ; 231: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14735017007120366644, ; 232: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 15
	i64 14744092281598614090, ; 233: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14852515768018889994, ; 234: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 67
	i64 14904040806490515477, ; 235: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 236: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 42
	i64 14987728460634540364, ; 237: System.IO.Compression.dll => 0xcfff1ba06622494c => 107
	i64 15076659072870671916, ; 238: System.ObjectModel.dll => 0xd13b0d8c1620662c => 117
	i64 15111608613780139878, ; 239: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 240: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 106
	i64 15133485256822086103, ; 241: System.Linq.dll => 0xd204f0a9127dd9d7 => 110
	i64 15203009853192377507, ; 242: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 22
	i64 15227001540531775957, ; 243: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 40
	i64 15370334346939861994, ; 244: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 66
	i64 15391712275433856905, ; 245: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 42
	i64 15527772828719725935, ; 246: System.Console => 0xd77dbb1e38cd3d6f => 99
	i64 15536481058354060254, ; 247: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15582737692548360875, ; 248: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 74
	i64 15609085926864131306, ; 249: System.dll => 0xd89e9cf3334914ea => 140
	i64 15661133872274321916, ; 250: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 138
	i64 15745825835632158716, ; 251: Syncfusion.Maui.Core => 0xda84692c2c05e7fc => 55
	i64 15783653065526199428, ; 252: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15928521404965645318, ; 253: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 47
	i64 16056281320585338352, ; 254: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 24
	i64 16154507427712707110, ; 255: System => 0xe03056ea4e39aa26 => 140
	i64 16274182383641215830, ; 256: zxing.dll => 0xe1d982a752dac356 => 88
	i64 16288847719894691167, ; 257: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 258: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 44
	i64 16597385794159382970, ; 259: en-US\Syncfusion.Maui.ListView.resources.dll => 0xe655c2716cfc11ba => 34
	i64 16649148416072044166, ; 260: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 52
	i64 16677317093839702854, ; 261: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 79
	i64 16803648858859583026, ; 262: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 17
	i64 16856067890322379635, ; 263: System.Data.Common.dll => 0xe9ecc87060889373 => 100
	i64 16890310621557459193, ; 264: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 133
	i64 16942731696432749159, ; 265: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 266: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 77
	i64 17008137082415910100, ; 267: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 93
	i64 17031351772568316411, ; 268: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 76
	i64 17040771374769818752, ; 269: zxing => 0xec7cfb478bcccc80 => 88
	i64 17062143951396181894, ; 270: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 96
	i64 17203614576212522419, ; 271: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 20
	i64 17230721278011714856, ; 272: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 119
	i64 17260702271250283638, ; 273: System.Data.Common => 0xef8a5543bba6bc76 => 100
	i64 17310278548634113468, ; 274: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 10
	i64 17342750010158924305, ; 275: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17514990004910432069, ; 276: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 277: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17704177640604968747, ; 278: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 75
	i64 17710060891934109755, ; 279: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 73
	i64 17712670374920797664, ; 280: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 124
	i64 17777860260071588075, ; 281: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 126
	i64 17827813215687577648, ; 282: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 11
	i64 17942426894774770628, ; 283: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 4
	i64 18025913125965088385, ; 284: System.Threading => 0xfa28e87b91334681 => 135
	i64 18121036031235206392, ; 285: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 76
	i64 18164061295166068260, ; 286: Syncfusion.Maui.DataSource => 0xfc13b582b8cb9624 => 56
	i64 18245806341561545090, ; 287: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 91
	i64 18305135509493619199, ; 288: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 78
	i64 18324163916253801303, ; 289: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18342408478508122430, ; 290: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 13
	i64 18358161419737137786 ; 291: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 9
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [292 x i32] [
	i32 46, ; 0
	i32 145, ; 1
	i32 51, ; 2
	i32 108, ; 3
	i32 64, ; 4
	i32 81, ; 5
	i32 123, ; 6
	i32 134, ; 7
	i32 98, ; 8
	i32 12, ; 9
	i32 69, ; 10
	i32 123, ; 11
	i32 85, ; 12
	i32 105, ; 13
	i32 77, ; 14
	i32 114, ; 15
	i32 48, ; 16
	i32 144, ; 17
	i32 134, ; 18
	i32 61, ; 19
	i32 74, ; 20
	i32 53, ; 21
	i32 113, ; 22
	i32 111, ; 23
	i32 118, ; 24
	i32 60, ; 25
	i32 6, ; 26
	i32 81, ; 27
	i32 104, ; 28
	i32 28, ; 29
	i32 49, ; 30
	i32 73, ; 31
	i32 104, ; 32
	i32 53, ; 33
	i32 62, ; 34
	i32 69, ; 35
	i32 91, ; 36
	i32 72, ; 37
	i32 65, ; 38
	i32 129, ; 39
	i32 59, ; 40
	i32 27, ; 41
	i32 41, ; 42
	i32 2, ; 43
	i32 7, ; 44
	i32 85, ; 45
	i32 71, ; 46
	i32 116, ; 47
	i32 126, ; 48
	i32 87, ; 49
	i32 51, ; 50
	i32 39, ; 51
	i32 82, ; 52
	i32 142, ; 53
	i32 22, ; 54
	i32 129, ; 55
	i32 40, ; 56
	i32 138, ; 57
	i32 39, ; 58
	i32 141, ; 59
	i32 80, ; 60
	i32 43, ; 61
	i32 49, ; 62
	i32 115, ; 63
	i32 111, ; 64
	i32 128, ; 65
	i32 3, ; 66
	i32 120, ; 67
	i32 47, ; 68
	i32 33, ; 69
	i32 98, ; 70
	i32 108, ; 71
	i32 97, ; 72
	i32 28, ; 73
	i32 136, ; 74
	i32 34, ; 75
	i32 59, ; 76
	i32 82, ; 77
	i32 105, ; 78
	i32 125, ; 79
	i32 18, ; 80
	i32 26, ; 81
	i32 94, ; 82
	i32 94, ; 83
	i32 125, ; 84
	i32 55, ; 85
	i32 26, ; 86
	i32 29, ; 87
	i32 106, ; 88
	i32 130, ; 89
	i32 84, ; 90
	i32 23, ; 91
	i32 132, ; 92
	i32 121, ; 93
	i32 6, ; 94
	i32 35, ; 95
	i32 72, ; 96
	i32 7, ; 97
	i32 11, ; 98
	i32 62, ; 99
	i32 68, ; 100
	i32 45, ; 101
	i32 19, ; 102
	i32 103, ; 103
	i32 139, ; 104
	i32 137, ; 105
	i32 116, ; 106
	i32 119, ; 107
	i32 110, ; 108
	i32 97, ; 109
	i32 137, ; 110
	i32 117, ; 111
	i32 56, ; 112
	i32 102, ; 113
	i32 112, ; 114
	i32 113, ; 115
	i32 142, ; 116
	i32 90, ; 117
	i32 86, ; 118
	i32 14, ; 119
	i32 61, ; 120
	i32 25, ; 121
	i32 95, ; 122
	i32 71, ; 123
	i32 101, ; 124
	i32 16, ; 125
	i32 143, ; 126
	i32 95, ; 127
	i32 52, ; 128
	i32 102, ; 129
	i32 130, ; 130
	i32 31, ; 131
	i32 79, ; 132
	i32 122, ; 133
	i32 92, ; 134
	i32 118, ; 135
	i32 37, ; 136
	i32 143, ; 137
	i32 90, ; 138
	i32 78, ; 139
	i32 21, ; 140
	i32 101, ; 141
	i32 139, ; 142
	i32 31, ; 143
	i32 84, ; 144
	i32 60, ; 145
	i32 5, ; 146
	i32 29, ; 147
	i32 133, ; 148
	i32 65, ; 149
	i32 89, ; 150
	i32 93, ; 151
	i32 1, ; 152
	i32 145, ; 153
	i32 109, ; 154
	i32 50, ; 155
	i32 112, ; 156
	i32 120, ; 157
	i32 48, ; 158
	i32 3, ; 159
	i32 57, ; 160
	i32 19, ; 161
	i32 68, ; 162
	i32 122, ; 163
	i32 121, ; 164
	i32 87, ; 165
	i32 66, ; 166
	i32 1, ; 167
	i32 57, ; 168
	i32 33, ; 169
	i32 114, ; 170
	i32 109, ; 171
	i32 37, ; 172
	i32 44, ; 173
	i32 50, ; 174
	i32 12, ; 175
	i32 27, ; 176
	i32 8, ; 177
	i32 83, ; 178
	i32 15, ; 179
	i32 45, ; 180
	i32 67, ; 181
	i32 124, ; 182
	i32 13, ; 183
	i32 83, ; 184
	i32 43, ; 185
	i32 141, ; 186
	i32 30, ; 187
	i32 36, ; 188
	i32 132, ; 189
	i32 128, ; 190
	i32 92, ; 191
	i32 38, ; 192
	i32 70, ; 193
	i32 75, ; 194
	i32 35, ; 195
	i32 103, ; 196
	i32 63, ; 197
	i32 107, ; 198
	i32 89, ; 199
	i32 64, ; 200
	i32 131, ; 201
	i32 46, ; 202
	i32 0, ; 203
	i32 21, ; 204
	i32 36, ; 205
	i32 127, ; 206
	i32 144, ; 207
	i32 9, ; 208
	i32 86, ; 209
	i32 58, ; 210
	i32 30, ; 211
	i32 80, ; 212
	i32 96, ; 213
	i32 99, ; 214
	i32 70, ; 215
	i32 54, ; 216
	i32 63, ; 217
	i32 135, ; 218
	i32 131, ; 219
	i32 23, ; 220
	i32 58, ; 221
	i32 115, ; 222
	i32 24, ; 223
	i32 32, ; 224
	i32 54, ; 225
	i32 38, ; 226
	i32 2, ; 227
	i32 127, ; 228
	i32 41, ; 229
	i32 136, ; 230
	i32 16, ; 231
	i32 15, ; 232
	i32 32, ; 233
	i32 67, ; 234
	i32 0, ; 235
	i32 42, ; 236
	i32 107, ; 237
	i32 117, ; 238
	i32 17, ; 239
	i32 106, ; 240
	i32 110, ; 241
	i32 22, ; 242
	i32 40, ; 243
	i32 66, ; 244
	i32 42, ; 245
	i32 99, ; 246
	i32 4, ; 247
	i32 74, ; 248
	i32 140, ; 249
	i32 138, ; 250
	i32 55, ; 251
	i32 5, ; 252
	i32 47, ; 253
	i32 24, ; 254
	i32 140, ; 255
	i32 88, ; 256
	i32 18, ; 257
	i32 44, ; 258
	i32 34, ; 259
	i32 52, ; 260
	i32 79, ; 261
	i32 17, ; 262
	i32 100, ; 263
	i32 133, ; 264
	i32 25, ; 265
	i32 77, ; 266
	i32 93, ; 267
	i32 76, ; 268
	i32 88, ; 269
	i32 96, ; 270
	i32 20, ; 271
	i32 119, ; 272
	i32 100, ; 273
	i32 10, ; 274
	i32 10, ; 275
	i32 8, ; 276
	i32 20, ; 277
	i32 75, ; 278
	i32 73, ; 279
	i32 124, ; 280
	i32 126, ; 281
	i32 11, ; 282
	i32 4, ; 283
	i32 135, ; 284
	i32 76, ; 285
	i32 56, ; 286
	i32 91, ; 287
	i32 78, ; 288
	i32 14, ; 289
	i32 13, ; 290
	i32 9 ; 291
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
