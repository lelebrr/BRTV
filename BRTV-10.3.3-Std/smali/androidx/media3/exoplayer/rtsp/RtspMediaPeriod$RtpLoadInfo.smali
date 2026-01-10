.class final Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RtpLoadInfo"
.end annotation


# instance fields
.field private final loadable:Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

.field public final mediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

.field final synthetic this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

.field private transport:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;ILandroidx/media3/extractor/TrackOutput;Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;)V
    .locals 7

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->mediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    .line 7
    .line 8
    new-instance v3, Landroidx/media3/exoplayer/rtsp/g;

    .line 9
    .line 10
    invoke-direct {v3, p0}, Landroidx/media3/exoplayer/rtsp/g;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;)V

    .line 11
    .line 12
    .line 13
    new-instance v6, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    .line 14
    .line 15
    new-instance v4, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$ExtractorOutputImpl;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p1, p4, v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$ExtractorOutputImpl;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$1;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v6

    .line 22
    move v1, p3

    .line 23
    move-object v2, p2

    .line 24
    move-object v5, p5

    .line 25
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;-><init>(ILandroidx/media3/exoplayer/rtsp/RtspMediaTrack;Landroidx/media3/exoplayer/rtsp/RtpDataLoadable$EventListener;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;)V

    .line 26
    .line 27
    .line 28
    iput-object v6, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->loadable:Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->lambda$new$0(Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->loadable:Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->transport:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p2}, Landroidx/media3/exoplayer/rtsp/RtpDataChannel;->getInterleavedBinaryDataListener()Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$900(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspClient;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p2}, Landroidx/media3/exoplayer/rtsp/RtpDataChannel;->getLocalPort()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {v0, p2, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->registerInterleavedDataChannel(ILandroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$602(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Z)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    .line 29
    .line 30
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public getTrackUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->loadable:Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->rtspMediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->uri:Landroid/net/Uri;

    .line 6
    .line 7
    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->transport:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->transport:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0
.end method

.method public isTransportReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->transport:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

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
    return v0
.end method
