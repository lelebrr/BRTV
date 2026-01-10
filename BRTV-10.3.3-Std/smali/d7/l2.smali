.class public final Ld7/l2;
.super Ld7/c2;
.source "MyApplication"


# virtual methods
.method public final a(Ljava/lang/Iterable;)I
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Set;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    return v1
.end method

.method public final b(I)Ld7/p1;
    .locals 1

    .line 1
    sget v0, Ld7/k2;->c:I

    .line 2
    .line 3
    const-string v0, "expectedSize"

    .line 4
    .line 5
    invoke-static {p1, v0}, Ld7/d0;->d(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ld7/j2;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ld7/p1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ld7/k2;->j(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    new-array p1, p1, [Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p1, v0, Ld7/j2;->d:[Ljava/lang/Object;

    .line 20
    .line 21
    return-object v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ld7/c2;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ld7/c2;->d(Ljava/lang/Object;Ljava/lang/Object;)Ld7/c2;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
