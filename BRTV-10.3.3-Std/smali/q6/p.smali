.class public final Lq6/p;
.super Lq6/m;
.source "MyApplication"


# instance fields
.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq6/m;-><init>(Lq6/e;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, 0x43960000    # 300.0f

    .line 5
    .line 6
    iput p1, p0, Lq6/p;->c:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;F)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    iput v1, p0, Lq6/p;->c:F

    .line 11
    .line 12
    iget-object v1, p0, Lq6/m;->a:Lq6/e;

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 16
    .line 17
    iget v2, v2, Lq6/e;->a:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    int-to-float v3, v3

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    int-to-float v4, v4

    .line 28
    const/high16 v5, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float/2addr v4, v5

    .line 31
    add-float/2addr v4, v3

    .line 32
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 33
    .line 34
    int-to-float v3, v3

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    int-to-float v6, v6

    .line 40
    div-float/2addr v6, v5

    .line 41
    add-float/2addr v6, v3

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    move-object v3, v1

    .line 47
    check-cast v3, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 48
    .line 49
    iget v3, v3, Lq6/e;->a:I

    .line 50
    .line 51
    sub-int/2addr v0, v3

    .line 52
    int-to-float v0, v0

    .line 53
    div-float/2addr v0, v5

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    add-float/2addr v0, v6

    .line 60
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    .line 62
    .line 63
    move-object v0, v1

    .line 64
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 65
    .line 66
    iget-boolean v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->i:Z

    .line 67
    .line 68
    const/high16 v4, -0x40800000    # -1.0f

    .line 69
    .line 70
    const/high16 v6, 0x3f800000    # 1.0f

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object v0, p0, Lq6/m;->b:Lq6/l;

    .line 78
    .line 79
    invoke-virtual {v0}, Lq6/l;->d()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    move-object v0, v1

    .line 86
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 87
    .line 88
    iget v0, v0, Lq6/e;->e:I

    .line 89
    .line 90
    const/4 v7, 0x1

    .line 91
    if-eq v0, v7, :cond_2

    .line 92
    .line 93
    :cond_1
    iget-object v0, p0, Lq6/m;->b:Lq6/l;

    .line 94
    .line 95
    invoke-virtual {v0}, Lq6/l;->c()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    move-object v0, v1

    .line 102
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 103
    .line 104
    iget v0, v0, Lq6/e;->f:I

    .line 105
    .line 106
    const/4 v7, 0x2

    .line 107
    if-ne v0, v7, :cond_3

    .line 108
    .line 109
    :cond_2
    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object v0, p0, Lq6/m;->b:Lq6/l;

    .line 113
    .line 114
    invoke-virtual {v0}, Lq6/l;->d()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_4

    .line 119
    .line 120
    iget-object v0, p0, Lq6/m;->b:Lq6/l;

    .line 121
    .line 122
    invoke-virtual {v0}, Lq6/l;->c()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    :cond_4
    move-object v0, v1

    .line 129
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 130
    .line 131
    iget v0, v0, Lq6/e;->a:I

    .line 132
    .line 133
    int-to-float v0, v0

    .line 134
    sub-float v4, p2, v6

    .line 135
    .line 136
    mul-float v4, v4, v0

    .line 137
    .line 138
    div-float/2addr v4, v5

    .line 139
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    .line 141
    .line 142
    :cond_5
    iget v0, p0, Lq6/p;->c:F

    .line 143
    .line 144
    neg-float v3, v0

    .line 145
    div-float/2addr v3, v5

    .line 146
    neg-float v4, v2

    .line 147
    div-float/2addr v4, v5

    .line 148
    div-float/2addr v0, v5

    .line 149
    div-float/2addr v2, v5

    .line 150
    invoke-virtual {p1, v3, v4, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 151
    .line 152
    .line 153
    move-object p1, v1

    .line 154
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 155
    .line 156
    iget p1, p1, Lq6/e;->a:I

    .line 157
    .line 158
    int-to-float p1, p1

    .line 159
    mul-float p1, p1, p2

    .line 160
    .line 161
    iput p1, p0, Lq6/p;->d:F

    .line 162
    .line 163
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 164
    .line 165
    iget p1, v1, Lq6/e;->b:I

    .line 166
    .line 167
    int-to-float p1, p1

    .line 168
    mul-float p1, p1, p2

    .line 169
    .line 170
    iput p1, p0, Lq6/p;->e:F

    .line 171
    .line 172
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .locals 4

    .line 1
    cmpl-float v0, p3, p4

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lq6/p;->c:F

    .line 7
    .line 8
    neg-float v1, v0

    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v1, v2

    .line 12
    iget v3, p0, Lq6/p;->e:F

    .line 13
    .line 14
    mul-float v3, v3, v2

    .line 15
    .line 16
    sub-float/2addr v0, v3

    .line 17
    mul-float p3, p3, v0

    .line 18
    .line 19
    add-float/2addr p3, v1

    .line 20
    mul-float v0, v0, p4

    .line 21
    .line 22
    add-float/2addr v0, v1

    .line 23
    add-float/2addr v0, v3

    .line 24
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 25
    .line 26
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    .line 28
    .line 29
    const/4 p4, 0x1

    .line 30
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    new-instance p4, Landroid/graphics/RectF;

    .line 37
    .line 38
    iget p5, p0, Lq6/p;->d:F

    .line 39
    .line 40
    neg-float v1, p5

    .line 41
    div-float/2addr v1, v2

    .line 42
    div-float/2addr p5, v2

    .line 43
    invoke-direct {p4, p3, v1, v0, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    .line 45
    .line 46
    iget p3, p0, Lq6/p;->e:F

    .line 47
    .line 48
    invoke-virtual {p1, p4, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lq6/m;->a:Lq6/e;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

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
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroid/graphics/RectF;

    .line 28
    .line 29
    iget v1, p0, Lq6/p;->c:F

    .line 30
    .line 31
    neg-float v2, v1

    .line 32
    const/high16 v3, 0x40000000    # 2.0f

    .line 33
    .line 34
    div-float/2addr v2, v3

    .line 35
    iget v4, p0, Lq6/p;->d:F

    .line 36
    .line 37
    neg-float v5, v4

    .line 38
    div-float/2addr v5, v3

    .line 39
    div-float/2addr v1, v3

    .line 40
    div-float/2addr v4, v3

    .line 41
    invoke-direct {v0, v2, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lq6/p;->e:F

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq6/m;->a:Lq6/e;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 4
    .line 5
    iget v0, v0, Lq6/e;->a:I

    .line 6
    .line 7
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method
