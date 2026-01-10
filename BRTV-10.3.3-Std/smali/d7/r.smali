.class public Ld7/r;
.super Ld7/m;
.source "MyApplication"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field public final synthetic f:Ld7/s4;


# direct methods
.method public constructor <init>(Ld7/s4;Ljava/lang/Object;Ljava/util/SortedSet;Ld7/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld7/r;->f:Ld7/s4;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Ld7/m;-><init>(Ld7/s;Ljava/lang/Object;Ljava/util/Collection;Ld7/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/r;->f()Ljava/util/SortedSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public f()Ljava/util/SortedSet;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/m;->b:Ljava/util/Collection;

    .line 2
    .line 3
    check-cast v0, Ljava/util/SortedSet;

    .line 4
    .line 5
    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/m;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ld7/r;->f()Ljava/util/SortedSet;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ld7/m;->d()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld7/r;

    .line 5
    .line 6
    invoke-virtual {p0}, Ld7/r;->f()Ljava/util/SortedSet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v1, p0, Ld7/m;->c:Ld7/m;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    move-object v1, p0

    .line 19
    :cond_0
    iget-object v2, p0, Ld7/r;->f:Ld7/s4;

    .line 20
    .line 21
    iget-object v3, p0, Ld7/m;->a:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0, v2, v3, p1, v1}, Ld7/r;-><init>(Ld7/s4;Ljava/lang/Object;Ljava/util/SortedSet;Ld7/m;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/m;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ld7/r;->f()Ljava/util/SortedSet;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld7/m;->d()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld7/r;

    .line 5
    .line 6
    invoke-virtual {p0}, Ld7/r;->f()Ljava/util/SortedSet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Ld7/m;->c:Ld7/m;

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    move-object p2, p0

    .line 19
    :cond_0
    iget-object v1, p0, Ld7/r;->f:Ld7/s4;

    .line 20
    .line 21
    iget-object v2, p0, Ld7/m;->a:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2, p1, p2}, Ld7/r;-><init>(Ld7/s4;Ljava/lang/Object;Ljava/util/SortedSet;Ld7/m;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ld7/m;->d()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld7/r;

    .line 5
    .line 6
    invoke-virtual {p0}, Ld7/r;->f()Ljava/util/SortedSet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v1, p0, Ld7/m;->c:Ld7/m;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    move-object v1, p0

    .line 19
    :cond_0
    iget-object v2, p0, Ld7/r;->f:Ld7/s4;

    .line 20
    .line 21
    iget-object v3, p0, Ld7/m;->a:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0, v2, v3, p1, v1}, Ld7/r;-><init>(Ld7/s4;Ljava/lang/Object;Ljava/util/SortedSet;Ld7/m;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
