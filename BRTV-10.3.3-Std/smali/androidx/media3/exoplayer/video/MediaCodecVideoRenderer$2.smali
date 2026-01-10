.class Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

.field final synthetic val$bufferIndex:I

.field final synthetic val$codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

.field final synthetic val$presentationTimeUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 4
    .line 5
    iput p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$bufferIndex:I

    .line 6
    .line 7
    iput-wide p4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$presentationTimeUs:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public render(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$bufferIndex:I

    .line 6
    .line 7
    iget-wide v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$presentationTimeUs:J

    .line 8
    .line 9
    move-wide v5, p1

    .line 10
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1600(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public skip()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$bufferIndex:I

    .line 6
    .line 7
    iget-wide v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$presentationTimeUs:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
