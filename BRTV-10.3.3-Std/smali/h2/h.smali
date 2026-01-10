.class public final Lh2/h;
.super Lc9/i;
.source "MyApplication"

# interfaces
.implements Li9/p;


# instance fields
.field public b:Ljava/util/List;

.field public c:Lm2/m;

.field public d:I

.field public e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lh2/i;

.field public final synthetic i:Lh2/a;

.field public final synthetic j:Lm2/m;

.field public final synthetic k:Ljava/util/List;

.field public final synthetic l:Lc2/d;

.field public final synthetic m:Lm2/i;


# direct methods
.method public constructor <init>(Lh2/i;Lh2/a;Lm2/m;Ljava/util/List;Lc2/d;Lm2/i;La9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/h;->h:Lh2/i;

    .line 2
    .line 3
    iput-object p2, p0, Lh2/h;->i:Lh2/a;

    .line 4
    .line 5
    iput-object p3, p0, Lh2/h;->j:Lm2/m;

    .line 6
    .line 7
    iput-object p4, p0, Lh2/h;->k:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lh2/h;->l:Lc2/d;

    .line 10
    .line 11
    iput-object p6, p0, Lh2/h;->m:Lm2/i;

    .line 12
    .line 13
    invoke-direct {p0, p7}, Lc9/i;-><init>(La9/d;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La9/d;)La9/d;
    .locals 9

    .line 1
    new-instance v8, Lh2/h;

    .line 2
    .line 3
    iget-object v5, p0, Lh2/h;->l:Lc2/d;

    .line 4
    .line 5
    iget-object v6, p0, Lh2/h;->m:Lm2/i;

    .line 6
    .line 7
    iget-object v1, p0, Lh2/h;->h:Lh2/i;

    .line 8
    .line 9
    iget-object v2, p0, Lh2/h;->i:Lh2/a;

    .line 10
    .line 11
    iget-object v3, p0, Lh2/h;->j:Lm2/m;

    .line 12
    .line 13
    iget-object v4, p0, Lh2/h;->k:Ljava/util/List;

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lh2/h;-><init>(Lh2/i;Lh2/a;Lm2/m;Ljava/util/List;Lc2/d;Lm2/i;La9/d;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v8, Lh2/h;->g:Ljava/lang/Object;

    .line 21
    .line 22
    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lt9/s;

    .line 2
    .line 3
    check-cast p2, La9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lh2/h;->create(Ljava/lang/Object;La9/d;)La9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lh2/h;

    .line 10
    .line 11
    sget-object p2, Lw8/l;->a:Lw8/l;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lh2/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x1

    .line 5
    sget-object v5, Lb9/a;->a:Lb9/a;

    .line 6
    .line 7
    iget v6, v0, Lh2/h;->f:I

    .line 8
    .line 9
    iget-object v7, v0, Lh2/h;->i:Lh2/a;

    .line 10
    .line 11
    iget-object v8, v0, Lh2/h;->l:Lc2/d;

    .line 12
    .line 13
    if-eqz v6, :cond_1

    .line 14
    .line 15
    if-ne v6, v3, :cond_0

    .line 16
    .line 17
    iget v6, v0, Lh2/h;->e:I

    .line 18
    .line 19
    iget v9, v0, Lh2/h;->d:I

    .line 20
    .line 21
    iget-object v10, v0, Lh2/h;->c:Lm2/m;

    .line 22
    .line 23
    iget-object v11, v0, Lh2/h;->b:Ljava/util/List;

    .line 24
    .line 25
    iget-object v12, v0, Lh2/h;->g:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v12, Lt9/s;

    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    move-object/from16 v19, v7

    .line 33
    .line 34
    move/from16 v16, v9

    .line 35
    .line 36
    move-object/from16 v17, v10

    .line 37
    .line 38
    move-object v13, v12

    .line 39
    const/4 v1, 0x2

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v14, 0x3

    .line 42
    move-object v12, v11

    .line 43
    move-object/from16 v11, p1

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_1
    invoke-static/range {p1 .. p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v6, v0, Lh2/h;->g:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v6, Lt9/s;

    .line 61
    .line 62
    iget-object v9, v7, Lh2/a;->a:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    instance-of v10, v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 65
    .line 66
    iget-object v11, v0, Lh2/h;->j:Lm2/m;

    .line 67
    .line 68
    if-eqz v10, :cond_3

    .line 69
    .line 70
    move-object v10, v9

    .line 71
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 72
    .line 73
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    if-nez v12, :cond_2

    .line 82
    .line 83
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 84
    .line 85
    :cond_2
    sget-object v13, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;

    .line 86
    .line 87
    invoke-static {v13, v12}, Lx8/i;->B([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    if-eqz v12, :cond_3

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-object v10, v11, Lm2/m;->b:Landroid/graphics/Bitmap$Config;

    .line 95
    .line 96
    iget-object v12, v11, Lm2/m;->d:Ln2/h;

    .line 97
    .line 98
    iget-object v13, v11, Lm2/m;->e:Ln2/g;

    .line 99
    .line 100
    iget-boolean v14, v11, Lm2/m;->f:Z

    .line 101
    .line 102
    invoke-static {v9, v10, v12, v13, v14}, Lu7/d;->d(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Ln2/h;Ln2/g;Z)Landroid/graphics/Bitmap;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    :goto_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object v9, v0, Lh2/h;->k:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    move-object v13, v6

    .line 116
    move v6, v12

    .line 117
    move-object v12, v9

    .line 118
    const/4 v9, 0x0

    .line 119
    :goto_1
    if-ge v9, v6, :cond_c

    .line 120
    .line 121
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    check-cast v14, Lp2/a;

    .line 126
    .line 127
    iget-object v15, v11, Lm2/m;->d:Ln2/h;

    .line 128
    .line 129
    iput-object v13, v0, Lh2/h;->g:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v12, v0, Lh2/h;->b:Ljava/util/List;

    .line 132
    .line 133
    iput-object v11, v0, Lh2/h;->c:Lm2/m;

    .line 134
    .line 135
    iput v9, v0, Lh2/h;->d:I

    .line 136
    .line 137
    iput v6, v0, Lh2/h;->e:I

    .line 138
    .line 139
    iput v3, v0, Lh2/h;->f:I

    .line 140
    .line 141
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    new-instance v3, Landroid/graphics/Paint;

    .line 145
    .line 146
    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 147
    .line 148
    .line 149
    sget-object v2, Ln2/h;->c:Ln2/h;

    .line 150
    .line 151
    invoke-static {v15, v2}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    sget-object v1, Ln2/g;->a:Ln2/g;

    .line 156
    .line 157
    if-eqz v2, :cond_4

    .line 158
    .line 159
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 168
    .line 169
    .line 170
    move-result v15

    .line 171
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v15

    .line 175
    new-instance v4, Lw8/f;

    .line 176
    .line 177
    invoke-direct {v4, v2, v15}, Lw8/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    move/from16 p1, v6

    .line 181
    .line 182
    move/from16 v16, v9

    .line 183
    .line 184
    move-object v6, v12

    .line 185
    move-object/from16 v20, v11

    .line 186
    .line 187
    move-object v11, v4

    .line 188
    move-object/from16 v4, v20

    .line 189
    .line 190
    goto/16 :goto_4

    .line 191
    .line 192
    :cond_4
    iget-object v2, v15, Ln2/h;->a:Lr4/b;

    .line 193
    .line 194
    instance-of v4, v2, Ln2/a;

    .line 195
    .line 196
    move/from16 p1, v6

    .line 197
    .line 198
    iget-object v6, v15, Ln2/h;->b:Lr4/b;

    .line 199
    .line 200
    if-eqz v4, :cond_5

    .line 201
    .line 202
    instance-of v4, v6, Ln2/a;

    .line 203
    .line 204
    if-eqz v4, :cond_5

    .line 205
    .line 206
    check-cast v2, Ln2/a;

    .line 207
    .line 208
    iget v2, v2, Ln2/a;->c:I

    .line 209
    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v6, Ln2/a;

    .line 215
    .line 216
    iget v4, v6, Ln2/a;->c:I

    .line 217
    .line 218
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    new-instance v6, Lw8/f;

    .line 223
    .line 224
    invoke-direct {v6, v2, v4}, Lw8/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    move/from16 v16, v9

    .line 228
    .line 229
    move-object v4, v11

    .line 230
    move-object v11, v6

    .line 231
    move-object v6, v12

    .line 232
    goto :goto_4

    .line 233
    :cond_5
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    iget-object v15, v15, Ln2/h;->a:Lr4/b;

    .line 242
    .line 243
    move/from16 v16, v9

    .line 244
    .line 245
    instance-of v9, v15, Ln2/a;

    .line 246
    .line 247
    const/high16 v17, -0x80000000

    .line 248
    .line 249
    if-eqz v9, :cond_6

    .line 250
    .line 251
    check-cast v15, Ln2/a;

    .line 252
    .line 253
    iget v9, v15, Ln2/a;->c:I

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_6
    const/high16 v9, -0x80000000

    .line 257
    .line 258
    :goto_2
    instance-of v15, v6, Ln2/a;

    .line 259
    .line 260
    if-eqz v15, :cond_7

    .line 261
    .line 262
    check-cast v6, Ln2/a;

    .line 263
    .line 264
    iget v6, v6, Ln2/a;->c:I

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_7
    const/high16 v6, -0x80000000

    .line 268
    .line 269
    :goto_3
    invoke-static {v2, v4, v9, v6, v1}, Ll5/a;->j(IIIILn2/g;)D

    .line 270
    .line 271
    .line 272
    move-result-wide v17

    .line 273
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    move-object v4, v11

    .line 278
    move-object v6, v12

    .line 279
    int-to-double v11, v2

    .line 280
    mul-double v11, v11, v17

    .line 281
    .line 282
    invoke-static {v11, v12}, Lr4/b;->J(D)I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    int-to-double v11, v9

    .line 291
    mul-double v17, v17, v11

    .line 292
    .line 293
    invoke-static/range {v17 .. v18}, Lr4/b;->J(D)I

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    new-instance v11, Lw8/f;

    .line 306
    .line 307
    invoke-direct {v11, v2, v9}, Lw8/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :goto_4
    iget-object v2, v11, Lw8/f;->a:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v2, Ljava/lang/Number;

    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    iget-object v9, v11, Lw8/f;->b:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v9, Ljava/lang/Number;

    .line 321
    .line 322
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 327
    .line 328
    .line 329
    move-result-object v11

    .line 330
    if-nez v11, :cond_8

    .line 331
    .line 332
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 333
    .line 334
    :cond_8
    invoke-static {v2, v9, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    new-instance v12, Landroid/graphics/Canvas;

    .line 339
    .line 340
    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 341
    .line 342
    .line 343
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 344
    .line 345
    move-object/from16 v17, v4

    .line 346
    .line 347
    const/4 v4, 0x0

    .line 348
    invoke-virtual {v12, v4, v15}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 349
    .line 350
    .line 351
    new-instance v4, Landroid/graphics/Matrix;

    .line 352
    .line 353
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 357
    .line 358
    .line 359
    move-result v15

    .line 360
    move-object/from16 v18, v6

    .line 361
    .line 362
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    move-object/from16 v19, v7

    .line 367
    .line 368
    invoke-static {v15, v6, v2, v9, v1}, Ll5/a;->j(IIIILn2/g;)D

    .line 369
    .line 370
    .line 371
    move-result-wide v6

    .line 372
    double-to-float v1, v6

    .line 373
    int-to-float v2, v2

    .line 374
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    int-to-float v6, v6

    .line 379
    mul-float v6, v6, v1

    .line 380
    .line 381
    sub-float/2addr v2, v6

    .line 382
    const/4 v6, 0x2

    .line 383
    int-to-float v7, v6

    .line 384
    div-float/2addr v2, v7

    .line 385
    int-to-float v6, v9

    .line 386
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 387
    .line 388
    .line 389
    move-result v9

    .line 390
    int-to-float v9, v9

    .line 391
    mul-float v9, v9, v1

    .line 392
    .line 393
    sub-float/2addr v6, v9

    .line 394
    div-float/2addr v6, v7

    .line 395
    invoke-virtual {v4, v2, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 399
    .line 400
    .line 401
    new-instance v1, Landroid/graphics/BitmapShader;

    .line 402
    .line 403
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 404
    .line 405
    invoke-direct {v1, v10, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 412
    .line 413
    .line 414
    iget v1, v14, Lp2/a;->a:F

    .line 415
    .line 416
    iget v2, v14, Lp2/a;->b:F

    .line 417
    .line 418
    iget v4, v14, Lp2/a;->d:F

    .line 419
    .line 420
    iget v6, v14, Lp2/a;->c:F

    .line 421
    .line 422
    const/16 v7, 0x8

    .line 423
    .line 424
    new-array v7, v7, [F

    .line 425
    .line 426
    const/4 v9, 0x0

    .line 427
    aput v1, v7, v9

    .line 428
    .line 429
    const/4 v10, 0x1

    .line 430
    aput v1, v7, v10

    .line 431
    .line 432
    const/4 v1, 0x2

    .line 433
    aput v2, v7, v1

    .line 434
    .line 435
    const/4 v14, 0x3

    .line 436
    aput v2, v7, v14

    .line 437
    .line 438
    const/4 v2, 0x4

    .line 439
    aput v4, v7, v2

    .line 440
    .line 441
    const/4 v2, 0x5

    .line 442
    aput v4, v7, v2

    .line 443
    .line 444
    const/4 v2, 0x6

    .line 445
    aput v6, v7, v2

    .line 446
    .line 447
    const/4 v2, 0x7

    .line 448
    aput v6, v7, v2

    .line 449
    .line 450
    new-instance v2, Landroid/graphics/RectF;

    .line 451
    .line 452
    invoke-virtual {v12}, Landroid/graphics/Canvas;->getWidth()I

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    int-to-float v4, v4

    .line 457
    invoke-virtual {v12}, Landroid/graphics/Canvas;->getHeight()I

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    int-to-float v6, v6

    .line 462
    const/4 v10, 0x0

    .line 463
    invoke-direct {v2, v10, v10, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 464
    .line 465
    .line 466
    new-instance v4, Landroid/graphics/Path;

    .line 467
    .line 468
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 469
    .line 470
    .line 471
    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 472
    .line 473
    invoke-virtual {v4, v2, v7, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v12, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 477
    .line 478
    .line 479
    if-ne v11, v5, :cond_9

    .line 480
    .line 481
    return-object v5

    .line 482
    :cond_9
    move/from16 v6, p1

    .line 483
    .line 484
    move-object/from16 v12, v18

    .line 485
    .line 486
    :goto_5
    move-object v10, v11

    .line 487
    check-cast v10, Landroid/graphics/Bitmap;

    .line 488
    .line 489
    invoke-interface {v13}, Lt9/s;->d()La9/i;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    sget-object v3, Lt9/q;->b:Lt9/q;

    .line 494
    .line 495
    invoke-interface {v2, v3}, La9/i;->e(La9/h;)La9/g;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    check-cast v2, Lt9/q0;

    .line 500
    .line 501
    if-eqz v2, :cond_a

    .line 502
    .line 503
    invoke-interface {v2}, Lt9/q0;->isActive()Z

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    if-eqz v3, :cond_b

    .line 508
    .line 509
    :cond_a
    const/4 v2, 0x1

    .line 510
    goto :goto_6

    .line 511
    :cond_b
    check-cast v2, Lt9/y0;

    .line 512
    .line 513
    invoke-virtual {v2}, Lt9/y0;->q()Ljava/util/concurrent/CancellationException;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    throw v1

    .line 518
    :goto_6
    add-int/lit8 v3, v16, 0x1

    .line 519
    .line 520
    move v9, v3

    .line 521
    move-object/from16 v11, v17

    .line 522
    .line 523
    move-object/from16 v7, v19

    .line 524
    .line 525
    const/4 v2, 0x3

    .line 526
    const/4 v3, 0x1

    .line 527
    goto/16 :goto_1

    .line 528
    .line 529
    :cond_c
    move-object/from16 v19, v7

    .line 530
    .line 531
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    iget-object v1, v0, Lh2/h;->m:Lm2/i;

    .line 535
    .line 536
    iget-object v1, v1, Lm2/i;->a:Landroid/content/Context;

    .line 537
    .line 538
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 543
    .line 544
    invoke-direct {v2, v1, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 545
    .line 546
    .line 547
    new-instance v1, Lh2/a;

    .line 548
    .line 549
    move-object/from16 v3, v19

    .line 550
    .line 551
    iget-boolean v4, v3, Lh2/a;->b:Z

    .line 552
    .line 553
    iget-object v5, v3, Lh2/a;->c:Ld2/f;

    .line 554
    .line 555
    iget-object v3, v3, Lh2/a;->d:Ljava/lang/String;

    .line 556
    .line 557
    invoke-direct {v1, v2, v4, v5, v3}, Lh2/a;-><init>(Landroid/graphics/drawable/Drawable;ZLd2/f;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    return-object v1
.end method
