.class public final Ld7/y4;
.super Ld7/z;
.source "MyApplication"


# instance fields
.field public final c:Ld7/v4;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld7/v4;Lb7/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld7/z;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ld7/y4;->c:Ld7/v4;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Ld7/y4;->d:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)I
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/y4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lb7/n;->apply(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    check-cast v0, Ljava/io/Serializable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ld7/y4;->c:Ld7/v4;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ld7/v4;->add(ILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object p2, v1, v2

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    aput-object v0, v1, p2

    .line 28
    .line 29
    const-string p2, "Element %s does not match predicate %s"

    .line 30
    .line 31
    invoke-static {p2, v1}, Lb7/b;->s(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final b(ILjava/lang/Object;)I
    .locals 1

    .line 1
    const-string v0, "occurrences"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ld7/d0;->d(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Ld7/y4;->count(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Ld7/z;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Ld7/y4;->c:Ld7/v4;

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Ld7/v4;->b(ILjava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    :goto_0
    return p1
.end method

.method public final c()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/y4;->c:Ld7/v4;

    .line 2
    .line 3
    invoke-interface {v0}, Ld7/v4;->elementSet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ld7/y4;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0, v1}, Ld7/d0;->l(Ljava/util/Set;Lb7/n;)Ld7/n5;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/z;->elementSet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final count(Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/y4;->c:Ld7/v4;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ld7/v4;->count(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Ld7/y4;->d:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-interface {v2, p1}, Lb7/n;->apply(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_1
    return v1
.end method

.method public final d()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/y4;->c:Ld7/v4;

    .line 2
    .line 3
    invoke-interface {v0}, Ld7/v4;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ld7/x4;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Ld7/x4;-><init>(Ld7/y4;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ld7/d0;->l(Ljava/util/Set;Lb7/n;)Ld7/n5;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/z;->elementSet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final f()Ljava/util/Iterator;
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

.method public final g()Ljava/util/Iterator;
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

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/y4;->c:Ld7/v4;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ld7/y4;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v2, Ld7/s0;

    .line 16
    .line 17
    invoke-direct {v2, v0, v1}, Ld7/s0;-><init>(Ljava/util/Iterator;Lb7/n;)V

    .line 18
    .line 19
    .line 20
    return-object v2
.end method

.method public final size()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ld7/z;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ld7/w4;

    .line 22
    .line 23
    invoke-virtual {v3}, Ld7/w4;->a()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    int-to-long v3, v3

    .line 28
    add-long/2addr v1, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v1, v2}, Lr4/b;->K(J)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method
