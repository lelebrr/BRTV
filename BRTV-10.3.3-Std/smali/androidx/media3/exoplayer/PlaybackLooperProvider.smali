.class public final Landroidx/media3/exoplayer/PlaybackLooperProvider;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private internalPlaybackThread:Landroid/os/HandlerThread;

.field private final lock:Ljava/lang/Object;

.field private playbackLooper:Landroid/os/Looper;

.field private referenceCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/PlaybackLooperProvider;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->lock:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    return-void
.end method


# virtual methods
.method public obtainLooper()Landroid/os/Looper;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/os/HandlerThread;

    .line 26
    .line 27
    const-string v3, "ExoPlayer:Playback"

    .line 28
    .line 29
    const/16 v4, -0x10

    .line 30
    .line 31
    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    .line 46
    .line 47
    :cond_1
    iget v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    .line 48
    .line 49
    add-int/2addr v1, v2

    .line 50
    iput v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-object v1

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw v1
.end method

.method public releaseLooper()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    .line 16
    .line 17
    sub-int/2addr v1, v2

    .line 18
    iput v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 31
    .line 32
    iput-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_1
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method
