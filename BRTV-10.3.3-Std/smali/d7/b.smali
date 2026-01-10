.class public abstract Ld7/b;
.super Ld7/s;
.source "MyApplication"

# interfaces
.implements Ld7/w2;


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ld7/s;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ld7/s;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final r(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final s(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    instance-of v0, p1, Ljava/util/RandomAccess;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ld7/j;

    .line 9
    .line 10
    invoke-direct {v0, p0, p2, p1, v1}, Ld7/o;-><init>(Ld7/s;Ljava/lang/Object;Ljava/util/List;Ld7/m;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ld7/o;

    .line 15
    .line 16
    invoke-direct {v0, p0, p2, p1, v1}, Ld7/o;-><init>(Ld7/s;Ljava/lang/Object;Ljava/util/List;Ld7/m;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-object v0
.end method
