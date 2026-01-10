.class final Landroidx/media3/exoplayer/rtsp/RtspClient;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;,
        Landroidx/media3/exoplayer/rtsp/RtspClient$KeepAliveMonitor;,
        Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;,
        Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;,
        Landroidx/media3/exoplayer/rtsp/RtspClient$MessageListener;,
        Landroidx/media3/exoplayer/rtsp/RtspClient$RtspState;
    }
.end annotation


# static fields
.field private static final DEFAULT_RTSP_KEEP_ALIVE_INTERVAL_DIVISOR:I = 0x2

.field public static final RTSP_STATE_INIT:I = 0x0

.field public static final RTSP_STATE_PLAYING:I = 0x2

.field public static final RTSP_STATE_READY:I = 0x1

.field public static final RTSP_STATE_UNINITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RtspClient"


# instance fields
.field private final debugLoggingEnabled:Z

.field private hasPendingPauseRequest:Z

.field private hasUpdatedTimelineAndTracks:Z

.field private keepAliveMonitor:Landroidx/media3/exoplayer/rtsp/RtspClient$KeepAliveMonitor;

.field private messageChannel:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

.field private final messageSender:Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;

.field private final pendingRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/exoplayer/rtsp/RtspRequest;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSeekPositionUs:J

.field private final pendingSetupRtpLoadInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final playbackEventListener:Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;

.field private receivedAuthorizationRequest:Z

.field private rtspAuthUserInfo:Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;

.field private rtspAuthenticationInfo:Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;

.field private rtspState:I

.field private sessionId:Ljava/lang/String;

.field private final sessionInfoListener:Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;

.field private sessionTimeoutMs:J

.field private final socketFactory:Ljavax/net/SocketFactory;

