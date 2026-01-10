.class public final Ln0/h;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln0/i;

.field public c:Landroid/view/VelocityTracker;

.field public d:F

.field public e:I

.field public f:I

.field public g:I

.field public final h:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln0/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ln0/h;->e:I

    .line 6
    .line 7
    iput v0, p0, Ln0/h;->f:I

    .line 8
    .line 9
    iput v0, p0, Ln0/h;->g:I

    .line 10
    .line 11
    const v0, 0x7fffffff

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    filled-new-array {v0, v1}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Ln0/h;->h:[I

    .line 20
    .line 21
    iput-object p1, p0, Ln0/h;->a:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p2, p0, Ln0/h;->b:Ln0/i;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;I)V
    .locals 26

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
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    iget v7, v0, Ln0/h;->f:I

    .line 16
    .line 17
    iget-object v8, v0, Ln0/h;->h:[I

    .line 18
    .line 19
    const/16 v11, 0x22

    .line 20
    .line 21
    const/high16 v12, 0x400000

    .line 22
    .line 23
    if-ne v7, v5, :cond_1

    .line 24
    .line 25
    iget v7, v0, Ln0/h;->g:I

    .line 26
    .line 27
    if-ne v7, v6, :cond_1

    .line 28
    .line 29
    iget v7, v0, Ln0/h;->e:I

    .line 30
    .line 31
    if-eq v7, v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, 0x0

    .line 35
    const/4 v15, 0x0

    .line 36
    goto/16 :goto_a

    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v7, v0, Ln0/h;->a:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 41
    .line 42
    .line 43
    move-result-object v14

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .line 54
    const-string v4, "android"

    .line 55
    .line 56
    const-string v9, "dimen"

    .line 57
    .line 58
    const/4 v13, -0x1

    .line 59
    if-lt v10, v11, :cond_3

    .line 60
    .line 61
    sget-object v18, Ln0/w0;->a:Ljava/lang/reflect/Method;

    .line 62
    .line 63
    invoke-static {v14, v15, v2, v3}, Ln0/v0;->b(Landroid/view/ViewConfiguration;III)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    :cond_2
    :goto_1
    const/4 v15, 0x0

    .line 68
    goto :goto_4

    .line 69
    :cond_3
    sget-object v18, Ln0/w0;->a:Ljava/lang/reflect/Method;

    .line 70
    .line 71
    invoke-static {v15}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    if-eqz v15, :cond_6

    .line 76
    .line 77
    invoke-virtual {v15, v2, v3}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    .line 78
    .line 79
    .line 80
    move-result-object v15

    .line 81
    if-eqz v15, :cond_6

    .line 82
    .line 83
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    if-ne v3, v12, :cond_4

    .line 88
    .line 89
    const/16 v3, 0x1a

    .line 90
    .line 91
    if-ne v2, v3, :cond_4

    .line 92
    .line 93
    const-string v3, "config_viewMinRotaryEncoderFlingVelocity"

    .line 94
    .line 95
    invoke-virtual {v15, v3, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const/4 v3, -0x1

    .line 101
    :goto_2
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    if-eq v3, v13, :cond_5

    .line 105
    .line 106
    if-eqz v3, :cond_6

    .line 107
    .line 108
    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-gez v3, :cond_2

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {v14}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    goto :goto_1

    .line 120
    :cond_6
    :goto_3
    const v3, 0x7fffffff

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :goto_4
    aput v3, v8, v15

    .line 125
    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    if-lt v10, v11, :cond_7

    .line 135
    .line 136
    invoke-static {v14, v3, v2, v15}, Ln0/v0;->a(Landroid/view/ViewConfiguration;III)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    :goto_5
    const/4 v4, 0x1

    .line 141
    goto :goto_9

    .line 142
    :cond_7
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-eqz v3, :cond_8

    .line 147
    .line 148
    invoke-virtual {v3, v2, v15}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v3, :cond_8

    .line 153
    .line 154
    const/4 v3, 0x1

    .line 155
    goto :goto_6

    .line 156
    :cond_8
    const/4 v3, 0x0

    .line 157
    :goto_6
    const/high16 v10, -0x80000000

    .line 158
    .line 159
    if-nez v3, :cond_a

    .line 160
    .line 161
    :cond_9
    const/high16 v3, -0x80000000

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_a
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    if-ne v15, v12, :cond_b

    .line 169
    .line 170
    const/16 v7, 0x1a

    .line 171
    .line 172
    if-ne v2, v7, :cond_b

    .line 173
    .line 174
    const-string v7, "config_viewMaxRotaryEncoderFlingVelocity"

    .line 175
    .line 176
    invoke-virtual {v3, v7, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    goto :goto_7

    .line 181
    :cond_b
    const/4 v4, -0x1

    .line 182
    :goto_7
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    if-eq v4, v13, :cond_d

    .line 186
    .line 187
    if-eqz v4, :cond_9

    .line 188
    .line 189
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-gez v3, :cond_c

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_c
    move v10, v3

    .line 197
    :goto_8
    move v3, v10

    .line 198
    goto :goto_5

    .line 199
    :cond_d
    invoke-virtual {v14}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    goto :goto_5

    .line 204
    :goto_9
    aput v3, v8, v4

    .line 205
    .line 206
    iput v5, v0, Ln0/h;->f:I

    .line 207
    .line 208
    iput v6, v0, Ln0/h;->g:I

    .line 209
    .line 210
    iput v2, v0, Ln0/h;->e:I

    .line 211
    .line 212
    const/4 v3, 0x0

    .line 213
    const/4 v15, 0x1

    .line 214
    :goto_a
    aget v4, v8, v3

    .line 215
    .line 216
    const v3, 0x7fffffff

    .line 217
    .line 218
    .line 219
    if-ne v4, v3, :cond_f

    .line 220
    .line 221
    iget-object v1, v0, Ln0/h;->c:Landroid/view/VelocityTracker;

    .line 222
    .line 223
    if-eqz v1, :cond_e

    .line 224
    .line 225
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 226
    .line 227
    .line 228
    const/4 v1, 0x0

    .line 229
    iput-object v1, v0, Ln0/h;->c:Landroid/view/VelocityTracker;

    .line 230
    .line 231
    :cond_e
    return-void

    .line 232
    :cond_f
    iget-object v3, v0, Ln0/h;->c:Landroid/view/VelocityTracker;

    .line 233
    .line 234
    if-nez v3, :cond_10

    .line 235
    .line 236
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    iput-object v3, v0, Ln0/h;->c:Landroid/view/VelocityTracker;

    .line 241
    .line 242
    :cond_10
    iget-object v3, v0, Ln0/h;->c:Landroid/view/VelocityTracker;

    .line 243
    .line 244
    sget-object v4, Ln0/z;->a:Ljava/util/Map;

    .line 245
    .line 246
    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 247
    .line 248
    .line 249
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 250
    .line 251
    const/4 v5, 0x0

    .line 252
    if-lt v4, v11, :cond_11

    .line 253
    .line 254
    goto :goto_b

    .line 255
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-ne v4, v12, :cond_15

    .line 260
    .line 261
    sget-object v4, Ln0/z;->a:Ljava/util/Map;

    .line 262
    .line 263
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-nez v6, :cond_12

    .line 268
    .line 269
    new-instance v6, Ln0/a0;

    .line 270
    .line 271
    invoke-direct {v6}, Ln0/a0;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    :cond_12
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    check-cast v4, Ln0/a0;

    .line 282
    .line 283
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 287
    .line 288
    .line 289
    move-result-wide v6

    .line 290
    iget v9, v4, Ln0/a0;->d:I

    .line 291
    .line 292
    iget-object v10, v4, Ln0/a0;->b:[J

    .line 293
    .line 294
    if-eqz v9, :cond_13

    .line 295
    .line 296
    iget v9, v4, Ln0/a0;->e:I

    .line 297
    .line 298
    aget-wide v12, v10, v9

    .line 299
    .line 300
    sub-long v12, v6, v12

    .line 301
    .line 302
    const-wide/16 v18, 0x28

    .line 303
    .line 304
    cmp-long v9, v12, v18

    .line 305
    .line 306
    if-lez v9, :cond_13

    .line 307
    .line 308
    const/4 v9, 0x0

    .line 309
    iput v9, v4, Ln0/a0;->d:I

    .line 310
    .line 311
    iput v5, v4, Ln0/a0;->c:F

    .line 312
    .line 313
    :cond_13
    iget v9, v4, Ln0/a0;->e:I

    .line 314
    .line 315
    const/4 v12, 0x1

    .line 316
    add-int/2addr v9, v12

    .line 317
    const/16 v13, 0x14

    .line 318
    .line 319
    rem-int/2addr v9, v13

    .line 320
    iput v9, v4, Ln0/a0;->e:I

    .line 321
    .line 322
    iget v14, v4, Ln0/a0;->d:I

    .line 323
    .line 324
    if-eq v14, v13, :cond_14

    .line 325
    .line 326
    add-int/2addr v14, v12

    .line 327
    iput v14, v4, Ln0/a0;->d:I

    .line 328
    .line 329
    :cond_14
    const/16 v12, 0x1a

    .line 330
    .line 331
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    iget-object v12, v4, Ln0/a0;->a:[F

    .line 336
    .line 337
    aput v1, v12, v9

    .line 338
    .line 339
    iget v1, v4, Ln0/a0;->e:I

    .line 340
    .line 341
    aput-wide v6, v10, v1

    .line 342
    .line 343
    :cond_15
    :goto_b
    const/16 v1, 0x3e8

    .line 344
    .line 345
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 349
    .line 350
    .line 351
    sget-object v6, Ln0/z;->a:Ljava/util/Map;

    .line 352
    .line 353
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    check-cast v6, Ln0/a0;

    .line 358
    .line 359
    if-eqz v6, :cond_21

    .line 360
    .line 361
    iget v7, v6, Ln0/a0;->d:I

    .line 362
    .line 363
    const/4 v9, 0x2

    .line 364
    if-ge v7, v9, :cond_16

    .line 365
    .line 366
    :goto_c
    move-object v4, v6

    .line 367
    const/4 v7, 0x0

    .line 368
    goto/16 :goto_10

    .line 369
    .line 370
    :cond_16
    iget v10, v6, Ln0/a0;->e:I

    .line 371
    .line 372
    const/16 v12, 0x14

    .line 373
    .line 374
    add-int/lit8 v13, v10, 0x14

    .line 375
    .line 376
    const/4 v14, 0x1

    .line 377
    sub-int/2addr v7, v14

    .line 378
    sub-int/2addr v13, v7

    .line 379
    rem-int/2addr v13, v12

    .line 380
    iget-object v7, v6, Ln0/a0;->b:[J

    .line 381
    .line 382
    aget-wide v18, v7, v10

    .line 383
    .line 384
    :goto_d
    aget-wide v20, v7, v13

    .line 385
    .line 386
    sub-long v22, v18, v20

    .line 387
    .line 388
    const-wide/16 v24, 0x64

    .line 389
    .line 390
    cmp-long v10, v22, v24

    .line 391
    .line 392
    if-lez v10, :cond_17

    .line 393
    .line 394
    iget v10, v6, Ln0/a0;->d:I

    .line 395
    .line 396
    const/4 v12, 0x1

    .line 397
    sub-int/2addr v10, v12

    .line 398
    iput v10, v6, Ln0/a0;->d:I

    .line 399
    .line 400
    add-int/2addr v13, v12

    .line 401
    const/16 v10, 0x14

    .line 402
    .line 403
    rem-int/2addr v13, v10

    .line 404
    goto :goto_d

    .line 405
    :cond_17
    const/16 v10, 0x14

    .line 406
    .line 407
    const/4 v12, 0x1

    .line 408
    iget v14, v6, Ln0/a0;->d:I

    .line 409
    .line 410
    if-ge v14, v9, :cond_18

    .line 411
    .line 412
    goto :goto_c

    .line 413
    :cond_18
    iget-object v11, v6, Ln0/a0;->a:[F

    .line 414
    .line 415
    if-ne v14, v9, :cond_1a

    .line 416
    .line 417
    add-int/2addr v13, v12

    .line 418
    rem-int/2addr v13, v10

    .line 419
    aget-wide v9, v7, v13

    .line 420
    .line 421
    cmp-long v7, v20, v9

    .line 422
    .line 423
    if-nez v7, :cond_19

    .line 424
    .line 425
    goto :goto_c

    .line 426
    :cond_19
    aget v7, v11, v13

    .line 427
    .line 428
    sub-long v9, v9, v20

    .line 429
    .line 430
    long-to-float v9, v9

    .line 431
    div-float/2addr v7, v9

    .line 432
    move-object v4, v6

    .line 433
    goto/16 :goto_10

    .line 434
    .line 435
    :cond_1a
    const/4 v9, 0x0

    .line 436
    const/4 v10, 0x0

    .line 437
    const/4 v12, 0x0

    .line 438
    :goto_e
    iget v14, v6, Ln0/a0;->d:I

    .line 439
    .line 440
    const/16 v17, 0x1

    .line 441
    .line 442
    add-int/lit8 v14, v14, -0x1

    .line 443
    .line 444
    const/high16 v18, 0x40000000    # 2.0f

    .line 445
    .line 446
    const/high16 v19, 0x3f800000    # 1.0f

    .line 447
    .line 448
    const/high16 v20, -0x40800000    # -1.0f

    .line 449
    .line 450
    if-ge v9, v14, :cond_1e

    .line 451
    .line 452
    add-int v14, v9, v13

    .line 453
    .line 454
    const/16 v16, 0x14

    .line 455
    .line 456
    rem-int/lit8 v21, v14, 0x14

    .line 457
    .line 458
    aget-wide v21, v7, v21

    .line 459
    .line 460
    add-int/lit8 v14, v14, 0x1

    .line 461
    .line 462
    rem-int/lit8 v14, v14, 0x14

    .line 463
    .line 464
    aget-wide v23, v7, v14

    .line 465
    .line 466
    cmp-long v25, v23, v21

    .line 467
    .line 468
    if-nez v25, :cond_1b

    .line 469
    .line 470
    move-object v4, v6

    .line 471
    const/4 v1, 0x1

    .line 472
    goto :goto_f

    .line 473
    :cond_1b
    add-int/lit8 v10, v10, 0x1

    .line 474
    .line 475
    cmpg-float v23, v12, v5

    .line 476
    .line 477
    if-gez v23, :cond_1c

    .line 478
    .line 479
    const/high16 v19, -0x40800000    # -1.0f

    .line 480
    .line 481
    :cond_1c
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 482
    .line 483
    .line 484
    move-result v20

    .line 485
    mul-float v4, v20, v18

    .line 486
    .line 487
    float-to-double v1, v4

    .line 488
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 489
    .line 490
    .line 491
    move-result-wide v1

    .line 492
    double-to-float v1, v1

    .line 493
    mul-float v19, v19, v1

    .line 494
    .line 495
    aget v1, v11, v14

    .line 496
    .line 497
    aget-wide v24, v7, v14

    .line 498
    .line 499
    move-object v4, v6

    .line 500
    sub-long v5, v24, v21

    .line 501
    .line 502
    long-to-float v5, v5

    .line 503
    div-float/2addr v1, v5

    .line 504
    sub-float v5, v1, v19

    .line 505
    .line 506
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    mul-float v1, v1, v5

    .line 511
    .line 512
    add-float/2addr v12, v1

    .line 513
    const/4 v1, 0x1

    .line 514
    if-ne v10, v1, :cond_1d

    .line 515
    .line 516
    const/high16 v5, 0x3f000000    # 0.5f

    .line 517
    .line 518
    mul-float v12, v12, v5

    .line 519
    .line 520
    :cond_1d
    :goto_f
    add-int/2addr v9, v1

    .line 521
    move/from16 v2, p2

    .line 522
    .line 523
    move-object v6, v4

    .line 524
    const/16 v1, 0x3e8

    .line 525
    .line 526
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 527
    .line 528
    .line 529
    const/4 v5, 0x0

    .line 530
    goto :goto_e

    .line 531
    :cond_1e
    move-object v4, v6

    .line 532
    const/4 v1, 0x0

    .line 533
    cmpg-float v5, v12, v1

    .line 534
    .line 535
    if-gez v5, :cond_1f

    .line 536
    .line 537
    const/high16 v19, -0x40800000    # -1.0f

    .line 538
    .line 539
    :cond_1f
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    mul-float v1, v1, v18

    .line 544
    .line 545
    float-to-double v5, v1

    .line 546
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 547
    .line 548
    .line 549
    move-result-wide v5

    .line 550
    double-to-float v1, v5

    .line 551
    mul-float v7, v19, v1

    .line 552
    .line 553
    const/16 v1, 0x3e8

    .line 554
    .line 555
    :goto_10
    int-to-float v1, v1

    .line 556
    mul-float v7, v7, v1

    .line 557
    .line 558
    iput v7, v4, Ln0/a0;->c:F

    .line 559
    .line 560
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 561
    .line 562
    .line 563
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 564
    .line 565
    .line 566
    move-result v5

    .line 567
    neg-float v5, v5

    .line 568
    cmpg-float v5, v7, v5

    .line 569
    .line 570
    if-gez v5, :cond_20

    .line 571
    .line 572
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    neg-float v1, v1

    .line 577
    iput v1, v4, Ln0/a0;->c:F

    .line 578
    .line 579
    goto :goto_11

    .line 580
    :cond_20
    iget v5, v4, Ln0/a0;->c:F

    .line 581
    .line 582
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 583
    .line 584
    .line 585
    move-result v6

    .line 586
    cmpl-float v5, v5, v6

    .line 587
    .line 588
    if-lez v5, :cond_21

    .line 589
    .line 590
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    iput v1, v4, Ln0/a0;->c:F

    .line 595
    .line 596
    :cond_21
    :goto_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 597
    .line 598
    const/16 v4, 0x22

    .line 599
    .line 600
    if-lt v1, v4, :cond_22

    .line 601
    .line 602
    move/from16 v1, p2

    .line 603
    .line 604
    invoke-static {v3, v1}, Ln0/y;->a(Landroid/view/VelocityTracker;I)F

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    goto :goto_13

    .line 609
    :cond_22
    move/from16 v1, p2

    .line 610
    .line 611
    if-nez v1, :cond_23

    .line 612
    .line 613
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    goto :goto_13

    .line 618
    :cond_23
    const/4 v4, 0x1

    .line 619
    if-ne v1, v4, :cond_24

    .line 620
    .line 621
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    goto :goto_13

    .line 626
    :cond_24
    sget-object v4, Ln0/z;->a:Ljava/util/Map;

    .line 627
    .line 628
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    check-cast v3, Ln0/a0;

    .line 633
    .line 634
    if-eqz v3, :cond_26

    .line 635
    .line 636
    const/16 v4, 0x1a

    .line 637
    .line 638
    if-eq v1, v4, :cond_25

    .line 639
    .line 640
    goto :goto_12

    .line 641
    :cond_25
    iget v1, v3, Ln0/a0;->c:F

    .line 642
    .line 643
    goto :goto_13

    .line 644
    :cond_26
    :goto_12
    const/4 v1, 0x0

    .line 645
    :goto_13
    iget-object v3, v0, Ln0/h;->b:Ln0/i;

    .line 646
    .line 647
    invoke-interface {v3}, Ln0/i;->m()F

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    mul-float v4, v4, v1

    .line 652
    .line 653
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    if-nez v15, :cond_27

    .line 658
    .line 659
    iget v5, v0, Ln0/h;->d:F

    .line 660
    .line 661
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 662
    .line 663
    .line 664
    move-result v5

    .line 665
    cmpl-float v5, v1, v5

    .line 666
    .line 667
    const/4 v2, 0x0

    .line 668
    if-eqz v5, :cond_28

    .line 669
    .line 670
    cmpl-float v1, v1, v2

    .line 671
    .line 672
    if-eqz v1, :cond_28

    .line 673
    .line 674
    goto :goto_14

    .line 675
    :cond_27
    const/4 v2, 0x0

    .line 676
    :goto_14
    invoke-interface {v3}, Ln0/i;->o()V

    .line 677
    .line 678
    .line 679
    :cond_28
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    const/4 v5, 0x0

    .line 684
    aget v5, v8, v5

    .line 685
    .line 686
    int-to-float v5, v5

    .line 687
    cmpg-float v1, v1, v5

    .line 688
    .line 689
    if-gez v1, :cond_29

    .line 690
    .line 691
    return-void

    .line 692
    :cond_29
    const/4 v1, 0x1

    .line 693
    aget v1, v8, v1

    .line 694
    .line 695
    neg-int v5, v1

    .line 696
    int-to-float v5, v5

    .line 697
    int-to-float v1, v1

    .line 698
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    .line 699
    .line 700
    .line 701
    move-result v1

    .line 702
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    .line 703
    .line 704
    .line 705
    move-result v1

    .line 706
    invoke-interface {v3, v1}, Ln0/i;->g(F)Z

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    if-eqz v3, :cond_2a

    .line 711
    .line 712
    move v5, v1

    .line 713
    goto :goto_15

    .line 714
    :cond_2a
    const/4 v5, 0x0

    .line 715
    :goto_15
    iput v5, v0, Ln0/h;->d:F

    .line 716
    .line 717
    return-void
.end method
