.class final Landroidx/media3/common/audio/Sonic;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final BYTES_PER_SAMPLE:I = 0x2

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41

.field private static final MINIMUM_SLOWDOWN_RATE:F = 0.99999f

.field private static final MINIMUM_SPEEDUP_RATE:F = 1.00001f


# instance fields
.field private accumulatedSpeedAdjustmentError:D

.field private final channelCount:I

.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputFrameCount:I

.field private final inputSampleRateHz:I

.field private maxDiff:I

.field private final maxPeriod:I

.field private final maxRequiredFrameCount:I

.field private minDiff:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputFrameCount:I

.field private final pitch:F

.field private pitchBuffer:[S

.field private pitchFrameCount:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private final rate:F

.field private remainingInputToCopyFrameCount:I

.field private final speed:F


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    .line 11
    .line 12
    int-to-float p3, p1

    .line 13
    int-to-float p4, p5

    .line 14
    div-float/2addr p3, p4

    .line 15
    iput p3, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    .line 16
    .line 17
    div-int/lit16 p3, p1, 0x190

    .line 18
    .line 19
    iput p3, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 20
    .line 21
    div-int/lit8 p1, p1, 0x41

    .line 22
    .line 23
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 24
    .line 25
    mul-int/lit8 p1, p1, 0x2

    .line 26
    .line 27
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 28
    .line 29
    new-array p3, p1, [S

    .line 30
    .line 31
    iput-object p3, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    .line 32
    .line 33
    mul-int p3, p1, p2

    .line 34
    .line 35
    new-array p3, p3, [S

    .line 36
    .line 37
    iput-object p3, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 38
    .line 39
    mul-int p3, p1, p2

    .line 40
    .line 41
    new-array p3, p3, [S

    .line 42
    .line 43
    iput-object p3, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 44
    .line 45
    mul-int p1, p1, p2

    .line 46
    .line 47
    new-array p1, p1, [S

    .line 48
    .line 49
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    .line 50
    .line 51
    return-void
.end method

.method private adjustRate(FI)V
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    iget v1, v7, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 6
    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, v7, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    .line 11
    .line 12
    int-to-float v2, v1

    .line 13
    div-float v2, v2, p1

    .line 14
    .line 15
    float-to-long v2, v2

    .line 16
    int-to-long v4, v1

    .line 17
    move-wide v8, v2

    .line 18
    move-wide v10, v4

    .line 19
    :goto_0
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    cmp-long v3, v8, v1

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    cmp-long v3, v10, v1

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const-wide/16 v3, 0x2

    .line 30
    .line 31
    rem-long v5, v8, v3

    .line 32
    .line 33
    cmp-long v12, v5, v1

    .line 34
    .line 35
    if-nez v12, :cond_1

    .line 36
    .line 37
    rem-long v5, v10, v3

    .line 38
    .line 39
    cmp-long v12, v5, v1

    .line 40
    .line 41
    if-nez v12, :cond_1

    .line 42
    .line 43
    div-long/2addr v8, v3

    .line 44
    div-long/2addr v10, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {v7, v0}, Landroidx/media3/common/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    .line 47
    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    :goto_1
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 52
    .line 53
    add-int/lit8 v1, v0, -0x1

    .line 54
    .line 55
    const/4 v14, 0x1

    .line 56
    if-ge v13, v1, :cond_6

    .line 57
    .line 58
    :goto_2
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 59
    .line 60
    add-int/lit8 v1, v0, 0x1

    .line 61
    .line 62
    int-to-long v1, v1

    .line 63
    mul-long v1, v1, v8

    .line 64
    .line 65
    iget v3, v7, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 66
    .line 67
    int-to-long v4, v3

    .line 68
    mul-long v4, v4, v10

    .line 69
    .line 70
    cmp-long v6, v1, v4

    .line 71
    .line 72
    if-lez v6, :cond_3

    .line 73
    .line 74
    iget-object v0, v7, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 75
    .line 76
    iget v1, v7, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 77
    .line 78
    invoke-direct {v7, v0, v1, v14}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, v7, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 83
    .line 84
    const/4 v15, 0x0

    .line 85
    :goto_3
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 86
    .line 87
    if-ge v15, v0, :cond_2

    .line 88
    .line 89
    iget-object v5, v7, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 90
    .line 91
    iget v1, v7, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 92
    .line 93
    mul-int v1, v1, v0

    .line 94
    .line 95
    add-int v16, v1, v15

    .line 96
    .line 97
    iget-object v1, v7, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    .line 98
    .line 99
    mul-int v0, v0, v13

    .line 100
    .line 101
    add-int v2, v0, v15

    .line 102
    .line 103
    move-object/from16 v0, p0

    .line 104
    .line 105
    move-wide v3, v10

    .line 106
    move-object/from16 v17, v5

    .line 107
    .line 108
    move-wide v5, v8

    .line 109
    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/audio/Sonic;->interpolate([SIJJ)S

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    aput-short v0, v17, v16

    .line 114
    .line 115
    add-int/lit8 v15, v15, 0x1

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_2
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 119
    .line 120
    add-int/2addr v0, v14

    .line 121
    iput v0, v7, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 122
    .line 123
    iget v0, v7, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 124
    .line 125
    add-int/2addr v0, v14

    .line 126
    iput v0, v7, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 130
    .line 131
    iput v0, v7, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 132
    .line 133
    int-to-long v0, v0

    .line 134
    cmp-long v2, v0, v10

    .line 135
    .line 136
    if-nez v2, :cond_5

    .line 137
    .line 138
    iput v12, v7, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 139
    .line 140
    int-to-long v0, v3

    .line 141
    cmp-long v2, v0, v8

    .line 142
    .line 143
    if-nez v2, :cond_4

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_4
    const/4 v14, 0x0

    .line 147
    :goto_4
    invoke-static {v14}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 148
    .line 149
    .line 150
    iput v12, v7, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 151
    .line 152
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    sub-int/2addr v0, v14

    .line 156
    invoke-direct {v7, v0}, Landroidx/media3/common/audio/Sonic;->removePitchFrames(I)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public static calculateAccumulatedTruncationErrorForResampling(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J
    .locals 2

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-virtual {p0, p1, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p2, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v0, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    return-wide p0
.end method

.method private changeSpeed(D)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :cond_1
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 10
    .line 11
    if-lez v2, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->copyInputToOutput(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :goto_0
    add-int/2addr v1, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_2
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 20
    .line 21
    invoke-direct {p0, v2, v1}, Landroidx/media3/common/audio/Sonic;->findPitchPeriod([SI)I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 26
    .line 27
    cmpl-double v4, p1, v2

    .line 28
    .line 29
    if-lez v4, :cond_3

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 32
    .line 33
    move-object v2, p0

    .line 34
    move v4, v1

    .line 35
    move-wide v5, p1

    .line 36
    move v7, v8

    .line 37
    invoke-direct/range {v2 .. v7}, Landroidx/media3/common/audio/Sonic;->skipPitchPeriod([SIDI)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/2addr v8, v2

    .line 42
    add-int/2addr v8, v1

    .line 43
    move v1, v8

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 46
    .line 47
    move-object v2, p0

    .line 48
    move v4, v1

    .line 49
    move-wide v5, p1

    .line 50
    move v7, v8

    .line 51
    invoke-direct/range {v2 .. v7}, Landroidx/media3/common/audio/Sonic;->insertPitchPeriod([SIDI)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    goto :goto_0

    .line 56
    :goto_1
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 57
    .line 58
    add-int/2addr v2, v1

    .line 59
    if-le v2, v0, :cond_1

    .line 60
    .line 61
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->removeProcessedInputFrames(I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private copyInputToOutput(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 10
    .line 11
    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/common/audio/Sonic;->copyToOutput([SII)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 15
    .line 16
    sub-int/2addr p1, v0

    .line 17
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 18
    .line 19
    return v0
.end method

.method private copyToOutput([SII)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p3}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 10
    .line 11
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 12
    .line 13
    mul-int p2, p2, v1

    .line 14
    .line 15
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 16
    .line 17
    mul-int v2, v2, v1

    .line 18
    .line 19
    mul-int v1, v1, p3

    .line 20
    .line 21
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 25
    .line 26
    add-int/2addr p1, p3

    .line 27
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 28
    .line 29
    return-void
.end method

.method private downSampleInput([SII)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 2
    .line 3
    div-int/2addr v0, p3

    .line 4
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 5
    .line 6
    mul-int p3, p3, v1

    .line 7
    .line 8
    mul-int p2, p2, v1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_1
    if-ge v3, p3, :cond_0

    .line 17
    .line 18
    mul-int v5, v2, p3

    .line 19
    .line 20
    add-int/2addr v5, p2

    .line 21
    add-int/2addr v5, v3

    .line 22
    aget-short v5, p1, v5

    .line 23
    .line 24
    add-int/2addr v4, v5

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    div-int/2addr v4, p3

    .line 29
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    .line 30
    .line 31
    int-to-short v4, v4

    .line 32
    aput-short v4, v3, v2

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method private ensureSpaceForAdditionalFrames([SII)[S
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 3
    .line 4
    div-int/2addr v0, v1

    .line 5
    add-int/2addr p2, p3

    .line 6
    if-gt p2, v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 10
    .line 11
    div-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    add-int/2addr v0, p3

    .line 14
    mul-int v0, v0, v1

    .line 15
    .line 16
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private findPitchPeriod([SI)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0xfa0

    .line 5
    .line 6
    if-le v0, v2, :cond_0

    .line 7
    .line 8
    div-int/2addr v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 12
    .line 13
    if-ne v2, v1, :cond_1

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 18
    .line 19
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 20
    .line 21
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/audio/Sonic;->downSampleInput([SII)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    .line 30
    .line 31
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 32
    .line 33
    div-int/2addr v3, v0

    .line 34
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 35
    .line 36
    div-int/2addr v4, v0

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {p0, v2, v5, v3, v4}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eq v0, v1, :cond_5

    .line 43
    .line 44
    mul-int v2, v2, v0

    .line 45
    .line 46
    mul-int/lit8 v0, v0, 0x4

    .line 47
    .line 48
    sub-int v3, v2, v0

    .line 49
    .line 50
    add-int/2addr v2, v0

    .line 51
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 52
    .line 53
    if-ge v3, v0, :cond_2

    .line 54
    .line 55
    move v3, v0

    .line 56
    :cond_2
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 57
    .line 58
    if-le v2, v0, :cond_3

    .line 59
    .line 60
    move v2, v0

    .line 61
    :cond_3
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 62
    .line 63
    if-ne v0, v1, :cond_4

    .line 64
    .line 65
    invoke-direct {p0, p1, p2, v3, v2}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    invoke-direct {p0, p1, p2, v1}, Landroidx/media3/common/audio/Sonic;->downSampleInput([SII)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    .line 74
    .line 75
    invoke-direct {p0, p1, v5, v3, v2}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    move p1, v2

    .line 81
    :goto_1
    iget p2, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    .line 82
    .line 83
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxDiff:I

    .line 84
    .line 85
    invoke-direct {p0, p2, v0}, Landroidx/media3/common/audio/Sonic;->previousPeriodBetter(II)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_6

    .line 90
    .line 91
    iget p2, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    move p2, p1

    .line 95
    :goto_2
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    .line 96
    .line 97
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->prevMinDiff:I

    .line 98
    .line 99
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 100
    .line 101
    return p2
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 2
    .line 3
    mul-int p2, p2, v0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0xff

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-gt p3, p4, :cond_3

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    :goto_1
    if-ge v5, p3, :cond_0

    .line 16
    .line 17
    add-int v7, p2, v5

    .line 18
    .line 19
    aget-short v7, p1, v7

    .line 20
    .line 21
    add-int v8, p2, p3

    .line 22
    .line 23
    add-int/2addr v8, v5

    .line 24
    aget-short v8, p1, v8

    .line 25
    .line 26
    sub-int/2addr v7, v8

    .line 27
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    add-int/2addr v6, v7

    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    mul-int v5, v6, v3

    .line 36
    .line 37
    mul-int v7, v2, p3

    .line 38
    .line 39
    if-ge v5, v7, :cond_1

    .line 40
    .line 41
    move v3, p3

    .line 42
    move v2, v6

    .line 43
    :cond_1
    mul-int v5, v6, v1

    .line 44
    .line 45
    mul-int v7, v4, p3

    .line 46
    .line 47
    if-le v5, v7, :cond_2

    .line 48
    .line 49
    move v1, p3

    .line 50
    move v4, v6

    .line 51
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    div-int/2addr v2, v3

    .line 55
    iput v2, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    .line 56
    .line 57
    div-int/2addr v4, v1

    .line 58
    iput v4, p0, Landroidx/media3/common/audio/Sonic;->maxDiff:I

    .line 59
    .line 60
    return v3
.end method

.method public static getExpectedFrameCountAfterProcessorApplied(IIFFJ)J
    .locals 3

    .line 1
    int-to-float v0, p0

    .line 2
    int-to-float p1, p1

    .line 3
    div-float/2addr v0, p1

    .line 4
    mul-float v0, v0, p3

    .line 5
    .line 6
    div-float/2addr p2, p3

    .line 7
    float-to-double p1, p2

    .line 8
    new-instance p3, Ljava/math/BigDecimal;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p4, p5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    const-wide v1, 0x3ff0000a80000000L    # 1.0000100135803223

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmpl-double p5, p1, v1

    .line 27
    .line 28
    if-gtz p5, :cond_0

    .line 29
    .line 30
    const-wide v1, 0x3fefffeb00000000L    # 0.9999899864196777

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmpg-double p5, p1, v1

    .line 36
    .line 37
    if-gez p5, :cond_1

    .line 38
    .line 39
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 44
    .line 45
    invoke-virtual {p4, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 50
    .line 51
    cmpl-float p1, v0, p1

    .line 52
    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p4}, Ljava/math/BigDecimal;->longValueExact()J

    .line 56
    .line 57
    .line 58
    move-result-wide p0

    .line 59
    return-wide p0

    .line 60
    :cond_2
    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 61
    .line 62
    invoke-virtual {p4, p3, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValueExact()J

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    int-to-long v0, p0

    .line 71
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p4, p0, p3}, Landroidx/media3/common/audio/Sonic;->calculateAccumulatedTruncationErrorForResampling(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J

    .line 76
    .line 77
    .line 78
    move-result-wide p3

    .line 79
    sub-long/2addr p1, p3

    .line 80
    return-wide p1
.end method

.method public static getExpectedInputFrameCountForOutputFrameCount(IIFFJ)J
    .locals 2

    .line 1
    int-to-float v0, p0

    .line 2
    int-to-float p1, p1

    .line 3
    div-float/2addr v0, p1

    .line 4
    mul-float v0, v0, p3

    .line 5
    .line 6
    new-instance p1, Ljava/math/BigDecimal;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    int-to-long v0, p0

    .line 16
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p4, p5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    invoke-static {p0, p1, p4}, Landroidx/media3/common/audio/Sonic;->getFrameCountBeforeResamplingForOutputCount(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    div-float/2addr p2, p3

    .line 29
    float-to-double p2, p2

    .line 30
    const-wide p4, 0x3ff0000a80000000L    # 1.0000100135803223

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmpl-double v0, p2, p4

    .line 36
    .line 37
    if-gtz v0, :cond_1

    .line 38
    .line 39
    const-wide p4, 0x3fefffeb00000000L    # 0.9999899864196777

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    cmpg-double v0, p2, p4

    .line 45
    .line 46
    if-gez v0, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-wide p0

    .line 50
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const/4 p1, 0x0

    .line 63
    sget-object p2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 70
    .line 71
    .line 72
    move-result-wide p0

    .line 73
    return-wide p0
.end method

.method private static getFrameCountBeforeResamplingForOutputCount(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J
    .locals 2

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p1, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0
.end method

.method private insertPitchPeriod([SIDI)I
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p5

    .line 3
    .line 4
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 5
    .line 6
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    cmpg-double v6, p3, v2

    .line 9
    .line 10
    if-gez v6, :cond_0

    .line 11
    .line 12
    int-to-double v2, v1

    .line 13
    mul-double v2, v2, p3

    .line 14
    .line 15
    sub-double/2addr v4, p3

    .line 16
    div-double/2addr v2, v4

    .line 17
    iget-wide v4, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 18
    .line 19
    add-double/2addr v2, v4

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    long-to-int v5, v4

    .line 25
    int-to-double v6, v5

    .line 26
    sub-double/2addr v2, v6

    .line 27
    iput-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 28
    .line 29
    move v9, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    int-to-double v2, v1

    .line 32
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 33
    .line 34
    mul-double v6, v6, p3

    .line 35
    .line 36
    sub-double/2addr v6, v4

    .line 37
    mul-double v6, v6, v2

    .line 38
    .line 39
    sub-double/2addr v4, p3

    .line 40
    div-double/2addr v6, v4

    .line 41
    iget-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 42
    .line 43
    add-double/2addr v6, v2

    .line 44
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    long-to-int v3, v2

    .line 49
    iput v3, v0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 50
    .line 51
    int-to-double v2, v3

    .line 52
    sub-double/2addr v6, v2

    .line 53
    iput-wide v6, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 54
    .line 55
    move v9, v1

    .line 56
    :goto_0
    iget-object v2, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 57
    .line 58
    iget v3, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 59
    .line 60
    add-int v10, v1, v9

    .line 61
    .line 62
    invoke-direct {p0, v2, v3, v10}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iput-object v2, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 67
    .line 68
    iget v3, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 69
    .line 70
    mul-int v4, p2, v3

    .line 71
    .line 72
    iget v5, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 73
    .line 74
    mul-int v5, v5, v3

    .line 75
    .line 76
    mul-int v3, v3, v1

    .line 77
    .line 78
    move-object v7, p1

    .line 79
    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    iget v2, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 83
    .line 84
    iget-object v3, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 85
    .line 86
    iget v4, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 87
    .line 88
    add-int/2addr v4, v1

    .line 89
    add-int v6, p2, v1

    .line 90
    .line 91
    move v1, v9

    .line 92
    move-object v5, p1

    .line 93
    move v8, p2

    .line 94
    invoke-static/range {v1 .. v8}, Landroidx/media3/common/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 95
    .line 96
    .line 97
    iget v1, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 98
    .line 99
    add-int/2addr v1, v10

    .line 100
    iput v1, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 101
    .line 102
    return v9
.end method

.method private interpolate([SIJJ)S
    .locals 5

    .line 1
    aget-short v0, p1, p2

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 4
    .line 5
    add-int/2addr p2, v1

    .line 6
    aget-short p1, p1, p2

    .line 7
    .line 8
    iget p2, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 9
    .line 10
    int-to-long v1, p2

    .line 11
    mul-long v1, v1, p3

    .line 12
    .line 13
    iget p2, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 14
    .line 15
    int-to-long p3, p2

    .line 16
    mul-long p3, p3, p5

    .line 17
    .line 18
    add-int/lit8 p2, p2, 0x1

    .line 19
    .line 20
    int-to-long v3, p2

    .line 21
    mul-long v3, v3, p5

    .line 22
    .line 23
    sub-long p5, v3, v1

    .line 24
    .line 25
    sub-long/2addr v3, p3

    .line 26
    int-to-long p2, v0

    .line 27
    mul-long p2, p2, p5

    .line 28
    .line 29
    sub-long p4, v3, p5

    .line 30
    .line 31
    int-to-long v0, p1

    .line 32
    mul-long p4, p4, v0

    .line 33
    .line 34
    add-long/2addr p4, p2

    .line 35
    div-long/2addr p4, v3

    .line 36
    long-to-int p1, p4

    .line 37
    int-to-short p1, p1

    .line 38
    return p1
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    .line 5
    .line 6
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 7
    .line 8
    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 15
    .line 16
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 17
    .line 18
    mul-int v4, p1, v3

    .line 19
    .line 20
    iget v5, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 21
    .line 22
    mul-int v5, v5, v3

    .line 23
    .line 24
    mul-int v3, v3, v0

    .line 25
    .line 26
    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 30
    .line 31
    iget p1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 32
    .line 33
    add-int/2addr p1, v0

    .line 34
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 35
    .line 36
    return-void
.end method

.method private static overlapAdd(II[SI[SI[SI)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    .line 5
    mul-int v2, p3, p1

    .line 6
    .line 7
    add-int/2addr v2, v1

    .line 8
    mul-int v3, p7, p1

    .line 9
    .line 10
    add-int/2addr v3, v1

    .line 11
    mul-int v4, p5, p1

    .line 12
    .line 13
    add-int/2addr v4, v1

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_1
    if-ge v5, p0, :cond_0

    .line 16
    .line 17
    aget-short v6, p4, v4

    .line 18
    .line 19
    sub-int v7, p0, v5

    .line 20
    .line 21
    mul-int v7, v7, v6

    .line 22
    .line 23
    aget-short v6, p6, v3

    .line 24
    .line 25
    mul-int v6, v6, v5

    .line 26
    .line 27
    add-int/2addr v6, v7

    .line 28
    div-int/2addr v6, p0

    .line 29
    int-to-short v6, v6

    .line 30
    aput-short v6, p2, v2

    .line 31
    .line 32
    add-int/2addr v2, p1

    .line 33
    add-int/2addr v4, p1

    .line 34
    add-int/2addr v3, p1

    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method private previousPeriodBetter(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    mul-int/lit8 v1, p1, 0x3

    .line 10
    .line 11
    if-le p2, v1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    mul-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    iget p2, p0, Landroidx/media3/common/audio/Sonic;->prevMinDiff:I

    .line 17
    .line 18
    mul-int/lit8 p2, p2, 0x3

    .line 19
    .line 20
    if-gt p1, p2, :cond_2

    .line 21
    .line 22
    return v0

    .line 23
    :cond_2
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_3
    :goto_0
    return v0
.end method

.method private processStreamInput()V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    .line 6
    .line 7
    div-float/2addr v1, v2

    .line 8
    float-to-double v3, v1

    .line 9
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    .line 10
    .line 11
    mul-float v1, v1, v2

    .line 12
    .line 13
    const-wide v5, 0x3ff0000a80000000L    # 1.0000100135803223

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmpl-double v2, v3, v5

    .line 19
    .line 20
    if-gtz v2, :cond_1

    .line 21
    .line 22
    const-wide v5, 0x3fefffeb00000000L    # 0.9999899864196777

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmpg-double v2, v3, v5

    .line 28
    .line 29
    if-gez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 33
    .line 34
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-direct {p0, v2, v4, v3}, Landroidx/media3/common/audio/Sonic;->copyToOutput([SII)V

    .line 38
    .line 39
    .line 40
    iput v4, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-direct {p0, v3, v4}, Landroidx/media3/common/audio/Sonic;->changeSpeed(D)V

    .line 44
    .line 45
    .line 46
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 47
    .line 48
    cmpl-float v2, v1, v2

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-direct {p0, v1, v0}, Landroidx/media3/common/audio/Sonic;->adjustRate(FI)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method private removePitchFrames(I)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    .line 5
    .line 6
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 7
    .line 8
    mul-int v2, p1, v1

    .line 9
    .line 10
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 11
    .line 12
    sub-int/2addr v3, p1

    .line 13
    mul-int v3, v3, v1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 20
    .line 21
    sub-int/2addr v0, p1

    .line 22
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 23
    .line 24
    return-void
.end method

.method private removeProcessedInputFrames(I)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 5
    .line 6
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 7
    .line 8
    mul-int p1, p1, v2

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    mul-int v2, v2, v0

    .line 12
    .line 13
    invoke-static {v1, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 17
    .line 18
    return-void
.end method

.method private skipPitchPeriod([SIDI)I
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p5

    .line 3
    .line 4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5
    .line 6
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 7
    .line 8
    cmpl-double v6, p3, v4

    .line 9
    .line 10
    if-ltz v6, :cond_0

    .line 11
    .line 12
    int-to-double v4, v1

    .line 13
    sub-double v2, p3, v2

    .line 14
    .line 15
    div-double/2addr v4, v2

    .line 16
    iget-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 17
    .line 18
    add-double/2addr v4, v2

    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    long-to-int v3, v2

    .line 24
    int-to-double v6, v3

    .line 25
    sub-double/2addr v4, v6

    .line 26
    iput-wide v4, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    int-to-double v6, v1

    .line 30
    sub-double v4, v4, p3

    .line 31
    .line 32
    mul-double v4, v4, v6

    .line 33
    .line 34
    sub-double v2, p3, v2

    .line 35
    .line 36
    div-double/2addr v4, v2

    .line 37
    iget-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 38
    .line 39
    add-double/2addr v4, v2

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    long-to-int v3, v2

    .line 45
    iput v3, v0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 46
    .line 47
    int-to-double v2, v3

    .line 48
    sub-double/2addr v4, v2

    .line 49
    iput-wide v4, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 50
    .line 51
    move v3, v1

    .line 52
    :goto_0
    iget-object v2, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 53
    .line 54
    iget v4, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 55
    .line 56
    invoke-direct {p0, v2, v4, v3}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    iput-object v8, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 61
    .line 62
    iget v7, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 63
    .line 64
    iget v9, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 65
    .line 66
    add-int v13, p2, v1

    .line 67
    .line 68
    move v6, v3

    .line 69
    move-object v10, p1

    .line 70
    move/from16 v11, p2

    .line 71
    .line 72
    move-object v12, p1

    .line 73
    invoke-static/range {v6 .. v13}, Landroidx/media3/common/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 74
    .line 75
    .line 76
    iget v1, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 77
    .line 78
    add-int/2addr v1, v3

    .line 79
    iput v1, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 80
    .line 81
    return v3
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->prevMinDiff:I

    .line 17
    .line 18
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    .line 19
    .line 20
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->maxDiff:I

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 25
    .line 26
    return-void
.end method

.method public getOutput(Ljava/nio/ShortBuffer;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 17
    .line 18
    div-int/2addr v0, v2

    .line 19
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 20
    .line 21
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 26
    .line 27
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 28
    .line 29
    mul-int v3, v3, v0

    .line 30
    .line 31
    invoke-virtual {p1, v2, v1, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 32
    .line 33
    .line 34
    iget p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 35
    .line 36
    sub-int/2addr p1, v0

    .line 37
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    .line 40
    .line 41
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 42
    .line 43
    mul-int v0, v0, v3

    .line 44
    .line 45
    mul-int p1, p1, v3

    .line 46
    .line 47
    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public getOutputSize()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 12
    .line 13
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 14
    .line 15
    mul-int v0, v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    return v0
.end method

.method public getPendingInputBytes()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    return v0
.end method

.method public queueEndOfStream()V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    .line 6
    .line 7
    div-float/2addr v1, v2

    .line 8
    float-to-double v3, v1

    .line 9
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    .line 10
    .line 11
    mul-float v1, v1, v2

    .line 12
    .line 13
    float-to-double v1, v1

    .line 14
    iget v5, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 15
    .line 16
    sub-int v6, v0, v5

    .line 17
    .line 18
    iget v7, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 19
    .line 20
    int-to-double v8, v6

    .line 21
    div-double/2addr v8, v3

    .line 22
    int-to-double v3, v5

    .line 23
    add-double/2addr v8, v3

    .line 24
    iget-wide v3, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 25
    .line 26
    add-double/2addr v8, v3

    .line 27
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 28
    .line 29
    int-to-double v3, v3

    .line 30
    add-double/2addr v8, v3

    .line 31
    div-double/2addr v8, v1

    .line 32
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 33
    .line 34
    add-double/2addr v8, v1

    .line 35
    double-to-int v1, v8

    .line 36
    add-int/2addr v7, v1

    .line 37
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    iput-wide v1, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 42
    .line 43
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 44
    .line 45
    mul-int/lit8 v2, v2, 0x2

    .line 46
    .line 47
    add-int/2addr v2, v0

    .line 48
    invoke-direct {p0, v1, v0, v2}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    const/4 v2, 0x0

    .line 56
    :goto_0
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 57
    .line 58
    mul-int/lit8 v4, v3, 0x2

    .line 59
    .line 60
    iget v5, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 61
    .line 62
    mul-int v4, v4, v5

    .line 63
    .line 64
    if-ge v2, v4, :cond_0

    .line 65
    .line 66
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 67
    .line 68
    mul-int v5, v5, v0

    .line 69
    .line 70
    add-int/2addr v5, v2

    .line 71
    aput-short v1, v3, v5

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 77
    .line 78
    mul-int/lit8 v3, v3, 0x2

    .line 79
    .line 80
    add-int/2addr v3, v0

    .line 81
    iput v3, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 82
    .line 83
    invoke-direct {p0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    .line 84
    .line 85
    .line 86
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 87
    .line 88
    if-le v0, v7, :cond_1

    .line 89
    .line 90
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 95
    .line 96
    :cond_1
    iput v1, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 97
    .line 98
    iput v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 99
    .line 100
    iput v1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 101
    .line 102
    return-void
.end method

.method public queueInput(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 6
    .line 7
    div-int/2addr v0, v1

    .line 8
    mul-int v1, v1, v0

    .line 9
    .line 10
    mul-int/lit8 v1, v1, 0x2

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 13
    .line 14
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 15
    .line 16
    invoke-direct {p0, v2, v3, v0}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 21
    .line 22
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 23
    .line 24
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 25
    .line 26
    mul-int v3, v3, v4

    .line 27
    .line 28
    div-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 31
    .line 32
    .line 33
    iget p1, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 34
    .line 35
    add-int/2addr p1, v0

    .line 36
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
