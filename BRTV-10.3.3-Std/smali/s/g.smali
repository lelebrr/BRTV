.class public final Ls/g;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ls0/g;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ls/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Ls/g;->a:I

    iput-object p1, p0, Ls/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Ls/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Ls/g;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lm0/d;Ls3/a;Lq/b;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ls/g;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Ls/g;->d:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Ls/g;->b:Ljava/lang/Object;

    .line 15
    iput-object p3, p0, Ls/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv/f;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ls/g;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls/g;->b:Ljava/lang/Object;

    .line 8
    new-instance v0, Lw/b;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Ls/g;->c:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Ls/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lx2/l;Ln3/f;Lx2/p;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Ls/g;->a:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/g;->d:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Ls/g;->c:Ljava/lang/Object;

    .line 18
    iput-object p3, p0, Ls/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz4/j;Lz4/h;[Lcom/google/android/gms/common/Feature;I)V
    .locals 0

    const/4 p4, 0x7

    iput p4, p0, Ls/g;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ls/g;->d:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Ls/g;->b:Ljava/lang/Object;

    iput-object p3, p0, Ls/g;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ClipDescription;
    .locals 1

    .line 1
    iget-object v0, p0, Ls/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/ClipDescription;

    .line 4
    .line 5
    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Ls/g;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/net/Uri;

    .line 4
    .line 5
    return-object v0
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Ls/g;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/net/Uri;

    .line 4
    .line 5
    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls/g;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm0/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lm0/d;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ls/g;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ls3/a;

    .line 14
    .line 15
    invoke-interface {v0}, Ls3/a;->g()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "FactoryPools"

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Created new "

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    instance-of v1, v0, Ls3/b;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    move-object v1, v0

    .line 54
    check-cast v1, Ls3/b;

    .line 55
    .line 56
    invoke-interface {v1}, Ls3/b;->b()Ls3/d;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x0

    .line 61
    iput-boolean v2, v1, Ls3/d;->a:Z

    .line 62
    .line 63
    :cond_1
    return-object v0
.end method

