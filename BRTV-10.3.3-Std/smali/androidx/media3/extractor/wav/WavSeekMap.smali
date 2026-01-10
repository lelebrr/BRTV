.class final Landroidx/media3/extractor/wav/WavSeekMap;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field private final blockCount:J

.field private final durationUs:J

.field private final firstBlockPosition:J

.field private final framesPerBlock:I

.field private final wavFormat:Landroidx/media3/extractor/wav/WavFormat;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/wav/WavFormat;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/extractor/wav/WavSeekMap;->framesPerBlock:I

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/media3/extractor/wav/WavSeekMap;->firstBlockPosition:J

    .line 9
    .line 10
    sub-long/2addr p5, p3

    .line 11
    iget p1, p1, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    .line 12
    .line 13
    int-to-long p1, p1

    .line 14
    div-long/2addr p5, p1

    .line 15
    iput-wide p5, p0, Landroidx/media3/extractor/wav/WavSeekMap;->blockCount:J

    .line 16
    .line 17
    invoke-direct {p0, p5, p6}, Landroidx/media3/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    iput-wide p1, p0, Landroidx/media3/extractor/wav/WavSeekMap;->durationUs:J

    .line 22
    .line 23
    return-void
.end method

.method private blockIndexToTimeUs(J)J
    .locals 8

    .line 1
    iget v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->framesPerBlock:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    mul-long v2, p1, v0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    .line 7
    .line 8
    iget p1, p1, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    .line 9
    .line 10
    int-to-long v6, p1

    .line 11
    const-wide/32 v4, 0xf4240

    .line 12
    .line 13
    .line 14
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->durationUs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    .line 2
    .line 3
    iget v0, v0, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    mul-long v0, v0, p1

    .line 7
    .line 8
    iget v2, p0, Landroidx/media3/extractor/wav/WavSeekMap;->framesPerBlock:I

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    const-wide/32 v4, 0xf4240

    .line 12
    .line 13
    .line 14
    mul-long v2, v2, v4

    .line 15
    .line 16
    div-long v4, v0, v2

    .line 17
    .line 18
    iget-wide v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->blockCount:J

    .line 19
    .line 20
    const-wide/16 v2, 0x1

    .line 21
    .line 22
    sub-long v8, v0, v2

    .line 23
    .line 24
    const-wide/16 v6, 0x0

    .line 25
    .line 26
    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-wide v4, p0, Landroidx/media3/extractor/wav/WavSeekMap;->firstBlockPosition:J

    .line 31
    .line 32
    iget-object v6, p0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    .line 33
    .line 34
    iget v6, v6, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    .line 35
    .line 36
    int-to-long v6, v6

    .line 37
    mul-long v6, v6, v0

    .line 38
    .line 39
    add-long/2addr v6, v4

    .line 40
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    new-instance v8, Landroidx/media3/extractor/SeekPoint;

    .line 45
    .line 46
    invoke-direct {v8, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 47
    .line 48
    .line 49
    cmp-long v6, v4, p1

    .line 50
    .line 51
    if-gez v6, :cond_1

    .line 52
    .line 53
    iget-wide p1, p0, Landroidx/media3/extractor/wav/WavSeekMap;->blockCount:J

    .line 54
    .line 55
    sub-long/2addr p1, v2

    .line 56
    cmp-long v4, v0, p1

    .line 57
    .line 58
    if-nez v4, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    add-long/2addr v0, v2

    .line 62
    iget-wide p1, p0, Landroidx/media3/extractor/wav/WavSeekMap;->firstBlockPosition:J

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    .line 65
    .line 66
    iget v2, v2, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    .line 67
    .line 68
    int-to-long v2, v2

    .line 69
    mul-long v2, v2, v0

    .line 70
    .line 71
    add-long/2addr v2, p1

    .line 72
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    .line 73
    .line 74
    .line 75
    move-result-wide p1

    .line 76
    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    .line 77
    .line 78
    invoke-direct {v0, p1, p2, v2, v3}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 82
    .line 83
    invoke-direct {p1, v8, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 84
    .line 85
    .line 86
    return-object p1

    .line 87
    :cond_1
    :goto_0
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 88
    .line 89
    invoke-direct {p1, v8}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    .line 90
    .line 91
    .line 92
    return-object p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
