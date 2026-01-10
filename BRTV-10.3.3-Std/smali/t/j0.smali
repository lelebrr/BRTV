.class public final Lt/j0;
.super Lt/m0;
.source "MyApplication"


# instance fields
.field public g:Landroid/util/SparseArray;

.field public h:Landroid/util/SparseArray;

.field public i:[F

.field public j:[F


# virtual methods
.method public final b(FJLandroid/view/View;Lt/u;)Z
    .locals 10

    .line 1
    iget-object p5, p0, Lt/m0;->a:Lr4/b;

    .line 2
    .line 3
    float-to-double v0, p1

    .line 4
    iget-object p1, p0, Lt/j0;->i:[F

    .line 5
    .line 6
    invoke-virtual {p5, v0, v1, p1}, Lr4/b;->s(D[F)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lt/j0;->i:[F

    .line 10
    .line 11
    array-length p5, p1

    .line 12
    add-int/lit8 p5, p5, -0x2

    .line 13
    .line 14
    aget p5, p1, p5

    .line 15
    .line 16
    array-length v0, p1

    .line 17
    const/4 v1, 0x1

    .line 18
    sub-int/2addr v0, v1

    .line 19
    aget p1, p1, v0

    .line 20
    .line 21
    iget-wide v2, p0, Lt/m0;->e:J

    .line 22
    .line 23
    sub-long v2, p2, v2

    .line 24
    .line 25
    iget v0, p0, Lt/m0;->f:F

    .line 26
    .line 27
    float-to-double v4, v0

    .line 28
    long-to-double v2, v2

    .line 29
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    mul-double v2, v2, v6

    .line 35
    .line 36
    float-to-double v6, p5

    .line 37
    mul-double v2, v2, v6

    .line 38
    .line 39
    add-double/2addr v2, v4

    .line 40
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 41
    .line 42
    rem-double/2addr v2, v4

    .line 43
    double-to-float v0, v2

    .line 44
    iput v0, p0, Lt/m0;->f:F

    .line 45
    .line 46
    iput-wide p2, p0, Lt/m0;->e:J

    .line 47
    .line 48
    const p2, 0x40c90fdb

    .line 49
    .line 50
    .line 51
    mul-float v0, v0, p2

    .line 52
    .line 53
    float-to-double p2, v0

    .line 54
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    .line 55
    .line 56
    .line 57
    move-result-wide p2

    .line 58
    double-to-float p2, p2

    .line 59
    const/4 p3, 0x0

    .line 60
    iput-boolean p3, p0, Lt/m0;->d:Z

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Lt/j0;->j:[F

    .line 64
    .line 65
    array-length v3, v2

    .line 66
    if-ge v0, v3, :cond_1

    .line 67
    .line 68
    iget-boolean v3, p0, Lt/m0;->d:Z

    .line 69
    .line 70
    iget-object v4, p0, Lt/j0;->i:[F

    .line 71
    .line 72
    aget v4, v4, v0

    .line 73
    .line 74
    float-to-double v5, v4

    .line 75
    const-wide/16 v7, 0x0

    .line 76
    .line 77
    cmpl-double v9, v5, v7

    .line 78
    .line 79
    if-eqz v9, :cond_0

    .line 80
    .line 81
    const/4 v5, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    const/4 v5, 0x0

    .line 84
    :goto_1
    or-int/2addr v3, v5

    .line 85
    iput-boolean v3, p0, Lt/m0;->d:Z

    .line 86
    .line 87
    mul-float v4, v4, p2

    .line 88
    .line 89
    add-float/2addr v4, p1

    .line 90
    aput v4, v2, v0

    .line 91
    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lt/j0;->g:Landroid/util/SparseArray;

    .line 96
    .line 97
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ly/a;

    .line 102
    .line 103
    iget-object p2, p0, Lt/j0;->j:[F

    .line 104
    .line 105
    invoke-virtual {p1, p4, p2}, Ly/a;->g(Landroid/view/View;[F)V

    .line 106
    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    cmpl-float p1, p5, p1

    .line 110
    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    iput-boolean v1, p0, Lt/m0;->d:Z

    .line 114
    .line 115
    :cond_2
    iget-boolean p1, p0, Lt/m0;->d:Z

    .line 116
    .line 117
    return p1
.end method

.method public final c(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lt/j0;->g:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    check-cast v4, Ly/a;

    .line 15
    .line 16
    invoke-virtual {v4}, Ly/a;->d()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    new-array v5, v2, [D

    .line 21
    .line 22
    add-int/lit8 v6, v4, 0x2

    .line 23
    .line 24
    new-array v7, v6, [F

    .line 25
    .line 26
    iput-object v7, v0, Lt/j0;->i:[F

    .line 27
    .line 28
    new-array v7, v4, [F

    .line 29
    .line 30
    iput-object v7, v0, Lt/j0;->j:[F

    .line 31
    .line 32
    const/4 v7, 0x2

    .line 33
    new-array v7, v7, [I

    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    aput v6, v7, v8

    .line 37
    .line 38
    aput v2, v7, v3

    .line 39
    .line 40
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, [[D

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    :goto_0
    if-ge v7, v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    check-cast v10, Ly/a;

    .line 60
    .line 61
    iget-object v11, v0, Lt/j0;->h:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    check-cast v11, [F

    .line 68
    .line 69
    int-to-double v12, v9

    .line 70
    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    mul-double v12, v12, v14

    .line 76
    .line 77
    aput-wide v12, v5, v7

    .line 78
    .line 79
    iget-object v9, v0, Lt/j0;->i:[F

    .line 80
    .line 81
    invoke-virtual {v10, v9}, Ly/a;->c([F)V

    .line 82
    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    :goto_1
    iget-object v10, v0, Lt/j0;->i:[F

    .line 86
    .line 87
    array-length v12, v10

    .line 88
    if-ge v9, v12, :cond_0

    .line 89
    .line 90
    aget-object v12, v6, v7

    .line 91
    .line 92
    aget v10, v10, v9

    .line 93
    .line 94
    float-to-double v13, v10

    .line 95
    aput-wide v13, v12, v9

    .line 96
    .line 97
    add-int/lit8 v9, v9, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    aget-object v9, v6, v7

    .line 101
    .line 102
    aget v10, v11, v3

    .line 103
    .line 104
    float-to-double v12, v10

    .line 105
    aput-wide v12, v9, v4

    .line 106
    .line 107
    add-int/lit8 v10, v4, 0x1

    .line 108
    .line 109
    aget v11, v11, v8

    .line 110
    .line 111
    float-to-double v11, v11

    .line 112
    aput-wide v11, v9, v10

    .line 113
    .line 114
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    move/from16 v7, p1

    .line 118
    .line 119
    invoke-static {v7, v5, v6}, Lr4/b;->k(I[D[[D)Lr4/b;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, v0, Lt/m0;->a:Lr4/b;

    .line 124
    .line 125
    return-void
.end method
