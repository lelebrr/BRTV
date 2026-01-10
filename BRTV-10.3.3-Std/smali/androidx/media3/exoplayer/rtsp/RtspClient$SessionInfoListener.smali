.class public interface abstract Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionInfoListener"
.end annotation


# virtual methods
.method public abstract onSessionTimelineRequestFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onSessionTimelineUpdated(Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;Ld7/u1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;",
            "Ld7/u1;",
            ")V"
        }
    .end annotation
.end method