.method public g(DF)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls/g;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [F

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iget-object v1, p0, Ls/g;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, [D

    .line 11
    .line 12
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-gez v1, :cond_0

    .line 17
    .line 18
    neg-int v1, v1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Ls/g;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, [D

    .line 24
    .line 25
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Ls/g;->c:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v2, p0, Ls/g;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, [F

    .line 34
    .line 35
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Ls/g;->b:Ljava/lang/Object;

    .line 40
    .line 41
    new-array v2, v0, [D

    .line 42
    .line 43
    iput-object v2, p0, Ls/g;->d:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v2, p0, Ls/g;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, [D

    .line 48
    .line 49
    add-int/lit8 v3, v1, 0x1

    .line 50
    .line 51
    sub-int/2addr v0, v1

    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Ls/g;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, [D

    .line 60
    .line 61
    aput-wide p1, v0, v1

    .line 62
    .line 63
    iget-object p1, p0, Ls/g;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, [F

    .line 66
    .line 67
    aput p3, p1, v1

    .line 68
    .line 69
    return-void
.end method

.method public h(D)D
    .locals 12

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmpg-double v4, p1, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

    .line 8
    .line 9
    move-wide p1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    cmpl-double v4, p1, v0

    .line 12
    .line 13
    if-lez v4, :cond_1

    .line 14
    .line 15
    move-wide p1, v0

    .line 16
    :cond_1
    :goto_0
    iget-object v4, p0, Ls/g;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v4, [D

    .line 19
    .line 20
    invoke-static {v4, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-lez v4, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    if-eqz v4, :cond_3

    .line 28
    .line 29
    neg-int v0, v4

    .line 30
    add-int/lit8 v1, v0, -0x1

    .line 31
    .line 32
    iget-object v2, p0, Ls/g;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, [F

    .line 35
    .line 36
    aget v3, v2, v1

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x2

    .line 39
    .line 40
    aget v2, v2, v0

    .line 41
    .line 42
    sub-float/2addr v3, v2

    .line 43
    float-to-double v3, v3

    .line 44
    iget-object v5, p0, Ls/g;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v5, [D

    .line 47
    .line 48
    aget-wide v6, v5, v1

    .line 49
    .line 50
    aget-wide v8, v5, v0

    .line 51
    .line 52
    sub-double/2addr v6, v8

    .line 53
    div-double/2addr v3, v6

    .line 54
    iget-object v1, p0, Ls/g;->d:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, [D

    .line 57
    .line 58
    aget-wide v0, v1, v0

    .line 59
    .line 60
    float-to-double v5, v2

    .line 61
    mul-double v10, v3, v8

    .line 62
    .line 63
    sub-double/2addr v5, v10

    .line 64
    sub-double v10, p1, v8

    .line 65
    .line 66
    mul-double v10, v10, v5

    .line 67
    .line 68
    add-double/2addr v10, v0

    .line 69
    mul-double p1, p1, p1

    .line 70
    .line 71
    mul-double v8, v8, v8

    .line 72
    .line 73
    sub-double/2addr p1, v8

    .line 74
    mul-double p1, p1, v3

    .line 75
    .line 76
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 77
    .line 78
    div-double/2addr p1, v0

    .line 79
    add-double v0, p1, v10

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move-wide v0, v2

    .line 83
    :goto_1
    return-wide v0
.end method

.method public i(D)D
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Ls/g;->h(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double p1, p1, v0

    .line 11
    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    return-wide p1
.end method

.method public j(Lw/c;Lv/e;Z)Z
    .locals 7

    .line 1
    iget-object v0, p2, Lv/e;->J:[Lv/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    .line 5
    .line 6
    iget-object v3, p0, Ls/g;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v3, Lw/b;

    .line 9
    .line 10
    iput-object v2, v3, Lw/b;->a:Lv/d;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aget-object v0, v0, v2

    .line 14
    .line 15
    iput-object v0, v3, Lw/b;->b:Lv/d;

    .line 16
    .line 17
    invoke-virtual {p2}, Lv/e;->m()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, v3, Lw/b;->c:I

    .line 22
    .line 23
    invoke-virtual {p2}, Lv/e;->j()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, v3, Lw/b;->d:I

    .line 28
    .line 29
    iput-boolean v1, v3, Lw/b;->i:Z

    .line 30
    .line 31
    iput-boolean p3, v3, Lw/b;->j:Z

    .line 32
    .line 33
    iget-object p3, v3, Lw/b;->a:Lv/d;

    .line 34
    .line 35
    sget-object v0, Lv/d;->c:Lv/d;

    .line 36
    .line 37
    if-ne p3, v0, :cond_0

    .line 38
    .line 39
    const/4 p3, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p3, 0x0

    .line 42
    :goto_0
    iget-object v4, v3, Lw/b;->b:Lv/d;

    .line 43
    .line 44
    if-ne v4, v0, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_1
    const/4 v4, 0x0

    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    iget p3, p2, Lv/e;->N:F

    .line 53
    .line 54
    cmpl-float p3, p3, v4

    .line 55
    .line 56
    if-lez p3, :cond_2

    .line 57
    .line 58
    const/4 p3, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/4 p3, 0x0

    .line 61
    :goto_2
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget v0, p2, Lv/e;->N:F

    .line 64
    .line 65
    cmpl-float v0, v0, v4

    .line 66
    .line 67
    if-lez v0, :cond_3

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/4 v0, 0x0

    .line 72
    :goto_3
    sget-object v4, Lv/d;->a:Lv/d;

    .line 73
    .line 74
    iget-object v5, p2, Lv/e;->l:[I

    .line 75
    .line 76
    const/4 v6, 0x4

    .line 77
    if-eqz p3, :cond_4

    .line 78
    .line 79
    aget p3, v5, v1

    .line 80
    .line 81
    if-ne p3, v6, :cond_4

    .line 82
    .line 83
    iput-object v4, v3, Lw/b;->a:Lv/d;

    .line 84
    .line 85
    :cond_4
    if-eqz v0, :cond_5

    .line 86
    .line 87
    aget p3, v5, v2

    .line 88
    .line 89
    if-ne p3, v6, :cond_5

    .line 90
    .line 91
    iput-object v4, v3, Lw/b;->b:Lv/d;

    .line 92
    .line 93
    :cond_5
    check-cast p1, Landroidx/constraintlayout/widget/b;

    .line 94
    .line 95
    invoke-virtual {p1, p2, v3}, Landroidx/constraintlayout/widget/b;->a(Lv/e;Lw/b;)V

    .line 96
    .line 97
    .line 98
    iget p1, v3, Lw/b;->e:I

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lv/e;->z(I)V

    .line 101
    .line 102
    .line 103
    iget p1, v3, Lw/b;->f:I

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Lv/e;->w(I)V

    .line 106
    .line 107
    .line 108
    iget-boolean p1, v3, Lw/b;->h:Z

    .line 109
    .line 110
    iput-boolean p1, p2, Lv/e;->w:Z

    .line 111
    .line 112
    iget p1, v3, Lw/b;->g:I

    .line 113
    .line 114
    iput p1, p2, Lv/e;->R:I

    .line 115
    .line 116
    if-lez p1, :cond_6

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_6
    const/4 v2, 0x0

    .line 120
    :goto_4
    iput-boolean v2, p2, Lv/e;->w:Z

    .line 121
    .line 122
    iput-boolean v1, v3, Lw/b;->j:Z

    .line 123
    .line 124
    iget-boolean p1, v3, Lw/b;->i:Z

    .line 125
    .line 126
    return p1
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ls3/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ls3/b;

    .line 7
    .line 8
    invoke-interface {v0}, Ls3/b;->b()Ls3/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Ls3/d;->a:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Ls/g;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lq/b;

    .line 18
    .line 19
    iget v0, v0, Lq/b;->a:I

    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    .line 30
    :pswitch_0
    iget-object v0, p0, Ls/g;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lm0/d;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lm0/d;->c(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public l(Lv/f;II)V
    .locals 3

    .line 1
    iget v0, p1, Lv/e;->S:I

    .line 2
    .line 3
    iget v1, p1, Lv/e;->T:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p1, Lv/e;->S:I

    .line 7
    .line 8
    iput v2, p1, Lv/e;->T:I

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lv/e;->z(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3}, Lv/e;->w(I)V

    .line 14
    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    iput v2, p1, Lv/e;->S:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v0, p1, Lv/e;->S:I

    .line 22
    .line 23
    :goto_0
    if-gez v1, :cond_1

    .line 24
    .line 25
    iput v2, p1, Lv/e;->T:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iput v1, p1, Lv/e;->T:I

    .line 29
    .line 30
    :goto_1
    iget-object p1, p0, Ls/g;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lv/f;

    .line 33
    .line 34
    invoke-virtual {p1}, Lv/f;->F()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ls/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "pos ="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ls/g;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, [D

    .line 21
    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " period="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Ls/g;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, [F

    .line 37
    .line 38
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
