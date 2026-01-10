.class public final Lcom/google/android/gms/internal/cast/z1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# static fields
.field public static final g:Lcom/google/android/gms/internal/cast/z1;


# instance fields
.field public transient a:Lcom/google/android/gms/internal/cast/w1;

.field public transient b:Lcom/google/android/gms/internal/cast/x1;

.field public transient c:Lcom/google/android/gms/internal/cast/y1;

.field public final transient d:Ljava/lang/Object;

.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/z1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/cast/z1;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/internal/cast/z1;->g:Lcom/google/android/gms/internal/cast/z1;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/z1;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/z1;->e:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/cast/z1;->f:I

    .line 9
    .line 10
    return-void
.end method

.method public static a(Ljava/util/Set;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/Collection;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x4

    .line 13
    :goto_0
    add-int/2addr v2, v2

    .line 14
    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v1, v1

    .line 23
    if-le v1, v2, :cond_1

    .line 24
    .line 25
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/cast/z0;->b(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x1

    .line 44
    if-eqz v4, :cond_5

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    add-int/lit8 v7, v2, 0x1

    .line 61
    .line 62
    array-length v8, v3

    .line 63
    add-int v9, v7, v7

    .line 64
    .line 65
    if-le v9, v8, :cond_2

    .line 66
    .line 67
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/cast/z0;->b(II)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :cond_2
    if-eqz v6, :cond_4

    .line 76
    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    add-int/2addr v2, v2

    .line 80
    aput-object v6, v3, v2

    .line 81
    .line 82
    add-int/2addr v2, v5

    .line 83
    aput-object v4, v3, v2

    .line 84
    .line 85
    move v2, v7

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "null value in entry: "

    .line 94
    .line 95
    const-string v3, "=null"

    .line 96
    .line 97
    invoke-static {v2, v1, v3}, La/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 106
    .line 107
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v2, "null key in entry: null="

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_5
    if-nez v2, :cond_7

    .line 122
    .line 123
    :cond_6
    :goto_2
    const/4 v0, 0x0

    .line 124
    goto/16 :goto_f

    .line 125
    .line 126
    :cond_7
    if-ne v2, v5, :cond_8

    .line 127
    .line 128
    aget-object v1, v3, v1

    .line 129
    .line 130
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    aget-object v1, v3, v5

    .line 134
    .line 135
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_8
    array-length v4, v3

    .line 140
    shr-int/2addr v4, v5

    .line 141
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/cast/z0;->k(II)V

    .line 142
    .line 143
    .line 144
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/s1;->g(I)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-ne v2, v5, :cond_9

    .line 149
    .line 150
    aget-object v2, v3, v1

    .line 151
    .line 152
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    aget-object v2, v3, v5

    .line 156
    .line 157
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    const/4 v2, 0x2

    .line 161
    const/4 v4, 0x0

    .line 162
    goto/16 :goto_e

    .line 163
    .line 164
    :cond_9
    add-int/lit8 v7, v4, -0x1

    .line 165
    .line 166
    const/4 v8, -0x1

    .line 167
    const/16 v9, 0x80

    .line 168
    .line 169
    const/4 v10, 0x3

    .line 170
    if-gt v4, v9, :cond_f

    .line 171
    .line 172
    new-array v4, v4, [B

    .line 173
    .line 174
    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 175
    .line 176
    .line 177
    const/4 v8, 0x0

    .line 178
    const/4 v9, 0x0

    .line 179
    const/4 v11, 0x0

    .line 180
    :goto_3
    if-ge v8, v2, :cond_d

    .line 181
    .line 182
    add-int v12, v9, v9

    .line 183
    .line 184
    add-int v13, v8, v8

    .line 185
    .line 186
    aget-object v14, v3, v13

    .line 187
    .line 188
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    xor-int/2addr v13, v5

    .line 192
    aget-object v13, v3, v13

    .line 193
    .line 194
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 198
    .line 199
    .line 200
    move-result v15

    .line 201
    invoke-static {v15}, Lcom/google/android/gms/internal/cast/z0;->a(I)I

    .line 202
    .line 203
    .line 204
    move-result v15

    .line 205
    :goto_4
    and-int/2addr v15, v7

    .line 206
    aget-byte v0, v4, v15

    .line 207
    .line 208
    const/16 v6, 0xff

    .line 209
    .line 210
    and-int/2addr v0, v6

    .line 211
    if-ne v0, v6, :cond_b

    .line 212
    .line 213
    int-to-byte v0, v12

    .line 214
    aput-byte v0, v4, v15

    .line 215
    .line 216
    if-ge v9, v8, :cond_a

    .line 217
    .line 218
    aput-object v14, v3, v12

    .line 219
    .line 220
    xor-int/lit8 v0, v12, 0x1

    .line 221
    .line 222
    aput-object v13, v3, v0

    .line 223
    .line 224
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_b
    aget-object v6, v3, v0

    .line 228
    .line 229
    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-eqz v6, :cond_c

    .line 234
    .line 235
    xor-int/lit8 v0, v0, 0x1

    .line 236
    .line 237
    new-instance v11, Lcom/google/android/gms/internal/cast/r1;

    .line 238
    .line 239
    aget-object v6, v3, v0

    .line 240
    .line 241
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    invoke-direct {v11, v14, v13, v6}, Lcom/google/android/gms/internal/cast/r1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    aput-object v13, v3, v0

    .line 248
    .line 249
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_c
    add-int/lit8 v15, v15, 0x1

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_d
    if-ne v9, v2, :cond_e

    .line 256
    .line 257
    :goto_6
    const/4 v2, 0x2

    .line 258
    goto/16 :goto_e

    .line 259
    .line 260
    :cond_e
    new-array v0, v10, [Ljava/lang/Object;

    .line 261
    .line 262
    aput-object v4, v0, v1

    .line 263
    .line 264
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    aput-object v2, v0, v5

    .line 269
    .line 270
    const/4 v2, 0x2

    .line 271
    aput-object v11, v0, v2

    .line 272
    .line 273
    :goto_7
    move-object v4, v0

    .line 274
    goto/16 :goto_e

    .line 275
    .line 276
    :cond_f
    const v0, 0x8000

    .line 277
    .line 278
    .line 279
    if-gt v4, v0, :cond_15

    .line 280
    .line 281
    new-array v4, v4, [S

    .line 282
    .line 283
    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([SS)V

    .line 284
    .line 285
    .line 286
    const/4 v0, 0x0

    .line 287
    const/4 v6, 0x0

    .line 288
    const/4 v8, 0x0

    .line 289
    :goto_8
    if-ge v0, v2, :cond_13

    .line 290
    .line 291
    add-int v9, v6, v6

    .line 292
    .line 293
    add-int v11, v0, v0

    .line 294
    .line 295
    aget-object v12, v3, v11

    .line 296
    .line 297
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    xor-int/2addr v11, v5

    .line 301
    aget-object v11, v3, v11

    .line 302
    .line 303
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    invoke-static {v13}, Lcom/google/android/gms/internal/cast/z0;->a(I)I

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    :goto_9
    and-int/2addr v13, v7

    .line 315
    aget-short v14, v4, v13

    .line 316
    .line 317
    int-to-char v14, v14

    .line 318
    const v15, 0xffff

    .line 319
    .line 320
    .line 321
    if-ne v14, v15, :cond_11

    .line 322
    .line 323
    int-to-short v14, v9

    .line 324
    aput-short v14, v4, v13

    .line 325
    .line 326
    if-ge v6, v0, :cond_10

    .line 327
    .line 328
    aput-object v12, v3, v9

    .line 329
    .line 330
    xor-int/lit8 v9, v9, 0x1

    .line 331
    .line 332
    aput-object v11, v3, v9

    .line 333
    .line 334
    :cond_10
    add-int/lit8 v6, v6, 0x1

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_11
    aget-object v15, v3, v14

    .line 338
    .line 339
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v15

    .line 343
    if-eqz v15, :cond_12

    .line 344
    .line 345
    xor-int/lit8 v8, v14, 0x1

    .line 346
    .line 347
    new-instance v9, Lcom/google/android/gms/internal/cast/r1;

    .line 348
    .line 349
    aget-object v13, v3, v8

    .line 350
    .line 351
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    invoke-direct {v9, v12, v11, v13}, Lcom/google/android/gms/internal/cast/r1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    aput-object v11, v3, v8

    .line 358
    .line 359
    move-object v8, v9

    .line 360
    :goto_a
    add-int/lit8 v0, v0, 0x1

    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_12
    add-int/lit8 v13, v13, 0x1

    .line 364
    .line 365
    goto :goto_9

    .line 366
    :cond_13
    if-ne v6, v2, :cond_14

    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_14
    new-array v0, v10, [Ljava/lang/Object;

    .line 370
    .line 371
    aput-object v4, v0, v1

    .line 372
    .line 373
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    aput-object v2, v0, v5

    .line 378
    .line 379
    const/4 v2, 0x2

    .line 380
    aput-object v8, v0, v2

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_15
    new-array v4, v4, [I

    .line 384
    .line 385
    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([II)V

    .line 386
    .line 387
    .line 388
    const/4 v0, 0x0

    .line 389
    const/4 v6, 0x0

    .line 390
    const/4 v9, 0x0

    .line 391
    :goto_b
    if-ge v0, v2, :cond_19

    .line 392
    .line 393
    add-int v11, v6, v6

    .line 394
    .line 395
    add-int v12, v0, v0

    .line 396
    .line 397
    aget-object v13, v3, v12

    .line 398
    .line 399
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    xor-int/2addr v12, v5

    .line 403
    aget-object v12, v3, v12

    .line 404
    .line 405
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 409
    .line 410
    .line 411
    move-result v14

    .line 412
    invoke-static {v14}, Lcom/google/android/gms/internal/cast/z0;->a(I)I

    .line 413
    .line 414
    .line 415
    move-result v14

    .line 416
    :goto_c
    and-int/2addr v14, v7

    .line 417
    aget v15, v4, v14

    .line 418
    .line 419
    if-ne v15, v8, :cond_17

    .line 420
    .line 421
    aput v11, v4, v14

    .line 422
    .line 423
    if-ge v6, v0, :cond_16

    .line 424
    .line 425
    aput-object v13, v3, v11

    .line 426
    .line 427
    xor-int/lit8 v11, v11, 0x1

    .line 428
    .line 429
    aput-object v12, v3, v11

    .line 430
    .line 431
    :cond_16
    add-int/lit8 v6, v6, 0x1

    .line 432
    .line 433
    goto :goto_d

    .line 434
    :cond_17
    aget-object v8, v3, v15

    .line 435
    .line 436
    invoke-virtual {v13, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v8

    .line 440
    if-eqz v8, :cond_18

    .line 441
    .line 442
    xor-int/lit8 v8, v15, 0x1

    .line 443
    .line 444
    new-instance v9, Lcom/google/android/gms/internal/cast/r1;

    .line 445
    .line 446
    aget-object v11, v3, v8

    .line 447
    .line 448
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    invoke-direct {v9, v13, v12, v11}, Lcom/google/android/gms/internal/cast/r1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    aput-object v12, v3, v8

    .line 455
    .line 456
    :goto_d
    add-int/lit8 v0, v0, 0x1

    .line 457
    .line 458
    const/4 v8, -0x1

    .line 459
    goto :goto_b

    .line 460
    :cond_18
    add-int/lit8 v14, v14, 0x1

    .line 461
    .line 462
    const/4 v8, -0x1

    .line 463
    goto :goto_c

    .line 464
    :cond_19
    if-ne v6, v2, :cond_1a

    .line 465
    .line 466
    goto/16 :goto_6

    .line 467
    .line 468
    :cond_1a
    new-array v0, v10, [Ljava/lang/Object;

    .line 469
    .line 470
    aput-object v4, v0, v1

    .line 471
    .line 472
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    aput-object v2, v0, v5

    .line 477
    .line 478
    const/4 v2, 0x2

    .line 479
    aput-object v9, v0, v2

    .line 480
    .line 481
    goto/16 :goto_7

    .line 482
    .line 483
    :goto_e
    instance-of v0, v4, [Ljava/lang/Object;

    .line 484
    .line 485
    if-eqz v0, :cond_6

    .line 486
    .line 487
    check-cast v4, [Ljava/lang/Object;

    .line 488
    .line 489
    aget-object v0, v4, v2

    .line 490
    .line 491
    check-cast v0, Lcom/google/android/gms/internal/cast/r1;

    .line 492
    .line 493
    aget-object v1, v4, v1

    .line 494
    .line 495
    aget-object v1, v4, v5

    .line 496
    .line 497
    check-cast v1, Ljava/lang/Integer;

    .line 498
    .line 499
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    add-int/2addr v1, v1

    .line 504
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    :goto_f
    if-nez v0, :cond_1b

    .line 508
    .line 509
    return-void

    .line 510
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 511
    .line 512
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/r1;->a:Ljava/lang/Object;

    .line 513
    .line 514
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    iget-object v4, v0, Lcom/google/android/gms/internal/cast/r1;->b:Ljava/lang/Object;

    .line 519
    .line 520
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/r1;->c:Ljava/lang/Object;

    .line 529
    .line 530
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    new-instance v5, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    const-string v6, "Multiple entries with same key: "

    .line 537
    .line 538
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v3, "="

    .line 545
    .line 546
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    const-string v4, " and "

    .line 553
    .line 554
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    throw v1
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/z1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/z1;->c:Lcom/google/android/gms/internal/cast/y1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/y1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/z1;->e:[Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iget v3, p0, Lcom/google/android/gms/internal/cast/z1;->f:I

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cast/y1;-><init>([Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/z1;->c:Lcom/google/android/gms/internal/cast/y1;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/q1;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/z1;->a:Lcom/google/android/gms/internal/cast/w1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/w1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/z1;->e:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/gms/internal/cast/z1;->f:I

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/cast/w1;-><init>(Lcom/google/android/gms/internal/cast/z1;[Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/z1;->a:Lcom/google/android/gms/internal/cast/w1;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1

    .line 11
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/z1;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    :cond_0
    :goto_0
    move-object p1, v0

    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_1
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/cast/z1;->f:I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/z1;->e:[Ljava/lang/Object;

    .line 11
    .line 12
    if-ne v2, v1, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aget-object v2, v3, v2

    .line 16
    .line 17
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    aget-object p1, v3, v1

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/z1;->d:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    instance-of v4, v2, [B

    .line 39
    .line 40
    const/4 v5, -0x1

    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    move-object v4, v2

    .line 44
    check-cast v4, [B

    .line 45
    .line 46
    array-length v2, v4

    .line 47
    add-int/lit8 v6, v2, -0x1

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/z0;->a(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :goto_1
    and-int/2addr v2, v6

    .line 58
    aget-byte v5, v4, v2

    .line 59
    .line 60
    const/16 v7, 0xff

    .line 61
    .line 62
    and-int/2addr v5, v7

    .line 63
    if-ne v5, v7, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    aget-object v7, v3, v5

    .line 67
    .line 68
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    xor-int/lit8 p1, v5, 0x1

    .line 75
    .line 76
    aget-object p1, v3, p1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    instance-of v4, v2, [S

    .line 83
    .line 84
    if-eqz v4, :cond_9

    .line 85
    .line 86
    move-object v4, v2

    .line 87
    check-cast v4, [S

    .line 88
    .line 89
    array-length v2, v4

    .line 90
    add-int/lit8 v6, v2, -0x1

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/z0;->a(I)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    :goto_2
    and-int/2addr v2, v6

    .line 101
    aget-short v5, v4, v2

    .line 102
    .line 103
    int-to-char v5, v5

    .line 104
    const v7, 0xffff

    .line 105
    .line 106
    .line 107
    if-ne v5, v7, :cond_7

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    aget-object v7, v3, v5

    .line 111
    .line 112
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_8

    .line 117
    .line 118
    xor-int/lit8 p1, v5, 0x1

    .line 119
    .line 120
    aget-object p1, v3, p1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_9
    check-cast v2, [I

    .line 127
    .line 128
    array-length v4, v2

    .line 129
    add-int/2addr v4, v5

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-static {v6}, Lcom/google/android/gms/internal/cast/z0;->a(I)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    :goto_3
    and-int/2addr v6, v4

    .line 139
    aget v7, v2, v6

    .line 140
    .line 141
    if-ne v7, v5, :cond_a

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    aget-object v8, v3, v7

    .line 146
    .line 147
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_c

    .line 152
    .line 153
    xor-int/lit8 p1, v7, 0x1

    .line 154
    .line 155
    aget-object p1, v3, p1

    .line 156
    .line 157
    :goto_4
    if-nez p1, :cond_b

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_b
    return-object p1

    .line 161
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto :goto_3
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/z1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/z1;->a:Lcom/google/android/gms/internal/cast/w1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/w1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/z1;->e:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/gms/internal/cast/z1;->f:I

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/cast/w1;-><init>(Lcom/google/android/gms/internal/cast/z1;[Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/z1;->a:Lcom/google/android/gms/internal/cast/w1;

    .line 15
    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_1
    add-int/2addr v2, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/z1;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/z1;->b:Lcom/google/android/gms/internal/cast/x1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/y1;

    .line 6
    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/cast/z1;->f:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/z1;->e:[Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/cast/y1;-><init>([Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/cast/x1;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/cast/x1;-><init>(Lcom/google/android/gms/internal/cast/z1;Lcom/google/android/gms/internal/cast/y1;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/z1;->b:Lcom/google/android/gms/internal/cast/x1;

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/z1;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/z1;->f:I

    .line 2
    .line 3
    if-ltz v0, :cond_2

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    const-wide/16 v2, 0x8

    .line 7
    .line 8
    mul-long v0, v0, v2

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-wide/32 v3, 0x40000000

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    long-to-int v1, v0

    .line 20
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x7b

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/z1;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/gms/internal/cast/w1;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/w1;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/util/Map$Entry;

    .line 50
    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    const-string v1, ", "

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const/16 v1, 0x3d

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/16 v0, 0x7d

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string v2, "size cannot be negative but was: "

    .line 92
    .line 93
    invoke-static {v0, v2}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v1
.end method

.method public final values()Ljava/util/Collection;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/z1;->c:Lcom/google/android/gms/internal/cast/y1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/y1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/z1;->e:[Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iget v3, p0, Lcom/google/android/gms/internal/cast/z1;->f:I

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cast/y1;-><init>([Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/z1;->c:Lcom/google/android/gms/internal/cast/y1;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method
