.class public final Ll6/e;
.super Ll6/b;
.source "MyApplication"


# instance fields
.field public final g:Ll6/d;

.field public final h:Z

.field public final synthetic i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lj7/c;Ll6/d;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll6/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ll6/b;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lj7/c;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Ll6/e;->g:Ll6/d;

    .line 7
    .line 8
    iput-boolean p4, p0, Ll6/e;->h:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Landroid/animation/AnimatorSet;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Ll6/b;->f:Ly5/e;

    .line 5
    .line 6
    if-eqz v3, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Ll6/b;->e:Ly5/e;

    .line 10
    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Ll6/b;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Ll6/e;->c()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-static {v3, v4}, Ly5/e;->b(Landroid/content/Context;I)Ly5/e;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iput-object v3, p0, Ll6/b;->e:Ly5/e;

    .line 24
    .line 25
    :cond_1
    iget-object v3, p0, Ll6/b;->e:Ly5/e;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :goto_0
    const-string v4, "width"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ly5/e;->g(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-object v6, p0, Ll6/e;->g:Ll6/d;

    .line 37
    .line 38
    iget-object v7, p0, Ll6/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ly5/e;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    aget-object v8, v5, v2

    .line 47
    .line 48
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    int-to-float v9, v9

    .line 53
    iget v10, v6, Ll6/d;->a:I

    .line 54
    .line 55
    packed-switch v10, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    iget-object v10, v6, Ll6/d;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 59
    .line 60
    invoke-virtual {v10}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    goto :goto_1

    .line 65
    :pswitch_0
    iget-object v10, v6, Ll6/d;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 66
    .line 67
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    invoke-virtual {v10}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    mul-int/lit8 v12, v12, 0x2

    .line 76
    .line 77
    sub-int/2addr v11, v12

    .line 78
    iget v12, v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y:I

    .line 79
    .line 80
    add-int/2addr v11, v12

    .line 81
    iget v10, v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:I

    .line 82
    .line 83
    add-int/2addr v10, v11

    .line 84
    :goto_1
    int-to-float v10, v10

    .line 85
    new-array v11, v1, [F

    .line 86
    .line 87
    aput v9, v11, v2

    .line 88
    .line 89
    aput v10, v11, v0

    .line 90
    .line 91
    invoke-virtual {v8, v11}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v4, v5}, Ly5/e;->h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    const-string v4, "height"

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ly5/e;->g(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_3

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ly5/e;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    aget-object v8, v5, v2

    .line 110
    .line 111
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    int-to-float v9, v9

    .line 116
    iget v10, v6, Ll6/d;->a:I

    .line 117
    .line 118
    packed-switch v10, :pswitch_data_1

    .line 119
    .line 120
    .line 121
    iget-object v10, v6, Ll6/d;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 122
    .line 123
    invoke-virtual {v10}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    goto :goto_2

    .line 128
    :pswitch_1
    iget-object v10, v6, Ll6/d;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 129
    .line 130
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    :goto_2
    int-to-float v10, v10

    .line 135
    new-array v11, v1, [F

    .line 136
    .line 137
    aput v9, v11, v2

    .line 138
    .line 139
    aput v10, v11, v0

    .line 140
    .line 141
    invoke-virtual {v8, v11}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v4, v5}, Ly5/e;->h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    const-string v4, "paddingStart"

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Ly5/e;->g(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_4

    .line 154
    .line 155
    invoke-virtual {v3, v4}, Ly5/e;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    aget-object v8, v5, v2

    .line 160
    .line 161
    sget-object v9, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 162
    .line 163
    invoke-virtual {v7}, Landroid/view/View;->getPaddingStart()I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    int-to-float v9, v9

    .line 168
    invoke-virtual {v6}, Ll6/d;->c()I

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    int-to-float v10, v10

    .line 173
    new-array v11, v1, [F

    .line 174
    .line 175
    aput v9, v11, v2

    .line 176
    .line 177
    aput v10, v11, v0

    .line 178
    .line 179
    invoke-virtual {v8, v11}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v4, v5}, Ly5/e;->h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    const-string v4, "paddingEnd"

    .line 186
    .line 187
    invoke-virtual {v3, v4}, Ly5/e;->g(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_5

    .line 192
    .line 193
    invoke-virtual {v3, v4}, Ly5/e;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    aget-object v8, v5, v2

    .line 198
    .line 199
    sget-object v9, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 200
    .line 201
    invoke-virtual {v7}, Landroid/view/View;->getPaddingEnd()I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    int-to-float v7, v7

    .line 206
    invoke-virtual {v6}, Ll6/d;->b()I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    int-to-float v6, v6

    .line 211
    new-array v9, v1, [F

    .line 212
    .line 213
    aput v7, v9, v2

    .line 214
    .line 215
    aput v6, v9, v0

    .line 216
    .line 217
    invoke-virtual {v8, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v4, v5}, Ly5/e;->h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 221
    .line 222
    .line 223
    :cond_5
    const-string v4, "labelOpacity"

    .line 224
    .line 225
    invoke-virtual {v3, v4}, Ly5/e;->g(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_8

    .line 230
    .line 231
    invoke-virtual {v3, v4}, Ly5/e;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    const/high16 v6, 0x3f800000    # 1.0f

    .line 236
    .line 237
    const/4 v7, 0x0

    .line 238
    iget-boolean v8, p0, Ll6/e;->h:Z

    .line 239
    .line 240
    if-eqz v8, :cond_6

    .line 241
    .line 242
    const/4 v9, 0x0

    .line 243
    goto :goto_3

    .line 244
    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    .line 245
    .line 246
    :goto_3
    if-eqz v8, :cond_7

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_7
    const/4 v6, 0x0

    .line 250
    :goto_4
    aget-object v7, v5, v2

    .line 251
    .line 252
    new-array v1, v1, [F

    .line 253
    .line 254
    aput v9, v1, v2

    .line 255
    .line 256
    aput v6, v1, v0

    .line 257
    .line 258
    invoke-virtual {v7, v1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v4, v5}, Ly5/e;->h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 262
    .line 263
    .line 264
    :cond_8
    invoke-virtual {p0, v3}, Ll6/b;->b(Ly5/e;)Landroid/animation/AnimatorSet;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    return-object v0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll6/e;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f02002f

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x7f02002e

    .line 10
    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ll6/b;->d:Lj7/c;

    .line 3
    .line 4
    iput-object v0, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v0, p0, Ll6/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v1, p0, Ll6/e;->g:Ll6/d;

    .line 22
    .line 23
    invoke-virtual {v1}, Ll6/d;->a()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    .line 29
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    .line 31
    invoke-virtual {v1}, Ll6/d;->a()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    .line 37
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    return-void
.end method

.method public final f(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll6/b;->d:Lj7/c;

    .line 2
    .line 3
    iget-object v1, v0, Lj7/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/animation/Animator;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p1, v0, Lj7/c;->b:Ljava/lang/Object;

    .line 13
    .line 14
    iget-boolean p1, p0, Ll6/e;->h:Z

    .line 15
    .line 16
    iget-object v0, p0, Ll6/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 17
    .line 18
    iput-boolean p1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:Z

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Ll6/e;->h:Z

    .line 2
    .line 3
    iget-object v1, p0, Ll6/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    iput-boolean v0, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:Z

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, p0, Ll6/e;->g:Ll6/d;

    .line 15
    .line 16
    invoke-virtual {v2}, Ll6/d;->a()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 21
    .line 22
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    .line 24
    invoke-virtual {v2}, Ll6/d;->a()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    .line 30
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    .line 32
    invoke-virtual {v2}, Ll6/d;->c()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2}, Ll6/d;->b()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    sget-object v5, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 49
    .line 50
    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setPaddingRelative(IIII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ll6/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Ll6/e;->h:Z

    .line 6
    .line 7
    if-eq v2, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method
