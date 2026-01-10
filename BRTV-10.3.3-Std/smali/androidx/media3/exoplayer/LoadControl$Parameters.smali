.class public final Landroidx/media3/exoplayer/LoadControl$Parameters;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/LoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field public final bufferedDurationUs:J

.field public final lastRebufferRealtimeMs:J

.field public final mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final playWhenReady:Z

.field public final playbackPositionUs:J

.field public final playbackSpeed:F

.field public final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final rebuffering:Z

.field public final targetLiveOffsetUs:J

.field public final timeline:Landroidx/media3/common/Timeline;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->timeline:Landroidx/media3/common/Timeline;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 9
    .line 10
    iput-wide p4, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackPositionUs:J

    .line 11
    .line 12
    iput-wide p6, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    .line 13
    .line 14
    iput p8, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    .line 15
    .line 16
    iput-boolean p9, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playWhenReady:Z

    .line 17
    .line 18
    iput-boolean p10, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->rebuffering:Z

    .line 19
    .line 20
    iput-wide p11, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->targetLiveOffsetUs:J

    .line 21
    .line 22
    iput-wide p13, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->lastRebufferRealtimeMs:J

    .line 23
    .line 24
    return-void
.end method
