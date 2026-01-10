.class public final Landroidx/fragment/app/s0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/lifecycle/j;
.implements Lv1/e;
.implements Landroidx/lifecycle/a1;


# instance fields
.field public final a:Landroidx/fragment/app/s;

.field public final b:Landroidx/lifecycle/z0;

.field public c:Landroidx/lifecycle/y0;

.field public d:Landroidx/lifecycle/y;

.field public e:Lk3/t;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/s;Landroidx/lifecycle/z0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/s0;->d:Landroidx/lifecycle/y;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/fragment/app/s0;->e:Lk3/t;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/fragment/app/s0;->a:Landroidx/fragment/app/s;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/fragment/app/s0;->b:Landroidx/lifecycle/z0;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/widget/v;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/s0;->e:Lk3/t;

    .line 5
    .line 6
    iget-object v0, v0, Lk3/t;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/appcompat/widget/v;

    .line 9
    .line 10
    return-object v0
.end method

.method public final b(Landroidx/lifecycle/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s0;->d:Landroidx/lifecycle/y;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->f(Landroidx/lifecycle/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()Landroidx/lifecycle/y0;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s0;->a:Landroidx/fragment/app/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/s;->c()Landroidx/lifecycle/y0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Landroidx/fragment/app/s;->P:Landroidx/lifecycle/s0;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iput-object v1, p0, Landroidx/fragment/app/s0;->c:Landroidx/lifecycle/y0;

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/s0;->c:Landroidx/lifecycle/y0;

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/s;->K()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    instance-of v2, v1, Landroid/app/Application;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    check-cast v1, Landroid/app/Application;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    check-cast v1, Landroid/content/ContextWrapper;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    :goto_1
    new-instance v2, Landroidx/lifecycle/s0;

    .line 50
    .line 51
    iget-object v0, v0, Landroidx/fragment/app/s;->g:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {v2, v1, p0, v0}, Landroidx/lifecycle/s0;-><init>(Landroid/app/Application;Lv1/e;Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Landroidx/fragment/app/s0;->c:Landroidx/lifecycle/y0;

    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/lifecycle/y0;

    .line 59
    .line 60
    return-object v0
.end method

.method public final d()Ld7/c2;
    .locals 1

    .line 1
    sget-object v0, Lj1/a;->b:Lj1/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Landroidx/lifecycle/z0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/s0;->b:Landroidx/lifecycle/z0;

    .line 5
    .line 6
    return-object v0
.end method

.method public final f()Landroidx/lifecycle/p;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/s0;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/s0;->d:Landroidx/lifecycle/y;

    .line 5
    .line 6
    return-object v0
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/s0;->d:Landroidx/lifecycle/y;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/lifecycle/y;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/w;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/fragment/app/s0;->d:Landroidx/lifecycle/y;

    .line 11
    .line 12
    new-instance v0, Lk3/t;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lk3/t;-><init>(Lv1/e;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/fragment/app/s0;->e:Lk3/t;

    .line 18
    .line 19
    :cond_0
    return-void
.end method
