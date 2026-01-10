.class public Landroidx/appcompat/app/j;
.super Landroidx/appcompat/app/i0;
.source "MyApplication"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final e:Landroidx/appcompat/app/h;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroidx/appcompat/app/j;->i(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/i0;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/appcompat/app/h;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/h;-><init>(Landroid/content/Context;Landroidx/appcompat/app/j;Landroid/view/Window;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/app/h;

    .line 22
    .line 23
    return-void
.end method

.method public static i(Landroid/content/Context;I)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const v0, 0x7f04002b

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    .line 23
    .line 24
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    const/4 v2, 0x0

    .line 2
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/i0;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    move-object/from16 v4, p0

    .line 6
    .line 7
    iget-object v5, v4, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/app/h;

    .line 8
    .line 9
    iget-object v6, v5, Landroidx/appcompat/app/h;->b:Landroidx/appcompat/app/j;

    .line 10
    .line 11
    iget v7, v5, Landroidx/appcompat/app/h;->s:I

    .line 12
    .line 13
    invoke-virtual {v6, v7}, Landroidx/appcompat/app/i0;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    iget-object v6, v5, Landroidx/appcompat/app/h;->c:Landroid/view/Window;

    .line 17
    .line 18
    const v7, 0x7f0b0333

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const v8, 0x7f0b0429

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    const v10, 0x7f0b00ec

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    const v12, 0x7f0b009d

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v13

    .line 46
    const v14, 0x7f0b00fe

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Landroid/view/ViewGroup;

    .line 54
    .line 55
    iget-object v14, v5, Landroidx/appcompat/app/h;->f:Landroid/view/View;

    .line 56
    .line 57
    if-eqz v14, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v14, 0x0

    .line 61
    :goto_0
    if-eqz v14, :cond_1

    .line 62
    .line 63
    const/16 v16, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/16 v16, 0x0

    .line 67
    .line 68
    :goto_1
    if-eqz v16, :cond_2

    .line 69
    .line 70
    invoke-static {v14}, Landroidx/appcompat/app/h;->a(Landroid/view/View;)Z

    .line 71
    .line 72
    .line 73
    move-result v17

    .line 74
    if-nez v17, :cond_3

    .line 75
    .line 76
    :cond_2
    const/high16 v3, 0x20000

    .line 77
    .line 78
    invoke-virtual {v6, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 79
    .line 80
    .line 81
    :cond_3
    const/4 v3, -0x1

    .line 82
    const/16 v0, 0x8

    .line 83
    .line 84
    if-eqz v16, :cond_5

    .line 85
    .line 86
    const v1, 0x7f0b00fd

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroid/widget/FrameLayout;

    .line 94
    .line 95
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    .line 96
    .line 97
    invoke-direct {v15, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    iget-boolean v14, v5, Landroidx/appcompat/app/h;->g:Z

    .line 104
    .line 105
    if-eqz v14, :cond_4

    .line 106
    .line 107
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    .line 109
    .line 110
    :cond_4
    iget-object v1, v5, Landroidx/appcompat/app/h;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 111
    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 119
    .line 120
    const/4 v14, 0x0

    .line 121
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-static {v1, v9}, Landroidx/appcompat/app/h;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v8, v11}, Landroidx/appcompat/app/h;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-static {v10, v13}, Landroidx/appcompat/app/h;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    const v10, 0x7f0b0392

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    check-cast v10, Landroidx/core/widget/NestedScrollView;

    .line 159
    .line 160
    iput-object v10, v5, Landroidx/appcompat/app/h;->k:Landroidx/core/widget/NestedScrollView;

    .line 161
    .line 162
    invoke-virtual {v10, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 163
    .line 164
    .line 165
    iget-object v10, v5, Landroidx/appcompat/app/h;->k:Landroidx/core/widget/NestedScrollView;

    .line 166
    .line 167
    invoke-virtual {v10, v2}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 168
    .line 169
    .line 170
    const v10, 0x102000b

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    check-cast v10, Landroid/widget/TextView;

    .line 178
    .line 179
    iput-object v10, v5, Landroidx/appcompat/app/h;->o:Landroid/widget/TextView;

    .line 180
    .line 181
    if-nez v10, :cond_7

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object v10, v5, Landroidx/appcompat/app/h;->k:Landroidx/core/widget/NestedScrollView;

    .line 188
    .line 189
    iget-object v11, v5, Landroidx/appcompat/app/h;->o:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    iget-object v10, v5, Landroidx/appcompat/app/h;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 195
    .line 196
    if-eqz v10, :cond_8

    .line 197
    .line 198
    iget-object v10, v5, Landroidx/appcompat/app/h;->k:Landroidx/core/widget/NestedScrollView;

    .line 199
    .line 200
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    check-cast v10, Landroid/view/ViewGroup;

    .line 205
    .line 206
    iget-object v11, v5, Landroidx/appcompat/app/h;->k:Landroidx/core/widget/NestedScrollView;

    .line 207
    .line 208
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 213
    .line 214
    .line 215
    iget-object v12, v5, Landroidx/appcompat/app/h;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 216
    .line 217
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    .line 218
    .line 219
    invoke-direct {v13, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v12, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_8
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    :goto_3
    const v10, 0x1020019

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    check-cast v10, Landroid/widget/Button;

    .line 237
    .line 238
    iput-object v10, v5, Landroidx/appcompat/app/h;->h:Landroid/widget/Button;

    .line 239
    .line 240
    iget-object v11, v5, Landroidx/appcompat/app/h;->y:Landroidx/appcompat/app/a;

    .line 241
    .line 242
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    const/4 v10, 0x0

    .line 246
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v12

    .line 250
    if-eqz v12, :cond_9

    .line 251
    .line 252
    iget-object v12, v5, Landroidx/appcompat/app/h;->h:Landroid/widget/Button;

    .line 253
    .line 254
    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    const/4 v12, 0x0

    .line 258
    goto :goto_4

    .line 259
    :cond_9
    iget-object v12, v5, Landroidx/appcompat/app/h;->h:Landroid/widget/Button;

    .line 260
    .line 261
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    iget-object v12, v5, Landroidx/appcompat/app/h;->h:Landroid/widget/Button;

    .line 265
    .line 266
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    const/4 v12, 0x1

    .line 270
    :goto_4
    const v13, 0x102001a

    .line 271
    .line 272
    .line 273
    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    check-cast v13, Landroid/widget/Button;

    .line 278
    .line 279
    iput-object v13, v5, Landroidx/appcompat/app/h;->i:Landroid/widget/Button;

    .line 280
    .line 281
    invoke-virtual {v13, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 285
    .line 286
    .line 287
    move-result v13

    .line 288
    if-eqz v13, :cond_a

    .line 289
    .line 290
    iget-object v13, v5, Landroidx/appcompat/app/h;->i:Landroid/widget/Button;

    .line 291
    .line 292
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_a
    iget-object v13, v5, Landroidx/appcompat/app/h;->i:Landroid/widget/Button;

    .line 297
    .line 298
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    iget-object v13, v5, Landroidx/appcompat/app/h;->i:Landroid/widget/Button;

    .line 302
    .line 303
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    const/4 v13, 0x2

    .line 307
    or-int/2addr v12, v13

    .line 308
    :goto_5
    const v13, 0x102001b

    .line 309
    .line 310
    .line 311
    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v13

    .line 315
    check-cast v13, Landroid/widget/Button;

    .line 316
    .line 317
    iput-object v13, v5, Landroidx/appcompat/app/h;->j:Landroid/widget/Button;

    .line 318
    .line 319
    invoke-virtual {v13, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    if-eqz v11, :cond_b

    .line 327
    .line 328
    iget-object v11, v5, Landroidx/appcompat/app/h;->j:Landroid/widget/Button;

    .line 329
    .line 330
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_b
    iget-object v11, v5, Landroidx/appcompat/app/h;->j:Landroid/widget/Button;

    .line 335
    .line 336
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    iget-object v11, v5, Landroidx/appcompat/app/h;->j:Landroid/widget/Button;

    .line 340
    .line 341
    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    const/4 v11, 0x4

    .line 345
    or-int/2addr v12, v11

    .line 346
    :goto_6
    new-instance v11, Landroid/util/TypedValue;

    .line 347
    .line 348
    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 349
    .line 350
    .line 351
    iget-object v13, v5, Landroidx/appcompat/app/h;->a:Landroid/content/Context;

    .line 352
    .line 353
    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 354
    .line 355
    .line 356
    move-result-object v13

    .line 357
    const v14, 0x7f040029

    .line 358
    .line 359
    .line 360
    const/4 v15, 0x1

    .line 361
    invoke-virtual {v13, v14, v11, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 362
    .line 363
    .line 364
    iget v11, v11, Landroid/util/TypedValue;->data:I

    .line 365
    .line 366
    if-eqz v11, :cond_e

    .line 367
    .line 368
    const/high16 v11, 0x3f000000    # 0.5f

    .line 369
    .line 370
    if-ne v12, v15, :cond_c

    .line 371
    .line 372
    iget-object v13, v5, Landroidx/appcompat/app/h;->h:Landroid/widget/Button;

    .line 373
    .line 374
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 375
    .line 376
    .line 377
    move-result-object v14

    .line 378
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 379
    .line 380
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 381
    .line 382
    iput v11, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 383
    .line 384
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    .line 386
    .line 387
    goto :goto_7

    .line 388
    :cond_c
    const/4 v13, 0x2

    .line 389
    if-ne v12, v13, :cond_d

    .line 390
    .line 391
    iget-object v13, v5, Landroidx/appcompat/app/h;->i:Landroid/widget/Button;

    .line 392
    .line 393
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 394
    .line 395
    .line 396
    move-result-object v14

    .line 397
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 398
    .line 399
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 400
    .line 401
    iput v11, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 402
    .line 403
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_d
    const/4 v13, 0x4

    .line 408
    if-ne v12, v13, :cond_e

    .line 409
    .line 410
    iget-object v13, v5, Landroidx/appcompat/app/h;->j:Landroid/widget/Button;

    .line 411
    .line 412
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 413
    .line 414
    .line 415
    move-result-object v14

    .line 416
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 417
    .line 418
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 419
    .line 420
    iput v11, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 421
    .line 422
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    .line 424
    .line 425
    :cond_e
    :goto_7
    if-eqz v12, :cond_f

    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_f
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    :goto_8
    iget-object v11, v5, Landroidx/appcompat/app/h;->p:Landroid/view/View;

    .line 432
    .line 433
    const v12, 0x7f0b0421

    .line 434
    .line 435
    .line 436
    if-eqz v11, :cond_10

    .line 437
    .line 438
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    .line 439
    .line 440
    const/4 v13, -0x2

    .line 441
    invoke-direct {v11, v3, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 442
    .line 443
    .line 444
    iget-object v13, v5, Landroidx/appcompat/app/h;->p:Landroid/view/View;

    .line 445
    .line 446
    invoke-virtual {v1, v13, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v6, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 450
    .line 451
    .line 452
    move-result-object v11

    .line 453
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 454
    .line 455
    .line 456
    goto :goto_9

    .line 457
    :cond_10
    const v11, 0x1020006

    .line 458
    .line 459
    .line 460
    invoke-virtual {v6, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 461
    .line 462
    .line 463
    move-result-object v11

    .line 464
    check-cast v11, Landroid/widget/ImageView;

    .line 465
    .line 466
    iput-object v11, v5, Landroidx/appcompat/app/h;->m:Landroid/widget/ImageView;

    .line 467
    .line 468
    iget-object v11, v5, Landroidx/appcompat/app/h;->d:Ljava/lang/CharSequence;

    .line 469
    .line 470
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 471
    .line 472
    .line 473
    move-result v11

    .line 474
    if-nez v11, :cond_12

    .line 475
    .line 476
    iget-boolean v11, v5, Landroidx/appcompat/app/h;->w:Z

    .line 477
    .line 478
    if-eqz v11, :cond_12

    .line 479
    .line 480
    const v11, 0x7f0b005f

    .line 481
    .line 482
    .line 483
    invoke-virtual {v6, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 484
    .line 485
    .line 486
    move-result-object v11

    .line 487
    check-cast v11, Landroid/widget/TextView;

    .line 488
    .line 489
    iput-object v11, v5, Landroidx/appcompat/app/h;->n:Landroid/widget/TextView;

    .line 490
    .line 491
    iget-object v12, v5, Landroidx/appcompat/app/h;->d:Ljava/lang/CharSequence;

    .line 492
    .line 493
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    .line 495
    .line 496
    iget-object v11, v5, Landroidx/appcompat/app/h;->l:Landroid/graphics/drawable/Drawable;

    .line 497
    .line 498
    if-eqz v11, :cond_11

    .line 499
    .line 500
    iget-object v12, v5, Landroidx/appcompat/app/h;->m:Landroid/widget/ImageView;

    .line 501
    .line 502
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 503
    .line 504
    .line 505
    goto :goto_9

    .line 506
    :cond_11
    iget-object v11, v5, Landroidx/appcompat/app/h;->n:Landroid/widget/TextView;

    .line 507
    .line 508
    iget-object v12, v5, Landroidx/appcompat/app/h;->m:Landroid/widget/ImageView;

    .line 509
    .line 510
    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    .line 511
    .line 512
    .line 513
    move-result v12

    .line 514
    iget-object v13, v5, Landroidx/appcompat/app/h;->m:Landroid/widget/ImageView;

    .line 515
    .line 516
    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    .line 517
    .line 518
    .line 519
    move-result v13

    .line 520
    iget-object v14, v5, Landroidx/appcompat/app/h;->m:Landroid/widget/ImageView;

    .line 521
    .line 522
    invoke-virtual {v14}, Landroid/view/View;->getPaddingRight()I

    .line 523
    .line 524
    .line 525
    move-result v14

    .line 526
    iget-object v15, v5, Landroidx/appcompat/app/h;->m:Landroid/widget/ImageView;

    .line 527
    .line 528
    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    .line 529
    .line 530
    .line 531
    move-result v15

    .line 532
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 533
    .line 534
    .line 535
    iget-object v11, v5, Landroidx/appcompat/app/h;->m:Landroid/widget/ImageView;

    .line 536
    .line 537
    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    .line 539
    .line 540
    goto :goto_9

    .line 541
    :cond_12
    invoke-virtual {v6, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 542
    .line 543
    .line 544
    move-result-object v11

    .line 545
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 546
    .line 547
    .line 548
    iget-object v11, v5, Landroidx/appcompat/app/h;->m:Landroid/widget/ImageView;

    .line 549
    .line 550
    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 554
    .line 555
    .line 556
    :goto_9
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 557
    .line 558
    .line 559
    move-result v7

    .line 560
    if-eq v7, v0, :cond_13

    .line 561
    .line 562
    const/4 v7, 0x1

    .line 563
    goto :goto_a

    .line 564
    :cond_13
    const/4 v7, 0x0

    .line 565
    :goto_a
    if-eqz v1, :cond_14

    .line 566
    .line 567
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 568
    .line 569
    .line 570
    move-result v11

    .line 571
    if-eq v11, v0, :cond_14

    .line 572
    .line 573
    const/4 v11, 0x1

    .line 574
    goto :goto_b

    .line 575
    :cond_14
    const/4 v11, 0x0

    .line 576
    :goto_b
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 577
    .line 578
    .line 579
    move-result v9

    .line 580
    if-eq v9, v0, :cond_15

    .line 581
    .line 582
    const/4 v0, 0x1

    .line 583
    goto :goto_c

    .line 584
    :cond_15
    const/4 v0, 0x0

    .line 585
    :goto_c
    if-nez v0, :cond_16

    .line 586
    .line 587
    const v9, 0x7f0b0408

    .line 588
    .line 589
    .line 590
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 591
    .line 592
    .line 593
    move-result-object v9

    .line 594
    if-eqz v9, :cond_16

    .line 595
    .line 596
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 597
    .line 598
    .line 599
    :cond_16
    if-eqz v11, :cond_19

    .line 600
    .line 601
    iget-object v9, v5, Landroidx/appcompat/app/h;->k:Landroidx/core/widget/NestedScrollView;

    .line 602
    .line 603
    if-eqz v9, :cond_17

    .line 604
    .line 605
    const/4 v12, 0x1

    .line 606
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 607
    .line 608
    .line 609
    :cond_17
    iget-object v9, v5, Landroidx/appcompat/app/h;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 610
    .line 611
    if-eqz v9, :cond_18

    .line 612
    .line 613
    const v9, 0x7f0b041e

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    goto :goto_d

    .line 621
    :cond_18
    move-object v1, v10

    .line 622
    :goto_d
    if-eqz v1, :cond_1a

    .line 623
    .line 624
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 625
    .line 626
    .line 627
    goto :goto_e

    .line 628
    :cond_19
    const v1, 0x7f0b0409

    .line 629
    .line 630
    .line 631
    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    if-eqz v1, :cond_1a

    .line 636
    .line 637
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 638
    .line 639
    .line 640
    :cond_1a
    :goto_e
    iget-object v1, v5, Landroidx/appcompat/app/h;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 641
    .line 642
    instance-of v9, v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 643
    .line 644
    if-eqz v9, :cond_1e

    .line 645
    .line 646
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 647
    .line 648
    .line 649
    if-eqz v0, :cond_1b

    .line 650
    .line 651
    if-nez v11, :cond_1e

    .line 652
    .line 653
    :cond_1b
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 654
    .line 655
    .line 656
    move-result v9

    .line 657
    if-eqz v11, :cond_1c

    .line 658
    .line 659
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 660
    .line 661
    .line 662
    move-result v12

    .line 663
    goto :goto_f

    .line 664
    :cond_1c
    iget v12, v1, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    .line 665
    .line 666
    :goto_f
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 667
    .line 668
    .line 669
    move-result v13

    .line 670
    if-eqz v0, :cond_1d

    .line 671
    .line 672
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 673
    .line 674
    .line 675
    move-result v14

    .line 676
    goto :goto_10

    .line 677
    :cond_1d
    iget v14, v1, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    .line 678
    .line 679
    :goto_10
    invoke-virtual {v1, v9, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 680
    .line 681
    .line 682
    :cond_1e
    if-nez v7, :cond_29

    .line 683
    .line 684
    iget-object v1, v5, Landroidx/appcompat/app/h;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 685
    .line 686
    if-eqz v1, :cond_1f

    .line 687
    .line 688
    goto :goto_11

    .line 689
    :cond_1f
    iget-object v1, v5, Landroidx/appcompat/app/h;->k:Landroidx/core/widget/NestedScrollView;

    .line 690
    .line 691
    :goto_11
    if-eqz v1, :cond_29

    .line 692
    .line 693
    if-eqz v0, :cond_20

    .line 694
    .line 695
    const/4 v13, 0x2

    .line 696
    goto :goto_12

    .line 697
    :cond_20
    const/4 v13, 0x0

    .line 698
    :goto_12
    or-int v0, v11, v13

    .line 699
    .line 700
    const v7, 0x7f0b0391

    .line 701
    .line 702
    .line 703
    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 704
    .line 705
    .line 706
    move-result-object v7

    .line 707
    const v9, 0x7f0b0390

    .line 708
    .line 709
    .line 710
    invoke-virtual {v6, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 715
    .line 716
    const/16 v11, 0x17

    .line 717
    .line 718
    if-lt v9, v11, :cond_23

    .line 719
    .line 720
    sget-object v2, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 721
    .line 722
    if-lt v9, v11, :cond_21

    .line 723
    .line 724
    const/4 v2, 0x3

    .line 725
    invoke-static {v1, v0, v2}, Ln0/h0;->d(Landroid/view/View;II)V

    .line 726
    .line 727
    .line 728
    :cond_21
    if-eqz v7, :cond_22

    .line 729
    .line 730
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 731
    .line 732
    .line 733
    :cond_22
    if-eqz v6, :cond_29

    .line 734
    .line 735
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 736
    .line 737
    .line 738
    goto :goto_14

    .line 739
    :cond_23
    if-eqz v7, :cond_24

    .line 740
    .line 741
    const/4 v1, 0x1

    .line 742
    and-int/lit8 v9, v0, 0x1

    .line 743
    .line 744
    if-nez v9, :cond_24

    .line 745
    .line 746
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 747
    .line 748
    .line 749
    move-object v7, v10

    .line 750
    :cond_24
    if-eqz v6, :cond_25

    .line 751
    .line 752
    const/4 v1, 0x2

    .line 753
    and-int/2addr v0, v1

    .line 754
    if-nez v0, :cond_25

    .line 755
    .line 756
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 757
    .line 758
    .line 759
    move-object v15, v10

    .line 760
    goto :goto_13

    .line 761
    :cond_25
    move-object v15, v6

    .line 762
    :goto_13
    if-nez v7, :cond_26

    .line 763
    .line 764
    if-eqz v15, :cond_29

    .line 765
    .line 766
    :cond_26
    iget-object v0, v5, Landroidx/appcompat/app/h;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 767
    .line 768
    if-eqz v0, :cond_27

    .line 769
    .line 770
    new-instance v1, Landroidx/appcompat/app/b;

    .line 771
    .line 772
    invoke-direct {v1, v7, v15}, Landroidx/appcompat/app/b;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 776
    .line 777
    .line 778
    iget-object v0, v5, Landroidx/appcompat/app/h;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 779
    .line 780
    new-instance v1, Landroidx/appcompat/app/c;

    .line 781
    .line 782
    invoke-direct {v1, v5, v7, v15, v2}, Landroidx/appcompat/app/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 786
    .line 787
    .line 788
    goto :goto_14

    .line 789
    :cond_27
    if-eqz v7, :cond_28

    .line 790
    .line 791
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 792
    .line 793
    .line 794
    :cond_28
    if-eqz v15, :cond_29

    .line 795
    .line 796
    invoke-virtual {v8, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 797
    .line 798
    .line 799
    :cond_29
    :goto_14
    iget-object v0, v5, Landroidx/appcompat/app/h;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 800
    .line 801
    if-eqz v0, :cond_2a

    .line 802
    .line 803
    iget-object v1, v5, Landroidx/appcompat/app/h;->q:Landroid/widget/ListAdapter;

    .line 804
    .line 805
    if-eqz v1, :cond_2a

    .line 806
    .line 807
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 808
    .line 809
    .line 810
    iget v1, v5, Landroidx/appcompat/app/h;->r:I

    .line 811
    .line 812
    if-le v1, v3, :cond_2a

    .line 813
    .line 814
    const/4 v2, 0x1

    .line 815
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 819
    .line 820
    .line 821
    :cond_2a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/app/h;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/h;->k:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->h(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/app/h;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/h;->k:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->h(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/i0;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/app/h;

    .line 5
    .line 6
    iput-object p1, v0, Landroidx/appcompat/app/h;->d:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/appcompat/app/h;->n:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
