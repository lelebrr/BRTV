.class public final Landroidx/leanback/widget/e1;
.super Landroidx/leanback/widget/p;
.source "MyApplication"


# instance fields
.field public j:Lp/g;

.field public k:I

.field public l:Ljava/lang/Object;

.field public m:I


# virtual methods
.method public final b(IZ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/p;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/leanback/widget/q;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/p;->c(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/e1;->o(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    iput-object v1, p0, Landroidx/leanback/widget/e1;->l:Ljava/lang/Object;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/e1;->q(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    aput-object v1, v0, v2

    .line 40
    .line 41
    iput-object v1, p0, Landroidx/leanback/widget/e1;->l:Ljava/lang/Object;

    .line 42
    .line 43
    return p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    aput-object v1, v0, v2

    .line 46
    .line 47
    iput-object v1, p0, Landroidx/leanback/widget/e1;->l:Ljava/lang/Object;

    .line 48
    .line 49
    throw p1
.end method

.method public final f(IZ[I)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/q;->d(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, v1, Landroidx/leanback/widget/o;->a:I

    .line 12
    .line 13
    iget-boolean v3, p0, Landroidx/leanback/widget/p;->c:Z

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_3

    .line 17
    .line 18
    add-int/lit8 v1, p1, 0x1

    .line 19
    .line 20
    move v3, v2

    .line 21
    move v5, v3

    .line 22
    const/4 v6, 0x1

    .line 23
    move v2, v1

    .line 24
    move v1, v0

    .line 25
    :goto_0
    iget v7, p0, Landroidx/leanback/widget/p;->e:I

    .line 26
    .line 27
    if-ge v6, v7, :cond_7

    .line 28
    .line 29
    iget v7, p0, Landroidx/leanback/widget/p;->g:I

    .line 30
    .line 31
    if-gt v2, v7, :cond_7

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget v8, v7, Landroidx/leanback/widget/d1;->b:I

    .line 38
    .line 39
    add-int/2addr v1, v8

    .line 40
    iget v7, v7, Landroidx/leanback/widget/o;->a:I

    .line 41
    .line 42
    if-eq v7, v5, :cond_2

    .line 43
    .line 44
    add-int/lit8 v6, v6, 0x1

    .line 45
    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    if-le v1, v0, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    if-ge v1, v0, :cond_1

    .line 52
    .line 53
    :goto_1
    move v0, v1

    .line 54
    move p1, v2

    .line 55
    move v3, v7

    .line 56
    move v5, v3

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    move v5, v7

    .line 59
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object v3, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 63
    .line 64
    invoke-virtual {v3, p1}, Landroidx/leanback/widget/q;->e(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    add-int/2addr v3, v0

    .line 69
    add-int/lit8 v5, p1, -0x1

    .line 70
    .line 71
    move v6, v5

    .line 72
    const/4 v7, 0x1

    .line 73
    move v5, v2

    .line 74
    move-object v2, v1

    .line 75
    move v1, v0

    .line 76
    move v0, v3

    .line 77
    move v3, v5

    .line 78
    :goto_3
    iget v8, p0, Landroidx/leanback/widget/p;->e:I

    .line 79
    .line 80
    if-ge v7, v8, :cond_7

    .line 81
    .line 82
    iget v8, p0, Landroidx/leanback/widget/p;->f:I

    .line 83
    .line 84
    if-lt v6, v8, :cond_7

    .line 85
    .line 86
    iget v2, v2, Landroidx/leanback/widget/d1;->b:I

    .line 87
    .line 88
    sub-int/2addr v1, v2

    .line 89
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget v8, v2, Landroidx/leanback/widget/o;->a:I

    .line 94
    .line 95
    if-eq v8, v5, :cond_6

    .line 96
    .line 97
    add-int/lit8 v7, v7, 0x1

    .line 98
    .line 99
    iget-object v5, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 100
    .line 101
    invoke-virtual {v5, v6}, Landroidx/leanback/widget/q;->e(I)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    add-int/2addr v5, v1

    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    if-le v5, v0, :cond_5

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_4
    if-ge v5, v0, :cond_5

    .line 112
    .line 113
    :goto_4
    move v0, v5

    .line 114
    move p1, v6

    .line 115
    move v3, v8

    .line 116
    move v5, v3

    .line 117
    goto :goto_5

    .line 118
    :cond_5
    move v5, v8

    .line 119
    :cond_6
    :goto_5
    add-int/lit8 v6, v6, -0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_7
    if-eqz p3, :cond_8

    .line 123
    .line 124
    const/4 p2, 0x0

    .line 125
    aput v3, p3, p2

    .line 126
    .line 127
    aput p1, p3, v4

    .line 128
    .line 129
    :cond_8
    return v0
.end method

.method public final h(IZ[I)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/q;->d(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, v1, Landroidx/leanback/widget/o;->a:I

    .line 12
    .line 13
    iget-boolean v3, p0, Landroidx/leanback/widget/p;->c:Z

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_3

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 19
    .line 20
    invoke-virtual {v3, p1}, Landroidx/leanback/widget/q;->e(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sub-int v3, v0, v3

    .line 25
    .line 26
    add-int/lit8 v5, p1, -0x1

    .line 27
    .line 28
    move v6, v5

    .line 29
    const/4 v7, 0x1

    .line 30
    move v5, v3

    .line 31
    move v3, v2

    .line 32
    :goto_0
    iget v8, p0, Landroidx/leanback/widget/p;->e:I

    .line 33
    .line 34
    if-ge v7, v8, :cond_8

    .line 35
    .line 36
    iget v8, p0, Landroidx/leanback/widget/p;->f:I

    .line 37
    .line 38
    if-lt v6, v8, :cond_8

    .line 39
    .line 40
    iget v1, v1, Landroidx/leanback/widget/d1;->b:I

    .line 41
    .line 42
    sub-int/2addr v0, v1

    .line 43
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget v8, v1, Landroidx/leanback/widget/o;->a:I

    .line 48
    .line 49
    if-eq v8, v3, :cond_2

    .line 50
    .line 51
    add-int/lit8 v7, v7, 0x1

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 54
    .line 55
    invoke-virtual {v3, v6}, Landroidx/leanback/widget/q;->e(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    sub-int v3, v0, v3

    .line 60
    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    if-le v3, v5, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    if-ge v3, v5, :cond_1

    .line 67
    .line 68
    :goto_1
    move v5, v3

    .line 69
    move p1, v6

    .line 70
    move v2, v8

    .line 71
    move v3, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    move v3, v8

    .line 74
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, -0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 78
    .line 79
    move v3, v2

    .line 80
    move v5, v3

    .line 81
    const/4 v6, 0x1

    .line 82
    move v2, v1

    .line 83
    move v1, v0

    .line 84
    :goto_3
    iget v7, p0, Landroidx/leanback/widget/p;->e:I

    .line 85
    .line 86
    if-ge v6, v7, :cond_7

    .line 87
    .line 88
    iget v7, p0, Landroidx/leanback/widget/p;->g:I

    .line 89
    .line 90
    if-gt v2, v7, :cond_7

    .line 91
    .line 92
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    iget v8, v7, Landroidx/leanback/widget/d1;->b:I

    .line 97
    .line 98
    add-int/2addr v1, v8

    .line 99
    iget v7, v7, Landroidx/leanback/widget/o;->a:I

    .line 100
    .line 101
    if-eq v7, v5, :cond_6

    .line 102
    .line 103
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    if-eqz p2, :cond_4

    .line 106
    .line 107
    if-le v1, v0, :cond_5

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    if-ge v1, v0, :cond_5

    .line 111
    .line 112
    :goto_4
    move v0, v1

    .line 113
    move p1, v2

    .line 114
    move v3, v7

    .line 115
    move v5, v3

    .line 116
    goto :goto_5

    .line 117
    :cond_5
    move v5, v7

    .line 118
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    move v5, v0

    .line 122
    move v2, v3

    .line 123
    :cond_8
    if-eqz p3, :cond_9

    .line 124
    .line 125
    const/4 p2, 0x0

    .line 126
    aput v2, p3, p2

    .line 127
    .line 128
    aput p1, p3, v4

    .line 129
    .line 130
    :cond_9
    return v5
.end method

.method public final j(II)[Lp/h;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/p;->e:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/leanback/widget/p;->h:[Lp/h;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    iget v2, v1, Lp/h;->b:I

    .line 11
    .line 12
    iput v2, v1, Lp/h;->c:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-ltz p1, :cond_4

    .line 18
    .line 19
    :goto_1
    if-gt p1, p2, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/leanback/widget/p;->h:[Lp/h;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v1, v1, Landroidx/leanback/widget/o;->a:I

    .line 28
    .line 29
    aget-object v0, v0, v1

    .line 30
    .line 31
    invoke-virtual {v0}, Lp/h;->c()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_3

    .line 36
    .line 37
    iget v1, v0, Lp/h;->b:I

    .line 38
    .line 39
    iget v2, v0, Lp/h;->c:I

    .line 40
    .line 41
    if-eq v1, v2, :cond_2

    .line 42
    .line 43
    iget-object v3, v0, Lp/h;->a:[I

    .line 44
    .line 45
    add-int/lit8 v4, v2, -0x1

    .line 46
    .line 47
    iget v5, v0, Lp/h;->d:I

    .line 48
    .line 49
    and-int/2addr v4, v5

    .line 50
    aget v4, v3, v4

    .line 51
    .line 52
    add-int/lit8 v6, p1, -0x1

    .line 53
    .line 54
    if-ne v4, v6, :cond_3

    .line 55
    .line 56
    if-eq v1, v2, :cond_1

    .line 57
    .line 58
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    and-int v1, v2, v5

    .line 61
    .line 62
    aget v2, v3, v1

    .line 63
    .line 64
    iput v1, v0, Lp/h;->c:I

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lp/h;->a(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_3
    invoke-virtual {v0, p1}, Lp/h;->a(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lp/h;->a(I)V

    .line 86
    .line 87
    .line 88
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    iget-object p1, p0, Landroidx/leanback/widget/p;->h:[Lp/h;

    .line 92
    .line 93
    return-object p1
.end method

.method public final bridge synthetic k(I)Landroidx/leanback/widget/o;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final l(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/widget/p;->l(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/e1;->s()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sub-int/2addr v0, p1

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/leanback/widget/e1;->j:Lp/g;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lp/g;->d(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lp/g;->f()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, -0x1

    .line 23
    iput p1, p0, Landroidx/leanback/widget/e1;->k:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final m(IZ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/p;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/leanback/widget/q;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/p;->d(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/e1;->w(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    iput-object v1, p0, Landroidx/leanback/widget/e1;->l:Ljava/lang/Object;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/e1;->y(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    aput-object v1, v0, v2

    .line 40
    .line 41
    iput-object v1, p0, Landroidx/leanback/widget/e1;->l:Ljava/lang/Object;

    .line 42
    .line 43
    return p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    aput-object v1, v0, v2

    .line 46
    .line 47
    iput-object v1, p0, Landroidx/leanback/widget/e1;->l:Ljava/lang/Object;

    .line 48
    .line 49
    throw p1
.end method

.method public final o(IZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/e1;->j:Lp/g;

    .line 4
    .line 5
    invoke-virtual {v1}, Lp/g;->f()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    iget-object v2, v0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/leanback/widget/q;->c()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v4, v0, Landroidx/leanback/widget/p;->g:I

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const v6, 0x7fffffff

    .line 23
    .line 24
    .line 25
    if-ltz v4, :cond_1

    .line 26
    .line 27
    add-int/lit8 v7, v4, 0x1

    .line 28
    .line 29
    iget-object v8, v0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 30
    .line 31
    invoke-virtual {v8, v4}, Landroidx/leanback/widget/q;->d(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget v4, v0, Landroidx/leanback/widget/p;->i:I

    .line 37
    .line 38
    const/4 v7, -0x1

    .line 39
    if-eq v4, v7, :cond_2

    .line 40
    .line 41
    move v7, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v7, 0x0

    .line 44
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/e1;->s()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-int/2addr v4, v5

    .line 49
    if-gt v7, v4, :cond_c

    .line 50
    .line 51
    iget v4, v0, Landroidx/leanback/widget/e1;->k:I

    .line 52
    .line 53
    if-ge v7, v4, :cond_3

    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/e1;->s()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-le v7, v4, :cond_4

    .line 62
    .line 63
    return v3

    .line 64
    :cond_4
    const v4, 0x7fffffff

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/e1;->s()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    move v13, v7

    .line 72
    :goto_2
    if-ge v13, v2, :cond_b

    .line 73
    .line 74
    if-gt v13, v8, :cond_b

    .line 75
    .line 76
    invoke-virtual {v0, v13}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    if-eq v4, v6, :cond_5

    .line 81
    .line 82
    iget v9, v7, Landroidx/leanback/widget/d1;->b:I

    .line 83
    .line 84
    add-int/2addr v4, v9

    .line 85
    :cond_5
    iget v14, v7, Landroidx/leanback/widget/o;->a:I

    .line 86
    .line 87
    iget-object v9, v0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 88
    .line 89
    iget-object v10, v0, Landroidx/leanback/widget/p;->a:[Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {v9, v13, v5, v10, v3}, Landroidx/leanback/widget/q;->b(IZ[Ljava/lang/Object;Z)I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    iget v9, v7, Landroidx/leanback/widget/d1;->c:I

    .line 96
    .line 97
    if-eq v11, v9, :cond_6

    .line 98
    .line 99
    iput v11, v7, Landroidx/leanback/widget/d1;->c:I

    .line 100
    .line 101
    sub-int/2addr v8, v13

    .line 102
    invoke-virtual {v1, v8}, Lp/g;->d(I)V

    .line 103
    .line 104
    .line 105
    move v15, v13

    .line 106
    goto :goto_3

    .line 107
    :cond_6
    move v15, v8

    .line 108
    :goto_3
    iput v13, v0, Landroidx/leanback/widget/p;->g:I

    .line 109
    .line 110
    iget v7, v0, Landroidx/leanback/widget/p;->f:I

    .line 111
    .line 112
    if-gez v7, :cond_7

    .line 113
    .line 114
    iput v13, v0, Landroidx/leanback/widget/p;->f:I

    .line 115
    .line 116
    :cond_7
    iget-object v7, v0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 117
    .line 118
    aget-object v8, v10, v3

    .line 119
    .line 120
    move v9, v13

    .line 121
    move v10, v11

    .line 122
    move v11, v14

    .line 123
    move v12, v4

    .line 124
    invoke-virtual/range {v7 .. v12}, Landroidx/leanback/widget/q;->a(Ljava/lang/Object;IIII)V

    .line 125
    .line 126
    .line 127
    if-nez p2, :cond_8

    .line 128
    .line 129
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/p;->c(I)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_8

    .line 134
    .line 135
    return v5

    .line 136
    :cond_8
    if-ne v4, v6, :cond_9

    .line 137
    .line 138
    iget-object v4, v0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 139
    .line 140
    invoke-virtual {v4, v13}, Landroidx/leanback/widget/q;->d(I)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    :cond_9
    iget v7, v0, Landroidx/leanback/widget/p;->e:I

    .line 145
    .line 146
    sub-int/2addr v7, v5

    .line 147
    if-ne v14, v7, :cond_a

    .line 148
    .line 149
    if-eqz p2, :cond_a

    .line 150
    .line 151
    return v5

    .line 152
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 153
    .line 154
    move v8, v15

    .line 155
    goto :goto_2

    .line 156
    :cond_b
    return v3

    .line 157
    :cond_c
    :goto_4
    invoke-virtual {v1}, Lp/g;->f()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    invoke-virtual {v1, v2}, Lp/g;->e(I)V

    .line 162
    .line 163
    .line 164
    return v3
.end method

.method public final p(III)I
    .locals 11

    .line 1
    iget v0, p0, Landroidx/leanback/widget/p;->g:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/e1;->s()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroidx/leanback/widget/p;->g:I

    .line 12
    .line 13
    add-int/lit8 v1, p1, -0x1

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/p;->g:I

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/leanback/widget/e1;->j:Lp/g;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-gez v0, :cond_6

    .line 31
    .line 32
    invoke-virtual {v1}, Lp/g;->f()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_5

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/leanback/widget/e1;->s()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v2

    .line 43
    if-ne p1, v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/leanback/widget/e1;->s()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :goto_1
    iget v4, p0, Landroidx/leanback/widget/e1;->k:I

    .line 50
    .line 51
    if-lt v0, v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget v4, v4, Landroidx/leanback/widget/o;->a:I

    .line 58
    .line 59
    if-ne v4, p2, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/e1;->s()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_2
    iget-boolean v4, p0, Landroidx/leanback/widget/p;->c:Z

    .line 70
    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iget v4, v4, Landroidx/leanback/widget/d1;->c:I

    .line 78
    .line 79
    neg-int v4, v4

    .line 80
    iget v5, p0, Landroidx/leanback/widget/p;->d:I

    .line 81
    .line 82
    sub-int/2addr v4, v5

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget v4, v4, Landroidx/leanback/widget/d1;->c:I

    .line 89
    .line 90
    iget v5, p0, Landroidx/leanback/widget/p;->d:I

    .line 91
    .line 92
    add-int/2addr v4, v5

    .line 93
    :goto_3
    add-int/2addr v0, v2

    .line 94
    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/e1;->s()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-gt v0, v5, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    iget v5, v5, Landroidx/leanback/widget/d1;->b:I

    .line 105
    .line 106
    sub-int/2addr v4, v5

    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_5
    const/4 v4, 0x0

    .line 111
    goto :goto_5

    .line 112
    :cond_6
    iget-object v4, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 113
    .line 114
    invoke-virtual {v4, v0}, Landroidx/leanback/widget/q;->d(I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    sub-int v4, p3, v0

    .line 119
    .line 120
    :cond_7
    :goto_5
    new-instance v0, Landroidx/leanback/widget/d1;

    .line 121
    .line 122
    invoke-direct {v0, p2, v4}, Landroidx/leanback/widget/d1;-><init>(II)V

    .line 123
    .line 124
    .line 125
    iget-object v4, v1, Lp/g;->d:[Ljava/lang/Object;

    .line 126
    .line 127
    iget v5, v1, Lp/g;->b:I

    .line 128
    .line 129
    aput-object v0, v4, v5

    .line 130
    .line 131
    add-int/2addr v5, v2

    .line 132
    iget v4, v1, Lp/g;->c:I

    .line 133
    .line 134
    and-int/2addr v4, v5

    .line 135
    iput v4, v1, Lp/g;->b:I

    .line 136
    .line 137
    iget v5, v1, Lp/g;->a:I

    .line 138
    .line 139
    if-ne v4, v5, :cond_8

    .line 140
    .line 141
    invoke-virtual {v1}, Lp/g;->b()V

    .line 142
    .line 143
    .line 144
    :cond_8
    iget-object v4, p0, Landroidx/leanback/widget/e1;->l:Ljava/lang/Object;

    .line 145
    .line 146
    if-eqz v4, :cond_9

    .line 147
    .line 148
    iget v3, p0, Landroidx/leanback/widget/e1;->m:I

    .line 149
    .line 150
    iput v3, v0, Landroidx/leanback/widget/d1;->c:I

    .line 151
    .line 152
    const/4 v3, 0x0

    .line 153
    iput-object v3, p0, Landroidx/leanback/widget/e1;->l:Ljava/lang/Object;

    .line 154
    .line 155
    :goto_6
    move-object v6, v4

    .line 156
    goto :goto_7

    .line 157
    :cond_9
    iget-object v4, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 158
    .line 159
    iget-object v5, p0, Landroidx/leanback/widget/p;->a:[Ljava/lang/Object;

    .line 160
    .line 161
    invoke-virtual {v4, p1, v2, v5, v3}, Landroidx/leanback/widget/q;->b(IZ[Ljava/lang/Object;Z)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    iput v4, v0, Landroidx/leanback/widget/d1;->c:I

    .line 166
    .line 167
    aget-object v4, v5, v3

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :goto_7
    invoke-virtual {v1}, Lp/g;->f()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-ne v1, v2, :cond_a

    .line 175
    .line 176
    iput p1, p0, Landroidx/leanback/widget/p;->g:I

    .line 177
    .line 178
    iput p1, p0, Landroidx/leanback/widget/p;->f:I

    .line 179
    .line 180
    iput p1, p0, Landroidx/leanback/widget/e1;->k:I

    .line 181
    .line 182
    goto :goto_8

    .line 183
    :cond_a
    iget v1, p0, Landroidx/leanback/widget/p;->g:I

    .line 184
    .line 185
    if-gez v1, :cond_b

    .line 186
    .line 187
    iput p1, p0, Landroidx/leanback/widget/p;->g:I

    .line 188
    .line 189
    iput p1, p0, Landroidx/leanback/widget/p;->f:I

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_b
    add-int/2addr v1, v2

    .line 193
    iput v1, p0, Landroidx/leanback/widget/p;->g:I

    .line 194
    .line 195
    :goto_8
    iget-object v5, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 196
    .line 197
    iget v8, v0, Landroidx/leanback/widget/d1;->c:I

    .line 198
    .line 199
    move v7, p1

    .line 200
    move v9, p2

    .line 201
    move v10, p3

    .line 202
    invoke-virtual/range {v5 .. v10}, Landroidx/leanback/widget/q;->a(Ljava/lang/Object;IIII)V

    .line 203
    .line 204
    .line 205
    iget p1, v0, Landroidx/leanback/widget/d1;->c:I

    .line 206
    .line 207
    return p1
.end method

.method public final q(IZ)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/leanback/widget/q;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroidx/leanback/widget/p;->g:I

    .line 8
    .line 9
    const/high16 v2, -0x80000000

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-ltz v1, :cond_9

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/leanback/widget/e1;->s()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-ge v1, v6, :cond_0

    .line 21
    .line 22
    return v4

    .line 23
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/p;->g:I

    .line 24
    .line 25
    add-int/lit8 v6, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v1, v1, Landroidx/leanback/widget/o;->a:I

    .line 32
    .line 33
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/e1;->r(Z)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-gez v7, :cond_3

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/high16 v8, -0x80000000

    .line 41
    .line 42
    :goto_0
    iget v9, p0, Landroidx/leanback/widget/p;->e:I

    .line 43
    .line 44
    if-ge v7, v9, :cond_5

    .line 45
    .line 46
    iget-boolean v8, p0, Landroidx/leanback/widget/p;->c:Z

    .line 47
    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/e1;->v(I)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/e1;->u(I)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    :goto_1
    if-eq v8, v2, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-boolean v8, p0, Landroidx/leanback/widget/p;->c:Z

    .line 66
    .line 67
    if-eqz v8, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0, v7, v4, v3}, Landroidx/leanback/widget/e1;->h(IZ[I)I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    :goto_2
    move v8, v7

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    invoke-virtual {p0, v7, v5, v3}, Landroidx/leanback/widget/e1;->f(IZ[I)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    :goto_3
    iget-boolean v7, p0, Landroidx/leanback/widget/p;->c:Z

    .line 81
    .line 82
    if-eqz v7, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/e1;->v(I)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-gt v7, v8, :cond_8

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_6
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/e1;->u(I)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-lt v7, v8, :cond_8

    .line 96
    .line 97
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    iget v7, p0, Landroidx/leanback/widget/p;->e:I

    .line 100
    .line 101
    if-ne v1, v7, :cond_8

    .line 102
    .line 103
    iget-boolean v1, p0, Landroidx/leanback/widget/p;->c:Z

    .line 104
    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/p;->i(Z[I)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    :goto_5
    move v8, v1

    .line 112
    goto :goto_6

    .line 113
    :cond_7
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/p;->g(Z[I)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    goto :goto_5

    .line 118
    :goto_6
    const/4 v1, 0x0

    .line 119
    :cond_8
    const/4 v7, 0x1

    .line 120
    goto :goto_9

    .line 121
    :cond_9
    iget v1, p0, Landroidx/leanback/widget/p;->i:I

    .line 122
    .line 123
    const/4 v6, -0x1

    .line 124
    if-eq v1, v6, :cond_a

    .line 125
    .line 126
    move v6, v1

    .line 127
    goto :goto_7

    .line 128
    :cond_a
    const/4 v6, 0x0

    .line 129
    :goto_7
    iget-object v1, p0, Landroidx/leanback/widget/e1;->j:Lp/g;

    .line 130
    .line 131
    invoke-virtual {v1}, Lp/g;->f()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-lez v1, :cond_b

    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/leanback/widget/e1;->s()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget v1, v1, Landroidx/leanback/widget/o;->a:I

    .line 146
    .line 147
    add-int/2addr v1, v5

    .line 148
    goto :goto_8

    .line 149
    :cond_b
    move v1, v6

    .line 150
    :goto_8
    iget v7, p0, Landroidx/leanback/widget/p;->e:I

    .line 151
    .line 152
    rem-int/2addr v1, v7

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v8, 0x0

    .line 155
    :goto_9
    const/4 v9, 0x0

    .line 156
    :goto_a
    iget v10, p0, Landroidx/leanback/widget/p;->e:I

    .line 157
    .line 158
    if-ge v1, v10, :cond_1e

    .line 159
    .line 160
    if-eq v6, v0, :cond_1d

    .line 161
    .line 162
    if-nez p2, :cond_c

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/p;->c(I)Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eqz v10, :cond_c

    .line 169
    .line 170
    goto/16 :goto_17

    .line 171
    .line 172
    :cond_c
    iget-boolean v9, p0, Landroidx/leanback/widget/p;->c:Z

    .line 173
    .line 174
    if-eqz v9, :cond_d

    .line 175
    .line 176
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/e1;->v(I)I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    goto :goto_b

    .line 181
    :cond_d
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/e1;->u(I)I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    :goto_b
    const v10, 0x7fffffff

    .line 186
    .line 187
    .line 188
    if-eq v9, v10, :cond_10

    .line 189
    .line 190
    if-ne v9, v2, :cond_e

    .line 191
    .line 192
    goto :goto_e

    .line 193
    :cond_e
    iget-boolean v10, p0, Landroidx/leanback/widget/p;->c:Z

    .line 194
    .line 195
    if-eqz v10, :cond_f

    .line 196
    .line 197
    iget v10, p0, Landroidx/leanback/widget/p;->d:I

    .line 198
    .line 199
    :goto_c
    neg-int v10, v10

    .line 200
    goto :goto_d

    .line 201
    :cond_f
    iget v10, p0, Landroidx/leanback/widget/p;->d:I

    .line 202
    .line 203
    :goto_d
    add-int/2addr v9, v10

    .line 204
    goto :goto_10

    .line 205
    :cond_10
    :goto_e
    if-nez v1, :cond_13

    .line 206
    .line 207
    iget-boolean v9, p0, Landroidx/leanback/widget/p;->c:Z

    .line 208
    .line 209
    if-eqz v9, :cond_11

    .line 210
    .line 211
    iget v9, p0, Landroidx/leanback/widget/p;->e:I

    .line 212
    .line 213
    sub-int/2addr v9, v5

    .line 214
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/e1;->v(I)I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    goto :goto_f

    .line 219
    :cond_11
    iget v9, p0, Landroidx/leanback/widget/p;->e:I

    .line 220
    .line 221
    sub-int/2addr v9, v5

    .line 222
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/e1;->u(I)I

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    :goto_f
    if-eq v9, v10, :cond_15

    .line 227
    .line 228
    if-eq v9, v2, :cond_15

    .line 229
    .line 230
    iget-boolean v10, p0, Landroidx/leanback/widget/p;->c:Z

    .line 231
    .line 232
    if-eqz v10, :cond_12

    .line 233
    .line 234
    iget v10, p0, Landroidx/leanback/widget/p;->d:I

    .line 235
    .line 236
    goto :goto_c

    .line 237
    :cond_12
    iget v10, p0, Landroidx/leanback/widget/p;->d:I

    .line 238
    .line 239
    goto :goto_d

    .line 240
    :cond_13
    iget-boolean v9, p0, Landroidx/leanback/widget/p;->c:Z

    .line 241
    .line 242
    if-eqz v9, :cond_14

    .line 243
    .line 244
    add-int/lit8 v9, v1, -0x1

    .line 245
    .line 246
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/e1;->u(I)I

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    goto :goto_10

    .line 251
    :cond_14
    add-int/lit8 v9, v1, -0x1

    .line 252
    .line 253
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/e1;->v(I)I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    :cond_15
    :goto_10
    add-int/lit8 v10, v6, 0x1

    .line 258
    .line 259
    invoke-virtual {p0, v6, v1, v9}, Landroidx/leanback/widget/e1;->p(III)I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-eqz v7, :cond_1b

    .line 264
    .line 265
    :goto_11
    iget-boolean v11, p0, Landroidx/leanback/widget/p;->c:Z

    .line 266
    .line 267
    if-eqz v11, :cond_16

    .line 268
    .line 269
    sub-int v11, v9, v6

    .line 270
    .line 271
    if-le v11, v8, :cond_1a

    .line 272
    .line 273
    goto :goto_12

    .line 274
    :cond_16
    add-int v11, v9, v6

    .line 275
    .line 276
    if-ge v11, v8, :cond_1a

    .line 277
    .line 278
    :goto_12
    if-eq v10, v0, :cond_19

    .line 279
    .line 280
    if-nez p2, :cond_17

    .line 281
    .line 282
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/p;->c(I)Z

    .line 283
    .line 284
    .line 285
    move-result v11

    .line 286
    if-eqz v11, :cond_17

    .line 287
    .line 288
    goto :goto_14

    .line 289
    :cond_17
    iget-boolean v11, p0, Landroidx/leanback/widget/p;->c:Z

    .line 290
    .line 291
    if-eqz v11, :cond_18

    .line 292
    .line 293
    neg-int v6, v6

    .line 294
    iget v11, p0, Landroidx/leanback/widget/p;->d:I

    .line 295
    .line 296
    sub-int/2addr v6, v11

    .line 297
    goto :goto_13

    .line 298
    :cond_18
    iget v11, p0, Landroidx/leanback/widget/p;->d:I

    .line 299
    .line 300
    add-int/2addr v6, v11

    .line 301
    :goto_13
    add-int/2addr v9, v6

    .line 302
    add-int/lit8 v6, v10, 0x1

    .line 303
    .line 304
    invoke-virtual {p0, v10, v1, v9}, Landroidx/leanback/widget/e1;->p(III)I

    .line 305
    .line 306
    .line 307
    move-result v10

    .line 308
    move v12, v10

    .line 309
    move v10, v6

    .line 310
    move v6, v12

    .line 311
    goto :goto_11

    .line 312
    :cond_19
    :goto_14
    return v5

    .line 313
    :cond_1a
    move v6, v10

    .line 314
    goto :goto_16

    .line 315
    :cond_1b
    iget-boolean v6, p0, Landroidx/leanback/widget/p;->c:Z

    .line 316
    .line 317
    if-eqz v6, :cond_1c

    .line 318
    .line 319
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/e1;->v(I)I

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    goto :goto_15

    .line 324
    :cond_1c
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/e1;->u(I)I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    :goto_15
    move v8, v6

    .line 329
    move v6, v10

    .line 330
    const/4 v7, 0x1

    .line 331
    :goto_16
    add-int/lit8 v1, v1, 0x1

    .line 332
    .line 333
    const/4 v9, 0x1

    .line 334
    goto/16 :goto_a

    .line 335
    .line 336
    :cond_1d
    :goto_17
    return v9

    .line 337
    :cond_1e
    if-eqz p2, :cond_1f

    .line 338
    .line 339
    return v9

    .line 340
    :cond_1f
    iget-boolean v1, p0, Landroidx/leanback/widget/p;->c:Z

    .line 341
    .line 342
    if-eqz v1, :cond_20

    .line 343
    .line 344
    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/p;->i(Z[I)I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    :goto_18
    move v8, v1

    .line 349
    goto :goto_19

    .line 350
    :cond_20
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/p;->g(Z[I)I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    goto :goto_18

    .line 355
    :goto_19
    const/4 v1, 0x0

    .line 356
    goto/16 :goto_a
.end method

.method public final r(Z)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget p1, p0, Landroidx/leanback/widget/p;->g:I

    .line 6
    .line 7
    :goto_0
    iget v2, p0, Landroidx/leanback/widget/p;->f:I

    .line 8
    .line 9
    if-lt p1, v2, :cond_5

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v2, v2, Landroidx/leanback/widget/o;->a:I

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v3, p0, Landroidx/leanback/widget/p;->e:I

    .line 24
    .line 25
    sub-int/2addr v3, v0

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget p1, p0, Landroidx/leanback/widget/p;->f:I

    .line 33
    .line 34
    :goto_2
    iget v2, p0, Landroidx/leanback/widget/p;->g:I

    .line 35
    .line 36
    if-gt p1, v2, :cond_5

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v2, v2, Landroidx/leanback/widget/o;->a:I

    .line 43
    .line 44
    iget v3, p0, Landroidx/leanback/widget/p;->e:I

    .line 45
    .line 46
    sub-int/2addr v3, v0

    .line 47
    if-ne v2, v3, :cond_3

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    if-eqz v1, :cond_4

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    return p1

    .line 56
    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    const/4 p1, -0x1

    .line 60
    return p1
.end method

.method public final s()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/e1;->k:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/e1;->j:Lp/g;

    .line 4
    .line 5
    invoke-virtual {v1}, Lp/g;->f()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    return v1
.end method

.method public final t(I)Landroidx/leanback/widget/d1;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/leanback/widget/e1;->k:I

    .line 2
    .line 3
    sub-int/2addr p1, v0

    .line 4
    if-ltz p1, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/e1;->j:Lp/g;

    .line 7
    .line 8
    invoke-virtual {v0}, Lp/g;->f()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lt p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-ltz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lp/g;->f()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge p1, v1, :cond_2

    .line 22
    .line 23
    iget-object v1, v0, Lp/g;->d:[Ljava/lang/Object;

    .line 24
    .line 25
    iget v2, v0, Lp/g;->a:I

    .line 26
    .line 27
    add-int/2addr v2, p1

    .line 28
    iget p1, v0, Lp/g;->c:I

    .line 29
    .line 30
    and-int/2addr p1, v2

    .line 31
    aget-object p1, v1, p1

    .line 32
    .line 33
    invoke-static {p1}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    check-cast p1, Landroidx/leanback/widget/d1;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 49
    return-object p1
.end method

.method public final u(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/p;->f:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-boolean v2, p0, Landroidx/leanback/widget/p;->c:Z

    .line 9
    .line 10
    if-eqz v2, :cond_3

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroidx/leanback/widget/q;->d(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v2, p0, Landroidx/leanback/widget/p;->f:I

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget v2, v2, Landroidx/leanback/widget/o;->a:I

    .line 25
    .line 26
    if-ne v2, p1, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    iget v2, p0, Landroidx/leanback/widget/p;->f:I

    .line 30
    .line 31
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/leanback/widget/e1;->s()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-gt v2, v3, :cond_6

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget v4, v3, Landroidx/leanback/widget/d1;->b:I

    .line 44
    .line 45
    add-int/2addr v0, v4

    .line 46
    iget v3, v3, Landroidx/leanback/widget/o;->a:I

    .line 47
    .line 48
    if-ne v3, p1, :cond_2

    .line 49
    .line 50
    return v0

    .line 51
    :cond_2
    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 53
    .line 54
    iget v2, p0, Landroidx/leanback/widget/p;->g:I

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/q;->d(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget v2, p0, Landroidx/leanback/widget/p;->g:I

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget v3, v2, Landroidx/leanback/widget/o;->a:I

    .line 67
    .line 68
    if-ne v3, p1, :cond_4

    .line 69
    .line 70
    iget p1, v2, Landroidx/leanback/widget/d1;->c:I

    .line 71
    .line 72
    :goto_1
    add-int/2addr v0, p1

    .line 73
    return v0

    .line 74
    :cond_4
    iget v3, p0, Landroidx/leanback/widget/p;->g:I

    .line 75
    .line 76
    add-int/lit8 v3, v3, -0x1

    .line 77
    .line 78
    :goto_2
    iget v4, p0, Landroidx/leanback/widget/e1;->k:I

    .line 79
    .line 80
    if-lt v3, v4, :cond_6

    .line 81
    .line 82
    iget v2, v2, Landroidx/leanback/widget/d1;->b:I

    .line 83
    .line 84
    sub-int/2addr v0, v2

    .line 85
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget v4, v2, Landroidx/leanback/widget/o;->a:I

    .line 90
    .line 91
    if-ne v4, p1, :cond_5

    .line 92
    .line 93
    iget p1, v2, Landroidx/leanback/widget/d1;->c:I

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    return v1
.end method

.method public final v(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/leanback/widget/p;->f:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v2, p0, Landroidx/leanback/widget/p;->c:Z

    .line 10
    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 14
    .line 15
    iget v2, p0, Landroidx/leanback/widget/p;->g:I

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/q;->d(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v2, p0, Landroidx/leanback/widget/p;->g:I

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v3, v2, Landroidx/leanback/widget/o;->a:I

    .line 28
    .line 29
    if-ne v3, p1, :cond_1

    .line 30
    .line 31
    iget p1, v2, Landroidx/leanback/widget/d1;->c:I

    .line 32
    .line 33
    :goto_0
    sub-int/2addr v0, p1

    .line 34
    return v0

    .line 35
    :cond_1
    iget v3, p0, Landroidx/leanback/widget/p;->g:I

    .line 36
    .line 37
    add-int/lit8 v3, v3, -0x1

    .line 38
    .line 39
    :goto_1
    iget v4, p0, Landroidx/leanback/widget/e1;->k:I

    .line 40
    .line 41
    if-lt v3, v4, :cond_6

    .line 42
    .line 43
    iget v2, v2, Landroidx/leanback/widget/d1;->b:I

    .line 44
    .line 45
    sub-int/2addr v0, v2

    .line 46
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget v4, v2, Landroidx/leanback/widget/o;->a:I

    .line 51
    .line 52
    if-ne v4, p1, :cond_2

    .line 53
    .line 54
    iget p1, v2, Landroidx/leanback/widget/d1;->c:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget-object v2, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Landroidx/leanback/widget/q;->d(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget v2, p0, Landroidx/leanback/widget/p;->f:I

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget v2, v2, Landroidx/leanback/widget/o;->a:I

    .line 73
    .line 74
    if-ne v2, p1, :cond_4

    .line 75
    .line 76
    return v0

    .line 77
    :cond_4
    iget v2, p0, Landroidx/leanback/widget/p;->f:I

    .line 78
    .line 79
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/leanback/widget/e1;->s()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-gt v2, v3, :cond_6

    .line 86
    .line 87
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    iget v4, v3, Landroidx/leanback/widget/d1;->b:I

    .line 92
    .line 93
    add-int/2addr v0, v4

    .line 94
    iget v3, v3, Landroidx/leanback/widget/o;->a:I

    .line 95
    .line 96
    if-ne v3, p1, :cond_5

    .line 97
    .line 98
    return v0

    .line 99
    :cond_5
    goto :goto_2

    .line 100
    :cond_6
    return v1
.end method

.method public final w(IZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/e1;->j:Lp/g;

    .line 4
    .line 5
    invoke-virtual {v1}, Lp/g;->f()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    iget v2, v0, Landroidx/leanback/widget/p;->f:I

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-ltz v2, :cond_1

    .line 17
    .line 18
    iget-object v5, v0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 19
    .line 20
    invoke-virtual {v5, v2}, Landroidx/leanback/widget/q;->d(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget v5, v0, Landroidx/leanback/widget/p;->f:I

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget v5, v5, Landroidx/leanback/widget/d1;->b:I

    .line 31
    .line 32
    iget v6, v0, Landroidx/leanback/widget/p;->f:I

    .line 33
    .line 34
    sub-int/2addr v6, v4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget v2, v0, Landroidx/leanback/widget/p;->i:I

    .line 37
    .line 38
    const/4 v5, -0x1

    .line 39
    if-eq v2, v5, :cond_2

    .line 40
    .line 41
    move v6, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v6, 0x0

    .line 44
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/e1;->s()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-gt v6, v2, :cond_a

    .line 49
    .line 50
    iget v2, v0, Landroidx/leanback/widget/e1;->k:I

    .line 51
    .line 52
    add-int/lit8 v5, v2, -0x1

    .line 53
    .line 54
    if-ge v6, v5, :cond_3

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    if-ge v6, v2, :cond_4

    .line 58
    .line 59
    return v3

    .line 60
    :cond_4
    const v2, 0x7fffffff

    .line 61
    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    :goto_1
    iget-object v7, v0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 65
    .line 66
    iget-object v7, v7, Landroidx/leanback/widget/q;->a:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v7, Landroidx/leanback/widget/GridLayoutManager;

    .line 69
    .line 70
    iget v7, v7, Landroidx/leanback/widget/GridLayoutManager;->h:I

    .line 71
    .line 72
    iget v8, v0, Landroidx/leanback/widget/e1;->k:I

    .line 73
    .line 74
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    :goto_2
    if-lt v6, v7, :cond_9

    .line 79
    .line 80
    invoke-virtual {v0, v6}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 81
    .line 82
    .line 83
    move-result-object v14

    .line 84
    iget v15, v14, Landroidx/leanback/widget/o;->a:I

    .line 85
    .line 86
    iget-object v8, v0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 87
    .line 88
    iget-object v9, v0, Landroidx/leanback/widget/p;->a:[Ljava/lang/Object;

    .line 89
    .line 90
    invoke-virtual {v8, v6, v3, v9, v3}, Landroidx/leanback/widget/q;->b(IZ[Ljava/lang/Object;Z)I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    iget v8, v14, Landroidx/leanback/widget/d1;->c:I

    .line 95
    .line 96
    if-eq v11, v8, :cond_5

    .line 97
    .line 98
    add-int/2addr v6, v4

    .line 99
    iget v2, v0, Landroidx/leanback/widget/e1;->k:I

    .line 100
    .line 101
    sub-int/2addr v6, v2

    .line 102
    invoke-virtual {v1, v6}, Lp/g;->e(I)V

    .line 103
    .line 104
    .line 105
    iget v1, v0, Landroidx/leanback/widget/p;->f:I

    .line 106
    .line 107
    iput v1, v0, Landroidx/leanback/widget/e1;->k:I

    .line 108
    .line 109
    aget-object v1, v9, v3

    .line 110
    .line 111
    iput-object v1, v0, Landroidx/leanback/widget/e1;->l:Ljava/lang/Object;

    .line 112
    .line 113
    iput v11, v0, Landroidx/leanback/widget/e1;->m:I

    .line 114
    .line 115
    return v3

    .line 116
    :cond_5
    iput v6, v0, Landroidx/leanback/widget/p;->f:I

    .line 117
    .line 118
    iget v8, v0, Landroidx/leanback/widget/p;->g:I

    .line 119
    .line 120
    if-gez v8, :cond_6

    .line 121
    .line 122
    iput v6, v0, Landroidx/leanback/widget/p;->g:I

    .line 123
    .line 124
    :cond_6
    iget-object v8, v0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 125
    .line 126
    aget-object v9, v9, v3

    .line 127
    .line 128
    sub-int v13, v2, v5

    .line 129
    .line 130
    move v10, v6

    .line 131
    move v12, v15

    .line 132
    invoke-virtual/range {v8 .. v13}, Landroidx/leanback/widget/q;->a(Ljava/lang/Object;IIII)V

    .line 133
    .line 134
    .line 135
    if-nez p2, :cond_7

    .line 136
    .line 137
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/p;->d(I)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_7

    .line 142
    .line 143
    return v4

    .line 144
    :cond_7
    iget-object v2, v0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 145
    .line 146
    invoke-virtual {v2, v6}, Landroidx/leanback/widget/q;->d(I)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    iget v5, v14, Landroidx/leanback/widget/d1;->b:I

    .line 151
    .line 152
    if-nez v15, :cond_8

    .line 153
    .line 154
    if-eqz p2, :cond_8

    .line 155
    .line 156
    return v4

    .line 157
    :cond_8
    add-int/lit8 v6, v6, -0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_9
    return v3

    .line 161
    :cond_a
    :goto_3
    invoke-virtual {v1}, Lp/g;->f()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {v1, v2}, Lp/g;->e(I)V

    .line 166
    .line 167
    .line 168
    return v3
.end method

.method public final x(III)I
    .locals 12

    .line 1
    iget v0, p0, Landroidx/leanback/widget/p;->f:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Landroidx/leanback/widget/e1;->k:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/e1;->k:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-ltz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move-object v0, v1

    .line 31
    :goto_1
    iget-object v2, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 32
    .line 33
    iget v3, p0, Landroidx/leanback/widget/e1;->k:I

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroidx/leanback/widget/q;->d(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    new-instance v3, Landroidx/leanback/widget/d1;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-direct {v3, p2, v4}, Landroidx/leanback/widget/d1;-><init>(II)V

    .line 43
    .line 44
    .line 45
    iget-object v5, p0, Landroidx/leanback/widget/e1;->j:Lp/g;

    .line 46
    .line 47
    iget v6, v5, Lp/g;->a:I

    .line 48
    .line 49
    add-int/lit8 v6, v6, -0x1

    .line 50
    .line 51
    iget v7, v5, Lp/g;->c:I

    .line 52
    .line 53
    and-int/2addr v6, v7

    .line 54
    iput v6, v5, Lp/g;->a:I

    .line 55
    .line 56
    iget-object v7, v5, Lp/g;->d:[Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v3, v7, v6

    .line 59
    .line 60
    iget v7, v5, Lp/g;->b:I

    .line 61
    .line 62
    if-ne v6, v7, :cond_3

    .line 63
    .line 64
    invoke-virtual {v5}, Lp/g;->b()V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v5, p0, Landroidx/leanback/widget/e1;->l:Ljava/lang/Object;

    .line 68
    .line 69
    if-eqz v5, :cond_4

    .line 70
    .line 71
    iget v4, p0, Landroidx/leanback/widget/e1;->m:I

    .line 72
    .line 73
    iput v4, v3, Landroidx/leanback/widget/d1;->c:I

    .line 74
    .line 75
    iput-object v1, p0, Landroidx/leanback/widget/e1;->l:Ljava/lang/Object;

    .line 76
    .line 77
    :goto_2
    move-object v7, v5

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    iget-object v1, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 80
    .line 81
    iget-object v5, p0, Landroidx/leanback/widget/p;->a:[Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v1, p1, v4, v5, v4}, Landroidx/leanback/widget/q;->b(IZ[Ljava/lang/Object;Z)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iput v1, v3, Landroidx/leanback/widget/d1;->c:I

    .line 88
    .line 89
    aget-object v5, v5, v4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :goto_3
    iput p1, p0, Landroidx/leanback/widget/p;->f:I

    .line 93
    .line 94
    iput p1, p0, Landroidx/leanback/widget/e1;->k:I

    .line 95
    .line 96
    iget v1, p0, Landroidx/leanback/widget/p;->g:I

    .line 97
    .line 98
    if-gez v1, :cond_5

    .line 99
    .line 100
    iput p1, p0, Landroidx/leanback/widget/p;->g:I

    .line 101
    .line 102
    :cond_5
    iget-boolean v1, p0, Landroidx/leanback/widget/p;->c:Z

    .line 103
    .line 104
    if-nez v1, :cond_6

    .line 105
    .line 106
    iget v1, v3, Landroidx/leanback/widget/d1;->c:I

    .line 107
    .line 108
    sub-int/2addr p3, v1

    .line 109
    :goto_4
    move v11, p3

    .line 110
    goto :goto_5

    .line 111
    :cond_6
    iget v1, v3, Landroidx/leanback/widget/d1;->c:I

    .line 112
    .line 113
    add-int/2addr p3, v1

    .line 114
    goto :goto_4

    .line 115
    :goto_5
    if-eqz v0, :cond_7

    .line 116
    .line 117
    sub-int/2addr v2, v11

    .line 118
    iput v2, v0, Landroidx/leanback/widget/d1;->b:I

    .line 119
    .line 120
    :cond_7
    iget-object v6, p0, Landroidx/leanback/widget/p;->b:Landroidx/leanback/widget/q;

    .line 121
    .line 122
    iget v9, v3, Landroidx/leanback/widget/d1;->c:I

    .line 123
    .line 124
    move v8, p1

    .line 125
    move v10, p2

    .line 126
    invoke-virtual/range {v6 .. v11}, Landroidx/leanback/widget/q;->a(Ljava/lang/Object;IIII)V

    .line 127
    .line 128
    .line 129
    iget p1, v3, Landroidx/leanback/widget/d1;->c:I

    .line 130
    .line 131
    return p1
.end method

.method public final y(IZ)Z
    .locals 12

    .line 1
    iget v0, p0, Landroidx/leanback/widget/p;->f:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ltz v0, :cond_9

    .line 10
    .line 11
    iget v5, p0, Landroidx/leanback/widget/e1;->k:I

    .line 12
    .line 13
    if-le v0, v5, :cond_0

    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    add-int/lit8 v5, v0, -0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v0, v0, Landroidx/leanback/widget/o;->a:I

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/e1;->r(Z)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-gez v6, :cond_3

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    iget v6, p0, Landroidx/leanback/widget/p;->e:I

    .line 33
    .line 34
    sub-int/2addr v6, v4

    .line 35
    const v7, 0x7fffffff

    .line 36
    .line 37
    .line 38
    :goto_0
    if-ltz v6, :cond_5

    .line 39
    .line 40
    iget-boolean v7, p0, Landroidx/leanback/widget/p;->c:Z

    .line 41
    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/e1;->u(I)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/e1;->v(I)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    :goto_1
    if-eq v7, v1, :cond_2

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-boolean v7, p0, Landroidx/leanback/widget/p;->c:Z

    .line 60
    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, v6, v4, v2}, Landroidx/leanback/widget/e1;->f(IZ[I)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    :goto_2
    move v7, v6

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    invoke-virtual {p0, v6, v3, v2}, Landroidx/leanback/widget/e1;->h(IZ[I)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    :goto_3
    iget-boolean v6, p0, Landroidx/leanback/widget/p;->c:Z

    .line 75
    .line 76
    if-eqz v6, :cond_6

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->u(I)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-lt v6, v7, :cond_8

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->v(I)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-gt v6, v7, :cond_8

    .line 90
    .line 91
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 92
    .line 93
    if-gez v0, :cond_8

    .line 94
    .line 95
    iget v0, p0, Landroidx/leanback/widget/p;->e:I

    .line 96
    .line 97
    sub-int/2addr v0, v4

    .line 98
    iget-boolean v6, p0, Landroidx/leanback/widget/p;->c:Z

    .line 99
    .line 100
    if-eqz v6, :cond_7

    .line 101
    .line 102
    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/p;->g(Z[I)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    :goto_5
    move v7, v6

    .line 107
    goto :goto_6

    .line 108
    :cond_7
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/p;->i(Z[I)I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    goto :goto_5

    .line 113
    :cond_8
    :goto_6
    const/4 v6, 0x1

    .line 114
    goto :goto_9

    .line 115
    :cond_9
    iget v0, p0, Landroidx/leanback/widget/p;->i:I

    .line 116
    .line 117
    const/4 v5, -0x1

    .line 118
    if-eq v0, v5, :cond_a

    .line 119
    .line 120
    move v5, v0

    .line 121
    goto :goto_7

    .line 122
    :cond_a
    const/4 v5, 0x0

    .line 123
    :goto_7
    iget-object v0, p0, Landroidx/leanback/widget/e1;->j:Lp/g;

    .line 124
    .line 125
    invoke-virtual {v0}, Lp/g;->f()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-lez v0, :cond_b

    .line 130
    .line 131
    iget v0, p0, Landroidx/leanback/widget/e1;->k:I

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->t(I)Landroidx/leanback/widget/d1;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget v0, v0, Landroidx/leanback/widget/o;->a:I

    .line 138
    .line 139
    iget v6, p0, Landroidx/leanback/widget/p;->e:I

    .line 140
    .line 141
    add-int/2addr v0, v6

    .line 142
    sub-int/2addr v0, v4

    .line 143
    goto :goto_8

    .line 144
    :cond_b
    move v0, v5

    .line 145
    :goto_8
    iget v6, p0, Landroidx/leanback/widget/p;->e:I

    .line 146
    .line 147
    rem-int/2addr v0, v6

    .line 148
    const/4 v6, 0x0

    .line 149
    const/4 v7, 0x0

    .line 150
    :goto_9
    const/4 v8, 0x0

    .line 151
    :goto_a
    if-ltz v0, :cond_1e

    .line 152
    .line 153
    if-ltz v5, :cond_1d

    .line 154
    .line 155
    if-nez p2, :cond_c

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/p;->d(I)Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-eqz v9, :cond_c

    .line 162
    .line 163
    goto/16 :goto_17

    .line 164
    .line 165
    :cond_c
    iget-boolean v8, p0, Landroidx/leanback/widget/p;->c:Z

    .line 166
    .line 167
    if-eqz v8, :cond_d

    .line 168
    .line 169
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->u(I)I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    goto :goto_b

    .line 174
    :cond_d
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->v(I)I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    :goto_b
    const/high16 v9, -0x80000000

    .line 179
    .line 180
    if-eq v8, v1, :cond_10

    .line 181
    .line 182
    if-ne v8, v9, :cond_e

    .line 183
    .line 184
    goto :goto_e

    .line 185
    :cond_e
    iget-boolean v9, p0, Landroidx/leanback/widget/p;->c:Z

    .line 186
    .line 187
    if-eqz v9, :cond_f

    .line 188
    .line 189
    iget v9, p0, Landroidx/leanback/widget/p;->d:I

    .line 190
    .line 191
    goto :goto_d

    .line 192
    :cond_f
    iget v9, p0, Landroidx/leanback/widget/p;->d:I

    .line 193
    .line 194
    :goto_c
    neg-int v9, v9

    .line 195
    :goto_d
    add-int/2addr v8, v9

    .line 196
    goto :goto_10

    .line 197
    :cond_10
    :goto_e
    iget v8, p0, Landroidx/leanback/widget/p;->e:I

    .line 198
    .line 199
    sub-int/2addr v8, v4

    .line 200
    if-ne v0, v8, :cond_13

    .line 201
    .line 202
    iget-boolean v8, p0, Landroidx/leanback/widget/p;->c:Z

    .line 203
    .line 204
    if-eqz v8, :cond_11

    .line 205
    .line 206
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/e1;->u(I)I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    goto :goto_f

    .line 211
    :cond_11
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/e1;->v(I)I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    :goto_f
    if-eq v8, v1, :cond_15

    .line 216
    .line 217
    if-eq v8, v9, :cond_15

    .line 218
    .line 219
    iget-boolean v9, p0, Landroidx/leanback/widget/p;->c:Z

    .line 220
    .line 221
    if-eqz v9, :cond_12

    .line 222
    .line 223
    iget v9, p0, Landroidx/leanback/widget/p;->d:I

    .line 224
    .line 225
    goto :goto_d

    .line 226
    :cond_12
    iget v9, p0, Landroidx/leanback/widget/p;->d:I

    .line 227
    .line 228
    goto :goto_c

    .line 229
    :cond_13
    iget-boolean v8, p0, Landroidx/leanback/widget/p;->c:Z

    .line 230
    .line 231
    if-eqz v8, :cond_14

    .line 232
    .line 233
    add-int/lit8 v8, v0, 0x1

    .line 234
    .line 235
    invoke-virtual {p0, v8}, Landroidx/leanback/widget/e1;->v(I)I

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    goto :goto_10

    .line 240
    :cond_14
    add-int/lit8 v8, v0, 0x1

    .line 241
    .line 242
    invoke-virtual {p0, v8}, Landroidx/leanback/widget/e1;->u(I)I

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    :cond_15
    :goto_10
    add-int/lit8 v9, v5, -0x1

    .line 247
    .line 248
    invoke-virtual {p0, v5, v0, v8}, Landroidx/leanback/widget/e1;->x(III)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v6, :cond_1b

    .line 253
    .line 254
    :goto_11
    iget-boolean v10, p0, Landroidx/leanback/widget/p;->c:Z

    .line 255
    .line 256
    if-eqz v10, :cond_16

    .line 257
    .line 258
    add-int v10, v8, v5

    .line 259
    .line 260
    if-ge v10, v7, :cond_1a

    .line 261
    .line 262
    goto :goto_12

    .line 263
    :cond_16
    sub-int v10, v8, v5

    .line 264
    .line 265
    if-le v10, v7, :cond_1a

    .line 266
    .line 267
    :goto_12
    if-ltz v9, :cond_19

    .line 268
    .line 269
    if-nez p2, :cond_17

    .line 270
    .line 271
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/p;->d(I)Z

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    if-eqz v10, :cond_17

    .line 276
    .line 277
    goto :goto_14

    .line 278
    :cond_17
    iget-boolean v10, p0, Landroidx/leanback/widget/p;->c:Z

    .line 279
    .line 280
    if-eqz v10, :cond_18

    .line 281
    .line 282
    iget v10, p0, Landroidx/leanback/widget/p;->d:I

    .line 283
    .line 284
    add-int/2addr v5, v10

    .line 285
    goto :goto_13

    .line 286
    :cond_18
    neg-int v5, v5

    .line 287
    iget v10, p0, Landroidx/leanback/widget/p;->d:I

    .line 288
    .line 289
    sub-int/2addr v5, v10

    .line 290
    :goto_13
    add-int/2addr v8, v5

    .line 291
    add-int/lit8 v5, v9, -0x1

    .line 292
    .line 293
    invoke-virtual {p0, v9, v0, v8}, Landroidx/leanback/widget/e1;->x(III)I

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    move v11, v9

    .line 298
    move v9, v5

    .line 299
    move v5, v11

    .line 300
    goto :goto_11

    .line 301
    :cond_19
    :goto_14
    return v4

    .line 302
    :cond_1a
    move v5, v9

    .line 303
    goto :goto_16

    .line 304
    :cond_1b
    iget-boolean v5, p0, Landroidx/leanback/widget/p;->c:Z

    .line 305
    .line 306
    if-eqz v5, :cond_1c

    .line 307
    .line 308
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->u(I)I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    goto :goto_15

    .line 313
    :cond_1c
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/e1;->v(I)I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    :goto_15
    move v7, v5

    .line 318
    move v5, v9

    .line 319
    const/4 v6, 0x1

    .line 320
    :goto_16
    add-int/lit8 v0, v0, -0x1

    .line 321
    .line 322
    const/4 v8, 0x1

    .line 323
    goto/16 :goto_a

    .line 324
    .line 325
    :cond_1d
    :goto_17
    return v8

    .line 326
    :cond_1e
    if-eqz p2, :cond_1f

    .line 327
    .line 328
    return v8

    .line 329
    :cond_1f
    iget-boolean v0, p0, Landroidx/leanback/widget/p;->c:Z

    .line 330
    .line 331
    if-eqz v0, :cond_20

    .line 332
    .line 333
    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/p;->g(Z[I)I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    :goto_18
    move v7, v0

    .line 338
    goto :goto_19

    .line 339
    :cond_20
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/p;->i(Z[I)I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    goto :goto_18

    .line 344
    :goto_19
    iget v0, p0, Landroidx/leanback/widget/p;->e:I

    .line 345
    .line 346
    sub-int/2addr v0, v4

    .line 347
    goto/16 :goto_a
.end method
