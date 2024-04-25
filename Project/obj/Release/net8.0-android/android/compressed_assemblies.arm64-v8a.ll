; ModuleID = 'compressed_assemblies.arm64-v8a.ll'
source_filename = "compressed_assemblies.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.CompressedAssemblies = type {
	i32, ; uint32_t count
	ptr ; CompressedAssemblyDescriptor descriptors
}

%struct.CompressedAssemblyDescriptor = type {
	i32, ; uint32_t uncompressed_file_size
	i8, ; bool loaded
	ptr ; uint8_t data
}

@compressed_assemblies = dso_local local_unnamed_addr global %struct.CompressedAssemblies {
	i32 170, ; uint32_t count (0xaa)
	ptr @compressed_assembly_descriptors; CompressedAssemblyDescriptor* descriptors
}, align 8

@compressed_assembly_descriptors = internal dso_local global [170 x %struct.CompressedAssemblyDescriptor] [
	%struct.CompressedAssemblyDescriptor {
		i32 79872, ; uint32_t uncompressed_file_size (0x13800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_0; uint8_t* data (0x0)
	}, ; 0
	%struct.CompressedAssemblyDescriptor {
		i32 116376, ; uint32_t uncompressed_file_size (0x1c698)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_1; uint8_t* data (0x0)
	}, ; 1
	%struct.CompressedAssemblyDescriptor {
		i32 274064, ; uint32_t uncompressed_file_size (0x42e90)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_2; uint8_t* data (0x0)
	}, ; 2
	%struct.CompressedAssemblyDescriptor {
		i32 151040, ; uint32_t uncompressed_file_size (0x24e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_3; uint8_t* data (0x0)
	}, ; 3
	%struct.CompressedAssemblyDescriptor {
		i32 223232, ; uint32_t uncompressed_file_size (0x36800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_4; uint8_t* data (0x0)
	}, ; 4
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size (0x1400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_5; uint8_t* data (0x0)
	}, ; 5
	%struct.CompressedAssemblyDescriptor {
		i32 12800, ; uint32_t uncompressed_file_size (0x3200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_6; uint8_t* data (0x0)
	}, ; 6
	%struct.CompressedAssemblyDescriptor {
		i32 22016, ; uint32_t uncompressed_file_size (0x5600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_7; uint8_t* data (0x0)
	}, ; 7
	%struct.CompressedAssemblyDescriptor {
		i32 40960, ; uint32_t uncompressed_file_size (0xa000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_8; uint8_t* data (0x0)
	}, ; 8
	%struct.CompressedAssemblyDescriptor {
		i32 16384, ; uint32_t uncompressed_file_size (0x4000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_9; uint8_t* data (0x0)
	}, ; 9
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uint32_t uncompressed_file_size (0x3e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_10; uint8_t* data (0x0)
	}, ; 10
	%struct.CompressedAssemblyDescriptor {
		i32 14848, ; uint32_t uncompressed_file_size (0x3a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_11; uint8_t* data (0x0)
	}, ; 11
	%struct.CompressedAssemblyDescriptor {
		i32 7680, ; uint32_t uncompressed_file_size (0x1e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_12; uint8_t* data (0x0)
	}, ; 12
	%struct.CompressedAssemblyDescriptor {
		i32 55808, ; uint32_t uncompressed_file_size (0xda00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_13; uint8_t* data (0x0)
	}, ; 13
	%struct.CompressedAssemblyDescriptor {
		i32 127920, ; uint32_t uncompressed_file_size (0x1f3b0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_14; uint8_t* data (0x0)
	}, ; 14
	%struct.CompressedAssemblyDescriptor {
		i32 1704384, ; uint32_t uncompressed_file_size (0x1a01c0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_15; uint8_t* data (0x0)
	}, ; 15
	%struct.CompressedAssemblyDescriptor {
		i32 49664, ; uint32_t uncompressed_file_size (0xc200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_16; uint8_t* data (0x0)
	}, ; 16
	%struct.CompressedAssemblyDescriptor {
		i32 205344, ; uint32_t uncompressed_file_size (0x32220)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_17; uint8_t* data (0x0)
	}, ; 17
	%struct.CompressedAssemblyDescriptor {
		i32 656304, ; uint32_t uncompressed_file_size (0xa03b0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_18; uint8_t* data (0x0)
	}, ; 18
	%struct.CompressedAssemblyDescriptor {
		i32 18976, ; uint32_t uncompressed_file_size (0x4a20)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_19; uint8_t* data (0x0)
	}, ; 19
	%struct.CompressedAssemblyDescriptor {
		i32 1860096, ; uint32_t uncompressed_file_size (0x1c6200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_20; uint8_t* data (0x0)
	}, ; 20
	%struct.CompressedAssemblyDescriptor {
		i32 712464, ; uint32_t uncompressed_file_size (0xadf10)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_21; uint8_t* data (0x0)
	}, ; 21
	%struct.CompressedAssemblyDescriptor {
		i32 144896, ; uint32_t uncompressed_file_size (0x23600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_22; uint8_t* data (0x0)
	}, ; 22
	%struct.CompressedAssemblyDescriptor {
		i32 51200, ; uint32_t uncompressed_file_size (0xc800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_23; uint8_t* data (0x0)
	}, ; 23
	%struct.CompressedAssemblyDescriptor {
		i32 1568768, ; uint32_t uncompressed_file_size (0x17f000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_24; uint8_t* data (0x0)
	}, ; 24
	%struct.CompressedAssemblyDescriptor {
		i32 152576, ; uint32_t uncompressed_file_size (0x25400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_25; uint8_t* data (0x0)
	}, ; 25
	%struct.CompressedAssemblyDescriptor {
		i32 146944, ; uint32_t uncompressed_file_size (0x23e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_26; uint8_t* data (0x0)
	}, ; 26
	%struct.CompressedAssemblyDescriptor {
		i32 206848, ; uint32_t uncompressed_file_size (0x32800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_27; uint8_t* data (0x0)
	}, ; 27
	%struct.CompressedAssemblyDescriptor {
		i32 17408, ; uint32_t uncompressed_file_size (0x4400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_28; uint8_t* data (0x0)
	}, ; 28
	%struct.CompressedAssemblyDescriptor {
		i32 11776, ; uint32_t uncompressed_file_size (0x2e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_29; uint8_t* data (0x0)
	}, ; 29
	%struct.CompressedAssemblyDescriptor {
		i32 13312, ; uint32_t uncompressed_file_size (0x3400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_30; uint8_t* data (0x0)
	}, ; 30
	%struct.CompressedAssemblyDescriptor {
		i32 130048, ; uint32_t uncompressed_file_size (0x1fc00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_31; uint8_t* data (0x0)
	}, ; 31
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uint32_t uncompressed_file_size (0x1200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_32; uint8_t* data (0x0)
	}, ; 32
	%struct.CompressedAssemblyDescriptor {
		i32 10752, ; uint32_t uncompressed_file_size (0x2a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_33; uint8_t* data (0x0)
	}, ; 33
	%struct.CompressedAssemblyDescriptor {
		i32 517120, ; uint32_t uncompressed_file_size (0x7e400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_34; uint8_t* data (0x0)
	}, ; 34
	%struct.CompressedAssemblyDescriptor {
		i32 14848, ; uint32_t uncompressed_file_size (0x3a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_35; uint8_t* data (0x0)
	}, ; 35
	%struct.CompressedAssemblyDescriptor {
		i32 25600, ; uint32_t uncompressed_file_size (0x6400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_36; uint8_t* data (0x0)
	}, ; 36
	%struct.CompressedAssemblyDescriptor {
		i32 18944, ; uint32_t uncompressed_file_size (0x4a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_37; uint8_t* data (0x0)
	}, ; 37
	%struct.CompressedAssemblyDescriptor {
		i32 34816, ; uint32_t uncompressed_file_size (0x8800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_38; uint8_t* data (0x0)
	}, ; 38
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uint32_t uncompressed_file_size (0x1000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_39; uint8_t* data (0x0)
	}, ; 39
	%struct.CompressedAssemblyDescriptor {
		i32 19968, ; uint32_t uncompressed_file_size (0x4e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_40; uint8_t* data (0x0)
	}, ; 40
	%struct.CompressedAssemblyDescriptor {
		i32 30208, ; uint32_t uncompressed_file_size (0x7600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_41; uint8_t* data (0x0)
	}, ; 41
	%struct.CompressedAssemblyDescriptor {
		i32 420864, ; uint32_t uncompressed_file_size (0x66c00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_42; uint8_t* data (0x0)
	}, ; 42
	%struct.CompressedAssemblyDescriptor {
		i32 46080, ; uint32_t uncompressed_file_size (0xb400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_43; uint8_t* data (0x0)
	}, ; 43
	%struct.CompressedAssemblyDescriptor {
		i32 11776, ; uint32_t uncompressed_file_size (0x2e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_44; uint8_t* data (0x0)
	}, ; 44
	%struct.CompressedAssemblyDescriptor {
		i32 128000, ; uint32_t uncompressed_file_size (0x1f400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_45; uint8_t* data (0x0)
	}, ; 45
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uint32_t uncompressed_file_size (0x3000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_46; uint8_t* data (0x0)
	}, ; 46
	%struct.CompressedAssemblyDescriptor {
		i32 53760, ; uint32_t uncompressed_file_size (0xd200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_47; uint8_t* data (0x0)
	}, ; 47
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uint32_t uncompressed_file_size (0x1a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_48; uint8_t* data (0x0)
	}, ; 48
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uint32_t uncompressed_file_size (0x1200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_49; uint8_t* data (0x0)
	}, ; 49
	%struct.CompressedAssemblyDescriptor {
		i32 18944, ; uint32_t uncompressed_file_size (0x4a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_50; uint8_t* data (0x0)
	}, ; 50
	%struct.CompressedAssemblyDescriptor {
		i32 69120, ; uint32_t uncompressed_file_size (0x10e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_51; uint8_t* data (0x0)
	}, ; 51
	%struct.CompressedAssemblyDescriptor {
		i32 41472, ; uint32_t uncompressed_file_size (0xa200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_52; uint8_t* data (0x0)
	}, ; 52
	%struct.CompressedAssemblyDescriptor {
		i32 1326080, ; uint32_t uncompressed_file_size (0x143c00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_53; uint8_t* data (0x0)
	}, ; 53
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uint32_t uncompressed_file_size (0x1200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_54; uint8_t* data (0x0)
	}, ; 54
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uint32_t uncompressed_file_size (0x1200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_55; uint8_t* data (0x0)
	}, ; 55
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uint32_t uncompressed_file_size (0x1200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_56; uint8_t* data (0x0)
	}, ; 56
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uint32_t uncompressed_file_size (0x2000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_57; uint8_t* data (0x0)
	}, ; 57
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uint32_t uncompressed_file_size (0x1000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_58; uint8_t* data (0x0)
	}, ; 58
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uint32_t uncompressed_file_size (0x1a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_59; uint8_t* data (0x0)
	}, ; 59
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size (0x1400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_60; uint8_t* data (0x0)
	}, ; 60
	%struct.CompressedAssemblyDescriptor {
		i32 14848, ; uint32_t uncompressed_file_size (0x3a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_61; uint8_t* data (0x0)
	}, ; 61
	%struct.CompressedAssemblyDescriptor {
		i32 13824, ; uint32_t uncompressed_file_size (0x3600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_62; uint8_t* data (0x0)
	}, ; 62
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uint32_t uncompressed_file_size (0x1000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_63; uint8_t* data (0x0)
	}, ; 63
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uint32_t uncompressed_file_size (0x1000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_64; uint8_t* data (0x0)
	}, ; 64
	%struct.CompressedAssemblyDescriptor {
		i32 11264, ; uint32_t uncompressed_file_size (0x2c00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_65; uint8_t* data (0x0)
	}, ; 65
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uint32_t uncompressed_file_size (0x2000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_66; uint8_t* data (0x0)
	}, ; 66
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uint32_t uncompressed_file_size (0x1000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_67; uint8_t* data (0x0)
	}, ; 67
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size (0x1400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_68; uint8_t* data (0x0)
	}, ; 68
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uint32_t uncompressed_file_size (0x1200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_69; uint8_t* data (0x0)
	}, ; 69
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uint32_t uncompressed_file_size (0x1000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_70; uint8_t* data (0x0)
	}, ; 70
	%struct.CompressedAssemblyDescriptor {
		i32 50176, ; uint32_t uncompressed_file_size (0xc400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_71; uint8_t* data (0x0)
	}, ; 71
	%struct.CompressedAssemblyDescriptor {
		i32 14336, ; uint32_t uncompressed_file_size (0x3800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_72; uint8_t* data (0x0)
	}, ; 72
	%struct.CompressedAssemblyDescriptor {
		i32 522240, ; uint32_t uncompressed_file_size (0x7f800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_73; uint8_t* data (0x0)
	}, ; 73
	%struct.CompressedAssemblyDescriptor {
		i32 31232, ; uint32_t uncompressed_file_size (0x7a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_74; uint8_t* data (0x0)
	}, ; 74
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uint32_t uncompressed_file_size (0x3c00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_75; uint8_t* data (0x0)
	}, ; 75
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uint32_t uncompressed_file_size (0x4600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_76; uint8_t* data (0x0)
	}, ; 76
	%struct.CompressedAssemblyDescriptor {
		i32 69120, ; uint32_t uncompressed_file_size (0x10e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_77; uint8_t* data (0x0)
	}, ; 77
	%struct.CompressedAssemblyDescriptor {
		i32 505344, ; uint32_t uncompressed_file_size (0x7b600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_78; uint8_t* data (0x0)
	}, ; 78
	%struct.CompressedAssemblyDescriptor {
		i32 22016, ; uint32_t uncompressed_file_size (0x5600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_79; uint8_t* data (0x0)
	}, ; 79
	%struct.CompressedAssemblyDescriptor {
		i32 7680, ; uint32_t uncompressed_file_size (0x1e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_80; uint8_t* data (0x0)
	}, ; 80
	%struct.CompressedAssemblyDescriptor {
		i32 39936, ; uint32_t uncompressed_file_size (0x9c00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_81; uint8_t* data (0x0)
	}, ; 81
	%struct.CompressedAssemblyDescriptor {
		i32 188928, ; uint32_t uncompressed_file_size (0x2e200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_82; uint8_t* data (0x0)
	}, ; 82
	%struct.CompressedAssemblyDescriptor {
		i32 18944, ; uint32_t uncompressed_file_size (0x4a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_83; uint8_t* data (0x0)
	}, ; 83
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uint32_t uncompressed_file_size (0x3e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_84; uint8_t* data (0x0)
	}, ; 84
	%struct.CompressedAssemblyDescriptor {
		i32 23552, ; uint32_t uncompressed_file_size (0x5c00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_85; uint8_t* data (0x0)
	}, ; 85
	%struct.CompressedAssemblyDescriptor {
		i32 11264, ; uint32_t uncompressed_file_size (0x2c00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_86; uint8_t* data (0x0)
	}, ; 86
	%struct.CompressedAssemblyDescriptor {
		i32 33792, ; uint32_t uncompressed_file_size (0x8400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_87; uint8_t* data (0x0)
	}, ; 87
	%struct.CompressedAssemblyDescriptor {
		i32 80896, ; uint32_t uncompressed_file_size (0x13c00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_88; uint8_t* data (0x0)
	}, ; 88
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uint32_t uncompressed_file_size (0x4200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_89; uint8_t* data (0x0)
	}, ; 89
	%struct.CompressedAssemblyDescriptor {
		i32 51200, ; uint32_t uncompressed_file_size (0xc800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_90; uint8_t* data (0x0)
	}, ; 90
	%struct.CompressedAssemblyDescriptor {
		i32 26624, ; uint32_t uncompressed_file_size (0x6800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_91; uint8_t* data (0x0)
	}, ; 91
	%struct.CompressedAssemblyDescriptor {
		i32 393728, ; uint32_t uncompressed_file_size (0x60200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_92; uint8_t* data (0x0)
	}, ; 92
	%struct.CompressedAssemblyDescriptor {
		i32 10240, ; uint32_t uncompressed_file_size (0x2800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_93; uint8_t* data (0x0)
	}, ; 93
	%struct.CompressedAssemblyDescriptor {
		i32 35328, ; uint32_t uncompressed_file_size (0x8a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_94; uint8_t* data (0x0)
	}, ; 94
	%struct.CompressedAssemblyDescriptor {
		i32 52736, ; uint32_t uncompressed_file_size (0xce00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_95; uint8_t* data (0x0)
	}, ; 95
	%struct.CompressedAssemblyDescriptor {
		i32 27136, ; uint32_t uncompressed_file_size (0x6a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_96; uint8_t* data (0x0)
	}, ; 96
	%struct.CompressedAssemblyDescriptor {
		i32 594432, ; uint32_t uncompressed_file_size (0x91200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_97; uint8_t* data (0x0)
	}, ; 97
	%struct.CompressedAssemblyDescriptor {
		i32 23040, ; uint32_t uncompressed_file_size (0x5a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_98; uint8_t* data (0x0)
	}, ; 98
	%struct.CompressedAssemblyDescriptor {
		i32 14848, ; uint32_t uncompressed_file_size (0x3a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_99; uint8_t* data (0x0)
	}, ; 99
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size (0x1600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_100; uint8_t* data (0x0)
	}, ; 100
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_101; uint8_t* data (0x0)
	}, ; 101
	%struct.CompressedAssemblyDescriptor {
		i32 21504, ; uint32_t uncompressed_file_size (0x5400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_102; uint8_t* data (0x0)
	}, ; 102
	%struct.CompressedAssemblyDescriptor {
		i32 45568, ; uint32_t uncompressed_file_size (0xb200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_103; uint8_t* data (0x0)
	}, ; 103
	%struct.CompressedAssemblyDescriptor {
		i32 28672, ; uint32_t uncompressed_file_size (0x7000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_104; uint8_t* data (0x0)
	}, ; 104
	%struct.CompressedAssemblyDescriptor {
		i32 103936, ; uint32_t uncompressed_file_size (0x19600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_105; uint8_t* data (0x0)
	}, ; 105
	%struct.CompressedAssemblyDescriptor {
		i32 2085376, ; uint32_t uncompressed_file_size (0x1fd200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_106; uint8_t* data (0x0)
	}, ; 106
	%struct.CompressedAssemblyDescriptor {
		i32 86016, ; uint32_t uncompressed_file_size (0x15000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_107; uint8_t* data (0x0)
	}, ; 107
	%struct.CompressedAssemblyDescriptor {
		i32 54784, ; uint32_t uncompressed_file_size (0xd600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_108; uint8_t* data (0x0)
	}, ; 108
	%struct.CompressedAssemblyDescriptor {
		i32 309248, ; uint32_t uncompressed_file_size (0x4b800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_109; uint8_t* data (0x0)
	}, ; 109
	%struct.CompressedAssemblyDescriptor {
		i32 21504, ; uint32_t uncompressed_file_size (0x5400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_110; uint8_t* data (0x0)
	}, ; 110
	%struct.CompressedAssemblyDescriptor {
		i32 45568, ; uint32_t uncompressed_file_size (0xb200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_111; uint8_t* data (0x0)
	}, ; 111
	%struct.CompressedAssemblyDescriptor {
		i32 28160, ; uint32_t uncompressed_file_size (0x6e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_112; uint8_t* data (0x0)
	}, ; 112
	%struct.CompressedAssemblyDescriptor {
		i32 103936, ; uint32_t uncompressed_file_size (0x19600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_113; uint8_t* data (0x0)
	}, ; 113
	%struct.CompressedAssemblyDescriptor {
		i32 2071040, ; uint32_t uncompressed_file_size (0x1f9a00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_114; uint8_t* data (0x0)
	}, ; 114
	%struct.CompressedAssemblyDescriptor {
		i32 85504, ; uint32_t uncompressed_file_size (0x14e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_115; uint8_t* data (0x0)
	}, ; 115
	%struct.CompressedAssemblyDescriptor {
		i32 55296, ; uint32_t uncompressed_file_size (0xd800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_116; uint8_t* data (0x0)
	}, ; 116
	%struct.CompressedAssemblyDescriptor {
		i32 308736, ; uint32_t uncompressed_file_size (0x4b600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_117; uint8_t* data (0x0)
	}, ; 117
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_118; uint8_t* data (0x0)
	}, ; 118
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_119; uint8_t* data (0x0)
	}, ; 119
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_120; uint8_t* data (0x0)
	}, ; 120
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_121; uint8_t* data (0x0)
	}, ; 121
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_122; uint8_t* data (0x0)
	}, ; 122
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uint32_t uncompressed_file_size (0x1000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_123; uint8_t* data (0x0)
	}, ; 123
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_124; uint8_t* data (0x0)
	}, ; 124
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_125; uint8_t* data (0x0)
	}, ; 125
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_126; uint8_t* data (0x0)
	}, ; 126
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_127; uint8_t* data (0x0)
	}, ; 127
	%struct.CompressedAssemblyDescriptor {
		i32 15808, ; uint32_t uncompressed_file_size (0x3dc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_128; uint8_t* data (0x0)
	}, ; 128
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_129; uint8_t* data (0x0)
	}, ; 129
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_130; uint8_t* data (0x0)
	}, ; 130
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_131; uint8_t* data (0x0)
	}, ; 131
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_132; uint8_t* data (0x0)
	}, ; 132
	%struct.CompressedAssemblyDescriptor {
		i32 15792, ; uint32_t uncompressed_file_size (0x3db0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_133; uint8_t* data (0x0)
	}, ; 133
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_134; uint8_t* data (0x0)
	}, ; 134
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_135; uint8_t* data (0x0)
	}, ; 135
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_136; uint8_t* data (0x0)
	}, ; 136
	%struct.CompressedAssemblyDescriptor {
		i32 7168, ; uint32_t uncompressed_file_size (0x1c00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_137; uint8_t* data (0x0)
	}, ; 137
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_138; uint8_t* data (0x0)
	}, ; 138
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_139; uint8_t* data (0x0)
	}, ; 139
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_140; uint8_t* data (0x0)
	}, ; 140
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_141; uint8_t* data (0x0)
	}, ; 141
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_142; uint8_t* data (0x0)
	}, ; 142
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_143; uint8_t* data (0x0)
	}, ; 143
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_144; uint8_t* data (0x0)
	}, ; 144
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_145; uint8_t* data (0x0)
	}, ; 145
	%struct.CompressedAssemblyDescriptor {
		i32 15792, ; uint32_t uncompressed_file_size (0x3db0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_146; uint8_t* data (0x0)
	}, ; 146
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_147; uint8_t* data (0x0)
	}, ; 147
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_148; uint8_t* data (0x0)
	}, ; 148
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_149; uint8_t* data (0x0)
	}, ; 149
	%struct.CompressedAssemblyDescriptor {
		i32 21504, ; uint32_t uncompressed_file_size (0x5400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_150; uint8_t* data (0x0)
	}, ; 150
	%struct.CompressedAssemblyDescriptor {
		i32 45568, ; uint32_t uncompressed_file_size (0xb200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_151; uint8_t* data (0x0)
	}, ; 151
	%struct.CompressedAssemblyDescriptor {
		i32 28160, ; uint32_t uncompressed_file_size (0x6e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_152; uint8_t* data (0x0)
	}, ; 152
	%struct.CompressedAssemblyDescriptor {
		i32 103936, ; uint32_t uncompressed_file_size (0x19600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_153; uint8_t* data (0x0)
	}, ; 153
	%struct.CompressedAssemblyDescriptor {
		i32 2070528, ; uint32_t uncompressed_file_size (0x1f9800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_154; uint8_t* data (0x0)
	}, ; 154
	%struct.CompressedAssemblyDescriptor {
		i32 85504, ; uint32_t uncompressed_file_size (0x14e00)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_155; uint8_t* data (0x0)
	}, ; 155
	%struct.CompressedAssemblyDescriptor {
		i32 55296, ; uint32_t uncompressed_file_size (0xd800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_156; uint8_t* data (0x0)
	}, ; 156
	%struct.CompressedAssemblyDescriptor {
		i32 308736, ; uint32_t uncompressed_file_size (0x4b600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_157; uint8_t* data (0x0)
	}, ; 157
	%struct.CompressedAssemblyDescriptor {
		i32 21504, ; uint32_t uncompressed_file_size (0x5400)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_158; uint8_t* data (0x0)
	}, ; 158
	%struct.CompressedAssemblyDescriptor {
		i32 45568, ; uint32_t uncompressed_file_size (0xb200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_159; uint8_t* data (0x0)
	}, ; 159
	%struct.CompressedAssemblyDescriptor {
		i32 29184, ; uint32_t uncompressed_file_size (0x7200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_160; uint8_t* data (0x0)
	}, ; 160
	%struct.CompressedAssemblyDescriptor {
		i32 104448, ; uint32_t uncompressed_file_size (0x19800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_161; uint8_t* data (0x0)
	}, ; 161
	%struct.CompressedAssemblyDescriptor {
		i32 2130432, ; uint32_t uncompressed_file_size (0x208200)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_162; uint8_t* data (0x0)
	}, ; 162
	%struct.CompressedAssemblyDescriptor {
		i32 86016, ; uint32_t uncompressed_file_size (0x15000)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_163; uint8_t* data (0x0)
	}, ; 163
	%struct.CompressedAssemblyDescriptor {
		i32 54784, ; uint32_t uncompressed_file_size (0xd600)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_164; uint8_t* data (0x0)
	}, ; 164
	%struct.CompressedAssemblyDescriptor {
		i32 309248, ; uint32_t uncompressed_file_size (0x4b800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_165; uint8_t* data (0x0)
	}, ; 165
	%struct.CompressedAssemblyDescriptor {
		i32 15296, ; uint32_t uncompressed_file_size (0x3bc0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_166; uint8_t* data (0x0)
	}, ; 166
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_167; uint8_t* data (0x0)
	}, ; 167
	%struct.CompressedAssemblyDescriptor {
		i32 15280, ; uint32_t uncompressed_file_size (0x3bb0)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_168; uint8_t* data (0x0)
	}, ; 168
	%struct.CompressedAssemblyDescriptor {
		i32 505856, ; uint32_t uncompressed_file_size (0x7b800)
		i8 0, ; bool loaded
		ptr @__compressedAssemblyData_169; uint8_t* data (0x0)
	} ; 169
], align 8

@__compressedAssemblyData_0 = internal dso_local global [79872 x i8] zeroinitializer, align 1
@__compressedAssemblyData_1 = internal dso_local global [116376 x i8] zeroinitializer, align 1
@__compressedAssemblyData_2 = internal dso_local global [274064 x i8] zeroinitializer, align 1
@__compressedAssemblyData_3 = internal dso_local global [151040 x i8] zeroinitializer, align 1
@__compressedAssemblyData_4 = internal dso_local global [223232 x i8] zeroinitializer, align 1
@__compressedAssemblyData_5 = internal dso_local global [5120 x i8] zeroinitializer, align 1
@__compressedAssemblyData_6 = internal dso_local global [12800 x i8] zeroinitializer, align 1
@__compressedAssemblyData_7 = internal dso_local global [22016 x i8] zeroinitializer, align 1
@__compressedAssemblyData_8 = internal dso_local global [40960 x i8] zeroinitializer, align 1
@__compressedAssemblyData_9 = internal dso_local global [16384 x i8] zeroinitializer, align 1
@__compressedAssemblyData_10 = internal dso_local global [15872 x i8] zeroinitializer, align 1
@__compressedAssemblyData_11 = internal dso_local global [14848 x i8] zeroinitializer, align 1
@__compressedAssemblyData_12 = internal dso_local global [7680 x i8] zeroinitializer, align 1
@__compressedAssemblyData_13 = internal dso_local global [55808 x i8] zeroinitializer, align 1
@__compressedAssemblyData_14 = internal dso_local global [127920 x i8] zeroinitializer, align 1
@__compressedAssemblyData_15 = internal dso_local global [1704384 x i8] zeroinitializer, align 1
@__compressedAssemblyData_16 = internal dso_local global [49664 x i8] zeroinitializer, align 1
@__compressedAssemblyData_17 = internal dso_local global [205344 x i8] zeroinitializer, align 1
@__compressedAssemblyData_18 = internal dso_local global [656304 x i8] zeroinitializer, align 1
@__compressedAssemblyData_19 = internal dso_local global [18976 x i8] zeroinitializer, align 1
@__compressedAssemblyData_20 = internal dso_local global [1860096 x i8] zeroinitializer, align 1
@__compressedAssemblyData_21 = internal dso_local global [712464 x i8] zeroinitializer, align 1
@__compressedAssemblyData_22 = internal dso_local global [144896 x i8] zeroinitializer, align 1
@__compressedAssemblyData_23 = internal dso_local global [51200 x i8] zeroinitializer, align 1
@__compressedAssemblyData_24 = internal dso_local global [1568768 x i8] zeroinitializer, align 1
@__compressedAssemblyData_25 = internal dso_local global [152576 x i8] zeroinitializer, align 1
@__compressedAssemblyData_26 = internal dso_local global [146944 x i8] zeroinitializer, align 1
@__compressedAssemblyData_27 = internal dso_local global [206848 x i8] zeroinitializer, align 1
@__compressedAssemblyData_28 = internal dso_local global [17408 x i8] zeroinitializer, align 1
@__compressedAssemblyData_29 = internal dso_local global [11776 x i8] zeroinitializer, align 1
@__compressedAssemblyData_30 = internal dso_local global [13312 x i8] zeroinitializer, align 1
@__compressedAssemblyData_31 = internal dso_local global [130048 x i8] zeroinitializer, align 1
@__compressedAssemblyData_32 = internal dso_local global [4608 x i8] zeroinitializer, align 1
@__compressedAssemblyData_33 = internal dso_local global [10752 x i8] zeroinitializer, align 1
@__compressedAssemblyData_34 = internal dso_local global [517120 x i8] zeroinitializer, align 1
@__compressedAssemblyData_35 = internal dso_local global [14848 x i8] zeroinitializer, align 1
@__compressedAssemblyData_36 = internal dso_local global [25600 x i8] zeroinitializer, align 1
@__compressedAssemblyData_37 = internal dso_local global [18944 x i8] zeroinitializer, align 1
@__compressedAssemblyData_38 = internal dso_local global [34816 x i8] zeroinitializer, align 1
@__compressedAssemblyData_39 = internal dso_local global [4096 x i8] zeroinitializer, align 1
@__compressedAssemblyData_40 = internal dso_local global [19968 x i8] zeroinitializer, align 1
@__compressedAssemblyData_41 = internal dso_local global [30208 x i8] zeroinitializer, align 1
@__compressedAssemblyData_42 = internal dso_local global [420864 x i8] zeroinitializer, align 1
@__compressedAssemblyData_43 = internal dso_local global [46080 x i8] zeroinitializer, align 1
@__compressedAssemblyData_44 = internal dso_local global [11776 x i8] zeroinitializer, align 1
@__compressedAssemblyData_45 = internal dso_local global [128000 x i8] zeroinitializer, align 1
@__compressedAssemblyData_46 = internal dso_local global [12288 x i8] zeroinitializer, align 1
@__compressedAssemblyData_47 = internal dso_local global [53760 x i8] zeroinitializer, align 1
@__compressedAssemblyData_48 = internal dso_local global [6656 x i8] zeroinitializer, align 1
@__compressedAssemblyData_49 = internal dso_local global [4608 x i8] zeroinitializer, align 1
@__compressedAssemblyData_50 = internal dso_local global [18944 x i8] zeroinitializer, align 1
@__compressedAssemblyData_51 = internal dso_local global [69120 x i8] zeroinitializer, align 1
@__compressedAssemblyData_52 = internal dso_local global [41472 x i8] zeroinitializer, align 1
@__compressedAssemblyData_53 = internal dso_local global [1326080 x i8] zeroinitializer, align 1
@__compressedAssemblyData_54 = internal dso_local global [4608 x i8] zeroinitializer, align 1
@__compressedAssemblyData_55 = internal dso_local global [4608 x i8] zeroinitializer, align 1
@__compressedAssemblyData_56 = internal dso_local global [4608 x i8] zeroinitializer, align 1
@__compressedAssemblyData_57 = internal dso_local global [8192 x i8] zeroinitializer, align 1
@__compressedAssemblyData_58 = internal dso_local global [4096 x i8] zeroinitializer, align 1
@__compressedAssemblyData_59 = internal dso_local global [6656 x i8] zeroinitializer, align 1
@__compressedAssemblyData_60 = internal dso_local global [5120 x i8] zeroinitializer, align 1
@__compressedAssemblyData_61 = internal dso_local global [14848 x i8] zeroinitializer, align 1
@__compressedAssemblyData_62 = internal dso_local global [13824 x i8] zeroinitializer, align 1
@__compressedAssemblyData_63 = internal dso_local global [4096 x i8] zeroinitializer, align 1
@__compressedAssemblyData_64 = internal dso_local global [4096 x i8] zeroinitializer, align 1
@__compressedAssemblyData_65 = internal dso_local global [11264 x i8] zeroinitializer, align 1
@__compressedAssemblyData_66 = internal dso_local global [8192 x i8] zeroinitializer, align 1
@__compressedAssemblyData_67 = internal dso_local global [4096 x i8] zeroinitializer, align 1
@__compressedAssemblyData_68 = internal dso_local global [5120 x i8] zeroinitializer, align 1
@__compressedAssemblyData_69 = internal dso_local global [4608 x i8] zeroinitializer, align 1
@__compressedAssemblyData_70 = internal dso_local global [4096 x i8] zeroinitializer, align 1
@__compressedAssemblyData_71 = internal dso_local global [50176 x i8] zeroinitializer, align 1
@__compressedAssemblyData_72 = internal dso_local global [14336 x i8] zeroinitializer, align 1
@__compressedAssemblyData_73 = internal dso_local global [522240 x i8] zeroinitializer, align 1
@__compressedAssemblyData_74 = internal dso_local global [31232 x i8] zeroinitializer, align 1
@__compressedAssemblyData_75 = internal dso_local global [15360 x i8] zeroinitializer, align 1
@__compressedAssemblyData_76 = internal dso_local global [17920 x i8] zeroinitializer, align 1
@__compressedAssemblyData_77 = internal dso_local global [69120 x i8] zeroinitializer, align 1
@__compressedAssemblyData_78 = internal dso_local global [505344 x i8] zeroinitializer, align 1
@__compressedAssemblyData_79 = internal dso_local global [22016 x i8] zeroinitializer, align 1
@__compressedAssemblyData_80 = internal dso_local global [7680 x i8] zeroinitializer, align 1
@__compressedAssemblyData_81 = internal dso_local global [39936 x i8] zeroinitializer, align 1
@__compressedAssemblyData_82 = internal dso_local global [188928 x i8] zeroinitializer, align 1
@__compressedAssemblyData_83 = internal dso_local global [18944 x i8] zeroinitializer, align 1
@__compressedAssemblyData_84 = internal dso_local global [15872 x i8] zeroinitializer, align 1
@__compressedAssemblyData_85 = internal dso_local global [23552 x i8] zeroinitializer, align 1
@__compressedAssemblyData_86 = internal dso_local global [11264 x i8] zeroinitializer, align 1
@__compressedAssemblyData_87 = internal dso_local global [33792 x i8] zeroinitializer, align 1
@__compressedAssemblyData_88 = internal dso_local global [80896 x i8] zeroinitializer, align 1
@__compressedAssemblyData_89 = internal dso_local global [16896 x i8] zeroinitializer, align 1
@__compressedAssemblyData_90 = internal dso_local global [51200 x i8] zeroinitializer, align 1
@__compressedAssemblyData_91 = internal dso_local global [26624 x i8] zeroinitializer, align 1
@__compressedAssemblyData_92 = internal dso_local global [393728 x i8] zeroinitializer, align 1
@__compressedAssemblyData_93 = internal dso_local global [10240 x i8] zeroinitializer, align 1
@__compressedAssemblyData_94 = internal dso_local global [35328 x i8] zeroinitializer, align 1
@__compressedAssemblyData_95 = internal dso_local global [52736 x i8] zeroinitializer, align 1
@__compressedAssemblyData_96 = internal dso_local global [27136 x i8] zeroinitializer, align 1
@__compressedAssemblyData_97 = internal dso_local global [594432 x i8] zeroinitializer, align 1
@__compressedAssemblyData_98 = internal dso_local global [23040 x i8] zeroinitializer, align 1
@__compressedAssemblyData_99 = internal dso_local global [14848 x i8] zeroinitializer, align 1
@__compressedAssemblyData_100 = internal dso_local global [5632 x i8] zeroinitializer, align 1
@__compressedAssemblyData_101 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_102 = internal dso_local global [21504 x i8] zeroinitializer, align 1
@__compressedAssemblyData_103 = internal dso_local global [45568 x i8] zeroinitializer, align 1
@__compressedAssemblyData_104 = internal dso_local global [28672 x i8] zeroinitializer, align 1
@__compressedAssemblyData_105 = internal dso_local global [103936 x i8] zeroinitializer, align 1
@__compressedAssemblyData_106 = internal dso_local global [2085376 x i8] zeroinitializer, align 1
@__compressedAssemblyData_107 = internal dso_local global [86016 x i8] zeroinitializer, align 1
@__compressedAssemblyData_108 = internal dso_local global [54784 x i8] zeroinitializer, align 1
@__compressedAssemblyData_109 = internal dso_local global [309248 x i8] zeroinitializer, align 1
@__compressedAssemblyData_110 = internal dso_local global [21504 x i8] zeroinitializer, align 1
@__compressedAssemblyData_111 = internal dso_local global [45568 x i8] zeroinitializer, align 1
@__compressedAssemblyData_112 = internal dso_local global [28160 x i8] zeroinitializer, align 1
@__compressedAssemblyData_113 = internal dso_local global [103936 x i8] zeroinitializer, align 1
@__compressedAssemblyData_114 = internal dso_local global [2071040 x i8] zeroinitializer, align 1
@__compressedAssemblyData_115 = internal dso_local global [85504 x i8] zeroinitializer, align 1
@__compressedAssemblyData_116 = internal dso_local global [55296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_117 = internal dso_local global [308736 x i8] zeroinitializer, align 1
@__compressedAssemblyData_118 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_119 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_120 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_121 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_122 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_123 = internal dso_local global [4096 x i8] zeroinitializer, align 1
@__compressedAssemblyData_124 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_125 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_126 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_127 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_128 = internal dso_local global [15808 x i8] zeroinitializer, align 1
@__compressedAssemblyData_129 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_130 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_131 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_132 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_133 = internal dso_local global [15792 x i8] zeroinitializer, align 1
@__compressedAssemblyData_134 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_135 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_136 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_137 = internal dso_local global [7168 x i8] zeroinitializer, align 1
@__compressedAssemblyData_138 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_139 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_140 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_141 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_142 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_143 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_144 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_145 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_146 = internal dso_local global [15792 x i8] zeroinitializer, align 1
@__compressedAssemblyData_147 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_148 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_149 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_150 = internal dso_local global [21504 x i8] zeroinitializer, align 1
@__compressedAssemblyData_151 = internal dso_local global [45568 x i8] zeroinitializer, align 1
@__compressedAssemblyData_152 = internal dso_local global [28160 x i8] zeroinitializer, align 1
@__compressedAssemblyData_153 = internal dso_local global [103936 x i8] zeroinitializer, align 1
@__compressedAssemblyData_154 = internal dso_local global [2070528 x i8] zeroinitializer, align 1
@__compressedAssemblyData_155 = internal dso_local global [85504 x i8] zeroinitializer, align 1
@__compressedAssemblyData_156 = internal dso_local global [55296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_157 = internal dso_local global [308736 x i8] zeroinitializer, align 1
@__compressedAssemblyData_158 = internal dso_local global [21504 x i8] zeroinitializer, align 1
@__compressedAssemblyData_159 = internal dso_local global [45568 x i8] zeroinitializer, align 1
@__compressedAssemblyData_160 = internal dso_local global [29184 x i8] zeroinitializer, align 1
@__compressedAssemblyData_161 = internal dso_local global [104448 x i8] zeroinitializer, align 1
@__compressedAssemblyData_162 = internal dso_local global [2130432 x i8] zeroinitializer, align 1
@__compressedAssemblyData_163 = internal dso_local global [86016 x i8] zeroinitializer, align 1
@__compressedAssemblyData_164 = internal dso_local global [54784 x i8] zeroinitializer, align 1
@__compressedAssemblyData_165 = internal dso_local global [309248 x i8] zeroinitializer, align 1
@__compressedAssemblyData_166 = internal dso_local global [15296 x i8] zeroinitializer, align 1
@__compressedAssemblyData_167 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_168 = internal dso_local global [15280 x i8] zeroinitializer, align 1
@__compressedAssemblyData_169 = internal dso_local global [505856 x i8] zeroinitializer, align 1

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
