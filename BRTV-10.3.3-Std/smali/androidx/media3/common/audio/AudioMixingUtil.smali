.class public final Landroidx/media3/common/audio/AudioMixingUtil;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final FLOAT_PCM_MAX_VALUE:F = 1.0f

.field private static final FLOAT_PCM_MIN_VALUE:F = -1.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static canMix(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ne v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static canMix(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z
    .locals 3

    .line 4
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/audio/AudioMixingUtil;->canMix(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-static {p1}, Landroidx/media3/common/audio/AudioMixingUtil;->canMix(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static floatSampleToInt16Pcm(F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    const v0, 0x8000

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x7fff

    .line 11
    .line 12
    :goto_0
    int-to-float v0, v0

    .line 13
    mul-float p0, p0, v0

    .line 14
    .line 15
    const/high16 v0, -0x39000000    # -32768.0f

    .line 16
    .line 17
    const v1, 0x46fffe00    # 32767.0f

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method private static getPcmSample(Ljava/nio/ByteBuffer;ZZ)F
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    int-to-float p0, p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Landroidx/media3/common/audio/AudioMixingUtil;->floatSampleToInt16Pcm(F)F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :goto_0
    return p0

    .line 20
    :cond_1
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Landroidx/media3/common/audio/AudioMixingUtil;->int16SampleToFloatPcm(S)F

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    :goto_1
    return p0
.end method

.method private static int16SampleToFloatPcm(S)F
    .locals 1

    .line 1
    int-to-float v0, p0

    .line 2
    if-gez p0, :cond_0

    .line 3
    .line 4
    const p0, 0x8000

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 p0, 0x7fff

    .line 9
    .line 10
    :goto_0
    int-to-float p0, p0

    .line 11
    div-float/2addr v0, p0

    .line 12
    return v0
.end method

.method public static mix(Ljava/nio/ByteBuffer;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Ljava/nio/ByteBuffer;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/ChannelMixingMatrix;IZZ)Ljava/nio/ByteBuffer;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x2

    .line 10
    if-ne v1, v4, :cond_0

    .line 11
    .line 12
    move-object/from16 v1, p3

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object/from16 v1, p3

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 20
    .line 21
    if-ne v1, v4, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v3, 0x0

    .line 25
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/audio/ChannelMixingMatrix;->getInputChannelCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/audio/ChannelMixingMatrix;->getOutputChannelCount()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    new-array v6, v1, [F

    .line 34
    .line 35
    new-array v7, v4, [F

    .line 36
    .line 37
    move/from16 v8, p5

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    :goto_2
    if-ge v9, v8, :cond_9

    .line 41
    .line 42
    if-eqz p6, :cond_3

    .line 43
    .line 44
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->position()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    const/4 v11, 0x0

    .line 49
    :goto_3
    if-ge v11, v4, :cond_2

    .line 50
    .line 51
    invoke-static {v0, v3, v3}, Landroidx/media3/common/audio/AudioMixingUtil;->getPcmSample(Ljava/nio/ByteBuffer;ZZ)F

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    aput v12, v7, v11

    .line 56
    .line 57
    add-int/lit8 v11, v11, 0x1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    .line 62
    .line 63
    :cond_3
    const/4 v10, 0x0

    .line 64
    :goto_4
    if-ge v10, v1, :cond_4

    .line 65
    .line 66
    move-object/from16 v11, p0

    .line 67
    .line 68
    invoke-static {v11, v5, v3}, Landroidx/media3/common/audio/AudioMixingUtil;->getPcmSample(Ljava/nio/ByteBuffer;ZZ)F

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    aput v12, v6, v10

    .line 73
    .line 74
    add-int/lit8 v10, v10, 0x1

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    move-object/from16 v11, p0

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    :goto_5
    if-ge v10, v4, :cond_8

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    :goto_6
    if-ge v12, v1, :cond_5

    .line 84
    .line 85
    aget v13, v7, v10

    .line 86
    .line 87
    aget v14, v6, v12

    .line 88
    .line 89
    move-object/from16 v15, p4

    .line 90
    .line 91
    invoke-virtual {v15, v12, v10}, Landroidx/media3/common/audio/ChannelMixingMatrix;->getMixingCoefficient(II)F

    .line 92
    .line 93
    .line 94
    move-result v16

    .line 95
    mul-float v16, v16, v14

    .line 96
    .line 97
    add-float v16, v16, v13

    .line 98
    .line 99
    aput v16, v7, v10

    .line 100
    .line 101
    add-int/lit8 v12, v12, 0x1

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_5
    move-object/from16 v15, p4

    .line 105
    .line 106
    if-eqz v3, :cond_6

    .line 107
    .line 108
    aget v12, v7, v10

    .line 109
    .line 110
    const/high16 v13, -0x39000000    # -32768.0f

    .line 111
    .line 112
    const v14, 0x46fffe00    # 32767.0f

    .line 113
    .line 114
    .line 115
    invoke-static {v12, v13, v14}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    float-to-int v12, v12

    .line 120
    int-to-short v12, v12

    .line 121
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 122
    .line 123
    .line 124
    goto :goto_8

    .line 125
    :cond_6
    if-eqz p7, :cond_7

    .line 126
    .line 127
    aget v12, v7, v10

    .line 128
    .line 129
    const/high16 v13, -0x40800000    # -1.0f

    .line 130
    .line 131
    const/high16 v14, 0x3f800000    # 1.0f

    .line 132
    .line 133
    invoke-static {v12, v13, v14}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    goto :goto_7

    .line 138
    :cond_7
    aget v12, v7, v10

    .line 139
    .line 140
    :goto_7
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    .line 143
    :goto_8
    const/4 v12, 0x0

    .line 144
    aput v12, v7, v10

    .line 145
    .line 146
    add-int/lit8 v10, v10, 0x1

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_8
    move-object/from16 v15, p4

    .line 150
    .line 151
    add-int/lit8 v9, v9, 0x1

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_9
    return-object v0
.end method
