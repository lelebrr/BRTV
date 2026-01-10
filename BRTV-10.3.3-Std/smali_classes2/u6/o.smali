.class public final Lu6/o;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:[Lu6/w;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Landroid/graphics/Path;

.field public final f:Landroid/graphics/Path;

.field public final g:Lu6/w;

.field public final h:[F

.field public final i:[F

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lu6/w;

    .line 6
    .line 7
    iput-object v1, p0, Lu6/o;->a:[Lu6/w;

    .line 8
    .line 9
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 10
    .line 11
    iput-object v1, p0, Lu6/o;->b:[Landroid/graphics/Matrix;

    .line 12
    .line 13
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 14
    .line 15
    iput-object v1, p0, Lu6/o;->c:[Landroid/graphics/Matrix;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/PointF;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lu6/o;->d:Landroid/graphics/PointF;

    .line 23
    .line 24
    new-instance v1, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lu6/o;->e:Landroid/graphics/Path;

    .line 30
    .line 31
    new-instance v1, Landroid/graphics/Path;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lu6/o;->f:Landroid/graphics/Path;

    .line 37
    .line 38
    new-instance v1, Lu6/w;

    .line 39
    .line 40
    invoke-direct {v1}, Lu6/w;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lu6/o;->g:Lu6/w;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v2, v1, [F

    .line 47
    .line 48
    iput-object v2, p0, Lu6/o;->h:[F

    .line 49
    .line 50
    new-array v1, v1, [F

    .line 51
    .line 52
    iput-object v1, p0, Lu6/o;->i:[F

    .line 53
    .line 54
    new-instance v1, Landroid/graphics/Path;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lu6/o;->j:Landroid/graphics/Path;

    .line 60
    .line 61
    new-instance v1, Landroid/graphics/Path;

    .line 62
    .line 63
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lu6/o;->k:Landroid/graphics/Path;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lu6/o;->l:Z

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    .line 74
    iget-object v2, p0, Lu6/o;->a:[Lu6/w;

    .line 75
    .line 76
    new-instance v3, Lu6/w;

    .line 77
    .line 78
    invoke-direct {v3}, Lu6/w;-><init>()V

    .line 79
    .line 80
    .line 81
    aput-object v3, v2, v1

    .line 82
    .line 83
    iget-object v2, p0, Lu6/o;->b:[Landroid/graphics/Matrix;

    .line 84
    .line 85
    new-instance v3, Landroid/graphics/Matrix;

    .line 86
    .line 87
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .line 89
    .line 90
    aput-object v3, v2, v1

    .line 91
    .line 92
    iget-object v2, p0, Lu6/o;->c:[Landroid/graphics/Matrix;

    .line 93
    .line 94
    new-instance v3, Landroid/graphics/Matrix;

    .line 95
    .line 96
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .line 98
    .line 99
    aput-object v3, v2, v1

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lu6/m;FLandroid/graphics/RectF;Ls2/c;Landroid/graphics/Path;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    .line 14
    .line 15
    .line 16
    iget-object v6, v0, Lu6/o;->e:Landroid/graphics/Path;

    .line 17
    .line 18
    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 19
    .line 20
    .line 21
    iget-object v7, v0, Lu6/o;->f:Landroid/graphics/Path;

    .line 22
    .line 23
    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 24
    .line 25
    .line 26
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 27
    .line 28
    invoke-virtual {v7, v3, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 29
    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    :goto_0
    iget-object v10, v0, Lu6/o;->c:[Landroid/graphics/Matrix;

    .line 33
    .line 34
    iget-object v11, v0, Lu6/o;->b:[Landroid/graphics/Matrix;

    .line 35
    .line 36
    iget-object v12, v0, Lu6/o;->a:[Lu6/w;

    .line 37
    .line 38
    const/4 v13, 0x1

    .line 39
    const/4 v14, 0x4

    .line 40
    const/4 v15, 0x2

    .line 41
    iget-object v8, v0, Lu6/o;->h:[F

    .line 42
    .line 43
    if-ge v9, v14, :cond_9

    .line 44
    .line 45
    if-eq v9, v13, :cond_2

    .line 46
    .line 47
    if-eq v9, v15, :cond_1

    .line 48
    .line 49
    const/4 v14, 0x3

    .line 50
    if-eq v9, v14, :cond_0

    .line 51
    .line 52
    iget-object v14, v1, Lu6/m;->f:Lu6/c;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    iget-object v14, v1, Lu6/m;->e:Lu6/c;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v14, v1, Lu6/m;->h:Lu6/c;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v14, v1, Lu6/m;->g:Lu6/c;

    .line 62
    .line 63
    :goto_1
    if-eq v9, v13, :cond_5

    .line 64
    .line 65
    if-eq v9, v15, :cond_4

    .line 66
    .line 67
    const/4 v15, 0x3

    .line 68
    if-eq v9, v15, :cond_3

    .line 69
    .line 70
    iget-object v15, v1, Lu6/m;->b:Ln5/d;

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object v15, v1, Lu6/m;->a:Ln5/d;

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget-object v15, v1, Lu6/m;->d:Ln5/d;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    iget-object v15, v1, Lu6/m;->c:Ln5/d;

    .line 80
    .line 81
    :goto_2
    aget-object v13, v12, v9

    .line 82
    .line 83
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-interface {v14, v3}, Lu6/c;->a(Landroid/graphics/RectF;)F

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    invoke-virtual {v15, v13, v2, v14}, Ln5/d;->u(Lu6/w;FF)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v13, v9, 0x1

    .line 94
    .line 95
    mul-int/lit8 v14, v13, 0x5a

    .line 96
    .line 97
    int-to-float v14, v14

    .line 98
    aget-object v15, v11, v9

    .line 99
    .line 100
    invoke-virtual {v15}, Landroid/graphics/Matrix;->reset()V

    .line 101
    .line 102
    .line 103
    iget-object v15, v0, Lu6/o;->d:Landroid/graphics/PointF;

    .line 104
    .line 105
    move/from16 v18, v13

    .line 106
    .line 107
    const/4 v13, 0x1

    .line 108
    if-eq v9, v13, :cond_8

    .line 109
    .line 110
    const/4 v13, 0x2

    .line 111
    if-eq v9, v13, :cond_7

    .line 112
    .line 113
    const/4 v13, 0x3

    .line 114
    if-eq v9, v13, :cond_6

    .line 115
    .line 116
    iget v13, v3, Landroid/graphics/RectF;->right:F

    .line 117
    .line 118
    move-object/from16 v19, v6

    .line 119
    .line 120
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 121
    .line 122
    invoke-virtual {v15, v13, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    move-object/from16 v19, v6

    .line 127
    .line 128
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 129
    .line 130
    iget v13, v3, Landroid/graphics/RectF;->top:F

    .line 131
    .line 132
    invoke-virtual {v15, v6, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    move-object/from16 v19, v6

    .line 137
    .line 138
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 139
    .line 140
    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    .line 141
    .line 142
    invoke-virtual {v15, v6, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_8
    move-object/from16 v19, v6

    .line 147
    .line 148
    iget v6, v3, Landroid/graphics/RectF;->right:F

    .line 149
    .line 150
    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    .line 151
    .line 152
    invoke-virtual {v15, v6, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 153
    .line 154
    .line 155
    :goto_3
    aget-object v6, v11, v9

    .line 156
    .line 157
    iget v13, v15, Landroid/graphics/PointF;->x:F

    .line 158
    .line 159
    iget v15, v15, Landroid/graphics/PointF;->y:F

    .line 160
    .line 161
    invoke-virtual {v6, v13, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 162
    .line 163
    .line 164
    aget-object v6, v11, v9

    .line 165
    .line 166
    invoke-virtual {v6, v14}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 167
    .line 168
    .line 169
    aget-object v6, v12, v9

    .line 170
    .line 171
    iget v12, v6, Lu6/w;->c:F

    .line 172
    .line 173
    const/4 v13, 0x0

    .line 174
    aput v12, v8, v13

    .line 175
    .line 176
    iget v6, v6, Lu6/w;->d:F

    .line 177
    .line 178
    const/4 v12, 0x1

    .line 179
    aput v6, v8, v12

    .line 180
    .line 181
    aget-object v6, v11, v9

    .line 182
    .line 183
    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 184
    .line 185
    .line 186
    aget-object v6, v10, v9

    .line 187
    .line 188
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 189
    .line 190
    .line 191
    aget-object v6, v10, v9

    .line 192
    .line 193
    aget v11, v8, v13

    .line 194
    .line 195
    aget v8, v8, v12

    .line 196
    .line 197
    invoke-virtual {v6, v11, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 198
    .line 199
    .line 200
    aget-object v6, v10, v9

    .line 201
    .line 202
    invoke-virtual {v6, v14}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 203
    .line 204
    .line 205
    move/from16 v9, v18

    .line 206
    .line 207
    move-object/from16 v6, v19

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_9
    move-object/from16 v19, v6

    .line 212
    .line 213
    const/4 v13, 0x0

    .line 214
    :goto_4
    if-ge v13, v14, :cond_13

    .line 215
    .line 216
    aget-object v6, v12, v13

    .line 217
    .line 218
    iget v9, v6, Lu6/w;->a:F

    .line 219
    .line 220
    const/4 v15, 0x0

    .line 221
    aput v9, v8, v15

    .line 222
    .line 223
    iget v6, v6, Lu6/w;->b:F

    .line 224
    .line 225
    const/4 v9, 0x1

    .line 226
    aput v6, v8, v9

    .line 227
    .line 228
    aget-object v6, v11, v13

    .line 229
    .line 230
    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 231
    .line 232
    .line 233
    if-nez v13, :cond_a

    .line 234
    .line 235
    aget v6, v8, v15

    .line 236
    .line 237
    aget v14, v8, v9

    .line 238
    .line 239
    invoke-virtual {v5, v6, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_a
    aget v6, v8, v15

    .line 244
    .line 245
    aget v14, v8, v9

    .line 246
    .line 247
    invoke-virtual {v5, v6, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    .line 249
    .line 250
    :goto_5
    aget-object v6, v12, v13

    .line 251
    .line 252
    aget-object v9, v11, v13

    .line 253
    .line 254
    invoke-virtual {v6, v9, v5}, Lu6/w;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 255
    .line 256
    .line 257
    if-eqz v4, :cond_b

    .line 258
    .line 259
    aget-object v6, v12, v13

    .line 260
    .line 261
    aget-object v9, v11, v13

    .line 262
    .line 263
    iget-object v14, v4, Ls2/c;->b:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v14, Lu6/h;

    .line 266
    .line 267
    iget-object v15, v14, Lu6/h;->d:Ljava/util/BitSet;

    .line 268
    .line 269
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    const/4 v3, 0x0

    .line 273
    invoke-virtual {v15, v13, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 274
    .line 275
    .line 276
    iget v3, v6, Lu6/w;->f:F

    .line 277
    .line 278
    invoke-virtual {v6, v3}, Lu6/w;->b(F)V

    .line 279
    .line 280
    .line 281
    new-instance v3, Landroid/graphics/Matrix;

    .line 282
    .line 283
    invoke-direct {v3, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 284
    .line 285
    .line 286
    new-instance v9, Ljava/util/ArrayList;

    .line 287
    .line 288
    iget-object v6, v6, Lu6/w;->h:Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 291
    .line 292
    .line 293
    new-instance v6, Lu6/p;

    .line 294
    .line 295
    invoke-direct {v6, v9, v3}, Lu6/p;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 296
    .line 297
    .line 298
    iget-object v3, v14, Lu6/h;->b:[Lu6/v;

    .line 299
    .line 300
    aput-object v6, v3, v13

    .line 301
    .line 302
    :cond_b
    add-int/lit8 v3, v13, 0x1

    .line 303
    .line 304
    rem-int/lit8 v6, v3, 0x4

    .line 305
    .line 306
    aget-object v9, v12, v13

    .line 307
    .line 308
    iget v14, v9, Lu6/w;->c:F

    .line 309
    .line 310
    const/4 v15, 0x0

    .line 311
    aput v14, v8, v15

    .line 312
    .line 313
    iget v9, v9, Lu6/w;->d:F

    .line 314
    .line 315
    const/4 v14, 0x1

    .line 316
    aput v9, v8, v14

    .line 317
    .line 318
    aget-object v9, v11, v13

    .line 319
    .line 320
    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 321
    .line 322
    .line 323
    aget-object v9, v12, v6

    .line 324
    .line 325
    iget v14, v9, Lu6/w;->a:F

    .line 326
    .line 327
    iget-object v15, v0, Lu6/o;->i:[F

    .line 328
    .line 329
    const/16 v16, 0x0

    .line 330
    .line 331
    aput v14, v15, v16

    .line 332
    .line 333
    iget v9, v9, Lu6/w;->b:F

    .line 334
    .line 335
    const/4 v14, 0x1

    .line 336
    aput v9, v15, v14

    .line 337
    .line 338
    aget-object v9, v11, v6

    .line 339
    .line 340
    invoke-virtual {v9, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 341
    .line 342
    .line 343
    aget v9, v8, v16

    .line 344
    .line 345
    aget v17, v15, v16

    .line 346
    .line 347
    sub-float v9, v9, v17

    .line 348
    .line 349
    move/from16 v20, v3

    .line 350
    .line 351
    float-to-double v3, v9

    .line 352
    aget v9, v8, v14

    .line 353
    .line 354
    aget v15, v15, v14

    .line 355
    .line 356
    sub-float/2addr v9, v15

    .line 357
    float-to-double v14, v9

    .line 358
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 359
    .line 360
    .line 361
    move-result-wide v3

    .line 362
    double-to-float v3, v3

    .line 363
    const v4, 0x3a83126f    # 0.001f

    .line 364
    .line 365
    .line 366
    sub-float/2addr v3, v4

    .line 367
    const/4 v4, 0x0

    .line 368
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    aget-object v9, v12, v13

    .line 373
    .line 374
    iget v14, v9, Lu6/w;->c:F

    .line 375
    .line 376
    const/4 v15, 0x0

    .line 377
    aput v14, v8, v15

    .line 378
    .line 379
    iget v9, v9, Lu6/w;->d:F

    .line 380
    .line 381
    const/4 v14, 0x1

    .line 382
    aput v9, v8, v14

    .line 383
    .line 384
    aget-object v9, v11, v13

    .line 385
    .line 386
    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 387
    .line 388
    .line 389
    if-eq v13, v14, :cond_c

    .line 390
    .line 391
    const/4 v9, 0x3

    .line 392
    if-eq v13, v9, :cond_c

    .line 393
    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    .line 395
    .line 396
    .line 397
    move-result v9

    .line 398
    aget v15, v8, v14

    .line 399
    .line 400
    sub-float/2addr v9, v15

    .line 401
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 402
    .line 403
    .line 404
    move-result v9

    .line 405
    goto :goto_6

    .line 406
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    .line 407
    .line 408
    .line 409
    move-result v9

    .line 410
    const/4 v14, 0x0

    .line 411
    aget v15, v8, v14

    .line 412
    .line 413
    sub-float/2addr v9, v15

    .line 414
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 415
    .line 416
    .line 417
    move-result v9

    .line 418
    :goto_6
    const/high16 v14, 0x43870000    # 270.0f

    .line 419
    .line 420
    iget-object v15, v0, Lu6/o;->g:Lu6/w;

    .line 421
    .line 422
    invoke-virtual {v15, v4, v4, v14, v4}, Lu6/w;->e(FFFF)V

    .line 423
    .line 424
    .line 425
    const/4 v4, 0x1

    .line 426
    if-eq v13, v4, :cond_f

    .line 427
    .line 428
    const/4 v4, 0x2

    .line 429
    if-eq v13, v4, :cond_e

    .line 430
    .line 431
    const/4 v14, 0x3

    .line 432
    if-eq v13, v14, :cond_d

    .line 433
    .line 434
    iget-object v4, v1, Lu6/m;->j:Lu6/e;

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :cond_d
    iget-object v4, v1, Lu6/m;->i:Lu6/e;

    .line 438
    .line 439
    goto :goto_7

    .line 440
    :cond_e
    const/4 v14, 0x3

    .line 441
    iget-object v4, v1, Lu6/m;->l:Lu6/e;

    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_f
    const/4 v14, 0x3

    .line 445
    iget-object v4, v1, Lu6/m;->k:Lu6/e;

    .line 446
    .line 447
    :goto_7
    invoke-virtual {v4, v3, v9, v2, v15}, Lu6/e;->g(FFFLu6/w;)V

    .line 448
    .line 449
    .line 450
    iget-object v3, v0, Lu6/o;->j:Landroid/graphics/Path;

    .line 451
    .line 452
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 453
    .line 454
    .line 455
    aget-object v9, v10, v13

    .line 456
    .line 457
    invoke-virtual {v15, v9, v3}, Lu6/w;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 458
    .line 459
    .line 460
    iget-boolean v9, v0, Lu6/o;->l:Z

    .line 461
    .line 462
    if-eqz v9, :cond_10

    .line 463
    .line 464
    invoke-virtual {v4}, Lu6/e;->d()Z

    .line 465
    .line 466
    .line 467
    move-result v4

    .line 468
    if-nez v4, :cond_11

    .line 469
    .line 470
    invoke-virtual {v0, v3, v13}, Lu6/o;->b(Landroid/graphics/Path;I)Z

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    if-nez v4, :cond_11

    .line 475
    .line 476
    invoke-virtual {v0, v3, v6}, Lu6/o;->b(Landroid/graphics/Path;I)Z

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    if-eqz v4, :cond_10

    .line 481
    .line 482
    goto :goto_8

    .line 483
    :cond_10
    move-object/from16 v9, v19

    .line 484
    .line 485
    const/4 v6, 0x1

    .line 486
    goto :goto_a

    .line 487
    :cond_11
    :goto_8
    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 488
    .line 489
    invoke-virtual {v3, v3, v7, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 490
    .line 491
    .line 492
    iget v3, v15, Lu6/w;->a:F

    .line 493
    .line 494
    const/4 v4, 0x0

    .line 495
    aput v3, v8, v4

    .line 496
    .line 497
    iget v3, v15, Lu6/w;->b:F

    .line 498
    .line 499
    const/4 v6, 0x1

    .line 500
    aput v3, v8, v6

    .line 501
    .line 502
    aget-object v3, v10, v13

    .line 503
    .line 504
    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 505
    .line 506
    .line 507
    aget v3, v8, v4

    .line 508
    .line 509
    aget v4, v8, v6

    .line 510
    .line 511
    move-object/from16 v9, v19

    .line 512
    .line 513
    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 514
    .line 515
    .line 516
    aget-object v3, v10, v13

    .line 517
    .line 518
    invoke-virtual {v15, v3, v9}, Lu6/w;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 519
    .line 520
    .line 521
    :goto_9
    move-object/from16 v3, p4

    .line 522
    .line 523
    goto :goto_b

    .line 524
    :goto_a
    aget-object v3, v10, v13

    .line 525
    .line 526
    invoke-virtual {v15, v3, v5}, Lu6/w;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 527
    .line 528
    .line 529
    goto :goto_9

    .line 530
    :goto_b
    if-eqz v3, :cond_12

    .line 531
    .line 532
    aget-object v4, v10, v13

    .line 533
    .line 534
    iget-object v6, v3, Ls2/c;->b:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v6, Lu6/h;

    .line 537
    .line 538
    iget-object v14, v6, Lu6/h;->d:Ljava/util/BitSet;

    .line 539
    .line 540
    add-int/lit8 v0, v13, 0x4

    .line 541
    .line 542
    const/4 v1, 0x0

    .line 543
    invoke-virtual {v14, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 544
    .line 545
    .line 546
    iget v0, v15, Lu6/w;->f:F

    .line 547
    .line 548
    invoke-virtual {v15, v0}, Lu6/w;->b(F)V

    .line 549
    .line 550
    .line 551
    new-instance v0, Landroid/graphics/Matrix;

    .line 552
    .line 553
    invoke-direct {v0, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 554
    .line 555
    .line 556
    new-instance v4, Ljava/util/ArrayList;

    .line 557
    .line 558
    iget-object v14, v15, Lu6/w;->h:Ljava/util/ArrayList;

    .line 559
    .line 560
    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 561
    .line 562
    .line 563
    new-instance v14, Lu6/p;

    .line 564
    .line 565
    invoke-direct {v14, v4, v0}, Lu6/p;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 566
    .line 567
    .line 568
    iget-object v0, v6, Lu6/h;->c:[Lu6/v;

    .line 569
    .line 570
    aput-object v14, v0, v13

    .line 571
    .line 572
    goto :goto_c

    .line 573
    :cond_12
    const/4 v1, 0x0

    .line 574
    :goto_c
    move-object/from16 v0, p0

    .line 575
    .line 576
    move-object/from16 v1, p1

    .line 577
    .line 578
    move-object v4, v3

    .line 579
    move-object/from16 v19, v9

    .line 580
    .line 581
    move/from16 v13, v20

    .line 582
    .line 583
    const/4 v14, 0x4

    .line 584
    move-object/from16 v3, p3

    .line 585
    .line 586
    goto/16 :goto_4

    .line 587
    .line 588
    :cond_13
    move-object/from16 v9, v19

    .line 589
    .line 590
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v9}, Landroid/graphics/Path;->isEmpty()Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-nez v0, :cond_14

    .line 601
    .line 602
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 603
    .line 604
    invoke-virtual {v5, v9, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 605
    .line 606
    .line 607
    :cond_14
    return-void
.end method

.method public final b(Landroid/graphics/Path;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lu6/o;->k:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lu6/o;->a:[Lu6/w;

    .line 7
    .line 8
    aget-object v1, v1, p2

    .line 9
    .line 10
    iget-object v2, p0, Lu6/o;->b:[Landroid/graphics/Matrix;

    .line 11
    .line 12
    aget-object p2, v2, p2

    .line 13
    .line 14
    invoke-virtual {v1, p2, v0}, Lu6/w;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Landroid/graphics/RectF;

    .line 18
    .line 19
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    .line 49
    cmpl-float p1, p1, v0

    .line 50
    .line 51
    if-lez p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    cmpl-float p1, p1, v0

    .line 58
    .line 59
    if-lez p1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v1, 0x0

    .line 63
    :cond_1
    :goto_0
    return v1
.end method
