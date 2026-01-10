.class public abstract Lv/k;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Z

    .line 3
    .line 4
    sput-object v0, Lv/k;->a:[Z

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lv/f;Lu/e;I)V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lv/f;->o0:I

    .line 8
    .line 9
    iget-object v2, v0, Lv/f;->r0:[Lv/b;

    .line 10
    .line 11
    move v13, v1

    .line 12
    move-object v14, v2

    .line 13
    const/4 v15, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v1, v0, Lv/f;->p0:I

    .line 16
    .line 17
    iget-object v2, v0, Lv/f;->q0:[Lv/b;

    .line 18
    .line 19
    move v13, v1

    .line 20
    move-object v14, v2

    .line 21
    const/4 v15, 0x2

    .line 22
    :goto_0
    const/4 v9, 0x0

    .line 23
    :goto_1
    if-ge v9, v13, :cond_6c

    .line 24
    .line 25
    aget-object v1, v14, v9

    .line 26
    .line 27
    iget-boolean v2, v1, Lv/b;->q:Z

    .line 28
    .line 29
    sget-object v3, Lv/d;->c:Lv/d;

    .line 30
    .line 31
    iget-object v8, v1, Lv/b;->a:Lv/e;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    const/16 v7, 0x8

    .line 35
    .line 36
    const/16 v16, 0x0

    .line 37
    .line 38
    if-nez v2, :cond_19

    .line 39
    .line 40
    iget v2, v1, Lv/b;->l:I

    .line 41
    .line 42
    mul-int/lit8 v6, v2, 0x2

    .line 43
    .line 44
    move-object v12, v8

    .line 45
    move-object/from16 v19, v12

    .line 46
    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    :goto_2
    if-nez v17, :cond_14

    .line 50
    .line 51
    iget v5, v1, Lv/b;->i:I

    .line 52
    .line 53
    add-int/2addr v5, v4

    .line 54
    iput v5, v1, Lv/b;->i:I

    .line 55
    .line 56
    iget-object v5, v12, Lv/e;->d0:[Lv/e;

    .line 57
    .line 58
    aput-object v16, v5, v2

    .line 59
    .line 60
    iget-object v5, v12, Lv/e;->c0:[Lv/e;

    .line 61
    .line 62
    aput-object v16, v5, v2

    .line 63
    .line 64
    iget v5, v12, Lv/e;->X:I

    .line 65
    .line 66
    iget-object v4, v12, Lv/e;->G:[Lv/c;

    .line 67
    .line 68
    if-eq v5, v7, :cond_f

    .line 69
    .line 70
    invoke-virtual {v12, v2}, Lv/e;->i(I)Lv/d;

    .line 71
    .line 72
    .line 73
    aget-object v5, v4, v6

    .line 74
    .line 75
    invoke-virtual {v5}, Lv/c;->c()I

    .line 76
    .line 77
    .line 78
    add-int/lit8 v5, v6, 0x1

    .line 79
    .line 80
    aget-object v22, v4, v5

    .line 81
    .line 82
    invoke-virtual/range {v22 .. v22}, Lv/c;->c()I

    .line 83
    .line 84
    .line 85
    aget-object v22, v4, v6

    .line 86
    .line 87
    invoke-virtual/range {v22 .. v22}, Lv/c;->c()I

    .line 88
    .line 89
    .line 90
    aget-object v5, v4, v5

    .line 91
    .line 92
    invoke-virtual {v5}, Lv/c;->c()I

    .line 93
    .line 94
    .line 95
    iget-object v5, v1, Lv/b;->b:Lv/e;

    .line 96
    .line 97
    if-nez v5, :cond_1

    .line 98
    .line 99
    iput-object v12, v1, Lv/b;->b:Lv/e;

    .line 100
    .line 101
    :cond_1
    iput-object v12, v1, Lv/b;->d:Lv/e;

    .line 102
    .line 103
    iget-object v5, v12, Lv/e;->J:[Lv/d;

    .line 104
    .line 105
    aget-object v5, v5, v2

    .line 106
    .line 107
    if-ne v5, v3, :cond_f

    .line 108
    .line 109
    iget-object v7, v12, Lv/e;->l:[I

    .line 110
    .line 111
    aget v7, v7, v2

    .line 112
    .line 113
    const/4 v11, 0x3

    .line 114
    if-eqz v7, :cond_3

    .line 115
    .line 116
    if-eq v7, v11, :cond_3

    .line 117
    .line 118
    const/4 v11, 0x2

    .line 119
    if-ne v7, v11, :cond_2

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_2
    move/from16 v25, v9

    .line 123
    .line 124
    move/from16 v26, v13

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_3
    :goto_3
    iget v11, v1, Lv/b;->j:I

    .line 128
    .line 129
    const/16 v21, 0x1

    .line 130
    .line 131
    add-int/lit8 v11, v11, 0x1

    .line 132
    .line 133
    iput v11, v1, Lv/b;->j:I

    .line 134
    .line 135
    iget-object v11, v12, Lv/e;->b0:[F

    .line 136
    .line 137
    aget v11, v11, v2

    .line 138
    .line 139
    const/16 v20, 0x0

    .line 140
    .line 141
    cmpl-float v25, v11, v20

    .line 142
    .line 143
    if-lez v25, :cond_4

    .line 144
    .line 145
    move/from16 v25, v9

    .line 146
    .line 147
    iget v9, v1, Lv/b;->k:F

    .line 148
    .line 149
    add-float/2addr v9, v11

    .line 150
    iput v9, v1, Lv/b;->k:F

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_4
    move/from16 v25, v9

    .line 154
    .line 155
    :goto_4
    iget v9, v12, Lv/e;->X:I

    .line 156
    .line 157
    move/from16 v26, v13

    .line 158
    .line 159
    const/16 v13, 0x8

    .line 160
    .line 161
    if-eq v9, v13, :cond_8

    .line 162
    .line 163
    if-ne v5, v3, :cond_8

    .line 164
    .line 165
    if-eqz v7, :cond_5

    .line 166
    .line 167
    const/4 v5, 0x3

    .line 168
    if-ne v7, v5, :cond_8

    .line 169
    .line 170
    :cond_5
    const/4 v5, 0x0

    .line 171
    cmpg-float v7, v11, v5

    .line 172
    .line 173
    if-gez v7, :cond_6

    .line 174
    .line 175
    const/4 v5, 0x1

    .line 176
    iput-boolean v5, v1, Lv/b;->n:Z

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_6
    const/4 v5, 0x1

    .line 180
    iput-boolean v5, v1, Lv/b;->o:Z

    .line 181
    .line 182
    :goto_5
    iget-object v5, v1, Lv/b;->h:Ljava/util/ArrayList;

    .line 183
    .line 184
    if-nez v5, :cond_7

    .line 185
    .line 186
    new-instance v5, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object v5, v1, Lv/b;->h:Ljava/util/ArrayList;

    .line 192
    .line 193
    :cond_7
    iget-object v5, v1, Lv/b;->h:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    :cond_8
    iget-object v5, v1, Lv/b;->f:Lv/e;

    .line 199
    .line 200
    if-nez v5, :cond_9

    .line 201
    .line 202
    iput-object v12, v1, Lv/b;->f:Lv/e;

    .line 203
    .line 204
    :cond_9
    iget-object v5, v1, Lv/b;->g:Lv/e;

    .line 205
    .line 206
    if-eqz v5, :cond_a

    .line 207
    .line 208
    iget-object v5, v5, Lv/e;->c0:[Lv/e;

    .line 209
    .line 210
    aput-object v12, v5, v2

    .line 211
    .line 212
    :cond_a
    iput-object v12, v1, Lv/b;->g:Lv/e;

    .line 213
    .line 214
    :goto_6
    if-nez v2, :cond_c

    .line 215
    .line 216
    iget v5, v12, Lv/e;->j:I

    .line 217
    .line 218
    if-eqz v5, :cond_b

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_b
    iget v5, v12, Lv/e;->m:I

    .line 222
    .line 223
    if-nez v5, :cond_e

    .line 224
    .line 225
    iget v5, v12, Lv/e;->n:I

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_c
    iget v5, v12, Lv/e;->k:I

    .line 229
    .line 230
    if-eqz v5, :cond_d

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_d
    iget v5, v12, Lv/e;->p:I

    .line 234
    .line 235
    if-nez v5, :cond_e

    .line 236
    .line 237
    iget v5, v12, Lv/e;->q:I

    .line 238
    .line 239
    :cond_e
    :goto_7
    move-object/from16 v5, v19

    .line 240
    .line 241
    goto :goto_8

    .line 242
    :cond_f
    move/from16 v25, v9

    .line 243
    .line 244
    move/from16 v26, v13

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :goto_8
    if-eq v5, v12, :cond_10

    .line 248
    .line 249
    iget-object v5, v5, Lv/e;->d0:[Lv/e;

    .line 250
    .line 251
    aput-object v12, v5, v2

    .line 252
    .line 253
    :cond_10
    add-int/lit8 v5, v6, 0x1

    .line 254
    .line 255
    aget-object v4, v4, v5

    .line 256
    .line 257
    iget-object v4, v4, Lv/c;->d:Lv/c;

    .line 258
    .line 259
    if-eqz v4, :cond_11

    .line 260
    .line 261
    iget-object v4, v4, Lv/c;->b:Lv/e;

    .line 262
    .line 263
    iget-object v5, v4, Lv/e;->G:[Lv/c;

    .line 264
    .line 265
    aget-object v5, v5, v6

    .line 266
    .line 267
    iget-object v5, v5, Lv/c;->d:Lv/c;

    .line 268
    .line 269
    if-eqz v5, :cond_11

    .line 270
    .line 271
    iget-object v5, v5, Lv/c;->b:Lv/e;

    .line 272
    .line 273
    if-eq v5, v12, :cond_12

    .line 274
    .line 275
    :cond_11
    move-object/from16 v4, v16

    .line 276
    .line 277
    :cond_12
    if-eqz v4, :cond_13

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_13
    move-object v4, v12

    .line 281
    const/16 v17, 0x1

    .line 282
    .line 283
    :goto_9
    move-object/from16 v19, v12

    .line 284
    .line 285
    move/from16 v9, v25

    .line 286
    .line 287
    move/from16 v13, v26

    .line 288
    .line 289
    const/16 v7, 0x8

    .line 290
    .line 291
    move-object v12, v4

    .line 292
    const/4 v4, 0x1

    .line 293
    goto/16 :goto_2

    .line 294
    .line 295
    :cond_14
    move/from16 v25, v9

    .line 296
    .line 297
    move/from16 v26, v13

    .line 298
    .line 299
    iget-object v4, v1, Lv/b;->b:Lv/e;

    .line 300
    .line 301
    if-eqz v4, :cond_15

    .line 302
    .line 303
    iget-object v4, v4, Lv/e;->G:[Lv/c;

    .line 304
    .line 305
    aget-object v4, v4, v6

    .line 306
    .line 307
    invoke-virtual {v4}, Lv/c;->c()I

    .line 308
    .line 309
    .line 310
    :cond_15
    iget-object v4, v1, Lv/b;->d:Lv/e;

    .line 311
    .line 312
    if-eqz v4, :cond_16

    .line 313
    .line 314
    add-int/lit8 v6, v6, 0x1

    .line 315
    .line 316
    iget-object v4, v4, Lv/e;->G:[Lv/c;

    .line 317
    .line 318
    aget-object v4, v4, v6

    .line 319
    .line 320
    invoke-virtual {v4}, Lv/c;->c()I

    .line 321
    .line 322
    .line 323
    :cond_16
    iput-object v12, v1, Lv/b;->c:Lv/e;

    .line 324
    .line 325
    if-nez v2, :cond_17

    .line 326
    .line 327
    iget-boolean v2, v1, Lv/b;->m:Z

    .line 328
    .line 329
    if-eqz v2, :cond_17

    .line 330
    .line 331
    iput-object v12, v1, Lv/b;->e:Lv/e;

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_17
    iput-object v8, v1, Lv/b;->e:Lv/e;

    .line 335
    .line 336
    :goto_a
    iget-boolean v2, v1, Lv/b;->o:Z

    .line 337
    .line 338
    if-eqz v2, :cond_18

    .line 339
    .line 340
    iget-boolean v2, v1, Lv/b;->n:Z

    .line 341
    .line 342
    if-eqz v2, :cond_18

    .line 343
    .line 344
    const/4 v2, 0x1

    .line 345
    goto :goto_b

    .line 346
    :cond_18
    const/4 v2, 0x0

    .line 347
    :goto_b
    iput-boolean v2, v1, Lv/b;->p:Z

    .line 348
    .line 349
    :goto_c
    const/4 v2, 0x1

    .line 350
    goto :goto_d

    .line 351
    :cond_19
    move/from16 v25, v9

    .line 352
    .line 353
    move/from16 v26, v13

    .line 354
    .line 355
    goto :goto_c

    .line 356
    :goto_d
    iput-boolean v2, v1, Lv/b;->q:Z

    .line 357
    .line 358
    iget-object v11, v1, Lv/b;->c:Lv/e;

    .line 359
    .line 360
    iget-object v12, v1, Lv/b;->b:Lv/e;

    .line 361
    .line 362
    iget-object v13, v1, Lv/b;->d:Lv/e;

    .line 363
    .line 364
    iget-object v2, v1, Lv/b;->e:Lv/e;

    .line 365
    .line 366
    iget v4, v1, Lv/b;->k:F

    .line 367
    .line 368
    iget-object v5, v0, Lv/e;->J:[Lv/d;

    .line 369
    .line 370
    aget-object v5, v5, p2

    .line 371
    .line 372
    sget-object v6, Lv/d;->b:Lv/d;

    .line 373
    .line 374
    if-ne v5, v6, :cond_1a

    .line 375
    .line 376
    const/4 v5, 0x1

    .line 377
    goto :goto_e

    .line 378
    :cond_1a
    const/4 v5, 0x0

    .line 379
    :goto_e
    if-nez p2, :cond_1e

    .line 380
    .line 381
    iget v6, v2, Lv/e;->Z:I

    .line 382
    .line 383
    const/4 v7, 0x1

    .line 384
    if-nez v6, :cond_1b

    .line 385
    .line 386
    const/16 v21, 0x1

    .line 387
    .line 388
    goto :goto_f

    .line 389
    :cond_1b
    const/16 v21, 0x0

    .line 390
    .line 391
    :goto_f
    const/4 v9, 0x2

    .line 392
    if-ne v6, v7, :cond_1c

    .line 393
    .line 394
    const/16 v17, 0x1

    .line 395
    .line 396
    goto :goto_10

    .line 397
    :cond_1c
    const/16 v17, 0x0

    .line 398
    .line 399
    :goto_10
    if-ne v6, v9, :cond_1d

    .line 400
    .line 401
    const/4 v6, 0x1

    .line 402
    goto :goto_11

    .line 403
    :cond_1d
    const/4 v6, 0x0

    .line 404
    :goto_11
    move/from16 v24, v4

    .line 405
    .line 406
    move-object v9, v8

    .line 407
    move/from16 v19, v21

    .line 408
    .line 409
    :goto_12
    const/4 v7, 0x0

    .line 410
    goto :goto_16

    .line 411
    :cond_1e
    const/4 v7, 0x1

    .line 412
    const/4 v9, 0x2

    .line 413
    iget v6, v2, Lv/e;->a0:I

    .line 414
    .line 415
    if-nez v6, :cond_1f

    .line 416
    .line 417
    const/16 v17, 0x1

    .line 418
    .line 419
    goto :goto_13

    .line 420
    :cond_1f
    const/16 v17, 0x0

    .line 421
    .line 422
    :goto_13
    if-ne v6, v7, :cond_20

    .line 423
    .line 424
    const/4 v7, 0x1

    .line 425
    goto :goto_14

    .line 426
    :cond_20
    const/4 v7, 0x0

    .line 427
    :goto_14
    if-ne v6, v9, :cond_21

    .line 428
    .line 429
    const/4 v6, 0x1

    .line 430
    goto :goto_15

    .line 431
    :cond_21
    const/4 v6, 0x0

    .line 432
    :goto_15
    move/from16 v24, v4

    .line 433
    .line 434
    move-object v9, v8

    .line 435
    move/from16 v19, v17

    .line 436
    .line 437
    move/from16 v17, v7

    .line 438
    .line 439
    goto :goto_12

    .line 440
    :goto_16
    iget-object v4, v0, Lv/e;->G:[Lv/c;

    .line 441
    .line 442
    move-object/from16 v27, v14

    .line 443
    .line 444
    if-nez v7, :cond_2e

    .line 445
    .line 446
    iget-object v14, v9, Lv/e;->G:[Lv/c;

    .line 447
    .line 448
    aget-object v14, v14, v15

    .line 449
    .line 450
    if-eqz v6, :cond_22

    .line 451
    .line 452
    const/16 v29, 0x1

    .line 453
    .line 454
    goto :goto_17

    .line 455
    :cond_22
    const/16 v29, 0x4

    .line 456
    .line 457
    :goto_17
    invoke-virtual {v14}, Lv/c;->c()I

    .line 458
    .line 459
    .line 460
    move-result v30

    .line 461
    move/from16 v31, v7

    .line 462
    .line 463
    iget-object v7, v9, Lv/e;->J:[Lv/d;

    .line 464
    .line 465
    aget-object v7, v7, p2

    .line 466
    .line 467
    if-ne v7, v3, :cond_23

    .line 468
    .line 469
    iget-object v7, v9, Lv/e;->l:[I

    .line 470
    .line 471
    aget v7, v7, p2

    .line 472
    .line 473
    if-nez v7, :cond_23

    .line 474
    .line 475
    move-object/from16 v32, v2

    .line 476
    .line 477
    const/4 v7, 0x1

    .line 478
    goto :goto_18

    .line 479
    :cond_23
    move-object/from16 v32, v2

    .line 480
    .line 481
    const/4 v7, 0x0

    .line 482
    :goto_18
    iget-object v2, v14, Lv/c;->d:Lv/c;

    .line 483
    .line 484
    if-eqz v2, :cond_24

    .line 485
    .line 486
    if-eq v9, v8, :cond_24

    .line 487
    .line 488
    invoke-virtual {v2}, Lv/c;->c()I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    add-int v30, v2, v30

    .line 493
    .line 494
    :cond_24
    move/from16 v2, v30

    .line 495
    .line 496
    if-eqz v6, :cond_25

    .line 497
    .line 498
    if-eq v9, v8, :cond_25

    .line 499
    .line 500
    if-eq v9, v12, :cond_25

    .line 501
    .line 502
    move-object/from16 v30, v8

    .line 503
    .line 504
    const/16 v29, 0x5

    .line 505
    .line 506
    goto :goto_19

    .line 507
    :cond_25
    move-object/from16 v30, v8

    .line 508
    .line 509
    :goto_19
    iget-object v8, v14, Lv/c;->d:Lv/c;

    .line 510
    .line 511
    if-eqz v8, :cond_28

    .line 512
    .line 513
    if-ne v9, v12, :cond_26

    .line 514
    .line 515
    move-object/from16 v33, v12

    .line 516
    .line 517
    iget-object v12, v14, Lv/c;->g:Lu/i;

    .line 518
    .line 519
    iget-object v8, v8, Lv/c;->g:Lu/i;

    .line 520
    .line 521
    move-object/from16 v34, v1

    .line 522
    .line 523
    const/4 v1, 0x6

    .line 524
    invoke-virtual {v10, v12, v8, v2, v1}, Lu/e;->f(Lu/i;Lu/i;II)V

    .line 525
    .line 526
    .line 527
    goto :goto_1a

    .line 528
    :cond_26
    move-object/from16 v34, v1

    .line 529
    .line 530
    move-object/from16 v33, v12

    .line 531
    .line 532
    iget-object v1, v14, Lv/c;->g:Lu/i;

    .line 533
    .line 534
    iget-object v8, v8, Lv/c;->g:Lu/i;

    .line 535
    .line 536
    const/16 v12, 0x8

    .line 537
    .line 538
    invoke-virtual {v10, v1, v8, v2, v12}, Lu/e;->f(Lu/i;Lu/i;II)V

    .line 539
    .line 540
    .line 541
    :goto_1a
    if-eqz v7, :cond_27

    .line 542
    .line 543
    if-nez v6, :cond_27

    .line 544
    .line 545
    const/4 v1, 0x5

    .line 546
    goto :goto_1b

    .line 547
    :cond_27
    move/from16 v1, v29

    .line 548
    .line 549
    :goto_1b
    iget-object v7, v14, Lv/c;->g:Lu/i;

    .line 550
    .line 551
    iget-object v8, v14, Lv/c;->d:Lv/c;

    .line 552
    .line 553
    iget-object v8, v8, Lv/c;->g:Lu/i;

    .line 554
    .line 555
    invoke-virtual {v10, v7, v8, v2, v1}, Lu/e;->e(Lu/i;Lu/i;II)V

    .line 556
    .line 557
    .line 558
    goto :goto_1c

    .line 559
    :cond_28
    move-object/from16 v34, v1

    .line 560
    .line 561
    move-object/from16 v33, v12

    .line 562
    .line 563
    :goto_1c
    iget-object v1, v9, Lv/e;->G:[Lv/c;

    .line 564
    .line 565
    if-eqz v5, :cond_2a

    .line 566
    .line 567
    iget v2, v9, Lv/e;->X:I

    .line 568
    .line 569
    const/16 v7, 0x8

    .line 570
    .line 571
    if-eq v2, v7, :cond_29

    .line 572
    .line 573
    iget-object v2, v9, Lv/e;->J:[Lv/d;

    .line 574
    .line 575
    aget-object v2, v2, p2

    .line 576
    .line 577
    if-ne v2, v3, :cond_29

    .line 578
    .line 579
    add-int/lit8 v2, v15, 0x1

    .line 580
    .line 581
    aget-object v2, v1, v2

    .line 582
    .line 583
    iget-object v2, v2, Lv/c;->g:Lu/i;

    .line 584
    .line 585
    aget-object v7, v1, v15

    .line 586
    .line 587
    iget-object v7, v7, Lv/c;->g:Lu/i;

    .line 588
    .line 589
    const/4 v8, 0x0

    .line 590
    const/4 v12, 0x5

    .line 591
    invoke-virtual {v10, v2, v7, v8, v12}, Lu/e;->f(Lu/i;Lu/i;II)V

    .line 592
    .line 593
    .line 594
    goto :goto_1d

    .line 595
    :cond_29
    const/4 v8, 0x0

    .line 596
    :goto_1d
    aget-object v2, v1, v15

    .line 597
    .line 598
    iget-object v2, v2, Lv/c;->g:Lu/i;

    .line 599
    .line 600
    aget-object v4, v4, v15

    .line 601
    .line 602
    iget-object v4, v4, Lv/c;->g:Lu/i;

    .line 603
    .line 604
    const/16 v7, 0x8

    .line 605
    .line 606
    invoke-virtual {v10, v2, v4, v8, v7}, Lu/e;->f(Lu/i;Lu/i;II)V

    .line 607
    .line 608
    .line 609
    :cond_2a
    add-int/lit8 v2, v15, 0x1

    .line 610
    .line 611
    aget-object v1, v1, v2

    .line 612
    .line 613
    iget-object v1, v1, Lv/c;->d:Lv/c;

    .line 614
    .line 615
    if-eqz v1, :cond_2b

    .line 616
    .line 617
    iget-object v1, v1, Lv/c;->b:Lv/e;

    .line 618
    .line 619
    iget-object v2, v1, Lv/e;->G:[Lv/c;

    .line 620
    .line 621
    aget-object v2, v2, v15

    .line 622
    .line 623
    iget-object v2, v2, Lv/c;->d:Lv/c;

    .line 624
    .line 625
    if-eqz v2, :cond_2b

    .line 626
    .line 627
    iget-object v2, v2, Lv/c;->b:Lv/e;

    .line 628
    .line 629
    if-eq v2, v9, :cond_2c

    .line 630
    .line 631
    :cond_2b
    move-object/from16 v1, v16

    .line 632
    .line 633
    :cond_2c
    if-eqz v1, :cond_2d

    .line 634
    .line 635
    move-object v9, v1

    .line 636
    move/from16 v7, v31

    .line 637
    .line 638
    goto :goto_1e

    .line 639
    :cond_2d
    const/4 v7, 0x1

    .line 640
    :goto_1e
    move-object/from16 v14, v27

    .line 641
    .line 642
    move-object/from16 v8, v30

    .line 643
    .line 644
    move-object/from16 v2, v32

    .line 645
    .line 646
    move-object/from16 v12, v33

    .line 647
    .line 648
    move-object/from16 v1, v34

    .line 649
    .line 650
    goto/16 :goto_16

    .line 651
    .line 652
    :cond_2e
    move-object/from16 v34, v1

    .line 653
    .line 654
    move-object/from16 v32, v2

    .line 655
    .line 656
    move-object/from16 v30, v8

    .line 657
    .line 658
    move-object/from16 v33, v12

    .line 659
    .line 660
    if-eqz v13, :cond_31

    .line 661
    .line 662
    iget-object v1, v11, Lv/e;->G:[Lv/c;

    .line 663
    .line 664
    add-int/lit8 v2, v15, 0x1

    .line 665
    .line 666
    aget-object v1, v1, v2

    .line 667
    .line 668
    iget-object v1, v1, Lv/c;->d:Lv/c;

    .line 669
    .line 670
    if-eqz v1, :cond_31

    .line 671
    .line 672
    iget-object v1, v13, Lv/e;->G:[Lv/c;

    .line 673
    .line 674
    aget-object v1, v1, v2

    .line 675
    .line 676
    iget-object v7, v13, Lv/e;->J:[Lv/d;

    .line 677
    .line 678
    aget-object v7, v7, p2

    .line 679
    .line 680
    if-ne v7, v3, :cond_2f

    .line 681
    .line 682
    iget-object v3, v13, Lv/e;->l:[I

    .line 683
    .line 684
    aget v3, v3, p2

    .line 685
    .line 686
    if-nez v3, :cond_2f

    .line 687
    .line 688
    if-nez v6, :cond_2f

    .line 689
    .line 690
    iget-object v3, v1, Lv/c;->d:Lv/c;

    .line 691
    .line 692
    iget-object v7, v3, Lv/c;->b:Lv/e;

    .line 693
    .line 694
    if-ne v7, v0, :cond_2f

    .line 695
    .line 696
    iget-object v7, v1, Lv/c;->g:Lu/i;

    .line 697
    .line 698
    iget-object v3, v3, Lv/c;->g:Lu/i;

    .line 699
    .line 700
    invoke-virtual {v1}, Lv/c;->c()I

    .line 701
    .line 702
    .line 703
    move-result v8

    .line 704
    neg-int v8, v8

    .line 705
    const/4 v12, 0x5

    .line 706
    invoke-virtual {v10, v7, v3, v8, v12}, Lu/e;->e(Lu/i;Lu/i;II)V

    .line 707
    .line 708
    .line 709
    goto :goto_1f

    .line 710
    :cond_2f
    const/4 v12, 0x5

    .line 711
    if-eqz v6, :cond_30

    .line 712
    .line 713
    iget-object v3, v1, Lv/c;->d:Lv/c;

    .line 714
    .line 715
    iget-object v7, v3, Lv/c;->b:Lv/e;

    .line 716
    .line 717
    if-ne v7, v0, :cond_30

    .line 718
    .line 719
    iget-object v7, v1, Lv/c;->g:Lu/i;

    .line 720
    .line 721
    iget-object v3, v3, Lv/c;->g:Lu/i;

    .line 722
    .line 723
    invoke-virtual {v1}, Lv/c;->c()I

    .line 724
    .line 725
    .line 726
    move-result v8

    .line 727
    neg-int v8, v8

    .line 728
    const/4 v9, 0x4

    .line 729
    invoke-virtual {v10, v7, v3, v8, v9}, Lu/e;->e(Lu/i;Lu/i;II)V

    .line 730
    .line 731
    .line 732
    :cond_30
    :goto_1f
    iget-object v3, v1, Lv/c;->g:Lu/i;

    .line 733
    .line 734
    iget-object v7, v11, Lv/e;->G:[Lv/c;

    .line 735
    .line 736
    aget-object v2, v7, v2

    .line 737
    .line 738
    iget-object v2, v2, Lv/c;->d:Lv/c;

    .line 739
    .line 740
    iget-object v2, v2, Lv/c;->g:Lu/i;

    .line 741
    .line 742
    invoke-virtual {v1}, Lv/c;->c()I

    .line 743
    .line 744
    .line 745
    move-result v1

    .line 746
    neg-int v1, v1

    .line 747
    const/4 v7, 0x6

    .line 748
    invoke-virtual {v10, v3, v2, v1, v7}, Lu/e;->g(Lu/i;Lu/i;II)V

    .line 749
    .line 750
    .line 751
    goto :goto_20

    .line 752
    :cond_31
    const/4 v12, 0x5

    .line 753
    :goto_20
    if-eqz v5, :cond_32

    .line 754
    .line 755
    add-int/lit8 v1, v15, 0x1

    .line 756
    .line 757
    aget-object v2, v4, v1

    .line 758
    .line 759
    iget-object v2, v2, Lv/c;->g:Lu/i;

    .line 760
    .line 761
    iget-object v3, v11, Lv/e;->G:[Lv/c;

    .line 762
    .line 763
    aget-object v1, v3, v1

    .line 764
    .line 765
    iget-object v3, v1, Lv/c;->g:Lu/i;

    .line 766
    .line 767
    invoke-virtual {v1}, Lv/c;->c()I

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    const/16 v4, 0x8

    .line 772
    .line 773
    invoke-virtual {v10, v2, v3, v1, v4}, Lu/e;->f(Lu/i;Lu/i;II)V

    .line 774
    .line 775
    .line 776
    :cond_32
    move-object/from16 v1, v34

    .line 777
    .line 778
    iget-object v2, v1, Lv/b;->h:Ljava/util/ArrayList;

    .line 779
    .line 780
    if-eqz v2, :cond_3c

    .line 781
    .line 782
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    const/4 v4, 0x1

    .line 787
    if-le v3, v4, :cond_3c

    .line 788
    .line 789
    iget-boolean v5, v1, Lv/b;->n:Z

    .line 790
    .line 791
    if-eqz v5, :cond_33

    .line 792
    .line 793
    iget-boolean v5, v1, Lv/b;->p:Z

    .line 794
    .line 795
    if-nez v5, :cond_33

    .line 796
    .line 797
    iget v5, v1, Lv/b;->j:I

    .line 798
    .line 799
    int-to-float v5, v5

    .line 800
    goto :goto_21

    .line 801
    :cond_33
    move/from16 v5, v24

    .line 802
    .line 803
    :goto_21
    move-object/from16 v9, v16

    .line 804
    .line 805
    const/4 v7, 0x0

    .line 806
    const/4 v8, 0x0

    .line 807
    :goto_22
    if-ge v8, v3, :cond_3c

    .line 808
    .line 809
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v14

    .line 813
    check-cast v14, Lv/e;

    .line 814
    .line 815
    iget-object v4, v14, Lv/e;->b0:[F

    .line 816
    .line 817
    aget v4, v4, p2

    .line 818
    .line 819
    iget-object v12, v14, Lv/e;->G:[Lv/c;

    .line 820
    .line 821
    const/16 v20, 0x0

    .line 822
    .line 823
    cmpg-float v24, v4, v20

    .line 824
    .line 825
    if-gez v24, :cond_35

    .line 826
    .line 827
    iget-boolean v4, v1, Lv/b;->p:Z

    .line 828
    .line 829
    if-eqz v4, :cond_34

    .line 830
    .line 831
    add-int/lit8 v0, v15, 0x1

    .line 832
    .line 833
    aget-object v0, v12, v0

    .line 834
    .line 835
    iget-object v0, v0, Lv/c;->g:Lu/i;

    .line 836
    .line 837
    aget-object v4, v12, v15

    .line 838
    .line 839
    iget-object v4, v4, Lv/c;->g:Lu/i;

    .line 840
    .line 841
    const/4 v12, 0x0

    .line 842
    const/4 v14, 0x4

    .line 843
    invoke-virtual {v10, v0, v4, v12, v14}, Lu/e;->e(Lu/i;Lu/i;II)V

    .line 844
    .line 845
    .line 846
    const/16 v24, 0x4

    .line 847
    .line 848
    goto :goto_25

    .line 849
    :cond_34
    const/16 v24, 0x4

    .line 850
    .line 851
    const/high16 v4, 0x3f800000    # 1.0f

    .line 852
    .line 853
    :goto_23
    const/16 v20, 0x0

    .line 854
    .line 855
    goto :goto_24

    .line 856
    :cond_35
    const/16 v24, 0x4

    .line 857
    .line 858
    goto :goto_23

    .line 859
    :goto_24
    cmpl-float v28, v4, v20

    .line 860
    .line 861
    if-nez v28, :cond_36

    .line 862
    .line 863
    add-int/lit8 v0, v15, 0x1

    .line 864
    .line 865
    aget-object v0, v12, v0

    .line 866
    .line 867
    iget-object v0, v0, Lv/c;->g:Lu/i;

    .line 868
    .line 869
    aget-object v4, v12, v15

    .line 870
    .line 871
    iget-object v4, v4, Lv/c;->g:Lu/i;

    .line 872
    .line 873
    const/4 v12, 0x0

    .line 874
    const/16 v14, 0x8

    .line 875
    .line 876
    invoke-virtual {v10, v0, v4, v12, v14}, Lu/e;->e(Lu/i;Lu/i;II)V

    .line 877
    .line 878
    .line 879
    :goto_25
    move-object/from16 v20, v1

    .line 880
    .line 881
    move-object/from16 v34, v2

    .line 882
    .line 883
    move/from16 v31, v3

    .line 884
    .line 885
    const/16 v18, 0x0

    .line 886
    .line 887
    goto/16 :goto_29

    .line 888
    .line 889
    :cond_36
    const/16 v18, 0x0

    .line 890
    .line 891
    if-eqz v9, :cond_3b

    .line 892
    .line 893
    iget-object v9, v9, Lv/e;->G:[Lv/c;

    .line 894
    .line 895
    aget-object v0, v9, v15

    .line 896
    .line 897
    iget-object v0, v0, Lv/c;->g:Lu/i;

    .line 898
    .line 899
    add-int/lit8 v31, v15, 0x1

    .line 900
    .line 901
    aget-object v9, v9, v31

    .line 902
    .line 903
    iget-object v9, v9, Lv/c;->g:Lu/i;

    .line 904
    .line 905
    move-object/from16 v34, v2

    .line 906
    .line 907
    aget-object v2, v12, v15

    .line 908
    .line 909
    iget-object v2, v2, Lv/c;->g:Lu/i;

    .line 910
    .line 911
    aget-object v12, v12, v31

    .line 912
    .line 913
    iget-object v12, v12, Lv/c;->g:Lu/i;

    .line 914
    .line 915
    move/from16 v31, v3

    .line 916
    .line 917
    invoke-virtual/range {p1 .. p1}, Lu/e;->k()Lu/c;

    .line 918
    .line 919
    .line 920
    move-result-object v3

    .line 921
    move-object/from16 v35, v14

    .line 922
    .line 923
    const/4 v14, 0x0

    .line 924
    iput v14, v3, Lu/c;->b:F

    .line 925
    .line 926
    move-object/from16 v20, v1

    .line 927
    .line 928
    const/high16 v1, -0x40800000    # -1.0f

    .line 929
    .line 930
    cmpl-float v36, v5, v14

    .line 931
    .line 932
    if-eqz v36, :cond_37

    .line 933
    .line 934
    cmpl-float v36, v7, v4

    .line 935
    .line 936
    if-nez v36, :cond_38

    .line 937
    .line 938
    :cond_37
    const/high16 v14, 0x3f800000    # 1.0f

    .line 939
    .line 940
    goto :goto_26

    .line 941
    :cond_38
    cmpl-float v36, v7, v14

    .line 942
    .line 943
    if-nez v36, :cond_39

    .line 944
    .line 945
    iget-object v2, v3, Lu/c;->d:Lu/b;

    .line 946
    .line 947
    const/high16 v7, 0x3f800000    # 1.0f

    .line 948
    .line 949
    invoke-interface {v2, v0, v7}, Lu/b;->h(Lu/i;F)V

    .line 950
    .line 951
    .line 952
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 953
    .line 954
    invoke-interface {v0, v9, v1}, Lu/b;->h(Lu/i;F)V

    .line 955
    .line 956
    .line 957
    goto :goto_27

    .line 958
    :cond_39
    const/high16 v14, 0x3f800000    # 1.0f

    .line 959
    .line 960
    if-nez v28, :cond_3a

    .line 961
    .line 962
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 963
    .line 964
    invoke-interface {v0, v2, v14}, Lu/b;->h(Lu/i;F)V

    .line 965
    .line 966
    .line 967
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 968
    .line 969
    invoke-interface {v0, v12, v1}, Lu/b;->h(Lu/i;F)V

    .line 970
    .line 971
    .line 972
    goto :goto_27

    .line 973
    :cond_3a
    div-float/2addr v7, v5

    .line 974
    div-float v28, v4, v5

    .line 975
    .line 976
    div-float v7, v7, v28

    .line 977
    .line 978
    iget-object v1, v3, Lu/c;->d:Lu/b;

    .line 979
    .line 980
    invoke-interface {v1, v0, v14}, Lu/b;->h(Lu/i;F)V

    .line 981
    .line 982
    .line 983
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 984
    .line 985
    const/high16 v1, -0x40800000    # -1.0f

    .line 986
    .line 987
    invoke-interface {v0, v9, v1}, Lu/b;->h(Lu/i;F)V

    .line 988
    .line 989
    .line 990
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 991
    .line 992
    invoke-interface {v0, v12, v7}, Lu/b;->h(Lu/i;F)V

    .line 993
    .line 994
    .line 995
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 996
    .line 997
    neg-float v1, v7

    .line 998
    invoke-interface {v0, v2, v1}, Lu/b;->h(Lu/i;F)V

    .line 999
    .line 1000
    .line 1001
    goto :goto_27

    .line 1002
    :goto_26
    iget-object v7, v3, Lu/c;->d:Lu/b;

    .line 1003
    .line 1004
    invoke-interface {v7, v0, v14}, Lu/b;->h(Lu/i;F)V

    .line 1005
    .line 1006
    .line 1007
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 1008
    .line 1009
    invoke-interface {v0, v9, v1}, Lu/b;->h(Lu/i;F)V

    .line 1010
    .line 1011
    .line 1012
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 1013
    .line 1014
    invoke-interface {v0, v12, v14}, Lu/b;->h(Lu/i;F)V

    .line 1015
    .line 1016
    .line 1017
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 1018
    .line 1019
    invoke-interface {v0, v2, v1}, Lu/b;->h(Lu/i;F)V

    .line 1020
    .line 1021
    .line 1022
    :goto_27
    invoke-virtual {v10, v3}, Lu/e;->c(Lu/c;)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_28

    .line 1026
    :cond_3b
    move-object/from16 v20, v1

    .line 1027
    .line 1028
    move-object/from16 v34, v2

    .line 1029
    .line 1030
    move/from16 v31, v3

    .line 1031
    .line 1032
    move-object/from16 v35, v14

    .line 1033
    .line 1034
    :goto_28
    move v7, v4

    .line 1035
    move-object/from16 v9, v35

    .line 1036
    .line 1037
    :goto_29
    add-int/lit8 v8, v8, 0x1

    .line 1038
    .line 1039
    const/4 v4, 0x1

    .line 1040
    const/4 v12, 0x5

    .line 1041
    move-object/from16 v0, p0

    .line 1042
    .line 1043
    move-object/from16 v1, v20

    .line 1044
    .line 1045
    move/from16 v3, v31

    .line 1046
    .line 1047
    move-object/from16 v2, v34

    .line 1048
    .line 1049
    goto/16 :goto_22

    .line 1050
    .line 1051
    :cond_3c
    move-object/from16 v20, v1

    .line 1052
    .line 1053
    const/16 v18, 0x0

    .line 1054
    .line 1055
    const/16 v24, 0x4

    .line 1056
    .line 1057
    if-eqz v33, :cond_43

    .line 1058
    .line 1059
    move-object/from16 v0, v33

    .line 1060
    .line 1061
    if-eq v0, v13, :cond_3d

    .line 1062
    .line 1063
    if-eqz v6, :cond_3e

    .line 1064
    .line 1065
    :cond_3d
    move-object/from16 v8, v30

    .line 1066
    .line 1067
    goto :goto_2b

    .line 1068
    :cond_3e
    move/from16 v23, v25

    .line 1069
    .line 1070
    move-object/from16 v8, v30

    .line 1071
    .line 1072
    :goto_2a
    const/4 v14, 0x2

    .line 1073
    goto/16 :goto_30

    .line 1074
    .line 1075
    :goto_2b
    iget-object v1, v8, Lv/e;->G:[Lv/c;

    .line 1076
    .line 1077
    aget-object v1, v1, v15

    .line 1078
    .line 1079
    iget-object v2, v11, Lv/e;->G:[Lv/c;

    .line 1080
    .line 1081
    add-int/lit8 v3, v15, 0x1

    .line 1082
    .line 1083
    aget-object v2, v2, v3

    .line 1084
    .line 1085
    iget-object v1, v1, Lv/c;->d:Lv/c;

    .line 1086
    .line 1087
    if-eqz v1, :cond_3f

    .line 1088
    .line 1089
    iget-object v1, v1, Lv/c;->g:Lu/i;

    .line 1090
    .line 1091
    move-object v4, v1

    .line 1092
    goto :goto_2c

    .line 1093
    :cond_3f
    move-object/from16 v4, v16

    .line 1094
    .line 1095
    :goto_2c
    iget-object v1, v2, Lv/c;->d:Lv/c;

    .line 1096
    .line 1097
    if-eqz v1, :cond_40

    .line 1098
    .line 1099
    iget-object v1, v1, Lv/c;->g:Lu/i;

    .line 1100
    .line 1101
    move-object v6, v1

    .line 1102
    goto :goto_2d

    .line 1103
    :cond_40
    move-object/from16 v6, v16

    .line 1104
    .line 1105
    :goto_2d
    iget-object v1, v0, Lv/e;->G:[Lv/c;

    .line 1106
    .line 1107
    aget-object v1, v1, v15

    .line 1108
    .line 1109
    iget-object v2, v13, Lv/e;->G:[Lv/c;

    .line 1110
    .line 1111
    aget-object v2, v2, v3

    .line 1112
    .line 1113
    if-eqz v4, :cond_42

    .line 1114
    .line 1115
    if-eqz v6, :cond_42

    .line 1116
    .line 1117
    if-nez p2, :cond_41

    .line 1118
    .line 1119
    move-object/from16 v3, v32

    .line 1120
    .line 1121
    iget v3, v3, Lv/e;->U:F

    .line 1122
    .line 1123
    :goto_2e
    move v5, v3

    .line 1124
    goto :goto_2f

    .line 1125
    :cond_41
    move-object/from16 v3, v32

    .line 1126
    .line 1127
    iget v3, v3, Lv/e;->V:F

    .line 1128
    .line 1129
    goto :goto_2e

    .line 1130
    :goto_2f
    invoke-virtual {v1}, Lv/c;->c()I

    .line 1131
    .line 1132
    .line 1133
    move-result v7

    .line 1134
    invoke-virtual {v2}, Lv/c;->c()I

    .line 1135
    .line 1136
    .line 1137
    move-result v8

    .line 1138
    iget-object v3, v1, Lv/c;->g:Lu/i;

    .line 1139
    .line 1140
    iget-object v9, v2, Lv/c;->g:Lu/i;

    .line 1141
    .line 1142
    const/4 v12, 0x7

    .line 1143
    move-object/from16 v1, p1

    .line 1144
    .line 1145
    move-object v2, v3

    .line 1146
    move-object v3, v4

    .line 1147
    move v4, v7

    .line 1148
    move-object v7, v9

    .line 1149
    move/from16 v23, v25

    .line 1150
    .line 1151
    const/4 v14, 0x2

    .line 1152
    move v9, v12

    .line 1153
    invoke-virtual/range {v1 .. v9}, Lu/e;->b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V

    .line 1154
    .line 1155
    .line 1156
    goto/16 :goto_48

    .line 1157
    .line 1158
    :cond_42
    move/from16 v23, v25

    .line 1159
    .line 1160
    const/4 v14, 0x2

    .line 1161
    goto/16 :goto_48

    .line 1162
    .line 1163
    :cond_43
    move/from16 v23, v25

    .line 1164
    .line 1165
    move-object/from16 v8, v30

    .line 1166
    .line 1167
    move-object/from16 v0, v33

    .line 1168
    .line 1169
    goto :goto_2a

    .line 1170
    :goto_30
    if-eqz v19, :cond_55

    .line 1171
    .line 1172
    if-eqz v0, :cond_55

    .line 1173
    .line 1174
    move-object/from16 v1, v20

    .line 1175
    .line 1176
    iget v2, v1, Lv/b;->j:I

    .line 1177
    .line 1178
    if-lez v2, :cond_44

    .line 1179
    .line 1180
    iget v1, v1, Lv/b;->i:I

    .line 1181
    .line 1182
    if-ne v1, v2, :cond_44

    .line 1183
    .line 1184
    const/16 v21, 0x1

    .line 1185
    .line 1186
    goto :goto_31

    .line 1187
    :cond_44
    const/16 v21, 0x0

    .line 1188
    .line 1189
    :goto_31
    move-object v9, v0

    .line 1190
    move-object v12, v9

    .line 1191
    :goto_32
    if-eqz v12, :cond_64

    .line 1192
    .line 1193
    iget-object v1, v12, Lv/e;->d0:[Lv/e;

    .line 1194
    .line 1195
    aget-object v1, v1, p2

    .line 1196
    .line 1197
    move-object v7, v1

    .line 1198
    :goto_33
    if-eqz v7, :cond_45

    .line 1199
    .line 1200
    iget v1, v7, Lv/e;->X:I

    .line 1201
    .line 1202
    const/16 v6, 0x8

    .line 1203
    .line 1204
    if-ne v1, v6, :cond_46

    .line 1205
    .line 1206
    iget-object v1, v7, Lv/e;->d0:[Lv/e;

    .line 1207
    .line 1208
    aget-object v7, v1, p2

    .line 1209
    .line 1210
    goto :goto_33

    .line 1211
    :cond_45
    const/16 v6, 0x8

    .line 1212
    .line 1213
    :cond_46
    if-nez v7, :cond_48

    .line 1214
    .line 1215
    if-ne v12, v13, :cond_47

    .line 1216
    .line 1217
    goto :goto_34

    .line 1218
    :cond_47
    move-object v14, v7

    .line 1219
    move-object/from16 v37, v8

    .line 1220
    .line 1221
    move-object/from16 v20, v9

    .line 1222
    .line 1223
    goto/16 :goto_3c

    .line 1224
    .line 1225
    :cond_48
    :goto_34
    iget-object v1, v12, Lv/e;->G:[Lv/c;

    .line 1226
    .line 1227
    aget-object v2, v1, v15

    .line 1228
    .line 1229
    iget-object v3, v2, Lv/c;->g:Lu/i;

    .line 1230
    .line 1231
    iget-object v4, v2, Lv/c;->d:Lv/c;

    .line 1232
    .line 1233
    if-eqz v4, :cond_49

    .line 1234
    .line 1235
    iget-object v4, v4, Lv/c;->g:Lu/i;

    .line 1236
    .line 1237
    goto :goto_35

    .line 1238
    :cond_49
    move-object/from16 v4, v16

    .line 1239
    .line 1240
    :goto_35
    if-eq v9, v12, :cond_4a

    .line 1241
    .line 1242
    iget-object v4, v9, Lv/e;->G:[Lv/c;

    .line 1243
    .line 1244
    add-int/lit8 v5, v15, 0x1

    .line 1245
    .line 1246
    aget-object v4, v4, v5

    .line 1247
    .line 1248
    iget-object v4, v4, Lv/c;->g:Lu/i;

    .line 1249
    .line 1250
    goto :goto_36

    .line 1251
    :cond_4a
    if-ne v12, v0, :cond_4c

    .line 1252
    .line 1253
    if-ne v9, v12, :cond_4c

    .line 1254
    .line 1255
    iget-object v4, v8, Lv/e;->G:[Lv/c;

    .line 1256
    .line 1257
    aget-object v4, v4, v15

    .line 1258
    .line 1259
    iget-object v4, v4, Lv/c;->d:Lv/c;

    .line 1260
    .line 1261
    if-eqz v4, :cond_4b

    .line 1262
    .line 1263
    iget-object v4, v4, Lv/c;->g:Lu/i;

    .line 1264
    .line 1265
    goto :goto_36

    .line 1266
    :cond_4b
    move-object/from16 v4, v16

    .line 1267
    .line 1268
    :cond_4c
    :goto_36
    invoke-virtual {v2}, Lv/c;->c()I

    .line 1269
    .line 1270
    .line 1271
    move-result v2

    .line 1272
    add-int/lit8 v5, v15, 0x1

    .line 1273
    .line 1274
    aget-object v20, v1, v5

    .line 1275
    .line 1276
    invoke-virtual/range {v20 .. v20}, Lv/c;->c()I

    .line 1277
    .line 1278
    .line 1279
    move-result v20

    .line 1280
    if-eqz v7, :cond_4d

    .line 1281
    .line 1282
    iget-object v6, v7, Lv/e;->G:[Lv/c;

    .line 1283
    .line 1284
    aget-object v6, v6, v15

    .line 1285
    .line 1286
    iget-object v14, v6, Lv/c;->g:Lu/i;

    .line 1287
    .line 1288
    aget-object v1, v1, v5

    .line 1289
    .line 1290
    iget-object v1, v1, Lv/c;->g:Lu/i;

    .line 1291
    .line 1292
    :goto_37
    move-object/from16 v24, v1

    .line 1293
    .line 1294
    goto :goto_39

    .line 1295
    :cond_4d
    iget-object v6, v11, Lv/e;->G:[Lv/c;

    .line 1296
    .line 1297
    aget-object v6, v6, v5

    .line 1298
    .line 1299
    iget-object v6, v6, Lv/c;->d:Lv/c;

    .line 1300
    .line 1301
    if-eqz v6, :cond_4e

    .line 1302
    .line 1303
    iget-object v14, v6, Lv/c;->g:Lu/i;

    .line 1304
    .line 1305
    goto :goto_38

    .line 1306
    :cond_4e
    move-object/from16 v14, v16

    .line 1307
    .line 1308
    :goto_38
    aget-object v1, v1, v5

    .line 1309
    .line 1310
    iget-object v1, v1, Lv/c;->g:Lu/i;

    .line 1311
    .line 1312
    goto :goto_37

    .line 1313
    :goto_39
    if-eqz v6, :cond_4f

    .line 1314
    .line 1315
    invoke-virtual {v6}, Lv/c;->c()I

    .line 1316
    .line 1317
    .line 1318
    move-result v1

    .line 1319
    add-int v20, v1, v20

    .line 1320
    .line 1321
    :cond_4f
    if-eqz v9, :cond_50

    .line 1322
    .line 1323
    iget-object v1, v9, Lv/e;->G:[Lv/c;

    .line 1324
    .line 1325
    aget-object v1, v1, v5

    .line 1326
    .line 1327
    invoke-virtual {v1}, Lv/c;->c()I

    .line 1328
    .line 1329
    .line 1330
    move-result v1

    .line 1331
    add-int/2addr v2, v1

    .line 1332
    :cond_50
    if-eqz v3, :cond_47

    .line 1333
    .line 1334
    if-eqz v4, :cond_47

    .line 1335
    .line 1336
    if-eqz v14, :cond_47

    .line 1337
    .line 1338
    if-eqz v24, :cond_47

    .line 1339
    .line 1340
    if-ne v12, v0, :cond_51

    .line 1341
    .line 1342
    iget-object v1, v0, Lv/e;->G:[Lv/c;

    .line 1343
    .line 1344
    aget-object v1, v1, v15

    .line 1345
    .line 1346
    invoke-virtual {v1}, Lv/c;->c()I

    .line 1347
    .line 1348
    .line 1349
    move-result v1

    .line 1350
    move v6, v1

    .line 1351
    goto :goto_3a

    .line 1352
    :cond_51
    move v6, v2

    .line 1353
    :goto_3a
    if-ne v12, v13, :cond_52

    .line 1354
    .line 1355
    iget-object v1, v13, Lv/e;->G:[Lv/c;

    .line 1356
    .line 1357
    aget-object v1, v1, v5

    .line 1358
    .line 1359
    invoke-virtual {v1}, Lv/c;->c()I

    .line 1360
    .line 1361
    .line 1362
    move-result v1

    .line 1363
    move/from16 v20, v1

    .line 1364
    .line 1365
    :cond_52
    if-eqz v21, :cond_53

    .line 1366
    .line 1367
    const/16 v28, 0x8

    .line 1368
    .line 1369
    goto :goto_3b

    .line 1370
    :cond_53
    const/16 v28, 0x5

    .line 1371
    .line 1372
    :goto_3b
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1373
    .line 1374
    move-object/from16 v1, p1

    .line 1375
    .line 1376
    move-object v2, v3

    .line 1377
    move-object v3, v4

    .line 1378
    move v4, v6

    .line 1379
    const/16 v22, 0x8

    .line 1380
    .line 1381
    move-object v6, v14

    .line 1382
    move-object v14, v7

    .line 1383
    move-object/from16 v7, v24

    .line 1384
    .line 1385
    move-object/from16 v37, v8

    .line 1386
    .line 1387
    move/from16 v8, v20

    .line 1388
    .line 1389
    move-object/from16 v20, v9

    .line 1390
    .line 1391
    move/from16 v9, v28

    .line 1392
    .line 1393
    invoke-virtual/range {v1 .. v9}, Lu/e;->b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V

    .line 1394
    .line 1395
    .line 1396
    :goto_3c
    iget v1, v12, Lv/e;->X:I

    .line 1397
    .line 1398
    const/16 v9, 0x8

    .line 1399
    .line 1400
    if-eq v1, v9, :cond_54

    .line 1401
    .line 1402
    move-object/from16 v20, v12

    .line 1403
    .line 1404
    :cond_54
    move-object v12, v14

    .line 1405
    move-object/from16 v9, v20

    .line 1406
    .line 1407
    move-object/from16 v8, v37

    .line 1408
    .line 1409
    const/4 v14, 0x2

    .line 1410
    goto/16 :goto_32

    .line 1411
    .line 1412
    :cond_55
    move-object/from16 v37, v8

    .line 1413
    .line 1414
    move-object/from16 v1, v20

    .line 1415
    .line 1416
    const/16 v9, 0x8

    .line 1417
    .line 1418
    if-eqz v17, :cond_64

    .line 1419
    .line 1420
    if-eqz v0, :cond_64

    .line 1421
    .line 1422
    iget v2, v1, Lv/b;->j:I

    .line 1423
    .line 1424
    if-lez v2, :cond_56

    .line 1425
    .line 1426
    iget v1, v1, Lv/b;->i:I

    .line 1427
    .line 1428
    if-ne v1, v2, :cond_56

    .line 1429
    .line 1430
    const/16 v21, 0x1

    .line 1431
    .line 1432
    goto :goto_3d

    .line 1433
    :cond_56
    const/16 v21, 0x0

    .line 1434
    .line 1435
    :goto_3d
    move-object v12, v0

    .line 1436
    move-object v14, v12

    .line 1437
    :goto_3e
    if-eqz v12, :cond_61

    .line 1438
    .line 1439
    iget-object v1, v12, Lv/e;->d0:[Lv/e;

    .line 1440
    .line 1441
    aget-object v1, v1, p2

    .line 1442
    .line 1443
    :goto_3f
    if-eqz v1, :cond_57

    .line 1444
    .line 1445
    iget v2, v1, Lv/e;->X:I

    .line 1446
    .line 1447
    if-ne v2, v9, :cond_57

    .line 1448
    .line 1449
    iget-object v1, v1, Lv/e;->d0:[Lv/e;

    .line 1450
    .line 1451
    aget-object v1, v1, p2

    .line 1452
    .line 1453
    goto :goto_3f

    .line 1454
    :cond_57
    if-eq v12, v0, :cond_5f

    .line 1455
    .line 1456
    if-eq v12, v13, :cond_5f

    .line 1457
    .line 1458
    if-eqz v1, :cond_5f

    .line 1459
    .line 1460
    if-ne v1, v13, :cond_58

    .line 1461
    .line 1462
    move-object/from16 v8, v16

    .line 1463
    .line 1464
    goto :goto_40

    .line 1465
    :cond_58
    move-object v8, v1

    .line 1466
    :goto_40
    iget-object v1, v12, Lv/e;->G:[Lv/c;

    .line 1467
    .line 1468
    aget-object v2, v1, v15

    .line 1469
    .line 1470
    iget-object v3, v2, Lv/c;->g:Lu/i;

    .line 1471
    .line 1472
    iget-object v4, v14, Lv/e;->G:[Lv/c;

    .line 1473
    .line 1474
    add-int/lit8 v5, v15, 0x1

    .line 1475
    .line 1476
    aget-object v4, v4, v5

    .line 1477
    .line 1478
    iget-object v4, v4, Lv/c;->g:Lu/i;

    .line 1479
    .line 1480
    invoke-virtual {v2}, Lv/c;->c()I

    .line 1481
    .line 1482
    .line 1483
    move-result v2

    .line 1484
    aget-object v6, v1, v5

    .line 1485
    .line 1486
    invoke-virtual {v6}, Lv/c;->c()I

    .line 1487
    .line 1488
    .line 1489
    move-result v6

    .line 1490
    if-eqz v8, :cond_5a

    .line 1491
    .line 1492
    iget-object v1, v8, Lv/e;->G:[Lv/c;

    .line 1493
    .line 1494
    aget-object v1, v1, v15

    .line 1495
    .line 1496
    iget-object v7, v1, Lv/c;->g:Lu/i;

    .line 1497
    .line 1498
    iget-object v9, v1, Lv/c;->d:Lv/c;

    .line 1499
    .line 1500
    if-eqz v9, :cond_59

    .line 1501
    .line 1502
    iget-object v9, v9, Lv/c;->g:Lu/i;

    .line 1503
    .line 1504
    goto :goto_42

    .line 1505
    :cond_59
    move-object/from16 v9, v16

    .line 1506
    .line 1507
    goto :goto_42

    .line 1508
    :cond_5a
    iget-object v7, v13, Lv/e;->G:[Lv/c;

    .line 1509
    .line 1510
    aget-object v7, v7, v15

    .line 1511
    .line 1512
    if-eqz v7, :cond_5b

    .line 1513
    .line 1514
    iget-object v9, v7, Lv/c;->g:Lu/i;

    .line 1515
    .line 1516
    goto :goto_41

    .line 1517
    :cond_5b
    move-object/from16 v9, v16

    .line 1518
    .line 1519
    :goto_41
    aget-object v1, v1, v5

    .line 1520
    .line 1521
    iget-object v1, v1, Lv/c;->g:Lu/i;

    .line 1522
    .line 1523
    move-object/from16 v38, v9

    .line 1524
    .line 1525
    move-object v9, v1

    .line 1526
    move-object v1, v7

    .line 1527
    move-object/from16 v7, v38

    .line 1528
    .line 1529
    :goto_42
    if-eqz v1, :cond_5c

    .line 1530
    .line 1531
    invoke-virtual {v1}, Lv/c;->c()I

    .line 1532
    .line 1533
    .line 1534
    move-result v1

    .line 1535
    add-int/2addr v1, v6

    .line 1536
    move/from16 v20, v1

    .line 1537
    .line 1538
    goto :goto_43

    .line 1539
    :cond_5c
    move/from16 v20, v6

    .line 1540
    .line 1541
    :goto_43
    iget-object v1, v14, Lv/e;->G:[Lv/c;

    .line 1542
    .line 1543
    aget-object v1, v1, v5

    .line 1544
    .line 1545
    invoke-virtual {v1}, Lv/c;->c()I

    .line 1546
    .line 1547
    .line 1548
    move-result v1

    .line 1549
    add-int v5, v1, v2

    .line 1550
    .line 1551
    if-eqz v21, :cond_5d

    .line 1552
    .line 1553
    const/16 v22, 0x8

    .line 1554
    .line 1555
    goto :goto_44

    .line 1556
    :cond_5d
    const/16 v22, 0x4

    .line 1557
    .line 1558
    :goto_44
    if-eqz v3, :cond_5e

    .line 1559
    .line 1560
    if-eqz v4, :cond_5e

    .line 1561
    .line 1562
    if-eqz v7, :cond_5e

    .line 1563
    .line 1564
    if-eqz v9, :cond_5e

    .line 1565
    .line 1566
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1567
    .line 1568
    move-object/from16 v1, p1

    .line 1569
    .line 1570
    move-object v2, v3

    .line 1571
    move-object v3, v4

    .line 1572
    move v4, v5

    .line 1573
    move v5, v6

    .line 1574
    move-object v6, v7

    .line 1575
    move-object v7, v9

    .line 1576
    move-object/from16 v28, v8

    .line 1577
    .line 1578
    move/from16 v8, v20

    .line 1579
    .line 1580
    move-object/from16 v20, v14

    .line 1581
    .line 1582
    const/16 v14, 0x8

    .line 1583
    .line 1584
    move/from16 v9, v22

    .line 1585
    .line 1586
    invoke-virtual/range {v1 .. v9}, Lu/e;->b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V

    .line 1587
    .line 1588
    .line 1589
    goto :goto_45

    .line 1590
    :cond_5e
    move-object/from16 v28, v8

    .line 1591
    .line 1592
    move-object/from16 v20, v14

    .line 1593
    .line 1594
    const/16 v14, 0x8

    .line 1595
    .line 1596
    :goto_45
    move-object/from16 v1, v28

    .line 1597
    .line 1598
    goto :goto_46

    .line 1599
    :cond_5f
    move-object/from16 v20, v14

    .line 1600
    .line 1601
    const/16 v14, 0x8

    .line 1602
    .line 1603
    :goto_46
    iget v2, v12, Lv/e;->X:I

    .line 1604
    .line 1605
    if-eq v2, v14, :cond_60

    .line 1606
    .line 1607
    move-object/from16 v20, v12

    .line 1608
    .line 1609
    :cond_60
    move-object v12, v1

    .line 1610
    move-object/from16 v14, v20

    .line 1611
    .line 1612
    const/16 v9, 0x8

    .line 1613
    .line 1614
    goto/16 :goto_3e

    .line 1615
    .line 1616
    :cond_61
    iget-object v1, v0, Lv/e;->G:[Lv/c;

    .line 1617
    .line 1618
    aget-object v1, v1, v15

    .line 1619
    .line 1620
    move-object/from16 v2, v37

    .line 1621
    .line 1622
    iget-object v2, v2, Lv/e;->G:[Lv/c;

    .line 1623
    .line 1624
    aget-object v2, v2, v15

    .line 1625
    .line 1626
    iget-object v2, v2, Lv/c;->d:Lv/c;

    .line 1627
    .line 1628
    iget-object v3, v13, Lv/e;->G:[Lv/c;

    .line 1629
    .line 1630
    add-int/lit8 v4, v15, 0x1

    .line 1631
    .line 1632
    aget-object v12, v3, v4

    .line 1633
    .line 1634
    iget-object v3, v11, Lv/e;->G:[Lv/c;

    .line 1635
    .line 1636
    aget-object v3, v3, v4

    .line 1637
    .line 1638
    iget-object v14, v3, Lv/c;->d:Lv/c;

    .line 1639
    .line 1640
    const/4 v9, 0x5

    .line 1641
    if-eqz v2, :cond_62

    .line 1642
    .line 1643
    if-eq v0, v13, :cond_63

    .line 1644
    .line 1645
    iget-object v3, v1, Lv/c;->g:Lu/i;

    .line 1646
    .line 1647
    iget-object v2, v2, Lv/c;->g:Lu/i;

    .line 1648
    .line 1649
    invoke-virtual {v1}, Lv/c;->c()I

    .line 1650
    .line 1651
    .line 1652
    move-result v1

    .line 1653
    invoke-virtual {v10, v3, v2, v1, v9}, Lu/e;->e(Lu/i;Lu/i;II)V

    .line 1654
    .line 1655
    .line 1656
    :cond_62
    const/16 v20, 0x5

    .line 1657
    .line 1658
    goto :goto_47

    .line 1659
    :cond_63
    if-eqz v14, :cond_62

    .line 1660
    .line 1661
    iget-object v3, v1, Lv/c;->g:Lu/i;

    .line 1662
    .line 1663
    iget-object v4, v2, Lv/c;->g:Lu/i;

    .line 1664
    .line 1665
    invoke-virtual {v1}, Lv/c;->c()I

    .line 1666
    .line 1667
    .line 1668
    move-result v5

    .line 1669
    iget-object v6, v12, Lv/c;->g:Lu/i;

    .line 1670
    .line 1671
    iget-object v7, v14, Lv/c;->g:Lu/i;

    .line 1672
    .line 1673
    invoke-virtual {v12}, Lv/c;->c()I

    .line 1674
    .line 1675
    .line 1676
    move-result v8

    .line 1677
    const/high16 v20, 0x3f000000    # 0.5f

    .line 1678
    .line 1679
    move-object/from16 v1, p1

    .line 1680
    .line 1681
    move-object v2, v3

    .line 1682
    move-object v3, v4

    .line 1683
    move v4, v5

    .line 1684
    move/from16 v5, v20

    .line 1685
    .line 1686
    const/16 v20, 0x5

    .line 1687
    .line 1688
    move/from16 v9, v20

    .line 1689
    .line 1690
    invoke-virtual/range {v1 .. v9}, Lu/e;->b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V

    .line 1691
    .line 1692
    .line 1693
    :goto_47
    if-eqz v14, :cond_64

    .line 1694
    .line 1695
    if-eq v0, v13, :cond_64

    .line 1696
    .line 1697
    iget-object v1, v12, Lv/c;->g:Lu/i;

    .line 1698
    .line 1699
    iget-object v2, v14, Lv/c;->g:Lu/i;

    .line 1700
    .line 1701
    invoke-virtual {v12}, Lv/c;->c()I

    .line 1702
    .line 1703
    .line 1704
    move-result v3

    .line 1705
    neg-int v3, v3

    .line 1706
    const/4 v4, 0x5

    .line 1707
    invoke-virtual {v10, v1, v2, v3, v4}, Lu/e;->e(Lu/i;Lu/i;II)V

    .line 1708
    .line 1709
    .line 1710
    :cond_64
    :goto_48
    if-nez v19, :cond_65

    .line 1711
    .line 1712
    if-eqz v17, :cond_6b

    .line 1713
    .line 1714
    :cond_65
    if-eqz v0, :cond_6b

    .line 1715
    .line 1716
    if-eq v0, v13, :cond_6b

    .line 1717
    .line 1718
    iget-object v1, v0, Lv/e;->G:[Lv/c;

    .line 1719
    .line 1720
    aget-object v2, v1, v15

    .line 1721
    .line 1722
    iget-object v3, v13, Lv/e;->G:[Lv/c;

    .line 1723
    .line 1724
    add-int/lit8 v4, v15, 0x1

    .line 1725
    .line 1726
    aget-object v3, v3, v4

    .line 1727
    .line 1728
    iget-object v5, v2, Lv/c;->d:Lv/c;

    .line 1729
    .line 1730
    if-eqz v5, :cond_66

    .line 1731
    .line 1732
    iget-object v5, v5, Lv/c;->g:Lu/i;

    .line 1733
    .line 1734
    goto :goto_49

    .line 1735
    :cond_66
    move-object/from16 v5, v16

    .line 1736
    .line 1737
    :goto_49
    iget-object v6, v3, Lv/c;->d:Lv/c;

    .line 1738
    .line 1739
    if-eqz v6, :cond_67

    .line 1740
    .line 1741
    iget-object v6, v6, Lv/c;->g:Lu/i;

    .line 1742
    .line 1743
    goto :goto_4a

    .line 1744
    :cond_67
    move-object/from16 v6, v16

    .line 1745
    .line 1746
    :goto_4a
    if-eq v11, v13, :cond_69

    .line 1747
    .line 1748
    iget-object v6, v11, Lv/e;->G:[Lv/c;

    .line 1749
    .line 1750
    aget-object v6, v6, v4

    .line 1751
    .line 1752
    iget-object v6, v6, Lv/c;->d:Lv/c;

    .line 1753
    .line 1754
    if-eqz v6, :cond_68

    .line 1755
    .line 1756
    iget-object v6, v6, Lv/c;->g:Lu/i;

    .line 1757
    .line 1758
    move-object/from16 v16, v6

    .line 1759
    .line 1760
    :cond_68
    move-object/from16 v6, v16

    .line 1761
    .line 1762
    :cond_69
    if-ne v0, v13, :cond_6a

    .line 1763
    .line 1764
    aget-object v3, v1, v4

    .line 1765
    .line 1766
    :cond_6a
    if-eqz v5, :cond_6b

    .line 1767
    .line 1768
    if-eqz v6, :cond_6b

    .line 1769
    .line 1770
    invoke-virtual {v2}, Lv/c;->c()I

    .line 1771
    .line 1772
    .line 1773
    move-result v0

    .line 1774
    iget-object v1, v13, Lv/e;->G:[Lv/c;

    .line 1775
    .line 1776
    aget-object v1, v1, v4

    .line 1777
    .line 1778
    invoke-virtual {v1}, Lv/c;->c()I

    .line 1779
    .line 1780
    .line 1781
    move-result v8

    .line 1782
    iget-object v2, v2, Lv/c;->g:Lu/i;

    .line 1783
    .line 1784
    iget-object v7, v3, Lv/c;->g:Lu/i;

    .line 1785
    .line 1786
    const/4 v9, 0x5

    .line 1787
    const/high16 v11, 0x3f000000    # 0.5f

    .line 1788
    .line 1789
    move-object/from16 v1, p1

    .line 1790
    .line 1791
    move-object v3, v5

    .line 1792
    move v4, v0

    .line 1793
    move v5, v11

    .line 1794
    invoke-virtual/range {v1 .. v9}, Lu/e;->b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V

    .line 1795
    .line 1796
    .line 1797
    :cond_6b
    add-int/lit8 v9, v23, 0x1

    .line 1798
    .line 1799
    move-object/from16 v0, p0

    .line 1800
    .line 1801
    move/from16 v13, v26

    .line 1802
    .line 1803
    move-object/from16 v14, v27

    .line 1804
    .line 1805
    goto/16 :goto_1

    .line 1806
    .line 1807
    :cond_6c
    return-void
.end method
