.class public final Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Options;
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
    invoke-direct {p0}, Lokio/Options$Companion;-><init>()V

    return-void
.end method

.method private final buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p3

    .line 4
    .line 5
    move/from16 v11, p4

    .line 6
    .line 7
    move-object/from16 v12, p5

    .line 8
    .line 9
    move/from16 v0, p6

    .line 10
    .line 11
    move/from16 v13, p7

    .line 12
    .line 13
    move-object/from16 v14, p8

    .line 14
    .line 15
    const-string v1, "Failed requirement."

    .line 16
    .line 17
    if-ge v0, v13, :cond_11

    .line 18
    .line 19
    move v2, v0

    .line 20
    :goto_0
    if-ge v2, v13, :cond_1

    .line 21
    .line 22
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lokio/ByteString;

    .line 27
    .line 28
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-lt v3, v11, :cond_0

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lokio/ByteString;

    .line 48
    .line 49
    add-int/lit8 v2, v13, -0x1

    .line 50
    .line 51
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lokio/ByteString;

    .line 56
    .line 57
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v15, -0x1

    .line 62
    if-ne v11, v3, :cond_2

    .line 63
    .line 64
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/Number;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lokio/ByteString;

    .line 81
    .line 82
    move v6, v0

    .line 83
    move v0, v1

    .line 84
    move-object v1, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v6, v0

    .line 87
    const/4 v0, -0x1

    .line 88
    :goto_1
    invoke-virtual {v1, v11}, Lokio/ByteString;->getByte(I)B

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v2, v11}, Lokio/ByteString;->getByte(I)B

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/4 v5, 0x2

    .line 97
    if-eq v3, v4, :cond_c

    .line 98
    .line 99
    add-int/lit8 v1, v6, 0x1

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    :goto_2
    if-ge v1, v13, :cond_4

    .line 103
    .line 104
    add-int/lit8 v3, v1, -0x1

    .line 105
    .line 106
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lokio/ByteString;

    .line 111
    .line 112
    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lokio/ByteString;

    .line 121
    .line 122
    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eq v3, v4, :cond_3

    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v3

    .line 137
    add-long v3, p1, v3

    .line 138
    .line 139
    int-to-long v7, v5

    .line 140
    add-long/2addr v3, v7

    .line 141
    mul-int/lit8 v1, v2, 0x2

    .line 142
    .line 143
    int-to-long v7, v1

    .line 144
    add-long v16, v3, v7

    .line 145
    .line 146
    invoke-virtual {v10, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 150
    .line 151
    .line 152
    move v0, v6

    .line 153
    :goto_3
    if-ge v0, v13, :cond_7

    .line 154
    .line 155
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lokio/ByteString;

    .line 160
    .line 161
    invoke-virtual {v1, v11}, Lokio/ByteString;->getByte(I)B

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eq v0, v6, :cond_5

    .line 166
    .line 167
    add-int/lit8 v2, v0, -0x1

    .line 168
    .line 169
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lokio/ByteString;

    .line 174
    .line 175
    invoke-virtual {v2, v11}, Lokio/ByteString;->getByte(I)B

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eq v1, v2, :cond_6

    .line 180
    .line 181
    :cond_5
    and-int/lit16 v1, v1, 0xff

    .line 182
    .line 183
    invoke-virtual {v10, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 184
    .line 185
    .line 186
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_7
    new-instance v8, Lokio/Buffer;

    .line 190
    .line 191
    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    .line 192
    .line 193
    .line 194
    :goto_4
    if-ge v6, v13, :cond_b

    .line 195
    .line 196
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lokio/ByteString;

    .line 201
    .line 202
    invoke-virtual {v0, v11}, Lokio/ByteString;->getByte(I)B

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    add-int/lit8 v1, v6, 0x1

    .line 207
    .line 208
    move v2, v1

    .line 209
    :goto_5
    if-ge v2, v13, :cond_9

    .line 210
    .line 211
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Lokio/ByteString;

    .line 216
    .line 217
    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eq v0, v3, :cond_8

    .line 222
    .line 223
    move v7, v2

    .line 224
    goto :goto_6

    .line 225
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_9
    move v7, v13

    .line 229
    :goto_6
    if-ne v1, v7, :cond_a

    .line 230
    .line 231
    add-int/lit8 v0, v11, 0x1

    .line 232
    .line 233
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Lokio/ByteString;

    .line 238
    .line 239
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-ne v0, v1, :cond_a

    .line 244
    .line 245
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Ljava/lang/Number;

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 256
    .line 257
    .line 258
    move/from16 v18, v7

    .line 259
    .line 260
    move-object v15, v8

    .line 261
    goto :goto_7

    .line 262
    :cond_a
    invoke-direct {v9, v8}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v0

    .line 266
    add-long v0, v16, v0

    .line 267
    .line 268
    long-to-int v1, v0

    .line 269
    mul-int/lit8 v1, v1, -0x1

    .line 270
    .line 271
    invoke-virtual {v10, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 272
    .line 273
    .line 274
    add-int/lit8 v4, v11, 0x1

    .line 275
    .line 276
    move-object/from16 v0, p0

    .line 277
    .line 278
    move-wide/from16 v1, v16

    .line 279
    .line 280
    move-object v3, v8

    .line 281
    move-object/from16 v5, p5

    .line 282
    .line 283
    move/from16 v18, v7

    .line 284
    .line 285
    move-object v15, v8

    .line 286
    move-object/from16 v8, p8

    .line 287
    .line 288
    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 289
    .line 290
    .line 291
    :goto_7
    move-object v8, v15

    .line 292
    move/from16 v6, v18

    .line 293
    .line 294
    const/4 v15, -0x1

    .line 295
    goto :goto_4

    .line 296
    :cond_b
    move-object v15, v8

    .line 297
    invoke-virtual {v10, v15}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 298
    .line 299
    .line 300
    goto/16 :goto_a

    .line 301
    .line 302
    :cond_c
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    const/4 v4, 0x0

    .line 315
    move v7, v11

    .line 316
    :goto_8
    if-ge v7, v3, :cond_d

    .line 317
    .line 318
    invoke-virtual {v1, v7}, Lokio/ByteString;->getByte(I)B

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    invoke-virtual {v2, v7}, Lokio/ByteString;->getByte(I)B

    .line 323
    .line 324
    .line 325
    move-result v15

    .line 326
    if-ne v8, v15, :cond_d

    .line 327
    .line 328
    add-int/lit8 v4, v4, 0x1

    .line 329
    .line 330
    add-int/lit8 v7, v7, 0x1

    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_d
    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 334
    .line 335
    .line 336
    move-result-wide v2

    .line 337
    add-long v2, p1, v2

    .line 338
    .line 339
    int-to-long v7, v5

    .line 340
    add-long/2addr v2, v7

    .line 341
    int-to-long v7, v4

    .line 342
    add-long/2addr v2, v7

    .line 343
    const-wide/16 v7, 0x1

    .line 344
    .line 345
    add-long/2addr v2, v7

    .line 346
    neg-int v5, v4

    .line 347
    invoke-virtual {v10, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 351
    .line 352
    .line 353
    add-int/2addr v4, v11

    .line 354
    :goto_9
    if-ge v11, v4, :cond_e

    .line 355
    .line 356
    invoke-virtual {v1, v11}, Lokio/ByteString;->getByte(I)B

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    and-int/lit16 v0, v0, 0xff

    .line 361
    .line 362
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 363
    .line 364
    .line 365
    add-int/lit8 v11, v11, 0x1

    .line 366
    .line 367
    goto :goto_9

    .line 368
    :cond_e
    add-int/lit8 v0, v6, 0x1

    .line 369
    .line 370
    if-ne v0, v13, :cond_10

    .line 371
    .line 372
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Lokio/ByteString;

    .line 377
    .line 378
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-ne v4, v0, :cond_f

    .line 383
    .line 384
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Ljava/lang/Number;

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 395
    .line 396
    .line 397
    goto :goto_a

    .line 398
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 399
    .line 400
    const-string v1, "Check failed."

    .line 401
    .line 402
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v0

    .line 406
    :cond_10
    new-instance v11, Lokio/Buffer;

    .line 407
    .line 408
    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-direct {v9, v11}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 412
    .line 413
    .line 414
    move-result-wide v0

    .line 415
    add-long/2addr v0, v2

    .line 416
    long-to-int v1, v0

    .line 417
    const/4 v0, -0x1

    .line 418
    mul-int/lit8 v1, v1, -0x1

    .line 419
    .line 420
    invoke-virtual {v10, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 421
    .line 422
    .line 423
    move-object/from16 v0, p0

    .line 424
    .line 425
    move-wide v1, v2

    .line 426
    move-object v3, v11

    .line 427
    move-object/from16 v5, p5

    .line 428
    .line 429
    move/from16 v7, p7

    .line 430
    .line 431
    move-object/from16 v8, p8

    .line 432
    .line 433
    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v10, v11}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 437
    .line 438
    .line 439
    :goto_a
    return-void

    .line 440
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 441
    .line 442
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v0
.end method

.method public static synthetic buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V
    .locals 11

    .line 1
    and-int/lit8 v0, p9, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    move-wide v3, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide v3, p1

    .line 10
    :goto_0
    and-int/lit8 v0, p9, 0x4

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v6, p4

    .line 18
    :goto_1
    and-int/lit8 v0, p9, 0x10

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move/from16 v8, p6

    .line 25
    .line 26
    :goto_2
    and-int/lit8 v0, p9, 0x20

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    move v9, v0

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move/from16 v9, p7

    .line 37
    .line 38
    :goto_3
    move-object v2, p0

    .line 39
    move-object v5, p3

    .line 40
    move-object/from16 v7, p5

    .line 41
    .line 42
    move-object/from16 v10, p8

    .line 43
    .line 44
    invoke-direct/range {v2 .. v10}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private final getIntCount(Lokio/Buffer;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 p1, 0x4

    .line 6
    int-to-long v2, p1

    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method


# virtual methods
.method public final varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "byteStrings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lokio/Options;

    .line 15
    .line 16
    new-array v1, v4, [Lokio/ByteString;

    .line 17
    .line 18
    filled-new-array {v4, v3}, [I

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v0, v1, v3, v2}, Lokio/Options;-><init>([Lokio/ByteString;[ILj9/f;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v1, Lx8/g;

    .line 29
    .line 30
    invoke-direct {v1, v0, v4}, Lx8/g;-><init>([Ljava/lang/Object;Z)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v10}, Lx8/o;->R(Ljava/util/ArrayList;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    new-instance v13, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    :goto_0
    if-ge v5, v1, :cond_1

    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    array-length v1, v0

    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    :goto_1
    if-ge v5, v1, :cond_a

    .line 65
    .line 66
    aget-object v7, v0, v5

    .line 67
    .line 68
    add-int/lit8 v8, v6, 0x1

    .line 69
    .line 70
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    const-string v12, ")."

    .line 79
    .line 80
    if-ltz v9, :cond_9

    .line 81
    .line 82
    if-gt v9, v11, :cond_8

    .line 83
    .line 84
    add-int/lit8 v9, v9, -0x1

    .line 85
    .line 86
    const/4 v11, 0x0

    .line 87
    :goto_2
    if-gt v11, v9, :cond_6

    .line 88
    .line 89
    add-int v12, v11, v9

    .line 90
    .line 91
    const/4 v14, 0x1

    .line 92
    ushr-int/2addr v12, v14

    .line 93
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    check-cast v15, Ljava/lang/Comparable;

    .line 98
    .line 99
    if-ne v15, v7, :cond_2

    .line 100
    .line 101
    const/4 v14, 0x0

    .line 102
    goto :goto_3

    .line 103
    :cond_2
    if-nez v15, :cond_3

    .line 104
    .line 105
    const/4 v14, -0x1

    .line 106
    goto :goto_3

    .line 107
    :cond_3
    if-nez v7, :cond_4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    invoke-interface {v15, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    :goto_3
    if-gez v14, :cond_5

    .line 115
    .line 116
    add-int/lit8 v11, v12, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    if-lez v14, :cond_7

    .line 120
    .line 121
    add-int/lit8 v9, v12, -0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 125
    .line 126
    neg-int v12, v11

    .line 127
    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v13, v12, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    add-int/lit8 v5, v5, 0x1

    .line 135
    .line 136
    move v6, v8

    .line 137
    goto :goto_1

    .line 138
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v2, "toIndex ("

    .line 143
    .line 144
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, ") is greater than size ("

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    const-string v1, "fromIndex (0) is greater than toIndex ("

    .line 172
    .line 173
    invoke-static {v9, v1, v12}, Lea/q;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0

    .line 181
    :cond_a
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Lokio/ByteString;

    .line 186
    .line 187
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-lez v1, :cond_10

    .line 192
    .line 193
    const/4 v1, 0x0

    .line 194
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-ge v1, v3, :cond_e

    .line 199
    .line 200
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Lokio/ByteString;

    .line 205
    .line 206
    add-int/lit8 v5, v1, 0x1

    .line 207
    .line 208
    move v6, v5

    .line 209
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-ge v6, v7, :cond_d

    .line 214
    .line 215
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    check-cast v7, Lokio/ByteString;

    .line 220
    .line 221
    invoke-virtual {v7, v3}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    if-eqz v8, :cond_d

    .line 226
    .line 227
    invoke-virtual {v7}, Lokio/ByteString;->size()I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    if-eq v8, v9, :cond_c

    .line 236
    .line 237
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    check-cast v7, Ljava/lang/Number;

    .line 242
    .line 243
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    check-cast v8, Ljava/lang/Number;

    .line 252
    .line 253
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    if-le v7, v8, :cond_b

    .line 258
    .line 259
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v1, "duplicate option: "

    .line 272
    .line 273
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v1

    .line 293
    :cond_d
    move v1, v5

    .line 294
    goto :goto_4

    .line 295
    :cond_e
    new-instance v1, Lokio/Buffer;

    .line 296
    .line 297
    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 298
    .line 299
    .line 300
    const/4 v11, 0x0

    .line 301
    const/4 v12, 0x0

    .line 302
    const-wide/16 v6, 0x0

    .line 303
    .line 304
    const/4 v9, 0x0

    .line 305
    const/16 v14, 0x35

    .line 306
    .line 307
    const/4 v15, 0x0

    .line 308
    move-object/from16 v5, p0

    .line 309
    .line 310
    move-object v8, v1

    .line 311
    invoke-static/range {v5 .. v15}, Lokio/Options$Companion;->buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    move-object/from16 v3, p0

    .line 315
    .line 316
    invoke-direct {v3, v1}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 317
    .line 318
    .line 319
    move-result-wide v5

    .line 320
    long-to-int v6, v5

    .line 321
    new-array v5, v6, [I

    .line 322
    .line 323
    :goto_6
    if-ge v4, v6, :cond_f

    .line 324
    .line 325
    invoke-virtual {v1}, Lokio/Buffer;->readInt()I

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    aput v7, v5, v4

    .line 330
    .line 331
    add-int/lit8 v4, v4, 0x1

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_f
    new-instance v1, Lokio/Options;

    .line 335
    .line 336
    array-length v4, v0

    .line 337
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    const-string v4, "copyOf(...)"

    .line 342
    .line 343
    invoke-static {v0, v4}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    check-cast v0, [Lokio/ByteString;

    .line 347
    .line 348
    invoke-direct {v1, v0, v5, v2}, Lokio/Options;-><init>([Lokio/ByteString;[ILj9/f;)V

    .line 349
    .line 350
    .line 351
    return-object v1

    .line 352
    :cond_10
    move-object/from16 v3, p0

    .line 353
    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 355
    .line 356
    const-string v1, "the empty byte string is not a supported option"

    .line 357
    .line 358
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v0
.end method
