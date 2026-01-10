.class public abstract Ld7/g2;
.super Ld7/b0;
.source "MyApplication"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient f:Ld7/h5;

.field public final transient g:I


# direct methods
.method public constructor <init>(Ld7/h5;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld7/b0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld7/g2;->f:Ld7/h5;

    .line 5
    .line 6
    iput p2, p0, Ld7/g2;->g:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/g2;->p()Ld7/q1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final clear()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/g2;->f:Ld7/h5;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld7/z1;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic d()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/g2;->o()Ld7/z1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f()Ld7/v4;
    .locals 1

    .line 1
    invoke-super {p0}, Ld7/w;->f()Ld7/v4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ld7/e2;

    .line 6
    .line 7
    return-object v0
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-super {p0, p1}, Ld7/w;->h(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public final i()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    const-string v1, "should never be called"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final j()Ljava/util/Collection;
    .locals 1

    .line 1
    new-instance v0, Ld7/d2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ld7/d2;-><init>(Ld7/g2;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final k()Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    const-string v1, "unreachable"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/g2;->f:Ld7/h5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld7/z1;->e()Ld7/k2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final l()Ld7/v4;
    .locals 1

    .line 1
    new-instance v0, Ld7/e2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ld7/e2;-><init>(Ld7/g2;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final m()Ljava/util/Collection;
    .locals 1

    .line 1
    new-instance v0, Ld7/f2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ld7/f2;-><init>(Ld7/g2;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public o()Ld7/z1;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/g2;->f:Ld7/h5;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Ld7/q1;
    .locals 1

    .line 1
    invoke-super {p0}, Ld7/w;->a()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ld7/q1;

    .line 6
    .line 7
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final q()Ld7/k2;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/g2;->f:Ld7/h5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld7/z1;->e()Ld7/k2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final r()Ld7/q1;
    .locals 1

    .line 1
    invoke-super {p0}, Ld7/w;->values()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ld7/q1;

    .line 6
    .line 7
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Ld7/g2;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-super {p0}, Ld7/w;->values()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ld7/q1;

    .line 6
    .line 7
    return-object v0
.end method
