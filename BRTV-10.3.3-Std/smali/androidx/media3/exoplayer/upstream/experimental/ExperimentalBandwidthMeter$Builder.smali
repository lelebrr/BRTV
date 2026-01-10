.class public final Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bandwidthEstimator:Landroidx/media3/exoplayer/upstream/experimental/BandwidthEstimator;

.field private final context:Landroid/content/Context;

.field private final initialBitrateEstimates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private resetOnNetworkTypeChange:Z

.field private timeToFirstByteEstimator:Landroidx/media3/exoplayer/upstream/TimeToFirstByteEstimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->context:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p1, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;

    .line 11
    .line 12
    const/16 v0, 0x14

    .line 13
    .line 14
    const/high16 v1, 0x3f000000    # 0.5f

    .line 15
    .line 16
    invoke-direct {p1, v0, v1}, Landroidx/media3/exoplayer/upstream/experimental/PercentileTimeToFirstByteEstimator;-><init>(IF)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->timeToFirstByteEstimator:Landroidx/media3/exoplayer/upstream/TimeToFirstByteEstimator;

    .line 20
    .line 21
    new-instance p1, Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;

    .line 22
    .line 23
    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->build()Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->bandwidthEstimator:Landroidx/media3/exoplayer/upstream/experimental/BandwidthEstimator;

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    .line 34
    .line 35
    new-instance p1, Ljava/util/HashMap;

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-wide/32 v1, 0xf4240

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x3

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x4

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x5

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const/16 v0, 0xa

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const/16 v0, 0x9

    .line 110
    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const/4 v0, 0x7

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter;
    .locals 8

    .line 1
    new-instance v7, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->timeToFirstByteEstimator:Landroidx/media3/exoplayer/upstream/TimeToFirstByteEstimator;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->bandwidthEstimator:Landroidx/media3/exoplayer/upstream/experimental/BandwidthEstimator;

    .line 10
    .line 11
    iget-boolean v5, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v0, v7

    .line 15
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;Landroidx/media3/exoplayer/upstream/TimeToFirstByteEstimator;Landroidx/media3/exoplayer/upstream/experimental/BandwidthEstimator;ZLandroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$1;)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public setBandwidthEstimator(Landroidx/media3/exoplayer/upstream/experimental/BandwidthEstimator;)Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->bandwidthEstimator:Landroidx/media3/exoplayer/upstream/experimental/BandwidthEstimator;

    .line 2
    .line 3
    return-object p0
.end method

.method public setInitialBitrateEstimate(IJ)Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setInitialBitrateEstimate(J)Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p1, p2}, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->setInitialBitrateEstimate(IJ)Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setInitialBitrateEstimate(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 5

    .line 4
    invoke-static {p1}, Lb7/b;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter;->access$000(Ljava/lang/String;I)J

    move-result-wide v3

    .line 7
    invoke-virtual {p0, v2, v3, v4}, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->setInitialBitrateEstimate(IJ)Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setResetOnNetworkTypeChange(Z)Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimeToFirstByteEstimator(Landroidx/media3/exoplayer/upstream/TimeToFirstByteEstimator;)Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/experimental/ExperimentalBandwidthMeter$Builder;->timeToFirstByteEstimator:Landroidx/media3/exoplayer/upstream/TimeToFirstByteEstimator;

    .line 2
    .line 3
    return-object p0
.end method
