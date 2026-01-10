.class final Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final headers:Landroidx/media3/exoplayer/rtsp/RtspHeaders;

.field public final sessionDescription:Landroidx/media3/exoplayer/rtsp/SessionDescription;

.field public final status:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspHeaders;ILandroidx/media3/exoplayer/rtsp/SessionDescription;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;->headers:Landroidx/media3/exoplayer/rtsp/RtspHeaders;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;->status:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;->sessionDescription:Landroidx/media3/exoplayer/rtsp/SessionDescription;

    .line 9
    .line 10
    return-void
.end method
