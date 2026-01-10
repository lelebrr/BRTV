.class final Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/DefaultVideoSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameRendererImpl"
.end annotation


# instance fields
.field private outputFormat:Landroidx/media3/common/Format;

.field final synthetic this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/video/DefaultVideoSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/DefaultVideoSink;Landroidx/media3/exoplayer/video/DefaultVideoSink$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->lambda$renderFrame$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->lambda$dropFrame$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->lambda$onVideoSizeChanged$0(Landroidx/media3/common/VideoSize;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$dropFrame$2()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$600(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onFrameDropped(Landroidx/media3/exoplayer/video/VideoSink;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic lambda$onVideoSizeChanged$0(Landroidx/media3/common/VideoSize;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$600(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onVideoSizeChanged(Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/common/VideoSize;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic lambda$renderFrame$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$600(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onFirstFrameRendered(Landroidx/media3/exoplayer/video/VideoSink;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public dropFrame()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$100(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/media3/exoplayer/video/c;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2, p0}, Landroidx/media3/exoplayer/video/c;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$500(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/Queue;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    .line 27
    .line 28
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;->skip()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p1, Landroidx/media3/common/VideoSize;->height:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "video/raw"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->outputFormat:Landroidx/media3/common/Format;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$100(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Landroidx/media3/exoplayer/video/d;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v1, p0, v2, p1}, Landroidx/media3/exoplayer/video/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public renderFrame(JJZ)V
    .locals 7

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    iget-object p5, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 4
    .line 5
    invoke-static {p5}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$200(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroid/view/Surface;

    .line 6
    .line 7
    .line 8
    move-result-object p5

    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    iget-object p5, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 12
    .line 13
    invoke-static {p5}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$100(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    new-instance v0, Landroidx/media3/exoplayer/video/c;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/video/c;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p5, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->outputFormat:Landroidx/media3/common/Format;

    .line 27
    .line 28
    if-nez p5, :cond_1

    .line 29
    .line 30
    new-instance p5, Landroidx/media3/common/Format$Builder;

    .line 31
    .line 32
    invoke-direct {p5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 36
    .line 37
    .line 38
    move-result-object p5

    .line 39
    :cond_1
    move-object v5, p5

    .line 40
    iget-object p5, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 41
    .line 42
    invoke-static {p5}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$400(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object p5, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 47
    .line 48
    invoke-static {p5}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$300(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/common/util/Clock;

    .line 49
    .line 50
    .line 51
    move-result-object p5

    .line 52
    invoke-interface {p5}, Landroidx/media3/common/util/Clock;->nanoTime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    const/4 v6, 0x0

    .line 57
    move-wide v1, p3

    .line 58
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 59
    .line 60
    .line 61
    iget-object p3, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 62
    .line 63
    invoke-static {p3}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$500(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/Queue;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-interface {p3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    check-cast p3, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    .line 72
    .line 73
    invoke-interface {p3, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;->render(J)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
