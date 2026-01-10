.class public final Lm2/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lm2/p;


# instance fields
.field public final a:Landroidx/lifecycle/p;

.field public final b:Lt9/q0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/p;Lt9/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm2/a;->a:Landroidx/lifecycle/p;

    .line 5
    .line 6
    iput-object p2, p0, Lm2/a;->b:Lt9/q0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/a;->a:Landroidx/lifecycle/p;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 4
    .line 5
    .line 6
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

.method public final synthetic f()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/w;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm2/a;->b:Lt9/q0;

    .line 2
    .line 3
    invoke-static {p1}, Lt9/u;->c(Lt9/q0;)V

    .line 4
    .line 5
    .line 6
    return-void
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
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/a;->a:Landroidx/lifecycle/p;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/v;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
