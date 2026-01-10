.class final Landroidx/media3/exoplayer/rtsp/RtspPlayResponse;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final sessionTiming:Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;

.field public final status:I

.field public final trackTimingList:Ld7/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/u1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroidx/media3/exoplayer/rtsp/RtspSessionTiming;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/RtspPlayResponse;->status:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspPlayResponse;->sessionTiming:Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;

    .line 7
    .line 8
    invoke-static {p3}, Ld7/u1;->n(Ljava/util/Collection;)Ld7/u1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspPlayResponse;->trackTimingList:Ld7/u1;

    .line 13
    .line 14
    return-void
.end method
