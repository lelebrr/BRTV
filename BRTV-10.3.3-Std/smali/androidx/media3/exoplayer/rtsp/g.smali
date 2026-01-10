.class public final synthetic Landroidx/media3/exoplayer/rtsp/g;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/RtpDataLoadable$EventListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/g;->a:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTransportReady(Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/g;->a:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->a(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
