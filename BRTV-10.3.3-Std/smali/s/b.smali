.class public final Ls/b;
.super Lr4/b;
.source "MyApplication"


# instance fields
.field public final synthetic c:I

.field public d:[D

.field public e:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ls/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([I[D[[D)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    iput v2, v0, Ls/b;->c:I

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, v0, Ls/b;->d:[D

    .line 4
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [Ls/a;

    iput-object v2, v0, Ls/b;->e:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 5
    :goto_0
    iget-object v7, v0, Ls/b;->e:[Ljava/lang/Object;

    check-cast v7, [Ls/a;

    array-length v8, v7

    if-ge v4, v8, :cond_13

    .line 6
    aget v8, p1, v4

    const/4 v9, 0x3

    if-eqz v8, :cond_4

    if-eq v8, v3, :cond_3

    const/4 v10, 0x2

    if-eq v8, v10, :cond_2

    if-eq v8, v9, :cond_0

    goto :goto_2

    :cond_0
    if-ne v5, v3, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    move v6, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x2

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x3

    .line 7
    :goto_2
    new-instance v8, Ls/a;

    aget-wide v10, v1, v4

    add-int/lit8 v12, v4, 0x1

    aget-wide v13, v1, v12

    aget-object v15, p3, v4

    move-wide/from16 v17, v10

    aget-wide v9, v15, v2

    aget-wide v0, v15, v3

    aget-object v11, p3, v12

    move v15, v4

    move/from16 v19, v5

    aget-wide v4, v11, v2

    move-wide/from16 v20, v0

    aget-wide v0, v11, v3

    .line 8
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v2, v8, Ls/a;->r:Z

    if-ne v6, v3, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    .line 10
    :goto_3
    iput-boolean v11, v8, Ls/a;->q:Z

    move-wide/from16 v2, v17

    .line 11
    iput-wide v2, v8, Ls/a;->c:D

    .line 12
    iput-wide v13, v8, Ls/a;->d:D

    sub-double/2addr v13, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v13

    .line 13
    iput-wide v2, v8, Ls/a;->i:D

    move/from16 v17, v12

    const/4 v12, 0x3

    if-ne v12, v6, :cond_6

    const/4 v12, 0x1

    .line 14
    iput-boolean v12, v8, Ls/a;->r:Z

    :cond_6
    move/from16 v16, v6

    move-object v12, v7

    sub-double v6, v4, v9

    move-wide/from16 v22, v13

    move-object v14, v12

    sub-double v12, v0, v20

    move-object/from16 v18, v14

    .line 15
    iget-boolean v14, v8, Ls/a;->r:Z

    if-nez v14, :cond_7

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v14, v24, v26

    if-ltz v14, :cond_7

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    cmpg-double v14, v24, v26

    if-gez v14, :cond_8

    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_c

    :cond_8
    const/16 v2, 0x65

    .line 16
    new-array v2, v2, [D

    iput-object v2, v8, Ls/a;->a:[D

    if-eqz v11, :cond_9

    const/4 v3, -0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x1

    :goto_4
    int-to-double v2, v3

    mul-double v2, v2, v6

    .line 17
    iput-wide v2, v8, Ls/a;->j:D

    if-eqz v11, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, -0x1

    :goto_5
    int-to-double v2, v2

    mul-double v12, v12, v2

    .line 18
    iput-wide v12, v8, Ls/a;->k:D

    if-eqz v11, :cond_b

    move-wide v9, v4

    .line 19
    :cond_b
    iput-wide v9, v8, Ls/a;->l:D

    if-eqz v11, :cond_c

    move-wide/from16 v2, v20

    goto :goto_6

    :cond_c
    move-wide v2, v0

    .line 20
    :goto_6
    iput-wide v2, v8, Ls/a;->m:D

    sub-double v0, v20, v0

    const/4 v4, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v20, 0x0

    .line 21
    :goto_7
    sget-object v5, Ls/a;->s:[D

    const/16 v13, 0x5a

    const/16 v14, 0x5b

    if-ge v4, v14, :cond_e

    const-wide v23, 0x4056800000000000L    # 90.0

    int-to-double v2, v4

    mul-double v2, v2, v23

    int-to-double v13, v13

    div-double/2addr v2, v13

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v13, v13, v6

    mul-double v2, v2, v0

    if-lez v4, :cond_d

    sub-double v11, v13, v11

    move-wide/from16 v23, v0

    sub-double v0, v2, v20

    .line 25
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    add-double/2addr v9, v0

    .line 26
    aput-wide v9, v5, v4

    goto :goto_8

    :cond_d
    move-wide/from16 v23, v0

    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v20, v2

    move-wide v11, v13

    move-wide/from16 v0, v23

    goto :goto_7

    .line 27
    :cond_e
    iput-wide v9, v8, Ls/a;->b:D

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v14, :cond_f

    .line 28
    aget-wide v1, v5, v0

    div-double/2addr v1, v9

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    .line 29
    :goto_a
    iget-object v1, v8, Ls/a;->a:[D

    array-length v2, v1

    if-ge v0, v2, :cond_12

    int-to-double v2, v0

    .line 30
    array-length v4, v1

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    int-to-double v6, v4

    div-double/2addr v2, v6

    .line 31
    invoke-static {v5, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v4

    if-ltz v4, :cond_10

    .line 32
    div-int/lit8 v4, v4, 0x5a

    int-to-double v2, v4

    aput-wide v2, v1, v0

    const/4 v6, -0x1

    const-wide/16 v9, 0x0

    goto :goto_b

    :cond_10
    const/4 v6, -0x1

    if-ne v4, v6, :cond_11

    const-wide/16 v9, 0x0

    .line 33
    aput-wide v9, v1, v0

    goto :goto_b

    :cond_11
    const-wide/16 v9, 0x0

    neg-int v4, v4

    add-int/lit8 v7, v4, -0x2

    const/4 v11, 0x1

    sub-int/2addr v4, v11

    int-to-double v11, v7

    .line 34
    aget-wide v20, v5, v7

    sub-double v2, v2, v20

    aget-wide v22, v5, v4

    sub-double v22, v22, v20

    div-double v2, v2, v22

    add-double/2addr v2, v11

    int-to-double v11, v13

    div-double/2addr v2, v11

    .line 35
    aput-wide v2, v1, v0

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 36
    :cond_12
    iget-wide v0, v8, Ls/a;->b:D

    iget-wide v2, v8, Ls/a;->i:D

    mul-double v0, v0, v2

    iput-wide v0, v8, Ls/a;->n:D

    const/4 v11, 0x1

    goto :goto_d

    .line 37
    :goto_c
    iput-boolean v11, v8, Ls/a;->r:Z

    .line 38
    iput-wide v9, v8, Ls/a;->e:D

    .line 39
    iput-wide v4, v8, Ls/a;->f:D

    move-wide/from16 v4, v20

    .line 40
    iput-wide v4, v8, Ls/a;->g:D

    .line 41
    iput-wide v0, v8, Ls/a;->h:D

    .line 42
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iput-wide v0, v8, Ls/a;->b:D

    mul-double v0, v0, v2

    .line 43
    iput-wide v0, v8, Ls/a;->n:D

    div-double v6, v6, v22

    .line 44
    iput-wide v6, v8, Ls/a;->l:D

    div-double v12, v12, v22

    .line 45
    iput-wide v12, v8, Ls/a;->m:D

    .line 46
    :goto_d
    aput-object v8, v18, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v6, v16

    move/from16 v4, v17

    move/from16 v5, v19

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method


# virtual methods
.method public final q(D)D
    .locals 11

    .line 1
    iget v0, p0, Ls/b;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls/b;->d:[D

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    aget-wide v3, v0, v2

    .line 11
    .line 12
    iget-object v5, p0, Ls/b;->e:[Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v5, [[D

    .line 15
    .line 16
    cmpg-double v6, p1, v3

    .line 17
    .line 18
    if-gtz v6, :cond_0

    .line 19
    .line 20
    aget-object p1, v5, v2

    .line 21
    .line 22
    aget-wide v0, p1, v2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    aget-wide v3, v0, v1

    .line 28
    .line 29
    cmpl-double v6, p1, v3

    .line 30
    .line 31
    if-ltz v6, :cond_1

    .line 32
    .line 33
    aget-object p1, v5, v1

    .line 34
    .line 35
    aget-wide v0, p1, v2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_0
    if-ge v3, v1, :cond_4

    .line 40
    .line 41
    aget-wide v6, v0, v3

    .line 42
    .line 43
    cmpl-double v4, p1, v6

    .line 44
    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    aget-object p1, v5, v3

    .line 48
    .line 49
    aget-wide v0, p1, v2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 53
    .line 54
    aget-wide v8, v0, v4

    .line 55
    .line 56
    cmpg-double v10, p1, v8

    .line 57
    .line 58
    if-gez v10, :cond_3

    .line 59
    .line 60
    sub-double/2addr v8, v6

    .line 61
    sub-double/2addr p1, v6

    .line 62
    div-double/2addr p1, v8

    .line 63
    aget-object v0, v5, v3

    .line 64
    .line 65
    aget-wide v6, v0, v2

    .line 66
    .line 67
    aget-object v0, v5, v4

    .line 68
    .line 69
    aget-wide v1, v0, v2

    .line 70
    .line 71
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 72
    .line 73
    sub-double/2addr v3, p1

    .line 74
    mul-double v3, v3, v6

    .line 75
    .line 76
    mul-double v1, v1, p1

    .line 77
    .line 78
    add-double v0, v1, v3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move v3, v4

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const-wide/16 v0, 0x0

    .line 84
    .line 85
    :goto_1
    return-wide v0

    .line 86
    :pswitch_0
    iget-object v0, p0, Ls/b;->e:[Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, [Ls/a;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    aget-object v2, v0, v1

    .line 92
    .line 93
    iget-wide v2, v2, Ls/a;->c:D

    .line 94
    .line 95
    cmpg-double v4, p1, v2

    .line 96
    .line 97
    if-gez v4, :cond_5

    .line 98
    .line 99
    move-wide p1, v2

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    array-length v2, v0

    .line 102
    add-int/lit8 v2, v2, -0x1

    .line 103
    .line 104
    aget-object v2, v0, v2

    .line 105
    .line 106
    iget-wide v2, v2, Ls/a;->d:D

    .line 107
    .line 108
    cmpl-double v4, p1, v2

    .line 109
    .line 110
    if-lez v4, :cond_6

    .line 111
    .line 112
    array-length p1, v0

    .line 113
    add-int/lit8 p1, p1, -0x1

    .line 114
    .line 115
    aget-object p1, v0, p1

    .line 116
    .line 117
    iget-wide p1, p1, Ls/a;->d:D

    .line 118
    .line 119
    :cond_6
    :goto_2
    array-length v2, v0

    .line 120
    if-ge v1, v2, :cond_9

    .line 121
    .line 122
    aget-object v2, v0, v1

    .line 123
    .line 124
    iget-wide v3, v2, Ls/a;->d:D

    .line 125
    .line 126
    cmpg-double v5, p1, v3

    .line 127
    .line 128
    if-gtz v5, :cond_8

    .line 129
    .line 130
    iget-boolean v3, v2, Ls/a;->r:Z

    .line 131
    .line 132
    if-eqz v3, :cond_7

    .line 133
    .line 134
    invoke-virtual {v2, p1, p2}, Ls/a;->b(D)D

    .line 135
    .line 136
    .line 137
    move-result-wide p1

    .line 138
    goto :goto_3

    .line 139
    :cond_7
    invoke-virtual {v2, p1, p2}, Ls/a;->d(D)V

    .line 140
    .line 141
    .line 142
    aget-object p1, v0, v1

    .line 143
    .line 144
    iget-wide v0, p1, Ls/a;->j:D

    .line 145
    .line 146
    iget-wide v2, p1, Ls/a;->o:D

    .line 147
    .line 148
    mul-double v0, v0, v2

    .line 149
    .line 150
    iget-wide p1, p1, Ls/a;->l:D

    .line 151
    .line 152
    add-double/2addr p1, v0

    .line 153
    goto :goto_3

    .line 154
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_9
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 158
    .line 159
    :goto_3
    return-wide p1

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final r(D[D)V
    .locals 11

    .line 1
    iget v0, p0, Ls/b;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls/b;->d:[D

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    iget-object v2, p0, Ls/b;->e:[Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, [[D

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aget-object v4, v2, v3

    .line 15
    .line 16
    array-length v4, v4

    .line 17
    aget-wide v5, v0, v3

    .line 18
    .line 19
    cmpg-double v7, p1, v5

    .line 20
    .line 21
    if-gtz v7, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-ge p1, v4, :cond_4

    .line 25
    .line 26
    aget-object p2, v2, v3

    .line 27
    .line 28
    aget-wide v0, p2, p1

    .line 29
    .line 30
    aput-wide v0, p3, p1

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    aget-wide v5, v0, v1

    .line 38
    .line 39
    cmpl-double v7, p1, v5

    .line 40
    .line 41
    if-ltz v7, :cond_1

    .line 42
    .line 43
    :goto_1
    if-ge v3, v4, :cond_4

    .line 44
    .line 45
    aget-object p1, v2, v1

    .line 46
    .line 47
    aget-wide v5, p1, v3

    .line 48
    .line 49
    aput-wide v5, p3, v3

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v5, 0x0

    .line 55
    :goto_2
    if-ge v5, v1, :cond_4

    .line 56
    .line 57
    aget-wide v6, v0, v5

    .line 58
    .line 59
    cmpl-double v8, p1, v6

    .line 60
    .line 61
    if-nez v8, :cond_2

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    :goto_3
    if-ge v6, v4, :cond_2

    .line 65
    .line 66
    aget-object v7, v2, v5

    .line 67
    .line 68
    aget-wide v8, v7, v6

    .line 69
    .line 70
    aput-wide v8, p3, v6

    .line 71
    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .line 76
    .line 77
    aget-wide v7, v0, v6

    .line 78
    .line 79
    cmpg-double v9, p1, v7

    .line 80
    .line 81
    if-gez v9, :cond_3

    .line 82
    .line 83
    aget-wide v9, v0, v5

    .line 84
    .line 85
    sub-double/2addr v7, v9

    .line 86
    sub-double/2addr p1, v9

    .line 87
    div-double/2addr p1, v7

    .line 88
    :goto_4
    if-ge v3, v4, :cond_4

    .line 89
    .line 90
    aget-object v0, v2, v5

    .line 91
    .line 92
    aget-wide v7, v0, v3

    .line 93
    .line 94
    aget-object v0, v2, v6

    .line 95
    .line 96
    aget-wide v9, v0, v3

    .line 97
    .line 98
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 99
    .line 100
    sub-double/2addr v0, p1

    .line 101
    mul-double v0, v0, v7

    .line 102
    .line 103
    mul-double v9, v9, p1

    .line 104
    .line 105
    add-double/2addr v9, v0

    .line 106
    aput-wide v9, p3, v3

    .line 107
    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_3
    move v5, v6

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Ls/b;->e:[Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, [Ls/a;

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    aget-object v2, v0, v1

    .line 120
    .line 121
    iget-wide v2, v2, Ls/a;->c:D

    .line 122
    .line 123
    cmpg-double v4, p1, v2

    .line 124
    .line 125
    if-gez v4, :cond_5

    .line 126
    .line 127
    move-wide p1, v2

    .line 128
    :cond_5
    array-length v2, v0

    .line 129
    const/4 v3, 0x1

    .line 130
    sub-int/2addr v2, v3

    .line 131
    aget-object v2, v0, v2

    .line 132
    .line 133
    iget-wide v4, v2, Ls/a;->d:D

    .line 134
    .line 135
    cmpl-double v2, p1, v4

    .line 136
    .line 137
    if-lez v2, :cond_6

    .line 138
    .line 139
    array-length p1, v0

    .line 140
    sub-int/2addr p1, v3

    .line 141
    aget-object p1, v0, p1

    .line 142
    .line 143
    iget-wide p1, p1, Ls/a;->d:D

    .line 144
    .line 145
    :cond_6
    const/4 v2, 0x0

    .line 146
    :goto_5
    array-length v4, v0

    .line 147
    if-ge v2, v4, :cond_9

    .line 148
    .line 149
    aget-object v4, v0, v2

    .line 150
    .line 151
    iget-wide v5, v4, Ls/a;->d:D

    .line 152
    .line 153
    cmpg-double v7, p1, v5

    .line 154
    .line 155
    if-gtz v7, :cond_8

    .line 156
    .line 157
    iget-boolean v5, v4, Ls/a;->r:Z

    .line 158
    .line 159
    if-eqz v5, :cond_7

    .line 160
    .line 161
    invoke-virtual {v4, p1, p2}, Ls/a;->b(D)D

    .line 162
    .line 163
    .line 164
    move-result-wide v4

    .line 165
    aput-wide v4, p3, v1

    .line 166
    .line 167
    aget-object v0, v0, v2

    .line 168
    .line 169
    invoke-virtual {v0, p1, p2}, Ls/a;->c(D)D

    .line 170
    .line 171
    .line 172
    move-result-wide p1

    .line 173
    aput-wide p1, p3, v3

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_7
    invoke-virtual {v4, p1, p2}, Ls/a;->d(D)V

    .line 177
    .line 178
    .line 179
    aget-object p1, v0, v2

    .line 180
    .line 181
    iget-wide v4, p1, Ls/a;->j:D

    .line 182
    .line 183
    iget-wide v6, p1, Ls/a;->o:D

    .line 184
    .line 185
    mul-double v4, v4, v6

    .line 186
    .line 187
    iget-wide v6, p1, Ls/a;->l:D

    .line 188
    .line 189
    add-double/2addr v4, v6

    .line 190
    aput-wide v4, p3, v1

    .line 191
    .line 192
    iget-wide v0, p1, Ls/a;->k:D

    .line 193
    .line 194
    iget-wide v4, p1, Ls/a;->p:D

    .line 195
    .line 196
    mul-double v0, v0, v4

    .line 197
    .line 198
    iget-wide p1, p1, Ls/a;->m:D

    .line 199
    .line 200
    add-double/2addr v0, p1

    .line 201
    aput-wide v0, p3, v3

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_9
    :goto_6
    return-void

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final s(D[F)V
    .locals 11

    .line 1
    iget v0, p0, Ls/b;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls/b;->d:[D

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    iget-object v2, p0, Ls/b;->e:[Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, [[D

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aget-object v4, v2, v3

    .line 15
    .line 16
    array-length v4, v4

    .line 17
    aget-wide v5, v0, v3

    .line 18
    .line 19
    cmpg-double v7, p1, v5

    .line 20
    .line 21
    if-gtz v7, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-ge p1, v4, :cond_4

    .line 25
    .line 26
    aget-object p2, v2, v3

    .line 27
    .line 28
    aget-wide v0, p2, p1

    .line 29
    .line 30
    double-to-float p2, v0

    .line 31
    aput p2, p3, p1

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    aget-wide v5, v0, v1

    .line 39
    .line 40
    cmpl-double v7, p1, v5

    .line 41
    .line 42
    if-ltz v7, :cond_1

    .line 43
    .line 44
    :goto_1
    if-ge v3, v4, :cond_4

    .line 45
    .line 46
    aget-object p1, v2, v1

    .line 47
    .line 48
    aget-wide v5, p1, v3

    .line 49
    .line 50
    double-to-float p1, v5

    .line 51
    aput p1, p3, v3

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v5, 0x0

    .line 57
    :goto_2
    if-ge v5, v1, :cond_4

    .line 58
    .line 59
    aget-wide v6, v0, v5

    .line 60
    .line 61
    cmpl-double v8, p1, v6

    .line 62
    .line 63
    if-nez v8, :cond_2

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    :goto_3
    if-ge v6, v4, :cond_2

    .line 67
    .line 68
    aget-object v7, v2, v5

    .line 69
    .line 70
    aget-wide v8, v7, v6

    .line 71
    .line 72
    double-to-float v7, v8

    .line 73
    aput v7, p3, v6

    .line 74
    .line 75
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .line 79
    .line 80
    aget-wide v7, v0, v6

    .line 81
    .line 82
    cmpg-double v9, p1, v7

    .line 83
    .line 84
    if-gez v9, :cond_3

    .line 85
    .line 86
    aget-wide v9, v0, v5

    .line 87
    .line 88
    sub-double/2addr v7, v9

    .line 89
    sub-double/2addr p1, v9

    .line 90
    div-double/2addr p1, v7

    .line 91
    :goto_4
    if-ge v3, v4, :cond_4

    .line 92
    .line 93
    aget-object v0, v2, v5

    .line 94
    .line 95
    aget-wide v7, v0, v3

    .line 96
    .line 97
    aget-object v0, v2, v6

    .line 98
    .line 99
    aget-wide v9, v0, v3

    .line 100
    .line 101
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 102
    .line 103
    sub-double/2addr v0, p1

    .line 104
    mul-double v0, v0, v7

    .line 105
    .line 106
    mul-double v9, v9, p1

    .line 107
    .line 108
    add-double/2addr v9, v0

    .line 109
    double-to-float v0, v9

    .line 110
    aput v0, p3, v3

    .line 111
    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_3
    move v5, v6

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Ls/b;->e:[Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, [Ls/a;

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    aget-object v2, v0, v1

    .line 124
    .line 125
    iget-wide v2, v2, Ls/a;->c:D

    .line 126
    .line 127
    const/4 v4, 0x1

    .line 128
    cmpg-double v5, p1, v2

    .line 129
    .line 130
    if-gez v5, :cond_5

    .line 131
    .line 132
    move-wide p1, v2

    .line 133
    goto :goto_5

    .line 134
    :cond_5
    array-length v2, v0

    .line 135
    sub-int/2addr v2, v4

    .line 136
    aget-object v2, v0, v2

    .line 137
    .line 138
    iget-wide v2, v2, Ls/a;->d:D

    .line 139
    .line 140
    cmpl-double v5, p1, v2

    .line 141
    .line 142
    if-lez v5, :cond_6

    .line 143
    .line 144
    array-length p1, v0

    .line 145
    sub-int/2addr p1, v4

    .line 146
    aget-object p1, v0, p1

    .line 147
    .line 148
    iget-wide p1, p1, Ls/a;->d:D

    .line 149
    .line 150
    :cond_6
    :goto_5
    const/4 v2, 0x0

    .line 151
    :goto_6
    array-length v3, v0

    .line 152
    if-ge v2, v3, :cond_9

    .line 153
    .line 154
    aget-object v3, v0, v2

    .line 155
    .line 156
    iget-wide v5, v3, Ls/a;->d:D

    .line 157
    .line 158
    cmpg-double v7, p1, v5

    .line 159
    .line 160
    if-gtz v7, :cond_8

    .line 161
    .line 162
    iget-boolean v5, v3, Ls/a;->r:Z

    .line 163
    .line 164
    if-eqz v5, :cond_7

    .line 165
    .line 166
    invoke-virtual {v3, p1, p2}, Ls/a;->b(D)D

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    double-to-float v3, v5

    .line 171
    aput v3, p3, v1

    .line 172
    .line 173
    aget-object v0, v0, v2

    .line 174
    .line 175
    invoke-virtual {v0, p1, p2}, Ls/a;->c(D)D

    .line 176
    .line 177
    .line 178
    move-result-wide p1

    .line 179
    double-to-float p1, p1

    .line 180
    aput p1, p3, v4

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_7
    invoke-virtual {v3, p1, p2}, Ls/a;->d(D)V

    .line 184
    .line 185
    .line 186
    aget-object p1, v0, v2

    .line 187
    .line 188
    iget-wide v2, p1, Ls/a;->j:D

    .line 189
    .line 190
    iget-wide v5, p1, Ls/a;->o:D

    .line 191
    .line 192
    mul-double v2, v2, v5

    .line 193
    .line 194
    iget-wide v5, p1, Ls/a;->l:D

    .line 195
    .line 196
    add-double/2addr v2, v5

    .line 197
    double-to-float p2, v2

    .line 198
    aput p2, p3, v1

    .line 199
    .line 200
    iget-wide v0, p1, Ls/a;->k:D

    .line 201
    .line 202
    iget-wide v2, p1, Ls/a;->p:D

    .line 203
    .line 204
    mul-double v0, v0, v2

    .line 205
    .line 206
    iget-wide p1, p1, Ls/a;->m:D

    .line 207
    .line 208
    add-double/2addr v0, p1

    .line 209
    double-to-float p1, v0

    .line 210
    aput p1, p3, v4

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_9
    :goto_7
    return-void

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final u(D)D
    .locals 8

    .line 1
    iget v0, p0, Ls/b;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls/b;->d:[D

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    aget-wide v3, v0, v2

    .line 11
    .line 12
    cmpg-double v5, p1, v3

    .line 13
    .line 14
    if-gez v5, :cond_0

    .line 15
    .line 16
    :goto_0
    move-wide p1, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 19
    .line 20
    aget-wide v3, v0, v3

    .line 21
    .line 22
    cmpl-double v5, p1, v3

    .line 23
    .line 24
    if-ltz v5, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 28
    :goto_2
    add-int/lit8 v4, v1, -0x1

    .line 29
    .line 30
    if-ge v3, v4, :cond_3

    .line 31
    .line 32
    add-int/lit8 v4, v3, 0x1

    .line 33
    .line 34
    aget-wide v5, v0, v4

    .line 35
    .line 36
    cmpg-double v7, p1, v5

    .line 37
    .line 38
    if-gtz v7, :cond_2

    .line 39
    .line 40
    aget-wide p1, v0, v3

    .line 41
    .line 42
    sub-double/2addr v5, p1

    .line 43
    iget-object p1, p0, Ls/b;->e:[Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, [[D

    .line 46
    .line 47
    aget-object p2, p1, v3

    .line 48
    .line 49
    aget-wide v0, p2, v2

    .line 50
    .line 51
    aget-object p1, p1, v4

    .line 52
    .line 53
    aget-wide v2, p1, v2

    .line 54
    .line 55
    sub-double/2addr v2, v0

    .line 56
    div-double/2addr v2, v5

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    move v3, v4

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const-wide/16 v2, 0x0

    .line 61
    .line 62
    :goto_3
    return-wide v2

    .line 63
    :pswitch_0
    iget-object v0, p0, Ls/b;->e:[Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, [Ls/a;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    aget-object v2, v0, v1

    .line 69
    .line 70
    iget-wide v2, v2, Ls/a;->c:D

    .line 71
    .line 72
    cmpg-double v4, p1, v2

    .line 73
    .line 74
    if-gez v4, :cond_4

    .line 75
    .line 76
    move-wide p1, v2

    .line 77
    :cond_4
    array-length v2, v0

    .line 78
    add-int/lit8 v2, v2, -0x1

    .line 79
    .line 80
    aget-object v2, v0, v2

    .line 81
    .line 82
    iget-wide v2, v2, Ls/a;->d:D

    .line 83
    .line 84
    cmpl-double v4, p1, v2

    .line 85
    .line 86
    if-lez v4, :cond_5

    .line 87
    .line 88
    array-length p1, v0

    .line 89
    add-int/lit8 p1, p1, -0x1

    .line 90
    .line 91
    aget-object p1, v0, p1

    .line 92
    .line 93
    iget-wide p1, p1, Ls/a;->d:D

    .line 94
    .line 95
    :cond_5
    :goto_4
    array-length v2, v0

    .line 96
    if-ge v1, v2, :cond_8

    .line 97
    .line 98
    aget-object v2, v0, v1

    .line 99
    .line 100
    iget-wide v3, v2, Ls/a;->d:D

    .line 101
    .line 102
    cmpg-double v5, p1, v3

    .line 103
    .line 104
    if-gtz v5, :cond_7

    .line 105
    .line 106
    iget-boolean v3, v2, Ls/a;->r:Z

    .line 107
    .line 108
    if-eqz v3, :cond_6

    .line 109
    .line 110
    iget-wide p1, v2, Ls/a;->l:D

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_6
    invoke-virtual {v2, p1, p2}, Ls/a;->d(D)V

    .line 114
    .line 115
    .line 116
    aget-object p1, v0, v1

    .line 117
    .line 118
    invoke-virtual {p1}, Ls/a;->a()D

    .line 119
    .line 120
    .line 121
    move-result-wide p1

    .line 122
    goto :goto_5

    .line 123
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_8
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 127
    .line 128
    :goto_5
    return-wide p1

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final v(D[D)V
    .locals 11

    .line 1
    iget v0, p0, Ls/b;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls/b;->d:[D

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    iget-object v2, p0, Ls/b;->e:[Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, [[D

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aget-object v4, v2, v3

    .line 15
    .line 16
    array-length v4, v4

    .line 17
    aget-wide v5, v0, v3

    .line 18
    .line 19
    cmpg-double v7, p1, v5

    .line 20
    .line 21
    if-gtz v7, :cond_0

    .line 22
    .line 23
    :goto_0
    move-wide p1, v5

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v5, v1, -0x1

    .line 26
    .line 27
    aget-wide v5, v0, v5

    .line 28
    .line 29
    cmpl-double v7, p1, v5

    .line 30
    .line 31
    if-ltz v7, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 35
    :goto_2
    add-int/lit8 v6, v1, -0x1

    .line 36
    .line 37
    if-ge v5, v6, :cond_3

    .line 38
    .line 39
    add-int/lit8 v6, v5, 0x1

    .line 40
    .line 41
    aget-wide v7, v0, v6

    .line 42
    .line 43
    cmpg-double v9, p1, v7

    .line 44
    .line 45
    if-gtz v9, :cond_2

    .line 46
    .line 47
    aget-wide p1, v0, v5

    .line 48
    .line 49
    sub-double/2addr v7, p1

    .line 50
    :goto_3
    if-ge v3, v4, :cond_3

    .line 51
    .line 52
    aget-object p1, v2, v5

    .line 53
    .line 54
    aget-wide v0, p1, v3

    .line 55
    .line 56
    aget-object p1, v2, v6

    .line 57
    .line 58
    aget-wide v9, p1, v3

    .line 59
    .line 60
    sub-double/2addr v9, v0

    .line 61
    div-double/2addr v9, v7

    .line 62
    aput-wide v9, p3, v3

    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    move v5, v6

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Ls/b;->e:[Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, [Ls/a;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    aget-object v2, v0, v1

    .line 76
    .line 77
    iget-wide v2, v2, Ls/a;->c:D

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    cmpg-double v5, p1, v2

    .line 81
    .line 82
    if-gez v5, :cond_4

    .line 83
    .line 84
    move-wide p1, v2

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    array-length v2, v0

    .line 87
    sub-int/2addr v2, v4

    .line 88
    aget-object v2, v0, v2

    .line 89
    .line 90
    iget-wide v2, v2, Ls/a;->d:D

    .line 91
    .line 92
    cmpl-double v5, p1, v2

    .line 93
    .line 94
    if-lez v5, :cond_5

    .line 95
    .line 96
    array-length p1, v0

    .line 97
    sub-int/2addr p1, v4

    .line 98
    aget-object p1, v0, p1

    .line 99
    .line 100
    iget-wide p1, p1, Ls/a;->d:D

    .line 101
    .line 102
    :cond_5
    :goto_4
    const/4 v2, 0x0

    .line 103
    :goto_5
    array-length v3, v0

    .line 104
    if-ge v2, v3, :cond_9

    .line 105
    .line 106
    aget-object v3, v0, v2

    .line 107
    .line 108
    iget-wide v5, v3, Ls/a;->d:D

    .line 109
    .line 110
    cmpg-double v7, p1, v5

    .line 111
    .line 112
    if-gtz v7, :cond_8

    .line 113
    .line 114
    iget-boolean v5, v3, Ls/a;->r:Z

    .line 115
    .line 116
    if-eqz v5, :cond_6

    .line 117
    .line 118
    iget-wide p1, v3, Ls/a;->l:D

    .line 119
    .line 120
    aput-wide p1, p3, v1

    .line 121
    .line 122
    iget-wide p1, v3, Ls/a;->m:D

    .line 123
    .line 124
    aput-wide p1, p3, v4

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :cond_6
    invoke-virtual {v3, p1, p2}, Ls/a;->d(D)V

    .line 128
    .line 129
    .line 130
    aget-object p1, v0, v2

    .line 131
    .line 132
    invoke-virtual {p1}, Ls/a;->a()D

    .line 133
    .line 134
    .line 135
    move-result-wide p1

    .line 136
    aput-wide p1, p3, v1

    .line 137
    .line 138
    aget-object p1, v0, v2

    .line 139
    .line 140
    iget-wide v0, p1, Ls/a;->j:D

    .line 141
    .line 142
    iget-wide v2, p1, Ls/a;->p:D

    .line 143
    .line 144
    mul-double v0, v0, v2

    .line 145
    .line 146
    iget-wide v2, p1, Ls/a;->k:D

    .line 147
    .line 148
    neg-double v2, v2

    .line 149
    iget-wide v5, p1, Ls/a;->o:D

    .line 150
    .line 151
    mul-double v2, v2, v5

    .line 152
    .line 153
    iget-wide v5, p1, Ls/a;->n:D

    .line 154
    .line 155
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    div-double/2addr v5, v0

    .line 160
    iget-boolean p1, p1, Ls/a;->q:Z

    .line 161
    .line 162
    if-eqz p1, :cond_7

    .line 163
    .line 164
    neg-double p1, v2

    .line 165
    mul-double p1, p1, v5

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_7
    mul-double p1, v2, v5

    .line 169
    .line 170
    :goto_6
    aput-wide p1, p3, v4

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_9
    :goto_7
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final w()[D
    .locals 1

    .line 1
    iget v0, p0, Ls/b;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls/b;->d:[D

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    iget-object v0, p0, Ls/b;->d:[D

    .line 10
    .line 11
    return-object v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