.field private uri:Landroid/net/Uri;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;Ljava/lang/String;Landroid/net/Uri;Ljavax/net/SocketFactory;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionInfoListener:Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->playbackEventListener:Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->userAgent:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 11
    .line 12
    iput-boolean p6, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->debugLoggingEnabled:Z

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->pendingSetupRtpLoadInfos:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    new-instance p1, Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->pendingRequests:Landroid/util/SparseArray;

    .line 27
    .line 28
    new-instance p1, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;-><init>(Landroidx/media3/exoplayer/rtsp/RtspClient;Landroidx/media3/exoplayer/rtsp/RtspClient$1;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageSender:Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;

    .line 35
    .line 36
    invoke-static {p4}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->removeUserInfo(Landroid/net/Uri;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->uri:Landroid/net/Uri;

    .line 41
    .line 42
    new-instance p1, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 43
    .line 44
    new-instance p2, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageListener;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageListener;-><init>(Landroidx/media3/exoplayer/rtsp/RtspClient;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageChannel:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 53
    .line 54
    const-wide/32 p1, 0xea60

    .line 55
    .line 56
    .line 57
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionTimeoutMs:J

    .line 58
    .line 59
    invoke-static {p4}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->parseUserInfo(Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspAuthUserInfo:Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;

    .line 64
    .line 65
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->pendingSeekPositionUs:J

    .line 71
    .line 72
    const/4 p1, -0x1

    .line 73
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspState:I

    .line 74
    .line 75
    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/exoplayer/rtsp/RtspClient;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspState:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1000(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageChannel:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Landroidx/media3/exoplayer/rtsp/RtspClient;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspState:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1100(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageSender:Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionInfoListener:Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1302(Landroidx/media3/exoplayer/rtsp/RtspClient;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1400(Landroidx/media3/exoplayer/rtsp/RtspClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->receivedAuthorizationRequest:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1402(Landroidx/media3/exoplayer/rtsp/RtspClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->receivedAuthorizationRequest:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1500(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspClient$KeepAliveMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->keepAliveMonitor:Landroidx/media3/exoplayer/rtsp/RtspClient$KeepAliveMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1502(Landroidx/media3/exoplayer/rtsp/RtspClient;Landroidx/media3/exoplayer/rtsp/RtspClient$KeepAliveMonitor;)Landroidx/media3/exoplayer/rtsp/RtspClient$KeepAliveMonitor;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->keepAliveMonitor:Landroidx/media3/exoplayer/rtsp/RtspClient$KeepAliveMonitor;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1600(Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->serverSupportsDescribe(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1700(Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;Landroid/net/Uri;)Ld7/u1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->buildTrackList(Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;Landroid/net/Uri;)Ld7/u1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1802(Landroidx/media3/exoplayer/rtsp/RtspClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->hasUpdatedTimelineAndTracks:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1900(Landroidx/media3/exoplayer/rtsp/RtspClient;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionTimeoutMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$1902(Landroidx/media3/exoplayer/rtsp/RtspClient;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionTimeoutMs:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static synthetic access$2000(Landroidx/media3/exoplayer/rtsp/RtspClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->continueSetupRtspTrack()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$202(Landroidx/media3/exoplayer/rtsp/RtspClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->hasPendingPauseRequest:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$2100(Landroidx/media3/exoplayer/rtsp/RtspClient;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->pendingSeekPositionUs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$2102(Landroidx/media3/exoplayer/rtsp/RtspClient;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->pendingSeekPositionUs:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static synthetic access$2200(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->playbackEventListener:Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Landroidx/media3/exoplayer/rtsp/RtspClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Landroidx/media3/exoplayer/rtsp/RtspClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$400(Landroidx/media3/exoplayer/rtsp/RtspClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->userAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspAuthenticationInfo:Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$502(Landroidx/media3/exoplayer/rtsp/RtspClient;Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;)Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspAuthenticationInfo:Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$600(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspAuthUserInfo:Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$602(Landroidx/media3/exoplayer/rtsp/RtspClient;Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;)Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspAuthUserInfo:Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$700(Landroidx/media3/exoplayer/rtsp/RtspClient;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->dispatchRtspError(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Landroidx/media3/exoplayer/rtsp/RtspClient;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->pendingRequests:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Landroidx/media3/exoplayer/rtsp/RtspClient;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->maybeLogMessage(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static buildTrackList(Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;Landroid/net/Uri;)Ld7/u1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;",
            "Landroid/net/Uri;",
            ")",
            "Ld7/u1;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld7/s1;

    .line 2
    .line 3
    invoke-direct {v0}, Ld7/s1;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;->sessionDescription:Landroidx/media3/exoplayer/rtsp/SessionDescription;

    .line 8
    .line 9
    iget-object v2, v2, Landroidx/media3/exoplayer/rtsp/SessionDescription;->mediaDescriptionList:Ld7/u1;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;->sessionDescription:Landroidx/media3/exoplayer/rtsp/SessionDescription;

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/media3/exoplayer/rtsp/SessionDescription;->mediaDescriptionList:Ld7/u1;

    .line 20
    .line 21
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;

    .line 26
    .line 27
    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->isFormatSupported(Landroidx/media3/exoplayer/rtsp/MediaDescription;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    new-instance v3, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    .line 34
    .line 35
    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspDescribeResponse;->headers:Landroidx/media3/exoplayer/rtsp/RtspHeaders;

    .line 36
    .line 37
    invoke-direct {v3, v4, v2, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;-><init>(Landroidx/media3/exoplayer/rtsp/RtspHeaders;Landroidx/media3/exoplayer/rtsp/MediaDescription;Landroid/net/Uri;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ld7/s1;->c(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ld7/s1;->g()Ld7/c5;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method private continueSetupRtspTrack()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->pendingSetupRtpLoadInfos:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->playbackEventListener:Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;

    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;->onRtspSetupCompleted()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageSender:Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->getTrackUri()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->getTransport()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0, v3}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendSetupRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private dispatchRtspError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->hasUpdatedTimelineAndTracks:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->playbackEventListener:Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;->onPlaybackError(Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionInfoListener:Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    :cond_2
    invoke-interface {v0, v1, p1}, Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;->onSessionTimelineRequestFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void
.end method

.method private getSocket(Landroid/net/Uri;)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/16 v0, 0x22a

    .line 25
    .line 26
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v0}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method private maybeLogMessage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->debugLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb7/k;

    .line 6
    .line 7
    const-string v1, "\n"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lb7/k;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lb7/k;->b(Ljava/util/List;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "RtspClient"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static serverSupportsDescribe(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 22
    :goto_1
    return p0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->keepAliveMonitor:Landroidx/media3/exoplayer/rtsp/RtspClient$KeepAliveMonitor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient$KeepAliveMonitor;->close()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->keepAliveMonitor:Landroidx/media3/exoplayer/rtsp/RtspClient$KeepAliveMonitor;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageSender:Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->uri:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendTeardownRequest(Landroid/net/Uri;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageChannel:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->close()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspState:I

    .line 2
    .line 3
    return v0
.end method

.method public registerInterleavedDataChannel(ILandroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageChannel:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->registerInterleavedBinaryDataListener(ILandroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public retryWithRtpTcp()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->close()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 5
    .line 6
    new-instance v1, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageListener;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageListener;-><init>(Landroidx/media3/exoplayer/rtsp/RtspClient;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$MessageListener;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageChannel:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->uri:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->getSocket(Landroid/net/Uri;)Ljava/net/Socket;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->open(Ljava/net/Socket;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->receivedAuthorizationRequest:Z

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspAuthenticationInfo:Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->playbackEventListener:Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;

    .line 36
    .line 37
    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;->onPlaybackError(Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public seekToUs(J)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->hasPendingPauseRequest:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageSender:Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->uri:Landroid/net/Uri;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendPauseRequest(Landroid/net/Uri;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->pendingSeekPositionUs:J

    .line 26
    .line 27
    return-void
.end method

.method public setupSelectedTracks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->pendingSetupRtpLoadInfos:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->continueSetupRtspTrack()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public signalPlaybackEnded()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->rtspState:I

    .line 3
    .line 4
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageChannel:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->uri:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->getSocket(Landroid/net/Uri;)Ljava/net/Socket;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;->open(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageSender:Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->uri:Landroid/net/Uri;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendOptionsRequest(Landroid/net/Uri;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageChannel:Landroidx/media3/exoplayer/rtsp/RtspMessageChannel;

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public startPlayback(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->messageSender:Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->uri:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1, p2, v2}, Landroidx/media3/exoplayer/rtsp/RtspClient$MessageSender;->sendPlayRequest(Landroid/net/Uri;JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
