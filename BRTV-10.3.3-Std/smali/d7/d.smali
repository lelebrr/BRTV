.class public final Ld7/d;
.super Ld7/j4;
.source "MyApplication"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/AbstractMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/AbstractMap;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld7/d;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ld7/d;->c:Ljava/util/AbstractMap;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Ld7/j4;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Map;
    .locals 1

    .line 1
    iget v0, p0, Ld7/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld7/d;->c:Ljava/util/AbstractMap;

    .line 7
    .line 8
    check-cast v0, Ld7/n4;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Ld7/d;->c:Ljava/util/AbstractMap;

    .line 12
    .line 13
    check-cast v0, Ld7/u0;

    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_1
    iget-object v0, p0, Ld7/d;->c:Ljava/util/AbstractMap;

    .line 17
    .line 18
    check-cast v0, Ld7/f;

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Ld7/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ld7/j4;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    iget-object v0, p0, Ld7/d;->c:Ljava/util/AbstractMap;

    .line 12
    .line 13
    check-cast v0, Ld7/f;

    .line 14
    .line 15
    iget-object v0, v0, Ld7/f;->d:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget v0, p0, Ld7/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld7/d;->c:Ljava/util/AbstractMap;

    .line 7
    .line 8
    check-cast v0, Ld7/n4;

    .line 9
    .line 10
    iget-object v1, v0, Ld7/n4;->a:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v0, v0, Ld7/n4;->b:La0/b;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v2, Ld7/e4;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Ld7/e4;-><init>(La0/b;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ld7/r2;

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Ld7/r2;-><init>(Ljava/util/Iterator;Lb7/i;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_0
    new-instance v0, Ld7/s0;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Ld7/s0;-><init>(Ld7/d;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_1
    new-instance v0, Ld7/e;

    .line 43
    .line 44
    iget-object v1, p0, Ld7/d;->c:Ljava/util/AbstractMap;

    .line 45
    .line 46
    check-cast v1, Ld7/f;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ld7/e;-><init>(Ld7/f;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Ld7/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ld7/j4;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    invoke-virtual {p0, p1}, Ld7/d;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    check-cast p1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    iget-object v0, p0, Ld7/d;->c:Ljava/util/AbstractMap;

    .line 27
    .line 28
    check-cast v0, Ld7/f;

    .line 29
    .line 30
    iget-object v0, v0, Ld7/f;->e:Ld7/s;

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v1, v0, Ld7/s;->f:Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    check-cast p1, Ljava/util/Collection;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 56
    .line 57
    .line 58
    iget p1, v0, Ld7/s;->g:I

    .line 59
    .line 60
    sub-int/2addr p1, v1

    .line 61
    iput p1, v0, Ld7/s;->g:I

    .line 62
    .line 63
    :cond_1
    const/4 p1, 0x1

    .line 64
    :goto_1
    return p1

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2

    .line 1
    iget v0, p0, Ld7/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ld7/j4;->removeAll(Ljava/util/Collection;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    iget-object v0, p0, Ld7/d;->c:Ljava/util/AbstractMap;

    .line 12
    .line 13
    check-cast v0, Ld7/u0;

    .line 14
    .line 15
    iget-object v0, v0, Ld7/u0;->d:Ld7/y0;

    .line 16
    .line 17
    new-instance v1, Lb7/q;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lb7/q;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ld7/y0;->p(Lb7/n;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2

    .line 1
    iget v0, p0, Ld7/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ld7/j4;->retainAll(Ljava/util/Collection;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    iget-object v0, p0, Ld7/d;->c:Ljava/util/AbstractMap;

    .line 12
    .line 13
    check-cast v0, Ld7/u0;

    .line 14
    .line 15
    iget-object v0, v0, Ld7/u0;->d:Ld7/y0;

    .line 16
    .line 17
    new-instance v1, Lb7/q;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lb7/q;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lb7/t;

    .line 23
    .line 24
    invoke-direct {p1, v1}, Lb7/t;-><init>(Lb7/n;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ld7/y0;->p(Lb7/n;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 5

    .line 1
    iget v0, p0, Ld7/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ld7/j4;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :pswitch_0
    new-instance v0, Ld7/s0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ld7/s0;-><init>(Ld7/d;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Ld7/s0;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ld7/s0;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-wide/16 v3, 0x1

    .line 28
    .line 29
    add-long/2addr v1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v1, v2}, Lr4/b;->K(J)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
