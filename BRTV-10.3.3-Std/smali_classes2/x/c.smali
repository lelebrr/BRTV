.class public final Lx/c;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:[F

.field public final b:Landroid/graphics/ColorMatrix;

.field public final c:Landroid/graphics/ColorMatrix;

.field public d:F

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x14

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Lx/c;->a:[F

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/ColorMatrix;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lx/c;->b:Landroid/graphics/ColorMatrix;

    .line 16
    .line 17
    new-instance v0, Landroid/graphics/ColorMatrix;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lx/c;->c:Landroid/graphics/ColorMatrix;

    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v0, p0, Lx/c;->d:F

    .line 27
    .line 28
    iput v0, p0, Lx/c;->e:F

    .line 29
    .line 30
    iput v0, p0, Lx/c;->f:F

    .line 31
    .line 32
    iput v0, p0, Lx/c;->g:F

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lx/c;->b:Landroid/graphics/ColorMatrix;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->reset()V

    .line 6
    .line 7
    .line 8
    iget v2, v0, Lx/c;->e:F

    .line 9
    .line 10
    iget-object v3, v0, Lx/c;->a:[F

    .line 11
    .line 12
    const/16 v6, 0x11

    .line 13
    .line 14
    const/16 v7, 0x10

    .line 15
    .line 16
    const/16 v8, 0xf

    .line 17
    .line 18
    const/16 v9, 0xe

    .line 19
    .line 20
    const/16 v10, 0xd

    .line 21
    .line 22
    const/16 v11, 0xc

    .line 23
    .line 24
    const/16 v12, 0xb

    .line 25
    .line 26
    const/16 v13, 0xa

    .line 27
    .line 28
    const/16 v14, 0x9

    .line 29
    .line 30
    const/16 v15, 0x8

    .line 31
    .line 32
    const/16 v16, 0x7

    .line 33
    .line 34
    const/16 v17, 0x6

    .line 35
    .line 36
    const/16 v18, 0x5

    .line 37
    .line 38
    const/16 v19, 0x4

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    const/16 v20, 0x3

    .line 42
    .line 43
    const/16 v21, 0x2

    .line 44
    .line 45
    const/16 v22, 0x1

    .line 46
    .line 47
    const/16 v23, 0x0

    .line 48
    .line 49
    const/high16 v5, 0x3f800000    # 1.0f

    .line 50
    .line 51
    cmpl-float v24, v2, v5

    .line 52
    .line 53
    if-eqz v24, :cond_0

    .line 54
    .line 55
    sub-float v24, v5, v2

    .line 56
    .line 57
    const v25, 0x3e998c7e    # 0.2999f

    .line 58
    .line 59
    .line 60
    mul-float v25, v25, v24

    .line 61
    .line 62
    const v26, 0x3f1645a2    # 0.587f

    .line 63
    .line 64
    .line 65
    mul-float v26, v26, v24

    .line 66
    .line 67
    const v27, 0x3de978d5    # 0.114f

    .line 68
    .line 69
    .line 70
    mul-float v24, v24, v27

    .line 71
    .line 72
    add-float v27, v25, v2

    .line 73
    .line 74
    aput v27, v3, v23

    .line 75
    .line 76
    aput v26, v3, v22

    .line 77
    .line 78
    aput v24, v3, v21

    .line 79
    .line 80
    aput v4, v3, v20

    .line 81
    .line 82
    aput v4, v3, v19

    .line 83
    .line 84
    aput v25, v3, v18

    .line 85
    .line 86
    add-float v27, v26, v2

    .line 87
    .line 88
    aput v27, v3, v17

    .line 89
    .line 90
    aput v24, v3, v16

    .line 91
    .line 92
    aput v4, v3, v15

    .line 93
    .line 94
    aput v4, v3, v14

    .line 95
    .line 96
    aput v25, v3, v13

    .line 97
    .line 98
    aput v26, v3, v12

    .line 99
    .line 100
    add-float v24, v24, v2

    .line 101
    .line 102
    aput v24, v3, v11

    .line 103
    .line 104
    aput v4, v3, v10

    .line 105
    .line 106
    aput v4, v3, v9

    .line 107
    .line 108
    aput v4, v3, v8

    .line 109
    .line 110
    aput v4, v3, v7

    .line 111
    .line 112
    aput v4, v3, v6

    .line 113
    .line 114
    const/16 v2, 0x12

    .line 115
    .line 116
    aput v5, v3, v2

    .line 117
    .line 118
    const/16 v2, 0x13

    .line 119
    .line 120
    aput v4, v3, v2

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 123
    .line 124
    .line 125
    const/4 v2, 0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    const/4 v2, 0x0

    .line 128
    :goto_0
    iget v6, v0, Lx/c;->f:F

    .line 129
    .line 130
    iget-object v7, v0, Lx/c;->c:Landroid/graphics/ColorMatrix;

    .line 131
    .line 132
    cmpl-float v26, v6, v5

    .line 133
    .line 134
    if-eqz v26, :cond_1

    .line 135
    .line 136
    invoke-virtual {v7, v6, v6, v6, v5}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 140
    .line 141
    .line 142
    const/4 v2, 0x1

    .line 143
    :cond_1
    iget v6, v0, Lx/c;->g:F

    .line 144
    .line 145
    cmpl-float v26, v6, v5

    .line 146
    .line 147
    if-eqz v26, :cond_6

    .line 148
    .line 149
    cmpg-float v2, v6, v4

    .line 150
    .line 151
    if-gtz v2, :cond_2

    .line 152
    .line 153
    const v6, 0x3c23d70a    # 0.01f

    .line 154
    .line 155
    .line 156
    :cond_2
    const v2, 0x459c4000    # 5000.0f

    .line 157
    .line 158
    .line 159
    div-float/2addr v2, v6

    .line 160
    const/high16 v6, 0x42c80000    # 100.0f

    .line 161
    .line 162
    div-float/2addr v2, v6

    .line 163
    const v6, 0x43211e9c

    .line 164
    .line 165
    .line 166
    const v26, 0x42c6f10d

    .line 167
    .line 168
    .line 169
    const/high16 v27, 0x42840000    # 66.0f

    .line 170
    .line 171
    const/high16 v5, 0x437f0000    # 255.0f

    .line 172
    .line 173
    cmpl-float v28, v2, v27

    .line 174
    .line 175
    if-lez v28, :cond_3

    .line 176
    .line 177
    const/high16 v28, 0x42700000    # 60.0f

    .line 178
    .line 179
    sub-float v8, v2, v28

    .line 180
    .line 181
    float-to-double v9, v8

    .line 182
    const-wide v11, -0x403ef32580000000L    # -0.13320475816726685

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 188
    .line 189
    .line 190
    move-result-wide v11

    .line 191
    double-to-float v11, v11

    .line 192
    const v12, 0x43a4d970

    .line 193
    .line 194
    .line 195
    mul-float v11, v11, v12

    .line 196
    .line 197
    const-wide v13, 0x3fb354f0e0000000L

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 203
    .line 204
    .line 205
    move-result-wide v9

    .line 206
    double-to-float v9, v9

    .line 207
    const v10, 0x43900fa3

    .line 208
    .line 209
    .line 210
    mul-float v9, v9, v10

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_3
    float-to-double v9, v2

    .line 214
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    .line 215
    .line 216
    .line 217
    move-result-wide v9

    .line 218
    double-to-float v9, v9

    .line 219
    mul-float v9, v9, v26

    .line 220
    .line 221
    sub-float/2addr v9, v6

    .line 222
    const/high16 v11, 0x437f0000    # 255.0f

    .line 223
    .line 224
    :goto_1
    const v10, 0x439885bc

    .line 225
    .line 226
    .line 227
    const v13, 0x430a848a

    .line 228
    .line 229
    .line 230
    cmpg-float v14, v2, v27

    .line 231
    .line 232
    if-gez v14, :cond_5

    .line 233
    .line 234
    const/high16 v14, 0x41980000    # 19.0f

    .line 235
    .line 236
    cmpl-float v14, v2, v14

    .line 237
    .line 238
    if-lez v14, :cond_4

    .line 239
    .line 240
    const/high16 v14, 0x41200000    # 10.0f

    .line 241
    .line 242
    sub-float/2addr v2, v14

    .line 243
    move-object v14, v7

    .line 244
    float-to-double v6, v2

    .line 245
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 246
    .line 247
    .line 248
    move-result-wide v6

    .line 249
    double-to-float v2, v6

    .line 250
    mul-float v2, v2, v13

    .line 251
    .line 252
    sub-float/2addr v2, v10

    .line 253
    goto :goto_2

    .line 254
    :cond_4
    move-object v14, v7

    .line 255
    const/4 v2, 0x0

    .line 256
    goto :goto_2

    .line 257
    :cond_5
    move-object v14, v7

    .line 258
    const/high16 v2, 0x437f0000    # 255.0f

    .line 259
    .line 260
    :goto_2
    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    const/high16 v9, 0x42480000    # 50.0f

    .line 285
    .line 286
    float-to-double v8, v9

    .line 287
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    .line 288
    .line 289
    .line 290
    move-result-wide v8

    .line 291
    double-to-float v8, v8

    .line 292
    mul-float v8, v8, v26

    .line 293
    .line 294
    const v9, 0x43211e9c

    .line 295
    .line 296
    .line 297
    sub-float/2addr v8, v9

    .line 298
    const/high16 v9, 0x42200000    # 40.0f

    .line 299
    .line 300
    float-to-double v11, v9

    .line 301
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    .line 302
    .line 303
    .line 304
    move-result-wide v11

    .line 305
    double-to-float v9, v11

    .line 306
    mul-float v9, v9, v13

    .line 307
    .line 308
    sub-float/2addr v9, v10

    .line 309
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    div-float/2addr v6, v10

    .line 334
    div-float/2addr v7, v8

    .line 335
    div-float/2addr v2, v5

    .line 336
    aput v6, v3, v23

    .line 337
    .line 338
    aput v4, v3, v22

    .line 339
    .line 340
    aput v4, v3, v21

    .line 341
    .line 342
    aput v4, v3, v20

    .line 343
    .line 344
    aput v4, v3, v19

    .line 345
    .line 346
    aput v4, v3, v18

    .line 347
    .line 348
    aput v7, v3, v17

    .line 349
    .line 350
    aput v4, v3, v16

    .line 351
    .line 352
    aput v4, v3, v15

    .line 353
    .line 354
    const/16 v5, 0x9

    .line 355
    .line 356
    aput v4, v3, v5

    .line 357
    .line 358
    const/16 v5, 0xa

    .line 359
    .line 360
    aput v4, v3, v5

    .line 361
    .line 362
    const/16 v5, 0xb

    .line 363
    .line 364
    aput v4, v3, v5

    .line 365
    .line 366
    const/16 v5, 0xc

    .line 367
    .line 368
    aput v2, v3, v5

    .line 369
    .line 370
    const/16 v2, 0xd

    .line 371
    .line 372
    aput v4, v3, v2

    .line 373
    .line 374
    const/16 v2, 0xe

    .line 375
    .line 376
    aput v4, v3, v2

    .line 377
    .line 378
    const/16 v2, 0xf

    .line 379
    .line 380
    aput v4, v3, v2

    .line 381
    .line 382
    const/16 v2, 0x10

    .line 383
    .line 384
    aput v4, v3, v2

    .line 385
    .line 386
    const/16 v2, 0x11

    .line 387
    .line 388
    aput v4, v3, v2

    .line 389
    .line 390
    const/16 v2, 0x12

    .line 391
    .line 392
    const/high16 v5, 0x3f800000    # 1.0f

    .line 393
    .line 394
    aput v5, v3, v2

    .line 395
    .line 396
    const/16 v2, 0x13

    .line 397
    .line 398
    aput v4, v3, v2

    .line 399
    .line 400
    move-object v6, v14

    .line 401
    invoke-virtual {v6, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 405
    .line 406
    .line 407
    const/4 v2, 0x1

    .line 408
    goto :goto_3

    .line 409
    :cond_6
    move-object v6, v7

    .line 410
    :goto_3
    iget v7, v0, Lx/c;->d:F

    .line 411
    .line 412
    cmpl-float v9, v7, v5

    .line 413
    .line 414
    if-eqz v9, :cond_7

    .line 415
    .line 416
    aput v7, v3, v23

    .line 417
    .line 418
    aput v4, v3, v22

    .line 419
    .line 420
    aput v4, v3, v21

    .line 421
    .line 422
    aput v4, v3, v20

    .line 423
    .line 424
    aput v4, v3, v19

    .line 425
    .line 426
    aput v4, v3, v18

    .line 427
    .line 428
    aput v7, v3, v17

    .line 429
    .line 430
    aput v4, v3, v16

    .line 431
    .line 432
    aput v4, v3, v15

    .line 433
    .line 434
    const/16 v2, 0x9

    .line 435
    .line 436
    aput v4, v3, v2

    .line 437
    .line 438
    const/16 v2, 0xa

    .line 439
    .line 440
    aput v4, v3, v2

    .line 441
    .line 442
    const/16 v2, 0xb

    .line 443
    .line 444
    aput v4, v3, v2

    .line 445
    .line 446
    const/16 v2, 0xc

    .line 447
    .line 448
    aput v7, v3, v2

    .line 449
    .line 450
    const/16 v2, 0xd

    .line 451
    .line 452
    aput v4, v3, v2

    .line 453
    .line 454
    const/16 v2, 0xe

    .line 455
    .line 456
    aput v4, v3, v2

    .line 457
    .line 458
    const/16 v2, 0xf

    .line 459
    .line 460
    aput v4, v3, v2

    .line 461
    .line 462
    const/16 v2, 0x10

    .line 463
    .line 464
    aput v4, v3, v2

    .line 465
    .line 466
    const/16 v2, 0x11

    .line 467
    .line 468
    aput v4, v3, v2

    .line 469
    .line 470
    const/16 v2, 0x12

    .line 471
    .line 472
    const/high16 v5, 0x3f800000    # 1.0f

    .line 473
    .line 474
    aput v5, v3, v2

    .line 475
    .line 476
    const/16 v2, 0x13

    .line 477
    .line 478
    aput v4, v3, v2

    .line 479
    .line 480
    invoke-virtual {v6, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 484
    .line 485
    .line 486
    goto :goto_4

    .line 487
    :cond_7
    move/from16 v22, v2

    .line 488
    .line 489
    :goto_4
    if-eqz v22, :cond_8

    .line 490
    .line 491
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    .line 492
    .line 493
    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 494
    .line 495
    .line 496
    move-object/from16 v1, p1

    .line 497
    .line 498
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 499
    .line 500
    .line 501
    goto :goto_5

    .line 502
    :cond_8
    move-object/from16 v1, p1

    .line 503
    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 505
    .line 506
    .line 507
    :goto_5
    return-void
.end method
