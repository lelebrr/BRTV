.class public final synthetic Landroidx/media3/exoplayer/video/f;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/media3/exoplayer/video/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/video/f;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/video/f;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/media3/exoplayer/video/f;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/video/f;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/video/f;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/exoplayer/video/f;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroidx/media3/common/Format;

    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->h(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/f;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroidx/media3/common/VideoFrameProcessingException;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/media3/exoplayer/video/f;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/media3/exoplayer/video/f;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 33
    .line 34
    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->a(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/common/VideoFrameProcessingException;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/f;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroidx/media3/common/VideoSize;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/media3/exoplayer/video/f;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/media3/exoplayer/video/f;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 49
    .line 50
    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->b(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Landroidx/media3/exoplayer/video/VideoSink$Listener;Landroidx/media3/common/VideoSize;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
