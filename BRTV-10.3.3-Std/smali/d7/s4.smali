.class public final Ld7/s4;
.super Ld7/s;
.source "MyApplication"

# interfaces
.implements Ld7/l5;


# instance fields
.field public transient h:Ld7/q4;


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-super {p0}, Ld7/w;->a()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final a()Ljava/util/Set;
    .locals 1

    .line 2
    invoke-super {p0}, Ld7/w;->a()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ld7/s;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ld7/s;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public final i()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/s;->p()Ld7/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final k()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/s;->q()Ld7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final o()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/s4;->h:Ld7/q4;

    .line 2
    .line 3
    iget v0, v0, Ld7/q4;->b:I

    .line 4
    .line 5
    invoke-static {v0}, Ld7/k0;->d(I)Ld7/k0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final r(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/NavigableSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/NavigableSet;

    .line 6
    .line 7
    invoke-static {p1}, Ld7/d0;->I(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p1, Ljava/util/SortedSet;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    check-cast p1, Ljava/util/Set;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public final s(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/NavigableSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ld7/p;

    .line 7
    .line 8
    check-cast p1, Ljava/util/NavigableSet;

    .line 9
    .line 10
    invoke-direct {v0, p0, p2, p1, v1}, Ld7/p;-><init>(Ld7/s4;Ljava/lang/Object;Ljava/util/NavigableSet;Ld7/m;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Ld7/r;

    .line 19
    .line 20
    check-cast p1, Ljava/util/SortedSet;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2, p1, v1}, Ld7/r;-><init>(Ld7/s4;Ljava/lang/Object;Ljava/util/SortedSet;Ld7/m;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v0, Ld7/q;

    .line 27
    .line 28
    check-cast p1, Ljava/util/Set;

    .line 29
    .line 30
    invoke-direct {v0, p0, p2, p1}, Ld7/q;-><init>(Ld7/s4;Ljava/lang/Object;Ljava/util/Set;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
