.class public final synthetic Landroidx/media3/decoder/ffmpeg/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/decoder/DecoderOutputBuffer$Owner;


# instance fields
.field public final synthetic a:Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->a:Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Landroidx/media3/decoder/DecoderOutputBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/a;->a:Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    .line 2
    .line 3
    check-cast p1, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->a(Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;Landroidx/media3/decoder/DecoderOutputBuffer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
