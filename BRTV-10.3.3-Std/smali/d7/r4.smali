.class public final Ld7/r4;
.super Ld7/b;
.source "MyApplication"


# instance fields
.field public transient h:Ld7/q4;


# virtual methods
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
    iget-object v0, p0, Ld7/r4;->h:Ld7/q4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld7/q4;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method
