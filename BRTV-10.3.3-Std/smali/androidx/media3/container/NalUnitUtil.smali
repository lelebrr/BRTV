.class public final Landroidx/media3/container/NalUnitUtil;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/NalUnitUtil$H265NalHeader;,
        Landroidx/media3/container/NalUnitUtil$SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265VpsData;,
        Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;,
        Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265LayerInfo;,
        Landroidx/media3/container/NalUnitUtil$H265SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265RepFormat;,
        Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;,
        Landroidx/media3/container/NalUnitUtil$PpsData;,
        Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field public static final H264_NAL_UNIT_TYPE_AUD:I = 0x9

.field public static final H264_NAL_UNIT_TYPE_IDR:I = 0x5

.field public static final H264_NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field public static final H264_NAL_UNIT_TYPE_PARTITION_A:I = 0x2

.field public static final H264_NAL_UNIT_TYPE_PPS:I = 0x8

.field public static final H264_NAL_UNIT_TYPE_PREFIX:I = 0xe

.field public static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field public static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field public static final H264_NAL_UNIT_TYPE_UNSPECIFIED:I = 0x18

.field public static final H265_NAL_UNIT_TYPE_AUD:I = 0x23

.field public static final H265_NAL_UNIT_TYPE_BLA_W_LP:I = 0x10

.field public static final H265_NAL_UNIT_TYPE_CRA:I = 0x15

.field public static final H265_NAL_UNIT_TYPE_PPS:I = 0x22

.field public static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final H265_NAL_UNIT_TYPE_RASL_R:I = 0x9

.field public static final H265_NAL_UNIT_TYPE_SPS:I = 0x21

.field public static final H265_NAL_UNIT_TYPE_SUFFIX_SEI:I = 0x28

.field public static final H265_NAL_UNIT_TYPE_UNSPECIFIED:I = 0x30

.field public static final H265_NAL_UNIT_TYPE_VPS:I = 0x20

.field private static final INVALID_ID:I = -0x1

