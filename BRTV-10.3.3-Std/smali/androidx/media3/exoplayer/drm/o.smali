.class public final synthetic Landroidx/media3/exoplayer/drm/o;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic c:Landroidx/media3/exoplayer/drm/DrmSession;

.field public final synthetic d:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/drm/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/o;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/o;->c:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/o;->d:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/exoplayer/drm/DrmSession;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/media3/exoplayer/drm/o;->a:I

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/o;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/o;->d:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/o;->c:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/o;->c:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/o;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/o;->d:Lcom/google/common/util/concurrent/SettableFuture;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->c(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/o;->d:Lcom/google/common/util/concurrent/SettableFuture;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/o;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/o;->c:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 21
    .line 22
    invoke-static {v2, v1, v0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->a(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/o;->c:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/o;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/o;->d:Lcom/google/common/util/concurrent/SettableFuture;

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->e(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
