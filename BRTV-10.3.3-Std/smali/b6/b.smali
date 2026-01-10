.class public final Lb6/b;
.super Lcom/google/android/material/navigation/f;
.source "MyApplication"


# instance fields
.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public I:Z

.field public final J:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/f;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    .line 6
    const/4 v0, -0x2

    .line 7
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x11

    .line 11
    .line 12
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const v0, 0x7f07008c

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lb6/b;->E:I

    .line 29
    .line 30
    const v0, 0x7f07008d

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lb6/b;->F:I

    .line 38
    .line 39
    const v0, 0x7f070086

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lb6/b;->G:I

    .line 47
    .line 48
    const v0, 0x7f070087

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lb6/b;->H:I

    .line 56
    .line 57
    const/4 p1, 0x5

    .line 58
    new-array p1, p1, [I

    .line 59
    .line 60
    iput-object p1, p0, Lb6/b;->J:[I

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;)Lcom/google/android/material/navigation/d;
    .locals 1

    .line 1
    new-instance v0, Lb6/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/material/navigation/d;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    sub-int/2addr p4, p2

    .line 7
    sub-int/2addr p5, p3

    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 p3, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge p3, v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    sget-object v3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v3, p1, :cond_1

    .line 33
    .line 34
    sub-int v3, p4, v1

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sub-int v4, v3, v4

    .line 41
    .line 42
    invoke-virtual {v2, v4, p2, v3, p5}, Landroid/view/View;->layout(IIII)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/2addr v3, v1

    .line 51
    invoke-virtual {v2, v1, p2, v3, p5}, Landroid/view/View;->layout(IIII)V

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    add-int/2addr v1, v2

    .line 59
    :goto_2
    add-int/2addr p3, p1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/navigation/f;->getMenu()Lk/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0}, Lk/l;->l()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/high16 v3, 0x40000000    # 2.0f

    .line 26
    .line 27
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/navigation/f;->getLabelVisibilityMode()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-static {v5, v0}, Lcom/google/android/material/navigation/f;->f(II)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget-object v6, p0, Lb6/b;->J:[I

    .line 40
    .line 41
    iget v7, p0, Lb6/b;->G:I

    .line 42
    .line 43
    const/16 v8, 0x8

    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    const/4 v10, 0x0

    .line 47
    if-eqz v5, :cond_6

    .line 48
    .line 49
    iget-boolean v5, p0, Lb6/b;->I:Z

    .line 50
    .line 51
    if-eqz v5, :cond_6

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/google/android/material/navigation/f;->getSelectedItemPosition()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    iget v12, p0, Lb6/b;->H:I

    .line 66
    .line 67
    if-eq v11, v8, :cond_0

    .line 68
    .line 69
    const/high16 v11, -0x80000000

    .line 70
    .line 71
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    invoke-virtual {v5, v11, v4}, Landroid/view/View;->measure(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eq v5, v8, :cond_1

    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const/4 v5, 0x0

    .line 95
    :goto_0
    sub-int/2addr v0, v5

    .line 96
    iget v5, p0, Lb6/b;->F:I

    .line 97
    .line 98
    mul-int v5, v5, v0

    .line 99
    .line 100
    sub-int v5, p1, v5

    .line 101
    .line 102
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    sub-int/2addr p1, v5

    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move v9, v0

    .line 115
    :goto_1
    div-int v7, p1, v9

    .line 116
    .line 117
    iget v9, p0, Lb6/b;->E:I

    .line 118
    .line 119
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    mul-int v0, v0, v7

    .line 124
    .line 125
    sub-int/2addr p1, v0

    .line 126
    const/4 v0, 0x0

    .line 127
    :goto_2
    if-ge v0, v1, :cond_a

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-eq v9, v8, :cond_4

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/google/android/material/navigation/f;->getSelectedItemPosition()I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-ne v0, v9, :cond_3

    .line 144
    .line 145
    move v9, v5

    .line 146
    goto :goto_3

    .line 147
    :cond_3
    move v9, v7

    .line 148
    :goto_3
    aput v9, v6, v0

    .line 149
    .line 150
    if-lez p1, :cond_5

    .line 151
    .line 152
    add-int/lit8 v9, v9, 0x1

    .line 153
    .line 154
    aput v9, v6, v0

    .line 155
    .line 156
    add-int/lit8 p1, p1, -0x1

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_4
    aput v10, v6, v0

    .line 160
    .line 161
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    if-nez v0, :cond_7

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_7
    move v9, v0

    .line 168
    :goto_5
    div-int v5, p1, v9

    .line 169
    .line 170
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    mul-int v0, v0, v5

    .line 175
    .line 176
    sub-int/2addr p1, v0

    .line 177
    const/4 v0, 0x0

    .line 178
    :goto_6
    if-ge v0, v1, :cond_a

    .line 179
    .line 180
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eq v7, v8, :cond_8

    .line 189
    .line 190
    aput v5, v6, v0

    .line 191
    .line 192
    if-lez p1, :cond_9

    .line 193
    .line 194
    add-int/lit8 v7, v5, 0x1

    .line 195
    .line 196
    aput v7, v6, v0

    .line 197
    .line 198
    add-int/lit8 p1, p1, -0x1

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_8
    aput v10, v6, v0

    .line 202
    .line 203
    :cond_9
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_a
    const/4 p1, 0x0

    .line 207
    const/4 v0, 0x0

    .line 208
    :goto_8
    if-ge p1, v1, :cond_c

    .line 209
    .line 210
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-ne v7, v8, :cond_b

    .line 219
    .line 220
    goto :goto_9

    .line 221
    :cond_b
    aget v7, v6, p1

    .line 222
    .line 223
    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    invoke-virtual {v5, v7, v4}, Landroid/view/View;->measure(II)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 239
    .line 240
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    add-int/2addr v0, v5

    .line 245
    :goto_9
    add-int/lit8 p1, p1, 0x1

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_c
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    invoke-static {v0, p1, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    invoke-static {v2, p2, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 261
    .line 262
    .line 263
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb6/b;->I:Z

    .line 2
    .line 3
    return-void
.end method
