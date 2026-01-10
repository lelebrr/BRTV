.class public Landroidx/mediarouter/app/v;
.super Landroidx/fragment/app/m;
.source "MyApplication"


# instance fields
.field public final k0:Z

.field public l0:Landroidx/appcompat/app/i0;

.field public m0:Lq1/l0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/v;->k0:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/m;->Z:Z

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/fragment/app/m;->f0:Landroid/app/Dialog;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/m;->C()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/v;->l0:Landroidx/appcompat/app/i0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Landroidx/mediarouter/app/v;->k0:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroidx/mediarouter/app/u;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/u;->l(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final R()Landroid/app/Dialog;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/v;->k0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroidx/mediarouter/app/q0;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroidx/mediarouter/app/q0;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/mediarouter/app/v;->l0:Landroidx/appcompat/app/i0;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/mediarouter/app/v;->m0:Lq1/l0;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/mediarouter/app/q0;->l(Lq1/l0;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Landroidx/mediarouter/app/u;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Landroidx/mediarouter/app/u;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Landroidx/mediarouter/app/v;->l0:Landroidx/appcompat/app/i0;

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/v;->l0:Landroidx/appcompat/app/i0;

    .line 34
    .line 35
    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/s;->D:Z

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/mediarouter/app/v;->l0:Landroidx/appcompat/app/i0;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/mediarouter/app/v;->k0:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Landroidx/mediarouter/app/q0;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/mediarouter/app/q0;->m()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    check-cast p1, Landroidx/mediarouter/app/u;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/mediarouter/app/u;->u()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
