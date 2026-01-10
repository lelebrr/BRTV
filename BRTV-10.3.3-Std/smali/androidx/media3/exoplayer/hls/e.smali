.class public final synthetic Landroidx/media3/exoplayer/hls/e;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/media3/exoplayer/hls/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/e;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/e;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iput p3, p0, Landroidx/media3/exoplayer/hls/e;->c:I

    .line 8
    .line 9
    iput p4, p0, Landroidx/media3/exoplayer/hls/e;->d:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/e;->a:I

    .line 2
    .line 3
    check-cast p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iget v1, p0, Landroidx/media3/exoplayer/hls/e;->c:I

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/e;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 15
    .line 16
    iget v3, p0, Landroidx/media3/exoplayer/hls/e;->d:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1, v3, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->c(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;IILandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->b:Ljava/lang/Object;

    .line 23
    .line 24
    iget v1, p0, Landroidx/media3/exoplayer/hls/e;->c:I

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/e;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Landroidx/media3/common/MediaItem;

    .line 29
    .line 30
    iget v3, p0, Landroidx/media3/exoplayer/hls/e;->d:I

    .line 31
    .line 32
    invoke-static {v2, v0, v1, v3, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->a(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
