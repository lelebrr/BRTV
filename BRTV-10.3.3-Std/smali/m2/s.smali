.class public final Lm2/s;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lm2/p;


# instance fields
.field public final a:Lc2/l;

.field public final b:Lm2/i;

.field public final c:Lo2/a;

.field public final d:Landroidx/lifecycle/p;

.field public final e:Lt9/q0;


# direct methods
.method public constructor <init>(Lc2/l;Lm2/i;Lo2/a;Landroidx/lifecycle/p;Lt9/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm2/s;->a:Lc2/l;

    .line 5
    .line 6
    iput-object p2, p0, Lm2/s;->b:Lm2/i;

    .line 7
    .line 8
    iput-object p3, p0, Lm2/s;->c:Lo2/a;

    .line 9
    .line 10
    iput-object p4, p0, Lm2/s;->d:Landroidx/lifecycle/p;

    .line 11
    .line 12
    iput-object p5, p0, Lm2/s;->e:Lt9/q0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroidx/lifecycle/w;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Landroidx/lifecycle/w;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic e(Landroidx/lifecycle/w;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lm2/s;->c:Lo2/a;

    .line 2
    .line 3
    iget-object v1, v0, Lo2/a;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lo2/a;->b:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-static {v0}, Lr2/f;->c(Landroid/widget/ImageView;)Lm2/u;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, v0, Lm2/u;->d:Lm2/s;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v2, v1, Lm2/s;->e:Lt9/q0;

    .line 23
    .line 24
    invoke-static {v2}, Lt9/u;->c(Lt9/q0;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v1, Lm2/s;->c:Lo2/a;

    .line 28
    .line 29
    instance-of v3, v2, Landroidx/lifecycle/v;

    .line 30
    .line 31
    iget-object v4, v1, Lm2/s;->d:Landroidx/lifecycle/p;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4, v2}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v4, v1}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iput-object p0, v0, Lm2/u;->d:Lm2/s;

    .line 42
    .line 43
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 44
    .line 45
    const-string v1, "\'ViewTarget.view\' must be attached to a window."

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final onDestroy(Landroidx/lifecycle/w;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lm2/s;->c:Lo2/a;

    .line 2
    .line 3
    iget-object p1, p1, Lo2/a;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-static {p1}, Lr2/f;->c(Landroid/widget/ImageView;)Lm2/u;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v0, p1, Lm2/u;->c:Lt9/x;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lt9/u;->c(Lt9/q0;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lt9/i0;->a:Lt9/i0;

    .line 21
    .line 22
    sget-object v1, Lt9/b0;->a:Lz9/d;

    .line 23
    .line 24
    sget-object v1, Lx9/n;->a:Lu9/c;

    .line 25
    .line 26
    iget-object v1, v1, Lu9/c;->f:Lu9/c;

    .line 27
    .line 28
    new-instance v2, Lm2/t;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v2, p1, v3}, Lm2/t;-><init>(Lm2/u;La9/d;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    invoke-static {v0, v1, v2, v4}, Lt9/u;->k(Lt9/s;Lt9/p;Li9/p;I)Lt9/x;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p1, Lm2/u;->c:Lt9/x;

    .line 40
    .line 41
    iput-object v3, p1, Lm2/u;->b:Lm2/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    monitor-exit p1

    .line 44
    return-void

    .line 45
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw v0
.end method

.method public final onStart(Landroidx/lifecycle/w;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic onStop(Landroidx/lifecycle/w;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final start()V
    .locals 5

    .line 1
    iget-object v0, p0, Lm2/s;->d:Landroidx/lifecycle/p;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/v;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lm2/s;->c:Lo2/a;

    .line 7
    .line 8
    instance-of v2, v1, Landroidx/lifecycle/v;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/v;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, v1, Lo2/a;->b:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-static {v0}, Lr2/f;->c(Landroid/widget/ImageView;)Lm2/u;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, v0, Lm2/u;->d:Lm2/s;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v2, v1, Lm2/s;->e:Lt9/q0;

    .line 29
    .line 30
    invoke-static {v2}, Lt9/u;->c(Lt9/q0;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v1, Lm2/s;->c:Lo2/a;

    .line 34
    .line 35
    instance-of v3, v2, Landroidx/lifecycle/v;

    .line 36
    .line 37
    iget-object v4, v1, Lm2/s;->d:Landroidx/lifecycle/p;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4, v2}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v4, v1}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iput-object p0, v0, Lm2/u;->d:Lm2/s;

    .line 48
    .line 49
    return-void
.end method
