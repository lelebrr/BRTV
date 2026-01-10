.class public final Lq1/i0;
.super Lq1/o0;
.source "MyApplication"


# instance fields
.field public final synthetic a:Landroid/os/Messenger;

.field public final synthetic b:I

.field public final synthetic c:Lq1/k0;


# direct methods
.method public constructor <init>(Lq1/k0;Lq1/j0;ILandroid/content/Intent;Landroid/os/Messenger;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq1/i0;->c:Lq1/k0;

    .line 5
    .line 6
    iput-object p5, p0, Lq1/i0;->a:Landroid/os/Messenger;

    .line 7
    .line 8
    iput p6, p0, Lq1/i0;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13

    .line 1
    sget v0, Landroidx/mediarouter/media/MediaRouteProviderService;->f:I

    .line 2
    .line 3
    iget-object v0, p0, Lq1/i0;->c:Lq1/k0;

    .line 4
    .line 5
    iget-object v1, p0, Lq1/i0;->a:Landroid/os/Messenger;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq1/k0;->c(Landroid/os/Messenger;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance v6, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "error"

    .line 21
    .line 22
    invoke-virtual {v6, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lq1/i0;->a:Landroid/os/Messenger;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    iget v3, p0, Lq1/i0;->b:I

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v5, p2

    .line 32
    invoke-static/range {v1 .. v6}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v8, 0x4

    .line 37
    iget v9, p0, Lq1/i0;->b:I

    .line 38
    .line 39
    iget-object v7, p0, Lq1/i0;->a:Landroid/os/Messenger;

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v12, 0x0

    .line 43
    move-object v11, p2

    .line 44
    invoke-static/range {v7 .. v12}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    sget v0, Landroidx/mediarouter/media/MediaRouteProviderService;->f:I

    .line 2
    .line 3
    iget-object v0, p0, Lq1/i0;->c:Lq1/k0;

    .line 4
    .line 5
    iget-object v1, p0, Lq1/i0;->a:Landroid/os/Messenger;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq1/k0;->c(Landroid/os/Messenger;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    iget v3, p0, Lq1/i0;->b:I

    .line 15
    .line 16
    iget-object v1, p0, Lq1/i0;->a:Landroid/os/Messenger;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v5, p1

    .line 21
    invoke-static/range {v1 .. v6}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
