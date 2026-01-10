.class public final Lc7/j;
.super Ljava/util/AbstractQueue;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final b:Lc7/g;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lc7/j;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lc7/h;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Lc7/h;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p1, Lc7/h;->b:Lc7/c0;

    .line 16
    .line 17
    iput-object p1, p1, Lc7/h;->c:Lc7/c0;

    .line 18
    .line 19
    iput-object p1, p0, Lc7/j;->b:Lc7/g;

    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lc7/h;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-direct {p1, v0}, Lc7/h;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p1, Lc7/h;->b:Lc7/c0;

    .line 32
    .line 33
    iput-object p1, p1, Lc7/h;->c:Lc7/c0;

    .line 34
    .line 35
    iput-object p1, p0, Lc7/j;->b:Lc7/g;

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final clear()V
    .locals 5

    .line 1
    sget-object v0, Lc7/p;->a:Lc7/p;

    .line 2
    .line 3
    iget-object v1, p0, Lc7/j;->b:Lc7/g;

    .line 4
    .line 5
    iget v2, p0, Lc7/j;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Lc7/h;

    .line 11
    .line 12
    iget-object v2, v1, Lc7/h;->b:Lc7/c0;

    .line 13
    .line 14
    :goto_0
    if-eq v2, v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v2}, Lc7/c0;->o()Lc7/c0;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Lc7/b0;->s:Lc7/e;

    .line 21
    .line 22
    invoke-interface {v2, v0}, Lc7/c0;->f(Lc7/c0;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v0}, Lc7/c0;->g(Lc7/c0;)V

    .line 26
    .line 27
    .line 28
    move-object v2, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-object v1, v1, Lc7/h;->b:Lc7/c0;

    .line 31
    .line 32
    iput-object v1, v1, Lc7/h;->c:Lc7/c0;

    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    check-cast v1, Lc7/h;

    .line 36
    .line 37
    iget-object v2, v1, Lc7/h;->b:Lc7/c0;

    .line 38
    .line 39
    :goto_1
    if-eq v2, v1, :cond_1

    .line 40
    .line 41
    invoke-interface {v2}, Lc7/c0;->i()Lc7/c0;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    sget-object v4, Lc7/b0;->s:Lc7/e;

    .line 46
    .line 47
    invoke-interface {v2, v0}, Lc7/c0;->h(Lc7/c0;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v2, v0}, Lc7/c0;->n(Lc7/c0;)V

    .line 51
    .line 52
    .line 53
    move-object v2, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iput-object v1, v1, Lc7/h;->b:Lc7/c0;

    .line 56
    .line 57
    iput-object v1, v1, Lc7/h;->c:Lc7/c0;

    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lc7/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lc7/c0;

    .line 7
    .line 8
    invoke-interface {p1}, Lc7/c0;->o()Lc7/c0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lc7/p;->a:Lc7/p;

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1

    .line 20
    :pswitch_0
    check-cast p1, Lc7/c0;

    .line 21
    .line 22
    invoke-interface {p1}, Lc7/c0;->i()Lc7/c0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Lc7/p;->a:Lc7/p;

    .line 27
    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_1
    return p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 2

    .line 1
    iget v0, p0, Lc7/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc7/j;->b:Lc7/g;

    .line 7
    .line 8
    check-cast v0, Lc7/h;

    .line 9
    .line 10
    iget-object v1, v0, Lc7/h;->b:Lc7/c0;

    .line 11
    .line 12
    if-ne v1, v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0

    .line 18
    :pswitch_0
    iget-object v0, p0, Lc7/j;->b:Lc7/g;

    .line 19
    .line 20
    check-cast v0, Lc7/h;

    .line 21
    .line 22
    iget-object v1, v0, Lc7/h;->b:Lc7/c0;

    .line 23
    .line 24
    if-ne v1, v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_1
    return v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget v0, p0, Lc7/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lc7/i;

    .line 7
    .line 8
    iget-object v1, p0, Lc7/j;->b:Lc7/g;

    .line 9
    .line 10
    check-cast v1, Lc7/h;

    .line 11
    .line 12
    iget-object v2, v1, Lc7/h;->b:Lc7/c0;

    .line 13
    .line 14
    if-ne v2, v1, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, p0, v2, v1}, Lc7/i;-><init>(Ljava/util/AbstractQueue;Lc7/c0;I)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_0
    new-instance v0, Lc7/i;

    .line 23
    .line 24
    iget-object v1, p0, Lc7/j;->b:Lc7/g;

    .line 25
    .line 26
    check-cast v1, Lc7/h;

    .line 27
    .line 28
    iget-object v2, v1, Lc7/h;->b:Lc7/c0;

    .line 29
    .line 30
    if-ne v2, v1, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, p0, v2, v1}, Lc7/i;-><init>(Ljava/util/AbstractQueue;Lc7/c0;I)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lc7/j;->b:Lc7/g;

    .line 3
    .line 4
    iget v2, p0, Lc7/j;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lc7/c0;

    .line 10
    .line 11
    invoke-interface {p1}, Lc7/c0;->m()Lc7/c0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {p1}, Lc7/c0;->o()Lc7/c0;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-object v4, Lc7/b0;->s:Lc7/e;

    .line 20
    .line 21
    invoke-interface {v2, v3}, Lc7/c0;->f(Lc7/c0;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v3, v2}, Lc7/c0;->g(Lc7/c0;)V

    .line 25
    .line 26
    .line 27
    check-cast v1, Lc7/h;

    .line 28
    .line 29
    iget-object v2, v1, Lc7/h;->c:Lc7/c0;

    .line 30
    .line 31
    invoke-interface {v2, p1}, Lc7/c0;->f(Lc7/c0;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v2}, Lc7/c0;->g(Lc7/c0;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1}, Lc7/c0;->f(Lc7/c0;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, v1, Lc7/h;->c:Lc7/c0;

    .line 41
    .line 42
    return v0

    .line 43
    :pswitch_0
    check-cast p1, Lc7/c0;

    .line 44
    .line 45
    invoke-interface {p1}, Lc7/c0;->e()Lc7/c0;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {p1}, Lc7/c0;->i()Lc7/c0;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    sget-object v4, Lc7/b0;->s:Lc7/e;

    .line 54
    .line 55
    invoke-interface {v2, v3}, Lc7/c0;->h(Lc7/c0;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v3, v2}, Lc7/c0;->n(Lc7/c0;)V

    .line 59
    .line 60
    .line 61
    check-cast v1, Lc7/h;

    .line 62
    .line 63
    iget-object v2, v1, Lc7/h;->c:Lc7/c0;

    .line 64
    .line 65
    invoke-interface {v2, p1}, Lc7/c0;->h(Lc7/c0;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v2}, Lc7/c0;->n(Lc7/c0;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v1}, Lc7/c0;->h(Lc7/c0;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, v1, Lc7/h;->c:Lc7/c0;

    .line 75
    .line 76
    return v0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final peek()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lc7/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc7/j;->b:Lc7/g;

    .line 7
    .line 8
    check-cast v0, Lc7/h;

    .line 9
    .line 10
    iget-object v1, v0, Lc7/h;->b:Lc7/c0;

    .line 11
    .line 12
    if-ne v1, v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :cond_0
    return-object v1

    .line 16
    :pswitch_0
    iget-object v0, p0, Lc7/j;->b:Lc7/g;

    .line 17
    .line 18
    check-cast v0, Lc7/h;

    .line 19
    .line 20
    iget-object v1, v0, Lc7/h;->b:Lc7/c0;

    .line 21
    .line 22
    if-ne v1, v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :cond_1
    return-object v1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lc7/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc7/j;->b:Lc7/g;

    .line 7
    .line 8
    check-cast v0, Lc7/h;

    .line 9
    .line 10
    iget-object v1, v0, Lc7/h;->b:Lc7/c0;

    .line 11
    .line 12
    if-ne v1, v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v1}, Lc7/j;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :goto_0
    return-object v1

    .line 20
    :pswitch_0
    iget-object v0, p0, Lc7/j;->b:Lc7/g;

    .line 21
    .line 22
    check-cast v0, Lc7/h;

    .line 23
    .line 24
    iget-object v1, v0, Lc7/h;->b:Lc7/c0;

    .line 25
    .line 26
    if-ne v1, v0, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p0, v1}, Lc7/j;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object v1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lc7/p;->a:Lc7/p;

    .line 4
    .line 5
    iget v3, p0, Lc7/j;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lc7/c0;

    .line 11
    .line 12
    invoke-interface {p1}, Lc7/c0;->m()Lc7/c0;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {p1}, Lc7/c0;->o()Lc7/c0;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    sget-object v5, Lc7/b0;->s:Lc7/e;

    .line 21
    .line 22
    invoke-interface {v3, v4}, Lc7/c0;->f(Lc7/c0;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v4, v3}, Lc7/c0;->g(Lc7/c0;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v2}, Lc7/c0;->f(Lc7/c0;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v2}, Lc7/c0;->g(Lc7/c0;)V

    .line 32
    .line 33
    .line 34
    if-eq v4, v2, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    :cond_0
    return v0

    .line 38
    :pswitch_0
    check-cast p1, Lc7/c0;

    .line 39
    .line 40
    invoke-interface {p1}, Lc7/c0;->e()Lc7/c0;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {p1}, Lc7/c0;->i()Lc7/c0;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    sget-object v5, Lc7/b0;->s:Lc7/e;

    .line 49
    .line 50
    invoke-interface {v3, v4}, Lc7/c0;->h(Lc7/c0;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v4, v3}, Lc7/c0;->n(Lc7/c0;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v2}, Lc7/c0;->h(Lc7/c0;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v2}, Lc7/c0;->n(Lc7/c0;)V

    .line 60
    .line 61
    .line 62
    if-eq v4, v2, :cond_1

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    :cond_1
    return v0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 3

    .line 1
    iget v0, p0, Lc7/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc7/j;->b:Lc7/g;

    .line 7
    .line 8
    check-cast v0, Lc7/h;

    .line 9
    .line 10
    iget-object v1, v0, Lc7/h;->b:Lc7/c0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-eq v1, v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    invoke-interface {v1}, Lc7/c0;->o()Lc7/c0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v2

    .line 23
    :pswitch_0
    iget-object v0, p0, Lc7/j;->b:Lc7/g;

    .line 24
    .line 25
    check-cast v0, Lc7/h;

    .line 26
    .line 27
    iget-object v1, v0, Lc7/h;->b:Lc7/c0;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_1
    if-eq v1, v0, :cond_1

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    invoke-interface {v1}, Lc7/c0;->i()Lc7/c0;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    return v2

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
