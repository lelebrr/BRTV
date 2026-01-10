.class public final Ld7/t0;
.super Lc7/w;
.source "MyApplication"


# instance fields
.field public final synthetic c:Ld7/u0;


# direct methods
.method public constructor <init>(Ld7/u0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld7/t0;->c:Ld7/u0;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lc7/w;-><init>(Ljava/util/AbstractMap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final remove(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Ljava/util/Collection;

    .line 6
    .line 7
    iget-object v0, p0, Ld7/t0;->c:Ld7/u0;

    .line 8
    .line 9
    iget-object v1, v0, Ld7/u0;->d:Ld7/y0;

    .line 10
    .line 11
    iget-object v1, v1, Ld7/y0;->f:Ld7/l5;

    .line 12
    .line 13
    invoke-interface {v1}, Ld7/p4;->d()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/util/Collection;

    .line 46
    .line 47
    new-instance v5, Ld7/x0;

    .line 48
    .line 49
    iget-object v6, v0, Ld7/u0;->d:Ld7/y0;

    .line 50
    .line 51
    invoke-direct {v5, v6, v3}, Ld7/x0;-><init>(Ld7/y0;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v5}, Ld7/y0;->o(Ljava/util/Collection;Ld7/x0;)Ld7/e0;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ld7/e0;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_0

    .line 63
    .line 64
    invoke-interface {p1, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_0

    .line 69
    .line 70
    invoke-virtual {v3}, Ld7/e0;->size()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/util/Collection;

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ne p1, v0, :cond_1

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v3}, Ld7/e0;->clear()V

    .line 91
    .line 92
    .line 93
    :goto_0
    const/4 p1, 0x1

    .line 94
    return p1

    .line 95
    :cond_2
    const/4 p1, 0x0

    .line 96
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/t0;->c:Ld7/u0;

    .line 2
    .line 3
    iget-object v0, v0, Ld7/u0;->d:Ld7/y0;

    .line 4
    .line 5
    new-instance v1, Lb7/q;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lb7/q;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Ld7/i4;->b:Ld7/h4;

    .line 11
    .line 12
    new-instance v2, Lb7/p;

    .line 13
    .line 14
    invoke-direct {v2, v1, p1}, Lb7/p;-><init>(Lb7/n;Ld7/i4;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ld7/y0;->p(Lb7/n;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/t0;->c:Ld7/u0;

    .line 2
    .line 3
    iget-object v0, v0, Ld7/u0;->d:Ld7/y0;

    .line 4
    .line 5
    new-instance v1, Lb7/q;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lb7/q;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lb7/t;

    .line 11
    .line 12
    invoke-direct {p1, v1}, Lb7/t;-><init>(Lb7/n;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Ld7/i4;->b:Ld7/h4;

    .line 16
    .line 17
    new-instance v2, Lb7/p;

    .line 18
    .line 19
    invoke-direct {v2, p1, v1}, Lb7/p;-><init>(Lb7/n;Ld7/i4;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ld7/y0;->p(Lb7/n;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method
