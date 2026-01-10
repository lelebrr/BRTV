.class public final Ls/f;
.super Lr4/b;
.source "MyApplication"


# instance fields
.field public c:[D

.field public d:[[D

.field public e:[[D


# direct methods
.method public static R(DDDDDD)D
    .locals 10

    .line 1
    mul-double v0, p2, p2

    .line 2
    .line 3
    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    .line 4
    .line 5
    mul-double v2, v2, v0

    .line 6
    .line 7
    mul-double v2, v2, p6

    .line 8
    .line 9
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    .line 10
    .line 11
    mul-double v6, p2, v4

    .line 12
    .line 13
    mul-double v8, v6, p6

    .line 14
    .line 15
    add-double/2addr v8, v2

    .line 16
    mul-double v4, v4, v0

    .line 17
    .line 18
    mul-double v4, v4, p4

    .line 19
    .line 20
    add-double/2addr v4, v8

    .line 21
    mul-double v6, v6, p4

    .line 22
    .line 23
    sub-double/2addr v4, v6

    .line 24
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 25
    .line 26
    mul-double v2, v2, p0

    .line 27
    .line 28
    mul-double v6, v2, p10

    .line 29
    .line 30
    mul-double v6, v6, v0

    .line 31
    .line 32
    add-double/2addr v6, v4

    .line 33
    mul-double v2, v2, p8

    .line 34
    .line 35
    mul-double v2, v2, v0

    .line 36
    .line 37
    add-double/2addr v2, v6

    .line 38
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 39
    .line 40
    mul-double v0, v0, p0

    .line 41
    .line 42
    mul-double v0, v0, p10

    .line 43
    .line 44
    mul-double v0, v0, p2

    .line 45
    .line 46
    sub-double/2addr v2, v0

    .line 47
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 48
    .line 49
    mul-double v0, v0, p0

    .line 50
    .line 51
    mul-double v0, v0, p8

    .line 52
    .line 53
    mul-double v0, v0, p2

    .line 54
    .line 55
    sub-double/2addr v2, v0

    .line 56
    mul-double v0, p0, p8

    .line 57
    .line 58
    add-double/2addr v0, v2

    .line 59
    return-wide v0
.end method

.method public static S(DDDDDD)D
    .locals 12

    .line 1
    mul-double v0, p2, p2

    .line 2
    .line 3
    mul-double v2, v0, p2

    .line 4
    .line 5
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    .line 6
    .line 7
    mul-double v4, v4, v2

    .line 8
    .line 9
    mul-double v4, v4, p6

    .line 10
    .line 11
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 12
    .line 13
    mul-double v6, v6, v0

    .line 14
    .line 15
    mul-double v8, v6, p6

    .line 16
    .line 17
    add-double/2addr v8, v4

    .line 18
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 19
    .line 20
    mul-double v10, v2, v4

    .line 21
    .line 22
    mul-double v10, v10, p4

    .line 23
    .line 24
    add-double/2addr v10, v8

    .line 25
    mul-double v6, v6, p4

    .line 26
    .line 27
    sub-double/2addr v10, v6

    .line 28
    add-double v10, v10, p4

    .line 29
    .line 30
    mul-double v6, p0, p10

    .line 31
    .line 32
    mul-double v8, v6, v2

    .line 33
    .line 34
    add-double/2addr v8, v10

    .line 35
    mul-double v10, p0, p8

    .line 36
    .line 37
    mul-double v2, v2, v10

    .line 38
    .line 39
    add-double/2addr v2, v8

    .line 40
    mul-double v6, v6, v0

    .line 41
    .line 42
    sub-double/2addr v2, v6

    .line 43
    mul-double v4, v4, p0

    .line 44
    .line 45
    mul-double v4, v4, p8

    .line 46
    .line 47
    mul-double v4, v4, v0

    .line 48
    .line 49
    sub-double/2addr v2, v4

    .line 50
    mul-double v10, v10, p2

    .line 51
    .line 52
    add-double/2addr v10, v2

    .line 53
    return-wide v10
.end method


# virtual methods
.method public final q(D)D
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls/f;->c:[D

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    aget-wide v4, v1, v3

    .line 8
    .line 9
    iget-object v6, v0, Ls/f;->d:[[D

    .line 10
    .line 11
    cmpg-double v7, p1, v4

    .line 12
    .line 13
    if-gtz v7, :cond_0

    .line 14
    .line 15
    aget-object v1, v6, v3

    .line 16
    .line 17
    aget-wide v2, v1, v3

    .line 18
    .line 19
    return-wide v2

    .line 20
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    aget-wide v4, v1, v2

    .line 23
    .line 24
    cmpl-double v7, p1, v4

    .line 25
    .line 26
    if-ltz v7, :cond_1

    .line 27
    .line 28
    aget-object v1, v6, v2

    .line 29
    .line 30
    aget-wide v2, v1, v3

    .line 31
    .line 32
    return-wide v2

    .line 33
    :cond_1
    const/4 v4, 0x0

    .line 34
    :goto_0
    if-ge v4, v2, :cond_4

    .line 35
    .line 36
    aget-wide v7, v1, v4

    .line 37
    .line 38
    cmpl-double v5, p1, v7

    .line 39
    .line 40
    if-nez v5, :cond_2

    .line 41
    .line 42
    aget-object v1, v6, v4

    .line 43
    .line 44
    aget-wide v2, v1, v3

    .line 45
    .line 46
    return-wide v2

    .line 47
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .line 48
    .line 49
    aget-wide v9, v1, v5

    .line 50
    .line 51
    cmpg-double v11, p1, v9

    .line 52
    .line 53
    if-gez v11, :cond_3

    .line 54
    .line 55
    sub-double v12, v9, v7

    .line 56
    .line 57
    sub-double v1, p1, v7

    .line 58
    .line 59
    div-double v14, v1, v12

    .line 60
    .line 61
    aget-object v1, v6, v4

    .line 62
    .line 63
    aget-wide v16, v1, v3

    .line 64
    .line 65
    aget-object v1, v6, v5

    .line 66
    .line 67
    aget-wide v18, v1, v3

    .line 68
    .line 69
    iget-object v1, v0, Ls/f;->e:[[D

    .line 70
    .line 71
    aget-object v2, v1, v4

    .line 72
    .line 73
    aget-wide v20, v2, v3

    .line 74
    .line 75
    aget-object v1, v1, v5

    .line 76
    .line 77
    aget-wide v22, v1, v3

    .line 78
    .line 79
    invoke-static/range {v12 .. v23}, Ls/f;->S(DDDDDD)D

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    return-wide v1

    .line 84
    :cond_3
    move v4, v5

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const-wide/16 v1, 0x0

    .line 87
    .line 88
    return-wide v1
.end method

.method public final r(D[D)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls/f;->c:[D

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    iget-object v3, v0, Ls/f;->d:[[D

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aget-object v5, v3, v4

    .line 10
    .line 11
    array-length v5, v5

    .line 12
    aget-wide v6, v1, v4

    .line 13
    .line 14
    cmpg-double v8, p1, v6

    .line 15
    .line 16
    if-gtz v8, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v5, :cond_0

    .line 20
    .line 21
    aget-object v2, v3, v4

    .line 22
    .line 23
    aget-wide v6, v2, v1

    .line 24
    .line 25
    aput-wide v6, p3, v1

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 32
    .line 33
    aget-wide v6, v1, v2

    .line 34
    .line 35
    cmpl-double v8, p1, v6

    .line 36
    .line 37
    if-ltz v8, :cond_3

    .line 38
    .line 39
    :goto_1
    if-ge v4, v5, :cond_2

    .line 40
    .line 41
    aget-object v1, v3, v2

    .line 42
    .line 43
    aget-wide v6, v1, v4

    .line 44
    .line 45
    aput-wide v6, p3, v4

    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    return-void

    .line 51
    :cond_3
    const/4 v6, 0x0

    .line 52
    :goto_2
    if-ge v6, v2, :cond_7

    .line 53
    .line 54
    aget-wide v7, v1, v6

    .line 55
    .line 56
    cmpl-double v9, p1, v7

    .line 57
    .line 58
    if-nez v9, :cond_4

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    :goto_3
    if-ge v7, v5, :cond_4

    .line 62
    .line 63
    aget-object v8, v3, v6

    .line 64
    .line 65
    aget-wide v9, v8, v7

    .line 66
    .line 67
    aput-wide v9, p3, v7

    .line 68
    .line 69
    add-int/lit8 v7, v7, 0x1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    add-int/lit8 v7, v6, 0x1

    .line 73
    .line 74
    aget-wide v8, v1, v7

    .line 75
    .line 76
    cmpg-double v10, p1, v8

    .line 77
    .line 78
    if-gez v10, :cond_6

    .line 79
    .line 80
    aget-wide v10, v1, v6

    .line 81
    .line 82
    sub-double/2addr v8, v10

    .line 83
    sub-double v1, p1, v10

    .line 84
    .line 85
    div-double/2addr v1, v8

    .line 86
    :goto_4
    if-ge v4, v5, :cond_5

    .line 87
    .line 88
    aget-object v10, v3, v6

    .line 89
    .line 90
    aget-wide v16, v10, v4

    .line 91
    .line 92
    aget-object v10, v3, v7

    .line 93
    .line 94
    aget-wide v18, v10, v4

    .line 95
    .line 96
    iget-object v10, v0, Ls/f;->e:[[D

    .line 97
    .line 98
    aget-object v11, v10, v6

    .line 99
    .line 100
    aget-wide v20, v11, v4

    .line 101
    .line 102
    aget-object v10, v10, v7

    .line 103
    .line 104
    aget-wide v22, v10, v4

    .line 105
    .line 106
    move-wide v12, v8

    .line 107
    move-wide v14, v1

    .line 108
    invoke-static/range {v12 .. v23}, Ls/f;->S(DDDDDD)D

    .line 109
    .line 110
    .line 111
    move-result-wide v10

    .line 112
    aput-wide v10, p3, v4

    .line 113
    .line 114
    add-int/lit8 v4, v4, 0x1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_5
    return-void

    .line 118
    :cond_6
    move v6, v7

    .line 119
    goto :goto_2

    .line 120
    :cond_7
    return-void
.end method

.method public final s(D[F)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls/f;->c:[D

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    iget-object v3, v0, Ls/f;->d:[[D

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aget-object v5, v3, v4

    .line 10
    .line 11
    array-length v5, v5

    .line 12
    aget-wide v6, v1, v4

    .line 13
    .line 14
    cmpg-double v8, p1, v6

    .line 15
    .line 16
    if-gtz v8, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v5, :cond_0

    .line 20
    .line 21
    aget-object v2, v3, v4

    .line 22
    .line 23
    aget-wide v6, v2, v1

    .line 24
    .line 25
    double-to-float v2, v6

    .line 26
    aput v2, p3, v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    aget-wide v6, v1, v2

    .line 35
    .line 36
    cmpl-double v8, p1, v6

    .line 37
    .line 38
    if-ltz v8, :cond_3

    .line 39
    .line 40
    :goto_1
    if-ge v4, v5, :cond_2

    .line 41
    .line 42
    aget-object v1, v3, v2

    .line 43
    .line 44
    aget-wide v6, v1, v4

    .line 45
    .line 46
    double-to-float v1, v6

    .line 47
    aput v1, p3, v4

    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    return-void

    .line 53
    :cond_3
    const/4 v6, 0x0

    .line 54
    :goto_2
    if-ge v6, v2, :cond_7

    .line 55
    .line 56
    aget-wide v7, v1, v6

    .line 57
    .line 58
    cmpl-double v9, p1, v7

    .line 59
    .line 60
    if-nez v9, :cond_4

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    :goto_3
    if-ge v7, v5, :cond_4

    .line 64
    .line 65
    aget-object v8, v3, v6

    .line 66
    .line 67
    aget-wide v9, v8, v7

    .line 68
    .line 69
    double-to-float v8, v9

    .line 70
    aput v8, p3, v7

    .line 71
    .line 72
    add-int/lit8 v7, v7, 0x1

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    add-int/lit8 v7, v6, 0x1

    .line 76
    .line 77
    aget-wide v8, v1, v7

    .line 78
    .line 79
    cmpg-double v10, p1, v8

    .line 80
    .line 81
    if-gez v10, :cond_6

    .line 82
    .line 83
    aget-wide v10, v1, v6

    .line 84
    .line 85
    sub-double/2addr v8, v10

    .line 86
    sub-double v1, p1, v10

    .line 87
    .line 88
    div-double/2addr v1, v8

    .line 89
    :goto_4
    if-ge v4, v5, :cond_5

    .line 90
    .line 91
    aget-object v10, v3, v6

    .line 92
    .line 93
    aget-wide v16, v10, v4

    .line 94
    .line 95
    aget-object v10, v3, v7

    .line 96
    .line 97
    aget-wide v18, v10, v4

    .line 98
    .line 99
    iget-object v10, v0, Ls/f;->e:[[D

    .line 100
    .line 101
    aget-object v11, v10, v6

    .line 102
    .line 103
    aget-wide v20, v11, v4

    .line 104
    .line 105
    aget-object v10, v10, v7

    .line 106
    .line 107
    aget-wide v22, v10, v4

    .line 108
    .line 109
    move-wide v12, v8

    .line 110
    move-wide v14, v1

    .line 111
    invoke-static/range {v12 .. v23}, Ls/f;->S(DDDDDD)D

    .line 112
    .line 113
    .line 114
    move-result-wide v10

    .line 115
    double-to-float v10, v10

    .line 116
    aput v10, p3, v4

    .line 117
    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_5
    return-void

    .line 122
    :cond_6
    move v6, v7

    .line 123
    goto :goto_2

    .line 124
    :cond_7
    return-void
.end method

.method public final u(D)D
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls/f;->c:[D

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    aget-wide v4, v1, v3

    .line 8
    .line 9
    cmpg-double v6, p1, v4

    .line 10
    .line 11
    if-gez v6, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    add-int/lit8 v4, v2, -0x1

    .line 15
    .line 16
    aget-wide v4, v1, v4

    .line 17
    .line 18
    cmpl-double v6, p1, v4

    .line 19
    .line 20
    if-ltz v6, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-wide/from16 v4, p1

    .line 24
    .line 25
    :goto_0
    const/4 v6, 0x0

    .line 26
    :goto_1
    add-int/lit8 v7, v2, -0x1

    .line 27
    .line 28
    if-ge v6, v7, :cond_3

    .line 29
    .line 30
    add-int/lit8 v7, v6, 0x1

    .line 31
    .line 32
    aget-wide v8, v1, v7

    .line 33
    .line 34
    cmpg-double v10, v4, v8

    .line 35
    .line 36
    if-gtz v10, :cond_2

    .line 37
    .line 38
    aget-wide v10, v1, v6

    .line 39
    .line 40
    sub-double/2addr v8, v10

    .line 41
    sub-double/2addr v4, v10

    .line 42
    div-double v14, v4, v8

    .line 43
    .line 44
    iget-object v1, v0, Ls/f;->d:[[D

    .line 45
    .line 46
    aget-object v2, v1, v6

    .line 47
    .line 48
    aget-wide v16, v2, v3

    .line 49
    .line 50
    aget-object v1, v1, v7

    .line 51
    .line 52
    aget-wide v18, v1, v3

    .line 53
    .line 54
    iget-object v1, v0, Ls/f;->e:[[D

    .line 55
    .line 56
    aget-object v2, v1, v6

    .line 57
    .line 58
    aget-wide v20, v2, v3

    .line 59
    .line 60
    aget-object v1, v1, v7

    .line 61
    .line 62
    aget-wide v22, v1, v3

    .line 63
    .line 64
    move-wide v12, v8

    .line 65
    invoke-static/range {v12 .. v23}, Ls/f;->R(DDDDDD)D

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    div-double/2addr v1, v8

    .line 70
    return-wide v1

    .line 71
    :cond_2
    move v6, v7

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const-wide/16 v1, 0x0

    .line 74
    .line 75
    return-wide v1
.end method

.method public final v(D[D)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls/f;->c:[D

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    iget-object v3, v0, Ls/f;->d:[[D

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aget-object v5, v3, v4

    .line 10
    .line 11
    array-length v5, v5

    .line 12
    aget-wide v6, v1, v4

    .line 13
    .line 14
    cmpg-double v8, p1, v6

    .line 15
    .line 16
    if-gtz v8, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v6, v2, -0x1

    .line 20
    .line 21
    aget-wide v6, v1, v6

    .line 22
    .line 23
    cmpl-double v8, p1, v6

    .line 24
    .line 25
    if-ltz v8, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-wide/from16 v6, p1

    .line 29
    .line 30
    :goto_0
    const/4 v8, 0x0

    .line 31
    :goto_1
    add-int/lit8 v9, v2, -0x1

    .line 32
    .line 33
    if-ge v8, v9, :cond_3

    .line 34
    .line 35
    add-int/lit8 v9, v8, 0x1

    .line 36
    .line 37
    aget-wide v10, v1, v9

    .line 38
    .line 39
    cmpg-double v12, v6, v10

    .line 40
    .line 41
    if-gtz v12, :cond_2

    .line 42
    .line 43
    aget-wide v12, v1, v8

    .line 44
    .line 45
    sub-double/2addr v10, v12

    .line 46
    sub-double/2addr v6, v12

    .line 47
    div-double/2addr v6, v10

    .line 48
    :goto_2
    if-ge v4, v5, :cond_3

    .line 49
    .line 50
    aget-object v1, v3, v8

    .line 51
    .line 52
    aget-wide v18, v1, v4

    .line 53
    .line 54
    aget-object v1, v3, v9

    .line 55
    .line 56
    aget-wide v20, v1, v4

    .line 57
    .line 58
    iget-object v1, v0, Ls/f;->e:[[D

    .line 59
    .line 60
    aget-object v2, v1, v8

    .line 61
    .line 62
    aget-wide v22, v2, v4

    .line 63
    .line 64
    aget-object v1, v1, v9

    .line 65
    .line 66
    aget-wide v24, v1, v4

    .line 67
    .line 68
    move-wide v14, v10

    .line 69
    move-wide/from16 v16, v6

    .line 70
    .line 71
    invoke-static/range {v14 .. v25}, Ls/f;->R(DDDDDD)D

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    div-double/2addr v1, v10

    .line 76
    aput-wide v1, p3, v4

    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    move v8, v9

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    return-void
.end method

.method public final w()[D
    .locals 1

    .line 1
    iget-object v0, p0, Ls/f;->c:[D

    .line 2
    .line 3
    return-object v0
.end method
