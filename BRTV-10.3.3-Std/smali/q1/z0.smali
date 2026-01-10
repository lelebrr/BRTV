.class public final Lq1/z0;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "MyApplication"


# instance fields
.field public final a:Lq1/e1;


# direct methods
.method public constructor <init>(Lq1/e1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq1/z0;->a:Lq1/e1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq1/z0;->a:Lq1/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lq1/e1;->m(Landroid/media/MediaRouter$RouteInfo;)Lq1/d1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lq1/d1;->a:Lq1/s0;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lq1/s0;->j(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq1/z0;->a:Lq1/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lq1/e1;->m(Landroid/media/MediaRouter$RouteInfo;)Lq1/d1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lq1/d1;->a:Lq1/s0;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lq1/s0;->k(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
