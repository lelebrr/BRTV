.class public final Ld7/y0;
.super Ld7/w;
.source "MyApplication"

# interfaces
.implements Ld7/e1;
.implements Ld7/d1;


# instance fields
.field public final f:Ld7/l5;

.field public final g:Lb7/o;


# direct methods
.method public constructor <init>(Ld7/l5;Lb7/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld7/w;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ld7/y0;->f:Ld7/l5;

    .line 8
    .line 9
    iput-object p2, p0, Ld7/y0;->g:Lb7/o;

    .line 10
    .line 11
    return-void
.end method

.method public static o(Ljava/util/Collection;Ld7/x0;)Ld7/e0;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/Set;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/util/Set;

    .line 6
    .line 7
    invoke-static {p0, p1}, Ld7/d0;->l(Ljava/util/Set;Lb7/n;)Ld7/n5;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0, p1}, Ld7/d0;->k(Ljava/util/Collection;Lb7/n;)Ld7/e0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


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

.method public final b()Ld7/l5;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/y0;->f:Ld7/l5;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lb7/n;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/y0;->g:Lb7/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Ld7/w;->a()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/w;->d()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public final e()Ld7/l5;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/y0;->f:Ld7/l5;

    .line 2
    .line 3
    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld7/y0;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    .line 2
    iget-object v0, p0, Ld7/y0;->f:Ld7/l5;

    invoke-interface {v0, p1}, Ld7/p4;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ld7/x0;

    invoke-direct {v1, p0, p1}, Ld7/x0;-><init>(Ld7/y0;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Ld7/y0;->o(Ljava/util/Collection;Ld7/x0;)Ld7/e0;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public final i()Ljava/util/Map;
    .locals 1

    .line 1
    new-instance v0, Ld7/u0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ld7/u0;-><init>(Ld7/y0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final j()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/y0;->f:Ld7/l5;

    .line 2
    .line 3
    invoke-interface {v0}, Ld7/l5;->a()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ld7/y0;->g:Lb7/o;

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

.method public final k()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/w;->d()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final l()Ld7/v4;
    .locals 1

    .line 1
    new-instance v0, Ld7/w0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ld7/w0;-><init>(Ld7/y0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final m()Ljava/util/Collection;
    .locals 1

    .line 1
    new-instance v0, Lc7/w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lc7/w;-><init>(Ld7/d1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final p(Lb7/n;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Ld7/y0;->f:Ld7/l5;

    .line 2
    .line 3
    invoke-interface {v0}, Ld7/p4;->d()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/util/Collection;

    .line 37
    .line 38
    new-instance v5, Ld7/x0;

    .line 39
    .line 40
    invoke-direct {v5, p0, v3}, Ld7/x0;-><init>(Ld7/y0;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v5}, Ld7/y0;->o(Ljava/util/Collection;Ld7/x0;)Ld7/e0;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ld7/e0;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    new-instance v5, Ld7/r1;

    .line 54
    .line 55
    invoke-direct {v5, v3, v4}, Ld7/r1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v5}, Lb7/n;->apply(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    invoke-virtual {v4}, Ld7/e0;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/util/Collection;

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-ne v1, v2, :cond_1

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v4}, Ld7/e0;->clear()V

    .line 85
    .line 86
    .line 87
    :goto_1
    const/4 v1, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    return v1
.end method

.method public final size()I
    .locals 1

    .line 1
    invoke-super {p0}, Ld7/w;->a()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
