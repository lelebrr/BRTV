.class public Landroidx/mediarouter/app/g;
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
    iput-boolean v0, p0, Landroidx/mediarouter/app/g;->k0:Z

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
.method public final R()Landroid/app/Dialog;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/g;->k0:Z

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
    new-instance v1, Landroidx/mediarouter/app/c0;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroidx/mediarouter/app/c0;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/mediarouter/app/g;->l0:Landroidx/appcompat/app/i0;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/mediarouter/app/g;->T()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/mediarouter/app/g;->m0:Lq1/l0;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/mediarouter/app/c0;->j(Lq1/l0;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Landroidx/mediarouter/app/f;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Landroidx/mediarouter/app/f;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroidx/mediarouter/app/g;->l0:Landroidx/appcompat/app/i0;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/mediarouter/app/g;->T()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroidx/mediarouter/app/g;->m0:Lq1/l0;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroidx/mediarouter/app/f;->k(Lq1/l0;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/g;->l0:Landroidx/appcompat/app/i0;

    .line 45
    .line 46
    return-object v0
.end method

.method public final T()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/g;->m0:Lq1/l0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/s;->g:Landroid/os/Bundle;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "selector"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lq1/l0;->b(Landroid/os/Bundle;)Lq1/l0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroidx/mediarouter/app/g;->m0:Lq1/l0;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/g;->m0:Lq1/l0;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lq1/l0;->c:Lq1/l0;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/mediarouter/app/g;->m0:Lq1/l0;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/s;->D:Z

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/mediarouter/app/g;->l0:Landroidx/appcompat/app/i0;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/g;->k0:Z

    .line 10
    .line 11
    const/4 v1, -0x2

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    check-cast p1, Landroidx/mediarouter/app/c0;

    .line 15
    .line 16
    iget-object v0, p1, Landroidx/mediarouter/app/c0;->g:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const v3, 0x7f050002

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v4, -0x1

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v0}, Ln5/d;->v(Landroid/content/Context;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    check-cast p1, Landroidx/mediarouter/app/f;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Ln5/d;->v(Landroid/content/Context;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void
.end method
