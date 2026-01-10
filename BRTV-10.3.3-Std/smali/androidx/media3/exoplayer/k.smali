.class public abstract synthetic Landroidx/media3/exoplayer/k;
.super Ljava/lang/Object;
.source "MyApplication"


# direct methods
.method public static bridge synthetic a(Landroidx/media3/exoplayer/ExoPlayer;)Landroidx/media3/common/PlaybackException;
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Landroidx/media3/exoplayer/ExoPlayer;I)Landroidx/media3/exoplayer/Renderer;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
