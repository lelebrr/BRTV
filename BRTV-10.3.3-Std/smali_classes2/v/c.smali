.class public final Lv/c;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:Ljava/util/HashSet;

.field public final b:Lv/e;

.field public final c:I

.field public d:Lv/c;

.field public e:I

.field public f:I

.field public g:Lu/i;


# direct methods
.method public constructor <init>(Lv/e;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lv/c;->a:Ljava/util/HashSet;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lv/c;->e:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lv/c;->f:I

    .line 12
    .line 13
    iput-object p1, p0, Lv/c;->b:Lv/e;

    .line 14
    .line 15
    iput p2, p0, Lv/c;->c:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lv/c;I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lv/c;->b(Lv/c;IIZ)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lv/c;IIZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lv/c;->h()V

    .line 5
    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    if-nez p4, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lv/c;->g(Lv/c;)Z

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    if-nez p4, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    iput-object p1, p0, Lv/c;->d:Lv/c;

    .line 19
    .line 20
    iget-object p4, p1, Lv/c;->a:Ljava/util/HashSet;

    .line 21
    .line 22
    if-nez p4, :cond_2

    .line 23
    .line 24
    new-instance p4, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p4, p1, Lv/c;->a:Ljava/util/HashSet;

    .line 30
    .line 31
    :cond_2
    iget-object p1, p0, Lv/c;->d:Lv/c;

    .line 32
    .line 33
    iget-object p1, p1, Lv/c;->a:Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    if-lez p2, :cond_3

    .line 39
    .line 40
    iput p2, p0, Lv/c;->e:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iput v1, p0, Lv/c;->e:I

    .line 44
    .line 45
    :goto_0
    iput p3, p0, Lv/c;->f:I

    .line 46
    .line 47
    return v0
.end method

.method public final c()I
    .locals 3

    .line 1
    iget-object v0, p0, Lv/c;->b:Lv/e;

    .line 2
    .line 3
    iget v0, v0, Lv/e;->X:I

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget v0, p0, Lv/c;->f:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-le v0, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lv/c;->d:Lv/c;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, v2, Lv/c;->b:Lv/e;

    .line 21
    .line 22
    iget v2, v2, Lv/e;->X:I

    .line 23
    .line 24
    if-ne v2, v1, :cond_1

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    iget v0, p0, Lv/c;->e:I

    .line 28
    .line 29
    return v0
.end method

.method public final d()Lv/c;
    .locals 3

    .line 1
    iget v0, p0, Lv/c;->c:I

    .line 2
    .line 3
    invoke-static {v0}, Lu/h;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lv/c;->b:Lv/e;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/AssertionError;

    .line 13
    .line 14
    invoke-static {v0}, Lea/q;->q(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    throw v1

    .line 22
    :pswitch_0
    iget-object v0, v2, Lv/e;->z:Lv/c;

    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_1
    iget-object v0, v2, Lv/e;->y:Lv/c;

    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_2
    iget-object v0, v2, Lv/e;->B:Lv/c;

    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_3
    iget-object v0, v2, Lv/e;->A:Lv/c;

    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_4
    const/4 v0, 0x0

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lv/c;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lv/c;

    .line 22
    .line 23
    invoke-virtual {v2}, Lv/c;->d()Lv/c;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lv/c;->f()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    return v0

    .line 35
    :cond_2
    return v1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c;->d:Lv/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final g(Lv/c;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x6

    .line 6
    iget v2, p0, Lv/c;->c:I

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v4, p1, Lv/c;->b:Lv/e;

    .line 10
    .line 11
    iget p1, p1, Lv/c;->c:I

    .line 12
    .line 13
    if-ne p1, v2, :cond_3

    .line 14
    .line 15
    if-ne v2, v1, :cond_2

    .line 16
    .line 17
    iget-boolean p1, v4, Lv/e;->w:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lv/c;->b:Lv/e;

    .line 22
    .line 23
    iget-boolean p1, p1, Lv/e;->w:Z

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    :cond_1
    return v0

    .line 28
    :cond_2
    return v3

    .line 29
    :cond_3
    invoke-static {v2}, Lu/h;->a(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/16 v6, 0x8

    .line 34
    .line 35
    const/16 v7, 0x9

    .line 36
    .line 37
    packed-switch v5, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    new-instance p1, Ljava/lang/AssertionError;

    .line 41
    .line 42
    invoke-static {v2}, Lea/q;->q(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :pswitch_0
    if-eq p1, v1, :cond_4

    .line 51
    .line 52
    if-eq p1, v6, :cond_4

    .line 53
    .line 54
    if-eq p1, v7, :cond_4

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    :cond_4
    return v0

    .line 58
    :pswitch_1
    const/4 v1, 0x3

    .line 59
    if-eq p1, v1, :cond_6

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    if-ne p1, v1, :cond_5

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    const/4 v1, 0x0

    .line 66
    goto :goto_1

    .line 67
    :cond_6
    :goto_0
    const/4 v1, 0x1

    .line 68
    :goto_1
    instance-of v2, v4, Lv/i;

    .line 69
    .line 70
    if-eqz v2, :cond_9

    .line 71
    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    if-ne p1, v7, :cond_8

    .line 75
    .line 76
    :cond_7
    const/4 v0, 0x1

    .line 77
    :cond_8
    move v1, v0

    .line 78
    :cond_9
    return v1

    .line 79
    :pswitch_2
    const/4 v1, 0x2

    .line 80
    if-eq p1, v1, :cond_b

    .line 81
    .line 82
    const/4 v1, 0x4

    .line 83
    if-ne p1, v1, :cond_a

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_a
    const/4 v1, 0x0

    .line 87
    goto :goto_3

    .line 88
    :cond_b
    :goto_2
    const/4 v1, 0x1

    .line 89
    :goto_3
    instance-of v2, v4, Lv/i;

    .line 90
    .line 91
    if-eqz v2, :cond_e

    .line 92
    .line 93
    if-nez v1, :cond_c

    .line 94
    .line 95
    if-ne p1, v6, :cond_d

    .line 96
    .line 97
    :cond_c
    const/4 v0, 0x1

    .line 98
    :cond_d
    move v1, v0

    .line 99
    :cond_e
    return v1

    .line 100
    :pswitch_3
    return v0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c;->d:Lv/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lv/c;->a:Ljava/util/HashSet;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lv/c;->d:Lv/c;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lv/c;->e:I

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lv/c;->f:I

    .line 20
    .line 21
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv/c;->g:Lu/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lu/i;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Lu/i;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lv/c;->g:Lu/i;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lu/i;->c()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv/c;->b:Lv/e;

    .line 7
    .line 8
    iget-object v1, v1, Lv/e;->Y:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lv/c;->c:I

    .line 19
    .line 20
    invoke-static {v1}, Lea/q;->q(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
