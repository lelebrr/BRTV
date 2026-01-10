.class public Ld7/w1;
.super Ld7/g2;
.source "MyApplication"

# interfaces
.implements Ld7/w2;


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld7/w1;->s(Ljava/lang/Object;)Ld7/u1;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ld7/w1;->s(Ljava/lang/Object;)Ld7/u1;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ld7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/g2;->f:Ld7/h5;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld7/h5;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ld7/u1;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Ld7/u1;->b:Ld7/g1;

    .line 12
    .line 13
    sget-object p1, Ld7/c5;->e:Ld7/c5;

    .line 14
    .line 15
    :cond_0
    return-object p1
.end method
