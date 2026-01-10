.class final Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;
.super Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoopingTimeline"
.end annotation


# instance fields
.field private final childPeriodCount:I

.field private final childTimeline:Landroidx/media3/common/Timeline;

.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;I)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;-><init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Landroidx/media3/common/Timeline;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 23
    .line 24
    iput p2, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    const p1, 0x7fffffff

    .line 29
    .line 30
    .line 31
    div-int/2addr p1, v0

    .line 32
    if-gt p2, p1, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_0
    const-string p1, "LoopingMediaSource contains too many periods"

    .line 36
    .line 37
    invoke-static {v1, p1}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getChildIndexByPeriodIndex(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 2
    .line 3
    div-int/2addr p1, v0

    .line 4
    return p1
.end method

.method public getChildIndexByWindowIndex(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 2
    .line 3
    div-int/2addr p1, v0

    .line 4
    return p1
.end method

.method public getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getFirstPeriodIndexByChildIndex(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 2
    .line 3
    mul-int p1, p1, v0

    .line 4
    .line 5
    return p1
.end method

.method public getFirstWindowIndexByChildIndex(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 2
    .line 3
    mul-int p1, p1, v0

    .line 4
    .line 5
    return p1
.end method

.method public getPeriodCount()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    return v0
.end method

.method public getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    return-object p1
.end method

.method public getWindowCount()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    return v0
.end method
