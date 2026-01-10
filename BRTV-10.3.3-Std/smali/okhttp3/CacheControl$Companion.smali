.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj9/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method private final indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ge p3, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {p2, v1}, Lr9/f;->W(Ljava/lang/CharSequence;C)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return p3

    .line 18
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public static synthetic indexOfElement$default(Lokhttp3/CacheControl$Companion;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "headers"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, -0x1

    .line 20
    const/4 v13, -0x1

    .line 21
    const/4 v14, 0x0

    .line 22
    const/4 v15, 0x0

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    const/16 v17, -0x1

    .line 26
    .line 27
    const/16 v18, -0x1

    .line 28
    .line 29
    const/16 v19, 0x0

    .line 30
    .line 31
    const/16 v20, 0x0

    .line 32
    .line 33
    const/16 v21, 0x0

    .line 34
    .line 35
    :goto_0
    if-ge v7, v2, :cond_14

    .line 36
    .line 37
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "Cache-Control"

    .line 46
    .line 47
    invoke-static {v6, v5}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    if-eqz v9, :cond_0

    .line 54
    .line 55
    :goto_1
    const/4 v8, 0x0

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    move-object v9, v4

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    const-string v5, "Pragma"

    .line 60
    .line 61
    invoke-static {v6, v5}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_13

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_2
    const/4 v5, 0x0

    .line 69
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-ge v5, v6, :cond_12

    .line 74
    .line 75
    const-string v6, "=,;"

    .line 76
    .line 77
    invoke-direct {v0, v4, v6, v5}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 86
    .line 87
    invoke-static {v5, v3}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v5}, Lr9/f;->n0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eq v6, v1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    move/from16 v25, v2

    .line 109
    .line 110
    const/16 v2, 0x2c

    .line 111
    .line 112
    if-eq v1, v2, :cond_2

    .line 113
    .line 114
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/16 v2, 0x3b

    .line 119
    .line 120
    if-ne v1, v2, :cond_3

    .line 121
    .line 122
    :cond_2
    :goto_4
    move-object/from16 v26, v9

    .line 123
    .line 124
    const/4 v9, 0x0

    .line 125
    const/16 v24, 0x1

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 129
    .line 130
    invoke-static {v4, v6}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-ge v1, v2, :cond_4

    .line 139
    .line 140
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    const/16 v6, 0x22

    .line 145
    .line 146
    if-ne v2, v6, :cond_4

    .line 147
    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 149
    .line 150
    const/4 v2, 0x4

    .line 151
    move-object/from16 v26, v9

    .line 152
    .line 153
    const/4 v9, 0x0

    .line 154
    invoke-static {v4, v6, v1, v9, v2}, Lr9/f;->b0(Ljava/lang/CharSequence;CIZI)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v1, v3}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const/16 v24, 0x1

    .line 166
    .line 167
    add-int/lit8 v2, v2, 0x1

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_4
    move-object/from16 v26, v9

    .line 171
    .line 172
    const/4 v9, 0x0

    .line 173
    const/16 v24, 0x1

    .line 174
    .line 175
    const-string v2, ",;"

    .line 176
    .line 177
    invoke-direct {v0, v4, v2, v1}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v1, v3}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Lr9/f;->n0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    goto :goto_6

    .line 197
    :cond_5
    move/from16 v25, v2

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 201
    .line 202
    move v2, v6

    .line 203
    const/4 v1, 0x0

    .line 204
    :goto_6
    const-string v3, "no-cache"

    .line 205
    .line 206
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_6

    .line 211
    .line 212
    move-object/from16 v1, p1

    .line 213
    .line 214
    move v5, v2

    .line 215
    move/from16 v2, v25

    .line 216
    .line 217
    move-object/from16 v9, v26

    .line 218
    .line 219
    const/4 v10, 0x1

    .line 220
    goto/16 :goto_3

    .line 221
    .line 222
    :cond_6
    const-string v3, "no-store"

    .line 223
    .line 224
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_7

    .line 229
    .line 230
    move-object/from16 v1, p1

    .line 231
    .line 232
    move v5, v2

    .line 233
    move/from16 v2, v25

    .line 234
    .line 235
    move-object/from16 v9, v26

    .line 236
    .line 237
    const/4 v11, 0x1

    .line 238
    goto/16 :goto_3

    .line 239
    .line 240
    :cond_7
    const-string v3, "max-age"

    .line 241
    .line 242
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_9

    .line 247
    .line 248
    const/4 v3, -0x1

    .line 249
    invoke-static {v1, v3}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    :cond_8
    :goto_7
    move-object/from16 v1, p1

    .line 254
    .line 255
    move v5, v2

    .line 256
    move/from16 v2, v25

    .line 257
    .line 258
    move-object/from16 v9, v26

    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :cond_9
    const/4 v3, -0x1

    .line 263
    const-string v6, "s-maxage"

    .line 264
    .line 265
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-eqz v6, :cond_a

    .line 270
    .line 271
    invoke-static {v1, v3}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    goto :goto_7

    .line 276
    :cond_a
    const-string v3, "private"

    .line 277
    .line 278
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_b

    .line 283
    .line 284
    move-object/from16 v1, p1

    .line 285
    .line 286
    move v5, v2

    .line 287
    move/from16 v2, v25

    .line 288
    .line 289
    move-object/from16 v9, v26

    .line 290
    .line 291
    const/4 v14, 0x1

    .line 292
    goto/16 :goto_3

    .line 293
    .line 294
    :cond_b
    const-string v3, "public"

    .line 295
    .line 296
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_c

    .line 301
    .line 302
    move-object/from16 v1, p1

    .line 303
    .line 304
    move v5, v2

    .line 305
    move/from16 v2, v25

    .line 306
    .line 307
    move-object/from16 v9, v26

    .line 308
    .line 309
    const/4 v15, 0x1

    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    :cond_c
    const-string v3, "must-revalidate"

    .line 313
    .line 314
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-eqz v3, :cond_d

    .line 319
    .line 320
    move-object/from16 v1, p1

    .line 321
    .line 322
    move v5, v2

    .line 323
    move/from16 v2, v25

    .line 324
    .line 325
    move-object/from16 v9, v26

    .line 326
    .line 327
    const/16 v16, 0x1

    .line 328
    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    :cond_d
    const-string v3, "max-stale"

    .line 332
    .line 333
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-eqz v3, :cond_e

    .line 338
    .line 339
    const v3, 0x7fffffff

    .line 340
    .line 341
    .line 342
    invoke-static {v1, v3}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 343
    .line 344
    .line 345
    move-result v17

    .line 346
    goto :goto_7

    .line 347
    :cond_e
    const-string v3, "min-fresh"

    .line 348
    .line 349
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-eqz v3, :cond_f

    .line 354
    .line 355
    const/4 v3, -0x1

    .line 356
    invoke-static {v1, v3}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 357
    .line 358
    .line 359
    move-result v18

    .line 360
    goto :goto_7

    .line 361
    :cond_f
    const/4 v3, -0x1

    .line 362
    const-string v1, "only-if-cached"

    .line 363
    .line 364
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_10

    .line 369
    .line 370
    move-object/from16 v1, p1

    .line 371
    .line 372
    move v5, v2

    .line 373
    move/from16 v2, v25

    .line 374
    .line 375
    move-object/from16 v9, v26

    .line 376
    .line 377
    const/16 v19, 0x1

    .line 378
    .line 379
    goto/16 :goto_3

    .line 380
    .line 381
    :cond_10
    const-string v1, "no-transform"

    .line 382
    .line 383
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_11

    .line 388
    .line 389
    move-object/from16 v1, p1

    .line 390
    .line 391
    move v5, v2

    .line 392
    move/from16 v2, v25

    .line 393
    .line 394
    move-object/from16 v9, v26

    .line 395
    .line 396
    const/16 v20, 0x1

    .line 397
    .line 398
    goto/16 :goto_3

    .line 399
    .line 400
    :cond_11
    const-string v1, "immutable"

    .line 401
    .line 402
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-eqz v1, :cond_8

    .line 407
    .line 408
    move-object/from16 v1, p1

    .line 409
    .line 410
    move v5, v2

    .line 411
    move/from16 v2, v25

    .line 412
    .line 413
    move-object/from16 v9, v26

    .line 414
    .line 415
    const/16 v21, 0x1

    .line 416
    .line 417
    goto/16 :goto_3

    .line 418
    .line 419
    :cond_12
    move/from16 v25, v2

    .line 420
    .line 421
    move-object/from16 v26, v9

    .line 422
    .line 423
    const/4 v3, -0x1

    .line 424
    const/4 v9, 0x0

    .line 425
    const/16 v24, 0x1

    .line 426
    .line 427
    move-object/from16 v6, v26

    .line 428
    .line 429
    goto :goto_8

    .line 430
    :cond_13
    move/from16 v25, v2

    .line 431
    .line 432
    move-object v6, v9

    .line 433
    const/4 v3, -0x1

    .line 434
    const/4 v9, 0x0

    .line 435
    const/16 v24, 0x1

    .line 436
    .line 437
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 438
    .line 439
    move-object/from16 v1, p1

    .line 440
    .line 441
    move-object v9, v6

    .line 442
    move/from16 v2, v25

    .line 443
    .line 444
    goto/16 :goto_0

    .line 445
    .line 446
    :cond_14
    move-object v6, v9

    .line 447
    if-nez v8, :cond_15

    .line 448
    .line 449
    const/16 v22, 0x0

    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_15
    move-object/from16 v22, v6

    .line 453
    .line 454
    :goto_9
    new-instance v1, Lokhttp3/CacheControl;

    .line 455
    .line 456
    const/16 v23, 0x0

    .line 457
    .line 458
    move-object v9, v1

    .line 459
    invoke-direct/range {v9 .. v23}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lj9/f;)V

    .line 460
    .line 461
    .line 462
    return-object v1
.end method