.field public static final NAL_START_CODE:[B

.field public static final NAL_UNIT_TYPE_AUD:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_IDR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_NON_IDR:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_PPS:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_PREFIX:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_SEI:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAL_UNIT_TYPE_SPS:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    .line 8
    .line 9
    const/16 v0, 0x11

    .line 10
    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 24
    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static applyConformanceWindowToHeight(IIII)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    :cond_0
    add-int/2addr p2, p3

    .line 6
    mul-int p2, p2, v0

    .line 7
    .line 8
    sub-int/2addr p0, p2

    .line 9
    return p0
.end method

.method private static applyConformanceWindowToWidth(IIII)I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :cond_1
    :goto_0
    add-int/2addr p2, p3

    .line 10
    mul-int p2, p2, v0

    .line 11
    .line 12
    sub-int/2addr p0, p2

    .line 13
    return p0
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aput-boolean v0, p0, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aput-boolean v0, p0, v1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    aput-boolean v0, p0, v1

    .line 9
    .line 10
    return-void
.end method

.method private static createCodecStringFromH265SpsPalyoad(Landroidx/media3/container/ParsableNalUnitBitArray;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p0, v1, v0, v2}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget v0, p0, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    .line 20
    .line 21
    iget-boolean v1, p0, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    .line 22
    .line 23
    iget v2, p0, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    .line 24
    .line 25
    iget v3, p0, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    .line 26
    .line 27
    iget-object v4, p0, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    .line 28
    .line 29
    iget v5, p0, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    .line 30
    .line 31
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    add-int/lit8 v4, v2, 0x1

    .line 9
    .line 10
    if-ge v4, v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    and-int/lit16 v5, v5, 0xff

    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    if-ne v3, v6, :cond_0

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    if-ne v5, v7, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    and-int/lit8 v7, v7, 0x1f

    .line 29
    .line 30
    const/4 v8, 0x7

    .line 31
    if-ne v7, v8, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    sub-int/2addr v2, v6

    .line 38
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    if-nez v5, :cond_1

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    :cond_1
    if-eqz v5, :cond_2

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    :cond_2
    move v2, v4

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .locals 8

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v3, 0x0

    .line 10
    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 11
    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return p2

    .line 16
    :cond_1
    aget-boolean v3, p3, v1

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x3

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    const/4 v3, 0x2

    .line 27
    if-le v0, v2, :cond_3

    .line 28
    .line 29
    aget-boolean v4, p3, v2

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    aget-byte v4, p0, p1

    .line 34
    .line 35
    if-ne v4, v2, :cond_3

    .line 36
    .line 37
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 38
    .line 39
    .line 40
    sub-int/2addr p1, v3

    .line 41
    return p1

    .line 42
    :cond_3
    if-le v0, v3, :cond_4

    .line 43
    .line 44
    aget-boolean v4, p3, v3

    .line 45
    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    aget-byte v4, p0, p1

    .line 49
    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    add-int/lit8 v4, p1, 0x1

    .line 53
    .line 54
    aget-byte v4, p0, v4

    .line 55
    .line 56
    if-ne v4, v2, :cond_4

    .line 57
    .line 58
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 59
    .line 60
    .line 61
    sub-int/2addr p1, v2

    .line 62
    return p1

    .line 63
    :cond_4
    add-int/lit8 v4, p2, -0x1

    .line 64
    .line 65
    add-int/2addr p1, v3

    .line 66
    :goto_1
    if-ge p1, v4, :cond_7

    .line 67
    .line 68
    aget-byte v5, p0, p1

    .line 69
    .line 70
    and-int/lit16 v6, v5, 0xfe

    .line 71
    .line 72
    if-eqz v6, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    add-int/lit8 v6, p1, -0x2

    .line 76
    .line 77
    aget-byte v7, p0, v6

    .line 78
    .line 79
    if-nez v7, :cond_6

    .line 80
    .line 81
    add-int/lit8 v7, p1, -0x1

    .line 82
    .line 83
    aget-byte v7, p0, v7

    .line 84
    .line 85
    if-nez v7, :cond_6

    .line 86
    .line 87
    if-ne v5, v2, :cond_6

    .line 88
    .line 89
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 90
    .line 91
    .line 92
    return v6

    .line 93
    :cond_6
    add-int/lit8 p1, p1, -0x2

    .line 94
    .line 95
    :goto_2
    add-int/lit8 p1, p1, 0x3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_7
    if-le v0, v3, :cond_9

    .line 99
    .line 100
    add-int/lit8 p1, p2, -0x3

    .line 101
    .line 102
    aget-byte p1, p0, p1

    .line 103
    .line 104
    if-nez p1, :cond_8

    .line 105
    .line 106
    add-int/lit8 p1, p2, -0x2

    .line 107
    .line 108
    aget-byte p1, p0, p1

    .line 109
    .line 110
    if-nez p1, :cond_8

    .line 111
    .line 112
    aget-byte p1, p0, v4

    .line 113
    .line 114
    if-ne p1, v2, :cond_8

    .line 115
    .line 116
    :goto_3
    const/4 p1, 0x1

    .line 117
    goto :goto_4

    .line 118
    :cond_8
    const/4 p1, 0x0

    .line 119
    goto :goto_4

    .line 120
    :cond_9
    if-ne v0, v3, :cond_a

    .line 121
    .line 122
    aget-boolean p1, p3, v3

    .line 123
    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    add-int/lit8 p1, p2, -0x2

    .line 127
    .line 128
    aget-byte p1, p0, p1

    .line 129
    .line 130
    if-nez p1, :cond_8

    .line 131
    .line 132
    aget-byte p1, p0, v4

    .line 133
    .line 134
    if-ne p1, v2, :cond_8

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_a
    aget-boolean p1, p3, v2

    .line 138
    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    aget-byte p1, p0, v4

    .line 142
    .line 143
    if-ne p1, v2, :cond_8

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_4
    aput-boolean p1, p3, v1

    .line 147
    .line 148
    if-le v0, v2, :cond_c

    .line 149
    .line 150
    add-int/lit8 p1, p2, -0x2

    .line 151
    .line 152
    aget-byte p1, p0, p1

    .line 153
    .line 154
    if-nez p1, :cond_b

    .line 155
    .line 156
    aget-byte p1, p0, v4

    .line 157
    .line 158
    if-nez p1, :cond_b

    .line 159
    .line 160
    :goto_5
    const/4 p1, 0x1

    .line 161
    goto :goto_6

    .line 162
    :cond_b
    const/4 p1, 0x0

    .line 163
    goto :goto_6

    .line 164
    :cond_c
    aget-boolean p1, p3, v3

    .line 165
    .line 166
    if-eqz p1, :cond_b

    .line 167
    .line 168
    aget-byte p1, p0, v4

    .line 169
    .line 170
    if-nez p1, :cond_b

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :goto_6
    aput-boolean p1, p3, v2

    .line 174
    .line 175
    aget-byte p0, p0, v4

    .line 176
    .line 177
    if-nez p0, :cond_d

    .line 178
    .line 179
    const/4 v1, 0x1

    .line 180
    :cond_d
    aput-boolean v1, p3, v3

    .line 181
    .line 182
    return p2
.end method

.method private static findNalUnitPositions([B)Ld7/u1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ld7/u1;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Z

    .line 3
    .line 4
    invoke-static {}, Ld7/u1;->k()Ld7/s1;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    array-length v3, p0

    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    array-length v3, p0

    .line 13
    invoke-static {p0, v2, v3, v0}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    array-length v3, p0

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Ld7/p1;->a(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v1}, Ld7/s1;->g()Ld7/c5;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 2

    .line 1
    :goto_0
    add-int/lit8 v0, p2, -0x2

    .line 2
    .line 3
    if-ge p1, v0, :cond_1

    .line 4
    .line 5
    aget-byte v0, p0, p1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x1

    .line 10
    .line 11
    aget-byte v0, p0, v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, p1, 0x2

    .line 16
    .line 17
    aget-byte v0, p0, v0

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return p2
.end method

.method public static getH265BaseLayerCodecsString(Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, [B

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    const/4 v4, 0x3

    .line 17
    if-le v3, v4, :cond_1

    .line 18
    .line 19
    invoke-static {v2}, Landroidx/media3/container/NalUnitUtil;->findNalUnitPositions([B)Ld7/u1;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_1
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-ge v6, v7, :cond_1

    .line 29
    .line 30
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    add-int/2addr v7, v4

    .line 41
    if-ge v7, v3, :cond_0

    .line 42
    .line 43
    new-instance v7, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 44
    .line 45
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    add-int/2addr v8, v4

    .line 56
    invoke-direct {v7, v2, v8, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 57
    .line 58
    .line 59
    invoke-static {v7}, Landroidx/media3/container/NalUnitUtil;->parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    iget v9, v8, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->nalUnitType:I

    .line 64
    .line 65
    const/16 v10, 0x21

    .line 66
    .line 67
    if-ne v9, v10, :cond_0

    .line 68
    .line 69
    iget v8, v8, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    .line 70
    .line 71
    if-nez v8, :cond_0

    .line 72
    .line 73
    invoke-static {v7}, Landroidx/media3/container/NalUnitUtil;->createCodecStringFromH265SpsPalyoad(Landroidx/media3/container/ParsableNalUnitBitArray;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method

.method public static getH265NalUnitType([BI)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x7e

    .line 6
    .line 7
    shr-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public static getNalUnitType([BI)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x1f

    .line 6
    .line 7
    return p0
.end method

.method public static isDependedOn([BIILandroidx/media3/common/Format;)Z
    .locals 2

    .line 1
    iget-object v0, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    aget-byte p0, p0, p1

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/media3/container/NalUnitUtil;->isH264NalUnitDependedOn(B)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "video/hevc"

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/container/NalUnitUtil;->isH265NalUnitDependedOn([BIILandroidx/media3/common/Format;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    return p0
.end method

.method public static isH264NalUnitDependedOn(B)Z
    .locals 3

    .line 1
    and-int/lit8 v0, p0, 0x60

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    and-int/lit8 p0, p0, 0x1f

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/16 v2, 0x9

    .line 16
    .line 17
    if-ne p0, v2, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    const/16 v2, 0xe

    .line 21
    .line 22
    if-ne p0, v2, :cond_3

    .line 23
    .line 24
    return v0

    .line 25
    :cond_3
    return v1
.end method

.method private static isH265NalUnitDependedOn([BIILandroidx/media3/common/Format;)Z
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p1, p0, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->nalUnitType:I

    .line 12
    .line 13
    const/16 p2, 0x23

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    const/16 p2, 0xe

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-gt p1, p2, :cond_1

    .line 23
    .line 24
    rem-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget p0, p0, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->temporalId:I

    .line 29
    .line 30
    iget p1, p3, Landroidx/media3/common/Format;->maxSubLayers:I

    .line 31
    .line 32
    sub-int/2addr p1, v1

    .line 33
    if-ne p0, p1, :cond_1

    .line 34
    .line 35
    return v0

    .line 36
    :cond_1
    return v1
.end method

.method public static isNalUnitSei(Landroidx/media3/common/Format;B)Z
    .locals 3

    .line 3
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    and-int/lit8 v0, p1, 0x1f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 5
    const-string v1, "video/hevc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 6
    invoke-static {p0, v1}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v2

    const/16 p1, 0x27

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    return v2
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    :cond_0
    const-string v0, "video/hevc"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "video/hevc"

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0, v1}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_2
    :goto_0
    const/4 p0, 0x2

    .line 35
    return p0
.end method

.method private static parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-virtual {p0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/lit8 p0, p0, -0x1

    .line 19
    .line 20
    new-instance v2, Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    .line 21
    .line 22
    invoke-direct {v2, v1, v0, p0}, Landroidx/media3/container/NalUnitUtil$H265NalHeader;-><init>(III)V

    .line 23
    .line 24
    .line 25
    return-object v2
.end method

.method private static parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    new-array v4, v3, [I

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/16 v6, 0x8

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    const/4 v9, 0x5

    .line 25
    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    :goto_0
    const/16 v12, 0x20

    .line 32
    .line 33
    if-ge v10, v12, :cond_1

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 36
    .line 37
    .line 38
    move-result v12

    .line 39
    if-eqz v12, :cond_0

    .line 40
    .line 41
    const/4 v12, 0x1

    .line 42
    shl-int/2addr v12, v10

    .line 43
    or-int/2addr v11, v12

    .line 44
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v10, 0x0

    .line 48
    :goto_1
    if-ge v10, v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    aput v12, v4, v10

    .line 55
    .line 56
    add-int/lit8 v10, v10, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v13, v2

    .line 60
    :goto_2
    move-object/from16 v17, v4

    .line 61
    .line 62
    move v14, v8

    .line 63
    move v15, v9

    .line 64
    move/from16 v16, v11

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iget v3, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    .line 70
    .line 71
    iget-boolean v8, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    .line 72
    .line 73
    iget v9, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    .line 74
    .line 75
    iget v11, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    .line 76
    .line 77
    iget-object v4, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    .line 78
    .line 79
    move v13, v3

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object/from16 v17, v4

    .line 82
    .line 83
    const/4 v13, 0x0

    .line 84
    const/4 v14, 0x0

    .line 85
    const/4 v15, 0x0

    .line 86
    const/16 v16, 0x0

    .line 87
    .line 88
    :goto_3
    invoke-virtual {v0, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 89
    .line 90
    .line 91
    move-result v18

    .line 92
    const/4 v2, 0x0

    .line 93
    :goto_4
    if-ge v7, v1, :cond_7

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x58

    .line 102
    .line 103
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x8

    .line 110
    .line 111
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 115
    .line 116
    .line 117
    if-lez v1, :cond_8

    .line 118
    .line 119
    sub-int/2addr v6, v1

    .line 120
    mul-int/lit8 v6, v6, 0x2

    .line 121
    .line 122
    invoke-virtual {v0, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 123
    .line 124
    .line 125
    :cond_8
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 126
    .line 127
    move-object v12, v0

    .line 128
    invoke-direct/range {v12 .. v18}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;-><init>(IZII[II)V

    .line 129
    .line 130
    .line 131
    return-object v0
.end method

.method private static parseH265RepFormat(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265RepFormat;
    .locals 9

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {p0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x3

    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v3, 0x4

    .line 29
    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    move v6, v3

    .line 38
    move v5, v4

    .line 39
    move v4, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-static {v1, v4, v2, v3}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToWidth(IIII)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v0, v4, v7, p0}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToHeight(IIII)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :cond_2
    move v8, v0

    .line 76
    move v7, v1

    .line 77
    new-instance p0, Landroidx/media3/container/NalUnitUtil$H265RepFormat;

    .line 78
    .line 79
    move-object v3, p0

    .line 80
    invoke-direct/range {v3 .. v8}, Landroidx/media3/container/NalUnitUtil$H265RepFormat;-><init>(IIIII)V

    .line 81
    .line 82
    .line 83
    return-object p0
.end method

.method private static parseH265RepFormatsAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;I)Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    invoke-static {v1}, Ld7/u1;->l(I)Ld7/s1;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-array v3, p1, [I

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/media3/container/NalUnitUtil;->parseH265RepFormat(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265RepFormat;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v2, v5}, Ld7/p1;->a(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v4, 0x1

    .line 27
    if-le v1, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    int-to-double v0, v1

    .line 36
    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 37
    .line 38
    invoke-static {v0, v1, v5}, Lf7/b;->c(DLjava/math/RoundingMode;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_1
    if-ge v4, p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    aput v1, v3, v4

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_2
    if-ge v4, p1, :cond_2

    .line 54
    .line 55
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    aput p0, v3, v4

    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    new-instance p0, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    .line 65
    .line 66
    invoke-virtual {v2}, Ld7/s1;->g()Ld7/c5;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1, v3}, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;-><init>(Ljava/util/List;[I)V

    .line 71
    .line 72
    .line 73
    return-object p0
.end method

.method public static parseH265Sei3dRefDisplayInfo([BII)Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    .locals 13

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    add-int/lit8 p2, p2, -0x1

    .line 4
    .line 5
    :goto_0
    aget-byte v0, p0, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-le p2, p1, :cond_0

    .line 10
    .line 11
    add-int/lit8 p2, p2, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_e

    .line 16
    .line 17
    if-gt p2, p1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_1
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 22
    .line 23
    add-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 26
    .line 27
    .line 28
    :cond_2
    const/16 p0, 0x10

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_e

    .line 35
    .line 36
    const/16 p0, 0x8

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p2, 0x0

    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_1
    const/16 v3, 0xff

    .line 45
    .line 46
    if-ne p1, v3, :cond_3

    .line 47
    .line 48
    add-int/lit16 v2, v2, 0xff

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    add-int/2addr v2, p1

    .line 56
    invoke-virtual {v0, p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/4 v4, 0x0

    .line 61
    :goto_2
    if-ne p1, v3, :cond_4

    .line 62
    .line 63
    add-int/lit16 v4, v4, 0xff

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    add-int/2addr v4, p1

    .line 71
    if-eqz v4, :cond_e

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_5

    .line 78
    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_5
    const/16 p0, 0xb0

    .line 82
    .line 83
    if-ne v2, p0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_6

    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    move v5, p1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    const/4 v5, 0x0

    .line 102
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const/4 v2, -0x1

    .line 107
    const/4 v2, 0x0

    .line 108
    const/4 v7, -0x1

    .line 109
    const/4 v8, -0x1

    .line 110
    const/4 v9, -0x1

    .line 111
    const/4 v10, -0x1

    .line 112
    const/4 v11, -0x1

    .line 113
    const/4 v12, -0x1

    .line 114
    :goto_4
    if-gt v2, p1, :cond_d

    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    const/4 v3, 0x6

    .line 125
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    const/16 v6, 0x3f

    .line 130
    .line 131
    if-ne v9, v6, :cond_7

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_7
    if-nez v9, :cond_8

    .line 135
    .line 136
    add-int/lit8 v10, v4, -0x1e

    .line 137
    .line 138
    invoke-static {p2, v10}, Ljava/lang/Math;->max(II)I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    goto :goto_5

    .line 143
    :cond_8
    add-int v10, v9, v4

    .line 144
    .line 145
    add-int/lit8 v10, v10, -0x1f

    .line 146
    .line 147
    invoke-static {p2, v10}, Ljava/lang/Math;->max(II)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    :goto_5
    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    if-eqz p0, :cond_b

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    if-ne v11, v6, :cond_9

    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_9
    if-nez v11, :cond_a

    .line 165
    .line 166
    add-int/lit8 v3, v5, -0x1e

    .line 167
    .line 168
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    goto :goto_6

    .line 173
    :cond_a
    add-int v3, v11, v5

    .line 174
    .line 175
    add-int/lit8 v3, v3, -0x1f

    .line 176
    .line 177
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    :goto_6
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    :cond_b
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_c

    .line 190
    .line 191
    const/16 v3, 0xa

    .line 192
    .line 193
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 194
    .line 195
    .line 196
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_d
    new-instance p0, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;

    .line 200
    .line 201
    add-int/lit8 v6, p1, 0x1

    .line 202
    .line 203
    move-object v3, p0

    .line 204
    invoke-direct/range {v3 .. v12}, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;-><init>(IIIIIIIII)V

    .line 205
    .line 206
    .line 207
    return-object p0

    .line 208
    :cond_e
    :goto_7
    return-object v1
.end method

.method public static parseH265SpsNalUnit([BIILandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    add-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    invoke-static {p0, p1, p2, v0, p3}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnitPayload([BIILandroidx/media3/container/NalUnitUtil$H265NalHeader;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static parseH265SpsNalUnitPayload([BIILandroidx/media3/container/NalUnitUtil$H265NalHeader;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 22

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    new-instance v2, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    move/from16 v4, p1

    .line 10
    .line 11
    move/from16 v5, p2

    .line 12
    .line 13
    invoke-direct {v2, v3, v4, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const/4 v5, 0x7

    .line 31
    if-ne v4, v5, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v5, 0x0

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v8, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Ld7/u1;

    .line 39
    .line 40
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-nez v8, :cond_1

    .line 45
    .line 46
    iget v8, v1, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->layerId:I

    .line 47
    .line 48
    iget-object v9, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Ld7/u1;

    .line 49
    .line 50
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    sub-int/2addr v9, v6

    .line 55
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    iget-object v9, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Ld7/u1;

    .line 60
    .line 61
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    check-cast v8, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    .line 66
    .line 67
    iget v8, v8, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v8, 0x0

    .line 71
    :goto_1
    const/4 v9, 0x0

    .line 72
    if-nez v5, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v6, v4, v9}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iget-object v10, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->profileTierLevelsAndIndices:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    .line 85
    .line 86
    iget-object v11, v10, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->indices:[I

    .line 87
    .line 88
    aget v11, v11, v8

    .line 89
    .line 90
    iget-object v10, v10, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->profileTierLevels:Ld7/u1;

    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-le v10, v11, :cond_3

    .line 97
    .line 98
    iget-object v9, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->profileTierLevelsAndIndices:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    .line 99
    .line 100
    iget-object v9, v9, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->profileTierLevels:Ld7/u1;

    .line 101
    .line 102
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    check-cast v9, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 107
    .line 108
    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    const/16 v11, 0x8

    .line 113
    .line 114
    const/4 v12, -0x1

    .line 115
    if-eqz v5, :cond_7

    .line 116
    .line 117
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    if-eqz v13, :cond_4

    .line 122
    .line 123
    invoke-virtual {v2, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    const/4 v13, -0x1

    .line 129
    :goto_3
    if-eqz v0, :cond_6

    .line 130
    .line 131
    iget-object v14, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    .line 132
    .line 133
    if-eqz v14, :cond_6

    .line 134
    .line 135
    if-ne v13, v12, :cond_5

    .line 136
    .line 137
    iget-object v13, v14, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->indices:[I

    .line 138
    .line 139
    aget v13, v13, v8

    .line 140
    .line 141
    :cond_5
    if-eq v13, v12, :cond_6

    .line 142
    .line 143
    iget-object v14, v14, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->repFormats:Ld7/u1;

    .line 144
    .line 145
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->size()I

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    if-le v14, v13, :cond_6

    .line 150
    .line 151
    iget-object v14, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->repFormatsAndIndices:Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    .line 152
    .line 153
    iget-object v14, v14, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->repFormats:Ld7/u1;

    .line 154
    .line 155
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    check-cast v13, Landroidx/media3/container/NalUnitUtil$H265RepFormat;

    .line 160
    .line 161
    iget v14, v13, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->chromaFormatIdc:I

    .line 162
    .line 163
    iget v15, v13, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->width:I

    .line 164
    .line 165
    iget v6, v13, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->height:I

    .line 166
    .line 167
    iget v7, v13, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->bitDepthLumaMinus8:I

    .line 168
    .line 169
    iget v13, v13, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->bitDepthChromaMinus8:I

    .line 170
    .line 171
    move v12, v13

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    const/4 v6, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    const/4 v12, 0x0

    .line 176
    const/4 v14, 0x0

    .line 177
    const/4 v15, 0x0

    .line 178
    goto :goto_4

    .line 179
    :cond_7
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-ne v6, v3, :cond_8

    .line 184
    .line 185
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 186
    .line 187
    .line 188
    :cond_8
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-eqz v14, :cond_9

    .line 201
    .line 202
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 211
    .line 212
    .line 213
    move-result v12

    .line 214
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    invoke-static {v7, v6, v14, v15}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToWidth(IIII)I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    invoke-static {v13, v6, v12, v3}, Landroidx/media3/container/NalUnitUtil;->applyConformanceWindowToHeight(IIII)I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    move v13, v3

    .line 227
    :cond_9
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    move v14, v6

    .line 236
    move v15, v7

    .line 237
    move v6, v13

    .line 238
    move v7, v3

    .line 239
    :goto_4
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-nez v5, :cond_b

    .line 244
    .line 245
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    if-eqz v13, :cond_a

    .line 250
    .line 251
    const/4 v13, 0x0

    .line 252
    goto :goto_5

    .line 253
    :cond_a
    move v13, v4

    .line 254
    :goto_5
    const/4 v11, -0x1

    .line 255
    :goto_6
    if-gt v13, v4, :cond_c

    .line 256
    .line 257
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 269
    .line 270
    .line 271
    add-int/lit8 v13, v13, 0x1

    .line 272
    .line 273
    move-object/from16 v1, p3

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_b
    const/4 v11, -0x1

    .line 277
    :cond_c
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_f

    .line 300
    .line 301
    if-eqz v5, :cond_d

    .line 302
    .line 303
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    goto :goto_7

    .line 308
    :cond_d
    const/4 v1, 0x0

    .line 309
    :goto_7
    if-eqz v1, :cond_e

    .line 310
    .line 311
    const/4 v1, 0x6

    .line 312
    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 313
    .line 314
    .line 315
    goto :goto_8

    .line 316
    :cond_e
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_f

    .line 321
    .line 322
    invoke-static {v2}, Landroidx/media3/container/NalUnitUtil;->skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 323
    .line 324
    .line 325
    :cond_f
    :goto_8
    const/4 v1, 0x2

    .line 326
    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-eqz v5, :cond_10

    .line 334
    .line 335
    const/16 v5, 0x8

    .line 336
    .line 337
    invoke-virtual {v2, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 347
    .line 348
    .line 349
    :cond_10
    invoke-static {v2}, Landroidx/media3/container/NalUnitUtil;->skipH265ShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-eqz v5, :cond_11

    .line 357
    .line 358
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    const/4 v13, 0x0

    .line 363
    :goto_9
    if-ge v13, v5, :cond_11

    .line 364
    .line 365
    add-int/lit8 v1, v3, 0x5

    .line 366
    .line 367
    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 368
    .line 369
    .line 370
    add-int/lit8 v13, v13, 0x1

    .line 371
    .line 372
    const/4 v1, 0x2

    .line 373
    goto :goto_9

    .line 374
    :cond_11
    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    const/high16 v5, 0x3f800000    # 1.0f

    .line 382
    .line 383
    if-eqz v3, :cond_1c

    .line 384
    .line 385
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-eqz v3, :cond_14

    .line 390
    .line 391
    const/16 v3, 0x8

    .line 392
    .line 393
    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 394
    .line 395
    .line 396
    move-result v13

    .line 397
    const/16 v3, 0xff

    .line 398
    .line 399
    if-ne v13, v3, :cond_12

    .line 400
    .line 401
    const/16 v3, 0x10

    .line 402
    .line 403
    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 404
    .line 405
    .line 406
    move-result v13

    .line 407
    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-eqz v13, :cond_14

    .line 412
    .line 413
    if-eqz v3, :cond_14

    .line 414
    .line 415
    int-to-float v5, v13

    .line 416
    int-to-float v3, v3

    .line 417
    div-float/2addr v5, v3

    .line 418
    goto :goto_a

    .line 419
    :cond_12
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 420
    .line 421
    array-length v1, v3

    .line 422
    if-ge v13, v1, :cond_13

    .line 423
    .line 424
    aget v5, v3, v13

    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_13
    const-string v1, "Unexpected aspect_ratio_idc value: "

    .line 428
    .line 429
    const-string v3, "NalUnitUtil"

    .line 430
    .line 431
    invoke-static {v13, v1, v3}, La/e;->y(ILjava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    :cond_14
    :goto_a
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-eqz v1, :cond_15

    .line 439
    .line 440
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 441
    .line 442
    .line 443
    :cond_15
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    if-eqz v1, :cond_18

    .line 448
    .line 449
    const/4 v1, 0x3

    .line 450
    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-eqz v0, :cond_16

    .line 458
    .line 459
    const/4 v0, 0x1

    .line 460
    goto :goto_b

    .line 461
    :cond_16
    const/4 v0, 0x2

    .line 462
    :goto_b
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_17

    .line 467
    .line 468
    const/16 v1, 0x8

    .line 469
    .line 470
    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 475
    .line 476
    .line 477
    move-result v8

    .line 478
    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 479
    .line 480
    .line 481
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    goto :goto_d

    .line 490
    :cond_17
    :goto_c
    const/4 v1, -0x1

    .line 491
    const/4 v3, -0x1

    .line 492
    goto :goto_d

    .line 493
    :cond_18
    if-eqz v0, :cond_19

    .line 494
    .line 495
    iget-object v1, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    .line 496
    .line 497
    if-eqz v1, :cond_19

    .line 498
    .line 499
    iget-object v3, v1, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->indices:[I

    .line 500
    .line 501
    aget v3, v3, v8

    .line 502
    .line 503
    iget-object v1, v1, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->videoSignalInfos:Ld7/u1;

    .line 504
    .line 505
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-le v1, v3, :cond_19

    .line 510
    .line 511
    iget-object v0, v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;->videoSignalInfosAndIndices:Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    .line 512
    .line 513
    iget-object v0, v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->videoSignalInfos:Ld7/u1;

    .line 514
    .line 515
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    check-cast v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;

    .line 520
    .line 521
    iget v1, v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorSpace:I

    .line 522
    .line 523
    iget v3, v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorRange:I

    .line 524
    .line 525
    iget v0, v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->colorTransfer:I

    .line 526
    .line 527
    move/from16 v21, v3

    .line 528
    .line 529
    move v3, v0

    .line 530
    move/from16 v0, v21

    .line 531
    .line 532
    goto :goto_d

    .line 533
    :cond_19
    const/4 v0, -0x1

    .line 534
    goto :goto_c

    .line 535
    :goto_d
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 536
    .line 537
    .line 538
    move-result v8

    .line 539
    if-eqz v8, :cond_1a

    .line 540
    .line 541
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 545
    .line 546
    .line 547
    :cond_1a
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    if-eqz v2, :cond_1b

    .line 555
    .line 556
    mul-int/lit8 v6, v6, 0x2

    .line 557
    .line 558
    :cond_1b
    move/from16 v18, v0

    .line 559
    .line 560
    move/from16 v17, v1

    .line 561
    .line 562
    move/from16 v19, v3

    .line 563
    .line 564
    move/from16 v16, v5

    .line 565
    .line 566
    move v13, v6

    .line 567
    goto :goto_e

    .line 568
    :cond_1c
    move v13, v6

    .line 569
    const/high16 v16, 0x3f800000    # 1.0f

    .line 570
    .line 571
    const/16 v17, -0x1

    .line 572
    .line 573
    const/16 v18, -0x1

    .line 574
    .line 575
    const/16 v19, -0x1

    .line 576
    .line 577
    :goto_e
    new-instance v20, Landroidx/media3/container/NalUnitUtil$H265SpsData;

    .line 578
    .line 579
    move-object/from16 v0, v20

    .line 580
    .line 581
    move-object/from16 v1, p3

    .line 582
    .line 583
    move v2, v4

    .line 584
    move-object v3, v9

    .line 585
    move v4, v14

    .line 586
    move v5, v7

    .line 587
    move v6, v12

    .line 588
    move v7, v10

    .line 589
    move v8, v15

    .line 590
    move v9, v13

    .line 591
    move/from16 v10, v16

    .line 592
    .line 593
    move/from16 v12, v17

    .line 594
    .line 595
    move/from16 v13, v18

    .line 596
    .line 597
    move/from16 v14, v19

    .line 598
    .line 599
    invoke-direct/range {v0 .. v14}, Landroidx/media3/container/NalUnitUtil$H265SpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;ILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;IIIIIIFIIII)V

    .line 600
    .line 601
    .line 602
    return-object v20
.end method

.method private static parseH265VideoSignalInfo(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    :goto_0
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 33
    .line 34
    .line 35
    new-instance p0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;

    .line 36
    .line 37
    invoke-direct {p0, v2, v0, v3}, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;-><init>(III)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method private static parseH265VideoSignalInfosAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;II[I)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    if-eqz v2, :cond_8

    .line 31
    .line 32
    :cond_2
    const/4 v4, 0x0

    .line 33
    :goto_1
    if-ge v4, p2, :cond_8

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    :goto_2
    aget v6, p3, v4

    .line 37
    .line 38
    if-ge v5, v6, :cond_7

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    const/4 v6, 0x0

    .line 48
    :goto_3
    if-eqz v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    const/4 v7, 0x0

    .line 56
    :goto_4
    if-eqz v6, :cond_5

    .line 57
    .line 58
    const/16 v6, 0x20

    .line 59
    .line 60
    invoke-virtual {p0, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 61
    .line 62
    .line 63
    :cond_5
    if-eqz v7, :cond_6

    .line 64
    .line 65
    const/16 v6, 0x12

    .line 66
    .line 67
    invoke-virtual {p0, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 68
    .line 69
    .line 70
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    const/4 p3, 0x4

    .line 81
    if-eqz p2, :cond_9

    .line 82
    .line 83
    invoke-virtual {p0, p3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v0, v1

    .line 88
    goto :goto_5

    .line 89
    :cond_9
    move v0, p1

    .line 90
    :goto_5
    invoke-static {v0}, Ld7/u1;->l(I)Ld7/s1;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-array v4, p1, [I

    .line 95
    .line 96
    const/4 v5, 0x0

    .line 97
    :goto_6
    if-ge v5, v0, :cond_a

    .line 98
    .line 99
    invoke-static {p0}, Landroidx/media3/container/NalUnitUtil;->parseH265VideoSignalInfo(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v2, v6}, Ld7/p1;->a(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_a
    if-eqz p2, :cond_b

    .line 110
    .line 111
    if-le v0, v1, :cond_b

    .line 112
    .line 113
    :goto_7
    if-ge v3, p1, :cond_b

    .line 114
    .line 115
    invoke-virtual {p0, p3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    aput p2, v4, v3

    .line 120
    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_b
    new-instance p0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    .line 125
    .line 126
    invoke-virtual {v2}, Ld7/s1;->g()Ld7/c5;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1, v4}, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;-><init>(Ljava/util/List;[I)V

    .line 131
    .line 132
    .line 133
    return-object p0
.end method

.method public static parseH265VpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->parseH265NalHeader(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {v0, p0}, Landroidx/media3/container/NalUnitUtil;->parseH265VpsNalUnitPayload(Landroidx/media3/container/ParsableNalUnitBitArray;Landroidx/media3/container/NalUnitUtil$H265NalHeader;)Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static parseH265VpsNalUnitPayload(Landroidx/media3/container/ParsableNalUnitBitArray;Landroidx/media3/container/NalUnitUtil$H265NalHeader;)Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x6

    .line 16
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    add-int/lit8 v6, v5, 0x1

    .line 21
    .line 22
    const/4 v7, 0x3

    .line 23
    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    const/16 v9, 0x11

    .line 28
    .line 29
    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 30
    .line 31
    .line 32
    const/4 v9, 0x1

    .line 33
    const/4 v10, 0x0

    .line 34
    invoke-static {v0, v9, v8, v10}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    const/4 v13, 0x0

    .line 43
    if-eqz v12, :cond_0

    .line 44
    .line 45
    const/4 v12, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v12, v8

    .line 48
    :goto_0
    if-gt v12, v8, :cond_1

    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 57
    .line 58
    .line 59
    add-int/lit8 v12, v12, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    add-int/2addr v14, v9

    .line 71
    invoke-static {v11}, Ld7/u1;->r(Ljava/lang/Object;)Ld7/c5;

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    new-instance v10, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    .line 76
    .line 77
    new-array v1, v9, [I

    .line 78
    .line 79
    invoke-direct {v10, v15, v1}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;-><init>(Ljava/util/List;[I)V

    .line 80
    .line 81
    .line 82
    const/4 v1, 0x2

    .line 83
    if-lt v6, v1, :cond_2

    .line 84
    .line 85
    if-lt v14, v1, :cond_2

    .line 86
    .line 87
    const/4 v15, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 v15, 0x0

    .line 90
    :goto_1
    if-eqz v2, :cond_3

    .line 91
    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    const/4 v2, 0x0

    .line 97
    :goto_2
    add-int/lit8 v3, v12, 0x1

    .line 98
    .line 99
    if-lt v3, v6, :cond_4

    .line 100
    .line 101
    const/16 v18, 0x1

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    const/16 v18, 0x0

    .line 105
    .line 106
    :goto_3
    if-eqz v15, :cond_55

    .line 107
    .line 108
    if-eqz v2, :cond_55

    .line 109
    .line 110
    if-nez v18, :cond_5

    .line 111
    .line 112
    goto/16 :goto_3d

    .line 113
    .line 114
    :cond_5
    new-array v2, v1, [I

    .line 115
    .line 116
    aput v3, v2, v9

    .line 117
    .line 118
    aput v14, v2, v13

    .line 119
    .line 120
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 121
    .line 122
    invoke-static {v15, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, [[I

    .line 127
    .line 128
    new-array v15, v14, [I

    .line 129
    .line 130
    new-array v1, v14, [I

    .line 131
    .line 132
    aget-object v19, v2, v13

    .line 133
    .line 134
    aput v13, v19, v13

    .line 135
    .line 136
    aput v9, v15, v13

    .line 137
    .line 138
    aput v13, v1, v13

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    :goto_4
    if-ge v4, v14, :cond_8

    .line 142
    .line 143
    const/4 v7, 0x0

    .line 144
    const/16 v21, 0x0

    .line 145
    .line 146
    :goto_5
    if-gt v7, v12, :cond_7

    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 149
    .line 150
    .line 151
    move-result v22

    .line 152
    if-eqz v22, :cond_6

    .line 153
    .line 154
    aget-object v22, v2, v4

    .line 155
    .line 156
    add-int/lit8 v23, v21, 0x1

    .line 157
    .line 158
    aput v7, v22, v21

    .line 159
    .line 160
    aput v7, v1, v4

    .line 161
    .line 162
    move/from16 v21, v23

    .line 163
    .line 164
    :cond_6
    aput v21, v15, v4

    .line 165
    .line 166
    add-int/lit8 v7, v7, 0x1

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 170
    .line 171
    const/4 v7, 0x3

    .line 172
    goto :goto_4

    .line 173
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_c

    .line 178
    .line 179
    const/16 v4, 0x40

    .line 180
    .line 181
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_9

    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 191
    .line 192
    .line 193
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    const/4 v7, 0x0

    .line 198
    :goto_6
    if-ge v7, v4, :cond_c

    .line 199
    .line 200
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 201
    .line 202
    .line 203
    if-eqz v7, :cond_b

    .line 204
    .line 205
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 206
    .line 207
    .line 208
    move-result v21

    .line 209
    if-eqz v21, :cond_a

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_a
    const/4 v9, 0x0

    .line 213
    :cond_b
    :goto_7
    invoke-static {v0, v9, v8}, Landroidx/media3/container/NalUnitUtil;->skipH265HrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;ZI)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v7, v7, 0x1

    .line 217
    .line 218
    const/4 v9, 0x1

    .line 219
    goto :goto_6

    .line 220
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-nez v4, :cond_d

    .line 225
    .line 226
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 227
    .line 228
    const/16 v21, 0x0

    .line 229
    .line 230
    const/16 v18, 0x0

    .line 231
    .line 232
    const/16 v20, 0x0

    .line 233
    .line 234
    move-object/from16 v16, v0

    .line 235
    .line 236
    move-object/from16 v17, p1

    .line 237
    .line 238
    move-object/from16 v19, v10

    .line 239
    .line 240
    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    .line 241
    .line 242
    .line 243
    return-object v0

    .line 244
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->byteAlign()V

    .line 245
    .line 246
    .line 247
    invoke-static {v0, v13, v8, v11}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    const/16 v9, 0x10

    .line 256
    .line 257
    new-array v13, v9, [Z

    .line 258
    .line 259
    move-object/from16 v23, v1

    .line 260
    .line 261
    move-object/from16 v24, v4

    .line 262
    .line 263
    const/4 v1, 0x0

    .line 264
    const/4 v4, 0x0

    .line 265
    :goto_8
    if-ge v1, v9, :cond_f

    .line 266
    .line 267
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 268
    .line 269
    .line 270
    move-result v25

    .line 271
    aput-boolean v25, v13, v1

    .line 272
    .line 273
    if-eqz v25, :cond_e

    .line 274
    .line 275
    add-int/lit8 v4, v4, 0x1

    .line 276
    .line 277
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_f
    if-eqz v4, :cond_54

    .line 281
    .line 282
    const/4 v1, 0x1

    .line 283
    aget-boolean v25, v13, v1

    .line 284
    .line 285
    if-nez v25, :cond_10

    .line 286
    .line 287
    goto/16 :goto_3c

    .line 288
    .line 289
    :cond_10
    new-array v1, v4, [I

    .line 290
    .line 291
    move-object/from16 v26, v11

    .line 292
    .line 293
    const/4 v9, 0x0

    .line 294
    :goto_9
    sub-int v11, v4, v7

    .line 295
    .line 296
    if-ge v9, v11, :cond_11

    .line 297
    .line 298
    const/4 v11, 0x3

    .line 299
    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 300
    .line 301
    .line 302
    move-result v27

    .line 303
    aput v27, v1, v9

    .line 304
    .line 305
    add-int/lit8 v9, v9, 0x1

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_11
    add-int/lit8 v9, v4, 0x1

    .line 309
    .line 310
    new-array v9, v9, [I

    .line 311
    .line 312
    if-eqz v7, :cond_14

    .line 313
    .line 314
    const/4 v11, 0x1

    .line 315
    :goto_a
    if-ge v11, v4, :cond_13

    .line 316
    .line 317
    move-object/from16 v27, v2

    .line 318
    .line 319
    const/4 v2, 0x0

    .line 320
    :goto_b
    if-ge v2, v11, :cond_12

    .line 321
    .line 322
    aget v28, v9, v11

    .line 323
    .line 324
    aget v29, v1, v2

    .line 325
    .line 326
    const/16 v21, 0x1

    .line 327
    .line 328
    add-int/lit8 v29, v29, 0x1

    .line 329
    .line 330
    add-int v29, v29, v28

    .line 331
    .line 332
    aput v29, v9, v11

    .line 333
    .line 334
    add-int/lit8 v2, v2, 0x1

    .line 335
    .line 336
    goto :goto_b

    .line 337
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 338
    .line 339
    move-object/from16 v2, v27

    .line 340
    .line 341
    goto :goto_a

    .line 342
    :cond_13
    move-object/from16 v27, v2

    .line 343
    .line 344
    const/4 v2, 0x6

    .line 345
    aput v2, v9, v4

    .line 346
    .line 347
    :goto_c
    const/4 v2, 0x2

    .line 348
    goto :goto_d

    .line 349
    :cond_14
    move-object/from16 v27, v2

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :goto_d
    new-array v11, v2, [I

    .line 353
    .line 354
    const/4 v2, 0x1

    .line 355
    aput v4, v11, v2

    .line 356
    .line 357
    const/4 v2, 0x0

    .line 358
    aput v6, v11, v2

    .line 359
    .line 360
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 361
    .line 362
    invoke-static {v2, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    check-cast v2, [[I

    .line 367
    .line 368
    new-array v11, v6, [I

    .line 369
    .line 370
    const/16 v22, 0x0

    .line 371
    .line 372
    aput v22, v11, v22

    .line 373
    .line 374
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 375
    .line 376
    .line 377
    move-result v28

    .line 378
    move-object/from16 v29, v15

    .line 379
    .line 380
    const/4 v15, 0x1

    .line 381
    :goto_e
    if-ge v15, v6, :cond_19

    .line 382
    .line 383
    if-eqz v28, :cond_15

    .line 384
    .line 385
    move/from16 v30, v8

    .line 386
    .line 387
    const/4 v8, 0x6

    .line 388
    invoke-virtual {v0, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 389
    .line 390
    .line 391
    move-result v19

    .line 392
    aput v19, v11, v15

    .line 393
    .line 394
    goto :goto_f

    .line 395
    :cond_15
    move/from16 v30, v8

    .line 396
    .line 397
    const/4 v8, 0x6

    .line 398
    aput v15, v11, v15

    .line 399
    .line 400
    :goto_f
    if-nez v7, :cond_17

    .line 401
    .line 402
    const/4 v8, 0x0

    .line 403
    :goto_10
    if-ge v8, v4, :cond_16

    .line 404
    .line 405
    aget-object v31, v2, v15

    .line 406
    .line 407
    aget v32, v1, v8

    .line 408
    .line 409
    move-object/from16 v33, v1

    .line 410
    .line 411
    const/16 v21, 0x1

    .line 412
    .line 413
    add-int/lit8 v1, v32, 0x1

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    aput v1, v31, v8

    .line 420
    .line 421
    add-int/lit8 v8, v8, 0x1

    .line 422
    .line 423
    move-object/from16 v1, v33

    .line 424
    .line 425
    goto :goto_10

    .line 426
    :cond_16
    move-object/from16 v33, v1

    .line 427
    .line 428
    goto :goto_12

    .line 429
    :cond_17
    move-object/from16 v33, v1

    .line 430
    .line 431
    const/4 v1, 0x0

    .line 432
    :goto_11
    if-ge v1, v4, :cond_18

    .line 433
    .line 434
    aget-object v8, v2, v15

    .line 435
    .line 436
    aget v31, v11, v15

    .line 437
    .line 438
    add-int/lit8 v32, v1, 0x1

    .line 439
    .line 440
    aget v34, v9, v32

    .line 441
    .line 442
    const/16 v21, 0x1

    .line 443
    .line 444
    shl-int v34, v21, v34

    .line 445
    .line 446
    add-int/lit8 v34, v34, -0x1

    .line 447
    .line 448
    and-int v31, v31, v34

    .line 449
    .line 450
    aget v34, v9, v1

    .line 451
    .line 452
    shr-int v31, v31, v34

    .line 453
    .line 454
    aput v31, v8, v1

    .line 455
    .line 456
    move/from16 v1, v32

    .line 457
    .line 458
    goto :goto_11

    .line 459
    :cond_18
    :goto_12
    add-int/lit8 v15, v15, 0x1

    .line 460
    .line 461
    move/from16 v8, v30

    .line 462
    .line 463
    move-object/from16 v1, v33

    .line 464
    .line 465
    goto :goto_e

    .line 466
    :cond_19
    move/from16 v30, v8

    .line 467
    .line 468
    new-array v1, v3, [I

    .line 469
    .line 470
    const/4 v4, 0x1

    .line 471
    const/4 v7, 0x0

    .line 472
    :goto_13
    const/4 v8, -0x1

    .line 473
    if-ge v7, v6, :cond_20

    .line 474
    .line 475
    aget v9, v11, v7

    .line 476
    .line 477
    aput v8, v1, v9

    .line 478
    .line 479
    const/4 v8, 0x0

    .line 480
    const/4 v9, 0x0

    .line 481
    :goto_14
    const/16 v15, 0x10

    .line 482
    .line 483
    if-ge v8, v15, :cond_1c

    .line 484
    .line 485
    aget-boolean v19, v13, v8

    .line 486
    .line 487
    if-eqz v19, :cond_1b

    .line 488
    .line 489
    const/4 v15, 0x1

    .line 490
    if-ne v8, v15, :cond_1a

    .line 491
    .line 492
    aget v15, v11, v7

    .line 493
    .line 494
    aget-object v19, v2, v7

    .line 495
    .line 496
    aget v19, v19, v9

    .line 497
    .line 498
    aput v19, v1, v15

    .line 499
    .line 500
    :cond_1a
    add-int/lit8 v9, v9, 0x1

    .line 501
    .line 502
    :cond_1b
    add-int/lit8 v8, v8, 0x1

    .line 503
    .line 504
    goto :goto_14

    .line 505
    :cond_1c
    if-lez v7, :cond_1f

    .line 506
    .line 507
    const/4 v8, 0x0

    .line 508
    :goto_15
    if-ge v8, v7, :cond_1e

    .line 509
    .line 510
    aget v9, v11, v7

    .line 511
    .line 512
    aget v9, v1, v9

    .line 513
    .line 514
    aget v15, v11, v8

    .line 515
    .line 516
    aget v15, v1, v15

    .line 517
    .line 518
    if-ne v9, v15, :cond_1d

    .line 519
    .line 520
    goto :goto_16

    .line 521
    :cond_1d
    add-int/lit8 v8, v8, 0x1

    .line 522
    .line 523
    goto :goto_15

    .line 524
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    .line 525
    .line 526
    :cond_1f
    :goto_16
    add-int/lit8 v7, v7, 0x1

    .line 527
    .line 528
    goto :goto_13

    .line 529
    :cond_20
    const/4 v7, 0x4

    .line 530
    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    const/4 v7, 0x2

    .line 535
    if-lt v4, v7, :cond_53

    .line 536
    .line 537
    if-nez v2, :cond_21

    .line 538
    .line 539
    goto/16 :goto_3b

    .line 540
    .line 541
    :cond_21
    new-array v7, v4, [I

    .line 542
    .line 543
    const/4 v9, 0x0

    .line 544
    :goto_17
    if-ge v9, v4, :cond_22

    .line 545
    .line 546
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 547
    .line 548
    .line 549
    move-result v13

    .line 550
    aput v13, v7, v9

    .line 551
    .line 552
    add-int/lit8 v9, v9, 0x1

    .line 553
    .line 554
    goto :goto_17

    .line 555
    :cond_22
    new-array v2, v3, [I

    .line 556
    .line 557
    const/4 v9, 0x0

    .line 558
    :goto_18
    if-ge v9, v6, :cond_23

    .line 559
    .line 560
    aget v13, v11, v9

    .line 561
    .line 562
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    .line 563
    .line 564
    .line 565
    move-result v13

    .line 566
    aput v9, v2, v13

    .line 567
    .line 568
    add-int/lit8 v9, v9, 0x1

    .line 569
    .line 570
    goto :goto_18

    .line 571
    :cond_23
    invoke-static {}, Ld7/u1;->k()Ld7/s1;

    .line 572
    .line 573
    .line 574
    move-result-object v9

    .line 575
    const/4 v13, 0x0

    .line 576
    :goto_19
    if-gt v13, v12, :cond_25

    .line 577
    .line 578
    aget v15, v1, v13

    .line 579
    .line 580
    const/16 v17, 0x1

    .line 581
    .line 582
    add-int/lit8 v8, v4, -0x1

    .line 583
    .line 584
    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    .line 585
    .line 586
    .line 587
    move-result v8

    .line 588
    if-ltz v8, :cond_24

    .line 589
    .line 590
    aget v8, v7, v8

    .line 591
    .line 592
    goto :goto_1a

    .line 593
    :cond_24
    const/4 v8, -0x1

    .line 594
    :goto_1a
    new-instance v15, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    .line 595
    .line 596
    move-object/from16 v17, v1

    .line 597
    .line 598
    aget v1, v2, v13

    .line 599
    .line 600
    invoke-direct {v15, v1, v8}, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;-><init>(II)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v9, v15}, Ld7/s1;->c(Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    add-int/lit8 v13, v13, 0x1

    .line 607
    .line 608
    move-object/from16 v1, v17

    .line 609
    .line 610
    const/4 v8, -0x1

    .line 611
    goto :goto_19

    .line 612
    :cond_25
    invoke-virtual {v9}, Ld7/s1;->g()Ld7/c5;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    const/4 v2, 0x0

    .line 617
    invoke-virtual {v1, v2}, Ld7/c5;->get(I)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    check-cast v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    .line 622
    .line 623
    iget v2, v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    .line 624
    .line 625
    const/4 v4, -0x1

    .line 626
    if-ne v2, v4, :cond_26

    .line 627
    .line 628
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 629
    .line 630
    const/16 v21, 0x0

    .line 631
    .line 632
    const/16 v18, 0x0

    .line 633
    .line 634
    const/16 v20, 0x0

    .line 635
    .line 636
    move-object/from16 v16, v0

    .line 637
    .line 638
    move-object/from16 v17, p1

    .line 639
    .line 640
    move-object/from16 v19, v10

    .line 641
    .line 642
    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    .line 643
    .line 644
    .line 645
    return-object v0

    .line 646
    :cond_26
    const/4 v2, 0x1

    .line 647
    :goto_1b
    if-gt v2, v12, :cond_28

    .line 648
    .line 649
    invoke-virtual {v1, v2}, Ld7/c5;->get(I)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    check-cast v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    .line 654
    .line 655
    iget v4, v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    .line 656
    .line 657
    const/4 v7, -0x1

    .line 658
    if-eq v4, v7, :cond_27

    .line 659
    .line 660
    move v4, v2

    .line 661
    goto :goto_1c

    .line 662
    :cond_27
    add-int/lit8 v2, v2, 0x1

    .line 663
    .line 664
    goto :goto_1b

    .line 665
    :cond_28
    const/4 v7, -0x1

    .line 666
    const/4 v4, -0x1

    .line 667
    :goto_1c
    if-ne v4, v7, :cond_29

    .line 668
    .line 669
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 670
    .line 671
    const/16 v21, 0x0

    .line 672
    .line 673
    const/16 v18, 0x0

    .line 674
    .line 675
    const/16 v20, 0x0

    .line 676
    .line 677
    move-object/from16 v16, v0

    .line 678
    .line 679
    move-object/from16 v17, p1

    .line 680
    .line 681
    move-object/from16 v19, v10

    .line 682
    .line 683
    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    .line 684
    .line 685
    .line 686
    return-object v0

    .line 687
    :cond_29
    const/4 v2, 0x2

    .line 688
    new-array v7, v2, [I

    .line 689
    .line 690
    const/4 v8, 0x1

    .line 691
    aput v6, v7, v8

    .line 692
    .line 693
    const/4 v9, 0x0

    .line 694
    aput v6, v7, v9

    .line 695
    .line 696
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 697
    .line 698
    invoke-static {v12, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v7

    .line 702
    check-cast v7, [[Z

    .line 703
    .line 704
    new-array v13, v2, [I

    .line 705
    .line 706
    aput v6, v13, v8

    .line 707
    .line 708
    aput v6, v13, v9

    .line 709
    .line 710
    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    check-cast v2, [[Z

    .line 715
    .line 716
    const/4 v8, 0x1

    .line 717
    :goto_1d
    if-ge v8, v6, :cond_2b

    .line 718
    .line 719
    const/4 v9, 0x0

    .line 720
    :goto_1e
    if-ge v9, v8, :cond_2a

    .line 721
    .line 722
    aget-object v12, v7, v8

    .line 723
    .line 724
    aget-object v13, v2, v8

    .line 725
    .line 726
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 727
    .line 728
    .line 729
    move-result v15

    .line 730
    aput-boolean v15, v13, v9

    .line 731
    .line 732
    aput-boolean v15, v12, v9

    .line 733
    .line 734
    add-int/lit8 v9, v9, 0x1

    .line 735
    .line 736
    goto :goto_1e

    .line 737
    :cond_2a
    add-int/lit8 v8, v8, 0x1

    .line 738
    .line 739
    goto :goto_1d

    .line 740
    :cond_2b
    const/4 v8, 0x1

    .line 741
    :goto_1f
    if-ge v8, v6, :cond_2f

    .line 742
    .line 743
    const/4 v9, 0x0

    .line 744
    :goto_20
    if-ge v9, v5, :cond_2e

    .line 745
    .line 746
    const/4 v12, 0x0

    .line 747
    :goto_21
    if-ge v12, v8, :cond_2d

    .line 748
    .line 749
    aget-object v13, v2, v8

    .line 750
    .line 751
    aget-boolean v15, v13, v12

    .line 752
    .line 753
    if-eqz v15, :cond_2c

    .line 754
    .line 755
    aget-object v15, v2, v12

    .line 756
    .line 757
    aget-boolean v15, v15, v9

    .line 758
    .line 759
    if-eqz v15, :cond_2c

    .line 760
    .line 761
    const/4 v15, 0x1

    .line 762
    aput-boolean v15, v13, v9

    .line 763
    .line 764
    goto :goto_22

    .line 765
    :cond_2c
    add-int/lit8 v12, v12, 0x1

    .line 766
    .line 767
    goto :goto_21

    .line 768
    :cond_2d
    :goto_22
    add-int/lit8 v9, v9, 0x1

    .line 769
    .line 770
    goto :goto_20

    .line 771
    :cond_2e
    add-int/lit8 v8, v8, 0x1

    .line 772
    .line 773
    goto :goto_1f

    .line 774
    :cond_2f
    new-array v8, v3, [I

    .line 775
    .line 776
    const/4 v9, 0x0

    .line 777
    :goto_23
    if-ge v9, v6, :cond_31

    .line 778
    .line 779
    const/4 v12, 0x0

    .line 780
    const/4 v13, 0x0

    .line 781
    :goto_24
    if-ge v12, v9, :cond_30

    .line 782
    .line 783
    aget-object v15, v7, v9

    .line 784
    .line 785
    aget-boolean v15, v15, v12

    .line 786
    .line 787
    add-int/2addr v13, v15

    .line 788
    add-int/lit8 v12, v12, 0x1

    .line 789
    .line 790
    goto :goto_24

    .line 791
    :cond_30
    aget v12, v11, v9

    .line 792
    .line 793
    aput v13, v8, v12

    .line 794
    .line 795
    add-int/lit8 v9, v9, 0x1

    .line 796
    .line 797
    goto :goto_23

    .line 798
    :cond_31
    const/4 v9, 0x0

    .line 799
    const/4 v12, 0x0

    .line 800
    :goto_25
    if-ge v9, v6, :cond_33

    .line 801
    .line 802
    aget v13, v11, v9

    .line 803
    .line 804
    aget v13, v8, v13

    .line 805
    .line 806
    if-nez v13, :cond_32

    .line 807
    .line 808
    add-int/lit8 v12, v12, 0x1

    .line 809
    .line 810
    :cond_32
    add-int/lit8 v9, v9, 0x1

    .line 811
    .line 812
    goto :goto_25

    .line 813
    :cond_33
    const/4 v9, 0x1

    .line 814
    if-le v12, v9, :cond_34

    .line 815
    .line 816
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 817
    .line 818
    const/16 v21, 0x0

    .line 819
    .line 820
    const/16 v18, 0x0

    .line 821
    .line 822
    const/16 v20, 0x0

    .line 823
    .line 824
    move-object/from16 v16, v0

    .line 825
    .line 826
    move-object/from16 v17, p1

    .line 827
    .line 828
    move-object/from16 v19, v10

    .line 829
    .line 830
    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    .line 831
    .line 832
    .line 833
    return-object v0

    .line 834
    :cond_34
    new-array v9, v6, [I

    .line 835
    .line 836
    new-array v12, v14, [I

    .line 837
    .line 838
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 839
    .line 840
    .line 841
    move-result v13

    .line 842
    if-eqz v13, :cond_36

    .line 843
    .line 844
    const/4 v13, 0x0

    .line 845
    :goto_26
    if-ge v13, v6, :cond_35

    .line 846
    .line 847
    const/4 v15, 0x3

    .line 848
    invoke-virtual {v0, v15}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 849
    .line 850
    .line 851
    move-result v17

    .line 852
    aput v17, v9, v13

    .line 853
    .line 854
    add-int/lit8 v13, v13, 0x1

    .line 855
    .line 856
    goto :goto_26

    .line 857
    :cond_35
    move/from16 v13, v30

    .line 858
    .line 859
    goto :goto_27

    .line 860
    :cond_36
    move/from16 v13, v30

    .line 861
    .line 862
    const/4 v15, 0x0

    .line 863
    invoke-static {v9, v15, v6, v13}, Ljava/util/Arrays;->fill([IIII)V

    .line 864
    .line 865
    .line 866
    :goto_27
    const/4 v15, 0x0

    .line 867
    :goto_28
    if-ge v15, v14, :cond_38

    .line 868
    .line 869
    move-object/from16 v25, v2

    .line 870
    .line 871
    move-object/from16 v19, v8

    .line 872
    .line 873
    move-object/from16 v17, v11

    .line 874
    .line 875
    const/4 v8, 0x0

    .line 876
    const/4 v11, 0x0

    .line 877
    :goto_29
    aget v2, v29, v15

    .line 878
    .line 879
    if-ge v11, v2, :cond_37

    .line 880
    .line 881
    aget-object v2, v27, v15

    .line 882
    .line 883
    aget v2, v2, v11

    .line 884
    .line 885
    invoke-virtual {v1, v2}, Ld7/c5;->get(I)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    check-cast v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    .line 890
    .line 891
    iget v2, v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    .line 892
    .line 893
    aget v2, v9, v2

    .line 894
    .line 895
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 896
    .line 897
    .line 898
    move-result v8

    .line 899
    add-int/lit8 v11, v11, 0x1

    .line 900
    .line 901
    goto :goto_29

    .line 902
    :cond_37
    add-int/lit8 v8, v8, 0x1

    .line 903
    .line 904
    aput v8, v12, v15

    .line 905
    .line 906
    add-int/lit8 v15, v15, 0x1

    .line 907
    .line 908
    move-object/from16 v11, v17

    .line 909
    .line 910
    move-object/from16 v8, v19

    .line 911
    .line 912
    move-object/from16 v2, v25

    .line 913
    .line 914
    goto :goto_28

    .line 915
    :cond_38
    move-object/from16 v25, v2

    .line 916
    .line 917
    move-object/from16 v19, v8

    .line 918
    .line 919
    move-object/from16 v17, v11

    .line 920
    .line 921
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 922
    .line 923
    .line 924
    move-result v2

    .line 925
    if-eqz v2, :cond_3b

    .line 926
    .line 927
    const/4 v2, 0x0

    .line 928
    :goto_2a
    if-ge v2, v5, :cond_3b

    .line 929
    .line 930
    add-int/lit8 v8, v2, 0x1

    .line 931
    .line 932
    move v9, v8

    .line 933
    :goto_2b
    if-ge v9, v6, :cond_3a

    .line 934
    .line 935
    aget-object v11, v7, v9

    .line 936
    .line 937
    aget-boolean v11, v11, v2

    .line 938
    .line 939
    if-eqz v11, :cond_39

    .line 940
    .line 941
    const/4 v11, 0x3

    .line 942
    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 943
    .line 944
    .line 945
    goto :goto_2c

    .line 946
    :cond_39
    const/4 v11, 0x3

    .line 947
    :goto_2c
    add-int/lit8 v9, v9, 0x1

    .line 948
    .line 949
    goto :goto_2b

    .line 950
    :cond_3a
    move v2, v8

    .line 951
    goto :goto_2a

    .line 952
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 953
    .line 954
    .line 955
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 956
    .line 957
    .line 958
    move-result v2

    .line 959
    const/4 v5, 0x1

    .line 960
    add-int/2addr v2, v5

    .line 961
    invoke-static {}, Ld7/u1;->k()Ld7/s1;

    .line 962
    .line 963
    .line 964
    move-result-object v8

    .line 965
    move-object/from16 v9, v26

    .line 966
    .line 967
    invoke-virtual {v8, v9}, Ld7/s1;->c(Ljava/lang/Object;)V

    .line 968
    .line 969
    .line 970
    if-le v2, v5, :cond_3c

    .line 971
    .line 972
    move-object/from16 v5, v24

    .line 973
    .line 974
    invoke-virtual {v8, v5}, Ld7/s1;->c(Ljava/lang/Object;)V

    .line 975
    .line 976
    .line 977
    const/4 v9, 0x2

    .line 978
    :goto_2d
    if-ge v9, v2, :cond_3c

    .line 979
    .line 980
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 981
    .line 982
    .line 983
    move-result v11

    .line 984
    invoke-static {v0, v11, v13, v5}, Landroidx/media3/container/NalUnitUtil;->parseH265ProfileTierLevel(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 985
    .line 986
    .line 987
    move-result-object v5

    .line 988
    invoke-virtual {v8, v5}, Ld7/s1;->c(Ljava/lang/Object;)V

    .line 989
    .line 990
    .line 991
    add-int/lit8 v9, v9, 0x1

    .line 992
    .line 993
    goto :goto_2d

    .line 994
    :cond_3c
    invoke-virtual {v8}, Ld7/s1;->g()Ld7/c5;

    .line 995
    .line 996
    .line 997
    move-result-object v5

    .line 998
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 999
    .line 1000
    .line 1001
    move-result v8

    .line 1002
    add-int/2addr v8, v14

    .line 1003
    if-le v8, v14, :cond_3d

    .line 1004
    .line 1005
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1006
    .line 1007
    const/16 v21, 0x0

    .line 1008
    .line 1009
    const/16 v18, 0x0

    .line 1010
    .line 1011
    const/16 v20, 0x0

    .line 1012
    .line 1013
    move-object/from16 v16, v0

    .line 1014
    .line 1015
    move-object/from16 v17, p1

    .line 1016
    .line 1017
    move-object/from16 v19, v10

    .line 1018
    .line 1019
    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    .line 1020
    .line 1021
    .line 1022
    return-object v0

    .line 1023
    :cond_3d
    const/4 v9, 0x2

    .line 1024
    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 1025
    .line 1026
    .line 1027
    move-result v11

    .line 1028
    new-array v13, v9, [I

    .line 1029
    .line 1030
    const/4 v9, 0x1

    .line 1031
    aput v3, v13, v9

    .line 1032
    .line 1033
    const/4 v9, 0x0

    .line 1034
    aput v8, v13, v9

    .line 1035
    .line 1036
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 1037
    .line 1038
    invoke-static {v15, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v13

    .line 1042
    check-cast v13, [[Z

    .line 1043
    .line 1044
    new-array v15, v8, [I

    .line 1045
    .line 1046
    new-array v9, v8, [I

    .line 1047
    .line 1048
    move-object/from16 v20, v5

    .line 1049
    .line 1050
    const/4 v5, 0x0

    .line 1051
    :goto_2e
    if-ge v5, v14, :cond_42

    .line 1052
    .line 1053
    move/from16 v24, v14

    .line 1054
    .line 1055
    const/4 v14, 0x0

    .line 1056
    aput v14, v15, v5

    .line 1057
    .line 1058
    aget v22, v23, v5

    .line 1059
    .line 1060
    aput v22, v9, v5

    .line 1061
    .line 1062
    if-nez v11, :cond_3e

    .line 1063
    .line 1064
    move-object/from16 v26, v7

    .line 1065
    .line 1066
    aget-object v7, v13, v5

    .line 1067
    .line 1068
    move-object/from16 v28, v12

    .line 1069
    .line 1070
    aget v12, v29, v5

    .line 1071
    .line 1072
    move/from16 v30, v6

    .line 1073
    .line 1074
    const/4 v6, 0x1

    .line 1075
    invoke-static {v7, v14, v12, v6}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1076
    .line 1077
    .line 1078
    aget v7, v29, v5

    .line 1079
    .line 1080
    aput v7, v15, v5

    .line 1081
    .line 1082
    const/4 v6, 0x0

    .line 1083
    const/4 v7, 0x1

    .line 1084
    goto :goto_31

    .line 1085
    :cond_3e
    move/from16 v30, v6

    .line 1086
    .line 1087
    move-object/from16 v26, v7

    .line 1088
    .line 1089
    move-object/from16 v28, v12

    .line 1090
    .line 1091
    const/4 v6, 0x1

    .line 1092
    if-ne v11, v6, :cond_41

    .line 1093
    .line 1094
    aget v6, v23, v5

    .line 1095
    .line 1096
    const/4 v7, 0x0

    .line 1097
    :goto_2f
    aget v12, v29, v5

    .line 1098
    .line 1099
    if-ge v7, v12, :cond_40

    .line 1100
    .line 1101
    aget-object v12, v13, v5

    .line 1102
    .line 1103
    aget-object v14, v27, v5

    .line 1104
    .line 1105
    aget v14, v14, v7

    .line 1106
    .line 1107
    if-ne v14, v6, :cond_3f

    .line 1108
    .line 1109
    const/4 v14, 0x1

    .line 1110
    goto :goto_30

    .line 1111
    :cond_3f
    const/4 v14, 0x0

    .line 1112
    :goto_30
    aput-boolean v14, v12, v7

    .line 1113
    .line 1114
    add-int/lit8 v7, v7, 0x1

    .line 1115
    .line 1116
    goto :goto_2f

    .line 1117
    :cond_40
    const/4 v7, 0x1

    .line 1118
    aput v7, v15, v5

    .line 1119
    .line 1120
    const/4 v6, 0x0

    .line 1121
    goto :goto_31

    .line 1122
    :cond_41
    const/4 v6, 0x0

    .line 1123
    const/4 v7, 0x1

    .line 1124
    aget-object v12, v13, v6

    .line 1125
    .line 1126
    aput-boolean v7, v12, v6

    .line 1127
    .line 1128
    aput v7, v15, v6

    .line 1129
    .line 1130
    :goto_31
    add-int/lit8 v5, v5, 0x1

    .line 1131
    .line 1132
    move/from16 v14, v24

    .line 1133
    .line 1134
    move-object/from16 v7, v26

    .line 1135
    .line 1136
    move-object/from16 v12, v28

    .line 1137
    .line 1138
    move/from16 v6, v30

    .line 1139
    .line 1140
    goto :goto_2e

    .line 1141
    :cond_42
    move/from16 v30, v6

    .line 1142
    .line 1143
    move-object/from16 v26, v7

    .line 1144
    .line 1145
    move-object/from16 v28, v12

    .line 1146
    .line 1147
    move/from16 v24, v14

    .line 1148
    .line 1149
    const/4 v6, 0x0

    .line 1150
    const/4 v7, 0x1

    .line 1151
    new-array v5, v3, [I

    .line 1152
    .line 1153
    const/4 v12, 0x2

    .line 1154
    new-array v14, v12, [I

    .line 1155
    .line 1156
    aput v3, v14, v7

    .line 1157
    .line 1158
    aput v8, v14, v6

    .line 1159
    .line 1160
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 1161
    .line 1162
    invoke-static {v3, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v3

    .line 1166
    check-cast v3, [[Z

    .line 1167
    .line 1168
    const/4 v6, 0x1

    .line 1169
    const/4 v7, 0x0

    .line 1170
    :goto_32
    if-ge v6, v8, :cond_4e

    .line 1171
    .line 1172
    if-ne v11, v12, :cond_44

    .line 1173
    .line 1174
    const/4 v12, 0x0

    .line 1175
    :goto_33
    aget v14, v29, v6

    .line 1176
    .line 1177
    if-ge v12, v14, :cond_44

    .line 1178
    .line 1179
    aget-object v14, v13, v6

    .line 1180
    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 1182
    .line 1183
    .line 1184
    move-result v23

    .line 1185
    aput-boolean v23, v14, v12

    .line 1186
    .line 1187
    aget v14, v15, v6

    .line 1188
    .line 1189
    aget-object v23, v13, v6

    .line 1190
    .line 1191
    aget-boolean v23, v23, v12

    .line 1192
    .line 1193
    add-int v14, v14, v23

    .line 1194
    .line 1195
    aput v14, v15, v6

    .line 1196
    .line 1197
    if-eqz v23, :cond_43

    .line 1198
    .line 1199
    aget-object v14, v27, v6

    .line 1200
    .line 1201
    aget v14, v14, v12

    .line 1202
    .line 1203
    aput v14, v9, v6

    .line 1204
    .line 1205
    :cond_43
    add-int/lit8 v12, v12, 0x1

    .line 1206
    .line 1207
    goto :goto_33

    .line 1208
    :cond_44
    if-nez v7, :cond_46

    .line 1209
    .line 1210
    aget-object v12, v27, v6

    .line 1211
    .line 1212
    const/4 v14, 0x0

    .line 1213
    aget v12, v12, v14

    .line 1214
    .line 1215
    if-nez v12, :cond_46

    .line 1216
    .line 1217
    aget-object v12, v13, v6

    .line 1218
    .line 1219
    aget-boolean v12, v12, v14

    .line 1220
    .line 1221
    if-eqz v12, :cond_46

    .line 1222
    .line 1223
    const/4 v12, 0x1

    .line 1224
    :goto_34
    aget v14, v29, v6

    .line 1225
    .line 1226
    if-ge v12, v14, :cond_46

    .line 1227
    .line 1228
    aget-object v14, v27, v6

    .line 1229
    .line 1230
    aget v14, v14, v12

    .line 1231
    .line 1232
    if-ne v14, v4, :cond_45

    .line 1233
    .line 1234
    aget-object v14, v13, v6

    .line 1235
    .line 1236
    aget-boolean v14, v14, v4

    .line 1237
    .line 1238
    if-eqz v14, :cond_45

    .line 1239
    .line 1240
    move v7, v6

    .line 1241
    :cond_45
    add-int/lit8 v12, v12, 0x1

    .line 1242
    .line 1243
    goto :goto_34

    .line 1244
    :cond_46
    const/4 v12, 0x0

    .line 1245
    :goto_35
    aget v14, v29, v6

    .line 1246
    .line 1247
    if-ge v12, v14, :cond_4c

    .line 1248
    .line 1249
    const/4 v14, 0x1

    .line 1250
    if-le v2, v14, :cond_4a

    .line 1251
    .line 1252
    aget-object v14, v3, v6

    .line 1253
    .line 1254
    aget-object v23, v13, v6

    .line 1255
    .line 1256
    aget-boolean v23, v23, v12

    .line 1257
    .line 1258
    aput-boolean v23, v14, v12

    .line 1259
    .line 1260
    move-object/from16 v23, v13

    .line 1261
    .line 1262
    int-to-double v13, v2

    .line 1263
    move/from16 v31, v2

    .line 1264
    .line 1265
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 1266
    .line 1267
    invoke-static {v13, v14, v2}, Lf7/b;->c(DLjava/math/RoundingMode;)I

    .line 1268
    .line 1269
    .line 1270
    move-result v2

    .line 1271
    aget-object v13, v3, v6

    .line 1272
    .line 1273
    aget-boolean v13, v13, v12

    .line 1274
    .line 1275
    if-nez v13, :cond_48

    .line 1276
    .line 1277
    aget-object v13, v27, v6

    .line 1278
    .line 1279
    aget v13, v13, v12

    .line 1280
    .line 1281
    invoke-virtual {v1, v13}, Ld7/c5;->get(I)Ljava/lang/Object;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v13

    .line 1285
    check-cast v13, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    .line 1286
    .line 1287
    iget v13, v13, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    .line 1288
    .line 1289
    const/4 v14, 0x0

    .line 1290
    :goto_36
    if-ge v14, v12, :cond_48

    .line 1291
    .line 1292
    aget-object v32, v27, v6

    .line 1293
    .line 1294
    move/from16 v33, v4

    .line 1295
    .line 1296
    aget v4, v32, v14

    .line 1297
    .line 1298
    invoke-virtual {v1, v4}, Ld7/c5;->get(I)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v4

    .line 1302
    check-cast v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    .line 1303
    .line 1304
    iget v4, v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    .line 1305
    .line 1306
    aget-object v32, v25, v13

    .line 1307
    .line 1308
    aget-boolean v4, v32, v4

    .line 1309
    .line 1310
    if-eqz v4, :cond_47

    .line 1311
    .line 1312
    aget-object v4, v3, v6

    .line 1313
    .line 1314
    const/4 v13, 0x1

    .line 1315
    aput-boolean v13, v4, v12

    .line 1316
    .line 1317
    goto :goto_37

    .line 1318
    :cond_47
    add-int/lit8 v14, v14, 0x1

    .line 1319
    .line 1320
    move/from16 v4, v33

    .line 1321
    .line 1322
    goto :goto_36

    .line 1323
    :cond_48
    move/from16 v33, v4

    .line 1324
    .line 1325
    :goto_37
    aget-object v4, v3, v6

    .line 1326
    .line 1327
    aget-boolean v4, v4, v12

    .line 1328
    .line 1329
    if-eqz v4, :cond_4b

    .line 1330
    .line 1331
    if-lez v7, :cond_49

    .line 1332
    .line 1333
    if-ne v6, v7, :cond_49

    .line 1334
    .line 1335
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 1336
    .line 1337
    .line 1338
    move-result v2

    .line 1339
    aput v2, v5, v12

    .line 1340
    .line 1341
    goto :goto_38

    .line 1342
    :cond_49
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1343
    .line 1344
    .line 1345
    goto :goto_38

    .line 1346
    :cond_4a
    move/from16 v31, v2

    .line 1347
    .line 1348
    move/from16 v33, v4

    .line 1349
    .line 1350
    move-object/from16 v23, v13

    .line 1351
    .line 1352
    :cond_4b
    :goto_38
    add-int/lit8 v12, v12, 0x1

    .line 1353
    .line 1354
    move-object/from16 v13, v23

    .line 1355
    .line 1356
    move/from16 v2, v31

    .line 1357
    .line 1358
    move/from16 v4, v33

    .line 1359
    .line 1360
    goto :goto_35

    .line 1361
    :cond_4c
    move/from16 v31, v2

    .line 1362
    .line 1363
    move/from16 v33, v4

    .line 1364
    .line 1365
    move-object/from16 v23, v13

    .line 1366
    .line 1367
    aget v2, v15, v6

    .line 1368
    .line 1369
    const/4 v4, 0x1

    .line 1370
    if-ne v2, v4, :cond_4d

    .line 1371
    .line 1372
    aget v2, v9, v6

    .line 1373
    .line 1374
    aget v2, v19, v2

    .line 1375
    .line 1376
    if-lez v2, :cond_4d

    .line 1377
    .line 1378
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1379
    .line 1380
    .line 1381
    :cond_4d
    add-int/lit8 v6, v6, 0x1

    .line 1382
    .line 1383
    move-object/from16 v13, v23

    .line 1384
    .line 1385
    move/from16 v2, v31

    .line 1386
    .line 1387
    move/from16 v4, v33

    .line 1388
    .line 1389
    const/4 v12, 0x2

    .line 1390
    goto/16 :goto_32

    .line 1391
    .line 1392
    :cond_4e
    const/4 v4, 0x1

    .line 1393
    if-nez v7, :cond_4f

    .line 1394
    .line 1395
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1396
    .line 1397
    const/16 v21, 0x0

    .line 1398
    .line 1399
    const/16 v18, 0x0

    .line 1400
    .line 1401
    const/16 v20, 0x0

    .line 1402
    .line 1403
    move-object/from16 v16, v0

    .line 1404
    .line 1405
    move-object/from16 v17, p1

    .line 1406
    .line 1407
    move-object/from16 v19, v10

    .line 1408
    .line 1409
    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    .line 1410
    .line 1411
    .line 1412
    return-object v0

    .line 1413
    :cond_4f
    move/from16 v2, v30

    .line 1414
    .line 1415
    invoke-static {v0, v2}, Landroidx/media3/container/NalUnitUtil;->parseH265RepFormatsAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;I)Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v35

    .line 1419
    const/4 v6, 0x2

    .line 1420
    invoke-virtual {v0, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 1421
    .line 1422
    .line 1423
    const/4 v9, 0x1

    .line 1424
    :goto_39
    if-ge v9, v2, :cond_51

    .line 1425
    .line 1426
    aget v4, v17, v9

    .line 1427
    .line 1428
    aget v4, v19, v4

    .line 1429
    .line 1430
    if-nez v4, :cond_50

    .line 1431
    .line 1432
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 1433
    .line 1434
    .line 1435
    :cond_50
    add-int/lit8 v9, v9, 0x1

    .line 1436
    .line 1437
    goto :goto_39

    .line 1438
    :cond_51
    move-object/from16 v6, v28

    .line 1439
    .line 1440
    move-object/from16 v4, v29

    .line 1441
    .line 1442
    invoke-static {v0, v8, v6, v4, v3}, Landroidx/media3/container/NalUnitUtil;->skipH265DpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[I[I[[Z)V

    .line 1443
    .line 1444
    .line 1445
    move-object/from16 v7, v26

    .line 1446
    .line 1447
    invoke-static {v0, v2, v7}, Landroidx/media3/container/NalUnitUtil;->skipToH265VuiPresentFlagAfterDpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[[Z)V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 1451
    .line 1452
    .line 1453
    move-result v3

    .line 1454
    if-eqz v3, :cond_52

    .line 1455
    .line 1456
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->byteAlign()V

    .line 1457
    .line 1458
    .line 1459
    move/from16 v14, v24

    .line 1460
    .line 1461
    invoke-static {v0, v2, v14, v6}, Landroidx/media3/container/NalUnitUtil;->parseH265VideoSignalInfosAndIndices(Landroidx/media3/container/ParsableNalUnitBitArray;II[I)Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v10

    .line 1465
    move-object/from16 v36, v10

    .line 1466
    .line 1467
    goto :goto_3a

    .line 1468
    :cond_52
    const/16 v36, 0x0

    .line 1469
    .line 1470
    :goto_3a
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1471
    .line 1472
    new-instance v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    .line 1473
    .line 1474
    move-object/from16 v3, v20

    .line 1475
    .line 1476
    invoke-direct {v2, v3, v5}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;-><init>(Ljava/util/List;[I)V

    .line 1477
    .line 1478
    .line 1479
    move-object/from16 v31, v0

    .line 1480
    .line 1481
    move-object/from16 v32, p1

    .line 1482
    .line 1483
    move-object/from16 v33, v1

    .line 1484
    .line 1485
    move-object/from16 v34, v2

    .line 1486
    .line 1487
    invoke-direct/range {v31 .. v36}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    .line 1488
    .line 1489
    .line 1490
    return-object v0

    .line 1491
    :cond_53
    :goto_3b
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1492
    .line 1493
    const/16 v21, 0x0

    .line 1494
    .line 1495
    const/16 v18, 0x0

    .line 1496
    .line 1497
    const/16 v20, 0x0

    .line 1498
    .line 1499
    move-object/from16 v16, v0

    .line 1500
    .line 1501
    move-object/from16 v17, p1

    .line 1502
    .line 1503
    move-object/from16 v19, v10

    .line 1504
    .line 1505
    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    .line 1506
    .line 1507
    .line 1508
    return-object v0

    .line 1509
    :cond_54
    :goto_3c
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1510
    .line 1511
    const/16 v21, 0x0

    .line 1512
    .line 1513
    const/16 v18, 0x0

    .line 1514
    .line 1515
    const/16 v20, 0x0

    .line 1516
    .line 1517
    move-object/from16 v16, v0

    .line 1518
    .line 1519
    move-object/from16 v17, p1

    .line 1520
    .line 1521
    move-object/from16 v19, v10

    .line 1522
    .line 1523
    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    .line 1524
    .line 1525
    .line 1526
    return-object v0

    .line 1527
    :cond_55
    :goto_3d
    new-instance v0, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 1528
    .line 1529
    const/16 v21, 0x0

    .line 1530
    .line 1531
    const/16 v18, 0x0

    .line 1532
    .line 1533
    const/16 v20, 0x0

    .line 1534
    .line 1535
    move-object/from16 v16, v0

    .line 1536
    .line 1537
    move-object/from16 v17, p1

    .line 1538
    .line 1539
    move-object/from16 v19, v10

    .line 1540
    .line 1541
    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    .line 1542
    .line 1543
    .line 1544
    return-object v0
.end method

.method public static parsePpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/media3/container/NalUnitUtil;->parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    new-instance v0, Landroidx/media3/container/NalUnitUtil$PpsData;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 32

    .line 1
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    move/from16 v3, p2

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/16 v2, 0x56

    .line 31
    .line 32
    const/16 v7, 0x2c

    .line 33
    .line 34
    const/16 v8, 0xf4

    .line 35
    .line 36
    const/16 v9, 0x7a

    .line 37
    .line 38
    const/16 v10, 0x6e

    .line 39
    .line 40
    const/4 v11, 0x3

    .line 41
    const/16 v12, 0x10

    .line 42
    .line 43
    const/4 v13, 0x1

    .line 44
    const/16 v15, 0x64

    .line 45
    .line 46
    if-eq v3, v15, :cond_1

    .line 47
    .line 48
    if-eq v3, v10, :cond_1

    .line 49
    .line 50
    if-eq v3, v9, :cond_1

    .line 51
    .line 52
    if-eq v3, v8, :cond_1

    .line 53
    .line 54
    if-eq v3, v7, :cond_1

    .line 55
    .line 56
    const/16 v14, 0x53

    .line 57
    .line 58
    if-eq v3, v14, :cond_1

    .line 59
    .line 60
    if-eq v3, v2, :cond_1

    .line 61
    .line 62
    const/16 v14, 0x76

    .line 63
    .line 64
    if-eq v3, v14, :cond_1

    .line 65
    .line 66
    const/16 v14, 0x80

    .line 67
    .line 68
    if-eq v3, v14, :cond_1

    .line 69
    .line 70
    const/16 v14, 0x8a

    .line 71
    .line 72
    if-ne v3, v14, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const/4 v14, 0x1

    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    const/16 v17, 0x0

    .line 79
    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    if-ne v14, v11, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 90
    .line 91
    .line 92
    move-result v16

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/16 v16, 0x0

    .line 95
    .line 96
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 97
    .line 98
    .line 99
    move-result v17

    .line 100
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 101
    .line 102
    .line 103
    move-result v18

    .line 104
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 108
    .line 109
    .line 110
    move-result v19

    .line 111
    if-eqz v19, :cond_6

    .line 112
    .line 113
    if-eq v14, v11, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    const/16 v19, 0xc

    .line 117
    .line 118
    const/16 v1, 0xc

    .line 119
    .line 120
    :goto_2
    const/4 v8, 0x0

    .line 121
    :goto_3
    if-ge v8, v1, :cond_6

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 124
    .line 125
    .line 126
    move-result v19

    .line 127
    if-eqz v19, :cond_5

    .line 128
    .line 129
    const/4 v9, 0x6

    .line 130
    if-ge v8, v9, :cond_4

    .line 131
    .line 132
    const/16 v9, 0x10

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_4
    const/16 v9, 0x40

    .line 136
    .line 137
    :goto_4
    invoke-static {v0, v9}, Landroidx/media3/container/NalUnitUtil;->skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V

    .line 138
    .line 139
    .line 140
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 141
    .line 142
    const/16 v9, 0x7a

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_6
    :goto_5
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    add-int/lit8 v1, v1, 0x4

    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-nez v9, :cond_7

    .line 156
    .line 157
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    add-int/lit8 v8, v8, 0x4

    .line 162
    .line 163
    move/from16 v21, v3

    .line 164
    .line 165
    move/from16 v24, v8

    .line 166
    .line 167
    :goto_6
    const/16 v25, 0x0

    .line 168
    .line 169
    goto :goto_8

    .line 170
    :cond_7
    if-ne v9, v13, :cond_9

    .line 171
    .line 172
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    move/from16 v21, v3

    .line 187
    .line 188
    int-to-long v2, v10

    .line 189
    move/from16 v24, v8

    .line 190
    .line 191
    const/4 v10, 0x0

    .line 192
    :goto_7
    int-to-long v7, v10

    .line 193
    cmp-long v25, v7, v2

    .line 194
    .line 195
    if-gez v25, :cond_8

    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 198
    .line 199
    .line 200
    add-int/lit8 v10, v10, 0x1

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_8
    move/from16 v25, v24

    .line 204
    .line 205
    const/16 v24, 0x0

    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_9
    move/from16 v21, v3

    .line 209
    .line 210
    const/16 v24, 0x0

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :goto_8
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    add-int/2addr v2, v13

    .line 225
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    add-int/2addr v3, v13

    .line 230
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 231
    .line 232
    .line 233
    move-result v26

    .line 234
    rsub-int/lit8 v8, v26, 0x2

    .line 235
    .line 236
    mul-int v8, v8, v3

    .line 237
    .line 238
    if-nez v26, :cond_a

    .line 239
    .line 240
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 241
    .line 242
    .line 243
    :cond_a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 244
    .line 245
    .line 246
    mul-int/lit8 v2, v2, 0x10

    .line 247
    .line 248
    mul-int/lit8 v8, v8, 0x10

    .line 249
    .line 250
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_e

    .line 255
    .line 256
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 261
    .line 262
    .line 263
    move-result v27

    .line 264
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 265
    .line 266
    .line 267
    move-result v28

    .line 268
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 269
    .line 270
    .line 271
    move-result v29

    .line 272
    if-nez v14, :cond_b

    .line 273
    .line 274
    rsub-int/lit8 v14, v26, 0x2

    .line 275
    .line 276
    const/16 v30, 0x1

    .line 277
    .line 278
    goto :goto_b

    .line 279
    :cond_b
    if-ne v14, v11, :cond_c

    .line 280
    .line 281
    const/16 v30, 0x1

    .line 282
    .line 283
    goto :goto_9

    .line 284
    :cond_c
    const/16 v30, 0x2

    .line 285
    .line 286
    :goto_9
    if-ne v14, v13, :cond_d

    .line 287
    .line 288
    const/4 v14, 0x2

    .line 289
    goto :goto_a

    .line 290
    :cond_d
    const/4 v14, 0x1

    .line 291
    :goto_a
    rsub-int/lit8 v31, v26, 0x2

    .line 292
    .line 293
    mul-int v14, v14, v31

    .line 294
    .line 295
    :goto_b
    add-int v3, v3, v27

    .line 296
    .line 297
    mul-int v3, v3, v30

    .line 298
    .line 299
    sub-int/2addr v2, v3

    .line 300
    add-int v28, v28, v29

    .line 301
    .line 302
    mul-int v28, v28, v14

    .line 303
    .line 304
    sub-int v8, v8, v28

    .line 305
    .line 306
    :cond_e
    move v14, v8

    .line 307
    move/from16 v3, v21

    .line 308
    .line 309
    move v8, v2

    .line 310
    const/16 v2, 0x2c

    .line 311
    .line 312
    if-eq v3, v2, :cond_f

    .line 313
    .line 314
    const/16 v2, 0x56

    .line 315
    .line 316
    if-eq v3, v2, :cond_f

    .line 317
    .line 318
    if-eq v3, v15, :cond_f

    .line 319
    .line 320
    const/16 v2, 0x6e

    .line 321
    .line 322
    if-eq v3, v2, :cond_f

    .line 323
    .line 324
    const/16 v2, 0x7a

    .line 325
    .line 326
    if-eq v3, v2, :cond_f

    .line 327
    .line 328
    const/16 v2, 0xf4

    .line 329
    .line 330
    if-ne v3, v2, :cond_10

    .line 331
    .line 332
    :cond_f
    and-int/lit8 v2, v4, 0x10

    .line 333
    .line 334
    if-eqz v2, :cond_10

    .line 335
    .line 336
    const/4 v2, 0x0

    .line 337
    goto :goto_c

    .line 338
    :cond_10
    const/16 v2, 0x10

    .line 339
    .line 340
    :goto_c
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 341
    .line 342
    .line 343
    move-result v15

    .line 344
    const/16 v19, -0x1

    .line 345
    .line 346
    const/high16 v20, 0x3f800000    # 1.0f

    .line 347
    .line 348
    if-eqz v15, :cond_1f

    .line 349
    .line 350
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 351
    .line 352
    .line 353
    move-result v15

    .line 354
    if-eqz v15, :cond_13

    .line 355
    .line 356
    const/16 v15, 0x8

    .line 357
    .line 358
    invoke-virtual {v0, v15}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 359
    .line 360
    .line 361
    move-result v10

    .line 362
    const/16 v15, 0xff

    .line 363
    .line 364
    if-ne v10, v15, :cond_11

    .line 365
    .line 366
    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 371
    .line 372
    .line 373
    move-result v12

    .line 374
    if-eqz v10, :cond_13

    .line 375
    .line 376
    if-eqz v12, :cond_13

    .line 377
    .line 378
    int-to-float v10, v10

    .line 379
    int-to-float v12, v12

    .line 380
    div-float v20, v10, v12

    .line 381
    .line 382
    goto :goto_d

    .line 383
    :cond_11
    sget-object v12, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 384
    .line 385
    array-length v15, v12

    .line 386
    if-ge v10, v15, :cond_12

    .line 387
    .line 388
    aget v20, v12, v10

    .line 389
    .line 390
    goto :goto_d

    .line 391
    :cond_12
    const-string v12, "Unexpected aspect_ratio_idc value: "

    .line 392
    .line 393
    const-string v15, "NalUnitUtil"

    .line 394
    .line 395
    invoke-static {v10, v12, v15}, La/e;->y(ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    :cond_13
    :goto_d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 399
    .line 400
    .line 401
    move-result v10

    .line 402
    if-eqz v10, :cond_14

    .line 403
    .line 404
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 405
    .line 406
    .line 407
    :cond_14
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 408
    .line 409
    .line 410
    move-result v10

    .line 411
    if-eqz v10, :cond_17

    .line 412
    .line 413
    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 417
    .line 418
    .line 419
    move-result v10

    .line 420
    if-eqz v10, :cond_15

    .line 421
    .line 422
    goto :goto_e

    .line 423
    :cond_15
    const/4 v13, 0x2

    .line 424
    :goto_e
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 425
    .line 426
    .line 427
    move-result v10

    .line 428
    if-eqz v10, :cond_16

    .line 429
    .line 430
    const/16 v10, 0x8

    .line 431
    .line 432
    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 433
    .line 434
    .line 435
    move-result v11

    .line 436
    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    .line 437
    .line 438
    .line 439
    move-result v12

    .line 440
    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 441
    .line 442
    .line 443
    invoke-static {v11}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    .line 444
    .line 445
    .line 446
    move-result v19

    .line 447
    invoke-static {v12}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    .line 448
    .line 449
    .line 450
    move-result v10

    .line 451
    goto :goto_f

    .line 452
    :cond_16
    const/4 v10, -0x1

    .line 453
    goto :goto_f

    .line 454
    :cond_17
    const/4 v10, -0x1

    .line 455
    const/4 v13, -0x1

    .line 456
    :goto_f
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 457
    .line 458
    .line 459
    move-result v11

    .line 460
    if-eqz v11, :cond_18

    .line 461
    .line 462
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 466
    .line 467
    .line 468
    :cond_18
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 469
    .line 470
    .line 471
    move-result v11

    .line 472
    if-eqz v11, :cond_19

    .line 473
    .line 474
    const/16 v11, 0x41

    .line 475
    .line 476
    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 477
    .line 478
    .line 479
    :cond_19
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 480
    .line 481
    .line 482
    move-result v11

    .line 483
    if-eqz v11, :cond_1a

    .line 484
    .line 485
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 486
    .line 487
    .line 488
    :cond_1a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 489
    .line 490
    .line 491
    move-result v12

    .line 492
    if-eqz v12, :cond_1b

    .line 493
    .line 494
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 495
    .line 496
    .line 497
    :cond_1b
    if-nez v11, :cond_1c

    .line 498
    .line 499
    if-eqz v12, :cond_1d

    .line 500
    .line 501
    :cond_1c
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 502
    .line 503
    .line 504
    :cond_1d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 508
    .line 509
    .line 510
    move-result v11

    .line 511
    if-eqz v11, :cond_1e

    .line 512
    .line 513
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 529
    .line 530
    .line 531
    move-result v2

    .line 532
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 533
    .line 534
    .line 535
    :cond_1e
    move/from16 v22, v2

    .line 536
    .line 537
    move/from16 v21, v10

    .line 538
    .line 539
    move/from16 v10, v20

    .line 540
    .line 541
    move/from16 v20, v13

    .line 542
    .line 543
    goto :goto_10

    .line 544
    :cond_1f
    move/from16 v22, v2

    .line 545
    .line 546
    const/high16 v10, 0x3f800000    # 1.0f

    .line 547
    .line 548
    const/16 v20, -0x1

    .line 549
    .line 550
    const/16 v21, -0x1

    .line 551
    .line 552
    :goto_10
    new-instance v0, Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 553
    .line 554
    move-object v2, v0

    .line 555
    move/from16 v23, v9

    .line 556
    .line 557
    move v9, v14

    .line 558
    move/from16 v11, v17

    .line 559
    .line 560
    move/from16 v12, v18

    .line 561
    .line 562
    move/from16 v13, v16

    .line 563
    .line 564
    move/from16 v14, v26

    .line 565
    .line 566
    move v15, v1

    .line 567
    move/from16 v16, v23

    .line 568
    .line 569
    move/from16 v17, v24

    .line 570
    .line 571
    move/from16 v18, v25

    .line 572
    .line 573
    invoke-direct/range {v2 .. v22}, Landroidx/media3/container/NalUnitUtil$SpsData;-><init>(IIIIIIIFIIZZIIIZIIII)V

    .line 574
    .line 575
    .line 576
    return-object v0
.end method

.method private static skipH265DpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[I[I[[Z)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    :goto_0
    if-ge v1, p1, :cond_6

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_1
    aget v5, p2, v1

    .line 12
    .line 13
    if-ge v4, v5, :cond_5

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    if-nez v4, :cond_1

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    const/4 v5, 0x0

    .line 29
    :goto_2
    if-eqz v5, :cond_4

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    :goto_3
    aget v6, p3, v1

    .line 33
    .line 34
    if-ge v5, v6, :cond_3

    .line 35
    .line 36
    aget-object v6, p4, v1

    .line 37
    .line 38
    aget-boolean v6, v6, v5

    .line 39
    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 43
    .line 44
    .line 45
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 52
    .line 53
    .line 54
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_6
    return-void
.end method

.method private static skipH265HrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;ZI)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    const/16 v3, 0x13

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    const/16 v3, 0x8

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 33
    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 39
    .line 40
    .line 41
    :cond_3
    const/16 v3, 0xf

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const/4 p1, 0x0

    .line 48
    const/4 v1, 0x0

    .line 49
    goto :goto_0

    .line 50
    :goto_2
    const/4 v3, 0x0

    .line 51
    :goto_3
    if-gt v3, p2, :cond_b

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_5

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :cond_5
    if-eqz v4, :cond_6

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 66
    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    goto :goto_4

    .line 70
    :cond_6
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    :goto_4
    if-nez v4, :cond_7

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    goto :goto_5

    .line 81
    :cond_7
    const/4 v4, 0x0

    .line 82
    :goto_5
    add-int v5, p1, v1

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    :goto_6
    if-ge v6, v5, :cond_a

    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    :goto_7
    if-gt v7, v4, :cond_9

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 94
    .line 95
    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 102
    .line 103
    .line 104
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_b
    return-void
.end method

.method private static skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/4 v2, 0x4

    .line 4
    if-ge v1, v2, :cond_5

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_1
    const/4 v4, 0x6

    .line 8
    if-ge v3, v4, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 18
    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    shl-int/lit8 v4, v1, 0x1

    .line 22
    .line 23
    add-int/2addr v4, v2

    .line 24
    shl-int v4, v5, v4

    .line 25
    .line 26
    const/16 v6, 0x40

    .line 27
    .line 28
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-le v1, v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v6, 0x0

    .line 38
    :goto_2
    if-ge v6, v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 41
    .line 42
    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_3
    const/4 v4, 0x3

    .line 47
    if-ne v1, v4, :cond_3

    .line 48
    .line 49
    const/4 v5, 0x3

    .line 50
    :cond_3
    add-int/2addr v3, v5

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    return-void
.end method

.method private static skipH265ShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 19

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [I

    .line 7
    .line 8
    new-array v3, v1, [I

    .line 9
    .line 10
    const/4 v4, -0x1

    .line 11
    const/4 v5, -0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    :goto_0
    if-ge v6, v0, :cond_11

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    if-eqz v6, :cond_c

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-eqz v8, :cond_c

    .line 23
    .line 24
    add-int v8, v4, v5

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    add-int/2addr v10, v7

    .line 35
    mul-int/lit8 v9, v9, 0x2

    .line 36
    .line 37
    rsub-int/lit8 v9, v9, 0x1

    .line 38
    .line 39
    mul-int v9, v9, v10

    .line 40
    .line 41
    add-int/lit8 v10, v8, 0x1

    .line 42
    .line 43
    new-array v11, v10, [Z

    .line 44
    .line 45
    const/4 v12, 0x0

    .line 46
    :goto_1
    if-gt v12, v8, :cond_1

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    if-nez v13, :cond_0

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    aput-boolean v13, v11, v12

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_0
    aput-boolean v7, v11, v12

    .line 62
    .line 63
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-array v7, v10, [I

    .line 67
    .line 68
    new-array v10, v10, [I

    .line 69
    .line 70
    add-int/lit8 v12, v5, -0x1

    .line 71
    .line 72
    const/4 v13, 0x0

    .line 73
    :goto_3
    if-ltz v12, :cond_3

    .line 74
    .line 75
    aget v14, v3, v12

    .line 76
    .line 77
    add-int/2addr v14, v9

    .line 78
    if-gez v14, :cond_2

    .line 79
    .line 80
    add-int v15, v4, v12

    .line 81
    .line 82
    aget-boolean v15, v11, v15

    .line 83
    .line 84
    if-eqz v15, :cond_2

    .line 85
    .line 86
    add-int/lit8 v15, v13, 0x1

    .line 87
    .line 88
    aput v14, v7, v13

    .line 89
    .line 90
    move v13, v15

    .line 91
    :cond_2
    add-int/lit8 v12, v12, -0x1

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    if-gez v9, :cond_4

    .line 95
    .line 96
    aget-boolean v12, v11, v8

    .line 97
    .line 98
    if-eqz v12, :cond_4

    .line 99
    .line 100
    add-int/lit8 v12, v13, 0x1

    .line 101
    .line 102
    aput v9, v7, v13

    .line 103
    .line 104
    move v13, v12

    .line 105
    :cond_4
    const/4 v12, 0x0

    .line 106
    :goto_4
    if-ge v12, v4, :cond_6

    .line 107
    .line 108
    aget v14, v2, v12

    .line 109
    .line 110
    add-int/2addr v14, v9

    .line 111
    if-gez v14, :cond_5

    .line 112
    .line 113
    aget-boolean v15, v11, v12

    .line 114
    .line 115
    if-eqz v15, :cond_5

    .line 116
    .line 117
    add-int/lit8 v15, v13, 0x1

    .line 118
    .line 119
    aput v14, v7, v13

    .line 120
    .line 121
    move v13, v15

    .line 122
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_6
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([II)[I

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    add-int/lit8 v12, v4, -0x1

    .line 130
    .line 131
    const/4 v14, 0x0

    .line 132
    :goto_5
    if-ltz v12, :cond_8

    .line 133
    .line 134
    aget v15, v2, v12

    .line 135
    .line 136
    add-int/2addr v15, v9

    .line 137
    if-lez v15, :cond_7

    .line 138
    .line 139
    aget-boolean v16, v11, v12

    .line 140
    .line 141
    if-eqz v16, :cond_7

    .line 142
    .line 143
    add-int/lit8 v16, v14, 0x1

    .line 144
    .line 145
    aput v15, v10, v14

    .line 146
    .line 147
    move/from16 v14, v16

    .line 148
    .line 149
    :cond_7
    add-int/lit8 v12, v12, -0x1

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_8
    if-lez v9, :cond_9

    .line 153
    .line 154
    aget-boolean v2, v11, v8

    .line 155
    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    add-int/lit8 v2, v14, 0x1

    .line 159
    .line 160
    aput v9, v10, v14

    .line 161
    .line 162
    move v14, v2

    .line 163
    :cond_9
    const/4 v2, 0x0

    .line 164
    :goto_6
    if-ge v2, v5, :cond_b

    .line 165
    .line 166
    aget v8, v3, v2

    .line 167
    .line 168
    add-int/2addr v8, v9

    .line 169
    if-lez v8, :cond_a

    .line 170
    .line 171
    add-int v12, v4, v2

    .line 172
    .line 173
    aget-boolean v12, v11, v12

    .line 174
    .line 175
    if-eqz v12, :cond_a

    .line 176
    .line 177
    add-int/lit8 v12, v14, 0x1

    .line 178
    .line 179
    aput v8, v10, v14

    .line 180
    .line 181
    move v14, v12

    .line 182
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_b
    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([II)[I

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    move-object v3, v2

    .line 190
    move-object v2, v7

    .line 191
    move v4, v13

    .line 192
    move v5, v14

    .line 193
    goto :goto_b

    .line 194
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    new-array v4, v2, [I

    .line 203
    .line 204
    const/4 v5, 0x0

    .line 205
    :goto_7
    if-ge v5, v2, :cond_e

    .line 206
    .line 207
    if-lez v5, :cond_d

    .line 208
    .line 209
    add-int/lit8 v8, v5, -0x1

    .line 210
    .line 211
    aget v8, v4, v8

    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_d
    const/4 v8, 0x0

    .line 215
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    add-int/2addr v9, v7

    .line 220
    sub-int/2addr v8, v9

    .line 221
    aput v8, v4, v5

    .line 222
    .line 223
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 224
    .line 225
    .line 226
    add-int/lit8 v5, v5, 0x1

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_e
    new-array v5, v3, [I

    .line 230
    .line 231
    const/4 v8, 0x0

    .line 232
    :goto_9
    if-ge v8, v3, :cond_10

    .line 233
    .line 234
    if-lez v8, :cond_f

    .line 235
    .line 236
    add-int/lit8 v9, v8, -0x1

    .line 237
    .line 238
    aget v9, v5, v9

    .line 239
    .line 240
    goto :goto_a

    .line 241
    :cond_f
    const/4 v9, 0x0

    .line 242
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    add-int/2addr v10, v7

    .line 247
    add-int/2addr v10, v9

    .line 248
    aput v10, v5, v8

    .line 249
    .line 250
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 251
    .line 252
    .line 253
    add-int/lit8 v8, v8, 0x1

    .line 254
    .line 255
    goto :goto_9

    .line 256
    :cond_10
    move-object/from16 v17, v4

    .line 257
    .line 258
    move v4, v2

    .line 259
    move-object/from16 v2, v17

    .line 260
    .line 261
    move-object/from16 v18, v5

    .line 262
    .line 263
    move v5, v3

    .line 264
    move-object/from16 v3, v18

    .line 265
    .line 266
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_11
    return-void
.end method

.method private static skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v0, 0x14

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, v1

    .line 16
    add-int/lit16 v0, v0, 0x100

    .line 17
    .line 18
    rem-int/lit16 v0, v0, 0x100

    .line 19
    .line 20
    :cond_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v1, v0

    .line 24
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return-void
.end method

.method private static skipToH265VuiPresentFlagAfterDpbSize(Landroidx/media3/container/ParsableNalUnitBitArray;I[[Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    :goto_0
    if-ge v1, p1, :cond_3

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_1
    if-ge v3, v1, :cond_2

    .line 23
    .line 24
    aget-object v4, p2, v1

    .line 25
    .line 26
    aget-boolean v4, v4, v3

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    :goto_3
    if-gt v2, p1, :cond_4

    .line 44
    .line 45
    const/16 p2, 0x8

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 8

    .line 1
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0, v2, p1}, Landroidx/media3/container/NalUnitUtil;->findNextUnescapeIndex([BII)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v2, p1, :cond_0

    .line 14
    .line 15
    sget-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    .line 16
    .line 17
    array-length v5, v4

    .line 18
    if-gt v5, v3, :cond_1

    .line 19
    .line 20
    array-length v5, v4

    .line 21
    mul-int/lit8 v5, v5, 0x2

    .line 22
    .line 23
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sput-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    :cond_1
    :goto_1
    sget-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    .line 33
    .line 34
    add-int/lit8 v5, v3, 0x1

    .line 35
    .line 36
    aput v2, v4, v3

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x3

    .line 39
    .line 40
    move v3, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sub-int/2addr p1, v3

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    :goto_2
    if-ge v2, v3, :cond_3

    .line 47
    .line 48
    sget-object v6, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    .line 49
    .line 50
    aget v6, v6, v2

    .line 51
    .line 52
    sub-int/2addr v6, v5

    .line 53
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    add-int/2addr v4, v6

    .line 57
    add-int/lit8 v7, v4, 0x1

    .line 58
    .line 59
    aput-byte v1, p0, v4

    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x2

    .line 62
    .line 63
    aput-byte v1, p0, v7

    .line 64
    .line 65
    add-int/lit8 v6, v6, 0x3

    .line 66
    .line 67
    add-int/2addr v5, v6

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    sub-int v1, p1, v4

    .line 72
    .line 73
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return p1

    .line 78
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method
