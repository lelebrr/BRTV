.class public final Landroidx/appcompat/app/s;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ln0/s;
.implements Landroidx/appcompat/widget/h1;
.implements Lk/x;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/app/g0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/g0;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/app/s;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/g0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Lk/l;Z)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/appcompat/app/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lk/l;->k()Lk/l;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, p1, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-eqz v3, :cond_1

    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :cond_1
    iget-object v4, p0, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/g0;

    .line 21
    .line 22
    iget-object v5, v4, Landroidx/appcompat/app/g0;->M:[Landroidx/appcompat/app/f0;

    .line 23
    .line 24
    if-eqz v5, :cond_2

    .line 25
    .line 26
    array-length v6, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v6, 0x0

    .line 29
    :goto_1
    if-ge v1, v6, :cond_4

    .line 30
    .line 31
    aget-object v7, v5, v1

    .line 32
    .line 33
    if-eqz v7, :cond_3

    .line 34
    .line 35
    iget-object v8, v7, Landroidx/appcompat/app/f0;->h:Lk/l;

    .line 36
    .line 37
    if-ne v8, p1, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    const/4 v7, 0x0

    .line 44
    :goto_2
    if-eqz v7, :cond_6

    .line 45
    .line 46
    if-eqz v3, :cond_5

    .line 47
    .line 48
    iget p1, v7, Landroidx/appcompat/app/f0;->a:I

    .line 49
    .line 50
    invoke-virtual {v4, p1, v7, v0}, Landroidx/appcompat/app/g0;->q(ILandroidx/appcompat/app/f0;Lk/l;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v7, v2}, Landroidx/appcompat/app/g0;->s(Landroidx/appcompat/app/f0;Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {v4, v7, p2}, Landroidx/appcompat/app/g0;->s(Landroidx/appcompat/app/f0;Z)V

    .line 58
    .line 59
    .line 60
    :cond_6
    :goto_3
    return-void

    .line 61
    :pswitch_0
    iget-object p2, p0, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/g0;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/g0;->r(Lk/l;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lk/l;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/app/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lk/l;->k()Lk/l;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/g0;

    .line 13
    .line 14
    iget-boolean v1, v0, Landroidx/appcompat/app/g0;->G:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, Landroidx/appcompat/app/g0;->l:Landroid/view/Window;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-boolean v0, v0, Landroidx/appcompat/app/g0;->R:Z

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/16 v0, 0x6c

    .line 31
    .line 32
    invoke-interface {v1, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/g0;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/appcompat/app/g0;->l:Landroid/view/Window;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const/16 v1, 0x6c

    .line 48
    .line 49
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onApplyWindowInsets(Landroid/view/View;Ln0/r1;)Ln0/r1;
    .locals 16

    .line 1
    const/4 v1, 0x1

    .line 2
    const/4 v2, 0x0

    .line 3
    invoke-virtual/range {p2 .. p2}, Ln0/r1;->d()I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    move-object/from16 v4, p0

    .line 8
    .line 9
    iget-object v5, v4, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/g0;

    .line 10
    .line 11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Ln0/r1;->d()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    iget-object v0, v5, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 19
    .line 20
    const/16 v7, 0x8

    .line 21
    .line 22
    if-eqz v0, :cond_10

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 29
    .line 30
    if-eqz v0, :cond_10

    .line 31
    .line 32
    iget-object v0, v5, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v8, v0

    .line 39
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 40
    .line 41
    iget-object v0, v5, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_e

    .line 48
    .line 49
    iget-object v0, v5, Landroidx/appcompat/app/g0;->e0:Landroid/graphics/Rect;

    .line 50
    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    new-instance v0, Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, v5, Landroidx/appcompat/app/g0;->e0:Landroid/graphics/Rect;

    .line 59
    .line 60
    new-instance v0, Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, v5, Landroidx/appcompat/app/g0;->f0:Landroid/graphics/Rect;

    .line 66
    .line 67
    :cond_0
    iget-object v9, v5, Landroidx/appcompat/app/g0;->e0:Landroid/graphics/Rect;

    .line 68
    .line 69
    iget-object v0, v5, Landroidx/appcompat/app/g0;->f0:Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-virtual/range {p2 .. p2}, Ln0/r1;->b()I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    invoke-virtual/range {p2 .. p2}, Ln0/r1;->d()I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    invoke-virtual/range {p2 .. p2}, Ln0/r1;->c()I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    invoke-virtual/range {p2 .. p2}, Ln0/r1;->a()I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 88
    .line 89
    .line 90
    iget-object v10, v5, Landroidx/appcompat/app/g0;->B:Landroid/view/ViewGroup;

    .line 91
    .line 92
    sget-object v11, Landroidx/appcompat/widget/c4;->a:Ljava/lang/reflect/Method;

    .line 93
    .line 94
    if-eqz v11, :cond_1

    .line 95
    .line 96
    const/4 v12, 0x2

    .line 97
    :try_start_0
    new-array v12, v12, [Ljava/lang/Object;

    .line 98
    .line 99
    aput-object v9, v12, v2

    .line 100
    .line 101
    aput-object v0, v12, v1

    .line 102
    .line 103
    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v10, "ViewUtils"

    .line 109
    .line 110
    const-string v11, "Could not invoke computeFitSystemWindows"

    .line 111
    .line 112
    invoke-static {v10, v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .line 114
    .line 115
    :cond_1
    :goto_0
    iget v0, v9, Landroid/graphics/Rect;->top:I

    .line 116
    .line 117
    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 118
    .line 119
    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 120
    .line 121
    iget-object v11, v5, Landroidx/appcompat/app/g0;->B:Landroid/view/ViewGroup;

    .line 122
    .line 123
    sget-object v12, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 124
    .line 125
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 126
    .line 127
    const/16 v13, 0x17

    .line 128
    .line 129
    if-lt v12, v13, :cond_2

    .line 130
    .line 131
    invoke-static {v11}, Ln0/h0;->a(Landroid/view/View;)Ln0/r1;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    goto :goto_1

    .line 136
    :cond_2
    invoke-static {v11}, Ln0/g0;->j(Landroid/view/View;)Ln0/r1;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    :goto_1
    if-nez v11, :cond_3

    .line 141
    .line 142
    const/4 v12, 0x0

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual {v11}, Ln0/r1;->b()I

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    :goto_2
    if-nez v11, :cond_4

    .line 149
    .line 150
    const/4 v11, 0x0

    .line 151
    goto :goto_3

    .line 152
    :cond_4
    invoke-virtual {v11}, Ln0/r1;->c()I

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    :goto_3
    iget v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 157
    .line 158
    if-ne v13, v0, :cond_6

    .line 159
    .line 160
    iget v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 161
    .line 162
    if-ne v13, v10, :cond_6

    .line 163
    .line 164
    iget v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 165
    .line 166
    if-eq v13, v9, :cond_5

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_5
    const/4 v9, 0x0

    .line 170
    goto :goto_5

    .line 171
    :cond_6
    :goto_4
    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 172
    .line 173
    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 174
    .line 175
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 176
    .line 177
    const/4 v9, 0x1

    .line 178
    :goto_5
    iget-object v10, v5, Landroidx/appcompat/app/g0;->k:Landroid/content/Context;

    .line 179
    .line 180
    if-lez v0, :cond_7

    .line 181
    .line 182
    iget-object v0, v5, Landroidx/appcompat/app/g0;->D:Landroid/view/View;

    .line 183
    .line 184
    if-nez v0, :cond_7

    .line 185
    .line 186
    new-instance v0, Landroid/view/View;

    .line 187
    .line 188
    invoke-direct {v0, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    iput-object v0, v5, Landroidx/appcompat/app/g0;->D:Landroid/view/View;

    .line 192
    .line 193
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 197
    .line 198
    iget v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 199
    .line 200
    const/16 v14, 0x33

    .line 201
    .line 202
    const/4 v15, -0x1

    .line 203
    invoke-direct {v0, v15, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 204
    .line 205
    .line 206
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 207
    .line 208
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 209
    .line 210
    iget-object v11, v5, Landroidx/appcompat/app/g0;->B:Landroid/view/ViewGroup;

    .line 211
    .line 212
    iget-object v12, v5, Landroidx/appcompat/app/g0;->D:Landroid/view/View;

    .line 213
    .line 214
    invoke-virtual {v11, v12, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_7
    iget-object v0, v5, Landroidx/appcompat/app/g0;->D:Landroid/view/View;

    .line 219
    .line 220
    if-eqz v0, :cond_9

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 227
    .line 228
    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 229
    .line 230
    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 231
    .line 232
    if-ne v13, v14, :cond_8

    .line 233
    .line 234
    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 235
    .line 236
    if-ne v13, v12, :cond_8

    .line 237
    .line 238
    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 239
    .line 240
    if-eq v13, v11, :cond_9

    .line 241
    .line 242
    :cond_8
    iput v14, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 243
    .line 244
    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 245
    .line 246
    iput v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 247
    .line 248
    iget-object v11, v5, Landroidx/appcompat/app/g0;->D:Landroid/view/View;

    .line 249
    .line 250
    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    .line 252
    .line 253
    :cond_9
    :goto_6
    iget-object v0, v5, Landroidx/appcompat/app/g0;->D:Landroid/view/View;

    .line 254
    .line 255
    if-eqz v0, :cond_a

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_a
    const/4 v1, 0x0

    .line 259
    :goto_7
    if-eqz v1, :cond_c

    .line 260
    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_c

    .line 266
    .line 267
    iget-object v0, v5, Landroidx/appcompat/app/g0;->D:Landroid/view/View;

    .line 268
    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    and-int/lit16 v11, v11, 0x2000

    .line 274
    .line 275
    if-eqz v11, :cond_b

    .line 276
    .line 277
    const v11, 0x7f060006

    .line 278
    .line 279
    .line 280
    invoke-static {v10, v11}, Lu7/d;->i(Landroid/content/Context;I)I

    .line 281
    .line 282
    .line 283
    move-result v10

    .line 284
    goto :goto_8

    .line 285
    :cond_b
    const v11, 0x7f060005

    .line 286
    .line 287
    .line 288
    invoke-static {v10, v11}, Lu7/d;->i(Landroid/content/Context;I)I

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    :goto_8
    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 293
    .line 294
    .line 295
    :cond_c
    iget-boolean v0, v5, Landroidx/appcompat/app/g0;->I:Z

    .line 296
    .line 297
    if-nez v0, :cond_d

    .line 298
    .line 299
    if-eqz v1, :cond_d

    .line 300
    .line 301
    const/4 v6, 0x0

    .line 302
    :cond_d
    move v0, v1

    .line 303
    move v1, v9

    .line 304
    goto :goto_9

    .line 305
    :cond_e
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 306
    .line 307
    if-eqz v0, :cond_f

    .line 308
    .line 309
    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 310
    .line 311
    const/4 v0, 0x0

    .line 312
    goto :goto_9

    .line 313
    :cond_f
    const/4 v0, 0x0

    .line 314
    const/4 v1, 0x0

    .line 315
    :goto_9
    if-eqz v1, :cond_11

    .line 316
    .line 317
    iget-object v1, v5, Landroidx/appcompat/app/g0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 318
    .line 319
    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_10
    const/4 v0, 0x0

    .line 324
    :cond_11
    :goto_a
    iget-object v1, v5, Landroidx/appcompat/app/g0;->D:Landroid/view/View;

    .line 325
    .line 326
    if-eqz v1, :cond_13

    .line 327
    .line 328
    if-eqz v0, :cond_12

    .line 329
    .line 330
    goto :goto_b

    .line 331
    :cond_12
    const/16 v2, 0x8

    .line 332
    .line 333
    :goto_b
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 334
    .line 335
    .line 336
    :cond_13
    if-eq v3, v6, :cond_14

    .line 337
    .line 338
    invoke-virtual/range {p2 .. p2}, Ln0/r1;->b()I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    invoke-virtual/range {p2 .. p2}, Ln0/r1;->c()I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    invoke-virtual/range {p2 .. p2}, Ln0/r1;->a()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    move-object/from16 v3, p2

    .line 351
    .line 352
    invoke-virtual {v3, v0, v6, v1, v2}, Ln0/r1;->f(IIII)Ln0/r1;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    move-object/from16 v1, p1

    .line 357
    .line 358
    goto :goto_c

    .line 359
    :cond_14
    move-object/from16 v3, p2

    .line 360
    .line 361
    move-object/from16 v1, p1

    .line 362
    .line 363
    move-object v0, v3

    .line 364
    :goto_c
    invoke-static {v1, v0}, Ln0/s0;->k(Landroid/view/View;Ln0/r1;)Ln0/r1;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    return-object v0
.end method
