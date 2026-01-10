.class public Lx9/r;
.super Lt9/a;
.source "MyApplication"

# interfaces
.implements Lc9/d;


# instance fields
.field public final d:Lc9/c;


# direct methods
.method public constructor <init>(La9/i;Lc9/c;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lt9/a;-><init>(La9/i;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lx9/r;->d:Lc9/c;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getCallerFrame()Lc9/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lx9/r;->d:Lc9/c;

    .line 2
    .line 3
    instance-of v1, v0, Lc9/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx9/r;->d:Lc9/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/d;->r(La9/d;)La9/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lt9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1, v0}, Lx9/a;->g(Ljava/lang/Object;La9/d;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx9/r;->d:Lc9/c;

    .line 2
    .line 3
    invoke-static {p1}, Lt9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, La9/d;->resumeWith(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final z()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
