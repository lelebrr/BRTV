.class public interface abstract Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaybackEventListener"
.end annotation


# virtual methods
.method public abstract onPlaybackError(Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V
.end method

.method public abstract onPlaybackStarted(JLd7/u1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ld7/u1;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRtspSetupCompleted()V
.end method
