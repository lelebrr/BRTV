.class public final Ld7/w0;
.super Ld7/u4;
.source "MyApplication"


# instance fields
.field public final synthetic d:Ld7/y0;


# direct methods
.method public constructor <init>(Ld7/y0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld7/w0;->d:Ld7/y0;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ld7/u4;-><init>(Ld7/w;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/Object;)I
    .locals 5

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
    invoke-virtual {p0, p2}, Ld7/u4;->count(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Ld7/w0;->d:Ld7/y0;

    .line 14
    .line 15
    iget-object v1, v0, Ld7/y0;->f:Ld7/l5;

    .line 16
    .line 17
    invoke-interface {v1}, Ld7/p4;->d()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Collection;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v4, Ld7/r1;

    .line 46
    .line 47
    invoke-direct {v4, p2, v3}, Ld7/r1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v0, Ld7/y0;->g:Lb7/o;

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Lb7/o;->apply(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    if-gt v2, p1, :cond_2

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    return v2
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ld7/y;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Ld7/y;-><init>(Ld7/z;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
