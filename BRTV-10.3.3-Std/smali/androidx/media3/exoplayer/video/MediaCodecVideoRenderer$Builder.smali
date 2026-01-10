.class public final Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowedJoiningTimeMs:J

.field private assumedMinimumCodecOperatingRate:F

.field private buildCalled:Z

.field private codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

.field private final context:Landroid/content/Context;

.field private enableDecoderFallback:Z

.field private eventHandler:Landroid/os/Handler;

.field private eventListener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

.field private lateThresholdToDropDecoderInputUs:J

.field private maxDroppedFramesToNotify:I

.field private mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field private parseAv1SampleDependencies:Z

.field private videoSink:Landroidx/media3/exoplayer/video/VideoSink;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->context:Landroid/content/Context;

    .line 5
    .line 6
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/f;->a(Landroid/content/Context;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 15
    .line 16
    const/high16 p1, 0x41f00000    # 30.0f

    .line 17
    .line 18
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->assumedMinimumCodecOperatingRate:F

    .line 19
    .line 20
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->lateThresholdToDropDecoderInputUs:J

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->parseAv1SampleDependencies:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1100(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->lateThresholdToDropDecoderInputUs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->enableDecoderFallback:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->assumedMinimumCodecOperatingRate:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->maxDroppedFramesToNotify:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$600(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroidx/media3/exoplayer/video/VideoSink;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->allowedJoiningTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->buildCalled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 26
    .line 27
    .line 28
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->buildCalled:Z

    .line 29
    .line 30
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public experimentalSetLateThresholdToDropDecoderInputUs(J)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->lateThresholdToDropDecoderInputUs:J

    .line 2
    .line 3
    return-object p0
.end method

.method public experimentalSetParseAv1SampleDependencies(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->parseAv1SampleDependencies:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setAllowedJoiningTimeMs(J)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->allowedJoiningTimeMs:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setAssumedMinimumCodecOperatingRate(F)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->assumedMinimumCodecOperatingRate:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setCodecAdapterFactory(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->enableDecoderFallback:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setEventHandler(Landroid/os/Handler;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEventListener(Landroidx/media3/exoplayer/video/VideoRendererEventListener;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxDroppedFramesToNotify(I)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->maxDroppedFramesToNotify:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVideoSink(Landroidx/media3/exoplayer/video/VideoSink;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    return-object p0
.end method
