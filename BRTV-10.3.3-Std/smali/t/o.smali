.class public final Lt/o;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public c:I

.field public final d:Lt/y;

.field public final e:Lt/y;

.field public final f:Lt/n;

.field public final g:Lt/n;

.field public h:[Lr4/b;

.field public i:Ls/b;

.field public j:F

.field public k:F

.field public l:F

.field public m:[I

.field public n:[D

.field public o:[D

.field public p:[Ljava/lang/String;

.field public q:[I

.field public final r:[F

.field public final s:Ljava/util/ArrayList;

.field public final t:[F

.field public final u:Ljava/util/ArrayList;

.field public v:Ljava/util/HashMap;

.field public w:Ljava/util/HashMap;

.field public x:Ljava/util/HashMap;

.field public y:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lt/o;->c:I

    .line 6
    .line 7
    new-instance v1, Lt/y;

    .line 8
    .line 9
    invoke-direct {v1}, Lt/y;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lt/o;->d:Lt/y;

    .line 13
    .line 14
    new-instance v1, Lt/y;

    .line 15
    .line 16
    invoke-direct {v1}, Lt/y;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lt/o;->e:Lt/y;

    .line 20
    .line 21
    new-instance v1, Lt/n;

    .line 22
    .line 23
    invoke-direct {v1}, Lt/n;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lt/o;->f:Lt/n;

    .line 27
    .line 28
    new-instance v1, Lt/n;

    .line 29
    .line 30
    invoke-direct {v1}, Lt/n;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lt/o;->g:Lt/n;

    .line 34
    .line 35
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 36
    .line 37
    iput v1, p0, Lt/o;->j:F

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lt/o;->k:F

    .line 41
    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    .line 44
    iput v1, p0, Lt/o;->l:F

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    new-array v1, v1, [F

    .line 48
    .line 49
    iput-object v1, p0, Lt/o;->r:[F

    .line 50
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lt/o;->s:Ljava/util/ArrayList;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    new-array v1, v1, [F

    .line 60
    .line 61
    iput-object v1, p0, Lt/o;->t:[F

    .line 62
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lt/o;->u:Ljava/util/ArrayList;

    .line 69
    .line 70
    iput v0, p0, Lt/o;->y:I

    .line 71
    .line 72
    iput-object p1, p0, Lt/o;->a:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lt/o;->b:I

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 85
    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public final a([FF)F
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    aput v1, p1, v2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v3, p0, Lt/o;->l:F

    .line 11
    .line 12
    float-to-double v4, v3

    .line 13
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 14
    .line 15
    cmpl-double v8, v4, v6

    .line 16
    .line 17
    if-eqz v8, :cond_2

    .line 18
    .line 19
    iget v4, p0, Lt/o;->k:F

    .line 20
    .line 21
    cmpg-float v5, p2, v4

    .line 22
    .line 23
    if-gez v5, :cond_1

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    :cond_1
    cmpl-float v5, p2, v4

    .line 27
    .line 28
    if-lez v5, :cond_2

    .line 29
    .line 30
    float-to-double v8, p2

    .line 31
    cmpg-double v5, v8, v6

    .line 32
    .line 33
    if-gez v5, :cond_2

    .line 34
    .line 35
    sub-float/2addr p2, v4

    .line 36
    mul-float p2, p2, v3

    .line 37
    .line 38
    :cond_2
    :goto_0
    iget-object v3, p0, Lt/o;->d:Lt/y;

    .line 39
    .line 40
    iget-object v3, v3, Lt/y;->a:Ls/e;

    .line 41
    .line 42
    iget-object v4, p0, Lt/o;->s:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 49
    .line 50
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_5

    .line 55
    .line 56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Lt/y;

    .line 61
    .line 62
    iget-object v7, v6, Lt/y;->a:Ls/e;

    .line 63
    .line 64
    if-eqz v7, :cond_3

    .line 65
    .line 66
    iget v8, v6, Lt/y;->c:F

    .line 67
    .line 68
    cmpg-float v9, v8, p2

    .line 69
    .line 70
    if-gez v9, :cond_4

    .line 71
    .line 72
    move-object v3, v7

    .line 73
    move v0, v8

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_3

    .line 80
    .line 81
    iget v5, v6, Lt/y;->c:F

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    if-eqz v3, :cond_7

    .line 85
    .line 86
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    move v1, v5

    .line 94
    :goto_2
    sub-float/2addr p2, v0

    .line 95
    sub-float/2addr v1, v0

    .line 96
    div-float/2addr p2, v1

    .line 97
    float-to-double v4, p2

    .line 98
    invoke-virtual {v3, v4, v5}, Ls/e;->a(D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    double-to-float p2, v6

    .line 103
    mul-float p2, p2, v1

    .line 104
    .line 105
    add-float/2addr p2, v0

    .line 106
    if-eqz p1, :cond_7

    .line 107
    .line 108
    invoke-virtual {v3, v4, v5}, Ls/e;->b(D)D

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    double-to-float v0, v0

    .line 113
    aput v0, p1, v2

    .line 114
    .line 115
    :cond_7
    return p2
.end method

.method public final b(FFF[F)V
    .locals 11

    .line 1
    iget-object v0, p0, Lt/o;->t:[F

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lt/o;->a([FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v1, p0, Lt/o;->h:[Lr4/b;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    aget-object v1, v1, v2

    .line 13
    .line 14
    float-to-double v3, p1

    .line 15
    iget-object p1, p0, Lt/o;->o:[D

    .line 16
    .line 17
    invoke-virtual {v1, v3, v4, p1}, Lr4/b;->v(D[D)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lt/o;->h:[Lr4/b;

    .line 21
    .line 22
    aget-object p1, p1, v2

    .line 23
    .line 24
    iget-object v1, p0, Lt/o;->n:[D

    .line 25
    .line 26
    invoke-virtual {p1, v3, v4, v1}, Lr4/b;->r(D[D)V

    .line 27
    .line 28
    .line 29
    aget p1, v0, v2

    .line 30
    .line 31
    :goto_0
    iget-object v9, p0, Lt/o;->o:[D

    .line 32
    .line 33
    array-length v0, v9

    .line 34
    if-ge v2, v0, :cond_0

    .line 35
    .line 36
    aget-wide v0, v9, v2

    .line 37
    .line 38
    float-to-double v5, p1

    .line 39
    mul-double v0, v0, v5

    .line 40
    .line 41
    aput-wide v0, v9, v2

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lt/o;->i:Ls/b;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lt/o;->n:[D

    .line 51
    .line 52
    array-length v1, v0

    .line 53
    if-lez v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1, v3, v4, v0}, Ls/b;->r(D[D)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lt/o;->i:Ls/b;

    .line 59
    .line 60
    iget-object v0, p0, Lt/o;->o:[D

    .line 61
    .line 62
    invoke-virtual {p1, v3, v4, v0}, Ls/b;->v(D[D)V

    .line 63
    .line 64
    .line 65
    iget-object v8, p0, Lt/o;->m:[I

    .line 66
    .line 67
    iget-object v9, p0, Lt/o;->o:[D

    .line 68
    .line 69
    iget-object v10, p0, Lt/o;->n:[D

    .line 70
    .line 71
    iget-object p1, p0, Lt/o;->d:Lt/y;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move v5, p2

    .line 77
    move v6, p3

    .line 78
    move-object v7, p4

    .line 79
    invoke-static/range {v5 .. v10}, Lt/y;->d(FF[F[I[D[D)V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void

    .line 83
    :cond_2
    iget-object v8, p0, Lt/o;->m:[I

    .line 84
    .line 85
    iget-object v10, p0, Lt/o;->n:[D

    .line 86
    .line 87
    iget-object p1, p0, Lt/o;->d:Lt/y;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move v5, p2

    .line 93
    move v6, p3

    .line 94
    move-object v7, p4

    .line 95
    invoke-static/range {v5 .. v10}, Lt/y;->d(FF[F[I[D[D)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    iget-object p1, p0, Lt/o;->e:Lt/y;

    .line 100
    .line 101
    iget v0, p1, Lt/y;->e:F

    .line 102
    .line 103
    iget-object v1, p0, Lt/o;->d:Lt/y;

    .line 104
    .line 105
    iget v3, v1, Lt/y;->e:F

    .line 106
    .line 107
    sub-float/2addr v0, v3

    .line 108
    iget v3, p1, Lt/y;->f:F

    .line 109
    .line 110
    iget v4, v1, Lt/y;->f:F

    .line 111
    .line 112
    sub-float/2addr v3, v4

    .line 113
    iget v4, p1, Lt/y;->g:F

    .line 114
    .line 115
    iget v5, v1, Lt/y;->g:F

    .line 116
    .line 117
    sub-float/2addr v4, v5

    .line 118
    iget p1, p1, Lt/y;->h:F

    .line 119
    .line 120
    iget v1, v1, Lt/y;->h:F

    .line 121
    .line 122
    sub-float/2addr p1, v1

    .line 123
    add-float/2addr v4, v0

    .line 124
    add-float/2addr p1, v3

    .line 125
    const/high16 v1, 0x3f800000    # 1.0f

    .line 126
    .line 127
    sub-float v5, v1, p2

    .line 128
    .line 129
    mul-float v5, v5, v0

    .line 130
    .line 131
    mul-float v4, v4, p2

    .line 132
    .line 133
    add-float/2addr v4, v5

    .line 134
    aput v4, p4, v2

    .line 135
    .line 136
    sub-float/2addr v1, p3

    .line 137
    mul-float v1, v1, v3

    .line 138
    .line 139
    mul-float p1, p1, p3

    .line 140
    .line 141
    add-float/2addr p1, v1

    .line 142
    const/4 p2, 0x1

    .line 143
    aput p1, p4, p2

    .line 144
    .line 145
    return-void
.end method

.method public final c(FJLandroid/view/View;Lt/u;)Z
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p4

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move/from16 v2, p1

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lt/o;->a([FF)F

    .line 9
    .line 10
    .line 11
    move-result v8

    .line 12
    iget-object v2, v0, Lt/o;->w:Ljava/util/HashMap;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lt/h0;

    .line 35
    .line 36
    invoke-virtual {v3, v7, v8}, Lt/h0;->c(Landroid/view/View;F)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v2, v0, Lt/o;->v:Ljava/util/HashMap;

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    move-object v11, v1

    .line 54
    const/4 v12, 0x0

    .line 55
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lt/m0;

    .line 66
    .line 67
    instance-of v2, v1, Lt/k0;

    .line 68
    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    move-object v11, v1

    .line 72
    check-cast v11, Lt/k0;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move v2, v8

    .line 76
    move-wide/from16 v3, p2

    .line 77
    .line 78
    move-object/from16 v5, p4

    .line 79
    .line 80
    move-object/from16 v6, p5

    .line 81
    .line 82
    invoke-virtual/range {v1 .. v6}, Lt/m0;->b(FJLandroid/view/View;Lt/u;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    or-int/2addr v12, v1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move-object v11, v1

    .line 89
    const/4 v12, 0x0

    .line 90
    :cond_3
    iget-object v1, v0, Lt/o;->h:[Lr4/b;

    .line 91
    .line 92
    iget-object v10, v0, Lt/o;->d:Lt/y;

    .line 93
    .line 94
    if-eqz v1, :cond_1b

    .line 95
    .line 96
    aget-object v1, v1, v9

    .line 97
    .line 98
    float-to-double v14, v8

    .line 99
    iget-object v4, v0, Lt/o;->n:[D

    .line 100
    .line 101
    invoke-virtual {v1, v14, v15, v4}, Lr4/b;->r(D[D)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lt/o;->h:[Lr4/b;

    .line 105
    .line 106
    aget-object v1, v1, v9

    .line 107
    .line 108
    iget-object v4, v0, Lt/o;->o:[D

    .line 109
    .line 110
    invoke-virtual {v1, v14, v15, v4}, Lr4/b;->v(D[D)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lt/o;->i:Ls/b;

    .line 114
    .line 115
    if-eqz v1, :cond_4

    .line 116
    .line 117
    iget-object v4, v0, Lt/o;->n:[D

    .line 118
    .line 119
    array-length v5, v4

    .line 120
    if-lez v5, :cond_4

    .line 121
    .line 122
    invoke-virtual {v1, v14, v15, v4}, Ls/b;->r(D[D)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lt/o;->i:Ls/b;

    .line 126
    .line 127
    iget-object v4, v0, Lt/o;->o:[D

    .line 128
    .line 129
    invoke-virtual {v1, v14, v15, v4}, Ls/b;->v(D[D)V

    .line 130
    .line 131
    .line 132
    :cond_4
    iget-object v1, v0, Lt/o;->m:[I

    .line 133
    .line 134
    iget-object v4, v0, Lt/o;->n:[D

    .line 135
    .line 136
    iget-object v5, v0, Lt/o;->o:[D

    .line 137
    .line 138
    iget v6, v10, Lt/y;->e:F

    .line 139
    .line 140
    iget v9, v10, Lt/y;->f:F

    .line 141
    .line 142
    iget v2, v10, Lt/y;->g:F

    .line 143
    .line 144
    iget v3, v10, Lt/y;->h:F

    .line 145
    .line 146
    array-length v13, v1

    .line 147
    if-eqz v13, :cond_5

    .line 148
    .line 149
    iget-object v13, v10, Lt/y;->l:[D

    .line 150
    .line 151
    array-length v13, v13

    .line 152
    move/from16 v17, v2

    .line 153
    .line 154
    array-length v2, v1

    .line 155
    const/16 v16, 0x1

    .line 156
    .line 157
    add-int/lit8 v2, v2, -0x1

    .line 158
    .line 159
    aget v2, v1, v2

    .line 160
    .line 161
    if-gt v13, v2, :cond_6

    .line 162
    .line 163
    array-length v2, v1

    .line 164
    add-int/lit8 v2, v2, -0x1

    .line 165
    .line 166
    aget v2, v1, v2

    .line 167
    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 169
    .line 170
    new-array v13, v2, [D

    .line 171
    .line 172
    iput-object v13, v10, Lt/y;->l:[D

    .line 173
    .line 174
    new-array v2, v2, [D

    .line 175
    .line 176
    iput-object v2, v10, Lt/y;->m:[D

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_5
    move/from16 v17, v2

    .line 180
    .line 181
    :cond_6
    :goto_2
    iget-object v2, v10, Lt/y;->l:[D

    .line 182
    .line 183
    move-wide/from16 v18, v14

    .line 184
    .line 185
    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    .line 186
    .line 187
    invoke-static {v2, v13, v14}, Ljava/util/Arrays;->fill([DD)V

    .line 188
    .line 189
    .line 190
    const/4 v2, 0x0

    .line 191
    :goto_3
    array-length v13, v1

    .line 192
    if-ge v2, v13, :cond_7

    .line 193
    .line 194
    iget-object v13, v10, Lt/y;->l:[D

    .line 195
    .line 196
    aget v14, v1, v2

    .line 197
    .line 198
    aget-wide v20, v4, v2

    .line 199
    .line 200
    aput-wide v20, v13, v14

    .line 201
    .line 202
    iget-object v13, v10, Lt/y;->m:[D

    .line 203
    .line 204
    aget-wide v20, v5, v2

    .line 205
    .line 206
    aput-wide v20, v13, v14

    .line 207
    .line 208
    add-int/lit8 v2, v2, 0x1

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_7
    const/4 v2, 0x0

    .line 212
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 213
    .line 214
    const/4 v5, 0x0

    .line 215
    const/4 v14, 0x0

    .line 216
    const/4 v15, 0x0

    .line 217
    const/16 v20, 0x0

    .line 218
    .line 219
    :goto_4
    iget-object v13, v10, Lt/y;->l:[D

    .line 220
    .line 221
    array-length v1, v13

    .line 222
    if-ge v2, v1, :cond_f

    .line 223
    .line 224
    aget-wide v22, v13, v2

    .line 225
    .line 226
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_8

    .line 231
    .line 232
    move-object/from16 v22, v10

    .line 233
    .line 234
    move-object v13, v11

    .line 235
    move/from16 v24, v12

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_8
    iget-object v1, v10, Lt/y;->l:[D

    .line 239
    .line 240
    aget-wide v22, v1, v2

    .line 241
    .line 242
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    const-wide/16 v22, 0x0

    .line 247
    .line 248
    if-eqz v1, :cond_9

    .line 249
    .line 250
    :goto_5
    move/from16 v24, v12

    .line 251
    .line 252
    move-wide/from16 v12, v22

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_9
    iget-object v1, v10, Lt/y;->l:[D

    .line 256
    .line 257
    aget-wide v24, v1, v2

    .line 258
    .line 259
    add-double v22, v24, v22

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :goto_6
    double-to-float v1, v12

    .line 263
    iget-object v12, v10, Lt/y;->m:[D

    .line 264
    .line 265
    move-object/from16 v22, v10

    .line 266
    .line 267
    move-object v13, v11

    .line 268
    aget-wide v10, v12, v2

    .line 269
    .line 270
    double-to-float v10, v10

    .line 271
    const/4 v11, 0x1

    .line 272
    if-eq v2, v11, :cond_e

    .line 273
    .line 274
    const/4 v11, 0x2

    .line 275
    if-eq v2, v11, :cond_d

    .line 276
    .line 277
    const/4 v11, 0x3

    .line 278
    if-eq v2, v11, :cond_c

    .line 279
    .line 280
    const/4 v11, 0x4

    .line 281
    if-eq v2, v11, :cond_b

    .line 282
    .line 283
    const/4 v10, 0x5

    .line 284
    if-eq v2, v10, :cond_a

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_a
    move v4, v1

    .line 288
    goto :goto_7

    .line 289
    :cond_b
    move v3, v1

    .line 290
    move/from16 v20, v10

    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_c
    move/from16 v17, v1

    .line 294
    .line 295
    move v14, v10

    .line 296
    goto :goto_7

    .line 297
    :cond_d
    move v9, v1

    .line 298
    move v15, v10

    .line 299
    goto :goto_7

    .line 300
    :cond_e
    move v6, v1

    .line 301
    move v5, v10

    .line 302
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 303
    .line 304
    move-object v11, v13

    .line 305
    move-object/from16 v10, v22

    .line 306
    .line 307
    move/from16 v12, v24

    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_f
    move-object/from16 v22, v10

    .line 311
    .line 312
    move-object v13, v11

    .line 313
    move/from16 v24, v12

    .line 314
    .line 315
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_11

    .line 320
    .line 321
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 322
    .line 323
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-nez v2, :cond_10

    .line 328
    .line 329
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    .line 330
    .line 331
    .line 332
    :cond_10
    :goto_8
    const/high16 v1, 0x3f000000    # 0.5f

    .line 333
    .line 334
    goto :goto_9

    .line 335
    :cond_11
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 336
    .line 337
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-eqz v2, :cond_12

    .line 342
    .line 343
    const/4 v1, 0x0

    .line 344
    :cond_12
    const/high16 v2, 0x40000000    # 2.0f

    .line 345
    .line 346
    div-float/2addr v14, v2

    .line 347
    add-float/2addr v14, v5

    .line 348
    div-float v20, v20, v2

    .line 349
    .line 350
    add-float v2, v20, v15

    .line 351
    .line 352
    float-to-double v10, v1

    .line 353
    float-to-double v4, v4

    .line 354
    float-to-double v1, v2

    .line 355
    float-to-double v14, v14

    .line 356
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 357
    .line 358
    .line 359
    move-result-wide v1

    .line 360
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    .line 361
    .line 362
    .line 363
    move-result-wide v1

    .line 364
    add-double/2addr v1, v4

    .line 365
    add-double/2addr v1, v10

    .line 366
    double-to-float v1, v1

    .line 367
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    .line 368
    .line 369
    .line 370
    goto :goto_8

    .line 371
    :goto_9
    add-float/2addr v6, v1

    .line 372
    float-to-int v2, v6

    .line 373
    add-float/2addr v9, v1

    .line 374
    float-to-int v1, v9

    .line 375
    add-float v6, v6, v17

    .line 376
    .line 377
    float-to-int v4, v6

    .line 378
    add-float/2addr v9, v3

    .line 379
    float-to-int v3, v9

    .line 380
    sub-int v5, v4, v2

    .line 381
    .line 382
    sub-int v6, v3, v1

    .line 383
    .line 384
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 385
    .line 386
    .line 387
    move-result v9

    .line 388
    if-ne v5, v9, :cond_13

    .line 389
    .line 390
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 391
    .line 392
    .line 393
    move-result v9

    .line 394
    if-eq v6, v9, :cond_14

    .line 395
    .line 396
    :cond_13
    const/high16 v9, 0x40000000    # 2.0f

    .line 397
    .line 398
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    invoke-virtual {v7, v5, v6}, Landroid/view/View;->measure(II)V

    .line 407
    .line 408
    .line 409
    :cond_14
    invoke-virtual {v7, v2, v1, v4, v3}, Landroid/view/View;->layout(IIII)V

    .line 410
    .line 411
    .line 412
    iget-object v1, v0, Lt/o;->w:Ljava/util/HashMap;

    .line 413
    .line 414
    if-eqz v1, :cond_16

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    :cond_15
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eqz v2, :cond_16

    .line 429
    .line 430
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    check-cast v2, Lt/h0;

    .line 435
    .line 436
    instance-of v3, v2, Lt/f0;

    .line 437
    .line 438
    if-eqz v3, :cond_15

    .line 439
    .line 440
    check-cast v2, Lt/f0;

    .line 441
    .line 442
    iget-object v3, v0, Lt/o;->o:[D

    .line 443
    .line 444
    const/4 v4, 0x0

    .line 445
    aget-wide v5, v3, v4

    .line 446
    .line 447
    const/4 v4, 0x1

    .line 448
    aget-wide v9, v3, v4

    .line 449
    .line 450
    invoke-virtual {v2, v8}, Lt/h0;->a(F)F

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 455
    .line 456
    .line 457
    move-result-wide v3

    .line 458
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 459
    .line 460
    .line 461
    move-result-wide v3

    .line 462
    double-to-float v3, v3

    .line 463
    add-float/2addr v2, v3

    .line 464
    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    .line 465
    .line 466
    .line 467
    goto :goto_a

    .line 468
    :cond_16
    if-eqz v13, :cond_17

    .line 469
    .line 470
    iget-object v1, v0, Lt/o;->o:[D

    .line 471
    .line 472
    const/4 v2, 0x0

    .line 473
    aget-wide v9, v1, v2

    .line 474
    .line 475
    const/4 v2, 0x1

    .line 476
    aget-wide v11, v1, v2

    .line 477
    .line 478
    move-object v1, v13

    .line 479
    move v2, v8

    .line 480
    move-wide/from16 v3, p2

    .line 481
    .line 482
    move-object/from16 v5, p4

    .line 483
    .line 484
    move-object/from16 v6, p5

    .line 485
    .line 486
    invoke-virtual/range {v1 .. v6}, Lt/m0;->a(FJLandroid/view/View;Lt/u;)F

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    .line 491
    .line 492
    .line 493
    move-result-wide v2

    .line 494
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 495
    .line 496
    .line 497
    move-result-wide v2

    .line 498
    double-to-float v2, v2

    .line 499
    add-float/2addr v1, v2

    .line 500
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    .line 501
    .line 502
    .line 503
    move-object v11, v13

    .line 504
    iget-boolean v1, v11, Lt/m0;->d:Z

    .line 505
    .line 506
    or-int v12, v24, v1

    .line 507
    .line 508
    goto :goto_b

    .line 509
    :cond_17
    move/from16 v12, v24

    .line 510
    .line 511
    :goto_b
    const/4 v1, 0x1

    .line 512
    :goto_c
    iget-object v2, v0, Lt/o;->h:[Lr4/b;

    .line 513
    .line 514
    array-length v3, v2

    .line 515
    if-ge v1, v3, :cond_18

    .line 516
    .line 517
    aget-object v2, v2, v1

    .line 518
    .line 519
    iget-object v3, v0, Lt/o;->r:[F

    .line 520
    .line 521
    move-wide/from16 v4, v18

    .line 522
    .line 523
    invoke-virtual {v2, v4, v5, v3}, Lr4/b;->s(D[F)V

    .line 524
    .line 525
    .line 526
    move-object/from16 v2, v22

    .line 527
    .line 528
    iget-object v6, v2, Lt/y;->k:Ljava/util/LinkedHashMap;

    .line 529
    .line 530
    iget-object v9, v0, Lt/o;->p:[Ljava/lang/String;

    .line 531
    .line 532
    add-int/lit8 v10, v1, -0x1

    .line 533
    .line 534
    aget-object v9, v9, v10

    .line 535
    .line 536
    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v6

    .line 540
    check-cast v6, Ly/a;

    .line 541
    .line 542
    invoke-virtual {v6, v7, v3}, Ly/a;->g(Landroid/view/View;[F)V

    .line 543
    .line 544
    .line 545
    add-int/lit8 v1, v1, 0x1

    .line 546
    .line 547
    goto :goto_c

    .line 548
    :cond_18
    iget-object v1, v0, Lt/o;->f:Lt/n;

    .line 549
    .line 550
    iget v2, v1, Lt/n;->b:I

    .line 551
    .line 552
    if-nez v2, :cond_1e

    .line 553
    .line 554
    const/4 v2, 0x0

    .line 555
    cmpg-float v2, v8, v2

    .line 556
    .line 557
    if-gtz v2, :cond_19

    .line 558
    .line 559
    iget v1, v1, Lt/n;->c:I

    .line 560
    .line 561
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    .line 563
    .line 564
    goto :goto_d

    .line 565
    :cond_19
    iget-object v2, v0, Lt/o;->g:Lt/n;

    .line 566
    .line 567
    const/high16 v3, 0x3f800000    # 1.0f

    .line 568
    .line 569
    cmpl-float v3, v8, v3

    .line 570
    .line 571
    if-ltz v3, :cond_1a

    .line 572
    .line 573
    iget v1, v2, Lt/n;->c:I

    .line 574
    .line 575
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 576
    .line 577
    .line 578
    goto :goto_d

    .line 579
    :cond_1a
    iget v2, v2, Lt/n;->c:I

    .line 580
    .line 581
    iget v1, v1, Lt/n;->c:I

    .line 582
    .line 583
    if-eq v2, v1, :cond_1e

    .line 584
    .line 585
    const/4 v1, 0x0

    .line 586
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 587
    .line 588
    .line 589
    goto :goto_d

    .line 590
    :cond_1b
    move-object v2, v10

    .line 591
    move/from16 v24, v12

    .line 592
    .line 593
    iget v1, v2, Lt/y;->e:F

    .line 594
    .line 595
    iget-object v3, v0, Lt/o;->e:Lt/y;

    .line 596
    .line 597
    iget v4, v3, Lt/y;->e:F

    .line 598
    .line 599
    invoke-static {v4, v1, v8, v1}, Lea/q;->d(FFFF)F

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    iget v4, v2, Lt/y;->f:F

    .line 604
    .line 605
    iget v5, v3, Lt/y;->f:F

    .line 606
    .line 607
    invoke-static {v5, v4, v8, v4}, Lea/q;->d(FFFF)F

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    iget v5, v2, Lt/y;->g:F

    .line 612
    .line 613
    iget v6, v3, Lt/y;->g:F

    .line 614
    .line 615
    invoke-static {v6, v5, v8, v5}, Lea/q;->d(FFFF)F

    .line 616
    .line 617
    .line 618
    move-result v9

    .line 619
    iget v2, v2, Lt/y;->h:F

    .line 620
    .line 621
    iget v3, v3, Lt/y;->h:F

    .line 622
    .line 623
    invoke-static {v3, v2, v8, v2}, Lea/q;->d(FFFF)F

    .line 624
    .line 625
    .line 626
    move-result v10

    .line 627
    const/high16 v11, 0x3f000000    # 0.5f

    .line 628
    .line 629
    add-float/2addr v1, v11

    .line 630
    float-to-int v12, v1

    .line 631
    add-float/2addr v4, v11

    .line 632
    float-to-int v11, v4

    .line 633
    add-float/2addr v1, v9

    .line 634
    float-to-int v1, v1

    .line 635
    add-float/2addr v4, v10

    .line 636
    float-to-int v4, v4

    .line 637
    sub-int v9, v1, v12

    .line 638
    .line 639
    sub-int v10, v4, v11

    .line 640
    .line 641
    cmpl-float v5, v6, v5

    .line 642
    .line 643
    if-nez v5, :cond_1c

    .line 644
    .line 645
    cmpl-float v2, v3, v2

    .line 646
    .line 647
    if-eqz v2, :cond_1d

    .line 648
    .line 649
    :cond_1c
    const/high16 v2, 0x40000000    # 2.0f

    .line 650
    .line 651
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    invoke-virtual {v7, v3, v2}, Landroid/view/View;->measure(II)V

    .line 660
    .line 661
    .line 662
    :cond_1d
    invoke-virtual {v7, v12, v11, v1, v4}, Landroid/view/View;->layout(IIII)V

    .line 663
    .line 664
    .line 665
    move/from16 v12, v24

    .line 666
    .line 667
    :cond_1e
    :goto_d
    iget-object v1, v0, Lt/o;->x:Ljava/util/HashMap;

    .line 668
    .line 669
    if-eqz v1, :cond_20

    .line 670
    .line 671
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 680
    .line 681
    .line 682
    move-result v2

    .line 683
    if-eqz v2, :cond_20

    .line 684
    .line 685
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    check-cast v2, Lt/i;

    .line 690
    .line 691
    instance-of v3, v2, Lt/g;

    .line 692
    .line 693
    if-eqz v3, :cond_1f

    .line 694
    .line 695
    check-cast v2, Lt/g;

    .line 696
    .line 697
    iget-object v3, v0, Lt/o;->o:[D

    .line 698
    .line 699
    const/4 v4, 0x0

    .line 700
    aget-wide v5, v3, v4

    .line 701
    .line 702
    const/4 v9, 0x1

    .line 703
    aget-wide v10, v3, v9

    .line 704
    .line 705
    invoke-virtual {v2, v8}, Lt/i;->a(F)F

    .line 706
    .line 707
    .line 708
    move-result v2

    .line 709
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 710
    .line 711
    .line 712
    move-result-wide v5

    .line 713
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    .line 714
    .line 715
    .line 716
    move-result-wide v5

    .line 717
    double-to-float v3, v5

    .line 718
    add-float/2addr v2, v3

    .line 719
    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    .line 720
    .line 721
    .line 722
    goto :goto_e

    .line 723
    :cond_1f
    const/4 v4, 0x0

    .line 724
    const/4 v9, 0x1

    .line 725
    invoke-virtual {v2, v7, v8}, Lt/i;->c(Landroid/view/View;F)V

    .line 726
    .line 727
    .line 728
    goto :goto_e

    .line 729
    :cond_20
    return v12
.end method

.method public final d(Lt/y;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lt/o;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    int-to-float v0, v0

    .line 9
    iget-object v1, p0, Lt/o;->a:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    int-to-float v1, v1

    .line 17
    iget-object v2, p0, Lt/o;->a:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    iget-object v3, p0, Lt/o;->a:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    int-to-float v3, v3

    .line 31
    iput v0, p1, Lt/y;->e:F

    .line 32
    .line 33
    iput v1, p1, Lt/y;->f:F

    .line 34
    .line 35
    iput v2, p1, Lt/y;->g:F

    .line 36
    .line 37
    iput v3, p1, Lt/y;->h:F

    .line 38
    .line 39
    return-void
.end method

.method public final e(J)V
    .locals 37

    move-object/from16 v0, p0

    .line 1
    const-string v1, "translationY"

    const-string v2, "translationX"

    const-string v3, "scaleY"

    const-string v4, "scaleX"

    const-string v5, "rotationY"

    const-string v6, "rotationX"

    const-string v7, "progress"

    const-string v8, "transitionPathRotate"

    const-string v9, "rotation"

    const-string v10, "elevation"

    const-string v11, "alpha"

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget v13, v0, Lt/o;->y:I

    iget-object v14, v0, Lt/o;->d:Lt/y;

    move-object/from16 v23, v15

    const/4 v15, -0x1

    if-eq v13, v15, :cond_0

    .line 7
    iput v13, v14, Lt/y;->j:I

    .line 8
    :cond_0
    iget-object v13, v0, Lt/o;->f:Lt/n;

    iget v15, v13, Lt/n;->a:F

    move-object/from16 v24, v14

    .line 9
    iget-object v14, v0, Lt/o;->g:Lt/n;

    iget v0, v14, Lt/n;->a:F

    invoke-static {v15, v0}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    iget v0, v13, Lt/n;->d:F

    iget v15, v14, Lt/n;->d:F

    invoke-static {v0, v15}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v12, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    iget v0, v13, Lt/n;->c:I

    iget v15, v14, Lt/n;->c:I

    move-object/from16 v25, v10

    if-eq v0, v15, :cond_4

    iget v10, v13, Lt/n;->b:I

    if-nez v10, :cond_4

    if-eqz v0, :cond_3

    if-nez v15, :cond_4

    .line 14
    :cond_3
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    iget v0, v13, Lt/n;->e:F

    iget v10, v14, Lt/n;->e:F

    invoke-static {v0, v10}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v12, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    iget v0, v13, Lt/n;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v14, Lt/n;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    .line 18
    :cond_6
    invoke-virtual {v12, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_7
    iget v0, v13, Lt/n;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v14, Lt/n;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    .line 20
    :cond_8
    invoke-virtual {v12, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_9
    iget v0, v13, Lt/n;->f:F

    iget v10, v14, Lt/n;->f:F

    invoke-static {v0, v10}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {v12, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_a
    iget v0, v13, Lt/n;->g:F

    iget v10, v14, Lt/n;->g:F

    invoke-static {v0, v10}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {v12, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_b
    iget v0, v13, Lt/n;->j:F

    iget v10, v14, Lt/n;->j:F

    invoke-static {v0, v10}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    const-string v0, "transformPivotX"

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_c
    iget v0, v13, Lt/n;->k:F

    iget v10, v14, Lt/n;->k:F

    invoke-static {v0, v10}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    const-string v0, "transformPivotY"

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_d
    iget v0, v13, Lt/n;->h:F

    iget v10, v14, Lt/n;->h:F

    invoke-static {v0, v10}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_e
    iget v0, v13, Lt/n;->i:F

    iget v10, v14, Lt/n;->i:F

    invoke-static {v0, v10}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    invoke-virtual {v12, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_f
    iget v0, v13, Lt/n;->l:F

    iget v10, v14, Lt/n;->l:F

    invoke-static {v0, v10}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 34
    invoke-virtual {v12, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_10
    iget v0, v13, Lt/n;->m:F

    iget v10, v14, Lt/n;->m:F

    invoke-static {v0, v10}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36
    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_11
    iget v0, v13, Lt/n;->n:F

    iget v10, v14, Lt/n;->n:F

    invoke-static {v0, v10}, Lt/n;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 38
    const-string v0, "translationZ"

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    move-object/from16 v0, p0

    .line 39
    iget-object v10, v0, Lt/o;->u:Ljava/util/ArrayList;

    if-eqz v10, :cond_14

    .line 40
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_13

    goto :goto_0

    .line 41
    :cond_13
    invoke-static {v15}, La/e;->l(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v1

    .line 42
    throw v1

    .line 43
    :cond_14
    :goto_0
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v15

    move-object/from16 v26, v14

    const-string v14, "CUSTOM,"

    move-object/from16 v27, v13

    const-string v13, ","

    if-nez v15, :cond_2d

    .line 44
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v0, Lt/o;->w:Ljava/util/HashMap;

    .line 45
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_28

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v15

    move-object/from16 v15, v28

    check-cast v15, Ljava/lang/String;

    .line 46
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_16

    move-object/from16 v28, v12

    .line 47
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 48
    invoke-virtual {v15, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    const/16 v22, 0x1

    aget-object v30, v30, v22

    .line 49
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-nez v31, :cond_15

    move-object/from16 v31, v14

    .line 50
    new-instance v14, Lt/e0;

    .line 51
    invoke-direct {v14}, Lt/h0;-><init>()V

    .line 52
    invoke-virtual {v15, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    aget-object v30, v30, v22

    .line 53
    iput-object v12, v14, Lt/e0;->f:Landroid/util/SparseArray;

    move-object/from16 v12, v25

    move-object/from16 v25, v6

    goto/16 :goto_7

    .line 54
    :cond_15
    invoke-static/range {v30 .. v30}, La/e;->l(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v1

    .line 55
    throw v1

    :cond_16
    move-object/from16 v28, v12

    move-object/from16 v31, v14

    .line 56
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :goto_2
    move-object/from16 v12, v25

    :goto_3
    const/4 v14, -0x1

    goto/16 :goto_5

    :sswitch_0
    const-string v12, "waveOffset"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    goto :goto_2

    :cond_17
    const/16 v12, 0xf

    move-object/from16 v12, v25

    const/16 v14, 0xf

    goto/16 :goto_5

    :sswitch_1
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    goto :goto_2

    :cond_18
    const/16 v12, 0xe

    move-object/from16 v12, v25

    const/16 v14, 0xe

    goto/16 :goto_5

    :sswitch_2
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    goto :goto_2

    :cond_19
    const/16 v12, 0xd

    move-object/from16 v12, v25

    const/16 v14, 0xd

    goto/16 :goto_5

    :sswitch_3
    move-object/from16 v12, v25

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    goto/16 :goto_4

    :cond_1a
    const/16 v14, 0xc

    goto/16 :goto_5

    :sswitch_4
    move-object/from16 v12, v25

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    goto/16 :goto_4

    :cond_1b
    const/16 v14, 0xb

    goto/16 :goto_5

    :sswitch_5
    move-object/from16 v12, v25

    const-string v14, "transformPivotY"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c

    goto/16 :goto_4

    :cond_1c
    const/16 v14, 0xa

    goto/16 :goto_5

    :sswitch_6
    move-object/from16 v12, v25

    const-string v14, "transformPivotX"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1d

    goto/16 :goto_4

    :cond_1d
    const/16 v14, 0x9

    goto/16 :goto_5

    :sswitch_7
    move-object/from16 v12, v25

    const-string v14, "waveVariesBy"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e

    goto/16 :goto_4

    :cond_1e
    const/16 v14, 0x8

    goto/16 :goto_5

    :sswitch_8
    move-object/from16 v12, v25

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1f

    goto :goto_4

    :cond_1f
    const/4 v14, 0x7

    goto :goto_5

    :sswitch_9
    move-object/from16 v12, v25

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20

    goto :goto_4

    :cond_20
    const/4 v14, 0x6

    goto :goto_5

    :sswitch_a
    move-object/from16 v12, v25

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_21

    goto :goto_4

    :cond_21
    const/4 v14, 0x5

    goto :goto_5

    :sswitch_b
    move-object/from16 v12, v25

    const-string v14, "translationZ"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_22

    goto :goto_4

    :cond_22
    const/4 v14, 0x4

    goto :goto_5

    :sswitch_c
    move-object/from16 v12, v25

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_23

    goto :goto_4

    :cond_23
    const/4 v14, 0x3

    goto :goto_5

    :sswitch_d
    move-object/from16 v12, v25

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_24

    goto :goto_4

    :cond_24
    const/4 v14, 0x2

    goto :goto_5

    :sswitch_e
    move-object/from16 v12, v25

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_25

    goto :goto_4

    :cond_25
    const/4 v14, 0x1

    goto :goto_5

    :sswitch_f
    move-object/from16 v12, v25

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_26

    :goto_4
    goto/16 :goto_3

    :cond_26
    const/4 v14, 0x0

    :goto_5
    packed-switch v14, :pswitch_data_0

    move-object/from16 v25, v6

    const/4 v14, 0x0

    goto/16 :goto_7

    .line 57
    :pswitch_0
    new-instance v14, Lt/d0;

    move-object/from16 v25, v6

    const/4 v6, 0x0

    .line 58
    invoke-direct {v14, v6}, Lt/d0;-><init>(I)V

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v25, v6

    const/4 v6, 0x0

    .line 59
    new-instance v14, Lt/d0;

    .line 60
    invoke-direct {v14, v6}, Lt/d0;-><init>(I)V

    goto/16 :goto_7

    :pswitch_2
    move-object/from16 v25, v6

    .line 61
    new-instance v6, Lt/f0;

    .line 62
    invoke-direct {v6}, Lt/h0;-><init>()V

    :goto_6
    move-object v14, v6

    goto/16 :goto_7

    :pswitch_3
    move-object/from16 v25, v6

    .line 63
    new-instance v6, Lt/d0;

    const/4 v14, 0x1

    .line 64
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :pswitch_4
    move-object/from16 v25, v6

    .line 65
    new-instance v6, Lt/d0;

    const/4 v14, 0x4

    .line 66
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :pswitch_5
    move-object/from16 v25, v6

    .line 67
    new-instance v6, Lt/d0;

    const/4 v14, 0x3

    .line 68
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :pswitch_6
    move-object/from16 v25, v6

    .line 69
    new-instance v6, Lt/d0;

    const/4 v14, 0x2

    .line 70
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :pswitch_7
    move-object/from16 v25, v6

    .line 71
    new-instance v6, Lt/d0;

    const/4 v14, 0x0

    .line 72
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :pswitch_8
    move-object/from16 v25, v6

    .line 73
    new-instance v6, Lt/d0;

    const/16 v14, 0x8

    .line 74
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :pswitch_9
    move-object/from16 v25, v6

    .line 75
    new-instance v6, Lt/d0;

    const/4 v14, 0x7

    .line 76
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :pswitch_a
    move-object/from16 v25, v6

    .line 77
    new-instance v6, Lt/g0;

    .line 78
    invoke-direct {v6}, Lt/h0;-><init>()V

    const/4 v14, 0x0

    .line 79
    iput-boolean v14, v6, Lt/g0;->f:Z

    goto :goto_6

    :pswitch_b
    move-object/from16 v25, v6

    .line 80
    new-instance v6, Lt/d0;

    const/16 v14, 0xb

    .line 81
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :pswitch_c
    move-object/from16 v25, v6

    .line 82
    new-instance v6, Lt/d0;

    const/16 v14, 0xa

    .line 83
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :pswitch_d
    move-object/from16 v25, v6

    .line 84
    new-instance v6, Lt/d0;

    const/16 v14, 0x9

    .line 85
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :pswitch_e
    move-object/from16 v25, v6

    .line 86
    new-instance v6, Lt/d0;

    const/4 v14, 0x6

    .line 87
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :pswitch_f
    move-object/from16 v25, v6

    .line 88
    new-instance v6, Lt/d0;

    const/4 v14, 0x5

    .line 89
    invoke-direct {v6, v14}, Lt/d0;-><init>(I)V

    goto :goto_6

    :goto_7
    if-nez v14, :cond_27

    :goto_8
    move-object/from16 v6, v25

    move-object/from16 v15, v29

    move-object/from16 v14, v31

    move-object/from16 v25, v12

    move-object/from16 v12, v28

    goto/16 :goto_1

    .line 90
    :cond_27
    iput-object v15, v14, Lt/h0;->e:Ljava/lang/String;

    .line 91
    iget-object v6, v0, Lt/o;->w:Ljava/util/HashMap;

    invoke-virtual {v6, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_28
    move-object/from16 v28, v12

    move-object/from16 v31, v14

    move-object/from16 v12, v25

    move-object/from16 v25, v6

    if-eqz v10, :cond_2a

    .line 92
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_29

    goto :goto_9

    :cond_29
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 93
    :cond_2a
    iget-object v6, v0, Lt/o;->w:Ljava/util/HashMap;

    move-object/from16 v14, v27

    const/4 v15, 0x0

    invoke-virtual {v14, v6, v15}, Lt/n;->a(Ljava/util/HashMap;I)V

    .line 94
    iget-object v6, v0, Lt/o;->w:Ljava/util/HashMap;

    const/16 v14, 0x64

    move-object/from16 v15, v26

    invoke-virtual {v15, v6, v14}, Lt/n;->a(Ljava/util/HashMap;I)V

    .line 95
    iget-object v6, v0, Lt/o;->w:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v15, v23

    .line 96
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2b

    .line 97
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v26, v15

    move/from16 v36, v23

    move-object/from16 v23, v6

    move/from16 v6, v36

    goto :goto_b

    :cond_2b
    move-object/from16 v23, v6

    move-object/from16 v26, v15

    const/4 v6, 0x0

    .line 98
    :goto_b
    iget-object v15, v0, Lt/o;->w:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lt/h0;

    invoke-virtual {v14, v6}, Lt/h0;->d(I)V

    move-object/from16 v6, v23

    move-object/from16 v23, v26

    goto :goto_a

    :cond_2c
    move-object/from16 v26, v23

    goto :goto_c

    :cond_2d
    move-object/from16 v28, v12

    move-object/from16 v31, v14

    move-object/from16 v26, v23

    move-object/from16 v12, v25

    move-object/from16 v25, v6

    .line 99
    :goto_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_43

    .line 100
    iget-object v6, v0, Lt/o;->v:Ljava/util/HashMap;

    if-nez v6, :cond_2e

    .line 101
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lt/o;->v:Ljava/util/HashMap;

    .line 102
    :cond_2e
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 103
    iget-object v15, v0, Lt/o;->v:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2f

    goto :goto_d

    :cond_2f
    move-object/from16 v15, v31

    .line 104
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_31

    move-object/from16 v18, v6

    .line 105
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 106
    invoke-virtual {v14, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v22, 0x1

    aget-object v23, v23, v22

    .line 107
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_30

    move-object/from16 v31, v15

    .line 108
    new-instance v15, Lt/j0;

    .line 109
    invoke-direct {v15}, Lt/m0;-><init>()V

    move-object/from16 v27, v10

    .line 110
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, v15, Lt/j0;->h:Landroid/util/SparseArray;

    .line 111
    invoke-virtual {v14, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/16 v22, 0x1

    aget-object v10, v10, v22

    .line 112
    iput-object v6, v15, Lt/j0;->g:Landroid/util/SparseArray;

    move-object v10, v15

    move-object v15, v5

    :goto_e
    move-wide/from16 v5, p1

    goto/16 :goto_14

    .line 113
    :cond_30
    invoke-static/range {v23 .. v23}, La/e;->l(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v1

    .line 114
    throw v1

    :cond_31
    move-object/from16 v18, v6

    move-object/from16 v27, v10

    move-object/from16 v31, v15

    .line 115
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :goto_f
    move-object/from16 v6, v25

    :goto_10
    const/4 v10, -0x1

    goto/16 :goto_11

    :sswitch_10
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    goto :goto_f

    :cond_32
    const/16 v6, 0xb

    move-object/from16 v6, v25

    const/16 v10, 0xb

    goto/16 :goto_11

    :sswitch_11
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    goto :goto_f

    :cond_33
    const/16 v6, 0xa

    move-object/from16 v6, v25

    const/16 v10, 0xa

    goto/16 :goto_11

    :sswitch_12
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    goto :goto_f

    :cond_34
    move-object/from16 v6, v25

    const/16 v10, 0x9

    goto/16 :goto_11

    :sswitch_13
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    goto :goto_f

    :cond_35
    move-object/from16 v6, v25

    const/16 v10, 0x8

    goto/16 :goto_11

    :sswitch_14
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    goto :goto_f

    :cond_36
    move-object/from16 v6, v25

    const/4 v10, 0x7

    goto :goto_11

    :sswitch_15
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    goto :goto_f

    :cond_37
    move-object/from16 v6, v25

    const/4 v10, 0x6

    goto :goto_11

    :sswitch_16
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    goto :goto_f

    :cond_38
    move-object/from16 v6, v25

    const/4 v10, 0x5

    goto :goto_11

    :sswitch_17
    const-string v6, "translationZ"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_f

    :cond_39
    move-object/from16 v6, v25

    const/4 v10, 0x4

    goto :goto_11

    :sswitch_18
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    goto :goto_f

    :cond_3a
    move-object/from16 v6, v25

    const/4 v10, 0x3

    goto :goto_11

    :sswitch_19
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    goto :goto_f

    :cond_3b
    move-object/from16 v6, v25

    const/4 v10, 0x2

    goto :goto_11

    :sswitch_1a
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    goto/16 :goto_f

    :cond_3c
    move-object/from16 v6, v25

    const/4 v10, 0x1

    goto :goto_11

    :sswitch_1b
    move-object/from16 v6, v25

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3d

    goto/16 :goto_10

    :cond_3d
    const/4 v10, 0x0

    :goto_11
    packed-switch v10, :pswitch_data_1

    move-object v15, v5

    move-object/from16 v25, v6

    const/4 v10, 0x0

    goto/16 :goto_e

    .line 116
    :pswitch_10
    new-instance v10, Lt/i0;

    const/4 v15, 0x0

    .line 117
    invoke-direct {v10, v15}, Lt/i0;-><init>(I)V

    :goto_12
    move-object v15, v5

    move-object/from16 v25, v6

    move-wide/from16 v5, p1

    goto :goto_13

    .line 118
    :pswitch_11
    new-instance v10, Lt/k0;

    .line 119
    invoke-direct {v10}, Lt/m0;-><init>()V

    goto :goto_12

    .line 120
    :pswitch_12
    new-instance v10, Lt/i0;

    const/4 v15, 0x1

    .line 121
    invoke-direct {v10, v15}, Lt/i0;-><init>(I)V

    goto :goto_12

    .line 122
    :pswitch_13
    new-instance v10, Lt/i0;

    const/4 v15, 0x2

    .line 123
    invoke-direct {v10, v15}, Lt/i0;-><init>(I)V

    goto :goto_12

    .line 124
    :pswitch_14
    new-instance v10, Lt/i0;

    const/4 v15, 0x6

    .line 125
    invoke-direct {v10, v15}, Lt/i0;-><init>(I)V

    goto :goto_12

    .line 126
    :pswitch_15
    new-instance v10, Lt/i0;

    const/4 v15, 0x5

    .line 127
    invoke-direct {v10, v15}, Lt/i0;-><init>(I)V

    goto :goto_12

    .line 128
    :pswitch_16
    new-instance v10, Lt/l0;

    .line 129
    invoke-direct {v10}, Lt/m0;-><init>()V

    const/4 v15, 0x0

    .line 130
    iput-boolean v15, v10, Lt/l0;->g:Z

    goto :goto_12

    .line 131
    :pswitch_17
    new-instance v10, Lt/i0;

    const/16 v15, 0x9

    .line 132
    invoke-direct {v10, v15}, Lt/i0;-><init>(I)V

    goto :goto_12

    .line 133
    :pswitch_18
    new-instance v10, Lt/i0;

    const/16 v15, 0x8

    .line 134
    invoke-direct {v10, v15}, Lt/i0;-><init>(I)V

    goto :goto_12

    .line 135
    :pswitch_19
    new-instance v10, Lt/i0;

    const/4 v15, 0x7

    .line 136
    invoke-direct {v10, v15}, Lt/i0;-><init>(I)V

    goto :goto_12

    .line 137
    :pswitch_1a
    new-instance v10, Lt/i0;

    const/4 v15, 0x4

    .line 138
    invoke-direct {v10, v15}, Lt/i0;-><init>(I)V

    goto :goto_12

    .line 139
    :pswitch_1b
    new-instance v10, Lt/i0;

    const/4 v15, 0x3

    .line 140
    invoke-direct {v10, v15}, Lt/i0;-><init>(I)V

    goto :goto_12

    .line 141
    :goto_13
    iput-wide v5, v10, Lt/m0;->e:J

    :goto_14
    if-nez v10, :cond_3e

    :goto_15
    move-object v5, v15

    move-object/from16 v6, v18

    move-object/from16 v10, v27

    goto/16 :goto_d

    .line 142
    :cond_3e
    iput-object v14, v10, Lt/m0;->b:Ljava/lang/String;

    .line 143
    iget-object v5, v0, Lt/o;->v:Ljava/util/HashMap;

    invoke-virtual {v5, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_3f
    move-object v15, v5

    move-object/from16 v27, v10

    if-eqz v27, :cond_41

    .line 144
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_40

    goto :goto_16

    :cond_40
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 145
    :cond_41
    iget-object v5, v0, Lt/o;->v:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v10, v26

    .line 146
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_42

    .line 147
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_18

    :cond_42
    const/4 v13, 0x0

    .line 148
    :goto_18
    iget-object v14, v0, Lt/o;->v:Ljava/util/HashMap;

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt/m0;

    invoke-virtual {v6, v13}, Lt/m0;->c(I)V

    move-object/from16 v26, v10

    goto :goto_17

    :cond_43
    move-object v15, v5

    move-object/from16 v27, v10

    .line 149
    :cond_44
    iget-object v5, v0, Lt/o;->s:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x2

    add-int/lit8 v14, v6, 0x2

    new-array v10, v14, [Lt/y;

    const/4 v13, 0x0

    .line 150
    aput-object v24, v10, v13

    const/16 v18, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 151
    iget-object v13, v0, Lt/o;->e:Lt/y;

    aput-object v13, v10, v6

    .line 152
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_45

    iget v6, v0, Lt/o;->c:I

    move-object/from16 v18, v15

    const/4 v15, -0x1

    if-ne v6, v15, :cond_46

    const/4 v6, 0x0

    .line 153
    iput v6, v0, Lt/o;->c:I

    goto :goto_19

    :cond_45
    move-object/from16 v18, v15

    .line 154
    :cond_46
    :goto_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lt/y;

    const/16 v22, 0x1

    add-int/lit8 v23, v6, 0x1

    .line 155
    aput-object v15, v10, v6

    move/from16 v6, v23

    goto :goto_1a

    .line 156
    :cond_47
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 157
    iget-object v6, v13, Lt/y;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 p1, v6

    move-object/from16 v15, v24

    .line 158
    iget-object v6, v15, Lt/y;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v13}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v24, v15

    move-object/from16 v15, v31

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v15, v28

    invoke-virtual {v15, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 160
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_48
    move-object/from16 v24, v15

    move-object/from16 v15, v28

    :cond_49
    :goto_1c
    move-object/from16 v6, p1

    move-object/from16 v28, v15

    goto :goto_1b

    :cond_4a
    const/4 v6, 0x0

    .line 161
    new-array v13, v6, [Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v0, Lt/o;->p:[Ljava/lang/String;

    .line 162
    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, v0, Lt/o;->q:[I

    const/4 v5, 0x0

    .line 163
    :goto_1d
    iget-object v6, v0, Lt/o;->p:[Ljava/lang/String;

    array-length v13, v6

    if-ge v5, v13, :cond_4d

    .line 164
    aget-object v6, v6, v5

    .line 165
    iget-object v13, v0, Lt/o;->q:[I

    const/4 v15, 0x0

    aput v15, v13, v5

    const/4 v13, 0x0

    :goto_1e
    if-ge v13, v14, :cond_4b

    .line 166
    aget-object v15, v10, v13

    iget-object v15, v15, Lt/y;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v6}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4c

    .line 167
    iget-object v15, v0, Lt/o;->q:[I

    aget v23, v15, v5

    aget-object v13, v10, v13

    iget-object v13, v13, Lt/y;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly/a;

    invoke-virtual {v6}, Ly/a;->d()I

    move-result v6

    add-int v6, v6, v23

    aput v6, v15, v5

    :cond_4b
    const/4 v15, 0x1

    goto :goto_1f

    :cond_4c
    const/4 v15, 0x1

    add-int/2addr v13, v15

    goto :goto_1e

    :goto_1f
    add-int/2addr v5, v15

    goto :goto_1d

    :cond_4d
    const/4 v5, 0x0

    .line 168
    aget-object v13, v10, v5

    iget v5, v13, Lt/y;->j:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_4e

    const/4 v5, 0x1

    goto :goto_20

    :cond_4e
    const/4 v5, 0x0

    .line 169
    :goto_20
    array-length v6, v6

    const/16 v13, 0x12

    add-int/2addr v13, v6

    new-array v6, v13, [Z

    const/4 v15, 0x1

    :goto_21
    if-ge v15, v14, :cond_4f

    move-object/from16 v23, v2

    .line 170
    aget-object v2, v10, v15

    const/16 v22, 0x1

    add-int/lit8 v24, v15, -0x1

    move-object/from16 v26, v1

    aget-object v1, v10, v24

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v21, 0x0

    .line 171
    aget-boolean v24, v6, v21

    move-object/from16 v28, v7

    iget v7, v2, Lt/y;->d:F

    move-object/from16 v29, v4

    iget v4, v1, Lt/y;->d:F

    invoke-static {v7, v4}, Lt/y;->b(FF)Z

    move-result v4

    or-int v4, v24, v4

    aput-boolean v4, v6, v21

    .line 172
    aget-boolean v4, v6, v22

    iget v7, v2, Lt/y;->e:F

    move-object/from16 v24, v3

    iget v3, v1, Lt/y;->e:F

    invoke-static {v7, v3}, Lt/y;->b(FF)Z

    move-result v3

    or-int/2addr v3, v5

    or-int/2addr v3, v4

    aput-boolean v3, v6, v22

    const/4 v3, 0x2

    .line 173
    aget-boolean v4, v6, v3

    iget v7, v2, Lt/y;->f:F

    iget v3, v1, Lt/y;->f:F

    invoke-static {v7, v3}, Lt/y;->b(FF)Z

    move-result v3

    or-int/2addr v3, v5

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aput-boolean v3, v6, v4

    const/4 v3, 0x3

    .line 174
    aget-boolean v4, v6, v3

    iget v7, v2, Lt/y;->g:F

    iget v3, v1, Lt/y;->g:F

    invoke-static {v7, v3}, Lt/y;->b(FF)Z

    move-result v3

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aput-boolean v3, v6, v4

    const/4 v3, 0x4

    .line 175
    aget-boolean v4, v6, v3

    iget v2, v2, Lt/y;->h:F

    iget v1, v1, Lt/y;->h:F

    invoke-static {v2, v1}, Lt/y;->b(FF)Z

    move-result v1

    or-int/2addr v1, v4

    aput-boolean v1, v6, v3

    const/16 v22, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v1, v26

    move-object/from16 v7, v28

    move-object/from16 v4, v29

    goto :goto_21

    :cond_4f
    move-object/from16 v26, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v29, v4

    move-object/from16 v28, v7

    const/16 v22, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_22
    if-ge v2, v13, :cond_51

    .line 176
    aget-boolean v3, v6, v2

    if-eqz v3, :cond_50

    add-int/lit8 v1, v1, 0x1

    :cond_50
    add-int/lit8 v2, v2, 0x1

    const/16 v22, 0x1

    goto :goto_22

    .line 177
    :cond_51
    new-array v2, v1, [I

    iput-object v2, v0, Lt/o;->m:[I

    .line 178
    new-array v2, v1, [D

    iput-object v2, v0, Lt/o;->n:[D

    .line 179
    new-array v1, v1, [D

    iput-object v1, v0, Lt/o;->o:[D

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_23
    if-ge v2, v13, :cond_53

    .line 180
    aget-boolean v3, v6, v2

    if-eqz v3, :cond_52

    .line 181
    iget-object v3, v0, Lt/o;->m:[I

    const/4 v4, 0x1

    add-int/lit8 v5, v1, 0x1

    aput v2, v3, v1

    move v1, v5

    goto :goto_24

    :cond_52
    const/4 v4, 0x1

    :goto_24
    add-int/2addr v2, v4

    goto :goto_23

    :cond_53
    const/4 v4, 0x1

    .line 182
    iget-object v1, v0, Lt/o;->m:[I

    array-length v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v14, v3, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 183
    new-array v2, v14, [D

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v14, :cond_56

    .line 184
    aget-object v4, v10, v3

    aget-object v5, v1, v3

    iget-object v6, v0, Lt/o;->m:[I

    .line 185
    iget v7, v4, Lt/y;->d:F

    .line 186
    iget v13, v4, Lt/y;->e:F

    iget v15, v4, Lt/y;->f:F

    move-object/from16 v30, v9

    iget v9, v4, Lt/y;->g:F

    move-object/from16 v31, v12

    iget v12, v4, Lt/y;->h:F

    iget v4, v4, Lt/y;->i:F

    move-object/from16 v32, v8

    move-object/from16 v33, v11

    const/4 v8, 0x6

    new-array v11, v8, [F

    const/16 v17, 0x0

    aput v7, v11, v17

    const/4 v7, 0x1

    aput v13, v11, v7

    const/4 v13, 0x2

    aput v15, v11, v13

    const/4 v13, 0x3

    aput v9, v11, v13

    const/4 v9, 0x4

    aput v12, v11, v9

    const/4 v9, 0x5

    aput v4, v11, v9

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 187
    :goto_26
    array-length v12, v6

    if-ge v4, v12, :cond_55

    .line 188
    aget v12, v6, v4

    if-ge v12, v8, :cond_54

    add-int/lit8 v8, v9, 0x1

    .line 189
    aget v12, v11, v12

    float-to-double v12, v12

    aput-wide v12, v5, v9

    move v9, v8

    :cond_54
    add-int/2addr v4, v7

    const/4 v8, 0x6

    goto :goto_26

    .line 190
    :cond_55
    aget-object v4, v10, v3

    iget v4, v4, Lt/y;->c:F

    float-to-double v4, v4

    aput-wide v4, v2, v3

    add-int/2addr v3, v7

    move-object/from16 v9, v30

    move-object/from16 v12, v31

    move-object/from16 v8, v32

    move-object/from16 v11, v33

    goto :goto_25

    :cond_56
    move-object/from16 v32, v8

    move-object/from16 v30, v9

    move-object/from16 v33, v11

    move-object/from16 v31, v12

    const/4 v3, 0x0

    .line 191
    :goto_27
    iget-object v4, v0, Lt/o;->m:[I

    array-length v5, v4

    if-ge v3, v5, :cond_58

    .line 192
    aget v4, v4, v3

    const/4 v5, 0x6

    if-ge v4, v5, :cond_57

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lt/y;->n:[Ljava/lang/String;

    iget-object v6, v0, Lt/o;->m:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    const-string v6, " ["

    .line 194
    invoke-static {v4, v5, v6}, La/e;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v14, :cond_57

    invoke-static {v4}, Lea/q;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 195
    aget-object v6, v1, v5

    aget-wide v7, v6, v3

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_28

    :cond_57
    const/4 v6, 0x1

    add-int/2addr v3, v6

    goto :goto_27

    :cond_58
    const/4 v6, 0x1

    .line 196
    iget-object v3, v0, Lt/o;->p:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v3, v6

    new-array v3, v3, [Lr4/b;

    iput-object v3, v0, Lt/o;->h:[Lr4/b;

    const/4 v3, 0x0

    .line 197
    :goto_29
    iget-object v4, v0, Lt/o;->p:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_5e

    .line 198
    aget-object v4, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2a
    if-ge v5, v14, :cond_5d

    .line 199
    aget-object v9, v10, v5

    .line 200
    iget-object v9, v9, Lt/y;->k:Ljava/util/LinkedHashMap;

    .line 201
    invoke-virtual {v9, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    if-nez v8, :cond_59

    .line 202
    new-array v7, v14, [D

    .line 203
    aget-object v8, v10, v5

    .line 204
    iget-object v8, v8, Lt/y;->k:Ljava/util/LinkedHashMap;

    .line 205
    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly/a;

    invoke-virtual {v8}, Ly/a;->d()I

    move-result v8

    const/4 v9, 0x2

    .line 206
    new-array v11, v9, [I

    const/4 v9, 0x1

    aput v8, v11, v9

    const/4 v8, 0x0

    aput v14, v11, v8

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 207
    :cond_59
    aget-object v9, v10, v5

    iget v11, v9, Lt/y;->c:F

    float-to-double v11, v11

    aput-wide v11, v7, v6

    .line 208
    aget-object v11, v8, v6

    .line 209
    iget-object v9, v9, Lt/y;->k:Ljava/util/LinkedHashMap;

    .line 210
    invoke-virtual {v9, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ly/a;

    .line 211
    invoke-virtual {v9}, Ly/a;->d()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5b

    .line 212
    invoke-virtual {v9}, Ly/a;->b()F

    move-result v9

    move/from16 p1, v14

    float-to-double v13, v9

    const/4 v9, 0x0

    aput-wide v13, v11, v9

    :cond_5a
    move-object/from16 v34, v7

    move-object/from16 v35, v8

    const/4 v14, 0x1

    goto :goto_2c

    :cond_5b
    move/from16 p1, v14

    .line 213
    invoke-virtual {v9}, Ly/a;->d()I

    move-result v12

    .line 214
    new-array v13, v12, [F

    .line 215
    invoke-virtual {v9, v13}, Ly/a;->c([F)V

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_2b
    if-ge v9, v12, :cond_5a

    const/4 v15, 0x1

    add-int/lit8 v22, v14, 0x1

    .line 216
    aget v15, v13, v9

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    float-to-double v7, v15

    aput-wide v7, v11, v14

    const/4 v14, 0x1

    add-int/2addr v9, v14

    move/from16 v14, v22

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    goto :goto_2b

    :goto_2c
    add-int/2addr v6, v14

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    goto :goto_2d

    :cond_5c
    move/from16 p1, v14

    const/4 v14, 0x1

    :goto_2d
    add-int/2addr v5, v14

    move/from16 v14, p1

    goto/16 :goto_2a

    :cond_5d
    move/from16 p1, v14

    const/4 v14, 0x1

    .line 217
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v4

    .line 218
    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 219
    iget-object v6, v0, Lt/o;->h:[Lr4/b;

    add-int/2addr v3, v14

    iget v7, v0, Lt/o;->c:I

    invoke-static {v7, v4, v5}, Lr4/b;->k(I[D[[D)Lr4/b;

    move-result-object v4

    aput-object v4, v6, v3

    move/from16 v14, p1

    goto/16 :goto_29

    :cond_5e
    move/from16 p1, v14

    .line 220
    iget-object v3, v0, Lt/o;->h:[Lr4/b;

    iget v4, v0, Lt/o;->c:I

    invoke-static {v4, v2, v1}, Lr4/b;->k(I[D[[D)Lr4/b;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v3, v2

    .line 221
    aget-object v1, v10, v2

    iget v1, v1, Lt/y;->j:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_60

    move/from16 v6, p1

    .line 222
    new-array v1, v6, [I

    .line 223
    new-array v4, v6, [D

    const/4 v5, 0x2

    .line 224
    new-array v7, v5, [I

    const/4 v8, 0x1

    aput v5, v7, v8

    aput v6, v7, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v6, :cond_5f

    .line 225
    aget-object v7, v10, v5

    iget v8, v7, Lt/y;->j:I

    aput v8, v1, v5

    .line 226
    iget v8, v7, Lt/y;->c:F

    float-to-double v8, v8

    aput-wide v8, v4, v5

    .line 227
    aget-object v8, v2, v5

    iget v9, v7, Lt/y;->e:F

    float-to-double v11, v9

    const/4 v9, 0x0

    aput-wide v11, v8, v9

    .line 228
    iget v7, v7, Lt/y;->f:F

    float-to-double v11, v7

    const/4 v7, 0x1

    aput-wide v11, v8, v7

    add-int/2addr v5, v7

    goto :goto_2e

    .line 229
    :cond_5f
    new-instance v5, Ls/b;

    invoke-direct {v5, v1, v4, v2}, Ls/b;-><init>([I[D[[D)V

    .line 230
    iput-object v5, v0, Lt/o;->i:Ls/b;

    .line 231
    :cond_60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lt/o;->x:Ljava/util/HashMap;

    if-eqz v27, :cond_7f

    .line 232
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    const-string v4, "CUSTOM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 234
    new-instance v4, Lt/e;

    .line 235
    invoke-direct {v4}, Lt/i;-><init>()V

    const/4 v5, 0x1

    .line 236
    new-array v6, v5, [F

    iput-object v6, v4, Lt/e;->d:[F

    move-object v3, v4

    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    :goto_30
    const/4 v15, 0x3

    goto/16 :goto_39

    .line 237
    :cond_61
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :goto_31
    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    :goto_32
    const/4 v15, -0x1

    goto/16 :goto_37

    :sswitch_1c
    const-string v4, "waveOffset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    goto :goto_31

    :cond_62
    const/16 v4, 0xd

    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    const/16 v15, 0xd

    goto/16 :goto_37

    :sswitch_1d
    move-object/from16 v4, v33

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_63

    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    goto :goto_32

    :cond_63
    const/16 v5, 0xc

    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    const/16 v15, 0xc

    goto/16 :goto_37

    :sswitch_1e
    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_64

    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    goto :goto_32

    :cond_64
    const/16 v6, 0xb

    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    const/16 v15, 0xb

    goto/16 :goto_37

    :sswitch_1f
    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_65

    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    goto/16 :goto_32

    :cond_65
    const/16 v7, 0xa

    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    const/16 v15, 0xa

    goto/16 :goto_37

    :sswitch_20
    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_66

    goto :goto_33

    :cond_66
    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    const/16 v15, 0x9

    goto/16 :goto_37

    :sswitch_21
    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    const-string v8, "waveVariesBy"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_67

    :goto_33
    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    goto :goto_34

    :cond_67
    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    const/16 v15, 0x8

    goto/16 :goto_37

    :sswitch_22
    move-object/from16 v8, v24

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    if-nez v9, :cond_68

    :goto_34
    move-object/from16 v9, v29

    goto/16 :goto_32

    :cond_68
    move-object/from16 v9, v29

    const/4 v15, 0x7

    goto/16 :goto_37

    :sswitch_23
    move-object/from16 v8, v24

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    if-nez v10, :cond_69

    move-object/from16 v10, v28

    goto/16 :goto_32

    :cond_69
    move-object/from16 v10, v28

    const/4 v15, 0x6

    goto/16 :goto_37

    :sswitch_24
    move-object/from16 v8, v24

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6a

    goto :goto_35

    :cond_6a
    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    const/4 v15, 0x5

    goto/16 :goto_37

    :sswitch_25
    move-object/from16 v8, v24

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    const-string v11, "translationZ"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6b

    :goto_35
    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    goto/16 :goto_32

    :cond_6b
    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    const/4 v15, 0x4

    goto/16 :goto_37

    :sswitch_26
    move-object/from16 v8, v24

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v13, v18

    if-nez v12, :cond_6c

    move-object/from16 v12, v23

    goto :goto_36

    :cond_6c
    move-object/from16 v12, v23

    move-object/from16 v14, v25

    const/4 v15, 0x3

    goto/16 :goto_37

    :sswitch_27
    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6d

    move-object/from16 v13, v18

    goto :goto_36

    :cond_6d
    move-object/from16 v13, v18

    move-object/from16 v14, v25

    const/4 v15, 0x2

    goto :goto_37

    :sswitch_28
    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6e

    :goto_36
    move-object/from16 v14, v25

    goto/16 :goto_32

    :cond_6e
    move-object/from16 v14, v25

    const/4 v15, 0x1

    goto :goto_37

    :sswitch_29
    move-object/from16 v13, v18

    move-object/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6f

    goto/16 :goto_32

    :cond_6f
    const/4 v15, 0x0

    :goto_37
    packed-switch v15, :pswitch_data_2

    const/4 v3, 0x0

    goto/16 :goto_30

    .line 238
    :pswitch_1c
    new-instance v15, Lt/d;

    const/4 v3, 0x0

    .line 239
    invoke-direct {v15, v3}, Lt/d;-><init>(I)V

    :goto_38
    move-object v3, v15

    goto/16 :goto_30

    :pswitch_1d
    const/4 v3, 0x0

    .line 240
    new-instance v15, Lt/d;

    .line 241
    invoke-direct {v15, v3}, Lt/d;-><init>(I)V

    goto :goto_38

    .line 242
    :pswitch_1e
    new-instance v3, Lt/g;

    .line 243
    invoke-direct {v3}, Lt/i;-><init>()V

    goto/16 :goto_30

    .line 244
    :pswitch_1f
    new-instance v3, Lt/d;

    const/4 v15, 0x1

    .line 245
    invoke-direct {v3, v15}, Lt/d;-><init>(I)V

    goto/16 :goto_30

    .line 246
    :pswitch_20
    new-instance v3, Lt/d;

    const/4 v15, 0x2

    .line 247
    invoke-direct {v3, v15}, Lt/d;-><init>(I)V

    goto/16 :goto_30

    .line 248
    :pswitch_21
    new-instance v3, Lt/d;

    const/4 v15, 0x0

    .line 249
    invoke-direct {v3, v15}, Lt/d;-><init>(I)V

    goto/16 :goto_30

    .line 250
    :pswitch_22
    new-instance v3, Lt/d;

    const/4 v15, 0x6

    .line 251
    invoke-direct {v3, v15}, Lt/d;-><init>(I)V

    goto/16 :goto_30

    :pswitch_23
    const/4 v15, 0x6

    .line 252
    new-instance v3, Lt/d;

    const/4 v15, 0x5

    .line 253
    invoke-direct {v3, v15}, Lt/d;-><init>(I)V

    goto/16 :goto_30

    :pswitch_24
    const/4 v15, 0x5

    .line 254
    new-instance v3, Lt/h;

    .line 255
    invoke-direct {v3}, Lt/i;-><init>()V

    const/4 v15, 0x0

    .line 256
    iput-boolean v15, v3, Lt/h;->d:Z

    goto/16 :goto_30

    .line 257
    :pswitch_25
    new-instance v3, Lt/d;

    const/16 v15, 0x9

    .line 258
    invoke-direct {v3, v15}, Lt/d;-><init>(I)V

    goto/16 :goto_30

    :pswitch_26
    const/16 v15, 0x9

    .line 259
    new-instance v3, Lt/d;

    const/16 v15, 0x8

    .line 260
    invoke-direct {v3, v15}, Lt/d;-><init>(I)V

    goto/16 :goto_30

    :pswitch_27
    const/16 v15, 0x8

    .line 261
    new-instance v3, Lt/d;

    const/4 v15, 0x7

    .line 262
    invoke-direct {v3, v15}, Lt/d;-><init>(I)V

    goto/16 :goto_30

    .line 263
    :pswitch_28
    new-instance v3, Lt/d;

    const/4 v15, 0x4

    .line 264
    invoke-direct {v3, v15}, Lt/d;-><init>(I)V

    goto/16 :goto_30

    :pswitch_29
    const/4 v15, 0x4

    .line 265
    new-instance v3, Lt/d;

    const/4 v15, 0x3

    .line 266
    invoke-direct {v3, v15}, Lt/d;-><init>(I)V

    :goto_39
    if-nez v3, :cond_70

    :goto_3a
    move-object/from16 v33, v4

    move-object/from16 v32, v5

    move-object/from16 v31, v6

    move-object/from16 v30, v7

    move-object/from16 v24, v8

    move-object/from16 v29, v9

    move-object/from16 v28, v10

    move-object/from16 v26, v11

    move-object/from16 v23, v12

    move-object/from16 v18, v13

    move-object/from16 v25, v14

    const/4 v3, -0x1

    goto/16 :goto_2f

    .line 267
    :cond_70
    iput-object v2, v3, Lt/i;->b:Ljava/lang/String;

    .line 268
    iget-object v15, v0, Lt/o;->x:Ljava/util/HashMap;

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 269
    :cond_71
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_72

    goto :goto_3b

    :cond_72
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 270
    :cond_73
    iget-object v1, v0, Lt/o;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/i;

    .line 271
    iget-object v3, v2, Lt/i;->c:Ljava/util/ArrayList;

    .line 272
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_74

    move-object v13, v1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_44

    .line 273
    :cond_74
    new-instance v5, La0/e;

    const/4 v6, 0x7

    .line 274
    invoke-direct {v5, v6}, La0/e;-><init>(I)V

    .line 275
    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    new-array v5, v4, [D

    const/4 v7, 0x2

    .line 277
    new-array v8, v7, [I

    const/4 v9, 0x1

    aput v7, v8, v9

    const/4 v7, 0x0

    aput v4, v8, v7

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 278
    new-instance v10, Lt/f;

    .line 279
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v11, Ls/g;

    .line 281
    invoke-direct {v11, v7}, Ls/g;-><init>(I)V

    .line 282
    new-array v12, v7, [F

    iput-object v12, v11, Ls/g;->b:Ljava/lang/Object;

    .line 283
    new-array v12, v7, [D

    iput-object v12, v11, Ls/g;->c:Ljava/lang/Object;

    .line 284
    iput-object v11, v10, Lt/f;->a:Ls/g;

    .line 285
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 286
    new-array v7, v4, [F

    iput-object v7, v10, Lt/f;->b:[F

    .line 287
    new-array v7, v4, [D

    iput-object v7, v10, Lt/f;->c:[D

    .line 288
    new-array v7, v4, [F

    iput-object v7, v10, Lt/f;->d:[F

    .line 289
    new-array v7, v4, [F

    iput-object v7, v10, Lt/f;->e:[F

    .line 290
    new-array v4, v4, [F

    .line 291
    iput-object v10, v2, Lt/i;->a:Lt/f;

    .line 292
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7e

    .line 293
    iget-object v2, v2, Lt/i;->a:Lt/f;

    .line 294
    iget-object v3, v2, Lt/f;->c:[D

    .line 295
    array-length v4, v3

    const/4 v7, 0x2

    new-array v10, v7, [I

    const/4 v11, 0x1

    aput v7, v10, v11

    const/4 v12, 0x0

    aput v4, v10, v12

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 296
    iget-object v9, v2, Lt/f;->b:[F

    array-length v10, v9

    add-int/2addr v10, v11

    new-array v10, v10, [D

    iput-object v10, v2, Lt/f;->g:[D

    .line 297
    array-length v10, v9

    add-int/2addr v10, v11

    new-array v10, v10, [D

    iput-object v10, v2, Lt/f;->h:[D

    const/4 v10, 0x0

    .line 298
    aget-wide v11, v3, v10

    iget-object v13, v2, Lt/f;->d:[F

    iget-object v14, v2, Lt/f;->a:Ls/g;

    const-wide/16 v6, 0x0

    cmpl-double v15, v11, v6

    if-lez v15, :cond_75

    .line 299
    aget v11, v13, v10

    invoke-virtual {v14, v6, v7, v11}, Ls/g;->g(DF)V

    .line 300
    :cond_75
    array-length v10, v3

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    .line 301
    aget-wide v11, v3, v10

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v11, v6

    if-gez v15, :cond_76

    .line 302
    aget v10, v13, v10

    invoke-virtual {v14, v6, v7, v10}, Ls/g;->g(DF)V

    :cond_76
    const/4 v6, 0x0

    .line 303
    :goto_3d
    array-length v7, v4

    if-ge v6, v7, :cond_78

    .line 304
    aget-object v7, v4, v6

    iget-object v10, v2, Lt/f;->e:[F

    aget v10, v10, v6

    float-to-double v10, v10

    const/4 v12, 0x0

    aput-wide v10, v7, v12

    const/4 v7, 0x0

    .line 305
    :goto_3e
    array-length v10, v9

    if-ge v7, v10, :cond_77

    .line 306
    aget-object v10, v4, v7

    aget v11, v9, v7

    float-to-double v11, v11

    const/16 v22, 0x1

    aput-wide v11, v10, v22

    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    :cond_77
    const/16 v22, 0x1

    .line 307
    aget-wide v10, v3, v6

    aget v7, v13, v6

    invoke-virtual {v14, v10, v11, v7}, Ls/g;->g(DF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_78
    const/16 v22, 0x1

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    .line 308
    :goto_3f
    iget-object v7, v14, Ls/g;->b:Ljava/lang/Object;

    check-cast v7, [F

    .line 309
    array-length v11, v7

    if-ge v6, v11, :cond_79

    .line 310
    aget v7, v7, v6

    float-to-double v11, v7

    add-double/2addr v9, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_79
    const/4 v6, 0x1

    const-wide/16 v11, 0x0

    .line 311
    :goto_40
    iget-object v7, v14, Ls/g;->b:Ljava/lang/Object;

    check-cast v7, [F

    array-length v13, v7

    const/high16 v15, 0x40000000    # 2.0f

    if-ge v6, v13, :cond_7a

    add-int/lit8 v13, v6, -0x1

    .line 312
    aget v16, v7, v13

    aget v7, v7, v6

    add-float v16, v16, v7

    div-float v7, v16, v15

    .line 313
    iget-object v15, v14, Ls/g;->c:Ljava/lang/Object;

    check-cast v15, [D

    aget-wide v16, v15, v6

    aget-wide v18, v15, v13

    sub-double v16, v16, v18

    move-object v13, v1

    float-to-double v0, v7

    mul-double v16, v16, v0

    add-double v11, v16, v11

    const/4 v0, 0x1

    add-int/2addr v6, v0

    move-object/from16 v0, p0

    move-object v1, v13

    const/16 v22, 0x1

    goto :goto_40

    :cond_7a
    move-object v13, v1

    const/4 v0, 0x0

    .line 314
    :goto_41
    iget-object v1, v14, Ls/g;->b:Ljava/lang/Object;

    check-cast v1, [F

    array-length v6, v1

    if-ge v0, v6, :cond_7b

    .line 315
    aget v6, v1, v0

    float-to-double v6, v6

    div-double v16, v9, v11

    mul-double v6, v6, v16

    double-to-float v6, v6

    aput v6, v1, v0

    const/16 v22, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_7b
    const/16 v22, 0x1

    .line 316
    iget-object v0, v14, Ls/g;->d:Ljava/lang/Object;

    check-cast v0, [D

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v0, v1

    const/4 v0, 0x1

    .line 317
    :goto_42
    iget-object v1, v14, Ls/g;->b:Ljava/lang/Object;

    check-cast v1, [F

    array-length v6, v1

    if-ge v0, v6, :cond_7c

    add-int/lit8 v6, v0, -0x1

    .line 318
    aget v7, v1, v6

    aget v1, v1, v0

    add-float/2addr v7, v1

    div-float/2addr v7, v15

    .line 319
    iget-object v1, v14, Ls/g;->c:Ljava/lang/Object;

    check-cast v1, [D

    aget-wide v9, v1, v0

    aget-wide v11, v1, v6

    sub-double/2addr v9, v11

    .line 320
    iget-object v1, v14, Ls/g;->d:Ljava/lang/Object;

    check-cast v1, [D

    aget-wide v11, v1, v6

    float-to-double v6, v7

    mul-double v9, v9, v6

    add-double/2addr v9, v11

    aput-wide v9, v1, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v22, 0x1

    goto :goto_42

    :cond_7c
    const/4 v1, 0x1

    .line 321
    array-length v0, v3

    if-le v0, v1, :cond_7d

    const/4 v0, 0x0

    .line 322
    invoke-static {v0, v3, v4}, Lr4/b;->k(I[D[[D)Lr4/b;

    move-result-object v3

    iput-object v3, v2, Lt/f;->f:Lr4/b;

    const/4 v4, 0x0

    goto :goto_43

    :cond_7d
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 323
    iput-object v4, v2, Lt/f;->f:Lr4/b;

    .line 324
    :goto_43
    invoke-static {v0, v5, v8}, Lr4/b;->k(I[D[[D)Lr4/b;

    :goto_44
    move-object/from16 v0, p0

    move-object v1, v13

    goto/16 :goto_3c

    .line 325
    :cond_7e
    invoke-static {v3}, La/e;->l(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    .line 326
    throw v0

    :cond_7f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_1b
        -0x4a771f65 -> :sswitch_1a
        -0x490b9c39 -> :sswitch_19
        -0x490b9c38 -> :sswitch_18
        -0x490b9c37 -> :sswitch_17
        -0x3bab3dd3 -> :sswitch_16
        -0x3621dfb2 -> :sswitch_15
        -0x3621dfb1 -> :sswitch_14
        -0x266f082 -> :sswitch_13
        -0x42d1a3 -> :sswitch_12
        0x2382115 -> :sswitch_11
        0x589b15e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4a771f66 -> :sswitch_29
        -0x4a771f65 -> :sswitch_28
        -0x490b9c39 -> :sswitch_27
        -0x490b9c38 -> :sswitch_26
        -0x490b9c37 -> :sswitch_25
        -0x3bab3dd3 -> :sswitch_24
        -0x3621dfb2 -> :sswitch_23
        -0x3621dfb1 -> :sswitch_22
        -0x2f893320 -> :sswitch_21
        -0x266f082 -> :sswitch_20
        -0x42d1a3 -> :sswitch_1f
        0x2382115 -> :sswitch_1e
        0x589b15e -> :sswitch_1d
        0x94e04ec -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " start: x: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lt/o;->d:Lt/y;

    .line 9
    .line 10
    iget v2, v1, Lt/y;->e:F

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " y: "

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, v1, Lt/y;->f:F

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " end: x: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lt/o;->e:Lt/y;

    .line 31
    .line 32
    iget v3, v1, Lt/y;->e:F

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, v1, Lt/y;->f:F

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
.end method
