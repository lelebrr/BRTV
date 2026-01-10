.class public final La1/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La1/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, La1/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La1/a;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, La1/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lw0/e;

    .line 11
    .line 12
    iget-object v1, v1, Lw0/e;->b:Ls4/h;

    .line 13
    .line 14
    invoke-virtual {v1}, Ls4/h;->run()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v1, v0, La1/a;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, La1/b;

    .line 21
    .line 22
    iget-object v1, v1, La1/b;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, La0/b;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iget-object v1, v1, La0/b;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, La1/c;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    :goto_0
    iget-object v8, v1, La1/c;->b:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-ge v7, v9, :cond_e

    .line 53
    .line 54
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, La1/f;

    .line 59
    .line 60
    if-nez v8, :cond_1

    .line 61
    .line 62
    :cond_0
    :goto_1
    move/from16 v29, v7

    .line 63
    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_1
    iget-object v9, v1, La1/c;->a:Lp/l;

    .line 67
    .line 68
    invoke-virtual {v9, v8}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    check-cast v11, Ljava/lang/Long;

    .line 73
    .line 74
    if-nez v11, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v11

    .line 81
    cmp-long v13, v11, v4

    .line 82
    .line 83
    if-gez v13, :cond_0

    .line 84
    .line 85
    invoke-virtual {v9, v8}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :goto_2
    iget-wide v11, v8, La1/f;->g:J

    .line 89
    .line 90
    const-wide/16 v13, 0x0

    .line 91
    .line 92
    cmp-long v9, v11, v13

    .line 93
    .line 94
    if-nez v9, :cond_3

    .line 95
    .line 96
    iput-wide v2, v8, La1/f;->g:J

    .line 97
    .line 98
    iget v9, v8, La1/f;->b:F

    .line 99
    .line 100
    invoke-virtual {v8, v9}, La1/f;->a(F)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    sub-long v20, v2, v11

    .line 105
    .line 106
    iput-wide v2, v8, La1/f;->g:J

    .line 107
    .line 108
    iget-boolean v9, v8, La1/f;->m:Z

    .line 109
    .line 110
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .line 111
    .line 112
    .line 113
    const/4 v15, 0x0

    .line 114
    if-eqz v9, :cond_5

    .line 115
    .line 116
    iget v9, v8, La1/f;->l:F

    .line 117
    .line 118
    cmpl-float v16, v9, v12

    .line 119
    .line 120
    if-eqz v16, :cond_4

    .line 121
    .line 122
    iget-object v13, v8, La1/f;->k:La1/g;

    .line 123
    .line 124
    float-to-double v10, v9

    .line 125
    iput-wide v10, v13, La1/g;->i:D

    .line 126
    .line 127
    iput v12, v8, La1/f;->l:F

    .line 128
    .line 129
    :cond_4
    iget-object v9, v8, La1/f;->k:La1/g;

    .line 130
    .line 131
    iget-wide v9, v9, La1/g;->i:D

    .line 132
    .line 133
    double-to-float v9, v9

    .line 134
    iput v9, v8, La1/f;->b:F

    .line 135
    .line 136
    iput v15, v8, La1/f;->a:F

    .line 137
    .line 138
    iput-boolean v6, v8, La1/f;->m:Z

    .line 139
    .line 140
    move/from16 v29, v7

    .line 141
    .line 142
    :goto_3
    const/4 v14, 0x1

    .line 143
    goto/16 :goto_5

    .line 144
    .line 145
    :cond_5
    iget v9, v8, La1/f;->l:F

    .line 146
    .line 147
    cmpl-float v9, v9, v12

    .line 148
    .line 149
    if-eqz v9, :cond_6

    .line 150
    .line 151
    iget-object v9, v8, La1/f;->k:La1/g;

    .line 152
    .line 153
    iget-wide v10, v9, La1/g;->i:D

    .line 154
    .line 155
    iget v10, v8, La1/f;->b:F

    .line 156
    .line 157
    float-to-double v10, v10

    .line 158
    iget v13, v8, La1/f;->a:F

    .line 159
    .line 160
    float-to-double v14, v13

    .line 161
    const-wide/16 v17, 0x2

    .line 162
    .line 163
    div-long v17, v20, v17

    .line 164
    .line 165
    move-object/from16 v22, v9

    .line 166
    .line 167
    move-wide/from16 v23, v10

    .line 168
    .line 169
    move-wide/from16 v25, v14

    .line 170
    .line 171
    move-wide/from16 v27, v17

    .line 172
    .line 173
    invoke-virtual/range {v22 .. v28}, La1/g;->a(DDJ)La1/e;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    iget-object v10, v8, La1/f;->k:La1/g;

    .line 178
    .line 179
    iget v11, v8, La1/f;->l:F

    .line 180
    .line 181
    float-to-double v13, v11

    .line 182
    iput-wide v13, v10, La1/g;->i:D

    .line 183
    .line 184
    iput v12, v8, La1/f;->l:F

    .line 185
    .line 186
    iget v11, v9, La1/e;->a:F

    .line 187
    .line 188
    float-to-double v13, v11

    .line 189
    iget v9, v9, La1/e;->b:F

    .line 190
    .line 191
    move/from16 v29, v7

    .line 192
    .line 193
    float-to-double v6, v9

    .line 194
    move-object/from16 v22, v10

    .line 195
    .line 196
    move-wide/from16 v23, v13

    .line 197
    .line 198
    move-wide/from16 v25, v6

    .line 199
    .line 200
    move-wide/from16 v27, v17

    .line 201
    .line 202
    invoke-virtual/range {v22 .. v28}, La1/g;->a(DDJ)La1/e;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    iget v7, v6, La1/e;->a:F

    .line 207
    .line 208
    iput v7, v8, La1/f;->b:F

    .line 209
    .line 210
    iget v6, v6, La1/e;->b:F

    .line 211
    .line 212
    iput v6, v8, La1/f;->a:F

    .line 213
    .line 214
    const/4 v13, 0x0

    .line 215
    goto :goto_4

    .line 216
    :cond_6
    move/from16 v29, v7

    .line 217
    .line 218
    iget-object v15, v8, La1/f;->k:La1/g;

    .line 219
    .line 220
    iget v6, v8, La1/f;->b:F

    .line 221
    .line 222
    float-to-double v6, v6

    .line 223
    iget v9, v8, La1/f;->a:F

    .line 224
    .line 225
    float-to-double v9, v9

    .line 226
    const/4 v13, 0x0

    .line 227
    move-wide/from16 v16, v6

    .line 228
    .line 229
    move-wide/from16 v18, v9

    .line 230
    .line 231
    invoke-virtual/range {v15 .. v21}, La1/g;->a(DDJ)La1/e;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    iget v7, v6, La1/e;->a:F

    .line 236
    .line 237
    iput v7, v8, La1/f;->b:F

    .line 238
    .line 239
    iget v6, v6, La1/e;->b:F

    .line 240
    .line 241
    iput v6, v8, La1/f;->a:F

    .line 242
    .line 243
    :goto_4
    iget v6, v8, La1/f;->b:F

    .line 244
    .line 245
    const v7, -0x800001

    .line 246
    .line 247
    .line 248
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    iput v6, v8, La1/f;->b:F

    .line 253
    .line 254
    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    iput v6, v8, La1/f;->b:F

    .line 259
    .line 260
    iget v7, v8, La1/f;->a:F

    .line 261
    .line 262
    iget-object v9, v8, La1/f;->k:La1/g;

    .line 263
    .line 264
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    float-to-double v14, v7

    .line 272
    iget-wide v11, v9, La1/g;->e:D

    .line 273
    .line 274
    cmpg-double v16, v14, v11

    .line 275
    .line 276
    if-gez v16, :cond_7

    .line 277
    .line 278
    iget-wide v11, v9, La1/g;->i:D

    .line 279
    .line 280
    double-to-float v11, v11

    .line 281
    sub-float/2addr v6, v11

    .line 282
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    float-to-double v11, v6

    .line 287
    iget-wide v14, v9, La1/g;->d:D

    .line 288
    .line 289
    cmpg-double v6, v11, v14

    .line 290
    .line 291
    if-gez v6, :cond_7

    .line 292
    .line 293
    iget-object v6, v8, La1/f;->k:La1/g;

    .line 294
    .line 295
    iget-wide v11, v6, La1/g;->i:D

    .line 296
    .line 297
    double-to-float v6, v11

    .line 298
    iput v6, v8, La1/f;->b:F

    .line 299
    .line 300
    iput v13, v8, La1/f;->a:F

    .line 301
    .line 302
    goto/16 :goto_3

    .line 303
    .line 304
    :cond_7
    const/4 v14, 0x0

    .line 305
    :goto_5
    iget v6, v8, La1/f;->b:F

    .line 306
    .line 307
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 308
    .line 309
    .line 310
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    iput v6, v8, La1/f;->b:F

    .line 315
    .line 316
    const v7, -0x800001

    .line 317
    .line 318
    .line 319
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    iput v6, v8, La1/f;->b:F

    .line 324
    .line 325
    invoke-virtual {v8, v6}, La1/f;->a(F)V

    .line 326
    .line 327
    .line 328
    if-eqz v14, :cond_d

    .line 329
    .line 330
    const/4 v6, 0x0

    .line 331
    iput-boolean v6, v8, La1/f;->f:Z

    .line 332
    .line 333
    sget-object v6, La1/c;->f:Ljava/lang/ThreadLocal;

    .line 334
    .line 335
    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    if-nez v7, :cond_8

    .line 340
    .line 341
    new-instance v7, La1/c;

    .line 342
    .line 343
    invoke-direct {v7}, La1/c;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    :cond_8
    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    check-cast v6, La1/c;

    .line 354
    .line 355
    iget-object v7, v6, La1/c;->a:Lp/l;

    .line 356
    .line 357
    invoke-virtual {v7, v8}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    iget-object v7, v6, La1/c;->b:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 363
    .line 364
    .line 365
    move-result v9

    .line 366
    if-ltz v9, :cond_9

    .line 367
    .line 368
    const/4 v10, 0x0

    .line 369
    invoke-virtual {v7, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    const/4 v7, 0x1

    .line 373
    iput-boolean v7, v6, La1/c;->e:Z

    .line 374
    .line 375
    :cond_9
    const-wide/16 v6, 0x0

    .line 376
    .line 377
    iput-wide v6, v8, La1/f;->g:J

    .line 378
    .line 379
    const/4 v6, 0x0

    .line 380
    iput-boolean v6, v8, La1/f;->c:Z

    .line 381
    .line 382
    const/4 v10, 0x0

    .line 383
    :goto_6
    iget-object v6, v8, La1/f;->i:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 386
    .line 387
    .line 388
    move-result v7

    .line 389
    if-ge v10, v7, :cond_b

    .line 390
    .line 391
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    if-nez v7, :cond_a

    .line 396
    .line 397
    add-int/lit8 v10, v10, 0x1

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_a
    invoke-static {v10, v6}, La/e;->k(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    throw v1

    .line 405
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    const/4 v8, 0x1

    .line 410
    sub-int/2addr v7, v8

    .line 411
    :goto_7
    if-ltz v7, :cond_d

    .line 412
    .line 413
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    if-nez v8, :cond_c

    .line 418
    .line 419
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    :cond_c
    add-int/lit8 v7, v7, -0x1

    .line 423
    .line 424
    goto :goto_7

    .line 425
    :cond_d
    :goto_8
    add-int/lit8 v7, v29, 0x1

    .line 426
    .line 427
    const/4 v6, 0x0

    .line 428
    goto/16 :goto_0

    .line 429
    .line 430
    :cond_e
    iget-boolean v2, v1, La1/c;->e:Z

    .line 431
    .line 432
    if-eqz v2, :cond_11

    .line 433
    .line 434
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    const/4 v3, 0x1

    .line 439
    sub-int/2addr v2, v3

    .line 440
    :goto_9
    if-ltz v2, :cond_10

    .line 441
    .line 442
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    if-nez v3, :cond_f

    .line 447
    .line 448
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    :cond_f
    add-int/lit8 v2, v2, -0x1

    .line 452
    .line 453
    goto :goto_9

    .line 454
    :cond_10
    const/4 v2, 0x0

    .line 455
    iput-boolean v2, v1, La1/c;->e:Z

    .line 456
    .line 457
    :cond_11
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-lez v2, :cond_13

    .line 462
    .line 463
    iget-object v2, v1, La1/c;->d:La1/b;

    .line 464
    .line 465
    if-nez v2, :cond_12

    .line 466
    .line 467
    new-instance v2, La1/b;

    .line 468
    .line 469
    iget-object v3, v1, La1/c;->c:La0/b;

    .line 470
    .line 471
    invoke-direct {v2, v3}, La1/b;-><init>(La0/b;)V

    .line 472
    .line 473
    .line 474
    iput-object v2, v1, La1/c;->d:La1/b;

    .line 475
    .line 476
    :cond_12
    iget-object v1, v1, La1/c;->d:La1/b;

    .line 477
    .line 478
    iget-object v2, v1, La1/b;->d:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v2, La1/a;

    .line 481
    .line 482
    iget-object v1, v1, La1/b;->c:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v1, Landroid/view/Choreographer;

    .line 485
    .line 486
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 487
    .line 488
    .line 489
    :cond_13
    return-void

    .line 490
    nop

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
