.class public final Lcom/google/android/gms/internal/cast/p7;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/google/android/gms/internal/cast/v7;


# static fields
.field public static final g:[I

.field public static final h:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:Lcom/google/android/gms/internal/cast/r6;

.field public final d:[I

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/cast/k2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/gms/internal/cast/p7;->g:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/cast/d8;->j()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/cast/p7;->h:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;Lcom/google/android/gms/internal/cast/r6;[IILcom/google/android/gms/internal/cast/k2;Lcom/google/android/gms/internal/cast/k2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/p7;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/p7;->d:[I

    .line 9
    .line 10
    iput p5, p0, Lcom/google/android/gms/internal/cast/p7;->e:I

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/cast/p7;->f:Lcom/google/android/gms/internal/cast/k2;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/p7;->c:Lcom/google/android/gms/internal/cast/r6;

    .line 15
    .line 16
    return-void
.end method

.method public static i(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/cast/c7;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/cast/c7;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/c7;->g()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static k(Lcom/google/android/gms/internal/cast/u7;Lcom/google/android/gms/internal/cast/k2;Lcom/google/android/gms/internal/cast/k2;)Lcom/google/android/gms/internal/cast/p7;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/cast/u7;

    .line 4
    .line 5
    if-eqz v1, :cond_37

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/u7;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const v6, 0xd800

    .line 21
    .line 22
    .line 23
    if-lt v4, v6, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-lt v4, v6, :cond_1

    .line 33
    .line 34
    move v4, v7

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v7, 0x1

    .line 37
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 38
    .line 39
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-lt v7, v6, :cond_3

    .line 44
    .line 45
    and-int/lit16 v7, v7, 0x1fff

    .line 46
    .line 47
    const/16 v9, 0xd

    .line 48
    .line 49
    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-lt v4, v6, :cond_2

    .line 56
    .line 57
    and-int/lit16 v4, v4, 0x1fff

    .line 58
    .line 59
    shl-int/2addr v4, v9

    .line 60
    or-int/2addr v7, v4

    .line 61
    add-int/lit8 v9, v9, 0xd

    .line 62
    .line 63
    move v4, v10

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    shl-int/2addr v4, v9

    .line 66
    or-int/2addr v7, v4

    .line 67
    move v4, v10

    .line 68
    :cond_3
    if-nez v7, :cond_4

    .line 69
    .line 70
    sget-object v7, Lcom/google/android/gms/internal/cast/p7;->g:[I

    .line 71
    .line 72
    move-object v13, v7

    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v10, 0x0

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    goto/16 :goto_a

    .line 79
    .line 80
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-lt v4, v6, :cond_6

    .line 87
    .line 88
    and-int/lit16 v4, v4, 0x1fff

    .line 89
    .line 90
    const/16 v9, 0xd

    .line 91
    .line 92
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 93
    .line 94
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-lt v7, v6, :cond_5

    .line 99
    .line 100
    and-int/lit16 v7, v7, 0x1fff

    .line 101
    .line 102
    shl-int/2addr v7, v9

    .line 103
    or-int/2addr v4, v7

    .line 104
    add-int/lit8 v9, v9, 0xd

    .line 105
    .line 106
    move v7, v10

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    shl-int/2addr v7, v9

    .line 109
    or-int/2addr v4, v7

    .line 110
    move v7, v10

    .line 111
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 112
    .line 113
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-lt v7, v6, :cond_8

    .line 118
    .line 119
    and-int/lit16 v7, v7, 0x1fff

    .line 120
    .line 121
    const/16 v10, 0xd

    .line 122
    .line 123
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 124
    .line 125
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-lt v9, v6, :cond_7

    .line 130
    .line 131
    and-int/lit16 v9, v9, 0x1fff

    .line 132
    .line 133
    shl-int/2addr v9, v10

    .line 134
    or-int/2addr v7, v9

    .line 135
    add-int/lit8 v10, v10, 0xd

    .line 136
    .line 137
    move v9, v11

    .line 138
    goto :goto_3

    .line 139
    :cond_7
    shl-int/2addr v9, v10

    .line 140
    or-int/2addr v7, v9

    .line 141
    move v9, v11

    .line 142
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 143
    .line 144
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-lt v9, v6, :cond_a

    .line 149
    .line 150
    :goto_4
    add-int/lit8 v9, v10, 0x1

    .line 151
    .line 152
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-lt v10, v6, :cond_9

    .line 157
    .line 158
    move v10, v9

    .line 159
    goto :goto_4

    .line 160
    :cond_9
    move v10, v9

    .line 161
    :cond_a
    add-int/lit8 v9, v10, 0x1

    .line 162
    .line 163
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-lt v10, v6, :cond_c

    .line 168
    .line 169
    :goto_5
    add-int/lit8 v10, v9, 0x1

    .line 170
    .line 171
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    if-lt v9, v6, :cond_b

    .line 176
    .line 177
    move v9, v10

    .line 178
    goto :goto_5

    .line 179
    :cond_b
    move v9, v10

    .line 180
    :cond_c
    add-int/lit8 v10, v9, 0x1

    .line 181
    .line 182
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-lt v9, v6, :cond_e

    .line 187
    .line 188
    and-int/lit16 v9, v9, 0x1fff

    .line 189
    .line 190
    const/16 v11, 0xd

    .line 191
    .line 192
    :goto_6
    add-int/lit8 v12, v10, 0x1

    .line 193
    .line 194
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-lt v10, v6, :cond_d

    .line 199
    .line 200
    and-int/lit16 v10, v10, 0x1fff

    .line 201
    .line 202
    shl-int/2addr v10, v11

    .line 203
    or-int/2addr v9, v10

    .line 204
    add-int/lit8 v11, v11, 0xd

    .line 205
    .line 206
    move v10, v12

    .line 207
    goto :goto_6

    .line 208
    :cond_d
    shl-int/2addr v10, v11

    .line 209
    or-int/2addr v9, v10

    .line 210
    move v10, v12

    .line 211
    :cond_e
    add-int/lit8 v11, v10, 0x1

    .line 212
    .line 213
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    if-lt v10, v6, :cond_10

    .line 218
    .line 219
    and-int/lit16 v10, v10, 0x1fff

    .line 220
    .line 221
    const/16 v12, 0xd

    .line 222
    .line 223
    :goto_7
    add-int/lit8 v13, v11, 0x1

    .line 224
    .line 225
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    if-lt v11, v6, :cond_f

    .line 230
    .line 231
    and-int/lit16 v11, v11, 0x1fff

    .line 232
    .line 233
    shl-int/2addr v11, v12

    .line 234
    or-int/2addr v10, v11

    .line 235
    add-int/lit8 v12, v12, 0xd

    .line 236
    .line 237
    move v11, v13

    .line 238
    goto :goto_7

    .line 239
    :cond_f
    shl-int/2addr v11, v12

    .line 240
    or-int/2addr v10, v11

    .line 241
    move v11, v13

    .line 242
    :cond_10
    add-int/lit8 v12, v11, 0x1

    .line 243
    .line 244
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 245
    .line 246
    .line 247
    move-result v11

    .line 248
    if-lt v11, v6, :cond_12

    .line 249
    .line 250
    and-int/lit16 v11, v11, 0x1fff

    .line 251
    .line 252
    const/16 v13, 0xd

    .line 253
    .line 254
    :goto_8
    add-int/lit8 v14, v12, 0x1

    .line 255
    .line 256
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 257
    .line 258
    .line 259
    move-result v12

    .line 260
    if-lt v12, v6, :cond_11

    .line 261
    .line 262
    and-int/lit16 v12, v12, 0x1fff

    .line 263
    .line 264
    shl-int/2addr v12, v13

    .line 265
    or-int/2addr v11, v12

    .line 266
    add-int/lit8 v13, v13, 0xd

    .line 267
    .line 268
    move v12, v14

    .line 269
    goto :goto_8

    .line 270
    :cond_11
    shl-int/2addr v12, v13

    .line 271
    or-int/2addr v11, v12

    .line 272
    move v12, v14

    .line 273
    :cond_12
    add-int/lit8 v13, v12, 0x1

    .line 274
    .line 275
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    if-lt v12, v6, :cond_14

    .line 280
    .line 281
    and-int/lit16 v12, v12, 0x1fff

    .line 282
    .line 283
    const/16 v14, 0xd

    .line 284
    .line 285
    :goto_9
    add-int/lit8 v15, v13, 0x1

    .line 286
    .line 287
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    if-lt v13, v6, :cond_13

    .line 292
    .line 293
    and-int/lit16 v13, v13, 0x1fff

    .line 294
    .line 295
    shl-int/2addr v13, v14

    .line 296
    or-int/2addr v12, v13

    .line 297
    add-int/lit8 v14, v14, 0xd

    .line 298
    .line 299
    move v13, v15

    .line 300
    goto :goto_9

    .line 301
    :cond_13
    shl-int/2addr v13, v14

    .line 302
    or-int/2addr v12, v13

    .line 303
    move v13, v15

    .line 304
    :cond_14
    add-int v14, v12, v10

    .line 305
    .line 306
    add-int/2addr v14, v11

    .line 307
    add-int v11, v4, v4

    .line 308
    .line 309
    add-int/2addr v11, v7

    .line 310
    new-array v7, v14, [I

    .line 311
    .line 312
    move v14, v12

    .line 313
    move-object/from16 v28, v7

    .line 314
    .line 315
    move v7, v4

    .line 316
    move v4, v13

    .line 317
    move-object/from16 v13, v28

    .line 318
    .line 319
    :goto_a
    sget-object v12, Lcom/google/android/gms/internal/cast/p7;->h:Lsun/misc/Unsafe;

    .line 320
    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/u7;->d()[Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v15

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/u7;->a()Lcom/google/android/gms/internal/cast/r6;

    .line 326
    .line 327
    .line 328
    move-result-object v16

    .line 329
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    add-int/2addr v10, v14

    .line 334
    add-int v8, v9, v9

    .line 335
    .line 336
    mul-int/lit8 v9, v9, 0x3

    .line 337
    .line 338
    new-array v9, v9, [I

    .line 339
    .line 340
    new-array v8, v8, [Ljava/lang/Object;

    .line 341
    .line 342
    move/from16 v19, v14

    .line 343
    .line 344
    const/16 v17, 0x0

    .line 345
    .line 346
    const/16 v18, 0x0

    .line 347
    .line 348
    :goto_b
    if-ge v4, v2, :cond_36

    .line 349
    .line 350
    add-int/lit8 v20, v4, 0x1

    .line 351
    .line 352
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-lt v4, v6, :cond_16

    .line 357
    .line 358
    and-int/lit16 v4, v4, 0x1fff

    .line 359
    .line 360
    move/from16 v5, v20

    .line 361
    .line 362
    const/16 v20, 0xd

    .line 363
    .line 364
    :goto_c
    add-int/lit8 v22, v5, 0x1

    .line 365
    .line 366
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-lt v5, v6, :cond_15

    .line 371
    .line 372
    and-int/lit16 v5, v5, 0x1fff

    .line 373
    .line 374
    shl-int v5, v5, v20

    .line 375
    .line 376
    or-int/2addr v4, v5

    .line 377
    add-int/lit8 v20, v20, 0xd

    .line 378
    .line 379
    move/from16 v5, v22

    .line 380
    .line 381
    goto :goto_c

    .line 382
    :cond_15
    shl-int v5, v5, v20

    .line 383
    .line 384
    or-int/2addr v4, v5

    .line 385
    move/from16 v5, v22

    .line 386
    .line 387
    goto :goto_d

    .line 388
    :cond_16
    move/from16 v5, v20

    .line 389
    .line 390
    :goto_d
    add-int/lit8 v20, v5, 0x1

    .line 391
    .line 392
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-lt v5, v6, :cond_18

    .line 397
    .line 398
    and-int/lit16 v5, v5, 0x1fff

    .line 399
    .line 400
    move/from16 v6, v20

    .line 401
    .line 402
    const/16 v20, 0xd

    .line 403
    .line 404
    :goto_e
    add-int/lit8 v23, v6, 0x1

    .line 405
    .line 406
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 407
    .line 408
    .line 409
    move-result v6

    .line 410
    const v0, 0xd800

    .line 411
    .line 412
    .line 413
    if-lt v6, v0, :cond_17

    .line 414
    .line 415
    and-int/lit16 v0, v6, 0x1fff

    .line 416
    .line 417
    shl-int v0, v0, v20

    .line 418
    .line 419
    or-int/2addr v5, v0

    .line 420
    add-int/lit8 v20, v20, 0xd

    .line 421
    .line 422
    move-object/from16 v0, p0

    .line 423
    .line 424
    move/from16 v6, v23

    .line 425
    .line 426
    goto :goto_e

    .line 427
    :cond_17
    shl-int v0, v6, v20

    .line 428
    .line 429
    or-int/2addr v5, v0

    .line 430
    move/from16 v0, v23

    .line 431
    .line 432
    goto :goto_f

    .line 433
    :cond_18
    move/from16 v0, v20

    .line 434
    .line 435
    :goto_f
    and-int/lit16 v6, v5, 0x400

    .line 436
    .line 437
    if-eqz v6, :cond_19

    .line 438
    .line 439
    add-int/lit8 v6, v17, 0x1

    .line 440
    .line 441
    aput v18, v13, v17

    .line 442
    .line 443
    move/from16 v17, v6

    .line 444
    .line 445
    :cond_19
    and-int/lit16 v6, v5, 0xff

    .line 446
    .line 447
    move/from16 v20, v2

    .line 448
    .line 449
    and-int/lit16 v2, v5, 0x800

    .line 450
    .line 451
    move/from16 v23, v14

    .line 452
    .line 453
    const/16 v14, 0x33

    .line 454
    .line 455
    if-lt v6, v14, :cond_23

    .line 456
    .line 457
    add-int/lit8 v14, v0, 0x1

    .line 458
    .line 459
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    move/from16 v24, v14

    .line 464
    .line 465
    const v14, 0xd800

    .line 466
    .line 467
    .line 468
    if-lt v0, v14, :cond_1b

    .line 469
    .line 470
    and-int/lit16 v0, v0, 0x1fff

    .line 471
    .line 472
    move/from16 v14, v24

    .line 473
    .line 474
    const/16 v24, 0xd

    .line 475
    .line 476
    :goto_10
    add-int/lit8 v26, v14, 0x1

    .line 477
    .line 478
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 479
    .line 480
    .line 481
    move-result v14

    .line 482
    move/from16 v27, v4

    .line 483
    .line 484
    const v4, 0xd800

    .line 485
    .line 486
    .line 487
    if-lt v14, v4, :cond_1a

    .line 488
    .line 489
    and-int/lit16 v4, v14, 0x1fff

    .line 490
    .line 491
    shl-int v4, v4, v24

    .line 492
    .line 493
    or-int/2addr v0, v4

    .line 494
    add-int/lit8 v24, v24, 0xd

    .line 495
    .line 496
    move/from16 v14, v26

    .line 497
    .line 498
    move/from16 v4, v27

    .line 499
    .line 500
    goto :goto_10

    .line 501
    :cond_1a
    shl-int v4, v14, v24

    .line 502
    .line 503
    or-int/2addr v0, v4

    .line 504
    move/from16 v14, v26

    .line 505
    .line 506
    goto :goto_11

    .line 507
    :cond_1b
    move/from16 v27, v4

    .line 508
    .line 509
    move/from16 v14, v24

    .line 510
    .line 511
    :goto_11
    add-int/lit8 v4, v6, -0x33

    .line 512
    .line 513
    move/from16 v24, v14

    .line 514
    .line 515
    const/16 v14, 0x9

    .line 516
    .line 517
    if-eq v4, v14, :cond_1c

    .line 518
    .line 519
    const/16 v14, 0x11

    .line 520
    .line 521
    if-ne v4, v14, :cond_1d

    .line 522
    .line 523
    :cond_1c
    const/4 v14, 0x1

    .line 524
    goto :goto_14

    .line 525
    :cond_1d
    const/16 v14, 0xc

    .line 526
    .line 527
    if-ne v4, v14, :cond_20

    .line 528
    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/u7;->b()I

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    const/4 v14, 0x1

    .line 534
    if-eq v4, v14, :cond_1f

    .line 535
    .line 536
    if-eqz v2, :cond_1e

    .line 537
    .line 538
    goto :goto_12

    .line 539
    :cond_1e
    const/4 v2, 0x0

    .line 540
    goto :goto_15

    .line 541
    :cond_1f
    :goto_12
    add-int/lit8 v4, v11, 0x1

    .line 542
    .line 543
    div-int/lit8 v21, v18, 0x3

    .line 544
    .line 545
    add-int v21, v21, v21

    .line 546
    .line 547
    add-int/lit8 v21, v21, 0x1

    .line 548
    .line 549
    aget-object v11, v15, v11

    .line 550
    .line 551
    aput-object v11, v8, v21

    .line 552
    .line 553
    :goto_13
    move v11, v4

    .line 554
    goto :goto_15

    .line 555
    :goto_14
    add-int/lit8 v4, v11, 0x1

    .line 556
    .line 557
    div-int/lit8 v21, v18, 0x3

    .line 558
    .line 559
    add-int v21, v21, v21

    .line 560
    .line 561
    add-int/lit8 v25, v21, 0x1

    .line 562
    .line 563
    aget-object v11, v15, v11

    .line 564
    .line 565
    aput-object v11, v8, v25

    .line 566
    .line 567
    goto :goto_13

    .line 568
    :cond_20
    :goto_15
    add-int/2addr v0, v0

    .line 569
    aget-object v4, v15, v0

    .line 570
    .line 571
    instance-of v14, v4, Ljava/lang/reflect/Field;

    .line 572
    .line 573
    if-eqz v14, :cond_21

    .line 574
    .line 575
    check-cast v4, Ljava/lang/reflect/Field;

    .line 576
    .line 577
    :goto_16
    move-object v14, v9

    .line 578
    move/from16 v26, v10

    .line 579
    .line 580
    goto :goto_17

    .line 581
    :cond_21
    check-cast v4, Ljava/lang/String;

    .line 582
    .line 583
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/cast/p7;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    aput-object v4, v15, v0

    .line 588
    .line 589
    goto :goto_16

    .line 590
    :goto_17
    invoke-virtual {v12, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 591
    .line 592
    .line 593
    move-result-wide v9

    .line 594
    long-to-int v4, v9

    .line 595
    add-int/lit8 v0, v0, 0x1

    .line 596
    .line 597
    aget-object v9, v15, v0

    .line 598
    .line 599
    instance-of v10, v9, Ljava/lang/reflect/Field;

    .line 600
    .line 601
    if-eqz v10, :cond_22

    .line 602
    .line 603
    check-cast v9, Ljava/lang/reflect/Field;

    .line 604
    .line 605
    goto :goto_18

    .line 606
    :cond_22
    check-cast v9, Ljava/lang/String;

    .line 607
    .line 608
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/cast/p7;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 609
    .line 610
    .line 611
    move-result-object v9

    .line 612
    aput-object v9, v15, v0

    .line 613
    .line 614
    :goto_18
    invoke-virtual {v12, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 615
    .line 616
    .line 617
    move-result-wide v9

    .line 618
    long-to-int v0, v9

    .line 619
    move-object/from16 v25, v14

    .line 620
    .line 621
    move-object/from16 v21, v15

    .line 622
    .line 623
    move/from16 v22, v24

    .line 624
    .line 625
    move/from16 v10, v26

    .line 626
    .line 627
    const v9, 0xd800

    .line 628
    .line 629
    .line 630
    move v14, v11

    .line 631
    move v11, v0

    .line 632
    const/4 v0, 0x0

    .line 633
    goto/16 :goto_25

    .line 634
    .line 635
    :cond_23
    move/from16 v27, v4

    .line 636
    .line 637
    move-object v14, v9

    .line 638
    move/from16 v26, v10

    .line 639
    .line 640
    add-int/lit8 v4, v11, 0x1

    .line 641
    .line 642
    aget-object v9, v15, v11

    .line 643
    .line 644
    check-cast v9, Ljava/lang/String;

    .line 645
    .line 646
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/cast/p7;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 647
    .line 648
    .line 649
    move-result-object v9

    .line 650
    const/16 v10, 0x9

    .line 651
    .line 652
    if-eq v6, v10, :cond_24

    .line 653
    .line 654
    const/16 v10, 0x11

    .line 655
    .line 656
    if-ne v6, v10, :cond_25

    .line 657
    .line 658
    :cond_24
    move-object/from16 v25, v14

    .line 659
    .line 660
    const/4 v14, 0x1

    .line 661
    goto/16 :goto_1e

    .line 662
    .line 663
    :cond_25
    const/16 v10, 0x1b

    .line 664
    .line 665
    if-eq v6, v10, :cond_2d

    .line 666
    .line 667
    const/16 v10, 0x31

    .line 668
    .line 669
    if-ne v6, v10, :cond_26

    .line 670
    .line 671
    add-int/lit8 v11, v11, 0x2

    .line 672
    .line 673
    move-object/from16 v25, v14

    .line 674
    .line 675
    const/4 v14, 0x1

    .line 676
    goto :goto_1d

    .line 677
    :cond_26
    const/16 v10, 0xc

    .line 678
    .line 679
    if-eq v6, v10, :cond_2a

    .line 680
    .line 681
    const/16 v10, 0x1e

    .line 682
    .line 683
    if-eq v6, v10, :cond_2a

    .line 684
    .line 685
    const/16 v10, 0x2c

    .line 686
    .line 687
    if-ne v6, v10, :cond_27

    .line 688
    .line 689
    goto :goto_1a

    .line 690
    :cond_27
    const/16 v10, 0x32

    .line 691
    .line 692
    if-ne v6, v10, :cond_28

    .line 693
    .line 694
    add-int/lit8 v10, v11, 0x2

    .line 695
    .line 696
    add-int/lit8 v25, v19, 0x1

    .line 697
    .line 698
    aput v18, v13, v19

    .line 699
    .line 700
    div-int/lit8 v19, v18, 0x3

    .line 701
    .line 702
    aget-object v4, v15, v4

    .line 703
    .line 704
    add-int v19, v19, v19

    .line 705
    .line 706
    aput-object v4, v8, v19

    .line 707
    .line 708
    if-eqz v2, :cond_29

    .line 709
    .line 710
    add-int/lit8 v19, v19, 0x1

    .line 711
    .line 712
    add-int/lit8 v4, v11, 0x3

    .line 713
    .line 714
    aget-object v10, v15, v10

    .line 715
    .line 716
    aput-object v10, v8, v19

    .line 717
    .line 718
    move/from16 v19, v25

    .line 719
    .line 720
    :cond_28
    :goto_19
    move-object/from16 v25, v14

    .line 721
    .line 722
    const/4 v14, 0x1

    .line 723
    goto :goto_1f

    .line 724
    :cond_29
    move v4, v10

    .line 725
    move/from16 v19, v25

    .line 726
    .line 727
    const/4 v2, 0x0

    .line 728
    goto :goto_19

    .line 729
    :cond_2a
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/u7;->b()I

    .line 730
    .line 731
    .line 732
    move-result v10

    .line 733
    move-object/from16 v25, v14

    .line 734
    .line 735
    const/4 v14, 0x1

    .line 736
    if-eq v10, v14, :cond_2c

    .line 737
    .line 738
    if-eqz v2, :cond_2b

    .line 739
    .line 740
    goto :goto_1b

    .line 741
    :cond_2b
    const/4 v2, 0x0

    .line 742
    goto :goto_1f

    .line 743
    :cond_2c
    :goto_1b
    add-int/lit8 v11, v11, 0x2

    .line 744
    .line 745
    div-int/lit8 v10, v18, 0x3

    .line 746
    .line 747
    add-int/2addr v10, v10

    .line 748
    add-int/2addr v10, v14

    .line 749
    aget-object v4, v15, v4

    .line 750
    .line 751
    aput-object v4, v8, v10

    .line 752
    .line 753
    :goto_1c
    move v4, v11

    .line 754
    goto :goto_1f

    .line 755
    :cond_2d
    move-object/from16 v25, v14

    .line 756
    .line 757
    const/4 v14, 0x1

    .line 758
    add-int/lit8 v11, v11, 0x2

    .line 759
    .line 760
    :goto_1d
    div-int/lit8 v10, v18, 0x3

    .line 761
    .line 762
    add-int/2addr v10, v10

    .line 763
    add-int/2addr v10, v14

    .line 764
    aget-object v4, v15, v4

    .line 765
    .line 766
    aput-object v4, v8, v10

    .line 767
    .line 768
    goto :goto_1c

    .line 769
    :goto_1e
    div-int/lit8 v10, v18, 0x3

    .line 770
    .line 771
    add-int/2addr v10, v10

    .line 772
    add-int/2addr v10, v14

    .line 773
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 774
    .line 775
    .line 776
    move-result-object v11

    .line 777
    aput-object v11, v8, v10

    .line 778
    .line 779
    :goto_1f
    invoke-virtual {v12, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 780
    .line 781
    .line 782
    move-result-wide v9

    .line 783
    long-to-int v10, v9

    .line 784
    and-int/lit16 v9, v5, 0x1000

    .line 785
    .line 786
    const v11, 0xfffff

    .line 787
    .line 788
    .line 789
    if-eqz v9, :cond_31

    .line 790
    .line 791
    const/16 v9, 0x11

    .line 792
    .line 793
    if-gt v6, v9, :cond_31

    .line 794
    .line 795
    add-int/lit8 v9, v0, 0x1

    .line 796
    .line 797
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 798
    .line 799
    .line 800
    move-result v0

    .line 801
    const v11, 0xd800

    .line 802
    .line 803
    .line 804
    if-lt v0, v11, :cond_2f

    .line 805
    .line 806
    and-int/lit16 v0, v0, 0x1fff

    .line 807
    .line 808
    const/16 v21, 0xd

    .line 809
    .line 810
    :goto_20
    add-int/lit8 v22, v9, 0x1

    .line 811
    .line 812
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 813
    .line 814
    .line 815
    move-result v9

    .line 816
    if-lt v9, v11, :cond_2e

    .line 817
    .line 818
    and-int/lit16 v9, v9, 0x1fff

    .line 819
    .line 820
    shl-int v9, v9, v21

    .line 821
    .line 822
    or-int/2addr v0, v9

    .line 823
    add-int/lit8 v21, v21, 0xd

    .line 824
    .line 825
    move/from16 v9, v22

    .line 826
    .line 827
    goto :goto_20

    .line 828
    :cond_2e
    shl-int v9, v9, v21

    .line 829
    .line 830
    or-int/2addr v0, v9

    .line 831
    goto :goto_21

    .line 832
    :cond_2f
    move/from16 v22, v9

    .line 833
    .line 834
    :goto_21
    add-int v9, v7, v7

    .line 835
    .line 836
    div-int/lit8 v21, v0, 0x20

    .line 837
    .line 838
    add-int v21, v21, v9

    .line 839
    .line 840
    aget-object v9, v15, v21

    .line 841
    .line 842
    instance-of v11, v9, Ljava/lang/reflect/Field;

    .line 843
    .line 844
    if-eqz v11, :cond_30

    .line 845
    .line 846
    check-cast v9, Ljava/lang/reflect/Field;

    .line 847
    .line 848
    :goto_22
    move-object/from16 v21, v15

    .line 849
    .line 850
    goto :goto_23

    .line 851
    :cond_30
    check-cast v9, Ljava/lang/String;

    .line 852
    .line 853
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/cast/p7;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 854
    .line 855
    .line 856
    move-result-object v9

    .line 857
    aput-object v9, v15, v21

    .line 858
    .line 859
    goto :goto_22

    .line 860
    :goto_23
    invoke-virtual {v12, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 861
    .line 862
    .line 863
    move-result-wide v14

    .line 864
    long-to-int v9, v14

    .line 865
    rem-int/lit8 v0, v0, 0x20

    .line 866
    .line 867
    move v11, v9

    .line 868
    const v9, 0xd800

    .line 869
    .line 870
    .line 871
    goto :goto_24

    .line 872
    :cond_31
    move-object/from16 v21, v15

    .line 873
    .line 874
    const v9, 0xd800

    .line 875
    .line 876
    .line 877
    move/from16 v22, v0

    .line 878
    .line 879
    const/4 v0, 0x0

    .line 880
    :goto_24
    const/16 v14, 0x12

    .line 881
    .line 882
    if-lt v6, v14, :cond_32

    .line 883
    .line 884
    const/16 v14, 0x31

    .line 885
    .line 886
    if-gt v6, v14, :cond_32

    .line 887
    .line 888
    add-int/lit8 v14, v26, 0x1

    .line 889
    .line 890
    aput v10, v13, v26

    .line 891
    .line 892
    move/from16 v28, v14

    .line 893
    .line 894
    move v14, v4

    .line 895
    move v4, v10

    .line 896
    move/from16 v10, v28

    .line 897
    .line 898
    goto :goto_25

    .line 899
    :cond_32
    move v14, v4

    .line 900
    move v4, v10

    .line 901
    move/from16 v10, v26

    .line 902
    .line 903
    :goto_25
    add-int/lit8 v15, v18, 0x1

    .line 904
    .line 905
    aput v27, v25, v18

    .line 906
    .line 907
    add-int/lit8 v24, v18, 0x2

    .line 908
    .line 909
    and-int/lit16 v9, v5, 0x200

    .line 910
    .line 911
    if-eqz v9, :cond_33

    .line 912
    .line 913
    const/high16 v9, 0x20000000

    .line 914
    .line 915
    goto :goto_26

    .line 916
    :cond_33
    const/4 v9, 0x0

    .line 917
    :goto_26
    and-int/lit16 v5, v5, 0x100

    .line 918
    .line 919
    if-eqz v5, :cond_34

    .line 920
    .line 921
    const/high16 v5, 0x10000000

    .line 922
    .line 923
    goto :goto_27

    .line 924
    :cond_34
    const/4 v5, 0x0

    .line 925
    :goto_27
    if-eqz v2, :cond_35

    .line 926
    .line 927
    const/high16 v2, -0x80000000

    .line 928
    .line 929
    goto :goto_28

    .line 930
    :cond_35
    const/4 v2, 0x0

    .line 931
    :goto_28
    shl-int/lit8 v6, v6, 0x14

    .line 932
    .line 933
    or-int/2addr v5, v9

    .line 934
    or-int/2addr v2, v5

    .line 935
    or-int/2addr v2, v6

    .line 936
    or-int/2addr v2, v4

    .line 937
    aput v2, v25, v15

    .line 938
    .line 939
    add-int/lit8 v18, v18, 0x3

    .line 940
    .line 941
    shl-int/lit8 v0, v0, 0x14

    .line 942
    .line 943
    or-int/2addr v0, v11

    .line 944
    aput v0, v25, v24

    .line 945
    .line 946
    move-object/from16 v0, p0

    .line 947
    .line 948
    move v11, v14

    .line 949
    move/from16 v2, v20

    .line 950
    .line 951
    move-object/from16 v15, v21

    .line 952
    .line 953
    move/from16 v4, v22

    .line 954
    .line 955
    move/from16 v14, v23

    .line 956
    .line 957
    move-object/from16 v9, v25

    .line 958
    .line 959
    const v6, 0xd800

    .line 960
    .line 961
    .line 962
    goto/16 :goto_b

    .line 963
    .line 964
    :cond_36
    move-object/from16 v25, v9

    .line 965
    .line 966
    move/from16 v23, v14

    .line 967
    .line 968
    new-instance v0, Lcom/google/android/gms/internal/cast/p7;

    .line 969
    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/u7;->a()Lcom/google/android/gms/internal/cast/r6;

    .line 971
    .line 972
    .line 973
    move-result-object v12

    .line 974
    move-object/from16 v1, v25

    .line 975
    .line 976
    move-object v9, v0

    .line 977
    move-object v10, v1

    .line 978
    move-object v11, v8

    .line 979
    move-object/from16 v15, p1

    .line 980
    .line 981
    move-object/from16 v16, p2

    .line 982
    .line 983
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/cast/p7;-><init>([I[Ljava/lang/Object;Lcom/google/android/gms/internal/cast/r6;[IILcom/google/android/gms/internal/cast/k2;Lcom/google/android/gms/internal/cast/k2;)V

    .line 984
    .line 985
    .line 986
    return-object v0

    .line 987
    :cond_37
    invoke-static/range {p0 .. p0}, La/e;->B(Lcom/google/android/gms/internal/cast/u7;)V

    .line 988
    .line 989
    .line 990
    const/4 v0, 0x0

    .line 991
    throw v0
.end method

.method public static l(JLjava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static m(I)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x14

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method public static o(JLjava/lang/Object;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    return-object v4

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v4, "Field "

    .line 44
    .line 45
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, " for "

    .line 52
    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p0, " not found. Known fields are "

    .line 60
    .line 61
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v2
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/l7;)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    sget-object v10, Lcom/google/android/gms/internal/cast/p7;->h:Lsun/misc/Unsafe;

    .line 9
    .line 10
    const v11, 0xfffff

    .line 11
    .line 12
    .line 13
    const/4 v12, 0x0

    .line 14
    const v0, 0xfffff

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v13, 0x0

    .line 19
    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 20
    .line 21
    array-length v3, v2

    .line 22
    if-ge v13, v3, :cond_7

    .line 23
    .line 24
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/cast/p7;->n(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/p7;->m(I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    aget v14, v2, v13

    .line 33
    .line 34
    const/16 v5, 0x11

    .line 35
    .line 36
    if-gt v4, v5, :cond_2

    .line 37
    .line 38
    add-int/lit8 v5, v13, 0x2

    .line 39
    .line 40
    aget v5, v2, v5

    .line 41
    .line 42
    and-int v15, v5, v11

    .line 43
    .line 44
    if-eq v15, v0, :cond_1

    .line 45
    .line 46
    if-ne v15, v11, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    int-to-long v0, v15

    .line 51
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    move v1, v0

    .line 56
    :goto_1
    move v0, v15

    .line 57
    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    .line 58
    .line 59
    shl-int v5, v9, v5

    .line 60
    .line 61
    move v15, v0

    .line 62
    move/from16 v16, v1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move v15, v0

    .line 66
    move/from16 v16, v1

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    :goto_2
    and-int v0, v3, v11

    .line 70
    .line 71
    int-to-long v0, v0

    .line 72
    packed-switch v4, :pswitch_data_0

    .line 73
    .line 74
    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :pswitch_0
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->A(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/v7;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_5

    .line 95
    .line 96
    :pswitch_1
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->o(IJ)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :pswitch_2
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->j(II)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_5

    .line 125
    .line 126
    :pswitch_3
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_6

    .line 131
    .line 132
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v0

    .line 136
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->F(IJ)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_5

    .line 140
    .line 141
    :pswitch_4
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->E(II)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :pswitch_5
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_6

    .line 161
    .line 162
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->w(II)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_5

    .line 170
    .line 171
    :pswitch_6
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_6

    .line 176
    .line 177
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->q(II)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_5

    .line 185
    .line 186
    :pswitch_7
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_6

    .line 191
    .line 192
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Lcom/google/android/gms/internal/cast/w6;

    .line 197
    .line 198
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->t(ILcom/google/android/gms/internal/cast/w6;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_5

    .line 202
    .line 203
    :pswitch_8
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_6

    .line 208
    .line 209
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->D(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/v7;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_5

    .line 221
    .line 222
    :pswitch_9
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_6

    .line 227
    .line 228
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    instance-of v1, v0, Ljava/lang/String;

    .line 233
    .line 234
    if-eqz v1, :cond_3

    .line 235
    .line 236
    check-cast v0, Ljava/lang/String;

    .line 237
    .line 238
    iget-object v1, v8, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v1, Lcom/google/android/gms/internal/cast/x6;

    .line 241
    .line 242
    invoke-virtual {v1, v14, v0}, Lcom/google/android/gms/internal/cast/x6;->B(ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_5

    .line 246
    .line 247
    :cond_3
    check-cast v0, Lcom/google/android/gms/internal/cast/w6;

    .line 248
    .line 249
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->t(ILcom/google/android/gms/internal/cast/w6;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_5

    .line 253
    .line 254
    :pswitch_a
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_6

    .line 259
    .line 260
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Ljava/lang/Boolean;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->s(IZ)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_5

    .line 274
    .line 275
    :pswitch_b
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_6

    .line 280
    .line 281
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->x(II)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_5

    .line 289
    .line 290
    :pswitch_c
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_6

    .line 295
    .line 296
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 297
    .line 298
    .line 299
    move-result-wide v0

    .line 300
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->y(IJ)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_5

    .line 304
    .line 305
    :pswitch_d
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_6

    .line 310
    .line 311
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->B(II)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_5

    .line 319
    .line 320
    :pswitch_e
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_6

    .line 325
    .line 326
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 327
    .line 328
    .line 329
    move-result-wide v0

    .line 330
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->r(IJ)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_5

    .line 334
    .line 335
    :pswitch_f
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_6

    .line 340
    .line 341
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 342
    .line 343
    .line 344
    move-result-wide v0

    .line 345
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->C(IJ)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_5

    .line 349
    .line 350
    :pswitch_10
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_6

    .line 355
    .line 356
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    check-cast v0, Ljava/lang/Float;

    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->z(IF)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_5

    .line 370
    .line 371
    :pswitch_11
    invoke-virtual {v6, v14, v13, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_6

    .line 376
    .line 377
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    check-cast v0, Ljava/lang/Double;

    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 384
    .line 385
    .line 386
    move-result-wide v0

    .line 387
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->v(ID)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_5

    .line 391
    .line 392
    :pswitch_12
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    if-nez v0, :cond_4

    .line 397
    .line 398
    goto/16 :goto_5

    .line 399
    .line 400
    :cond_4
    div-int/lit8 v13, v13, 0x3

    .line 401
    .line 402
    iget-object v0, v6, Lcom/google/android/gms/internal/cast/p7;->b:[Ljava/lang/Object;

    .line 403
    .line 404
    add-int/2addr v13, v13

    .line 405
    aget-object v0, v0, v13

    .line 406
    .line 407
    invoke-static {v0}, Lea/q;->n(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    const/4 v0, 0x0

    .line 411
    throw v0

    .line 412
    :pswitch_13
    aget v2, v2, v13

    .line 413
    .line 414
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Ljava/util/List;

    .line 419
    .line 420
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    sget-object v3, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 425
    .line 426
    if-eqz v0, :cond_6

    .line 427
    .line 428
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    if-nez v3, :cond_6

    .line 433
    .line 434
    const/4 v3, 0x0

    .line 435
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-ge v3, v4, :cond_6

    .line 440
    .line 441
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    invoke-virtual {v8, v2, v4, v1}, Lcom/google/android/gms/internal/cast/l7;->A(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/v7;)V

    .line 446
    .line 447
    .line 448
    add-int/2addr v3, v9

    .line 449
    goto :goto_3

    .line 450
    :pswitch_14
    aget v2, v2, v13

    .line 451
    .line 452
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    check-cast v0, Ljava/util/List;

    .line 457
    .line 458
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->a(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_5

    .line 462
    .line 463
    :pswitch_15
    aget v2, v2, v13

    .line 464
    .line 465
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    check-cast v0, Ljava/util/List;

    .line 470
    .line 471
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->B(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_5

    .line 475
    .line 476
    :pswitch_16
    aget v2, v2, v13

    .line 477
    .line 478
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    check-cast v0, Ljava/util/List;

    .line 483
    .line 484
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->A(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_5

    .line 488
    .line 489
    :pswitch_17
    aget v2, v2, v13

    .line 490
    .line 491
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    check-cast v0, Ljava/util/List;

    .line 496
    .line 497
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->z(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_5

    .line 501
    .line 502
    :pswitch_18
    aget v2, v2, v13

    .line 503
    .line 504
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    check-cast v0, Ljava/util/List;

    .line 509
    .line 510
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->t(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_5

    .line 514
    .line 515
    :pswitch_19
    aget v2, v2, v13

    .line 516
    .line 517
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Ljava/util/List;

    .line 522
    .line 523
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->b(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 524
    .line 525
    .line 526
    goto/16 :goto_5

    .line 527
    .line 528
    :pswitch_1a
    aget v2, v2, v13

    .line 529
    .line 530
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    check-cast v0, Ljava/util/List;

    .line 535
    .line 536
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->r(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_5

    .line 540
    .line 541
    :pswitch_1b
    aget v2, v2, v13

    .line 542
    .line 543
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    check-cast v0, Ljava/util/List;

    .line 548
    .line 549
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->u(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_5

    .line 553
    .line 554
    :pswitch_1c
    aget v2, v2, v13

    .line 555
    .line 556
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    check-cast v0, Ljava/util/List;

    .line 561
    .line 562
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->v(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 563
    .line 564
    .line 565
    goto/16 :goto_5

    .line 566
    .line 567
    :pswitch_1d
    aget v2, v2, v13

    .line 568
    .line 569
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    check-cast v0, Ljava/util/List;

    .line 574
    .line 575
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->x(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_5

    .line 579
    .line 580
    :pswitch_1e
    aget v2, v2, v13

    .line 581
    .line 582
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    check-cast v0, Ljava/util/List;

    .line 587
    .line 588
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->c(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 589
    .line 590
    .line 591
    goto/16 :goto_5

    .line 592
    .line 593
    :pswitch_1f
    aget v2, v2, v13

    .line 594
    .line 595
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    check-cast v0, Ljava/util/List;

    .line 600
    .line 601
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->y(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 602
    .line 603
    .line 604
    goto/16 :goto_5

    .line 605
    .line 606
    :pswitch_20
    aget v2, v2, v13

    .line 607
    .line 608
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    check-cast v0, Ljava/util/List;

    .line 613
    .line 614
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->w(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_5

    .line 618
    .line 619
    :pswitch_21
    aget v2, v2, v13

    .line 620
    .line 621
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    check-cast v0, Ljava/util/List;

    .line 626
    .line 627
    invoke-static {v2, v0, v8, v9}, Lcom/google/android/gms/internal/cast/w7;->s(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_5

    .line 631
    .line 632
    :pswitch_22
    aget v2, v2, v13

    .line 633
    .line 634
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    check-cast v0, Ljava/util/List;

    .line 639
    .line 640
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->a(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_5

    .line 644
    .line 645
    :pswitch_23
    aget v2, v2, v13

    .line 646
    .line 647
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    check-cast v0, Ljava/util/List;

    .line 652
    .line 653
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->B(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 654
    .line 655
    .line 656
    goto/16 :goto_5

    .line 657
    .line 658
    :pswitch_24
    aget v2, v2, v13

    .line 659
    .line 660
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    check-cast v0, Ljava/util/List;

    .line 665
    .line 666
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->A(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 667
    .line 668
    .line 669
    goto/16 :goto_5

    .line 670
    .line 671
    :pswitch_25
    aget v2, v2, v13

    .line 672
    .line 673
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    check-cast v0, Ljava/util/List;

    .line 678
    .line 679
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->z(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_5

    .line 683
    .line 684
    :pswitch_26
    aget v2, v2, v13

    .line 685
    .line 686
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    check-cast v0, Ljava/util/List;

    .line 691
    .line 692
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->t(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 693
    .line 694
    .line 695
    goto/16 :goto_5

    .line 696
    .line 697
    :pswitch_27
    aget v2, v2, v13

    .line 698
    .line 699
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    check-cast v0, Ljava/util/List;

    .line 704
    .line 705
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->b(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_5

    .line 709
    .line 710
    :pswitch_28
    aget v2, v2, v13

    .line 711
    .line 712
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    check-cast v0, Ljava/util/List;

    .line 717
    .line 718
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 719
    .line 720
    if-eqz v0, :cond_6

    .line 721
    .line 722
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    if-nez v1, :cond_6

    .line 727
    .line 728
    invoke-virtual {v8, v2, v0}, Lcom/google/android/gms/internal/cast/l7;->u(ILjava/util/List;)V

    .line 729
    .line 730
    .line 731
    goto/16 :goto_5

    .line 732
    .line 733
    :pswitch_29
    aget v2, v2, v13

    .line 734
    .line 735
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    check-cast v0, Ljava/util/List;

    .line 740
    .line 741
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    sget-object v3, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 746
    .line 747
    if-eqz v0, :cond_6

    .line 748
    .line 749
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 750
    .line 751
    .line 752
    move-result v3

    .line 753
    if-nez v3, :cond_6

    .line 754
    .line 755
    const/4 v3, 0x0

    .line 756
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 757
    .line 758
    .line 759
    move-result v4

    .line 760
    if-ge v3, v4, :cond_6

    .line 761
    .line 762
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v4

    .line 766
    invoke-virtual {v8, v2, v4, v1}, Lcom/google/android/gms/internal/cast/l7;->D(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/v7;)V

    .line 767
    .line 768
    .line 769
    add-int/2addr v3, v9

    .line 770
    goto :goto_4

    .line 771
    :pswitch_2a
    aget v2, v2, v13

    .line 772
    .line 773
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    check-cast v0, Ljava/util/List;

    .line 778
    .line 779
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 780
    .line 781
    if-eqz v0, :cond_6

    .line 782
    .line 783
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 784
    .line 785
    .line 786
    move-result v1

    .line 787
    if-nez v1, :cond_6

    .line 788
    .line 789
    invoke-virtual {v8, v2, v0}, Lcom/google/android/gms/internal/cast/l7;->p(ILjava/util/List;)V

    .line 790
    .line 791
    .line 792
    goto/16 :goto_5

    .line 793
    .line 794
    :pswitch_2b
    aget v2, v2, v13

    .line 795
    .line 796
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    check-cast v0, Ljava/util/List;

    .line 801
    .line 802
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->r(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_5

    .line 806
    .line 807
    :pswitch_2c
    aget v2, v2, v13

    .line 808
    .line 809
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    check-cast v0, Ljava/util/List;

    .line 814
    .line 815
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->u(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 816
    .line 817
    .line 818
    goto/16 :goto_5

    .line 819
    .line 820
    :pswitch_2d
    aget v2, v2, v13

    .line 821
    .line 822
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    check-cast v0, Ljava/util/List;

    .line 827
    .line 828
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->v(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_5

    .line 832
    .line 833
    :pswitch_2e
    aget v2, v2, v13

    .line 834
    .line 835
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    check-cast v0, Ljava/util/List;

    .line 840
    .line 841
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->x(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 842
    .line 843
    .line 844
    goto/16 :goto_5

    .line 845
    .line 846
    :pswitch_2f
    aget v2, v2, v13

    .line 847
    .line 848
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    check-cast v0, Ljava/util/List;

    .line 853
    .line 854
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->c(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 855
    .line 856
    .line 857
    goto/16 :goto_5

    .line 858
    .line 859
    :pswitch_30
    aget v2, v2, v13

    .line 860
    .line 861
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    check-cast v0, Ljava/util/List;

    .line 866
    .line 867
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->y(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 868
    .line 869
    .line 870
    goto/16 :goto_5

    .line 871
    .line 872
    :pswitch_31
    aget v2, v2, v13

    .line 873
    .line 874
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    check-cast v0, Ljava/util/List;

    .line 879
    .line 880
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->w(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 881
    .line 882
    .line 883
    goto/16 :goto_5

    .line 884
    .line 885
    :pswitch_32
    aget v2, v2, v13

    .line 886
    .line 887
    invoke-virtual {v10, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    check-cast v0, Ljava/util/List;

    .line 892
    .line 893
    invoke-static {v2, v0, v8, v12}, Lcom/google/android/gms/internal/cast/w7;->s(ILjava/util/List;Lcom/google/android/gms/internal/cast/l7;Z)V

    .line 894
    .line 895
    .line 896
    goto/16 :goto_5

    .line 897
    .line 898
    :pswitch_33
    move-wide v3, v0

    .line 899
    move-object/from16 v0, p0

    .line 900
    .line 901
    move-object/from16 v1, p1

    .line 902
    .line 903
    move v2, v13

    .line 904
    move-wide v11, v3

    .line 905
    move v3, v15

    .line 906
    move/from16 v4, v16

    .line 907
    .line 908
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 909
    .line 910
    .line 911
    move-result v0

    .line 912
    if-eqz v0, :cond_6

    .line 913
    .line 914
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->A(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/v7;)V

    .line 923
    .line 924
    .line 925
    goto/16 :goto_5

    .line 926
    .line 927
    :pswitch_34
    move-wide v11, v0

    .line 928
    move-object/from16 v0, p0

    .line 929
    .line 930
    move-object/from16 v1, p1

    .line 931
    .line 932
    move v2, v13

    .line 933
    move v3, v15

    .line 934
    move/from16 v4, v16

    .line 935
    .line 936
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 937
    .line 938
    .line 939
    move-result v0

    .line 940
    if-eqz v0, :cond_6

    .line 941
    .line 942
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 943
    .line 944
    .line 945
    move-result-wide v0

    .line 946
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->o(IJ)V

    .line 947
    .line 948
    .line 949
    goto/16 :goto_5

    .line 950
    .line 951
    :pswitch_35
    move-wide v11, v0

    .line 952
    move-object/from16 v0, p0

    .line 953
    .line 954
    move-object/from16 v1, p1

    .line 955
    .line 956
    move v2, v13

    .line 957
    move v3, v15

    .line 958
    move/from16 v4, v16

    .line 959
    .line 960
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 961
    .line 962
    .line 963
    move-result v0

    .line 964
    if-eqz v0, :cond_6

    .line 965
    .line 966
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->j(II)V

    .line 971
    .line 972
    .line 973
    goto/16 :goto_5

    .line 974
    .line 975
    :pswitch_36
    move-wide v11, v0

    .line 976
    move-object/from16 v0, p0

    .line 977
    .line 978
    move-object/from16 v1, p1

    .line 979
    .line 980
    move v2, v13

    .line 981
    move v3, v15

    .line 982
    move/from16 v4, v16

    .line 983
    .line 984
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 985
    .line 986
    .line 987
    move-result v0

    .line 988
    if-eqz v0, :cond_6

    .line 989
    .line 990
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 991
    .line 992
    .line 993
    move-result-wide v0

    .line 994
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->F(IJ)V

    .line 995
    .line 996
    .line 997
    goto/16 :goto_5

    .line 998
    .line 999
    :pswitch_37
    move-wide v11, v0

    .line 1000
    move-object/from16 v0, p0

    .line 1001
    .line 1002
    move-object/from16 v1, p1

    .line 1003
    .line 1004
    move v2, v13

    .line 1005
    move v3, v15

    .line 1006
    move/from16 v4, v16

    .line 1007
    .line 1008
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v0

    .line 1012
    if-eqz v0, :cond_6

    .line 1013
    .line 1014
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1015
    .line 1016
    .line 1017
    move-result v0

    .line 1018
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->E(II)V

    .line 1019
    .line 1020
    .line 1021
    goto/16 :goto_5

    .line 1022
    .line 1023
    :pswitch_38
    move-wide v11, v0

    .line 1024
    move-object/from16 v0, p0

    .line 1025
    .line 1026
    move-object/from16 v1, p1

    .line 1027
    .line 1028
    move v2, v13

    .line 1029
    move v3, v15

    .line 1030
    move/from16 v4, v16

    .line 1031
    .line 1032
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1033
    .line 1034
    .line 1035
    move-result v0

    .line 1036
    if-eqz v0, :cond_6

    .line 1037
    .line 1038
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->w(II)V

    .line 1043
    .line 1044
    .line 1045
    goto/16 :goto_5

    .line 1046
    .line 1047
    :pswitch_39
    move-wide v11, v0

    .line 1048
    move-object/from16 v0, p0

    .line 1049
    .line 1050
    move-object/from16 v1, p1

    .line 1051
    .line 1052
    move v2, v13

    .line 1053
    move v3, v15

    .line 1054
    move/from16 v4, v16

    .line 1055
    .line 1056
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1057
    .line 1058
    .line 1059
    move-result v0

    .line 1060
    if-eqz v0, :cond_6

    .line 1061
    .line 1062
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1063
    .line 1064
    .line 1065
    move-result v0

    .line 1066
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->q(II)V

    .line 1067
    .line 1068
    .line 1069
    goto/16 :goto_5

    .line 1070
    .line 1071
    :pswitch_3a
    move-wide v11, v0

    .line 1072
    move-object/from16 v0, p0

    .line 1073
    .line 1074
    move-object/from16 v1, p1

    .line 1075
    .line 1076
    move v2, v13

    .line 1077
    move v3, v15

    .line 1078
    move/from16 v4, v16

    .line 1079
    .line 1080
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v0

    .line 1084
    if-eqz v0, :cond_6

    .line 1085
    .line 1086
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    check-cast v0, Lcom/google/android/gms/internal/cast/w6;

    .line 1091
    .line 1092
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->t(ILcom/google/android/gms/internal/cast/w6;)V

    .line 1093
    .line 1094
    .line 1095
    goto/16 :goto_5

    .line 1096
    .line 1097
    :pswitch_3b
    move-wide v11, v0

    .line 1098
    move-object/from16 v0, p0

    .line 1099
    .line 1100
    move-object/from16 v1, p1

    .line 1101
    .line 1102
    move v2, v13

    .line 1103
    move v3, v15

    .line 1104
    move/from16 v4, v16

    .line 1105
    .line 1106
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1107
    .line 1108
    .line 1109
    move-result v0

    .line 1110
    if-eqz v0, :cond_6

    .line 1111
    .line 1112
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v1

    .line 1120
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->D(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/v7;)V

    .line 1121
    .line 1122
    .line 1123
    goto/16 :goto_5

    .line 1124
    .line 1125
    :pswitch_3c
    move-wide v11, v0

    .line 1126
    move-object/from16 v0, p0

    .line 1127
    .line 1128
    move-object/from16 v1, p1

    .line 1129
    .line 1130
    move v2, v13

    .line 1131
    move v3, v15

    .line 1132
    move/from16 v4, v16

    .line 1133
    .line 1134
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1135
    .line 1136
    .line 1137
    move-result v0

    .line 1138
    if-eqz v0, :cond_6

    .line 1139
    .line 1140
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    instance-of v1, v0, Ljava/lang/String;

    .line 1145
    .line 1146
    if-eqz v1, :cond_5

    .line 1147
    .line 1148
    check-cast v0, Ljava/lang/String;

    .line 1149
    .line 1150
    iget-object v1, v8, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 1151
    .line 1152
    check-cast v1, Lcom/google/android/gms/internal/cast/x6;

    .line 1153
    .line 1154
    invoke-virtual {v1, v14, v0}, Lcom/google/android/gms/internal/cast/x6;->B(ILjava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    goto/16 :goto_5

    .line 1158
    .line 1159
    :cond_5
    check-cast v0, Lcom/google/android/gms/internal/cast/w6;

    .line 1160
    .line 1161
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->t(ILcom/google/android/gms/internal/cast/w6;)V

    .line 1162
    .line 1163
    .line 1164
    goto/16 :goto_5

    .line 1165
    .line 1166
    :pswitch_3d
    move-wide v11, v0

    .line 1167
    move-object/from16 v0, p0

    .line 1168
    .line 1169
    move-object/from16 v1, p1

    .line 1170
    .line 1171
    move v2, v13

    .line 1172
    move v3, v15

    .line 1173
    move/from16 v4, v16

    .line 1174
    .line 1175
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v0

    .line 1179
    if-eqz v0, :cond_6

    .line 1180
    .line 1181
    invoke-static {v11, v12, v7}, Lcom/google/android/gms/internal/cast/d8;->q(JLjava/lang/Object;)Z

    .line 1182
    .line 1183
    .line 1184
    move-result v0

    .line 1185
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->s(IZ)V

    .line 1186
    .line 1187
    .line 1188
    goto/16 :goto_5

    .line 1189
    .line 1190
    :pswitch_3e
    move-wide v11, v0

    .line 1191
    move-object/from16 v0, p0

    .line 1192
    .line 1193
    move-object/from16 v1, p1

    .line 1194
    .line 1195
    move v2, v13

    .line 1196
    move v3, v15

    .line 1197
    move/from16 v4, v16

    .line 1198
    .line 1199
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1200
    .line 1201
    .line 1202
    move-result v0

    .line 1203
    if-eqz v0, :cond_6

    .line 1204
    .line 1205
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1206
    .line 1207
    .line 1208
    move-result v0

    .line 1209
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->x(II)V

    .line 1210
    .line 1211
    .line 1212
    goto/16 :goto_5

    .line 1213
    .line 1214
    :pswitch_3f
    move-wide v11, v0

    .line 1215
    move-object/from16 v0, p0

    .line 1216
    .line 1217
    move-object/from16 v1, p1

    .line 1218
    .line 1219
    move v2, v13

    .line 1220
    move v3, v15

    .line 1221
    move/from16 v4, v16

    .line 1222
    .line 1223
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1224
    .line 1225
    .line 1226
    move-result v0

    .line 1227
    if-eqz v0, :cond_6

    .line 1228
    .line 1229
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1230
    .line 1231
    .line 1232
    move-result-wide v0

    .line 1233
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->y(IJ)V

    .line 1234
    .line 1235
    .line 1236
    goto/16 :goto_5

    .line 1237
    .line 1238
    :pswitch_40
    move-wide v11, v0

    .line 1239
    move-object/from16 v0, p0

    .line 1240
    .line 1241
    move-object/from16 v1, p1

    .line 1242
    .line 1243
    move v2, v13

    .line 1244
    move v3, v15

    .line 1245
    move/from16 v4, v16

    .line 1246
    .line 1247
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v0

    .line 1251
    if-eqz v0, :cond_6

    .line 1252
    .line 1253
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1254
    .line 1255
    .line 1256
    move-result v0

    .line 1257
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->B(II)V

    .line 1258
    .line 1259
    .line 1260
    goto/16 :goto_5

    .line 1261
    .line 1262
    :pswitch_41
    move-wide v11, v0

    .line 1263
    move-object/from16 v0, p0

    .line 1264
    .line 1265
    move-object/from16 v1, p1

    .line 1266
    .line 1267
    move v2, v13

    .line 1268
    move v3, v15

    .line 1269
    move/from16 v4, v16

    .line 1270
    .line 1271
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1272
    .line 1273
    .line 1274
    move-result v0

    .line 1275
    if-eqz v0, :cond_6

    .line 1276
    .line 1277
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1278
    .line 1279
    .line 1280
    move-result-wide v0

    .line 1281
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->r(IJ)V

    .line 1282
    .line 1283
    .line 1284
    goto :goto_5

    .line 1285
    :pswitch_42
    move-wide v11, v0

    .line 1286
    move-object/from16 v0, p0

    .line 1287
    .line 1288
    move-object/from16 v1, p1

    .line 1289
    .line 1290
    move v2, v13

    .line 1291
    move v3, v15

    .line 1292
    move/from16 v4, v16

    .line 1293
    .line 1294
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1295
    .line 1296
    .line 1297
    move-result v0

    .line 1298
    if-eqz v0, :cond_6

    .line 1299
    .line 1300
    invoke-virtual {v10, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1301
    .line 1302
    .line 1303
    move-result-wide v0

    .line 1304
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->C(IJ)V

    .line 1305
    .line 1306
    .line 1307
    goto :goto_5

    .line 1308
    :pswitch_43
    move-wide v11, v0

    .line 1309
    move-object/from16 v0, p0

    .line 1310
    .line 1311
    move-object/from16 v1, p1

    .line 1312
    .line 1313
    move v2, v13

    .line 1314
    move v3, v15

    .line 1315
    move/from16 v4, v16

    .line 1316
    .line 1317
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v0

    .line 1321
    if-eqz v0, :cond_6

    .line 1322
    .line 1323
    invoke-static {v11, v12, v7}, Lcom/google/android/gms/internal/cast/d8;->e(JLjava/lang/Object;)F

    .line 1324
    .line 1325
    .line 1326
    move-result v0

    .line 1327
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/cast/l7;->z(IF)V

    .line 1328
    .line 1329
    .line 1330
    goto :goto_5

    .line 1331
    :pswitch_44
    move-wide v11, v0

    .line 1332
    move-object/from16 v0, p0

    .line 1333
    .line 1334
    move-object/from16 v1, p1

    .line 1335
    .line 1336
    move v2, v13

    .line 1337
    move v3, v15

    .line 1338
    move/from16 v4, v16

    .line 1339
    .line 1340
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1341
    .line 1342
    .line 1343
    move-result v0

    .line 1344
    if-eqz v0, :cond_6

    .line 1345
    .line 1346
    invoke-static {v11, v12, v7}, Lcom/google/android/gms/internal/cast/d8;->d(JLjava/lang/Object;)D

    .line 1347
    .line 1348
    .line 1349
    move-result-wide v0

    .line 1350
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/cast/l7;->v(ID)V

    .line 1351
    .line 1352
    .line 1353
    :cond_6
    :goto_5
    add-int/lit8 v13, v13, 0x3

    .line 1354
    .line 1355
    move v0, v15

    .line 1356
    move/from16 v1, v16

    .line 1357
    .line 1358
    const v11, 0xfffff

    .line 1359
    .line 1360
    .line 1361
    const/4 v12, 0x0

    .line 1362
    goto/16 :goto_0

    .line 1363
    .line 1364
    :cond_7
    move-object v0, v7

    .line 1365
    check-cast v0, Lcom/google/android/gms/internal/cast/c7;

    .line 1366
    .line 1367
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/c7;->zzc:Lcom/google/android/gms/internal/cast/y7;

    .line 1368
    .line 1369
    return-void

    .line 1370
    nop

    .line 1371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lcom/google/android/gms/internal/cast/c7;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/p7;->c:Lcom/google/android/gms/internal/cast/r6;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/c7;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/c7;->h(ILcom/google/android/gms/internal/cast/c7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/gms/internal/cast/c7;

    .line 12
    .line 13
    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/p7;->n(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v5, v3, v4

    .line 16
    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/p7;->m(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-long v5, v5

    .line 22
    packed-switch v3, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    .line 28
    .line 29
    aget v2, v2, v3

    .line 30
    .line 31
    and-int/2addr v2, v4

    .line 32
    int-to-long v2, v2

    .line 33
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne v4, v2, :cond_1

    .line 42
    .line 43
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/w7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :pswitch_1
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/w7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/w7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_1
    if-nez v2, :cond_0

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/w7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    cmp-long v6, v2, v4

    .line 125
    .line 126
    if-nez v6, :cond_1

    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_1

    .line 135
    .line 136
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-ne v2, v3, :cond_1

    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_1

    .line 153
    .line 154
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    cmp-long v6, v2, v4

    .line 163
    .line 164
    if-nez v6, :cond_1

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_1

    .line 173
    .line 174
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-ne v2, v3, :cond_1

    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_1

    .line 191
    .line 192
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-ne v2, v3, :cond_1

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_1

    .line 209
    .line 210
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-ne v2, v3, :cond_1

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_1

    .line 227
    .line 228
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/w7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_1

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_1

    .line 249
    .line 250
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/w7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_1

    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_1

    .line 271
    .line 272
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/cast/w7;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_1

    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_1

    .line 293
    .line 294
    sget-object v2, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 295
    .line 296
    invoke-virtual {v2, v5, v6, p1}, Lcom/google/android/gms/internal/cast/c8;->g(JLjava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    invoke-virtual {v2, v5, v6, p2}, Lcom/google/android/gms/internal/cast/c8;->g(JLjava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-ne v3, v2, :cond_1

    .line 305
    .line 306
    goto/16 :goto_2

    .line 307
    .line 308
    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_1

    .line 313
    .line 314
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-ne v2, v3, :cond_1

    .line 323
    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_1

    .line 331
    .line 332
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 333
    .line 334
    .line 335
    move-result-wide v2

    .line 336
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 337
    .line 338
    .line 339
    move-result-wide v4

    .line 340
    cmp-long v6, v2, v4

    .line 341
    .line 342
    if-nez v6, :cond_1

    .line 343
    .line 344
    goto/16 :goto_2

    .line 345
    .line 346
    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_1

    .line 351
    .line 352
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-ne v2, v3, :cond_1

    .line 361
    .line 362
    goto :goto_2

    .line 363
    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_1

    .line 368
    .line 369
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v2

    .line 373
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 374
    .line 375
    .line 376
    move-result-wide v4

    .line 377
    cmp-long v6, v2, v4

    .line 378
    .line 379
    if-nez v6, :cond_1

    .line 380
    .line 381
    goto :goto_2

    .line 382
    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    if-eqz v2, :cond_1

    .line 387
    .line 388
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 389
    .line 390
    .line 391
    move-result-wide v2

    .line 392
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 393
    .line 394
    .line 395
    move-result-wide v4

    .line 396
    cmp-long v6, v2, v4

    .line 397
    .line 398
    if-nez v6, :cond_1

    .line 399
    .line 400
    goto :goto_2

    .line 401
    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_1

    .line 406
    .line 407
    sget-object v2, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 408
    .line 409
    invoke-virtual {v2, v5, v6, p1}, Lcom/google/android/gms/internal/cast/c8;->b(JLjava/lang/Object;)F

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-virtual {v2, v5, v6, p2}, Lcom/google/android/gms/internal/cast/c8;->b(JLjava/lang/Object;)F

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-ne v3, v2, :cond_1

    .line 426
    .line 427
    goto :goto_2

    .line 428
    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/cast/p7;->u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_1

    .line 433
    .line 434
    sget-object v2, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 435
    .line 436
    invoke-virtual {v2, v5, v6, p1}, Lcom/google/android/gms/internal/cast/c8;->a(JLjava/lang/Object;)D

    .line 437
    .line 438
    .line 439
    move-result-wide v3

    .line 440
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 441
    .line 442
    .line 443
    move-result-wide v3

    .line 444
    invoke-virtual {v2, v5, v6, p2}, Lcom/google/android/gms/internal/cast/c8;->a(JLjava/lang/Object;)D

    .line 445
    .line 446
    .line 447
    move-result-wide v5

    .line 448
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 449
    .line 450
    .line 451
    move-result-wide v5

    .line 452
    cmp-long v2, v3, v5

    .line 453
    .line 454
    if-nez v2, :cond_1

    .line 455
    .line 456
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :cond_1
    :goto_3
    return v0

    .line 461
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/c7;->zzc:Lcom/google/android/gms/internal/cast/y7;

    .line 462
    .line 463
    check-cast p2, Lcom/google/android/gms/internal/cast/c7;

    .line 464
    .line 465
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/c7;->zzc:Lcom/google/android/gms/internal/cast/y7;

    .line 466
    .line 467
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/y7;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result p1

    .line 471
    if-nez p1, :cond_3

    .line 472
    .line 473
    return v0

    .line 474
    :cond_3
    const/4 p1, 0x1

    .line 475
    return p1

    .line 476
    nop

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/p7;->i(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/cast/c7;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/cast/c7;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/c7;->f()V

    .line 18
    .line 19
    .line 20
    iput v1, v0, Lcom/google/android/gms/internal/cast/r6;->zza:I

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/c7;->d()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 26
    .line 27
    array-length v2, v0

    .line 28
    if-ge v1, v2, :cond_6

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/p7;->n(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const v3, 0xfffff

    .line 35
    .line 36
    .line 37
    and-int/2addr v3, v2

    .line 38
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/p7;->m(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-long v3, v3

    .line 43
    const/16 v5, 0x9

    .line 44
    .line 45
    if-eq v2, v5, :cond_4

    .line 46
    .line 47
    const/16 v5, 0x3c

    .line 48
    .line 49
    if-eq v2, v5, :cond_3

    .line 50
    .line 51
    const/16 v5, 0x44

    .line 52
    .line 53
    if-eq v2, v5, :cond_3

    .line 54
    .line 55
    packed-switch v2, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/cast/p7;->h:Lsun/misc/Unsafe;

    .line 60
    .line 61
    invoke-virtual {v0, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-static {v0}, La/e;->C(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    throw p1

    .line 73
    :pswitch_1
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/google/android/gms/internal/cast/g7;

    .line 78
    .line 79
    check-cast v0, Lcom/google/android/gms/internal/cast/s6;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/s6;->d()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    aget v0, v0, v1

    .line 86
    .line 87
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v2, Lcom/google/android/gms/internal/cast/p7;->h:Lsun/misc/Unsafe;

    .line 98
    .line 99
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/cast/v7;->d(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget-object v2, Lcom/google/android/gms/internal/cast/p7;->h:Lsun/misc/Unsafe;

    .line 118
    .line 119
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/cast/v7;->d(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x3

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/p7;->f:Lcom/google/android/gms/internal/cast/k2;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/k2;->d(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lcom/google/android/gms/internal/cast/c7;)I
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v8, 0x1

    .line 6
    sget-object v9, Lcom/google/android/gms/internal/cast/p7;->h:Lsun/misc/Unsafe;

    .line 7
    .line 8
    const v11, 0xfffff

    .line 9
    .line 10
    .line 11
    const v0, 0xfffff

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v12, 0x0

    .line 16
    const/4 v13, 0x0

    .line 17
    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 18
    .line 19
    array-length v3, v2

    .line 20
    if-ge v12, v3, :cond_17

    .line 21
    .line 22
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/cast/p7;->n(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/p7;->m(I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    aget v14, v2, v12

    .line 31
    .line 32
    add-int/lit8 v5, v12, 0x2

    .line 33
    .line 34
    aget v2, v2, v5

    .line 35
    .line 36
    and-int v5, v2, v11

    .line 37
    .line 38
    const/16 v15, 0x11

    .line 39
    .line 40
    if-gt v4, v15, :cond_2

    .line 41
    .line 42
    if-eq v5, v0, :cond_1

    .line 43
    .line 44
    if-ne v5, v11, :cond_0

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    int-to-long v0, v5

    .line 49
    invoke-virtual {v9, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    move v1, v0

    .line 54
    :goto_1
    move v0, v5

    .line 55
    :cond_1
    ushr-int/lit8 v2, v2, 0x14

    .line 56
    .line 57
    shl-int v2, v8, v2

    .line 58
    .line 59
    move v15, v0

    .line 60
    move/from16 v16, v1

    .line 61
    .line 62
    move v5, v2

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v15, v0

    .line 65
    move/from16 v16, v1

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    :goto_2
    and-int v0, v3, v11

    .line 69
    .line 70
    sget-object v1, Lcom/google/android/gms/internal/cast/a7;->b:Lcom/google/android/gms/internal/cast/a7;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/a7;->a()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-lt v4, v1, :cond_3

    .line 77
    .line 78
    sget-object v1, Lcom/google/android/gms/internal/cast/a7;->c:Lcom/google/android/gms/internal/cast/a7;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    :cond_3
    int-to-long v2, v0

    .line 84
    const/16 v17, 0x3f

    .line 85
    .line 86
    const/4 v1, 0x4

    .line 87
    const/16 v0, 0x8

    .line 88
    .line 89
    packed-switch v4, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    goto/16 :goto_12

    .line 93
    .line 94
    :pswitch_0
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_16

    .line 99
    .line 100
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/google/android/gms/internal/cast/r6;

    .line 105
    .line 106
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/cast/x6;->H(ILcom/google/android/gms/internal/cast/r6;Lcom/google/android/gms/internal/cast/v7;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    :goto_3
    add-int/2addr v13, v0

    .line 115
    goto/16 :goto_12

    .line 116
    .line 117
    :pswitch_1
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_16

    .line 122
    .line 123
    shl-int/lit8 v0, v14, 0x3

    .line 124
    .line 125
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v1

    .line 129
    add-long v3, v1, v1

    .line 130
    .line 131
    shr-long v1, v1, v17

    .line 132
    .line 133
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    xor-long/2addr v1, v3

    .line 138
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/x6;->s(J)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    :goto_4
    add-int/2addr v1, v0

    .line 143
    add-int/2addr v13, v1

    .line 144
    goto/16 :goto_12

    .line 145
    .line 146
    :pswitch_2
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_16

    .line 151
    .line 152
    shl-int/lit8 v0, v14, 0x3

    .line 153
    .line 154
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    add-int v2, v1, v1

    .line 159
    .line 160
    shr-int/lit8 v1, v1, 0x1f

    .line 161
    .line 162
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    xor-int/2addr v1, v2

    .line 167
    invoke-static {v1, v0, v13}, La/e;->f(III)I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    goto/16 :goto_12

    .line 172
    .line 173
    :pswitch_3
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_16

    .line 178
    .line 179
    shl-int/lit8 v1, v14, 0x3

    .line 180
    .line 181
    invoke-static {v1, v0, v13}, La/e;->f(III)I

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    goto/16 :goto_12

    .line 186
    .line 187
    :pswitch_4
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_16

    .line 192
    .line 193
    shl-int/lit8 v0, v14, 0x3

    .line 194
    .line 195
    invoke-static {v0, v1, v13}, La/e;->f(III)I

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    goto/16 :goto_12

    .line 200
    .line 201
    :pswitch_5
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_16

    .line 206
    .line 207
    shl-int/lit8 v0, v14, 0x3

    .line 208
    .line 209
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    int-to-long v1, v1

    .line 214
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/x6;->s(J)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    goto :goto_4

    .line 223
    :pswitch_6
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_16

    .line 228
    .line 229
    shl-int/lit8 v0, v14, 0x3

    .line 230
    .line 231
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-static {v1, v0, v13}, La/e;->f(III)I

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    goto/16 :goto_12

    .line 244
    .line 245
    :pswitch_7
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_16

    .line 250
    .line 251
    shl-int/lit8 v0, v14, 0x3

    .line 252
    .line 253
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Lcom/google/android/gms/internal/cast/w6;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/w6;->e()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    :goto_5
    add-int/2addr v2, v1

    .line 272
    add-int/2addr v2, v0

    .line 273
    add-int/2addr v13, v2

    .line 274
    goto/16 :goto_12

    .line 275
    .line 276
    :pswitch_8
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_16

    .line 281
    .line 282
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/cast/w7;->l(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/v7;)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :pswitch_9
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_16

    .line 301
    .line 302
    shl-int/lit8 v0, v14, 0x3

    .line 303
    .line 304
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    instance-of v2, v1, Lcom/google/android/gms/internal/cast/w6;

    .line 309
    .line 310
    if-eqz v2, :cond_4

    .line 311
    .line 312
    check-cast v1, Lcom/google/android/gms/internal/cast/w6;

    .line 313
    .line 314
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/w6;->e()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    goto :goto_5

    .line 327
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 328
    .line 329
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->J(Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    goto/16 :goto_4

    .line 338
    .line 339
    :pswitch_a
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_16

    .line 344
    .line 345
    shl-int/lit8 v0, v14, 0x3

    .line 346
    .line 347
    invoke-static {v0, v8, v13}, La/e;->f(III)I

    .line 348
    .line 349
    .line 350
    move-result v13

    .line 351
    goto/16 :goto_12

    .line 352
    .line 353
    :pswitch_b
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_16

    .line 358
    .line 359
    shl-int/lit8 v0, v14, 0x3

    .line 360
    .line 361
    invoke-static {v0, v1, v13}, La/e;->f(III)I

    .line 362
    .line 363
    .line 364
    move-result v13

    .line 365
    goto/16 :goto_12

    .line 366
    .line 367
    :pswitch_c
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_16

    .line 372
    .line 373
    shl-int/lit8 v1, v14, 0x3

    .line 374
    .line 375
    invoke-static {v1, v0, v13}, La/e;->f(III)I

    .line 376
    .line 377
    .line 378
    move-result v13

    .line 379
    goto/16 :goto_12

    .line 380
    .line 381
    :pswitch_d
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_16

    .line 386
    .line 387
    shl-int/lit8 v0, v14, 0x3

    .line 388
    .line 389
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    int-to-long v1, v1

    .line 394
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/x6;->s(J)I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    goto/16 :goto_4

    .line 403
    .line 404
    :pswitch_e
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_16

    .line 409
    .line 410
    shl-int/lit8 v0, v14, 0x3

    .line 411
    .line 412
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 413
    .line 414
    .line 415
    move-result-wide v1

    .line 416
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/x6;->s(J)I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    goto/16 :goto_4

    .line 425
    .line 426
    :pswitch_f
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_16

    .line 431
    .line 432
    shl-int/lit8 v0, v14, 0x3

    .line 433
    .line 434
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 435
    .line 436
    .line 437
    move-result-wide v1

    .line 438
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/x6;->s(J)I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    goto/16 :goto_4

    .line 447
    .line 448
    :pswitch_10
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-eqz v0, :cond_16

    .line 453
    .line 454
    shl-int/lit8 v0, v14, 0x3

    .line 455
    .line 456
    invoke-static {v0, v1, v13}, La/e;->f(III)I

    .line 457
    .line 458
    .line 459
    move-result v13

    .line 460
    goto/16 :goto_12

    .line 461
    .line 462
    :pswitch_11
    invoke-virtual {v6, v14, v12, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_16

    .line 467
    .line 468
    shl-int/lit8 v1, v14, 0x3

    .line 469
    .line 470
    invoke-static {v1, v0, v13}, La/e;->f(III)I

    .line 471
    .line 472
    .line 473
    move-result v13

    .line 474
    goto/16 :goto_12

    .line 475
    .line 476
    :pswitch_12
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    div-int/lit8 v12, v12, 0x3

    .line 481
    .line 482
    iget-object v1, v6, Lcom/google/android/gms/internal/cast/p7;->b:[Ljava/lang/Object;

    .line 483
    .line 484
    add-int/2addr v12, v12

    .line 485
    aget-object v1, v1, v12

    .line 486
    .line 487
    invoke-static {v0}, Lea/q;->n(Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    invoke-static {v1}, Lea/q;->n(Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    const/4 v0, 0x0

    .line 494
    throw v0

    .line 495
    :pswitch_13
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    check-cast v0, Ljava/util/List;

    .line 500
    .line 501
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    sget-object v2, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 506
    .line 507
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 508
    .line 509
    .line 510
    move-result v2

    .line 511
    if-nez v2, :cond_5

    .line 512
    .line 513
    const/4 v4, 0x0

    .line 514
    goto :goto_7

    .line 515
    :cond_5
    const/4 v3, 0x0

    .line 516
    const/4 v4, 0x0

    .line 517
    :goto_6
    if-ge v3, v2, :cond_6

    .line 518
    .line 519
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    check-cast v5, Lcom/google/android/gms/internal/cast/r6;

    .line 524
    .line 525
    invoke-static {v14, v5, v1}, Lcom/google/android/gms/internal/cast/x6;->H(ILcom/google/android/gms/internal/cast/r6;Lcom/google/android/gms/internal/cast/v7;)I

    .line 526
    .line 527
    .line 528
    move-result v5

    .line 529
    add-int/2addr v4, v5

    .line 530
    add-int/2addr v3, v8

    .line 531
    goto :goto_6

    .line 532
    :cond_6
    :goto_7
    add-int/2addr v13, v4

    .line 533
    goto/16 :goto_12

    .line 534
    .line 535
    :pswitch_14
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    check-cast v0, Ljava/util/List;

    .line 540
    .line 541
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->n(Ljava/util/List;)I

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    if-lez v0, :cond_16

    .line 546
    .line 547
    shl-int/lit8 v1, v14, 0x3

    .line 548
    .line 549
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    goto/16 :goto_5

    .line 558
    .line 559
    :pswitch_15
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    check-cast v0, Ljava/util/List;

    .line 564
    .line 565
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->m(Ljava/util/List;)I

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    if-lez v0, :cond_16

    .line 570
    .line 571
    shl-int/lit8 v1, v14, 0x3

    .line 572
    .line 573
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    goto/16 :goto_5

    .line 582
    .line 583
    :pswitch_16
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    check-cast v0, Ljava/util/List;

    .line 588
    .line 589
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->i(Ljava/util/List;)I

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-lez v0, :cond_16

    .line 594
    .line 595
    shl-int/lit8 v1, v14, 0x3

    .line 596
    .line 597
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 602
    .line 603
    .line 604
    move-result v2

    .line 605
    goto/16 :goto_5

    .line 606
    .line 607
    :pswitch_17
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    check-cast v0, Ljava/util/List;

    .line 612
    .line 613
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->g(Ljava/util/List;)I

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    if-lez v0, :cond_16

    .line 618
    .line 619
    shl-int/lit8 v1, v14, 0x3

    .line 620
    .line 621
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    goto/16 :goto_5

    .line 630
    .line 631
    :pswitch_18
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    check-cast v0, Ljava/util/List;

    .line 636
    .line 637
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->e(Ljava/util/List;)I

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    if-lez v0, :cond_16

    .line 642
    .line 643
    shl-int/lit8 v1, v14, 0x3

    .line 644
    .line 645
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 650
    .line 651
    .line 652
    move-result v2

    .line 653
    goto/16 :goto_5

    .line 654
    .line 655
    :pswitch_19
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    check-cast v0, Ljava/util/List;

    .line 660
    .line 661
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->o(Ljava/util/List;)I

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-lez v0, :cond_16

    .line 666
    .line 667
    shl-int/lit8 v1, v14, 0x3

    .line 668
    .line 669
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    goto/16 :goto_5

    .line 678
    .line 679
    :pswitch_1a
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    check-cast v0, Ljava/util/List;

    .line 684
    .line 685
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 686
    .line 687
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    if-lez v0, :cond_16

    .line 692
    .line 693
    shl-int/lit8 v1, v14, 0x3

    .line 694
    .line 695
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 700
    .line 701
    .line 702
    move-result v2

    .line 703
    goto/16 :goto_5

    .line 704
    .line 705
    :pswitch_1b
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    check-cast v0, Ljava/util/List;

    .line 710
    .line 711
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->g(Ljava/util/List;)I

    .line 712
    .line 713
    .line 714
    move-result v0

    .line 715
    if-lez v0, :cond_16

    .line 716
    .line 717
    shl-int/lit8 v1, v14, 0x3

    .line 718
    .line 719
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 724
    .line 725
    .line 726
    move-result v2

    .line 727
    goto/16 :goto_5

    .line 728
    .line 729
    :pswitch_1c
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    check-cast v0, Ljava/util/List;

    .line 734
    .line 735
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->i(Ljava/util/List;)I

    .line 736
    .line 737
    .line 738
    move-result v0

    .line 739
    if-lez v0, :cond_16

    .line 740
    .line 741
    shl-int/lit8 v1, v14, 0x3

    .line 742
    .line 743
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 748
    .line 749
    .line 750
    move-result v2

    .line 751
    goto/16 :goto_5

    .line 752
    .line 753
    :pswitch_1d
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    check-cast v0, Ljava/util/List;

    .line 758
    .line 759
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->j(Ljava/util/List;)I

    .line 760
    .line 761
    .line 762
    move-result v0

    .line 763
    if-lez v0, :cond_16

    .line 764
    .line 765
    shl-int/lit8 v1, v14, 0x3

    .line 766
    .line 767
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 772
    .line 773
    .line 774
    move-result v2

    .line 775
    goto/16 :goto_5

    .line 776
    .line 777
    :pswitch_1e
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    check-cast v0, Ljava/util/List;

    .line 782
    .line 783
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->p(Ljava/util/List;)I

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    if-lez v0, :cond_16

    .line 788
    .line 789
    shl-int/lit8 v1, v14, 0x3

    .line 790
    .line 791
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 792
    .line 793
    .line 794
    move-result v1

    .line 795
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 796
    .line 797
    .line 798
    move-result v2

    .line 799
    goto/16 :goto_5

    .line 800
    .line 801
    :pswitch_1f
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    check-cast v0, Ljava/util/List;

    .line 806
    .line 807
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->k(Ljava/util/List;)I

    .line 808
    .line 809
    .line 810
    move-result v0

    .line 811
    if-lez v0, :cond_16

    .line 812
    .line 813
    shl-int/lit8 v1, v14, 0x3

    .line 814
    .line 815
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 820
    .line 821
    .line 822
    move-result v2

    .line 823
    goto/16 :goto_5

    .line 824
    .line 825
    :pswitch_20
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    check-cast v0, Ljava/util/List;

    .line 830
    .line 831
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->g(Ljava/util/List;)I

    .line 832
    .line 833
    .line 834
    move-result v0

    .line 835
    if-lez v0, :cond_16

    .line 836
    .line 837
    shl-int/lit8 v1, v14, 0x3

    .line 838
    .line 839
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    goto/16 :goto_5

    .line 848
    .line 849
    :pswitch_21
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    check-cast v0, Ljava/util/List;

    .line 854
    .line 855
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->i(Ljava/util/List;)I

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    if-lez v0, :cond_16

    .line 860
    .line 861
    shl-int/lit8 v1, v14, 0x3

    .line 862
    .line 863
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 868
    .line 869
    .line 870
    move-result v2

    .line 871
    goto/16 :goto_5

    .line 872
    .line 873
    :pswitch_22
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    check-cast v0, Ljava/util/List;

    .line 878
    .line 879
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 880
    .line 881
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 882
    .line 883
    .line 884
    move-result v1

    .line 885
    if-nez v1, :cond_7

    .line 886
    .line 887
    :goto_8
    const/4 v2, 0x0

    .line 888
    goto :goto_a

    .line 889
    :cond_7
    shl-int/lit8 v2, v14, 0x3

    .line 890
    .line 891
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->n(Ljava/util/List;)I

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    :goto_9
    mul-int v2, v2, v1

    .line 900
    .line 901
    add-int/2addr v2, v0

    .line 902
    :cond_8
    :goto_a
    add-int/2addr v13, v2

    .line 903
    goto/16 :goto_12

    .line 904
    .line 905
    :pswitch_23
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    check-cast v0, Ljava/util/List;

    .line 910
    .line 911
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 912
    .line 913
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 914
    .line 915
    .line 916
    move-result v1

    .line 917
    if-nez v1, :cond_9

    .line 918
    .line 919
    goto :goto_8

    .line 920
    :cond_9
    shl-int/lit8 v2, v14, 0x3

    .line 921
    .line 922
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->m(Ljava/util/List;)I

    .line 923
    .line 924
    .line 925
    move-result v0

    .line 926
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 927
    .line 928
    .line 929
    move-result v2

    .line 930
    goto :goto_9

    .line 931
    :pswitch_24
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v0

    .line 935
    check-cast v0, Ljava/util/List;

    .line 936
    .line 937
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/cast/w7;->h(ILjava/util/List;)I

    .line 938
    .line 939
    .line 940
    move-result v0

    .line 941
    goto/16 :goto_3

    .line 942
    .line 943
    :pswitch_25
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    check-cast v0, Ljava/util/List;

    .line 948
    .line 949
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/cast/w7;->f(ILjava/util/List;)I

    .line 950
    .line 951
    .line 952
    move-result v0

    .line 953
    goto/16 :goto_3

    .line 954
    .line 955
    :pswitch_26
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    check-cast v0, Ljava/util/List;

    .line 960
    .line 961
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 962
    .line 963
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 964
    .line 965
    .line 966
    move-result v1

    .line 967
    if-nez v1, :cond_a

    .line 968
    .line 969
    goto :goto_8

    .line 970
    :cond_a
    shl-int/lit8 v2, v14, 0x3

    .line 971
    .line 972
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->e(Ljava/util/List;)I

    .line 973
    .line 974
    .line 975
    move-result v0

    .line 976
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 977
    .line 978
    .line 979
    move-result v2

    .line 980
    goto :goto_9

    .line 981
    :pswitch_27
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    check-cast v0, Ljava/util/List;

    .line 986
    .line 987
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 988
    .line 989
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 990
    .line 991
    .line 992
    move-result v1

    .line 993
    if-nez v1, :cond_b

    .line 994
    .line 995
    goto :goto_8

    .line 996
    :cond_b
    shl-int/lit8 v2, v14, 0x3

    .line 997
    .line 998
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->o(Ljava/util/List;)I

    .line 999
    .line 1000
    .line 1001
    move-result v0

    .line 1002
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1003
    .line 1004
    .line 1005
    move-result v2

    .line 1006
    goto :goto_9

    .line 1007
    :pswitch_28
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    check-cast v0, Ljava/util/List;

    .line 1012
    .line 1013
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 1014
    .line 1015
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1016
    .line 1017
    .line 1018
    move-result v1

    .line 1019
    if-nez v1, :cond_c

    .line 1020
    .line 1021
    goto/16 :goto_8

    .line 1022
    .line 1023
    :cond_c
    shl-int/lit8 v2, v14, 0x3

    .line 1024
    .line 1025
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1026
    .line 1027
    .line 1028
    move-result v2

    .line 1029
    mul-int v2, v2, v1

    .line 1030
    .line 1031
    const/4 v1, 0x0

    .line 1032
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1033
    .line 1034
    .line 1035
    move-result v3

    .line 1036
    if-ge v1, v3, :cond_8

    .line 1037
    .line 1038
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v3

    .line 1042
    check-cast v3, Lcom/google/android/gms/internal/cast/w6;

    .line 1043
    .line 1044
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/w6;->e()I

    .line 1045
    .line 1046
    .line 1047
    move-result v3

    .line 1048
    invoke-static {v3, v3, v2}, La/e;->f(III)I

    .line 1049
    .line 1050
    .line 1051
    move-result v2

    .line 1052
    add-int/2addr v1, v8

    .line 1053
    goto :goto_b

    .line 1054
    :pswitch_29
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    check-cast v0, Ljava/util/List;

    .line 1059
    .line 1060
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v1

    .line 1064
    sget-object v2, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 1065
    .line 1066
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1067
    .line 1068
    .line 1069
    move-result v2

    .line 1070
    if-nez v2, :cond_d

    .line 1071
    .line 1072
    const/4 v3, 0x0

    .line 1073
    goto :goto_d

    .line 1074
    :cond_d
    shl-int/lit8 v3, v14, 0x3

    .line 1075
    .line 1076
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1077
    .line 1078
    .line 1079
    move-result v3

    .line 1080
    mul-int v3, v3, v2

    .line 1081
    .line 1082
    const/4 v4, 0x0

    .line 1083
    :goto_c
    if-ge v4, v2, :cond_e

    .line 1084
    .line 1085
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v5

    .line 1089
    check-cast v5, Lcom/google/android/gms/internal/cast/r6;

    .line 1090
    .line 1091
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/cast/x6;->I(Lcom/google/android/gms/internal/cast/r6;Lcom/google/android/gms/internal/cast/v7;)I

    .line 1092
    .line 1093
    .line 1094
    move-result v5

    .line 1095
    add-int/2addr v3, v5

    .line 1096
    add-int/2addr v4, v8

    .line 1097
    goto :goto_c

    .line 1098
    :cond_e
    :goto_d
    add-int/2addr v13, v3

    .line 1099
    goto/16 :goto_12

    .line 1100
    .line 1101
    :pswitch_2a
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    check-cast v0, Ljava/util/List;

    .line 1106
    .line 1107
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 1108
    .line 1109
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1110
    .line 1111
    .line 1112
    move-result v1

    .line 1113
    if-nez v1, :cond_f

    .line 1114
    .line 1115
    goto/16 :goto_8

    .line 1116
    .line 1117
    :cond_f
    shl-int/lit8 v2, v14, 0x3

    .line 1118
    .line 1119
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1120
    .line 1121
    .line 1122
    move-result v2

    .line 1123
    mul-int v2, v2, v1

    .line 1124
    .line 1125
    const/4 v3, 0x0

    .line 1126
    :goto_e
    if-ge v3, v1, :cond_8

    .line 1127
    .line 1128
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v4

    .line 1132
    instance-of v5, v4, Lcom/google/android/gms/internal/cast/w6;

    .line 1133
    .line 1134
    if-eqz v5, :cond_10

    .line 1135
    .line 1136
    check-cast v4, Lcom/google/android/gms/internal/cast/w6;

    .line 1137
    .line 1138
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/w6;->e()I

    .line 1139
    .line 1140
    .line 1141
    move-result v4

    .line 1142
    invoke-static {v4, v4, v2}, La/e;->f(III)I

    .line 1143
    .line 1144
    .line 1145
    move-result v2

    .line 1146
    goto :goto_f

    .line 1147
    :cond_10
    check-cast v4, Ljava/lang/String;

    .line 1148
    .line 1149
    invoke-static {v4}, Lcom/google/android/gms/internal/cast/x6;->J(Ljava/lang/String;)I

    .line 1150
    .line 1151
    .line 1152
    move-result v4

    .line 1153
    add-int/2addr v4, v2

    .line 1154
    move v2, v4

    .line 1155
    :goto_f
    add-int/2addr v3, v8

    .line 1156
    goto :goto_e

    .line 1157
    :pswitch_2b
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    check-cast v0, Ljava/util/List;

    .line 1162
    .line 1163
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 1164
    .line 1165
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1166
    .line 1167
    .line 1168
    move-result v0

    .line 1169
    if-nez v0, :cond_11

    .line 1170
    .line 1171
    :goto_10
    const/4 v1, 0x0

    .line 1172
    goto :goto_11

    .line 1173
    :cond_11
    shl-int/lit8 v1, v14, 0x3

    .line 1174
    .line 1175
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1176
    .line 1177
    .line 1178
    move-result v1

    .line 1179
    add-int/2addr v1, v8

    .line 1180
    mul-int v1, v1, v0

    .line 1181
    .line 1182
    :goto_11
    add-int/2addr v13, v1

    .line 1183
    goto/16 :goto_12

    .line 1184
    .line 1185
    :pswitch_2c
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    check-cast v0, Ljava/util/List;

    .line 1190
    .line 1191
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/cast/w7;->f(ILjava/util/List;)I

    .line 1192
    .line 1193
    .line 1194
    move-result v0

    .line 1195
    goto/16 :goto_3

    .line 1196
    .line 1197
    :pswitch_2d
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    check-cast v0, Ljava/util/List;

    .line 1202
    .line 1203
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/cast/w7;->h(ILjava/util/List;)I

    .line 1204
    .line 1205
    .line 1206
    move-result v0

    .line 1207
    goto/16 :goto_3

    .line 1208
    .line 1209
    :pswitch_2e
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    check-cast v0, Ljava/util/List;

    .line 1214
    .line 1215
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 1216
    .line 1217
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1218
    .line 1219
    .line 1220
    move-result v1

    .line 1221
    if-nez v1, :cond_12

    .line 1222
    .line 1223
    goto/16 :goto_8

    .line 1224
    .line 1225
    :cond_12
    shl-int/lit8 v2, v14, 0x3

    .line 1226
    .line 1227
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->j(Ljava/util/List;)I

    .line 1228
    .line 1229
    .line 1230
    move-result v0

    .line 1231
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1232
    .line 1233
    .line 1234
    move-result v2

    .line 1235
    goto/16 :goto_9

    .line 1236
    .line 1237
    :pswitch_2f
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    check-cast v0, Ljava/util/List;

    .line 1242
    .line 1243
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 1244
    .line 1245
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1246
    .line 1247
    .line 1248
    move-result v1

    .line 1249
    if-nez v1, :cond_13

    .line 1250
    .line 1251
    goto/16 :goto_8

    .line 1252
    .line 1253
    :cond_13
    shl-int/lit8 v2, v14, 0x3

    .line 1254
    .line 1255
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->p(Ljava/util/List;)I

    .line 1256
    .line 1257
    .line 1258
    move-result v0

    .line 1259
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1260
    .line 1261
    .line 1262
    move-result v2

    .line 1263
    goto/16 :goto_9

    .line 1264
    .line 1265
    :pswitch_30
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v0

    .line 1269
    check-cast v0, Ljava/util/List;

    .line 1270
    .line 1271
    sget-object v1, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 1272
    .line 1273
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1274
    .line 1275
    .line 1276
    move-result v1

    .line 1277
    if-nez v1, :cond_14

    .line 1278
    .line 1279
    goto :goto_10

    .line 1280
    :cond_14
    shl-int/lit8 v1, v14, 0x3

    .line 1281
    .line 1282
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w7;->k(Ljava/util/List;)I

    .line 1283
    .line 1284
    .line 1285
    move-result v2

    .line 1286
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1291
    .line 1292
    .line 1293
    move-result v1

    .line 1294
    mul-int v1, v1, v0

    .line 1295
    .line 1296
    add-int/2addr v1, v2

    .line 1297
    goto :goto_11

    .line 1298
    :pswitch_31
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    check-cast v0, Ljava/util/List;

    .line 1303
    .line 1304
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/cast/w7;->f(ILjava/util/List;)I

    .line 1305
    .line 1306
    .line 1307
    move-result v0

    .line 1308
    goto/16 :goto_3

    .line 1309
    .line 1310
    :pswitch_32
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v0

    .line 1314
    check-cast v0, Ljava/util/List;

    .line 1315
    .line 1316
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/cast/w7;->h(ILjava/util/List;)I

    .line 1317
    .line 1318
    .line 1319
    move-result v0

    .line 1320
    goto/16 :goto_3

    .line 1321
    .line 1322
    :pswitch_33
    move-object/from16 v0, p0

    .line 1323
    .line 1324
    move-object/from16 v1, p1

    .line 1325
    .line 1326
    move-wide v3, v2

    .line 1327
    move v2, v12

    .line 1328
    move-wide v10, v3

    .line 1329
    move v3, v15

    .line 1330
    move/from16 v4, v16

    .line 1331
    .line 1332
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1333
    .line 1334
    .line 1335
    move-result v0

    .line 1336
    if-eqz v0, :cond_16

    .line 1337
    .line 1338
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    check-cast v0, Lcom/google/android/gms/internal/cast/r6;

    .line 1343
    .line 1344
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v1

    .line 1348
    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/cast/x6;->H(ILcom/google/android/gms/internal/cast/r6;Lcom/google/android/gms/internal/cast/v7;)I

    .line 1349
    .line 1350
    .line 1351
    move-result v0

    .line 1352
    goto/16 :goto_3

    .line 1353
    .line 1354
    :pswitch_34
    move-wide v10, v2

    .line 1355
    move-object/from16 v0, p0

    .line 1356
    .line 1357
    move-object/from16 v1, p1

    .line 1358
    .line 1359
    move v2, v12

    .line 1360
    move v3, v15

    .line 1361
    move/from16 v4, v16

    .line 1362
    .line 1363
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1364
    .line 1365
    .line 1366
    move-result v0

    .line 1367
    if-eqz v0, :cond_16

    .line 1368
    .line 1369
    shl-int/lit8 v0, v14, 0x3

    .line 1370
    .line 1371
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1372
    .line 1373
    .line 1374
    move-result-wide v1

    .line 1375
    add-long v3, v1, v1

    .line 1376
    .line 1377
    shr-long v1, v1, v17

    .line 1378
    .line 1379
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1380
    .line 1381
    .line 1382
    move-result v0

    .line 1383
    xor-long/2addr v1, v3

    .line 1384
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/x6;->s(J)I

    .line 1385
    .line 1386
    .line 1387
    move-result v1

    .line 1388
    goto/16 :goto_4

    .line 1389
    .line 1390
    :pswitch_35
    move-wide v10, v2

    .line 1391
    move-object/from16 v0, p0

    .line 1392
    .line 1393
    move-object/from16 v1, p1

    .line 1394
    .line 1395
    move v2, v12

    .line 1396
    move v3, v15

    .line 1397
    move/from16 v4, v16

    .line 1398
    .line 1399
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1400
    .line 1401
    .line 1402
    move-result v0

    .line 1403
    if-eqz v0, :cond_16

    .line 1404
    .line 1405
    shl-int/lit8 v0, v14, 0x3

    .line 1406
    .line 1407
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1408
    .line 1409
    .line 1410
    move-result v1

    .line 1411
    add-int v2, v1, v1

    .line 1412
    .line 1413
    shr-int/lit8 v1, v1, 0x1f

    .line 1414
    .line 1415
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1416
    .line 1417
    .line 1418
    move-result v0

    .line 1419
    xor-int/2addr v1, v2

    .line 1420
    invoke-static {v1, v0, v13}, La/e;->f(III)I

    .line 1421
    .line 1422
    .line 1423
    move-result v13

    .line 1424
    goto/16 :goto_12

    .line 1425
    .line 1426
    :pswitch_36
    const/16 v10, 0x8

    .line 1427
    .line 1428
    move-object/from16 v0, p0

    .line 1429
    .line 1430
    move-object/from16 v1, p1

    .line 1431
    .line 1432
    move v2, v12

    .line 1433
    move v3, v15

    .line 1434
    move/from16 v4, v16

    .line 1435
    .line 1436
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1437
    .line 1438
    .line 1439
    move-result v0

    .line 1440
    if-eqz v0, :cond_16

    .line 1441
    .line 1442
    shl-int/lit8 v0, v14, 0x3

    .line 1443
    .line 1444
    invoke-static {v0, v10, v13}, La/e;->f(III)I

    .line 1445
    .line 1446
    .line 1447
    move-result v13

    .line 1448
    goto/16 :goto_12

    .line 1449
    .line 1450
    :pswitch_37
    move-object/from16 v0, p0

    .line 1451
    .line 1452
    const/4 v10, 0x4

    .line 1453
    move-object/from16 v1, p1

    .line 1454
    .line 1455
    move v2, v12

    .line 1456
    move v3, v15

    .line 1457
    move/from16 v4, v16

    .line 1458
    .line 1459
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1460
    .line 1461
    .line 1462
    move-result v0

    .line 1463
    if-eqz v0, :cond_16

    .line 1464
    .line 1465
    shl-int/lit8 v0, v14, 0x3

    .line 1466
    .line 1467
    invoke-static {v0, v10, v13}, La/e;->f(III)I

    .line 1468
    .line 1469
    .line 1470
    move-result v13

    .line 1471
    goto/16 :goto_12

    .line 1472
    .line 1473
    :pswitch_38
    move-wide v10, v2

    .line 1474
    move-object/from16 v0, p0

    .line 1475
    .line 1476
    move-object/from16 v1, p1

    .line 1477
    .line 1478
    move v2, v12

    .line 1479
    move v3, v15

    .line 1480
    move/from16 v4, v16

    .line 1481
    .line 1482
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v0

    .line 1486
    if-eqz v0, :cond_16

    .line 1487
    .line 1488
    shl-int/lit8 v0, v14, 0x3

    .line 1489
    .line 1490
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1491
    .line 1492
    .line 1493
    move-result v1

    .line 1494
    int-to-long v1, v1

    .line 1495
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1496
    .line 1497
    .line 1498
    move-result v0

    .line 1499
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/x6;->s(J)I

    .line 1500
    .line 1501
    .line 1502
    move-result v1

    .line 1503
    goto/16 :goto_4

    .line 1504
    .line 1505
    :pswitch_39
    move-wide v10, v2

    .line 1506
    move-object/from16 v0, p0

    .line 1507
    .line 1508
    move-object/from16 v1, p1

    .line 1509
    .line 1510
    move v2, v12

    .line 1511
    move v3, v15

    .line 1512
    move/from16 v4, v16

    .line 1513
    .line 1514
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1515
    .line 1516
    .line 1517
    move-result v0

    .line 1518
    if-eqz v0, :cond_16

    .line 1519
    .line 1520
    shl-int/lit8 v0, v14, 0x3

    .line 1521
    .line 1522
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1523
    .line 1524
    .line 1525
    move-result v1

    .line 1526
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1527
    .line 1528
    .line 1529
    move-result v0

    .line 1530
    invoke-static {v1, v0, v13}, La/e;->f(III)I

    .line 1531
    .line 1532
    .line 1533
    move-result v13

    .line 1534
    goto/16 :goto_12

    .line 1535
    .line 1536
    :pswitch_3a
    move-wide v10, v2

    .line 1537
    move-object/from16 v0, p0

    .line 1538
    .line 1539
    move-object/from16 v1, p1

    .line 1540
    .line 1541
    move v2, v12

    .line 1542
    move v3, v15

    .line 1543
    move/from16 v4, v16

    .line 1544
    .line 1545
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1546
    .line 1547
    .line 1548
    move-result v0

    .line 1549
    if-eqz v0, :cond_16

    .line 1550
    .line 1551
    shl-int/lit8 v0, v14, 0x3

    .line 1552
    .line 1553
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v1

    .line 1557
    check-cast v1, Lcom/google/android/gms/internal/cast/w6;

    .line 1558
    .line 1559
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1560
    .line 1561
    .line 1562
    move-result v0

    .line 1563
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/w6;->e()I

    .line 1564
    .line 1565
    .line 1566
    move-result v1

    .line 1567
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1568
    .line 1569
    .line 1570
    move-result v2

    .line 1571
    goto/16 :goto_5

    .line 1572
    .line 1573
    :pswitch_3b
    move-wide v10, v2

    .line 1574
    move-object/from16 v0, p0

    .line 1575
    .line 1576
    move-object/from16 v1, p1

    .line 1577
    .line 1578
    move v2, v12

    .line 1579
    move v3, v15

    .line 1580
    move/from16 v4, v16

    .line 1581
    .line 1582
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1583
    .line 1584
    .line 1585
    move-result v0

    .line 1586
    if-eqz v0, :cond_16

    .line 1587
    .line 1588
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v0

    .line 1592
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v1

    .line 1596
    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/cast/w7;->l(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/v7;)I

    .line 1597
    .line 1598
    .line 1599
    move-result v0

    .line 1600
    goto/16 :goto_3

    .line 1601
    .line 1602
    :pswitch_3c
    move-wide v10, v2

    .line 1603
    move-object/from16 v0, p0

    .line 1604
    .line 1605
    move-object/from16 v1, p1

    .line 1606
    .line 1607
    move v2, v12

    .line 1608
    move v3, v15

    .line 1609
    move/from16 v4, v16

    .line 1610
    .line 1611
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1612
    .line 1613
    .line 1614
    move-result v0

    .line 1615
    if-eqz v0, :cond_16

    .line 1616
    .line 1617
    shl-int/lit8 v0, v14, 0x3

    .line 1618
    .line 1619
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v1

    .line 1623
    instance-of v2, v1, Lcom/google/android/gms/internal/cast/w6;

    .line 1624
    .line 1625
    if-eqz v2, :cond_15

    .line 1626
    .line 1627
    check-cast v1, Lcom/google/android/gms/internal/cast/w6;

    .line 1628
    .line 1629
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1630
    .line 1631
    .line 1632
    move-result v0

    .line 1633
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/w6;->e()I

    .line 1634
    .line 1635
    .line 1636
    move-result v1

    .line 1637
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1638
    .line 1639
    .line 1640
    move-result v2

    .line 1641
    goto/16 :goto_5

    .line 1642
    .line 1643
    :cond_15
    check-cast v1, Ljava/lang/String;

    .line 1644
    .line 1645
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1646
    .line 1647
    .line 1648
    move-result v0

    .line 1649
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/x6;->J(Ljava/lang/String;)I

    .line 1650
    .line 1651
    .line 1652
    move-result v1

    .line 1653
    goto/16 :goto_4

    .line 1654
    .line 1655
    :pswitch_3d
    move-object/from16 v0, p0

    .line 1656
    .line 1657
    move-object/from16 v1, p1

    .line 1658
    .line 1659
    move v2, v12

    .line 1660
    move v3, v15

    .line 1661
    move/from16 v4, v16

    .line 1662
    .line 1663
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1664
    .line 1665
    .line 1666
    move-result v0

    .line 1667
    if-eqz v0, :cond_16

    .line 1668
    .line 1669
    shl-int/lit8 v0, v14, 0x3

    .line 1670
    .line 1671
    invoke-static {v0, v8, v13}, La/e;->f(III)I

    .line 1672
    .line 1673
    .line 1674
    move-result v13

    .line 1675
    goto/16 :goto_12

    .line 1676
    .line 1677
    :pswitch_3e
    const/4 v10, 0x4

    .line 1678
    move-object/from16 v0, p0

    .line 1679
    .line 1680
    move-object/from16 v1, p1

    .line 1681
    .line 1682
    move v2, v12

    .line 1683
    move v3, v15

    .line 1684
    move/from16 v4, v16

    .line 1685
    .line 1686
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1687
    .line 1688
    .line 1689
    move-result v0

    .line 1690
    if-eqz v0, :cond_16

    .line 1691
    .line 1692
    shl-int/lit8 v0, v14, 0x3

    .line 1693
    .line 1694
    invoke-static {v0, v10, v13}, La/e;->f(III)I

    .line 1695
    .line 1696
    .line 1697
    move-result v13

    .line 1698
    goto/16 :goto_12

    .line 1699
    .line 1700
    :pswitch_3f
    const/16 v10, 0x8

    .line 1701
    .line 1702
    move-object/from16 v0, p0

    .line 1703
    .line 1704
    move-object/from16 v1, p1

    .line 1705
    .line 1706
    move v2, v12

    .line 1707
    move v3, v15

    .line 1708
    move/from16 v4, v16

    .line 1709
    .line 1710
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1711
    .line 1712
    .line 1713
    move-result v0

    .line 1714
    if-eqz v0, :cond_16

    .line 1715
    .line 1716
    shl-int/lit8 v0, v14, 0x3

    .line 1717
    .line 1718
    invoke-static {v0, v10, v13}, La/e;->f(III)I

    .line 1719
    .line 1720
    .line 1721
    move-result v13

    .line 1722
    goto/16 :goto_12

    .line 1723
    .line 1724
    :pswitch_40
    move-wide v10, v2

    .line 1725
    move-object/from16 v0, p0

    .line 1726
    .line 1727
    move-object/from16 v1, p1

    .line 1728
    .line 1729
    move v2, v12

    .line 1730
    move v3, v15

    .line 1731
    move/from16 v4, v16

    .line 1732
    .line 1733
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1734
    .line 1735
    .line 1736
    move-result v0

    .line 1737
    if-eqz v0, :cond_16

    .line 1738
    .line 1739
    shl-int/lit8 v0, v14, 0x3

    .line 1740
    .line 1741
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1742
    .line 1743
    .line 1744
    move-result v1

    .line 1745
    int-to-long v1, v1

    .line 1746
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1747
    .line 1748
    .line 1749
    move-result v0

    .line 1750
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/x6;->s(J)I

    .line 1751
    .line 1752
    .line 1753
    move-result v1

    .line 1754
    goto/16 :goto_4

    .line 1755
    .line 1756
    :pswitch_41
    move-wide v10, v2

    .line 1757
    move-object/from16 v0, p0

    .line 1758
    .line 1759
    move-object/from16 v1, p1

    .line 1760
    .line 1761
    move v2, v12

    .line 1762
    move v3, v15

    .line 1763
    move/from16 v4, v16

    .line 1764
    .line 1765
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1766
    .line 1767
    .line 1768
    move-result v0

    .line 1769
    if-eqz v0, :cond_16

    .line 1770
    .line 1771
    shl-int/lit8 v0, v14, 0x3

    .line 1772
    .line 1773
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1774
    .line 1775
    .line 1776
    move-result-wide v1

    .line 1777
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1778
    .line 1779
    .line 1780
    move-result v0

    .line 1781
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/x6;->s(J)I

    .line 1782
    .line 1783
    .line 1784
    move-result v1

    .line 1785
    goto/16 :goto_4

    .line 1786
    .line 1787
    :pswitch_42
    move-wide v10, v2

    .line 1788
    move-object/from16 v0, p0

    .line 1789
    .line 1790
    move-object/from16 v1, p1

    .line 1791
    .line 1792
    move v2, v12

    .line 1793
    move v3, v15

    .line 1794
    move/from16 v4, v16

    .line 1795
    .line 1796
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1797
    .line 1798
    .line 1799
    move-result v0

    .line 1800
    if-eqz v0, :cond_16

    .line 1801
    .line 1802
    shl-int/lit8 v0, v14, 0x3

    .line 1803
    .line 1804
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1805
    .line 1806
    .line 1807
    move-result-wide v1

    .line 1808
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/x6;->K(I)I

    .line 1809
    .line 1810
    .line 1811
    move-result v0

    .line 1812
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/x6;->s(J)I

    .line 1813
    .line 1814
    .line 1815
    move-result v1

    .line 1816
    goto/16 :goto_4

    .line 1817
    .line 1818
    :pswitch_43
    const/4 v10, 0x4

    .line 1819
    move-object/from16 v0, p0

    .line 1820
    .line 1821
    move-object/from16 v1, p1

    .line 1822
    .line 1823
    move v2, v12

    .line 1824
    move v3, v15

    .line 1825
    move/from16 v4, v16

    .line 1826
    .line 1827
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1828
    .line 1829
    .line 1830
    move-result v0

    .line 1831
    if-eqz v0, :cond_16

    .line 1832
    .line 1833
    shl-int/lit8 v0, v14, 0x3

    .line 1834
    .line 1835
    invoke-static {v0, v10, v13}, La/e;->f(III)I

    .line 1836
    .line 1837
    .line 1838
    move-result v13

    .line 1839
    goto :goto_12

    .line 1840
    :pswitch_44
    const/16 v10, 0x8

    .line 1841
    .line 1842
    move-object/from16 v0, p0

    .line 1843
    .line 1844
    move-object/from16 v1, p1

    .line 1845
    .line 1846
    move v2, v12

    .line 1847
    move v3, v15

    .line 1848
    move/from16 v4, v16

    .line 1849
    .line 1850
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 1851
    .line 1852
    .line 1853
    move-result v0

    .line 1854
    if-eqz v0, :cond_16

    .line 1855
    .line 1856
    shl-int/lit8 v0, v14, 0x3

    .line 1857
    .line 1858
    invoke-static {v0, v10, v13}, La/e;->f(III)I

    .line 1859
    .line 1860
    .line 1861
    move-result v13

    .line 1862
    :cond_16
    :goto_12
    add-int/lit8 v12, v12, 0x3

    .line 1863
    .line 1864
    move v0, v15

    .line 1865
    move/from16 v1, v16

    .line 1866
    .line 1867
    const v11, 0xfffff

    .line 1868
    .line 1869
    .line 1870
    goto/16 :goto_0

    .line 1871
    .line 1872
    :cond_17
    iget-object v0, v7, Lcom/google/android/gms/internal/cast/c7;->zzc:Lcom/google/android/gms/internal/cast/y7;

    .line 1873
    .line 1874
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/y7;->a()I

    .line 1875
    .line 1876
    .line 1877
    move-result v0

    .line 1878
    add-int/2addr v0, v13

    .line 1879
    return v0

    .line 1880
    nop

    .line 1881
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const v9, 0xfffff

    .line 7
    .line 8
    .line 9
    const v0, 0xfffff

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/cast/p7;->e:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ge v10, v2, :cond_a

    .line 18
    .line 19
    iget-object v2, v6, Lcom/google/android/gms/internal/cast/p7;->d:[I

    .line 20
    .line 21
    aget v11, v2, v10

    .line 22
    .line 23
    iget-object v2, v6, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 24
    .line 25
    aget v12, v2, v11

    .line 26
    .line 27
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/cast/p7;->n(I)I

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    add-int/lit8 v4, v11, 0x2

    .line 32
    .line 33
    aget v2, v2, v4

    .line 34
    .line 35
    and-int v4, v2, v9

    .line 36
    .line 37
    ushr-int/lit8 v2, v2, 0x14

    .line 38
    .line 39
    shl-int v14, v3, v2

    .line 40
    .line 41
    if-eq v4, v0, :cond_1

    .line 42
    .line 43
    if-eq v4, v9, :cond_0

    .line 44
    .line 45
    int-to-long v0, v4

    .line 46
    sget-object v2, Lcom/google/android/gms/internal/cast/p7;->h:Lsun/misc/Unsafe;

    .line 47
    .line 48
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_0
    move/from16 v16, v1

    .line 53
    .line 54
    move v15, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v15, v0

    .line 57
    move/from16 v16, v1

    .line 58
    .line 59
    :goto_1
    const/high16 v0, 0x10000000

    .line 60
    .line 61
    and-int/2addr v0, v13

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    move-object/from16 v0, p0

    .line 65
    .line 66
    move-object/from16 v1, p1

    .line 67
    .line 68
    move v2, v11

    .line 69
    move v3, v15

    .line 70
    move/from16 v4, v16

    .line 71
    .line 72
    move v5, v14

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    return v8

    .line 81
    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/cast/p7;->m(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v1, 0x9

    .line 86
    .line 87
    if-eq v0, v1, :cond_8

    .line 88
    .line 89
    const/16 v1, 0x11

    .line 90
    .line 91
    if-eq v0, v1, :cond_8

    .line 92
    .line 93
    const/16 v1, 0x1b

    .line 94
    .line 95
    if-eq v0, v1, :cond_6

    .line 96
    .line 97
    const/16 v1, 0x3c

    .line 98
    .line 99
    if-eq v0, v1, :cond_5

    .line 100
    .line 101
    const/16 v1, 0x44

    .line 102
    .line 103
    if-eq v0, v1, :cond_5

    .line 104
    .line 105
    const/16 v1, 0x31

    .line 106
    .line 107
    if-eq v0, v1, :cond_6

    .line 108
    .line 109
    const/16 v1, 0x32

    .line 110
    .line 111
    if-eq v0, v1, :cond_4

    .line 112
    .line 113
    goto/16 :goto_4

    .line 114
    .line 115
    :cond_4
    and-int v0, v13, v9

    .line 116
    .line 117
    int-to-long v0, v0

    .line 118
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Lea/q;->n(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x0

    .line 126
    throw v0

    .line 127
    :cond_5
    invoke-virtual {v6, v12, v11, v7}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_9

    .line 132
    .line 133
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    and-int v1, v13, v9

    .line 138
    .line 139
    int-to-long v1, v1

    .line 140
    invoke-static {v1, v2, v7}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cast/v7;->f(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_9

    .line 149
    .line 150
    return v8

    .line 151
    :cond_6
    and-int v0, v13, v9

    .line 152
    .line 153
    int-to-long v0, v0

    .line 154
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ljava/util/List;

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_9

    .line 165
    .line 166
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const/4 v2, 0x0

    .line 171
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-ge v2, v3, :cond_9

    .line 176
    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/cast/v7;->f(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-nez v3, :cond_7

    .line 186
    .line 187
    return v8

    .line 188
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_8
    move-object/from16 v0, p0

    .line 192
    .line 193
    move-object/from16 v1, p1

    .line 194
    .line 195
    move v2, v11

    .line 196
    move v3, v15

    .line 197
    move/from16 v4, v16

    .line 198
    .line 199
    move v5, v14

    .line 200
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/p7;->w(Ljava/lang/Object;IIII)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    and-int v1, v13, v9

    .line 211
    .line 212
    int-to-long v1, v1

    .line 213
    invoke-static {v1, v2, v7}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cast/v7;->f(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_9

    .line 222
    .line 223
    return v8

    .line 224
    :cond_9
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 225
    .line 226
    move v0, v15

    .line 227
    move/from16 v1, v16

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_a
    return v3
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/p7;->i(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_5

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/p7;->n(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int v4, v2, v3

    .line 24
    .line 25
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/p7;->m(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    aget v5, v1, v0

    .line 30
    .line 31
    int-to-long v8, v4

    .line 32
    packed-switch v2, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :pswitch_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->s(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :pswitch_1
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v8, v9, p1, v2}, Lcom/google/android/gms/internal/cast/d8;->m(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v0, 0x2

    .line 56
    .line 57
    aget v1, v1, v2

    .line 58
    .line 59
    and-int/2addr v1, v3

    .line 60
    int-to-long v1, v1

    .line 61
    invoke-static {v5, v1, v2, p1}, Lcom/google/android/gms/internal/cast/d8;->k(IJLjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :pswitch_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->s(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :pswitch_3
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v8, v9, p1, v2}, Lcom/google/android/gms/internal/cast/d8;->m(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v2, v0, 0x2

    .line 85
    .line 86
    aget v1, v1, v2

    .line 87
    .line 88
    and-int/2addr v1, v3

    .line 89
    int-to-long v1, v1

    .line 90
    invoke-static {v5, v1, v2, p1}, Lcom/google/android/gms/internal/cast/d8;->k(IJLjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 96
    .line 97
    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-nez p1, :cond_0

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    new-instance p1, Ljava/lang/ClassCastException;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :pswitch_5
    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/google/android/gms/internal/cast/g7;

    .line 127
    .line 128
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/google/android/gms/internal/cast/g7;

    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-lez v3, :cond_2

    .line 143
    .line 144
    if-lez v4, :cond_2

    .line 145
    .line 146
    move-object v5, v1

    .line 147
    check-cast v5, Lcom/google/android/gms/internal/cast/s6;

    .line 148
    .line 149
    iget-boolean v5, v5, Lcom/google/android/gms/internal/cast/s6;->a:Z

    .line 150
    .line 151
    if-nez v5, :cond_1

    .line 152
    .line 153
    add-int/2addr v4, v3

    .line 154
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/cast/g7;->a(I)Lcom/google/android/gms/internal/cast/g7;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    .line 160
    .line 161
    :cond_2
    if-gtz v3, :cond_3

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_3
    move-object v2, v1

    .line 165
    :goto_1
    invoke-static {v8, v9, p1, v2}, Lcom/google/android/gms/internal/cast/d8;->m(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_2

    .line 169
    .line 170
    :pswitch_6
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->r(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_2

    .line 174
    .line 175
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_4

    .line 180
    .line 181
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 182
    .line 183
    .line 184
    move-result-wide v1

    .line 185
    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/cast/d8;->l(Ljava/lang/Object;JJ)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_2

    .line 192
    .line 193
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_4

    .line 198
    .line 199
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/cast/d8;->k(IJLjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_4

    .line 216
    .line 217
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v1

    .line 221
    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/cast/d8;->l(Ljava/lang/Object;JJ)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_2

    .line 228
    .line 229
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_4

    .line 234
    .line 235
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/cast/d8;->k(IJLjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_2

    .line 246
    .line 247
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-eqz v1, :cond_4

    .line 252
    .line 253
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/cast/d8;->k(IJLjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_4

    .line 270
    .line 271
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/cast/d8;->k(IJLjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_2

    .line 282
    .line 283
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_4

    .line 288
    .line 289
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-static {v8, v9, p1, v1}, Lcom/google/android/gms/internal/cast/d8;->m(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :pswitch_e
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->r(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_4

    .line 311
    .line 312
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-static {v8, v9, p1, v1}, Lcom/google/android/gms/internal/cast/d8;->m(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_2

    .line 323
    .line 324
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_4

    .line 329
    .line 330
    sget-object v1, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 331
    .line 332
    invoke-virtual {v1, v8, v9, p2}, Lcom/google/android/gms/internal/cast/c8;->g(JLjava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    invoke-virtual {v1, p1, v8, v9, v2}, Lcom/google/android/gms/internal/cast/c8;->c(Ljava/lang/Object;JZ)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_2

    .line 343
    .line 344
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_4

    .line 349
    .line 350
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/cast/d8;->k(IJLjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    goto :goto_2

    .line 361
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-eqz v1, :cond_4

    .line 366
    .line 367
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 368
    .line 369
    .line 370
    move-result-wide v1

    .line 371
    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/cast/d8;->l(Ljava/lang/Object;JJ)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    goto :goto_2

    .line 378
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_4

    .line 383
    .line 384
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/cast/d8;->k(IJLjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    goto :goto_2

    .line 395
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-eqz v1, :cond_4

    .line 400
    .line 401
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 402
    .line 403
    .line 404
    move-result-wide v1

    .line 405
    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/cast/d8;->l(Ljava/lang/Object;JJ)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    goto :goto_2

    .line 412
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-eqz v1, :cond_4

    .line 417
    .line 418
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 419
    .line 420
    .line 421
    move-result-wide v1

    .line 422
    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/cast/d8;->l(Ljava/lang/Object;JJ)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    goto :goto_2

    .line 429
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-eqz v1, :cond_4

    .line 434
    .line 435
    sget-object v1, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 436
    .line 437
    invoke-virtual {v1, v8, v9, p2}, Lcom/google/android/gms/internal/cast/c8;->b(JLjava/lang/Object;)F

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    invoke-virtual {v1, p1, v8, v9, v2}, Lcom/google/android/gms/internal/cast/c8;->f(Ljava/lang/Object;JF)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    goto :goto_2

    .line 448
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-eqz v1, :cond_4

    .line 453
    .line 454
    sget-object v6, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 455
    .line 456
    invoke-virtual {v6, v8, v9, p2}, Lcom/google/android/gms/internal/cast/c8;->a(JLjava/lang/Object;)D

    .line 457
    .line 458
    .line 459
    move-result-wide v10

    .line 460
    move-object v7, p1

    .line 461
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/cast/c8;->e(Ljava/lang/Object;JD)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x3

    .line 468
    .line 469
    goto/16 :goto_0

    .line 470
    .line 471
    :cond_5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/w7;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 476
    .line 477
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    const-string v0, "Mutating immutable message: "

    .line 482
    .line 483
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw p2

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lcom/google/android/gms/internal/cast/c7;)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/p7;->n(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v4, v3

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/p7;->m(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    aget v2, v2, v0

    .line 21
    .line 22
    int-to-long v4, v4

    .line 23
    const/16 v6, 0x4d5

    .line 24
    .line 25
    const/16 v7, 0x4cf

    .line 26
    .line 27
    const/16 v8, 0x25

    .line 28
    .line 29
    const/16 v9, 0x20

    .line 30
    .line 31
    packed-switch v3, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :pswitch_0
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    mul-int/lit8 v1, v1, 0x35

    .line 43
    .line 44
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    :goto_1
    add-int/2addr v2, v1

    .line 53
    move v1, v2

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :pswitch_1
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    mul-int/lit8 v1, v1, 0x35

    .line 63
    .line 64
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    :goto_2
    ushr-long v4, v2, v9

    .line 71
    .line 72
    xor-long/2addr v2, v4

    .line 73
    long-to-int v3, v2

    .line 74
    add-int/2addr v1, v3

    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :pswitch_2
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    mul-int/lit8 v1, v1, 0x35

    .line 84
    .line 85
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    goto :goto_1

    .line 90
    :pswitch_3
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    mul-int/lit8 v1, v1, 0x35

    .line 97
    .line 98
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :pswitch_4
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    mul-int/lit8 v1, v1, 0x35

    .line 112
    .line 113
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    goto :goto_1

    .line 118
    :pswitch_5
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    mul-int/lit8 v1, v1, 0x35

    .line 125
    .line 126
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    goto :goto_1

    .line 131
    :pswitch_6
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_2

    .line 136
    .line 137
    mul-int/lit8 v1, v1, 0x35

    .line 138
    .line 139
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    goto :goto_1

    .line 144
    :pswitch_7
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    mul-int/lit8 v1, v1, 0x35

    .line 151
    .line 152
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    goto :goto_1

    .line 161
    :pswitch_8
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_2

    .line 166
    .line 167
    mul-int/lit8 v1, v1, 0x35

    .line 168
    .line 169
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    goto :goto_1

    .line 178
    :pswitch_9
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_2

    .line 183
    .line 184
    mul-int/lit8 v1, v1, 0x35

    .line 185
    .line 186
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :pswitch_a
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_2

    .line 203
    .line 204
    mul-int/lit8 v1, v1, 0x35

    .line 205
    .line 206
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Ljava/lang/Boolean;

    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    sget-object v3, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 217
    .line 218
    if-eqz v2, :cond_0

    .line 219
    .line 220
    :goto_3
    const/16 v6, 0x4cf

    .line 221
    .line 222
    :cond_0
    add-int/2addr v6, v1

    .line 223
    move v1, v6

    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :pswitch_b
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_2

    .line 231
    .line 232
    mul-int/lit8 v1, v1, 0x35

    .line 233
    .line 234
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    goto/16 :goto_1

    .line 239
    .line 240
    :pswitch_c
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_2

    .line 245
    .line 246
    mul-int/lit8 v1, v1, 0x35

    .line 247
    .line 248
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 249
    .line 250
    .line 251
    move-result-wide v2

    .line 252
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 253
    .line 254
    goto/16 :goto_2

    .line 255
    .line 256
    :pswitch_d
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_2

    .line 261
    .line 262
    mul-int/lit8 v1, v1, 0x35

    .line 263
    .line 264
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/p7;->l(JLjava/lang/Object;)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :pswitch_e
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_2

    .line 275
    .line 276
    mul-int/lit8 v1, v1, 0x35

    .line 277
    .line 278
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 279
    .line 280
    .line 281
    move-result-wide v2

    .line 282
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 283
    .line 284
    goto/16 :goto_2

    .line 285
    .line 286
    :pswitch_f
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_2

    .line 291
    .line 292
    mul-int/lit8 v1, v1, 0x35

    .line 293
    .line 294
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/p7;->o(JLjava/lang/Object;)J

    .line 295
    .line 296
    .line 297
    move-result-wide v2

    .line 298
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :pswitch_10
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_2

    .line 307
    .line 308
    mul-int/lit8 v1, v1, 0x35

    .line 309
    .line 310
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    check-cast v2, Ljava/lang/Float;

    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    goto/16 :goto_1

    .line 325
    .line 326
    :pswitch_11
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_2

    .line 331
    .line 332
    mul-int/lit8 v1, v1, 0x35

    .line 333
    .line 334
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    check-cast v2, Ljava/lang/Double;

    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 341
    .line 342
    .line 343
    move-result-wide v2

    .line 344
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 345
    .line 346
    .line 347
    move-result-wide v2

    .line 348
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 349
    .line 350
    goto/16 :goto_2

    .line 351
    .line 352
    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 353
    .line 354
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    goto/16 :goto_1

    .line 363
    .line 364
    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 365
    .line 366
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 377
    .line 378
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    if-eqz v2, :cond_1

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 385
    .line 386
    .line 387
    move-result v8

    .line 388
    :cond_1
    :goto_4
    add-int/2addr v1, v8

    .line 389
    goto/16 :goto_5

    .line 390
    .line 391
    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 392
    .line 393
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 394
    .line 395
    .line 396
    move-result-wide v2

    .line 397
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 398
    .line 399
    goto/16 :goto_2

    .line 400
    .line 401
    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 402
    .line 403
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    goto/16 :goto_1

    .line 408
    .line 409
    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 410
    .line 411
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 412
    .line 413
    .line 414
    move-result-wide v2

    .line 415
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 416
    .line 417
    goto/16 :goto_2

    .line 418
    .line 419
    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 420
    .line 421
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    goto/16 :goto_1

    .line 426
    .line 427
    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 428
    .line 429
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 436
    .line 437
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    goto/16 :goto_1

    .line 442
    .line 443
    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 444
    .line 445
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    goto/16 :goto_1

    .line 454
    .line 455
    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 456
    .line 457
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    if-eqz v2, :cond_1

    .line 462
    .line 463
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 464
    .line 465
    .line 466
    move-result v8

    .line 467
    goto :goto_4

    .line 468
    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 469
    .line 470
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    check-cast v2, Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    goto/16 :goto_1

    .line 481
    .line 482
    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 483
    .line 484
    sget-object v2, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 485
    .line 486
    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/internal/cast/c8;->g(JLjava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    sget-object v3, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 491
    .line 492
    if-eqz v2, :cond_0

    .line 493
    .line 494
    goto/16 :goto_3

    .line 495
    .line 496
    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 497
    .line 498
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    goto/16 :goto_1

    .line 503
    .line 504
    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 505
    .line 506
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 507
    .line 508
    .line 509
    move-result-wide v2

    .line 510
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 511
    .line 512
    goto/16 :goto_2

    .line 513
    .line 514
    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 515
    .line 516
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    goto/16 :goto_1

    .line 521
    .line 522
    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 523
    .line 524
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 525
    .line 526
    .line 527
    move-result-wide v2

    .line 528
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 529
    .line 530
    goto/16 :goto_2

    .line 531
    .line 532
    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 533
    .line 534
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 535
    .line 536
    .line 537
    move-result-wide v2

    .line 538
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 539
    .line 540
    goto/16 :goto_2

    .line 541
    .line 542
    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 543
    .line 544
    sget-object v2, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 545
    .line 546
    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/internal/cast/c8;->b(JLjava/lang/Object;)F

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    goto/16 :goto_1

    .line 555
    .line 556
    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 557
    .line 558
    sget-object v2, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 559
    .line 560
    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/internal/cast/c8;->a(JLjava/lang/Object;)D

    .line 561
    .line 562
    .line 563
    move-result-wide v2

    .line 564
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 565
    .line 566
    .line 567
    move-result-wide v2

    .line 568
    sget-object v4, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 569
    .line 570
    goto/16 :goto_2

    .line 571
    .line 572
    :cond_2
    :goto_5
    add-int/lit8 v0, v0, 0x3

    .line 573
    .line 574
    goto/16 :goto_0

    .line 575
    .line 576
    :cond_3
    mul-int/lit8 v1, v1, 0x35

    .line 577
    .line 578
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/c7;->zzc:Lcom/google/android/gms/internal/cast/y7;

    .line 579
    .line 580
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    const p1, 0x7bc6f

    .line 584
    .line 585
    .line 586
    add-int/2addr v1, p1

    .line 587
    return v1

    .line 588
    nop

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 4
    .line 5
    aget p2, v0, p2

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p2, v0

    .line 11
    int-to-long v0, p2

    .line 12
    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-ne p2, p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public final n(I)I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method public final p(I)Lcom/google/android/gms/internal/cast/v7;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/p7;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object v1, v0, p1

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/cast/v7;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    sget-object v2, Lcom/google/android/gms/internal/cast/s7;->c:Lcom/google/android/gms/internal/cast/s7;

    .line 16
    .line 17
    aget-object v1, v0, v1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/s7;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/v7;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    aput-object v1, v0, p1

    .line 26
    .line 27
    return-object v1
.end method

.method public final r(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/cast/p7;->n(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/cast/p7;->h:Lsun/misc/Unsafe;

    .line 17
    .line 18
    int-to-long v2, v0

    .line 19
    invoke-virtual {v1, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/p7;->i(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/cast/v7;->b()Lcom/google/android/gms/internal/cast/c7;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v0}, Lcom/google/android/gms/internal/cast/v7;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/cast/p7;->t(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/p7;->i(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Lcom/google/android/gms/internal/cast/v7;->b()Lcom/google/android/gms/internal/cast/c7;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p3, v4, p2}, Lcom/google/android/gms/internal/cast/v7;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p2, v4

    .line 80
    :cond_3
    invoke-interface {p3, p2, v0}, Lcom/google/android/gms/internal/cast/v7;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 87
    .line 88
    aget p2, v0, p2

    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Source subfield "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p2, " is present but null: "

    .line 105
    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method public final s(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 2
    .line 3
    aget v1, v0, p2

    .line 4
    .line 5
    invoke-virtual {p0, v1, p2, p3}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/cast/p7;->n(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    sget-object v4, Lcom/google/android/gms/internal/cast/p7;->h:Lsun/misc/Unsafe;

    .line 21
    .line 22
    int-to-long v5, v2

    .line 23
    invoke-virtual {v4, p3, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/cast/p7;->p(I)Lcom/google/android/gms/internal/cast/v7;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, v1, p2, p1}, Lcom/google/android/gms/internal/cast/p7;->j(IILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_2

    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/p7;->i(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-nez v7, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, p1, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/cast/v7;->b()Lcom/google/android/gms/internal/cast/c7;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-interface {p3, v7, v2}, Lcom/google/android/gms/internal/cast/v7;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    add-int/lit8 p2, p2, 0x2

    .line 60
    .line 61
    aget p2, v0, p2

    .line 62
    .line 63
    and-int/2addr p2, v3

    .line 64
    int-to-long p2, p2

    .line 65
    invoke-static {v1, p2, p3, p1}, Lcom/google/android/gms/internal/cast/d8;->k(IJLjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/p7;->i(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    invoke-interface {p3}, Lcom/google/android/gms/internal/cast/v7;->b()Lcom/google/android/gms/internal/cast/c7;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {p3, v0, p2}, Lcom/google/android/gms/internal/cast/v7;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, p1, v5, v6, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object p2, v0

    .line 90
    :cond_3
    invoke-interface {p3, p2, v2}, Lcom/google/android/gms/internal/cast/v7;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    aget p2, v0, p2

    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "Source subfield "

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p2, " is present but null: "

    .line 113
    .line 114
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method

.method public final t(ILjava/lang/Object;)V
    .locals 5

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, p1

    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p1, p1, 0x14

    .line 21
    .line 22
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    shl-int p1, v3, p1

    .line 28
    .line 29
    or-int/2addr p1, v2

    .line 30
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->k(IJLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final v(ILjava/lang/Object;)Z
    .locals 9

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/p7;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    cmp-long v8, v2, v4

    .line 19
    .line 20
    if-nez v8, :cond_14

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/p7;->n(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    and-int v0, p1, v1

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/p7;->m(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    int-to-long v0, v0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    return v7

    .line 51
    :cond_0
    return v6

    .line 52
    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    cmp-long v0, p1, v2

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    return v7

    .line 61
    :cond_1
    return v6

    .line 62
    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    return v7

    .line 69
    :cond_2
    return v6

    .line 70
    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    cmp-long v0, p1, v2

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    return v7

    .line 79
    :cond_3
    return v6

    .line 80
    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    return v7

    .line 87
    :cond_4
    return v6

    .line 88
    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    return v7

    .line 95
    :cond_5
    return v6

    .line 96
    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    return v7

    .line 103
    :cond_6
    return v6

    .line 104
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/cast/w6;->c:Lcom/google/android/gms/internal/cast/w6;

    .line 105
    .line 106
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/w6;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_7

    .line 115
    .line 116
    return v7

    .line 117
    :cond_7
    return v6

    .line 118
    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_8

    .line 123
    .line 124
    return v7

    .line 125
    :cond_8
    return v6

    .line 126
    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->i(JLjava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    instance-of p2, p1, Ljava/lang/String;

    .line 131
    .line 132
    if-eqz p2, :cond_a

    .line 133
    .line 134
    check-cast p1, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_9

    .line 141
    .line 142
    return v7

    .line 143
    :cond_9
    return v6

    .line 144
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/cast/w6;

    .line 145
    .line 146
    if-eqz p2, :cond_c

    .line 147
    .line 148
    sget-object p2, Lcom/google/android/gms/internal/cast/w6;->c:Lcom/google/android/gms/internal/cast/w6;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/w6;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_b

    .line 155
    .line 156
    return v7

    .line 157
    :cond_b
    return v6

    .line 158
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 165
    .line 166
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/cast/c8;->g(JLjava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    return p1

    .line 171
    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_d

    .line 176
    .line 177
    return v7

    .line 178
    :cond_d
    return v6

    .line 179
    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 180
    .line 181
    .line 182
    move-result-wide p1

    .line 183
    cmp-long v0, p1, v2

    .line 184
    .line 185
    if-eqz v0, :cond_e

    .line 186
    .line 187
    return v7

    .line 188
    :cond_e
    return v6

    .line 189
    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_f

    .line 194
    .line 195
    return v7

    .line 196
    :cond_f
    return v6

    .line 197
    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 198
    .line 199
    .line 200
    move-result-wide p1

    .line 201
    cmp-long v0, p1, v2

    .line 202
    .line 203
    if-eqz v0, :cond_10

    .line 204
    .line 205
    return v7

    .line 206
    :cond_10
    return v6

    .line 207
    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/cast/d8;->g(JLjava/lang/Object;)J

    .line 208
    .line 209
    .line 210
    move-result-wide p1

    .line 211
    cmp-long v0, p1, v2

    .line 212
    .line 213
    if-eqz v0, :cond_11

    .line 214
    .line 215
    return v7

    .line 216
    :cond_11
    return v6

    .line 217
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 218
    .line 219
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/cast/c8;->b(JLjava/lang/Object;)F

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_12

    .line 228
    .line 229
    return v7

    .line 230
    :cond_12
    return v6

    .line 231
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/cast/d8;->c:Lcom/google/android/gms/internal/cast/c8;

    .line 232
    .line 233
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/cast/c8;->a(JLjava/lang/Object;)D

    .line 234
    .line 235
    .line 236
    move-result-wide p1

    .line 237
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 238
    .line 239
    .line 240
    move-result-wide p1

    .line 241
    cmp-long v0, p1, v2

    .line 242
    .line 243
    if-eqz v0, :cond_13

    .line 244
    .line 245
    return v7

    .line 246
    :cond_13
    return v6

    .line 247
    :cond_14
    ushr-int/lit8 p1, v0, 0x14

    .line 248
    .line 249
    shl-int p1, v7, p1

    .line 250
    .line 251
    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/cast/d8;->f(JLjava/lang/Object;)I

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    and-int/2addr p1, p2

    .line 256
    if-eqz p1, :cond_15

    .line 257
    .line 258
    return v7

    .line 259
    :cond_15
    return v6

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/cast/p7;->v(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    and-int p1, p4, p5

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return p1
.end method
