.class public final Lq6/f;
.super Lq6/m;
.source "MyApplication"


# instance fields
.field public c:I

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq6/m;-><init>(Lq6/e;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lq6/f;->c:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lq6/m;->a:Lq6/e;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 5
    .line 6
    iget v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->g:I

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v1, v2

    .line 12
    move-object v3, v0

    .line 13
    check-cast v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 14
    .line 15
    iget v3, v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->h:I

    .line 16
    .line 17
    int-to-float v3, v3

    .line 18
    add-float/2addr v1, v3

    .line 19
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 20
    .line 21
    .line 22
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 25
    .line 26
    .line 27
    neg-float v3, v1

    .line 28
    invoke-virtual {p1, v3, v3, v1, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 29
    .line 30
    .line 31
    move-object p1, v0

    .line 32
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 33
    .line 34
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->i:I

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, -0x1

    .line 42
    :goto_0
    iput p1, p0, Lq6/f;->c:I

    .line 43
    .line 44
    move-object p1, v0

    .line 45
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 46
    .line 47
    iget p1, p1, Lq6/e;->a:I

    .line 48
    .line 49
    int-to-float p1, p1

    .line 50
    mul-float p1, p1, p2

    .line 51
    .line 52
    iput p1, p0, Lq6/f;->d:F

    .line 53
    .line 54
    move-object p1, v0

    .line 55
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 56
    .line 57
    iget p1, p1, Lq6/e;->b:I

    .line 58
    .line 59
    int-to-float p1, p1

    .line 60
    mul-float p1, p1, p2

    .line 61
    .line 62
    iput p1, p0, Lq6/f;->e:F

    .line 63
    .line 64
    move-object p1, v0

    .line 65
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 66
    .line 67
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->g:I

    .line 68
    .line 69
    move-object v3, v0

    .line 70
    check-cast v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 71
    .line 72
    iget v3, v3, Lq6/e;->a:I

    .line 73
    .line 74
    sub-int/2addr p1, v3

    .line 75
    int-to-float p1, p1

    .line 76
    div-float/2addr p1, v2

    .line 77
    iput p1, p0, Lq6/f;->f:F

    .line 78
    .line 79
    iget-object p1, p0, Lq6/m;->b:Lq6/l;

    .line 80
    .line 81
    invoke-virtual {p1}, Lq6/l;->d()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    const/high16 v3, 0x3f800000    # 1.0f

    .line 86
    .line 87
    const/4 v4, 0x2

    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    move-object p1, v0

    .line 91
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 92
    .line 93
    iget p1, p1, Lq6/e;->e:I

    .line 94
    .line 95
    if-eq p1, v4, :cond_2

    .line 96
    .line 97
    :cond_1
    iget-object p1, p0, Lq6/m;->b:Lq6/l;

    .line 98
    .line 99
    invoke-virtual {p1}, Lq6/l;->c()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    move-object p1, v0

    .line 106
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 107
    .line 108
    iget p1, p1, Lq6/e;->f:I

    .line 109
    .line 110
    if-ne p1, v1, :cond_3

    .line 111
    .line 112
    :cond_2
    iget p1, p0, Lq6/f;->f:F

    .line 113
    .line 114
    sub-float/2addr v3, p2

    .line 115
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 116
    .line 117
    iget p2, v0, Lq6/e;->a:I

    .line 118
    .line 119
    int-to-float p2, p2

    .line 120
    mul-float v3, v3, p2

    .line 121
    .line 122
    div-float/2addr v3, v2

    .line 123
    add-float/2addr v3, p1

    .line 124
    iput v3, p0, Lq6/f;->f:F

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    iget-object p1, p0, Lq6/m;->b:Lq6/l;

    .line 128
    .line 129
    invoke-virtual {p1}, Lq6/l;->d()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    move-object p1, v0

    .line 136
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 137
    .line 138
    iget p1, p1, Lq6/e;->e:I

    .line 139
    .line 140
    if-eq p1, v1, :cond_5

    .line 141
    .line 142
    :cond_4
    iget-object p1, p0, Lq6/m;->b:Lq6/l;

    .line 143
    .line 144
    invoke-virtual {p1}, Lq6/l;->c()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    move-object p1, v0

    .line 151
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 152
    .line 153
    iget p1, p1, Lq6/e;->f:I

    .line 154
    .line 155
    if-ne p1, v4, :cond_6

    .line 156
    .line 157
    :cond_5
    iget p1, p0, Lq6/f;->f:F

    .line 158
    .line 159
    sub-float/2addr v3, p2

    .line 160
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 161
    .line 162
    iget p2, v0, Lq6/e;->a:I

    .line 163
    .line 164
    int-to-float p2, p2

    .line 165
    mul-float v3, v3, p2

    .line 166
    .line 167
    div-float/2addr v3, v2

    .line 168
    sub-float/2addr p1, v3

    .line 169
    iput p1, p0, Lq6/f;->f:F

    .line 170
    .line 171
    :cond_6
    :goto_1
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .locals 11

    .line 1
    move-object v6, p0

    .line 2
    move-object v7, p2

    .line 3
    cmpl-float v0, p3, p4

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    .line 21
    .line 22
    move/from16 v0, p5

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    iget v0, v6, Lq6/f;->d:F

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    .line 31
    .line 32
    const/high16 v8, 0x43b40000    # 360.0f

    .line 33
    .line 34
    mul-float v0, p3, v8

    .line 35
    .line 36
    iget v1, v6, Lq6/f;->c:I

    .line 37
    .line 38
    int-to-float v1, v1

    .line 39
    mul-float v9, v0, v1

    .line 40
    .line 41
    cmpl-float v0, p4, p3

    .line 42
    .line 43
    if-ltz v0, :cond_1

    .line 44
    .line 45
    sub-float v0, p4, p3

    .line 46
    .line 47
    :goto_0
    mul-float v0, v0, v8

    .line 48
    .line 49
    mul-float v0, v0, v1

    .line 50
    .line 51
    move v10, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    .line 55
    add-float/2addr v0, p4

    .line 56
    sub-float/2addr v0, p3

    .line 57
    goto :goto_0

    .line 58
    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    .line 59
    .line 60
    iget v0, v6, Lq6/f;->f:F

    .line 61
    .line 62
    neg-float v2, v0

    .line 63
    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    move-object v0, p1

    .line 68
    move v2, v9

    .line 69
    move v3, v10

    .line 70
    move-object v5, p2

    .line 71
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    iget v0, v6, Lq6/f;->e:F

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    cmpl-float v0, v0, v1

    .line 78
    .line 79
    if-lez v0, :cond_2

    .line 80
    .line 81
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    cmpg-float v0, v0, v8

    .line 86
    .line 87
    if-gez v0, :cond_2

    .line 88
    .line 89
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    .line 93
    .line 94
    iget v3, v6, Lq6/f;->d:F

    .line 95
    .line 96
    iget v4, v6, Lq6/f;->e:F

    .line 97
    .line 98
    move-object v0, p0

    .line 99
    move-object v1, p1

    .line 100
    move-object v2, p2

    .line 101
    move v5, v9

    .line 102
    invoke-virtual/range {v0 .. v5}, Lq6/f;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    .line 103
    .line 104
    .line 105
    iget v3, v6, Lq6/f;->d:F

    .line 106
    .line 107
    iget v4, v6, Lq6/f;->e:F

    .line 108
    .line 109
    add-float v5, v9, v10

    .line 110
    .line 111
    invoke-virtual/range {v0 .. v5}, Lq6/f;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    .line 112
    .line 113
    .line 114
    :cond_2
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lq6/m;->a:Lq6/e;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 4
    .line 5
    iget v0, v0, Lq6/e;->d:I

    .line 6
    .line 7
    iget-object v1, p0, Lq6/m;->b:Lq6/l;

    .line 8
    .line 9
    iget v1, v1, Lq6/l;->j:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lo9/e;->j(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lq6/f;->d:F

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Landroid/graphics/RectF;

    .line 38
    .line 39
    iget v0, p0, Lq6/f;->f:F

    .line 40
    .line 41
    neg-float v1, v0

    .line 42
    neg-float v3, v0

    .line 43
    invoke-direct {v2, v1, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    .line 45
    .line 46
    const/high16 v4, 0x43b40000    # 360.0f

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    move-object v1, p1

    .line 51
    move-object v6, p2

    .line 52
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lq6/m;->a:Lq6/e;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 4
    .line 5
    iget v1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->g:I

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->h:I

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lq6/m;->a:Lq6/e;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 4
    .line 5
    iget v1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->g:I

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->h:I

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5
    .line 6
    .line 7
    new-instance p5, Landroid/graphics/RectF;

    .line 8
    .line 9
    iget v0, p0, Lq6/f;->f:F

    .line 10
    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr p3, v1

    .line 14
    sub-float v1, v0, p3

    .line 15
    .line 16
    add-float/2addr v0, p3

    .line 17
    neg-float p3, p4

    .line 18
    invoke-direct {p5, v1, p4, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p5, p4, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
