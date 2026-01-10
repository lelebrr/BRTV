.class public final Lcom/google/android/material/internal/d;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public A:Landroid/graphics/Typeface;

.field public B:Landroid/graphics/Typeface;

.field public C:Landroid/graphics/Typeface;

.field public D:Landroid/graphics/Typeface;

.field public E:Lr6/a;

.field public F:Lr6/a;

.field public G:Ljava/lang/CharSequence;

.field public H:Ljava/lang/CharSequence;

.field public I:Z

.field public J:Z

.field public K:Landroid/graphics/Bitmap;

.field public L:F

.field public M:F

.field public N:F

.field public O:F

.field public P:F

.field public Q:I

.field public R:[I

.field public S:Z

.field public final T:Landroid/text/TextPaint;

.field public final U:Landroid/text/TextPaint;

.field public V:Landroid/animation/TimeInterpolator;

.field public W:Landroid/animation/TimeInterpolator;

.field public X:F

.field public Y:F

.field public Z:F

.field public final a:Landroid/view/ViewGroup;

.field public a0:Landroid/content/res/ColorStateList;

.field public b:Z

.field public b0:F

.field public c:F

.field public c0:F

.field public d:Z

.field public d0:F

.field public e:F

.field public e0:Landroid/content/res/ColorStateList;

.field public f:F

.field public f0:F

.field public g:I

.field public g0:F

.field public final h:Landroid/graphics/Rect;

.field public h0:F

.field public final i:Landroid/graphics/Rect;

.field public i0:Landroid/text/StaticLayout;

.field public final j:Landroid/graphics/RectF;

.field public j0:F

.field public k:I

.field public k0:F

.field public l:I

.field public l0:F

.field public m:F

.field public m0:Ljava/lang/CharSequence;

.field public n:F

.field public n0:I

.field public o:Landroid/content/res/ColorStateList;

.field public o0:F

.field public p:Landroid/content/res/ColorStateList;

.field public p0:F

.field public q:I

.field public q0:I

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:Landroid/graphics/Typeface;

.field public y:Landroid/graphics/Typeface;

.field public z:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/material/internal/d;->k:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/material/internal/d;->l:I

    .line 9
    .line 10
    const/high16 v0, 0x41700000    # 15.0f

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/material/internal/d;->m:F

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/material/internal/d;->n:F

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/google/android/material/internal/d;->J:Z

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/material/internal/d;->n0:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/google/android/material/internal/d;->o0:F

    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v0, p0, Lcom/google/android/material/internal/d;->p0:F

    .line 27
    .line 28
    sget v1, Lcom/google/android/material/internal/u;->m:I

    .line 29
    .line 30
    iput v1, p0, Lcom/google/android/material/internal/d;->q0:I

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/material/internal/d;->a:Landroid/view/ViewGroup;

    .line 33
    .line 34
    new-instance v1, Landroid/text/TextPaint;

    .line 35
    .line 36
    const/16 v2, 0x81

    .line 37
    .line 38
    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/google/android/material/internal/d;->T:Landroid/text/TextPaint;

    .line 42
    .line 43
    new-instance v2, Landroid/text/TextPaint;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/google/android/material/internal/d;->U:Landroid/text/TextPaint;

    .line 49
    .line 50
    new-instance v1, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/google/android/material/internal/d;->i:Landroid/graphics/Rect;

    .line 56
    .line 57
    new-instance v1, Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/google/android/material/internal/d;->h:Landroid/graphics/Rect;

    .line 63
    .line 64
    new-instance v1, Landroid/graphics/RectF;

    .line 65
    .line 66
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/google/android/material/internal/d;->j:Landroid/graphics/RectF;

    .line 70
    .line 71
    iget v1, p0, Lcom/google/android/material/internal/d;->e:F

    .line 72
    .line 73
    const/high16 v2, 0x3f000000    # 0.5f

    .line 74
    .line 75
    invoke-static {v0, v1, v2, v1}, Lea/q;->d(FFFF)F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lcom/google/android/material/internal/d;->f:F

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/d;->h(Landroid/content/res/Configuration;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public static a(FII)I
    .locals 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float/2addr v0, p0

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    mul-float v1, v1, v0

    .line 10
    .line 11
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    mul-float v2, v2, p0

    .line 17
    .line 18
    add-float/2addr v2, v1

    .line 19
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    mul-float v1, v1, v0

    .line 25
    .line 26
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    int-to-float v3, v3

    .line 31
    mul-float v3, v3, p0

    .line 32
    .line 33
    add-float/2addr v3, v1

    .line 34
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    int-to-float v1, v1

    .line 39
    mul-float v1, v1, v0

    .line 40
    .line 41
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    int-to-float v4, v4

    .line 46
    mul-float v4, v4, p0

    .line 47
    .line 48
    add-float/2addr v4, v1

    .line 49
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    int-to-float p1, p1

    .line 54
    mul-float p1, p1, v0

    .line 55
    .line 56
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    int-to-float p2, p2

    .line 61
    mul-float p2, p2, p0

    .line 62
    .line 63
    add-float/2addr p2, p1

    .line 64
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    return p0
.end method

.method public static g(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Ly5/a;->a(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/d;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/internal/d;->J:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sget-object v0, Ll0/j;->d:Landroidx/appcompat/app/r0;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget-object v0, Ll0/j;->c:Landroidx/appcompat/app/r0;

    .line 24
    .line 25
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/r0;->d(Ljava/lang/CharSequence;I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :cond_2
    return v1
.end method

.method public final c(FZ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/d;->G:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/d;->i:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    iget-object v1, p0, Lcom/google/android/material/internal/d;->h:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    .line 22
    sub-float v3, p1, v2

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    const v5, 0x3727c5ac    # 1.0E-5f

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    cmpg-float v3, v3, v5

    .line 34
    .line 35
    if-gez v3, :cond_1

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_0
    const/4 v7, 0x0

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    iget p1, p0, Lcom/google/android/material/internal/d;->n:F

    .line 44
    .line 45
    iget p2, p0, Lcom/google/android/material/internal/d;->f0:F

    .line 46
    .line 47
    iput v2, p0, Lcom/google/android/material/internal/d;->L:F

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/material/internal/d;->D:Landroid/graphics/Typeface;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/google/android/material/internal/d;->x:Landroid/graphics/Typeface;

    .line 52
    .line 53
    if-eq v1, v3, :cond_2

    .line 54
    .line 55
    iput-object v3, p0, Lcom/google/android/material/internal/d;->D:Landroid/graphics/Typeface;

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    goto :goto_4

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    goto :goto_4

    .line 61
    :cond_3
    iget v3, p0, Lcom/google/android/material/internal/d;->m:F

    .line 62
    .line 63
    iget v8, p0, Lcom/google/android/material/internal/d;->g0:F

    .line 64
    .line 65
    iget-object v9, p0, Lcom/google/android/material/internal/d;->D:Landroid/graphics/Typeface;

    .line 66
    .line 67
    iget-object v10, p0, Lcom/google/android/material/internal/d;->A:Landroid/graphics/Typeface;

    .line 68
    .line 69
    if-eq v9, v10, :cond_4

    .line 70
    .line 71
    iput-object v10, p0, Lcom/google/android/material/internal/d;->D:Landroid/graphics/Typeface;

    .line 72
    .line 73
    const/4 v9, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    const/4 v9, 0x0

    .line 76
    :goto_1
    sub-float v10, p1, v7

    .line 77
    .line 78
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    cmpg-float v5, v10, v5

    .line 83
    .line 84
    if-gez v5, :cond_5

    .line 85
    .line 86
    iput v2, p0, Lcom/google/android/material/internal/d;->L:F

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    iget v5, p0, Lcom/google/android/material/internal/d;->m:F

    .line 90
    .line 91
    iget v10, p0, Lcom/google/android/material/internal/d;->n:F

    .line 92
    .line 93
    iget-object v11, p0, Lcom/google/android/material/internal/d;->W:Landroid/animation/TimeInterpolator;

    .line 94
    .line 95
    invoke-static {v5, v10, p1, v11}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iget v5, p0, Lcom/google/android/material/internal/d;->m:F

    .line 100
    .line 101
    div-float/2addr p1, v5

    .line 102
    iput p1, p0, Lcom/google/android/material/internal/d;->L:F

    .line 103
    .line 104
    :goto_2
    iget p1, p0, Lcom/google/android/material/internal/d;->n:F

    .line 105
    .line 106
    iget v5, p0, Lcom/google/android/material/internal/d;->m:F

    .line 107
    .line 108
    div-float/2addr p1, v5

    .line 109
    mul-float v5, v1, p1

    .line 110
    .line 111
    if-eqz p2, :cond_7

    .line 112
    .line 113
    :cond_6
    move v0, v1

    .line 114
    :goto_3
    move p1, v3

    .line 115
    move p2, v8

    .line 116
    move v1, v9

    .line 117
    goto :goto_4

    .line 118
    :cond_7
    cmpl-float p2, v5, v0

    .line 119
    .line 120
    if-lez p2, :cond_6

    .line 121
    .line 122
    div-float/2addr v0, p1

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    move v0, p1

    .line 128
    goto :goto_3

    .line 129
    :goto_4
    cmpl-float v3, v0, v7

    .line 130
    .line 131
    if-lez v3, :cond_c

    .line 132
    .line 133
    iget v3, p0, Lcom/google/android/material/internal/d;->M:F

    .line 134
    .line 135
    cmpl-float v3, v3, p1

    .line 136
    .line 137
    if-eqz v3, :cond_8

    .line 138
    .line 139
    const/4 v3, 0x1

    .line 140
    goto :goto_5

    .line 141
    :cond_8
    const/4 v3, 0x0

    .line 142
    :goto_5
    iget v5, p0, Lcom/google/android/material/internal/d;->h0:F

    .line 143
    .line 144
    cmpl-float v5, v5, p2

    .line 145
    .line 146
    if-eqz v5, :cond_9

    .line 147
    .line 148
    const/4 v5, 0x1

    .line 149
    goto :goto_6

    .line 150
    :cond_9
    const/4 v5, 0x0

    .line 151
    :goto_6
    if-nez v3, :cond_b

    .line 152
    .line 153
    if-nez v5, :cond_b

    .line 154
    .line 155
    iget-boolean v3, p0, Lcom/google/android/material/internal/d;->S:Z

    .line 156
    .line 157
    if-nez v3, :cond_b

    .line 158
    .line 159
    if-eqz v1, :cond_a

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_a
    const/4 v1, 0x0

    .line 163
    goto :goto_8

    .line 164
    :cond_b
    :goto_7
    const/4 v1, 0x1

    .line 165
    :goto_8
    iput p1, p0, Lcom/google/android/material/internal/d;->M:F

    .line 166
    .line 167
    iput p2, p0, Lcom/google/android/material/internal/d;->h0:F

    .line 168
    .line 169
    iput-boolean v4, p0, Lcom/google/android/material/internal/d;->S:Z

    .line 170
    .line 171
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/internal/d;->H:Ljava/lang/CharSequence;

    .line 172
    .line 173
    if-eqz p1, :cond_d

    .line 174
    .line 175
    if-eqz v1, :cond_16

    .line 176
    .line 177
    :cond_d
    iget p1, p0, Lcom/google/android/material/internal/d;->M:F

    .line 178
    .line 179
    iget-object p2, p0, Lcom/google/android/material/internal/d;->T:Landroid/text/TextPaint;

    .line 180
    .line 181
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/google/android/material/internal/d;->D:Landroid/graphics/Typeface;

    .line 185
    .line 186
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 187
    .line 188
    .line 189
    iget p1, p0, Lcom/google/android/material/internal/d;->h0:F

    .line 190
    .line 191
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 192
    .line 193
    .line 194
    iget p1, p0, Lcom/google/android/material/internal/d;->L:F

    .line 195
    .line 196
    cmpl-float p1, p1, v2

    .line 197
    .line 198
    if-eqz p1, :cond_e

    .line 199
    .line 200
    const/4 p1, 0x1

    .line 201
    goto :goto_9

    .line 202
    :cond_e
    const/4 p1, 0x0

    .line 203
    :goto_9
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/google/android/material/internal/d;->G:Ljava/lang/CharSequence;

    .line 207
    .line 208
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/d;->b(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    iput-boolean p1, p0, Lcom/google/android/material/internal/d;->I:Z

    .line 213
    .line 214
    iget v1, p0, Lcom/google/android/material/internal/d;->n0:I

    .line 215
    .line 216
    if-le v1, v6, :cond_f

    .line 217
    .line 218
    if-eqz p1, :cond_10

    .line 219
    .line 220
    iget-boolean v2, p0, Lcom/google/android/material/internal/d;->d:Z

    .line 221
    .line 222
    if-eqz v2, :cond_f

    .line 223
    .line 224
    goto :goto_a

    .line 225
    :cond_f
    const/4 v1, 0x1

    .line 226
    :cond_10
    :goto_a
    if-ne v1, v6, :cond_11

    .line 227
    .line 228
    :try_start_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 229
    .line 230
    goto :goto_b

    .line 231
    :catch_0
    move-exception p1

    .line 232
    goto :goto_c

    .line 233
    :cond_11
    iget v2, p0, Lcom/google/android/material/internal/d;->k:I

    .line 234
    .line 235
    invoke-static {v2, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    and-int/lit8 v2, v2, 0x7

    .line 240
    .line 241
    if-eq v2, v6, :cond_15

    .line 242
    .line 243
    const/4 v3, 0x5

    .line 244
    if-eq v2, v3, :cond_13

    .line 245
    .line 246
    iget-boolean v2, p0, Lcom/google/android/material/internal/d;->I:Z

    .line 247
    .line 248
    if-eqz v2, :cond_12

    .line 249
    .line 250
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 251
    .line 252
    goto :goto_b

    .line 253
    :cond_12
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_13
    iget-boolean v2, p0, Lcom/google/android/material/internal/d;->I:Z

    .line 257
    .line 258
    if-eqz v2, :cond_14

    .line 259
    .line 260
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 261
    .line 262
    goto :goto_b

    .line 263
    :cond_14
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 264
    .line 265
    goto :goto_b

    .line 266
    :cond_15
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 267
    .line 268
    :goto_b
    iget-object v3, p0, Lcom/google/android/material/internal/d;->G:Ljava/lang/CharSequence;

    .line 269
    .line 270
    float-to-int v0, v0

    .line 271
    new-instance v5, Lcom/google/android/material/internal/u;

    .line 272
    .line 273
    invoke-direct {v5, v3, p2, v0}, Lcom/google/android/material/internal/u;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    .line 274
    .line 275
    .line 276
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 277
    .line 278
    iput-object p2, v5, Lcom/google/android/material/internal/u;->l:Landroid/text/TextUtils$TruncateAt;

    .line 279
    .line 280
    iput-boolean p1, v5, Lcom/google/android/material/internal/u;->k:Z

    .line 281
    .line 282
    iput-object v2, v5, Lcom/google/android/material/internal/u;->e:Landroid/text/Layout$Alignment;

    .line 283
    .line 284
    iput-boolean v4, v5, Lcom/google/android/material/internal/u;->j:Z

    .line 285
    .line 286
    iput v1, v5, Lcom/google/android/material/internal/u;->f:I

    .line 287
    .line 288
    iget p1, p0, Lcom/google/android/material/internal/d;->o0:F

    .line 289
    .line 290
    iget p2, p0, Lcom/google/android/material/internal/d;->p0:F

    .line 291
    .line 292
    iput p1, v5, Lcom/google/android/material/internal/u;->g:F

    .line 293
    .line 294
    iput p2, v5, Lcom/google/android/material/internal/u;->h:F

    .line 295
    .line 296
    iget p1, p0, Lcom/google/android/material/internal/d;->q0:I

    .line 297
    .line 298
    iput p1, v5, Lcom/google/android/material/internal/u;->i:I

    .line 299
    .line 300
    invoke-virtual {v5}, Lcom/google/android/material/internal/u;->a()Landroid/text/StaticLayout;

    .line 301
    .line 302
    .line 303
    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/material/internal/t; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_d

    .line 305
    :goto_c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    const-string v0, "CollapsingTextHelper"

    .line 314
    .line 315
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .line 317
    .line 318
    const/4 p1, 0x0

    .line 319
    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    iput-object p1, p0, Lcom/google/android/material/internal/d;->i0:Landroid/text/StaticLayout;

    .line 323
    .line 324
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    iput-object p1, p0, Lcom/google/android/material/internal/d;->H:Ljava/lang/CharSequence;

    .line 329
    .line 330
    :cond_16
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    move-result v9

    .line 9
    iget-object v1, v0, Lcom/google/android/material/internal/d;->H:Ljava/lang/CharSequence;

    .line 10
    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/google/android/material/internal/d;->b:Z

    .line 14
    .line 15
    if-eqz v1, :cond_9

    .line 16
    .line 17
    iget-object v10, v0, Lcom/google/android/material/internal/d;->T:Landroid/text/TextPaint;

    .line 18
    .line 19
    iget v1, v0, Lcom/google/android/material/internal/d;->M:F

    .line 20
    .line 21
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 22
    .line 23
    .line 24
    iget v1, v0, Lcom/google/android/material/internal/d;->v:F

    .line 25
    .line 26
    iget v2, v0, Lcom/google/android/material/internal/d;->w:F

    .line 27
    .line 28
    iget v3, v0, Lcom/google/android/material/internal/d;->L:F

    .line 29
    .line 30
    const/high16 v4, 0x3f800000    # 1.0f

    .line 31
    .line 32
    cmpl-float v4, v3, v4

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget-boolean v4, v0, Lcom/google/android/material/internal/d;->d:Z

    .line 37
    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v8, v3, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget v3, v0, Lcom/google/android/material/internal/d;->n0:I

    .line 44
    .line 45
    const/4 v11, 0x1

    .line 46
    if-le v3, v11, :cond_7

    .line 47
    .line 48
    iget-boolean v3, v0, Lcom/google/android/material/internal/d;->I:Z

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    iget-boolean v3, v0, Lcom/google/android/material/internal/d;->d:Z

    .line 53
    .line 54
    if-eqz v3, :cond_7

    .line 55
    .line 56
    :cond_1
    iget-boolean v3, v0, Lcom/google/android/material/internal/d;->d:Z

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    iget v3, v0, Lcom/google/android/material/internal/d;->c:F

    .line 61
    .line 62
    iget v4, v0, Lcom/google/android/material/internal/d;->f:F

    .line 63
    .line 64
    cmpl-float v3, v3, v4

    .line 65
    .line 66
    if-lez v3, :cond_7

    .line 67
    .line 68
    :cond_2
    iget v1, v0, Lcom/google/android/material/internal/d;->v:F

    .line 69
    .line 70
    iget-object v3, v0, Lcom/google/android/material/internal/d;->i0:Landroid/text/StaticLayout;

    .line 71
    .line 72
    const/4 v12, 0x0

    .line 73
    invoke-virtual {v3, v12}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    int-to-float v3, v3

    .line 78
    sub-float/2addr v1, v3

    .line 79
    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    .line 85
    .line 86
    iget v1, v0, Lcom/google/android/material/internal/d;->l0:F

    .line 87
    .line 88
    int-to-float v2, v13

    .line 89
    mul-float v1, v1, v2

    .line 90
    .line 91
    float-to-int v1, v1

    .line 92
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    .line 94
    .line 95
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    const/16 v15, 0x1f

    .line 98
    .line 99
    if-lt v14, v15, :cond_3

    .line 100
    .line 101
    iget v1, v0, Lcom/google/android/material/internal/d;->N:F

    .line 102
    .line 103
    iget v3, v0, Lcom/google/android/material/internal/d;->O:F

    .line 104
    .line 105
    iget v4, v0, Lcom/google/android/material/internal/d;->P:F

    .line 106
    .line 107
    iget v5, v0, Lcom/google/android/material/internal/d;->Q:I

    .line 108
    .line 109
    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-static {v5, v6}, Lo9/e;->j(II)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    invoke-virtual {v10, v1, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object v1, v0, Lcom/google/android/material/internal/d;->i0:Landroid/text/StaticLayout;

    .line 121
    .line 122
    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 123
    .line 124
    .line 125
    iget v1, v0, Lcom/google/android/material/internal/d;->k0:F

    .line 126
    .line 127
    mul-float v1, v1, v2

    .line 128
    .line 129
    float-to-int v1, v1

    .line 130
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    .line 132
    .line 133
    if-lt v14, v15, :cond_4

    .line 134
    .line 135
    iget v1, v0, Lcom/google/android/material/internal/d;->N:F

    .line 136
    .line 137
    iget v2, v0, Lcom/google/android/material/internal/d;->O:F

    .line 138
    .line 139
    iget v3, v0, Lcom/google/android/material/internal/d;->P:F

    .line 140
    .line 141
    iget v4, v0, Lcom/google/android/material/internal/d;->Q:I

    .line 142
    .line 143
    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-static {v4, v5}, Lo9/e;->j(II)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 152
    .line 153
    .line 154
    :cond_4
    iget-object v1, v0, Lcom/google/android/material/internal/d;->i0:Landroid/text/StaticLayout;

    .line 155
    .line 156
    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    iget-object v2, v0, Lcom/google/android/material/internal/d;->m0:Ljava/lang/CharSequence;

    .line 161
    .line 162
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    int-to-float v7, v1

    .line 167
    const/4 v3, 0x0

    .line 168
    const/4 v5, 0x0

    .line 169
    move-object/from16 v1, p1

    .line 170
    .line 171
    move v6, v7

    .line 172
    move/from16 v16, v7

    .line 173
    .line 174
    move-object v7, v10

    .line 175
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 176
    .line 177
    .line 178
    if-lt v14, v15, :cond_5

    .line 179
    .line 180
    iget v1, v0, Lcom/google/android/material/internal/d;->N:F

    .line 181
    .line 182
    iget v2, v0, Lcom/google/android/material/internal/d;->O:F

    .line 183
    .line 184
    iget v3, v0, Lcom/google/android/material/internal/d;->P:F

    .line 185
    .line 186
    iget v4, v0, Lcom/google/android/material/internal/d;->Q:I

    .line 187
    .line 188
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 189
    .line 190
    .line 191
    :cond_5
    iget-boolean v1, v0, Lcom/google/android/material/internal/d;->d:Z

    .line 192
    .line 193
    if-nez v1, :cond_8

    .line 194
    .line 195
    iget-object v1, v0, Lcom/google/android/material/internal/d;->m0:Ljava/lang/CharSequence;

    .line 196
    .line 197
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const-string v2, "\u2026"

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_6

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    sub-int/2addr v2, v11

    .line 218
    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    :cond_6
    move-object v2, v1

    .line 223
    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Lcom/google/android/material/internal/d;->i0:Landroid/text/StaticLayout;

    .line 227
    .line 228
    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineEnd(I)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    const/4 v5, 0x0

    .line 241
    const/4 v3, 0x0

    .line 242
    move-object/from16 v1, p1

    .line 243
    .line 244
    move/from16 v6, v16

    .line 245
    .line 246
    move-object v7, v10

    .line 247
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 248
    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_7
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/google/android/material/internal/d;->i0:Landroid/text/StaticLayout;

    .line 255
    .line 256
    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 257
    .line 258
    .line 259
    :cond_8
    :goto_0
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 260
    .line 261
    .line 262
    :cond_9
    return-void
.end method

.method public final e()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/d;->U:Landroid/text/TextPaint;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/internal/d;->n:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/internal/d;->x:Landroid/graphics/Typeface;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/material/internal/d;->f0:F

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    neg-float v0, v0

    .line 23
    return v0
.end method

.method public final f(Landroid/content/res/ColorStateList;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/d;->R:[I

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final h(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/d;->z:Landroid/graphics/Typeface;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v0}, Ln5/d;->C(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/material/internal/d;->y:Landroid/graphics/Typeface;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/d;->C:Landroid/graphics/Typeface;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {p1, v0}, Ln5/d;->C(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/android/material/internal/d;->B:Landroid/graphics/Typeface;

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/d;->y:Landroid/graphics/Typeface;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/d;->z:Landroid/graphics/Typeface;

    .line 33
    .line 34
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/internal/d;->x:Landroid/graphics/Typeface;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/material/internal/d;->B:Landroid/graphics/Typeface;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/internal/d;->C:Landroid/graphics/Typeface;

    .line 42
    .line 43
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/internal/d;->A:Landroid/graphics/Typeface;

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/d;->j(Z)V

    .line 47
    .line 48
    .line 49
    :cond_4
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/d;->i:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/internal/d;->h:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/d;->b:Z

    .line 33
    .line 34
    return-void
.end method

.method public final j(Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/material/internal/d;->a:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-lez v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-gtz v3, :cond_1

    .line 18
    .line 19
    :cond_0
    if-eqz v1, :cond_19

    .line 20
    .line 21
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-virtual {v0, v3, v1}, Lcom/google/android/material/internal/d;->c(FZ)V

    .line 24
    .line 25
    .line 26
    iget-object v4, v0, Lcom/google/android/material/internal/d;->H:Ljava/lang/CharSequence;

    .line 27
    .line 28
    iget-object v5, v0, Lcom/google/android/material/internal/d;->T:Landroid/text/TextPaint;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    iget-object v6, v0, Lcom/google/android/material/internal/d;->i0:Landroid/text/StaticLayout;

    .line 33
    .line 34
    if-eqz v6, :cond_2

    .line 35
    .line 36
    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    int-to-float v6, v6

    .line 41
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 42
    .line 43
    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iput-object v4, v0, Lcom/google/android/material/internal/d;->m0:Ljava/lang/CharSequence;

    .line 48
    .line 49
    :cond_2
    iget-object v4, v0, Lcom/google/android/material/internal/d;->m0:Ljava/lang/CharSequence;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-virtual {v5, v4, v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iput v4, v0, Lcom/google/android/material/internal/d;->j0:F

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iput v6, v0, Lcom/google/android/material/internal/d;->j0:F

    .line 67
    .line 68
    :goto_0
    iget v4, v0, Lcom/google/android/material/internal/d;->l:I

    .line 69
    .line 70
    iget-boolean v8, v0, Lcom/google/android/material/internal/d;->I:Z

    .line 71
    .line 72
    invoke-static {v4, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    and-int/lit8 v8, v4, 0x70

    .line 77
    .line 78
    iget-object v9, v0, Lcom/google/android/material/internal/d;->i:Landroid/graphics/Rect;

    .line 79
    .line 80
    const/16 v10, 0x50

    .line 81
    .line 82
    const/16 v11, 0x30

    .line 83
    .line 84
    const/high16 v12, 0x40000000    # 2.0f

    .line 85
    .line 86
    if-eq v8, v11, :cond_5

    .line 87
    .line 88
    if-eq v8, v10, :cond_4

    .line 89
    .line 90
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    sub-float/2addr v8, v13

    .line 99
    div-float/2addr v8, v12

    .line 100
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    int-to-float v13, v13

    .line 105
    sub-float/2addr v13, v8

    .line 106
    iput v13, v0, Lcom/google/android/material/internal/d;->s:F

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 110
    .line 111
    int-to-float v8, v8

    .line 112
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    add-float/2addr v13, v8

    .line 117
    iput v13, v0, Lcom/google/android/material/internal/d;->s:F

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    iget v8, v9, Landroid/graphics/Rect;->top:I

    .line 121
    .line 122
    int-to-float v8, v8

    .line 123
    iput v8, v0, Lcom/google/android/material/internal/d;->s:F

    .line 124
    .line 125
    :goto_1
    const v8, 0x800007

    .line 126
    .line 127
    .line 128
    and-int/2addr v4, v8

    .line 129
    const/4 v13, 0x5

    .line 130
    const/4 v14, 0x1

    .line 131
    if-eq v4, v14, :cond_7

    .line 132
    .line 133
    if-eq v4, v13, :cond_6

    .line 134
    .line 135
    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 136
    .line 137
    int-to-float v4, v4

    .line 138
    iput v4, v0, Lcom/google/android/material/internal/d;->u:F

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    iget v4, v9, Landroid/graphics/Rect;->right:I

    .line 142
    .line 143
    int-to-float v4, v4

    .line 144
    iget v15, v0, Lcom/google/android/material/internal/d;->j0:F

    .line 145
    .line 146
    sub-float/2addr v4, v15

    .line 147
    iput v4, v0, Lcom/google/android/material/internal/d;->u:F

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    int-to-float v4, v4

    .line 155
    iget v15, v0, Lcom/google/android/material/internal/d;->j0:F

    .line 156
    .line 157
    div-float/2addr v15, v12

    .line 158
    sub-float/2addr v4, v15

    .line 159
    iput v4, v0, Lcom/google/android/material/internal/d;->u:F

    .line 160
    .line 161
    :goto_2
    invoke-virtual {v0, v6, v1}, Lcom/google/android/material/internal/d;->c(FZ)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/google/android/material/internal/d;->i0:Landroid/text/StaticLayout;

    .line 165
    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    int-to-float v1, v1

    .line 173
    goto :goto_3

    .line 174
    :cond_8
    const/4 v1, 0x0

    .line 175
    :goto_3
    iget-object v4, v0, Lcom/google/android/material/internal/d;->i0:Landroid/text/StaticLayout;

    .line 176
    .line 177
    if-eqz v4, :cond_9

    .line 178
    .line 179
    iget v15, v0, Lcom/google/android/material/internal/d;->n0:I

    .line 180
    .line 181
    if-le v15, v14, :cond_9

    .line 182
    .line 183
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    int-to-float v4, v4

    .line 188
    goto :goto_4

    .line 189
    :cond_9
    iget-object v4, v0, Lcom/google/android/material/internal/d;->H:Ljava/lang/CharSequence;

    .line 190
    .line 191
    if-eqz v4, :cond_a

    .line 192
    .line 193
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    invoke-virtual {v5, v4, v7, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    goto :goto_4

    .line 202
    :cond_a
    const/4 v4, 0x0

    .line 203
    :goto_4
    iget-object v15, v0, Lcom/google/android/material/internal/d;->i0:Landroid/text/StaticLayout;

    .line 204
    .line 205
    if-eqz v15, :cond_b

    .line 206
    .line 207
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    .line 208
    .line 209
    .line 210
    move-result v15

    .line 211
    goto :goto_5

    .line 212
    :cond_b
    const/4 v15, 0x0

    .line 213
    :goto_5
    iput v15, v0, Lcom/google/android/material/internal/d;->q:I

    .line 214
    .line 215
    iget v15, v0, Lcom/google/android/material/internal/d;->k:I

    .line 216
    .line 217
    iget-boolean v3, v0, Lcom/google/android/material/internal/d;->I:Z

    .line 218
    .line 219
    invoke-static {v15, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    and-int/lit8 v15, v3, 0x70

    .line 224
    .line 225
    iget-object v7, v0, Lcom/google/android/material/internal/d;->h:Landroid/graphics/Rect;

    .line 226
    .line 227
    if-eq v15, v11, :cond_d

    .line 228
    .line 229
    if-eq v15, v10, :cond_c

    .line 230
    .line 231
    div-float/2addr v1, v12

    .line 232
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    int-to-float v10, v10

    .line 237
    sub-float/2addr v10, v1

    .line 238
    iput v10, v0, Lcom/google/android/material/internal/d;->r:F

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_c
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 242
    .line 243
    int-to-float v10, v10

    .line 244
    sub-float/2addr v10, v1

    .line 245
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    add-float/2addr v1, v10

    .line 250
    iput v1, v0, Lcom/google/android/material/internal/d;->r:F

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_d
    iget v1, v7, Landroid/graphics/Rect;->top:I

    .line 254
    .line 255
    int-to-float v1, v1

    .line 256
    iput v1, v0, Lcom/google/android/material/internal/d;->r:F

    .line 257
    .line 258
    :goto_6
    and-int v1, v3, v8

    .line 259
    .line 260
    if-eq v1, v14, :cond_f

    .line 261
    .line 262
    if-eq v1, v13, :cond_e

    .line 263
    .line 264
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 265
    .line 266
    int-to-float v1, v1

    .line 267
    iput v1, v0, Lcom/google/android/material/internal/d;->t:F

    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_e
    iget v1, v7, Landroid/graphics/Rect;->right:I

    .line 271
    .line 272
    int-to-float v1, v1

    .line 273
    sub-float/2addr v1, v4

    .line 274
    iput v1, v0, Lcom/google/android/material/internal/d;->t:F

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_f
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    int-to-float v1, v1

    .line 282
    div-float/2addr v4, v12

    .line 283
    sub-float/2addr v1, v4

    .line 284
    iput v1, v0, Lcom/google/android/material/internal/d;->t:F

    .line 285
    .line 286
    :goto_7
    iget-object v1, v0, Lcom/google/android/material/internal/d;->K:Landroid/graphics/Bitmap;

    .line 287
    .line 288
    if-eqz v1, :cond_10

    .line 289
    .line 290
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 291
    .line 292
    .line 293
    const/4 v1, 0x0

    .line 294
    iput-object v1, v0, Lcom/google/android/material/internal/d;->K:Landroid/graphics/Bitmap;

    .line 295
    .line 296
    :cond_10
    iget v1, v0, Lcom/google/android/material/internal/d;->c:F

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/d;->r(F)V

    .line 299
    .line 300
    .line 301
    iget v1, v0, Lcom/google/android/material/internal/d;->c:F

    .line 302
    .line 303
    iget-boolean v3, v0, Lcom/google/android/material/internal/d;->d:Z

    .line 304
    .line 305
    iget-object v4, v0, Lcom/google/android/material/internal/d;->j:Landroid/graphics/RectF;

    .line 306
    .line 307
    if-eqz v3, :cond_12

    .line 308
    .line 309
    iget v3, v0, Lcom/google/android/material/internal/d;->f:F

    .line 310
    .line 311
    cmpg-float v3, v1, v3

    .line 312
    .line 313
    if-gez v3, :cond_11

    .line 314
    .line 315
    move-object v9, v7

    .line 316
    :cond_11
    invoke-virtual {v4, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 317
    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_12
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 321
    .line 322
    int-to-float v3, v3

    .line 323
    iget v8, v9, Landroid/graphics/Rect;->left:I

    .line 324
    .line 325
    int-to-float v8, v8

    .line 326
    iget-object v10, v0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 327
    .line 328
    invoke-static {v3, v8, v1, v10}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    iput v3, v4, Landroid/graphics/RectF;->left:F

    .line 333
    .line 334
    iget v3, v0, Lcom/google/android/material/internal/d;->r:F

    .line 335
    .line 336
    iget v8, v0, Lcom/google/android/material/internal/d;->s:F

    .line 337
    .line 338
    iget-object v10, v0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 339
    .line 340
    invoke-static {v3, v8, v1, v10}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    iput v3, v4, Landroid/graphics/RectF;->top:F

    .line 345
    .line 346
    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 347
    .line 348
    int-to-float v3, v3

    .line 349
    iget v8, v9, Landroid/graphics/Rect;->right:I

    .line 350
    .line 351
    int-to-float v8, v8

    .line 352
    iget-object v10, v0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 353
    .line 354
    invoke-static {v3, v8, v1, v10}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    iput v3, v4, Landroid/graphics/RectF;->right:F

    .line 359
    .line 360
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 361
    .line 362
    int-to-float v3, v3

    .line 363
    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    .line 364
    .line 365
    int-to-float v7, v7

    .line 366
    iget-object v8, v0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 367
    .line 368
    invoke-static {v3, v7, v1, v8}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 373
    .line 374
    :goto_8
    iget-boolean v3, v0, Lcom/google/android/material/internal/d;->d:Z

    .line 375
    .line 376
    if-eqz v3, :cond_14

    .line 377
    .line 378
    iget v3, v0, Lcom/google/android/material/internal/d;->f:F

    .line 379
    .line 380
    cmpg-float v3, v1, v3

    .line 381
    .line 382
    if-gez v3, :cond_13

    .line 383
    .line 384
    iget v3, v0, Lcom/google/android/material/internal/d;->t:F

    .line 385
    .line 386
    iput v3, v0, Lcom/google/android/material/internal/d;->v:F

    .line 387
    .line 388
    iget v3, v0, Lcom/google/android/material/internal/d;->r:F

    .line 389
    .line 390
    iput v3, v0, Lcom/google/android/material/internal/d;->w:F

    .line 391
    .line 392
    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/d;->r(F)V

    .line 393
    .line 394
    .line 395
    const/4 v3, 0x0

    .line 396
    :goto_9
    const/high16 v4, 0x3f800000    # 1.0f

    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_13
    iget v3, v0, Lcom/google/android/material/internal/d;->u:F

    .line 400
    .line 401
    iput v3, v0, Lcom/google/android/material/internal/d;->v:F

    .line 402
    .line 403
    iget v3, v0, Lcom/google/android/material/internal/d;->s:F

    .line 404
    .line 405
    iget v4, v0, Lcom/google/android/material/internal/d;->g:I

    .line 406
    .line 407
    const/4 v7, 0x0

    .line 408
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    int-to-float v4, v4

    .line 413
    sub-float/2addr v3, v4

    .line 414
    iput v3, v0, Lcom/google/android/material/internal/d;->w:F

    .line 415
    .line 416
    const/high16 v3, 0x3f800000    # 1.0f

    .line 417
    .line 418
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/d;->r(F)V

    .line 419
    .line 420
    .line 421
    const/high16 v3, 0x3f800000    # 1.0f

    .line 422
    .line 423
    goto :goto_9

    .line 424
    :cond_14
    iget v3, v0, Lcom/google/android/material/internal/d;->t:F

    .line 425
    .line 426
    iget v4, v0, Lcom/google/android/material/internal/d;->u:F

    .line 427
    .line 428
    iget-object v7, v0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 429
    .line 430
    invoke-static {v3, v4, v1, v7}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    iput v3, v0, Lcom/google/android/material/internal/d;->v:F

    .line 435
    .line 436
    iget v3, v0, Lcom/google/android/material/internal/d;->r:F

    .line 437
    .line 438
    iget v4, v0, Lcom/google/android/material/internal/d;->s:F

    .line 439
    .line 440
    iget-object v7, v0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 441
    .line 442
    invoke-static {v3, v4, v1, v7}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    iput v3, v0, Lcom/google/android/material/internal/d;->w:F

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/d;->r(F)V

    .line 449
    .line 450
    .line 451
    move v3, v1

    .line 452
    goto :goto_9

    .line 453
    :goto_a
    sub-float v7, v4, v1

    .line 454
    .line 455
    sget-object v8, Ly5/a;->b:Lg1/a;

    .line 456
    .line 457
    invoke-static {v6, v4, v7, v8}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    sub-float v7, v4, v7

    .line 462
    .line 463
    iput v7, v0, Lcom/google/android/material/internal/d;->k0:F

    .line 464
    .line 465
    sget-object v7, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 466
    .line 467
    invoke-virtual {v2}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 468
    .line 469
    .line 470
    invoke-static {v4, v6, v1, v8}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 471
    .line 472
    .line 473
    move-result v7

    .line 474
    iput v7, v0, Lcom/google/android/material/internal/d;->l0:F

    .line 475
    .line 476
    invoke-virtual {v2}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 477
    .line 478
    .line 479
    iget-object v4, v0, Lcom/google/android/material/internal/d;->p:Landroid/content/res/ColorStateList;

    .line 480
    .line 481
    iget-object v7, v0, Lcom/google/android/material/internal/d;->o:Landroid/content/res/ColorStateList;

    .line 482
    .line 483
    if-eq v4, v7, :cond_15

    .line 484
    .line 485
    invoke-virtual {v0, v7}, Lcom/google/android/material/internal/d;->f(Landroid/content/res/ColorStateList;)I

    .line 486
    .line 487
    .line 488
    move-result v4

    .line 489
    iget-object v7, v0, Lcom/google/android/material/internal/d;->p:Landroid/content/res/ColorStateList;

    .line 490
    .line 491
    invoke-virtual {v0, v7}, Lcom/google/android/material/internal/d;->f(Landroid/content/res/ColorStateList;)I

    .line 492
    .line 493
    .line 494
    move-result v7

    .line 495
    invoke-static {v3, v4, v7}, Lcom/google/android/material/internal/d;->a(FII)I

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 500
    .line 501
    .line 502
    goto :goto_b

    .line 503
    :cond_15
    invoke-virtual {v0, v4}, Lcom/google/android/material/internal/d;->f(Landroid/content/res/ColorStateList;)I

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 508
    .line 509
    .line 510
    :goto_b
    iget v3, v0, Lcom/google/android/material/internal/d;->f0:F

    .line 511
    .line 512
    iget v4, v0, Lcom/google/android/material/internal/d;->g0:F

    .line 513
    .line 514
    cmpl-float v7, v3, v4

    .line 515
    .line 516
    if-eqz v7, :cond_16

    .line 517
    .line 518
    invoke-static {v4, v3, v1, v8}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 523
    .line 524
    .line 525
    goto :goto_c

    .line 526
    :cond_16
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 527
    .line 528
    .line 529
    :goto_c
    iget v3, v0, Lcom/google/android/material/internal/d;->b0:F

    .line 530
    .line 531
    iget v4, v0, Lcom/google/android/material/internal/d;->X:F

    .line 532
    .line 533
    invoke-static {v3, v4, v1}, Ly5/a;->a(FFF)F

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    iput v3, v0, Lcom/google/android/material/internal/d;->N:F

    .line 538
    .line 539
    iget v3, v0, Lcom/google/android/material/internal/d;->c0:F

    .line 540
    .line 541
    iget v4, v0, Lcom/google/android/material/internal/d;->Y:F

    .line 542
    .line 543
    invoke-static {v3, v4, v1}, Ly5/a;->a(FFF)F

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    iput v3, v0, Lcom/google/android/material/internal/d;->O:F

    .line 548
    .line 549
    iget v3, v0, Lcom/google/android/material/internal/d;->d0:F

    .line 550
    .line 551
    iget v4, v0, Lcom/google/android/material/internal/d;->Z:F

    .line 552
    .line 553
    invoke-static {v3, v4, v1}, Ly5/a;->a(FFF)F

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    iput v3, v0, Lcom/google/android/material/internal/d;->P:F

    .line 558
    .line 559
    iget-object v3, v0, Lcom/google/android/material/internal/d;->e0:Landroid/content/res/ColorStateList;

    .line 560
    .line 561
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/d;->f(Landroid/content/res/ColorStateList;)I

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    iget-object v4, v0, Lcom/google/android/material/internal/d;->a0:Landroid/content/res/ColorStateList;

    .line 566
    .line 567
    invoke-virtual {v0, v4}, Lcom/google/android/material/internal/d;->f(Landroid/content/res/ColorStateList;)I

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    invoke-static {v1, v3, v4}, Lcom/google/android/material/internal/d;->a(FII)I

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    iput v3, v0, Lcom/google/android/material/internal/d;->Q:I

    .line 576
    .line 577
    iget v4, v0, Lcom/google/android/material/internal/d;->N:F

    .line 578
    .line 579
    iget v7, v0, Lcom/google/android/material/internal/d;->O:F

    .line 580
    .line 581
    iget v8, v0, Lcom/google/android/material/internal/d;->P:F

    .line 582
    .line 583
    invoke-virtual {v5, v4, v7, v8, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 584
    .line 585
    .line 586
    iget-boolean v3, v0, Lcom/google/android/material/internal/d;->d:Z

    .line 587
    .line 588
    if-eqz v3, :cond_18

    .line 589
    .line 590
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    .line 591
    .line 592
    .line 593
    move-result v3

    .line 594
    iget v4, v0, Lcom/google/android/material/internal/d;->f:F

    .line 595
    .line 596
    cmpg-float v7, v1, v4

    .line 597
    .line 598
    if-gtz v7, :cond_17

    .line 599
    .line 600
    iget v7, v0, Lcom/google/android/material/internal/d;->e:F

    .line 601
    .line 602
    const/high16 v8, 0x3f800000    # 1.0f

    .line 603
    .line 604
    invoke-static {v8, v6, v7, v4, v1}, Ly5/a;->b(FFFFF)F

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    goto :goto_d

    .line 609
    :cond_17
    const/high16 v8, 0x3f800000    # 1.0f

    .line 610
    .line 611
    invoke-static {v6, v8, v4, v8, v1}, Ly5/a;->b(FFFFF)F

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    :goto_d
    int-to-float v3, v3

    .line 616
    mul-float v1, v1, v3

    .line 617
    .line 618
    float-to-int v1, v1

    .line 619
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 620
    .line 621
    .line 622
    :cond_18
    invoke-virtual {v2}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 623
    .line 624
    .line 625
    :cond_19
    return-void
.end method

.method public final k(I)V
    .locals 4

    .line 1
    new-instance v0, Lr6/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/internal/d;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v2, p1}, Lr6/d;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Lr6/d;->j:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/material/internal/d;->p:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    :cond_0
    iget p1, v0, Lr6/d;->k:F

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    cmpl-float v2, p1, v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iput p1, p0, Lcom/google/android/material/internal/d;->n:F

    .line 26
    .line 27
    :cond_1
    iget-object p1, v0, Lr6/d;->a:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/material/internal/d;->a0:Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    :cond_2
    iget p1, v0, Lr6/d;->e:F

    .line 34
    .line 35
    iput p1, p0, Lcom/google/android/material/internal/d;->Y:F

    .line 36
    .line 37
    iget p1, v0, Lr6/d;->f:F

    .line 38
    .line 39
    iput p1, p0, Lcom/google/android/material/internal/d;->Z:F

    .line 40
    .line 41
    iget p1, v0, Lr6/d;->g:F

    .line 42
    .line 43
    iput p1, p0, Lcom/google/android/material/internal/d;->X:F

    .line 44
    .line 45
    iget p1, v0, Lr6/d;->i:F

    .line 46
    .line 47
    iput p1, p0, Lcom/google/android/material/internal/d;->f0:F

    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/material/internal/d;->F:Lr6/a;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    iput-boolean v2, p1, Lr6/a;->t:Z

    .line 55
    .line 56
    :cond_3
    new-instance p1, Lr6/a;

    .line 57
    .line 58
    new-instance v2, Lcom/google/android/material/internal/c;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-direct {v2, p0, v3}, Lcom/google/android/material/internal/c;-><init>(Lcom/google/android/material/internal/d;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lr6/d;->a()V

    .line 65
    .line 66
    .line 67
    iget-object v3, v0, Lr6/d;->n:Landroid/graphics/Typeface;

    .line 68
    .line 69
    invoke-direct {p1, v2, v3}, Lr6/a;-><init>(Lcom/google/android/material/internal/c;Landroid/graphics/Typeface;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/google/android/material/internal/d;->F:Lr6/a;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v1, p0, Lcom/google/android/material/internal/d;->F:Lr6/a;

    .line 79
    .line 80
    invoke-virtual {v0, p1, v1}, Lr6/d;->c(Landroid/content/Context;Ll5/a;)V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/d;->j(Z)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/d;->p:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/internal/d;->p:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/d;->j(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/d;->l:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/internal/d;->l:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/d;->j(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final n(Landroid/graphics/Typeface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/d;->F:Lr6/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, v0, Lr6/a;->t:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/d;->z:Landroid/graphics/Typeface;

    .line 9
    .line 10
    if-eq v0, p1, :cond_2

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/material/internal/d;->z:Landroid/graphics/Typeface;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/material/internal/d;->a:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Ln5/d;->C(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/android/material/internal/d;->y:Landroid/graphics/Typeface;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/material/internal/d;->z:Landroid/graphics/Typeface;

    .line 37
    .line 38
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/d;->x:Landroid/graphics/Typeface;

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final o(I)V
    .locals 4

    .line 1
    new-instance v0, Lr6/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/internal/d;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v2, p1}, Lr6/d;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Lr6/d;->j:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/material/internal/d;->o:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    :cond_0
    iget p1, v0, Lr6/d;->k:F

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    cmpl-float v2, p1, v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iput p1, p0, Lcom/google/android/material/internal/d;->m:F

    .line 26
    .line 27
    :cond_1
    iget-object p1, v0, Lr6/d;->a:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/material/internal/d;->e0:Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    :cond_2
    iget p1, v0, Lr6/d;->e:F

    .line 34
    .line 35
    iput p1, p0, Lcom/google/android/material/internal/d;->c0:F

    .line 36
    .line 37
    iget p1, v0, Lr6/d;->f:F

    .line 38
    .line 39
    iput p1, p0, Lcom/google/android/material/internal/d;->d0:F

    .line 40
    .line 41
    iget p1, v0, Lr6/d;->g:F

    .line 42
    .line 43
    iput p1, p0, Lcom/google/android/material/internal/d;->b0:F

    .line 44
    .line 45
    iget p1, v0, Lr6/d;->i:F

    .line 46
    .line 47
    iput p1, p0, Lcom/google/android/material/internal/d;->g0:F

    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/material/internal/d;->E:Lr6/a;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    iput-boolean v2, p1, Lr6/a;->t:Z

    .line 55
    .line 56
    :cond_3
    new-instance p1, Lr6/a;

    .line 57
    .line 58
    new-instance v2, Lcom/google/android/material/internal/c;

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-direct {v2, p0, v3}, Lcom/google/android/material/internal/c;-><init>(Lcom/google/android/material/internal/d;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lr6/d;->a()V

    .line 65
    .line 66
    .line 67
    iget-object v3, v0, Lr6/d;->n:Landroid/graphics/Typeface;

    .line 68
    .line 69
    invoke-direct {p1, v2, v3}, Lr6/a;-><init>(Lcom/google/android/material/internal/c;Landroid/graphics/Typeface;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/google/android/material/internal/d;->E:Lr6/a;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v1, p0, Lcom/google/android/material/internal/d;->E:Lr6/a;

    .line 79
    .line 80
    invoke-virtual {v0, p1, v1}, Lr6/d;->c(Landroid/content/Context;Ll5/a;)V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/d;->j(Z)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final p(Landroid/graphics/Typeface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/d;->E:Lr6/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, v0, Lr6/a;->t:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/d;->C:Landroid/graphics/Typeface;

    .line 9
    .line 10
    if-eq v0, p1, :cond_2

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/material/internal/d;->C:Landroid/graphics/Typeface;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/material/internal/d;->a:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Ln5/d;->C(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/android/material/internal/d;->B:Landroid/graphics/Typeface;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/material/internal/d;->C:Landroid/graphics/Typeface;

    .line 37
    .line 38
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/d;->A:Landroid/graphics/Typeface;

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final q(F)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    cmpg-float v2, p1, v0

    .line 5
    .line 6
    if-gez v2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    cmpl-float v2, p1, v1

    .line 11
    .line 12
    if-lez v2, :cond_1

    .line 13
    .line 14
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    :cond_1
    :goto_0
    iget v2, p0, Lcom/google/android/material/internal/d;->c:F

    .line 17
    .line 18
    cmpl-float v2, p1, v2

    .line 19
    .line 20
    if-eqz v2, :cond_a

    .line 21
    .line 22
    iput p1, p0, Lcom/google/android/material/internal/d;->c:F

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/google/android/material/internal/d;->d:Z

    .line 25
    .line 26
    iget-object v3, p0, Lcom/google/android/material/internal/d;->j:Landroid/graphics/RectF;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/google/android/material/internal/d;->i:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget-object v5, p0, Lcom/google/android/material/internal/d;->h:Landroid/graphics/Rect;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    iget v2, p0, Lcom/google/android/material/internal/d;->f:F

    .line 35
    .line 36
    cmpg-float v2, p1, v2

    .line 37
    .line 38
    if-gez v2, :cond_2

    .line 39
    .line 40
    move-object v4, v5

    .line 41
    :cond_2
    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    int-to-float v2, v2

    .line 48
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    int-to-float v6, v6

    .line 51
    iget-object v7, p0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 52
    .line 53
    invoke-static {v2, v6, p1, v7}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iput v2, v3, Landroid/graphics/RectF;->left:F

    .line 58
    .line 59
    iget v2, p0, Lcom/google/android/material/internal/d;->r:F

    .line 60
    .line 61
    iget v6, p0, Lcom/google/android/material/internal/d;->s:F

    .line 62
    .line 63
    iget-object v7, p0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 64
    .line 65
    invoke-static {v2, v6, p1, v7}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iput v2, v3, Landroid/graphics/RectF;->top:F

    .line 70
    .line 71
    iget v2, v5, Landroid/graphics/Rect;->right:I

    .line 72
    .line 73
    int-to-float v2, v2

    .line 74
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 75
    .line 76
    int-to-float v6, v6

    .line 77
    iget-object v7, p0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 78
    .line 79
    invoke-static {v2, v6, p1, v7}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iput v2, v3, Landroid/graphics/RectF;->right:F

    .line 84
    .line 85
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    int-to-float v2, v2

    .line 88
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 89
    .line 90
    int-to-float v4, v4

    .line 91
    iget-object v5, p0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 92
    .line 93
    invoke-static {v2, v4, p1, v5}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 98
    .line 99
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/material/internal/d;->d:Z

    .line 100
    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    iget v2, p0, Lcom/google/android/material/internal/d;->f:F

    .line 104
    .line 105
    cmpg-float v2, p1, v2

    .line 106
    .line 107
    if-gez v2, :cond_4

    .line 108
    .line 109
    iget v2, p0, Lcom/google/android/material/internal/d;->t:F

    .line 110
    .line 111
    iput v2, p0, Lcom/google/android/material/internal/d;->v:F

    .line 112
    .line 113
    iget v2, p0, Lcom/google/android/material/internal/d;->r:F

    .line 114
    .line 115
    iput v2, p0, Lcom/google/android/material/internal/d;->w:F

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/d;->r(F)V

    .line 118
    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    iget v2, p0, Lcom/google/android/material/internal/d;->u:F

    .line 123
    .line 124
    iput v2, p0, Lcom/google/android/material/internal/d;->v:F

    .line 125
    .line 126
    iget v2, p0, Lcom/google/android/material/internal/d;->s:F

    .line 127
    .line 128
    const/4 v3, 0x0

    .line 129
    iget v4, p0, Lcom/google/android/material/internal/d;->g:I

    .line 130
    .line 131
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    int-to-float v3, v3

    .line 136
    sub-float/2addr v2, v3

    .line 137
    iput v2, p0, Lcom/google/android/material/internal/d;->w:F

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/d;->r(F)V

    .line 140
    .line 141
    .line 142
    const/high16 v2, 0x3f800000    # 1.0f

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    iget v2, p0, Lcom/google/android/material/internal/d;->t:F

    .line 146
    .line 147
    iget v3, p0, Lcom/google/android/material/internal/d;->u:F

    .line 148
    .line 149
    iget-object v4, p0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 150
    .line 151
    invoke-static {v2, v3, p1, v4}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    iput v2, p0, Lcom/google/android/material/internal/d;->v:F

    .line 156
    .line 157
    iget v2, p0, Lcom/google/android/material/internal/d;->r:F

    .line 158
    .line 159
    iget v3, p0, Lcom/google/android/material/internal/d;->s:F

    .line 160
    .line 161
    iget-object v4, p0, Lcom/google/android/material/internal/d;->V:Landroid/animation/TimeInterpolator;

    .line 162
    .line 163
    invoke-static {v2, v3, p1, v4}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    iput v2, p0, Lcom/google/android/material/internal/d;->w:F

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/d;->r(F)V

    .line 170
    .line 171
    .line 172
    move v2, p1

    .line 173
    :goto_2
    sub-float v3, v1, p1

    .line 174
    .line 175
    sget-object v4, Ly5/a;->b:Lg1/a;

    .line 176
    .line 177
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    sub-float v3, v1, v3

    .line 182
    .line 183
    iput v3, p0, Lcom/google/android/material/internal/d;->k0:F

    .line 184
    .line 185
    sget-object v3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 186
    .line 187
    iget-object v3, p0, Lcom/google/android/material/internal/d;->a:Landroid/view/ViewGroup;

    .line 188
    .line 189
    invoke-virtual {v3}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 190
    .line 191
    .line 192
    invoke-static {v1, v0, p1, v4}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    iput v5, p0, Lcom/google/android/material/internal/d;->l0:F

    .line 197
    .line 198
    invoke-virtual {v3}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 199
    .line 200
    .line 201
    iget-object v5, p0, Lcom/google/android/material/internal/d;->p:Landroid/content/res/ColorStateList;

    .line 202
    .line 203
    iget-object v6, p0, Lcom/google/android/material/internal/d;->o:Landroid/content/res/ColorStateList;

    .line 204
    .line 205
    iget-object v7, p0, Lcom/google/android/material/internal/d;->T:Landroid/text/TextPaint;

    .line 206
    .line 207
    if-eq v5, v6, :cond_6

    .line 208
    .line 209
    invoke-virtual {p0, v6}, Lcom/google/android/material/internal/d;->f(Landroid/content/res/ColorStateList;)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    iget-object v6, p0, Lcom/google/android/material/internal/d;->p:Landroid/content/res/ColorStateList;

    .line 214
    .line 215
    invoke-virtual {p0, v6}, Lcom/google/android/material/internal/d;->f(Landroid/content/res/ColorStateList;)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    invoke-static {v2, v5, v6}, Lcom/google/android/material/internal/d;->a(FII)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_6
    invoke-virtual {p0, v5}, Lcom/google/android/material/internal/d;->f(Landroid/content/res/ColorStateList;)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    .line 233
    .line 234
    :goto_3
    iget v2, p0, Lcom/google/android/material/internal/d;->f0:F

    .line 235
    .line 236
    iget v5, p0, Lcom/google/android/material/internal/d;->g0:F

    .line 237
    .line 238
    cmpl-float v6, v2, v5

    .line 239
    .line 240
    if-eqz v6, :cond_7

    .line 241
    .line 242
    invoke-static {v5, v2, p1, v4}, Lcom/google/android/material/internal/d;->g(FFFLandroid/animation/TimeInterpolator;)F

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_7
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 251
    .line 252
    .line 253
    :goto_4
    iget v2, p0, Lcom/google/android/material/internal/d;->b0:F

    .line 254
    .line 255
    iget v4, p0, Lcom/google/android/material/internal/d;->X:F

    .line 256
    .line 257
    invoke-static {v2, v4, p1}, Ly5/a;->a(FFF)F

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    iput v2, p0, Lcom/google/android/material/internal/d;->N:F

    .line 262
    .line 263
    iget v2, p0, Lcom/google/android/material/internal/d;->c0:F

    .line 264
    .line 265
    iget v4, p0, Lcom/google/android/material/internal/d;->Y:F

    .line 266
    .line 267
    invoke-static {v2, v4, p1}, Ly5/a;->a(FFF)F

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    iput v2, p0, Lcom/google/android/material/internal/d;->O:F

    .line 272
    .line 273
    iget v2, p0, Lcom/google/android/material/internal/d;->d0:F

    .line 274
    .line 275
    iget v4, p0, Lcom/google/android/material/internal/d;->Z:F

    .line 276
    .line 277
    invoke-static {v2, v4, p1}, Ly5/a;->a(FFF)F

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    iput v2, p0, Lcom/google/android/material/internal/d;->P:F

    .line 282
    .line 283
    iget-object v2, p0, Lcom/google/android/material/internal/d;->e0:Landroid/content/res/ColorStateList;

    .line 284
    .line 285
    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/d;->f(Landroid/content/res/ColorStateList;)I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    iget-object v4, p0, Lcom/google/android/material/internal/d;->a0:Landroid/content/res/ColorStateList;

    .line 290
    .line 291
    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/d;->f(Landroid/content/res/ColorStateList;)I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    invoke-static {p1, v2, v4}, Lcom/google/android/material/internal/d;->a(FII)I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    iput v2, p0, Lcom/google/android/material/internal/d;->Q:I

    .line 300
    .line 301
    iget v4, p0, Lcom/google/android/material/internal/d;->N:F

    .line 302
    .line 303
    iget v5, p0, Lcom/google/android/material/internal/d;->O:F

    .line 304
    .line 305
    iget v6, p0, Lcom/google/android/material/internal/d;->P:F

    .line 306
    .line 307
    invoke-virtual {v7, v4, v5, v6, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 308
    .line 309
    .line 310
    iget-boolean v2, p0, Lcom/google/android/material/internal/d;->d:Z

    .line 311
    .line 312
    if-eqz v2, :cond_9

    .line 313
    .line 314
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    iget v4, p0, Lcom/google/android/material/internal/d;->f:F

    .line 319
    .line 320
    cmpg-float v5, p1, v4

    .line 321
    .line 322
    if-gtz v5, :cond_8

    .line 323
    .line 324
    iget v5, p0, Lcom/google/android/material/internal/d;->e:F

    .line 325
    .line 326
    invoke-static {v1, v0, v5, v4, p1}, Ly5/a;->b(FFFFF)F

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    goto :goto_5

    .line 331
    :cond_8
    invoke-static {v0, v1, v4, v1, p1}, Ly5/a;->b(FFFFF)F

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    :goto_5
    int-to-float v0, v2

    .line 336
    mul-float p1, p1, v0

    .line 337
    .line 338
    float-to-int p1, p1

    .line 339
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 340
    .line 341
    .line 342
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 343
    .line 344
    .line 345
    :cond_a
    return-void
.end method

.method public final r(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/internal/d;->c(FZ)V

    .line 3
    .line 4
    .line 5
    sget-object p1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/material/internal/d;->a:Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
