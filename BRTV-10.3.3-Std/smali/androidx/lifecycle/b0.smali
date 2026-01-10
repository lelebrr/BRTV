.class public final Landroidx/lifecycle/b0;
.super Landroidx/lifecycle/c0;
.source "MyApplication"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final e:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic f:Landroidx/lifecycle/d0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/d0;Landroidx/fragment/app/FragmentActivity;Landroidx/lifecycle/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/b0;->f:Landroidx/lifecycle/d0;

    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/d0;Landroidx/lifecycle/e0;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/lifecycle/b0;->e:Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/b0;->e:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/y;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/lifecycle/y;->c(Landroidx/lifecycle/v;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/b0;->e:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/b0;->e:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/y;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 6
    .line 7
    sget-object v1, Landroidx/lifecycle/o;->d:Landroidx/lifecycle/o;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final onStateChanged(Landroidx/lifecycle/w;Landroidx/lifecycle/n;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/b0;->e:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iget-object p2, p1, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/y;

    .line 4
    .line 5
    iget-object p2, p2, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 6
    .line 7
    sget-object v0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/o;

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/lifecycle/b0;->f:Landroidx/lifecycle/d0;

    .line 12
    .line 13
    iget-object p2, p0, Landroidx/lifecycle/c0;->a:Landroidx/lifecycle/e0;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/lifecycle/d0;->i(Landroidx/lifecycle/e0;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eq v0, p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/lifecycle/b0;->i()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Landroidx/lifecycle/c0;->d(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/y;

    .line 30
    .line 31
    iget-object v0, v0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    move-object v0, p2

    .line 35
    move-object p2, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method
