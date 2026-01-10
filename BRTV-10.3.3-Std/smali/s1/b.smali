.class public final Ls1/b;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final f:La0/e;


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:Ljava/util/ArrayList;

.field public final d:[Ls1/c;

.field public final e:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La0/e;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, La0/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ls1/b;->f:La0/e;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>([II[Ls1/c;)V
    .locals 17

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
    const/4 v3, 0x5

    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x3

    .line 13
    new-array v5, v5, [F

    .line 14
    .line 15
    iput-object v5, v0, Ls1/b;->e:[F

    .line 16
    .line 17
    move-object/from16 v5, p3

    .line 18
    .line 19
    iput-object v5, v0, Ls1/b;->d:[Ls1/c;

    .line 20
    .line 21
    const v5, 0x8000

    .line 22
    .line 23
    .line 24
    new-array v6, v5, [I

    .line 25
    .line 26
    iput-object v6, v0, Ls1/b;->b:[I

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    :goto_0
    array-length v9, v1

    .line 31
    const/16 v10, 0x8

    .line 32
    .line 33
    if-ge v8, v9, :cond_0

    .line 34
    .line 35
    aget v9, v1, v8

    .line 36
    .line 37
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    invoke-static {v11, v10, v3}, Ls1/b;->b(III)I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    invoke-static {v12, v10, v3}, Ls1/b;->b(III)I

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    invoke-static {v9, v10, v3}, Ls1/b;->b(III)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    shl-int/lit8 v10, v11, 0xa

    .line 62
    .line 63
    shl-int/lit8 v11, v12, 0x5

    .line 64
    .line 65
    or-int/2addr v10, v11

    .line 66
    or-int/2addr v9, v10

    .line 67
    aput v9, v1, v8

    .line 68
    .line 69
    aget v10, v6, v9

    .line 70
    .line 71
    add-int/2addr v10, v4

    .line 72
    aput v10, v6, v9

    .line 73
    .line 74
    add-int/2addr v8, v4

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v1, 0x0

    .line 77
    const/4 v8, 0x0

    .line 78
    :goto_1
    if-ge v1, v5, :cond_3

    .line 79
    .line 80
    aget v9, v6, v1

    .line 81
    .line 82
    if-lez v9, :cond_1

    .line 83
    .line 84
    shr-int/lit8 v9, v1, 0xa

    .line 85
    .line 86
    and-int/lit8 v9, v9, 0x1f

    .line 87
    .line 88
    shr-int/lit8 v11, v1, 0x5

    .line 89
    .line 90
    and-int/lit8 v11, v11, 0x1f

    .line 91
    .line 92
    and-int/lit8 v12, v1, 0x1f

    .line 93
    .line 94
    invoke-static {v9, v3, v10}, Ls1/b;->b(III)I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    invoke-static {v11, v3, v10}, Ls1/b;->b(III)I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    invoke-static {v12, v3, v10}, Ls1/b;->b(III)I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    invoke-static {v9, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    sget-object v11, Lf0/a;->a:Ljava/lang/ThreadLocal;

    .line 111
    .line 112
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    iget-object v13, v0, Ls1/b;->e:[F

    .line 125
    .line 126
    invoke-static {v11, v12, v9, v13}, Lf0/a;->a(III[F)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v13}, Ls1/b;->c([F)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_1

    .line 134
    .line 135
    aput v7, v6, v1

    .line 136
    .line 137
    :cond_1
    aget v9, v6, v1

    .line 138
    .line 139
    if-lez v9, :cond_2

    .line 140
    .line 141
    add-int/2addr v8, v4

    .line 142
    :cond_2
    add-int/2addr v1, v4

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    new-array v1, v8, [I

    .line 145
    .line 146
    iput-object v1, v0, Ls1/b;->a:[I

    .line 147
    .line 148
    const/4 v9, 0x0

    .line 149
    const/4 v11, 0x0

    .line 150
    :goto_2
    if-ge v9, v5, :cond_5

    .line 151
    .line 152
    aget v12, v6, v9

    .line 153
    .line 154
    if-lez v12, :cond_4

    .line 155
    .line 156
    add-int/lit8 v12, v11, 0x1

    .line 157
    .line 158
    aput v9, v1, v11

    .line 159
    .line 160
    move v11, v12

    .line 161
    :cond_4
    add-int/2addr v9, v4

    .line 162
    goto :goto_2

    .line 163
    :cond_5
    if-gt v8, v2, :cond_6

    .line 164
    .line 165
    new-instance v2, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v2, v0, Ls1/b;->c:Ljava/util/ArrayList;

    .line 171
    .line 172
    :goto_3
    if-ge v7, v8, :cond_10

    .line 173
    .line 174
    aget v2, v1, v7

    .line 175
    .line 176
    iget-object v5, v0, Ls1/b;->c:Ljava/util/ArrayList;

    .line 177
    .line 178
    new-instance v9, Ls1/d;

    .line 179
    .line 180
    shr-int/lit8 v11, v2, 0xa

    .line 181
    .line 182
    and-int/lit8 v11, v11, 0x1f

    .line 183
    .line 184
    shr-int/lit8 v12, v2, 0x5

    .line 185
    .line 186
    and-int/lit8 v12, v12, 0x1f

    .line 187
    .line 188
    and-int/lit8 v13, v2, 0x1f

    .line 189
    .line 190
    invoke-static {v11, v3, v10}, Ls1/b;->b(III)I

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    invoke-static {v12, v3, v10}, Ls1/b;->b(III)I

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    invoke-static {v13, v3, v10}, Ls1/b;->b(III)I

    .line 199
    .line 200
    .line 201
    move-result v13

    .line 202
    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    aget v2, v6, v2

    .line 207
    .line 208
    invoke-direct {v9, v11, v2}, Ls1/d;-><init>(II)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    add-int/2addr v7, v4

    .line 215
    goto :goto_3

    .line 216
    :cond_6
    new-instance v1, Ljava/util/PriorityQueue;

    .line 217
    .line 218
    sget-object v5, Ls1/b;->f:La0/e;

    .line 219
    .line 220
    invoke-direct {v1, v2, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 221
    .line 222
    .line 223
    new-instance v5, Ls1/a;

    .line 224
    .line 225
    iget-object v6, v0, Ls1/b;->a:[I

    .line 226
    .line 227
    array-length v6, v6

    .line 228
    sub-int/2addr v6, v4

    .line 229
    invoke-direct {v5, v0, v7, v6}, Ls1/a;-><init>(Ls1/b;II)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :goto_4
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-ge v5, v2, :cond_c

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    check-cast v5, Ls1/a;

    .line 246
    .line 247
    if-eqz v5, :cond_c

    .line 248
    .line 249
    iget v6, v5, Ls1/a;->b:I

    .line 250
    .line 251
    add-int/lit8 v8, v6, 0x1

    .line 252
    .line 253
    iget v9, v5, Ls1/a;->a:I

    .line 254
    .line 255
    sub-int/2addr v8, v9

    .line 256
    if-le v8, v4, :cond_c

    .line 257
    .line 258
    add-int/lit8 v8, v6, 0x1

    .line 259
    .line 260
    sub-int/2addr v8, v9

    .line 261
    if-le v8, v4, :cond_b

    .line 262
    .line 263
    iget v8, v5, Ls1/a;->e:I

    .line 264
    .line 265
    iget v11, v5, Ls1/a;->d:I

    .line 266
    .line 267
    sub-int/2addr v8, v11

    .line 268
    iget v11, v5, Ls1/a;->g:I

    .line 269
    .line 270
    iget v12, v5, Ls1/a;->f:I

    .line 271
    .line 272
    sub-int/2addr v11, v12

    .line 273
    iget v12, v5, Ls1/a;->i:I

    .line 274
    .line 275
    iget v13, v5, Ls1/a;->h:I

    .line 276
    .line 277
    sub-int/2addr v12, v13

    .line 278
    if-lt v8, v11, :cond_7

    .line 279
    .line 280
    if-lt v8, v12, :cond_7

    .line 281
    .line 282
    const/4 v8, -0x3

    .line 283
    goto :goto_5

    .line 284
    :cond_7
    if-lt v11, v8, :cond_8

    .line 285
    .line 286
    if-lt v11, v12, :cond_8

    .line 287
    .line 288
    const/4 v8, -0x2

    .line 289
    goto :goto_5

    .line 290
    :cond_8
    const/4 v8, -0x1

    .line 291
    :goto_5
    iget-object v11, v5, Ls1/a;->j:Ls1/b;

    .line 292
    .line 293
    iget-object v12, v11, Ls1/b;->a:[I

    .line 294
    .line 295
    invoke-static {v12, v8, v9, v6}, Ls1/b;->a([IIII)V

    .line 296
    .line 297
    .line 298
    iget v6, v5, Ls1/a;->b:I

    .line 299
    .line 300
    add-int/2addr v6, v4

    .line 301
    invoke-static {v12, v9, v6}, Ljava/util/Arrays;->sort([III)V

    .line 302
    .line 303
    .line 304
    iget v6, v5, Ls1/a;->b:I

    .line 305
    .line 306
    invoke-static {v12, v8, v9, v6}, Ls1/b;->a([IIII)V

    .line 307
    .line 308
    .line 309
    iget v6, v5, Ls1/a;->c:I

    .line 310
    .line 311
    div-int/lit8 v6, v6, 0x2

    .line 312
    .line 313
    move v8, v9

    .line 314
    const/4 v13, 0x0

    .line 315
    :goto_6
    iget v14, v5, Ls1/a;->b:I

    .line 316
    .line 317
    if-gt v8, v14, :cond_a

    .line 318
    .line 319
    aget v15, v12, v8

    .line 320
    .line 321
    iget-object v7, v11, Ls1/b;->b:[I

    .line 322
    .line 323
    aget v7, v7, v15

    .line 324
    .line 325
    add-int/2addr v13, v7

    .line 326
    if-lt v13, v6, :cond_9

    .line 327
    .line 328
    sub-int/2addr v14, v4

    .line 329
    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    .line 330
    .line 331
    .line 332
    move-result v9

    .line 333
    goto :goto_7

    .line 334
    :cond_9
    add-int/2addr v8, v4

    .line 335
    const/4 v7, 0x0

    .line 336
    goto :goto_6

    .line 337
    :cond_a
    :goto_7
    new-instance v6, Ls1/a;

    .line 338
    .line 339
    add-int/lit8 v7, v9, 0x1

    .line 340
    .line 341
    iget v8, v5, Ls1/a;->b:I

    .line 342
    .line 343
    invoke-direct {v6, v11, v7, v8}, Ls1/a;-><init>(Ls1/b;II)V

    .line 344
    .line 345
    .line 346
    iput v9, v5, Ls1/a;->b:I

    .line 347
    .line 348
    invoke-virtual {v5}, Ls1/a;->a()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v6}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    const/4 v7, 0x0

    .line 358
    goto :goto_4

    .line 359
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 360
    .line 361
    const-string v2, "Can not split a box with only 1 color"

    .line 362
    .line 363
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v1

    .line 367
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    :cond_d
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-eqz v5, :cond_f

    .line 385
    .line 386
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    check-cast v5, Ls1/a;

    .line 391
    .line 392
    iget-object v6, v5, Ls1/a;->j:Ls1/b;

    .line 393
    .line 394
    iget-object v7, v6, Ls1/b;->a:[I

    .line 395
    .line 396
    iget v8, v5, Ls1/a;->a:I

    .line 397
    .line 398
    const/4 v9, 0x0

    .line 399
    const/4 v11, 0x0

    .line 400
    const/4 v12, 0x0

    .line 401
    const/4 v13, 0x0

    .line 402
    :goto_9
    iget v14, v5, Ls1/a;->b:I

    .line 403
    .line 404
    if-gt v8, v14, :cond_e

    .line 405
    .line 406
    aget v14, v7, v8

    .line 407
    .line 408
    iget-object v15, v6, Ls1/b;->b:[I

    .line 409
    .line 410
    aget v15, v15, v14

    .line 411
    .line 412
    add-int/2addr v11, v15

    .line 413
    shr-int/lit8 v16, v14, 0xa

    .line 414
    .line 415
    and-int/lit8 v16, v16, 0x1f

    .line 416
    .line 417
    mul-int v16, v16, v15

    .line 418
    .line 419
    add-int v9, v16, v9

    .line 420
    .line 421
    shr-int/lit8 v16, v14, 0x5

    .line 422
    .line 423
    and-int/lit8 v16, v16, 0x1f

    .line 424
    .line 425
    mul-int v16, v16, v15

    .line 426
    .line 427
    add-int v12, v16, v12

    .line 428
    .line 429
    and-int/lit8 v14, v14, 0x1f

    .line 430
    .line 431
    mul-int v15, v15, v14

    .line 432
    .line 433
    add-int/2addr v13, v15

    .line 434
    add-int/2addr v8, v4

    .line 435
    goto :goto_9

    .line 436
    :cond_e
    int-to-float v5, v9

    .line 437
    int-to-float v6, v11

    .line 438
    div-float/2addr v5, v6

    .line 439
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    int-to-float v7, v12

    .line 444
    div-float/2addr v7, v6

    .line 445
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 446
    .line 447
    .line 448
    move-result v7

    .line 449
    int-to-float v8, v13

    .line 450
    div-float/2addr v8, v6

    .line 451
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    new-instance v8, Ls1/d;

    .line 456
    .line 457
    invoke-static {v5, v3, v10}, Ls1/b;->b(III)I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    invoke-static {v7, v3, v10}, Ls1/b;->b(III)I

    .line 462
    .line 463
    .line 464
    move-result v7

    .line 465
    invoke-static {v6, v3, v10}, Ls1/b;->b(III)I

    .line 466
    .line 467
    .line 468
    move-result v6

    .line 469
    invoke-static {v5, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    .line 470
    .line 471
    .line 472
    move-result v5

    .line 473
    invoke-direct {v8, v5, v11}, Ls1/d;-><init>(II)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v8}, Ls1/d;->b()[F

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-virtual {v0, v5}, Ls1/b;->c([F)Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    if-nez v5, :cond_d

    .line 485
    .line 486
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    goto :goto_8

    .line 490
    :cond_f
    iput-object v2, v0, Ls1/b;->c:Ljava/util/ArrayList;

    .line 491
    .line 492
    :cond_10
    return-void
.end method

.method public static a([IIII)V
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    :goto_0
    if-gt p2, p3, :cond_2

    .line 9
    .line 10
    aget p1, p0, p2

    .line 11
    .line 12
    and-int/lit8 v0, p1, 0x1f

    .line 13
    .line 14
    shl-int/lit8 v0, v0, 0xa

    .line 15
    .line 16
    shr-int/lit8 v1, p1, 0x5

    .line 17
    .line 18
    and-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x5

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    shr-int/lit8 p1, p1, 0xa

    .line 24
    .line 25
    and-int/lit8 p1, p1, 0x1f

    .line 26
    .line 27
    or-int/2addr p1, v0

    .line 28
    aput p1, p0, p2

    .line 29
    .line 30
    add-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    if-gt p2, p3, :cond_2

    .line 34
    .line 35
    aget p1, p0, p2

    .line 36
    .line 37
    shr-int/lit8 v0, p1, 0x5

    .line 38
    .line 39
    and-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    shl-int/lit8 v0, v0, 0xa

    .line 42
    .line 43
    shr-int/lit8 v1, p1, 0xa

    .line 44
    .line 45
    and-int/lit8 v1, v1, 0x1f

    .line 46
    .line 47
    shl-int/lit8 v1, v1, 0x5

    .line 48
    .line 49
    or-int/2addr v0, v1

    .line 50
    and-int/lit8 p1, p1, 0x1f

    .line 51
    .line 52
    or-int/2addr p1, v0

    .line 53
    aput p1, p0, p2

    .line 54
    .line 55
    add-int/lit8 p2, p2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_2
    return-void
.end method

.method public static b(III)I
    .locals 0

    .line 1
    if-le p2, p1, :cond_0

    .line 2
    .line 3
    sub-int p1, p2, p1

    .line 4
    .line 5
    shl-int/2addr p0, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sub-int/2addr p1, p2

    .line 8
    shr-int/2addr p0, p1

    .line 9
    :goto_0
    const/4 p1, 0x1

    .line 10
    shl-int p2, p1, p2

    .line 11
    .line 12
    sub-int/2addr p2, p1

    .line 13
    and-int/2addr p0, p2

    .line 14
    return p0
.end method


# virtual methods
.method public final c([F)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ls1/b;->d:[Ls1/c;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-lez v2, :cond_3

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_3

    .line 12
    .line 13
    aget-object v4, v1, v3

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    aget v4, p1, v4

    .line 20
    .line 21
    const v5, 0x3f733333    # 0.95f

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x1

    .line 25
    cmpl-float v5, v4, v5

    .line 26
    .line 27
    if-ltz v5, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const v5, 0x3d4ccccd    # 0.05f

    .line 31
    .line 32
    .line 33
    cmpg-float v4, v4, v5

    .line 34
    .line 35
    if-gtz v4, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    aget v4, p1, v0

    .line 39
    .line 40
    const/high16 v5, 0x41200000    # 10.0f

    .line 41
    .line 42
    cmpl-float v5, v4, v5

    .line 43
    .line 44
    if-ltz v5, :cond_2

    .line 45
    .line 46
    const/high16 v5, 0x42140000    # 37.0f

    .line 47
    .line 48
    cmpg-float v4, v4, v5

    .line 49
    .line 50
    if-gtz v4, :cond_2

    .line 51
    .line 52
    aget v4, p1, v6

    .line 53
    .line 54
    const v5, 0x3f51eb85    # 0.82f

    .line 55
    .line 56
    .line 57
    cmpg-float v4, v4, v5

    .line 58
    .line 59
    if-gtz v4, :cond_2

    .line 60
    .line 61
    :goto_1
    return v6

    .line 62
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    return v0
.end method
