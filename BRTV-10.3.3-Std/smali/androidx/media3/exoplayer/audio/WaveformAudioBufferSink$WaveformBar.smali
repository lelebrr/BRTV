.class public Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaveformBar"
.end annotation


# instance fields
.field private maxSampleValue:F

.field private minSampleValue:F

.field private sampleCount:I

.field private squareSum:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->minSampleValue:F

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    iput v0, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->maxSampleValue:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public addSample(F)V
    .locals 6

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    cmpl-float v0, p1, v0

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpg-float v0, p1, v0

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Lb7/b;->f(Z)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->minSampleValue:F

    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->minSampleValue:F

    .line 27
    .line 28
    iget v0, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->maxSampleValue:F

    .line 29
    .line 30
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->maxSampleValue:F

    .line 35
    .line 36
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->squareSum:D

    .line 37
    .line 38
    float-to-double v4, p1

    .line 39
    mul-double v4, v4, v4

    .line 40
    .line 41
    add-double/2addr v4, v2

    .line 42
    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->squareSum:D

    .line 43
    .line 44
    iget p1, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->sampleCount:I

    .line 45
    .line 46
    add-int/2addr p1, v1

    .line 47
    iput p1, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->sampleCount:I

    .line 48
    .line 49
    return-void
.end method

.method public getMaxSampleValue()D
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->maxSampleValue:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    return-wide v0
.end method

.method public getMinSampleValue()D
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->minSampleValue:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    return-wide v0
.end method

.method public getRootMeanSquare()D
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->squareSum:D

    .line 2
    .line 3
    iget v2, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->sampleCount:I

    .line 4
    .line 5
    int-to-double v2, v2

    .line 6
    div-double/2addr v0, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getSampleCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/WaveformAudioBufferSink$WaveformBar;->sampleCount:I

    .line 2
    .line 3
    return v0
.end method
