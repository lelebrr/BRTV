.class public final synthetic Landroidx/media3/exoplayer/drm/p;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic b:I

.field public final synthetic c:[B

.field public final synthetic d:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic e:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;I[BLcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/Format;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/p;->a:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/drm/p;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/drm/p;->c:[B

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/drm/p;->d:Lcom/google/common/util/concurrent/SettableFuture;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/media3/exoplayer/drm/p;->e:Landroidx/media3/common/Format;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/p;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/p;->c:[B

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/p;->a:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/p;->d:Lcom/google/common/util/concurrent/SettableFuture;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/media3/exoplayer/drm/p;->e:Landroidx/media3/common/Format;

    .line 10
    .line 11
    invoke-static {v2, v0, v1, v3, v4}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->d(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;I[BLcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/Format;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
