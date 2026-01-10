.class public Lcom/google/android/material/divider/MaterialDividerItemDecoration;
.super Landroidx/recyclerview/widget/t0;
.source "MyApplication"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->h:Landroid/graphics/Rect;

    .line 10
    .line 11
    sget-object v3, Lx5/a;->E:[I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v6, v0, [I

    .line 15
    .line 16
    const v4, 0x7f04035e

    .line 17
    .line 18
    .line 19
    const v5, 0x7f1304b5

    .line 20
    .line 21
    .line 22
    move-object v1, p1

    .line 23
    move-object v2, p2

    .line 24
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/a0;->j(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p1, p2, v0}, Lcom/bumptech/glide/d;->k(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->c:I

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const v1, 0x7f07028d

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 v1, 0x3

    .line 50
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->b:I

    .line 55
    .line 56
    const/4 p1, 0x2

    .line 57
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->e:I

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->f:I

    .line 69
    .line 70
    const/4 v0, 0x4

    .line 71
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput-boolean v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->g:Z

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    .line 79
    .line 80
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    .line 81
    .line 82
    invoke-direct {p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->c:I

    .line 88
    .line 89
    iput v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->c:I

    .line 90
    .line 91
    invoke-static {p2}, Ln5/d;->W(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    iput-object p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    invoke-static {p2, v0}, Lg0/a;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 98
    .line 99
    .line 100
    if-eqz p3, :cond_1

    .line 101
    .line 102
    if-ne p3, p1, :cond_0

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string p2, "Invalid orientation: "

    .line 108
    .line 109
    const-string v0, ". It should be either HORIZONTAL or VERTICAL"

    .line 110
    .line 111
    invoke-static {p3, p2, v0}, Lea/q;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_1
    :goto_0
    iput p3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->d:I

    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    .line 4
    .line 5
    iget p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->d:I

    .line 6
    .line 7
    const/4 p3, 0x1

    .line 8
    iget p4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->b:I

    .line 9
    .line 10
    if-ne p2, p3, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    add-int/2addr p2, p4

    .line 19
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    add-int/2addr p2, p4

    .line 29
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V
    .locals 11

    .line 1
    const/4 p3, 0x1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/x0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->d:I

    .line 12
    .line 13
    iget v2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->b:I

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->h:Landroid/graphics/Rect;

    .line 16
    .line 17
    iget v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->f:I

    .line 18
    .line 19
    iget v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->e:I

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    if-ne v1, p3, :cond_7

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    sub-int/2addr v7, v8

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    sub-int/2addr v9, v10

    .line 59
    invoke-virtual {p1, v1, v8, v7, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    const/4 v1, 0x0

    .line 68
    :goto_0
    sget-object v8, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-ne v8, p3, :cond_2

    .line 75
    .line 76
    const/4 v8, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/4 v8, 0x0

    .line 79
    :goto_1
    if-eqz v8, :cond_3

    .line 80
    .line 81
    move v9, v4

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move v9, v5

    .line 84
    :goto_2
    add-int/2addr v1, v9

    .line 85
    if-eqz v8, :cond_4

    .line 86
    .line 87
    move v4, v5

    .line 88
    :cond_4
    sub-int/2addr v7, v4

    .line 89
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    iget-boolean v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->g:Z

    .line 94
    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    sub-int/2addr v4, p3

    .line 99
    :goto_3
    if-ge v6, v4, :cond_6

    .line 100
    .line 101
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {p2, v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 106
    .line 107
    .line 108
    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    .line 109
    .line 110
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    add-int/2addr v5, v8

    .line 119
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    sub-int v8, v5, v8

    .line 124
    .line 125
    sub-int/2addr v8, v2

    .line 126
    invoke-virtual {v0, v1, v8, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    .line 131
    .line 132
    add-int/2addr v6, p3

    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_8

    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    sub-int/2addr v7, v8

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    sub-int/2addr v9, v10

    .line 173
    invoke-virtual {p1, v8, v1, v9, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    const/4 v1, 0x0

    .line 182
    :goto_4
    add-int/2addr v1, v5

    .line 183
    sub-int/2addr v7, v4

    .line 184
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    :goto_5
    if-ge v6, v4, :cond_9

    .line 189
    .line 190
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/x0;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v8, v5, v3}, Landroidx/recyclerview/widget/x0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 199
    .line 200
    .line 201
    iget v8, v3, Landroid/graphics/Rect;->right:I

    .line 202
    .line 203
    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    add-int/2addr v5, v8

    .line 212
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    sub-int v8, v5, v8

    .line 217
    .line 218
    sub-int/2addr v8, v2

    .line 219
    invoke-virtual {v0, v8, v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 223
    .line 224
    .line 225
    add-int/2addr v6, p3

    .line 226
    goto :goto_5

    .line 227
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 228
    .line 229
    .line 230
    :goto_6
    return-void
.end method
