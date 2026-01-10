.class public final Ld7/y;
.super Ld7/j4;
.source "MyApplication"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ld7/z;


# direct methods
.method public synthetic constructor <init>(Ld7/z;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld7/y;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ld7/y;->c:Ld7/z;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Ld7/j4;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final d()Ld7/v4;
    .locals 1

    .line 1
    iget v0, p0, Ld7/y;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld7/y;->c:Ld7/z;

    .line 7
    .line 8
    check-cast v0, Ld7/w0;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Ld7/y;->c:Ld7/z;

    .line 12
    .line 13
    return-object v0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget v0, p0, Ld7/y;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld7/y;->c:Ld7/z;

    .line 7
    .line 8
    check-cast v0, Ld7/w0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ld7/u4;->g()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Ld7/y;->c:Ld7/z;

    .line 16
    .line 17
    invoke-virtual {v0}, Ld7/z;->g()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2

    .line 1
    iget v0, p0, Ld7/y;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ld7/p5;->removeAll(Ljava/util/Collection;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    new-instance v0, Lb7/q;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lb7/q;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Ld7/y;->c:Ld7/z;

    .line 17
    .line 18
    check-cast p1, Ld7/w0;

    .line 19
    .line 20
    iget-object p1, p1, Ld7/w0;->d:Ld7/y0;

    .line 21
    .line 22
    new-instance v1, Ld7/v0;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ld7/v0;-><init>(Lb7/n;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ld7/y0;->p(Lb7/n;)Z

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

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2

    .line 1
    iget v0, p0, Ld7/y;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ld7/p5;->retainAll(Ljava/util/Collection;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    new-instance v0, Lb7/q;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lb7/q;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lb7/t;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lb7/t;-><init>(Lb7/n;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ld7/y;->c:Ld7/z;

    .line 22
    .line 23
    check-cast v0, Ld7/w0;

    .line 24
    .line 25
    iget-object v0, v0, Ld7/w0;->d:Ld7/y0;

    .line 26
    .line 27
    new-instance v1, Ld7/v0;

    .line 28
    .line 29
    invoke-direct {v1, p1}, Ld7/v0;-><init>(Lb7/n;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ld7/y0;->p(Lb7/n;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Ld7/y;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld7/y;->c:Ld7/z;

    .line 7
    .line 8
    check-cast v0, Ld7/w0;

    .line 9
    .line 10
    iget-object v0, v0, Ld7/w0;->d:Ld7/y0;

    .line 11
    .line 12
    invoke-virtual {v0}, Ld7/w;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :pswitch_0
    iget-object v0, p0, Ld7/y;->c:Ld7/z;

    .line 22
    .line 23
    invoke-virtual {v0}, Ld7/z;->e()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
