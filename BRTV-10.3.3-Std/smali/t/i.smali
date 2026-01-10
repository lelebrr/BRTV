.class public abstract Lt/i;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:Lt/f;

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lt/i;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 7

    .line 1
    iget-object v0, p0, Lt/i;->a:Lt/f;

    .line 2
    .line 3
    iget-object v1, v0, Lt/f;->f:Lr4/b;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    float-to-double v4, p1

    .line 10
    iget-object v6, v0, Lt/f;->g:[D

    .line 11
    .line 12
    invoke-virtual {v1, v4, v5, v6}, Lr4/b;->r(D[D)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lt/f;->g:[D

    .line 17
    .line 18
    iget-object v4, v0, Lt/f;->e:[F

    .line 19
    .line 20
    aget v4, v4, v3

    .line 21
    .line 22
    float-to-double v4, v4

    .line 23
    aput-wide v4, v1, v3

    .line 24
    .line 25
    iget-object v4, v0, Lt/f;->b:[F

    .line 26
    .line 27
    aget v4, v4, v3

    .line 28
    .line 29
    float-to-double v4, v4

    .line 30
    aput-wide v4, v1, v2

    .line 31
    .line 32
    :goto_0
    iget-object v1, v0, Lt/f;->g:[D

    .line 33
    .line 34
    aget-wide v3, v1, v3

    .line 35
    .line 36
    iget-object v1, v0, Lt/f;->a:Ls/g;

    .line 37
    .line 38
    float-to-double v5, p1

    .line 39
    invoke-virtual {v1, v5, v6}, Ls/g;->i(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    iget-object p1, v0, Lt/f;->g:[D

    .line 44
    .line 45
    aget-wide v0, p1, v2

    .line 46
    .line 47
    mul-double v5, v5, v0

    .line 48
    .line 49
    add-double/2addr v5, v3

    .line 50
    double-to-float p1, v5

    .line 51
    return p1
.end method

.method public final b(F)F
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lt/i;->a:Lt/f;

    .line 6
    .line 7
    iget-object v3, v2, Lt/f;->f:Lr4/b;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    float-to-double v6, v1

    .line 14
    iget-object v8, v2, Lt/f;->h:[D

    .line 15
    .line 16
    invoke-virtual {v3, v6, v7, v8}, Lr4/b;->v(D[D)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Lt/f;->f:Lr4/b;

    .line 20
    .line 21
    iget-object v8, v2, Lt/f;->g:[D

    .line 22
    .line 23
    invoke-virtual {v3, v6, v7, v8}, Lr4/b;->r(D[D)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v3, v2, Lt/f;->h:[D

    .line 28
    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    aput-wide v6, v3, v4

    .line 32
    .line 33
    aput-wide v6, v3, v5

    .line 34
    .line 35
    :goto_0
    float-to-double v6, v1

    .line 36
    iget-object v1, v2, Lt/f;->a:Ls/g;

    .line 37
    .line 38
    invoke-virtual {v1, v6, v7}, Ls/g;->i(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v8

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const-wide/16 v10, 0x0

    .line 46
    .line 47
    cmpg-double v3, v6, v10

    .line 48
    .line 49
    if-gtz v3, :cond_1

    .line 50
    .line 51
    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 58
    .line 59
    cmpl-double v3, v6, v12

    .line 60
    .line 61
    if-ltz v3, :cond_2

    .line 62
    .line 63
    const-wide v12, 0x3feffffde7210be9L    # 0.999999

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-wide v12, v6

    .line 70
    :goto_1
    iget-object v3, v1, Ls/g;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, [D

    .line 73
    .line 74
    invoke-static {v3, v12, v13}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-lez v3, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    if-eqz v3, :cond_4

    .line 82
    .line 83
    neg-int v3, v3

    .line 84
    add-int/lit8 v10, v3, -0x1

    .line 85
    .line 86
    iget-object v11, v1, Ls/g;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v11, [F

    .line 89
    .line 90
    aget v14, v11, v10

    .line 91
    .line 92
    add-int/lit8 v3, v3, -0x2

    .line 93
    .line 94
    aget v11, v11, v3

    .line 95
    .line 96
    sub-float/2addr v14, v11

    .line 97
    float-to-double v14, v14

    .line 98
    iget-object v5, v1, Ls/g;->c:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v5, [D

    .line 101
    .line 102
    aget-wide v16, v5, v10

    .line 103
    .line 104
    aget-wide v18, v5, v3

    .line 105
    .line 106
    sub-double v16, v16, v18

    .line 107
    .line 108
    div-double v14, v14, v16

    .line 109
    .line 110
    mul-double v12, v12, v14

    .line 111
    .line 112
    float-to-double v10, v11

    .line 113
    mul-double v14, v14, v18

    .line 114
    .line 115
    sub-double/2addr v10, v14

    .line 116
    add-double/2addr v10, v12

    .line 117
    :cond_4
    :goto_2
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    mul-double v10, v10, v12

    .line 123
    .line 124
    invoke-virtual {v1, v6, v7}, Ls/g;->h(D)D

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    mul-double v5, v5, v12

    .line 129
    .line 130
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 131
    .line 132
    .line 133
    move-result-wide v5

    .line 134
    mul-double v5, v5, v10

    .line 135
    .line 136
    iget-object v1, v2, Lt/f;->h:[D

    .line 137
    .line 138
    aget-wide v3, v1, v4

    .line 139
    .line 140
    const/4 v7, 0x1

    .line 141
    aget-wide v10, v1, v7

    .line 142
    .line 143
    mul-double v8, v8, v10

    .line 144
    .line 145
    add-double/2addr v8, v3

    .line 146
    iget-object v1, v2, Lt/f;->g:[D

    .line 147
    .line 148
    aget-wide v2, v1, v7

    .line 149
    .line 150
    mul-double v5, v5, v2

    .line 151
    .line 152
    add-double/2addr v5, v8

    .line 153
    double-to-float v1, v5

    .line 154
    return v1
.end method

.method public abstract c(Landroid/view/View;F)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lt/i;->b:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/text/DecimalFormat;

    .line 4
    .line 5
    const-string v2, "##.##"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lt/i;->c:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    invoke-static {v1}, La/e;->l(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    throw v0
.end method
