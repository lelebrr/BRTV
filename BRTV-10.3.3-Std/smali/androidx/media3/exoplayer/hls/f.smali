.class public final synthetic Landroidx/media3/exoplayer/hls/f;
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

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Landroidx/media3/exoplayer/hls/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/f;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/f;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iput p3, p0, Landroidx/media3/exoplayer/hls/f;->c:I

    .line 8
    .line 9
    iput p4, p0, Landroidx/media3/exoplayer/hls/f;->d:I

    .line 10
    .line 11
    iput-object p5, p0, Landroidx/media3/exoplayer/hls/f;->f:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    move-object v6, p1

    .line 7
    check-cast v6, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    .line 8
    .line 9
    iget v3, p0, Landroidx/media3/exoplayer/hls/f;->c:I

    .line 10
    .line 11
    iget v4, p0, Landroidx/media3/exoplayer/hls/f;->d:I

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/f;->e:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v1, p1

    .line 16
    check-cast v1, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/f;->b:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/f;->f:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v5, p1

    .line 23
    check-cast v5, Ljava/io/IOException;

    .line 24
    .line 25
    invoke-static/range {v1 .. v6}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->d(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;IILjava/io/IOException;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    move-object v12, p1

    .line 30
    check-cast v12, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    .line 31
    .line 32
    iget v9, p0, Landroidx/media3/exoplayer/hls/f;->c:I

    .line 33
    .line 34
    iget v10, p0, Landroidx/media3/exoplayer/hls/f;->d:I

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/f;->e:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v7, p1

    .line 39
    check-cast v7, Landroidx/media3/common/MediaItem;

    .line 40
    .line 41
    iget-object v8, p0, Landroidx/media3/exoplayer/hls/f;->b:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/f;->f:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v11, p1

    .line 46
    check-cast v11, Landroidx/media3/common/Metadata;

    .line 47
    .line 48
    invoke-static/range {v7 .. v12}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->b(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
