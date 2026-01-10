.class public final Lcom/google/android/material/button/c;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final t:Z

.field public static final u:Z


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Lu6/m;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Landroid/graphics/drawable/LayerDrawable;

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Lcom/google/android/material/button/c;->t:Z

    .line 5
    .line 6
    const/16 v2, 0x16

    .line 7
    .line 8
    if-gt v0, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    sput-boolean v1, Lcom/google/android/material/button/c;->u:Z

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lu6/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/button/c;->n:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/button/c;->o:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/google/android/material/button/c;->p:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/material/button/c;->a:Lcom/google/android/material/button/MaterialButton;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/material/button/c;->b:Lu6/m;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Lu6/x;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/c;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/button/c;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x2

    .line 19
    if-le v0, v2, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/material/button/c;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lu6/x;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/c;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lu6/x;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public final b(Z)Lu6/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/c;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Lcom/google/android/material/button/c;->t:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/button/c;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 29
    .line 30
    xor-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lu6/h;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/c;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 40
    .line 41
    xor-int/lit8 p1, p1, 0x1

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lu6/h;

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_1
    const/4 p1, 0x0

    .line 51
    return-object p1
.end method

.method public final c(Lu6/m;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/button/c;->b:Lu6/m;

    .line 2
    .line 3
    sget-boolean v0, Lcom/google/android/material/button/c;->u:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/material/button/c;->o:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/material/button/c;->a:Lcom/google/android/material/button/MaterialButton;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/button/c;->e()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/c;->b(Z)Lu6/h;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/c;->b(Z)Lu6/h;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lu6/h;->setShapeAppearanceModel(Lu6/m;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/c;->b(Z)Lu6/h;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/c;->b(Z)Lu6/h;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lu6/h;->setShapeAppearanceModel(Lu6/m;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/button/c;->a()Lu6/x;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/button/c;->a()Lu6/x;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0, p1}, Lu6/x;->setShapeAppearanceModel(Lu6/m;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_0
    return-void
.end method

.method public final d(II)V
    .locals 8

    .line 1
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/button/c;->a:Lcom/google/android/material/button/MaterialButton;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iget v5, p0, Lcom/google/android/material/button/c;->e:I

    .line 22
    .line 23
    iget v6, p0, Lcom/google/android/material/button/c;->f:I

    .line 24
    .line 25
    iput p2, p0, Lcom/google/android/material/button/c;->f:I

    .line 26
    .line 27
    iput p1, p0, Lcom/google/android/material/button/c;->e:I

    .line 28
    .line 29
    iget-boolean v7, p0, Lcom/google/android/material/button/c;->o:Z

    .line 30
    .line 31
    if-nez v7, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/button/c;->e()V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/2addr v2, p1

    .line 37
    sub-int/2addr v2, v5

    .line 38
    add-int/2addr v4, p2

    .line 39
    sub-int/2addr v4, v6

    .line 40
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final e()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    new-instance v3, Lu6/h;

    .line 5
    .line 6
    iget-object v4, p0, Lcom/google/android/material/button/c;->b:Lu6/m;

    .line 7
    .line 8
    invoke-direct {v3, v4}, Lu6/h;-><init>(Lu6/m;)V

    .line 9
    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/android/material/button/c;->a:Lcom/google/android/material/button/MaterialButton;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v3, v5}, Lu6/h;->k(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iget-object v5, p0, Lcom/google/android/material/button/c;->j:Landroid/content/res/ColorStateList;

    .line 21
    .line 22
    invoke-static {v3, v5}, Lg0/a;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 23
    .line 24
    .line 25
    iget-object v5, p0, Lcom/google/android/material/button/c;->i:Landroid/graphics/PorterDuff$Mode;

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    invoke-static {v3, v5}, Lg0/a;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget v5, p0, Lcom/google/android/material/button/c;->h:I

    .line 33
    .line 34
    int-to-float v5, v5

    .line 35
    iget-object v6, p0, Lcom/google/android/material/button/c;->k:Landroid/content/res/ColorStateList;

    .line 36
    .line 37
    iget-object v7, v3, Lu6/h;->a:Lu6/g;

    .line 38
    .line 39
    iput v5, v7, Lu6/g;->j:F

    .line 40
    .line 41
    invoke-virtual {v3}, Lu6/h;->invalidateSelf()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v6}, Lu6/h;->s(Landroid/content/res/ColorStateList;)V

    .line 45
    .line 46
    .line 47
    new-instance v5, Lu6/h;

    .line 48
    .line 49
    iget-object v6, p0, Lcom/google/android/material/button/c;->b:Lu6/m;

    .line 50
    .line 51
    invoke-direct {v5, v6}, Lu6/h;-><init>(Lu6/m;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v2}, Lu6/h;->setTint(I)V

    .line 55
    .line 56
    .line 57
    iget v6, p0, Lcom/google/android/material/button/c;->h:I

    .line 58
    .line 59
    int-to-float v6, v6

    .line 60
    iget-boolean v7, p0, Lcom/google/android/material/button/c;->n:Z

    .line 61
    .line 62
    if-eqz v7, :cond_1

    .line 63
    .line 64
    const v7, 0x7f040147

    .line 65
    .line 66
    .line 67
    invoke-static {v7, v4}, Lo9/e;->p(ILandroid/view/View;)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v7, 0x0

    .line 73
    :goto_0
    iget-object v8, v5, Lu6/h;->a:Lu6/g;

    .line 74
    .line 75
    iput v6, v8, Lu6/g;->j:F

    .line 76
    .line 77
    invoke-virtual {v5}, Lu6/h;->invalidateSelf()V

    .line 78
    .line 79
    .line 80
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Lu6/h;->s(Landroid/content/res/ColorStateList;)V

    .line 85
    .line 86
    .line 87
    sget-boolean v6, Lcom/google/android/material/button/c;->t:Z

    .line 88
    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    new-instance v6, Lu6/h;

    .line 92
    .line 93
    iget-object v7, p0, Lcom/google/android/material/button/c;->b:Lu6/m;

    .line 94
    .line 95
    invoke-direct {v6, v7}, Lu6/h;-><init>(Lu6/m;)V

    .line 96
    .line 97
    .line 98
    iput-object v6, p0, Lcom/google/android/material/button/c;->m:Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    const/4 v7, -0x1

    .line 101
    invoke-static {v6, v7}, Lg0/a;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 102
    .line 103
    .line 104
    new-instance v6, Landroid/graphics/drawable/RippleDrawable;

    .line 105
    .line 106
    iget-object v7, p0, Lcom/google/android/material/button/c;->l:Landroid/content/res/ColorStateList;

    .line 107
    .line 108
    invoke-static {v7}, Ls6/c;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    .line 113
    .line 114
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    aput-object v5, v1, v2

    .line 117
    .line 118
    aput-object v3, v1, v0

    .line 119
    .line 120
    invoke-direct {v9, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    .line 124
    .line 125
    iget v10, p0, Lcom/google/android/material/button/c;->c:I

    .line 126
    .line 127
    iget v11, p0, Lcom/google/android/material/button/c;->e:I

    .line 128
    .line 129
    iget v12, p0, Lcom/google/android/material/button/c;->d:I

    .line 130
    .line 131
    iget v13, p0, Lcom/google/android/material/button/c;->f:I

    .line 132
    .line 133
    move-object v8, v0

    .line 134
    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/google/android/material/button/c;->m:Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    invoke-direct {v6, v7, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    iput-object v6, p0, Lcom/google/android/material/button/c;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    new-instance v6, Ls6/b;

    .line 146
    .line 147
    iget-object v7, p0, Lcom/google/android/material/button/c;->b:Lu6/m;

    .line 148
    .line 149
    new-instance v8, Ls6/a;

    .line 150
    .line 151
    new-instance v9, Lu6/h;

    .line 152
    .line 153
    invoke-direct {v9, v7}, Lu6/h;-><init>(Lu6/m;)V

    .line 154
    .line 155
    .line 156
    invoke-direct {v8}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object v9, v8, Ls6/a;->a:Lu6/h;

    .line 160
    .line 161
    iput-boolean v2, v8, Ls6/a;->b:Z

    .line 162
    .line 163
    invoke-direct {v6, v8}, Ls6/b;-><init>(Ls6/a;)V

    .line 164
    .line 165
    .line 166
    iput-object v6, p0, Lcom/google/android/material/button/c;->m:Landroid/graphics/drawable/Drawable;

    .line 167
    .line 168
    iget-object v7, p0, Lcom/google/android/material/button/c;->l:Landroid/content/res/ColorStateList;

    .line 169
    .line 170
    invoke-static {v7}, Ls6/c;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-static {v6, v7}, Lg0/a;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 175
    .line 176
    .line 177
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    .line 178
    .line 179
    iget-object v6, p0, Lcom/google/android/material/button/c;->m:Landroid/graphics/drawable/Drawable;

    .line 180
    .line 181
    const/4 v7, 0x3

    .line 182
    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    aput-object v5, v7, v2

    .line 185
    .line 186
    aput-object v3, v7, v0

    .line 187
    .line 188
    aput-object v6, v7, v1

    .line 189
    .line 190
    invoke-direct {v9, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 191
    .line 192
    .line 193
    iput-object v9, p0, Lcom/google/android/material/button/c;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 194
    .line 195
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    .line 196
    .line 197
    iget v10, p0, Lcom/google/android/material/button/c;->c:I

    .line 198
    .line 199
    iget v11, p0, Lcom/google/android/material/button/c;->e:I

    .line 200
    .line 201
    iget v12, p0, Lcom/google/android/material/button/c;->d:I

    .line 202
    .line 203
    iget v13, p0, Lcom/google/android/material/button/c;->f:I

    .line 204
    .line 205
    move-object v8, v6

    .line 206
    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 207
    .line 208
    .line 209
    :goto_1
    invoke-virtual {v4, v6}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/c;->b(Z)Lu6/h;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_3

    .line 217
    .line 218
    iget v1, p0, Lcom/google/android/material/button/c;->s:I

    .line 219
    .line 220
    int-to-float v1, v1

    .line 221
    invoke-virtual {v0, v1}, Lu6/h;->m(F)V

    .line 222
    .line 223
    .line 224
    :cond_3
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/c;->b(Z)Lu6/h;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/c;->b(Z)Lu6/h;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v3, p0, Lcom/google/android/material/button/c;->h:I

    .line 14
    .line 15
    int-to-float v3, v3

    .line 16
    iget-object v4, p0, Lcom/google/android/material/button/c;->k:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    iget-object v5, v1, Lu6/h;->a:Lu6/g;

    .line 19
    .line 20
    iput v3, v5, Lu6/g;->j:F

    .line 21
    .line 22
    invoke-virtual {v1}, Lu6/h;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v4}, Lu6/h;->s(Landroid/content/res/ColorStateList;)V

    .line 26
    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget v1, p0, Lcom/google/android/material/button/c;->h:I

    .line 31
    .line 32
    int-to-float v1, v1

    .line 33
    iget-boolean v3, p0, Lcom/google/android/material/button/c;->n:Z

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/material/button/c;->a:Lcom/google/android/material/button/MaterialButton;

    .line 38
    .line 39
    const v3, 0x7f040147

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v0}, Lo9/e;->p(ILandroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    :cond_0
    iget-object v3, v2, Lu6/h;->a:Lu6/g;

    .line 47
    .line 48
    iput v1, v3, Lu6/g;->j:F

    .line 49
    .line 50
    invoke-virtual {v2}, Lu6/h;->invalidateSelf()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Lu6/h;->s(Landroid/content/res/ColorStateList;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method
