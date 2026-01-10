.class final Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerSideAdInsertionTimeline"
.end annotation


# instance fields
.field private final adPlaybackStates:Ld7/z1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/z1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;Ld7/z1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "Ld7/z1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 21
    .line 22
    .line 23
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v1, v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 30
    .line 31
    .line 32
    iget-object v3, v0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p2, v3}, Ld7/z1;->containsKey(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Ld7/z1;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 12

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Ld7/z1;

    .line 6
    .line 7
    iget-object v1, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ld7/z1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v9, v0

    .line 20
    check-cast v9, Landroidx/media3/common/AdPlaybackState;

    .line 21
    .line 22
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 23
    .line 24
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    cmp-long v5, v0, v2

    .line 31
    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    iget-wide v0, v9, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    .line 35
    .line 36
    :goto_0
    move-wide v5, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-static {v0, v1, v4, v9}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    .line 44
    .line 45
    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 46
    .line 47
    .line 48
    const-wide/16 v1, 0x0

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    move-wide v7, v1

    .line 52
    :goto_2
    add-int/lit8 v1, p1, 0x1

    .line 53
    .line 54
    if-ge v3, v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    .line 57
    .line 58
    invoke-virtual {v1, v3, v0, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Ld7/z1;

    .line 62
    .line 63
    iget-object v2, v0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ld7/z1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroidx/media3/common/AdPlaybackState;

    .line 70
    .line 71
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/media3/common/AdPlaybackState;

    .line 76
    .line 77
    if-nez v3, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    neg-long v7, v7

    .line 84
    invoke-static {v7, v8, v4, v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    neg-long v7, v7

    .line 89
    :cond_1
    if-eq v3, p1, :cond_2

    .line 90
    .line 91
    iget-wide v10, v0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 92
    .line 93
    invoke-static {v10, v11, v4, v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v1

    .line 97
    add-long/2addr v1, v7

    .line 98
    move-wide v7, v1

    .line 99
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget-object v2, p2, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    .line 103
    .line 104
    iget-object v3, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 105
    .line 106
    iget v4, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 107
    .line 108
    iget-boolean v10, p2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    .line 109
    .line 110
    move-object v1, p2

    .line 111
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    .line 112
    .line 113
    .line 114
    return-object p2
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/media3/common/Timeline$Period;

    .line 5
    .line 6
    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 7
    .line 8
    .line 9
    iget p3, p2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 10
    .line 11
    const/4 p4, 0x1

    .line 12
    invoke-virtual {p0, p3, p1, p4}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget-object p3, p3, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Ld7/z1;

    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ld7/z1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Landroidx/media3/common/AdPlaybackState;

    .line 29
    .line 30
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    check-cast p3, Landroidx/media3/common/AdPlaybackState;

    .line 35
    .line 36
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-static {v0, v1, v2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iget-wide v3, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 44
    .line 45
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    cmp-long v7, v3, v5

    .line 51
    .line 52
    if-nez v7, :cond_0

    .line 53
    .line 54
    iget-wide p3, p3, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    .line 55
    .line 56
    cmp-long p1, p3, v5

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    sub-long/2addr p3, v0

    .line 61
    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget p3, p2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 65
    .line 66
    invoke-super {p0, p3, p1, p4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    iget-wide v3, p3, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    .line 71
    .line 72
    iget-object p4, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Ld7/z1;

    .line 73
    .line 74
    iget-object p3, p3, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 75
    .line 76
    invoke-virtual {p4, p3}, Ld7/z1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    check-cast p3, Landroidx/media3/common/AdPlaybackState;

    .line 81
    .line 82
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    check-cast p3, Landroidx/media3/common/AdPlaybackState;

    .line 87
    .line 88
    iget p4, p2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 89
    .line 90
    invoke-virtual {p0, p4, p1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-wide v5, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 95
    .line 96
    sub-long/2addr v5, v3

    .line 97
    invoke-static {v5, v6, v2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    .line 98
    .line 99
    .line 100
    move-result-wide p3

    .line 101
    iget-wide v2, p1, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    .line 102
    .line 103
    add-long/2addr v2, p3

    .line 104
    iput-wide v2, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 105
    .line 106
    :cond_1
    :goto_0
    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 107
    .line 108
    return-object p2
.end method
