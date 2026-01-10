.class public final Landroidx/lifecycle/p0;
.super Lj9/j;
.source "MyApplication"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/lifecycle/p0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/lifecycle/p0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lj9/j;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v2, v1, Landroidx/lifecycle/p0;->b:Ljava/lang/Object;

    .line 5
    .line 6
    const/16 v3, 0xd

    .line 7
    .line 8
    iget v4, v1, Landroidx/lifecycle/p0;->a:I

    .line 9
    .line 10
    packed-switch v4, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .line 14
    .line 15
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v5, Ld2/b;

    .line 19
    .line 20
    check-cast v2, Ld2/e;

    .line 21
    .line 22
    iget-object v6, v2, Ld2/e;->a:Ld2/n;

    .line 23
    .line 24
    invoke-virtual {v6}, Ld2/n;->b()Lokio/BufferedSource;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-direct {v5, v7}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    .line 37
    invoke-interface {v7}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-interface {v8}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const/4 v9, 0x0

    .line 46
    invoke-static {v8, v9, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    iget-object v8, v5, Ld2/b;->a:Ljava/lang/Exception;

    .line 50
    .line 51
    if-nez v8, :cond_2a

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    .line 56
    sget-object v10, Ld2/k;->a:Landroid/graphics/Paint;

    .line 57
    .line 58
    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 59
    .line 60
    sget-object v11, Ld2/l;->a:Ljava/util/LinkedHashSet;

    .line 61
    .line 62
    iget-object v11, v2, Ld2/e;->d:Ld2/j;

    .line 63
    .line 64
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    const/16 v12, 0x10e

    .line 69
    .line 70
    const/16 v13, 0x5a

    .line 71
    .line 72
    if-eqz v11, :cond_3

    .line 73
    .line 74
    const/4 v14, 0x2

    .line 75
    if-eq v11, v0, :cond_1

    .line 76
    .line 77
    if-ne v11, v14, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Landroidx/fragment/app/q;

    .line 81
    .line 82
    invoke-direct {v0, v3}, Landroidx/fragment/app/q;-><init>(I)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_1
    if-eqz v10, :cond_3

    .line 87
    .line 88
    sget-object v11, Ld2/l;->a:Ljava/util/LinkedHashSet;

    .line 89
    .line 90
    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    if-eqz v10, :cond_3

    .line 95
    .line 96
    :goto_0
    new-instance v10, Le1/g;

    .line 97
    .line 98
    new-instance v11, Ld2/i;

    .line 99
    .line 100
    invoke-interface {v7}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    .line 101
    .line 102
    .line 103
    move-result-object v15

    .line 104
    invoke-interface {v15}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    .line 105
    .line 106
    .line 107
    move-result-object v15

    .line 108
    invoke-direct {v11, v15}, Ld2/i;-><init>(Ljava/io/InputStream;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v10, v11}, Le1/g;-><init>(Ljava/io/InputStream;)V

    .line 112
    .line 113
    .line 114
    new-instance v11, Ld2/h;

    .line 115
    .line 116
    invoke-virtual {v10}, Le1/g;->c()I

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    if-eq v15, v14, :cond_2

    .line 121
    .line 122
    const/4 v14, 0x7

    .line 123
    if-eq v15, v14, :cond_2

    .line 124
    .line 125
    const/4 v14, 0x4

    .line 126
    if-eq v15, v14, :cond_2

    .line 127
    .line 128
    const/4 v14, 0x5

    .line 129
    if-eq v15, v14, :cond_2

    .line 130
    .line 131
    const/4 v14, 0x0

    .line 132
    goto :goto_1

    .line 133
    :cond_2
    const/4 v14, 0x1

    .line 134
    :goto_1
    invoke-virtual {v10}, Le1/g;->c()I

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    packed-switch v10, :pswitch_data_1

    .line 139
    .line 140
    .line 141
    const/4 v10, 0x0

    .line 142
    goto :goto_2

    .line 143
    :pswitch_0
    const/16 v10, 0x5a

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :pswitch_1
    const/16 v10, 0x10e

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :pswitch_2
    const/16 v10, 0xb4

    .line 150
    .line 151
    :goto_2
    invoke-direct {v11, v14, v10}, Ld2/h;-><init>(ZI)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_3
    sget-object v11, Ld2/h;->c:Ld2/h;

    .line 156
    .line 157
    :goto_3
    iget-object v10, v5, Ld2/b;->a:Ljava/lang/Exception;

    .line 158
    .line 159
    if-nez v10, :cond_29

    .line 160
    .line 161
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 162
    .line 163
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 164
    .line 165
    const/16 v14, 0x1a

    .line 166
    .line 167
    iget-object v2, v2, Ld2/e;->b:Lm2/m;

    .line 168
    .line 169
    if-lt v10, v14, :cond_4

    .line 170
    .line 171
    iget-object v15, v2, Lm2/m;->c:Landroid/graphics/ColorSpace;

    .line 172
    .line 173
    if-eqz v15, :cond_4

    .line 174
    .line 175
    invoke-static {v4, v15}, Lcom/alibaba/fastjson/parser/deserializer/c;->p(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 176
    .line 177
    .line 178
    :cond_4
    iget-boolean v15, v2, Lm2/m;->h:Z

    .line 179
    .line 180
    iput-boolean v15, v4, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 181
    .line 182
    iget v15, v11, Ld2/h;->b:I

    .line 183
    .line 184
    iget-object v9, v2, Lm2/m;->b:Landroid/graphics/Bitmap$Config;

    .line 185
    .line 186
    iget-boolean v11, v11, Ld2/h;->a:Z

    .line 187
    .line 188
    if-nez v11, :cond_5

    .line 189
    .line 190
    if-lez v15, :cond_7

    .line 191
    .line 192
    :cond_5
    if-eqz v9, :cond_6

    .line 193
    .line 194
    invoke-static {v9}, Ln5/d;->A(Landroid/graphics/Bitmap$Config;)Z

    .line 195
    .line 196
    .line 197
    move-result v16

    .line 198
    if-eqz v16, :cond_7

    .line 199
    .line 200
    :cond_6
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 201
    .line 202
    :cond_7
    iget-boolean v8, v2, Lm2/m;->g:Z

    .line 203
    .line 204
    if-eqz v8, :cond_8

    .line 205
    .line 206
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 207
    .line 208
    if-ne v9, v8, :cond_8

    .line 209
    .line 210
    iget-object v8, v4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 211
    .line 212
    const-string v3, "image/jpeg"

    .line 213
    .line 214
    invoke-static {v8, v3}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_8

    .line 219
    .line 220
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 221
    .line 222
    :cond_8
    if-lt v10, v14, :cond_9

    .line 223
    .line 224
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/deserializer/c;->e(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->d()Landroid/graphics/Bitmap$Config;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    if-ne v3, v8, :cond_9

    .line 233
    .line 234
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->y()Landroid/graphics/Bitmap$Config;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    if-eq v9, v3, :cond_9

    .line 239
    .line 240
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->d()Landroid/graphics/Bitmap$Config;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    :cond_9
    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 245
    .line 246
    invoke-virtual {v6}, Ld2/n;->a()Ln5/d;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    instance-of v6, v3, Ld2/o;

    .line 251
    .line 252
    iget-object v8, v2, Lm2/m;->a:Landroid/content/Context;

    .line 253
    .line 254
    iget-object v9, v2, Lm2/m;->d:Ln2/h;

    .line 255
    .line 256
    if-eqz v6, :cond_b

    .line 257
    .line 258
    sget-object v6, Ln2/h;->c:Ln2/h;

    .line 259
    .line 260
    invoke-static {v9, v6}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-eqz v6, :cond_b

    .line 265
    .line 266
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 267
    .line 268
    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 269
    .line 270
    check-cast v3, Ld2/o;

    .line 271
    .line 272
    iget v2, v3, Ld2/o;->g:I

    .line 273
    .line 274
    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 275
    .line 276
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 285
    .line 286
    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 287
    .line 288
    move-object v13, v7

    .line 289
    move-object/from16 v18, v8

    .line 290
    .line 291
    move v3, v15

    .line 292
    :cond_a
    :goto_4
    const/4 v0, 0x0

    .line 293
    goto/16 :goto_f

    .line 294
    .line 295
    :cond_b
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 296
    .line 297
    if-lez v3, :cond_c

    .line 298
    .line 299
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 300
    .line 301
    if-gtz v6, :cond_d

    .line 302
    .line 303
    :cond_c
    move-object v13, v7

    .line 304
    move-object/from16 v18, v8

    .line 305
    .line 306
    move v3, v15

    .line 307
    goto/16 :goto_e

    .line 308
    .line 309
    :cond_d
    if-eq v15, v13, :cond_f

    .line 310
    .line 311
    if-ne v15, v12, :cond_e

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_e
    move v10, v3

    .line 315
    goto :goto_6

    .line 316
    :cond_f
    :goto_5
    move v10, v6

    .line 317
    :goto_6
    if-eq v15, v13, :cond_11

    .line 318
    .line 319
    if-ne v15, v12, :cond_10

    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_10
    move v3, v6

    .line 323
    :cond_11
    :goto_7
    sget-object v6, Ln2/h;->c:Ln2/h;

    .line 324
    .line 325
    invoke-static {v9, v6}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v14

    .line 329
    iget-object v12, v2, Lm2/m;->e:Ln2/g;

    .line 330
    .line 331
    if-eqz v14, :cond_12

    .line 332
    .line 333
    move v14, v10

    .line 334
    goto :goto_8

    .line 335
    :cond_12
    iget-object v14, v9, Ln2/h;->a:Lr4/b;

    .line 336
    .line 337
    invoke-static {v14, v12}, Lr2/f;->e(Lr4/b;Ln2/g;)I

    .line 338
    .line 339
    .line 340
    move-result v14

    .line 341
    :goto_8
    invoke-static {v9, v6}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-eqz v6, :cond_13

    .line 346
    .line 347
    move v6, v3

    .line 348
    goto :goto_9

    .line 349
    :cond_13
    iget-object v6, v9, Ln2/h;->b:Lr4/b;

    .line 350
    .line 351
    invoke-static {v6, v12}, Lr2/f;->e(Lr4/b;Ln2/g;)I

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    :goto_9
    div-int v9, v10, v14

    .line 356
    .line 357
    invoke-static {v9}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    div-int v17, v3, v6

    .line 362
    .line 363
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 364
    .line 365
    .line 366
    move-result v13

    .line 367
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_15

    .line 372
    .line 373
    const/4 v1, 0x1

    .line 374
    if-ne v0, v1, :cond_14

    .line 375
    .line 376
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    goto :goto_a

    .line 381
    :cond_14
    new-instance v0, Landroidx/fragment/app/q;

    .line 382
    .line 383
    const/16 v1, 0xd

    .line 384
    .line 385
    invoke-direct {v0, v1}, Landroidx/fragment/app/q;-><init>(I)V

    .line 386
    .line 387
    .line 388
    throw v0

    .line 389
    :cond_15
    const/4 v1, 0x1

    .line 390
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    :goto_a
    if-ge v0, v1, :cond_16

    .line 395
    .line 396
    const/4 v0, 0x1

    .line 397
    :cond_16
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 398
    .line 399
    int-to-double v9, v10

    .line 400
    int-to-double v0, v0

    .line 401
    div-double/2addr v9, v0

    .line 402
    move-object v13, v7

    .line 403
    move-object/from16 v18, v8

    .line 404
    .line 405
    int-to-double v7, v3

    .line 406
    div-double/2addr v7, v0

    .line 407
    int-to-double v0, v14

    .line 408
    move v3, v15

    .line 409
    int-to-double v14, v6

    .line 410
    div-double/2addr v0, v9

    .line 411
    div-double/2addr v14, v7

    .line 412
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    if-eqz v6, :cond_18

    .line 417
    .line 418
    const/4 v7, 0x1

    .line 419
    if-ne v6, v7, :cond_17

    .line 420
    .line 421
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(DD)D

    .line 422
    .line 423
    .line 424
    move-result-wide v0

    .line 425
    goto :goto_b

    .line 426
    :cond_17
    new-instance v0, Landroidx/fragment/app/q;

    .line 427
    .line 428
    const/16 v1, 0xd

    .line 429
    .line 430
    invoke-direct {v0, v1}, Landroidx/fragment/app/q;-><init>(I)V

    .line 431
    .line 432
    .line 433
    throw v0

    .line 434
    :cond_18
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(DD)D

    .line 435
    .line 436
    .line 437
    move-result-wide v0

    .line 438
    :goto_b
    iget-boolean v2, v2, Lm2/m;->f:Z

    .line 439
    .line 440
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 441
    .line 442
    if-eqz v2, :cond_19

    .line 443
    .line 444
    cmpl-double v2, v0, v6

    .line 445
    .line 446
    if-lez v2, :cond_19

    .line 447
    .line 448
    move-wide v0, v6

    .line 449
    :cond_19
    cmpg-double v2, v0, v6

    .line 450
    .line 451
    if-nez v2, :cond_1a

    .line 452
    .line 453
    const/4 v2, 0x1

    .line 454
    :goto_c
    const/4 v8, 0x1

    .line 455
    goto :goto_d

    .line 456
    :cond_1a
    const/4 v2, 0x0

    .line 457
    goto :goto_c

    .line 458
    :goto_d
    xor-int/lit8 v9, v2, 0x1

    .line 459
    .line 460
    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 461
    .line 462
    if-nez v2, :cond_a

    .line 463
    .line 464
    const v2, 0x7fffffff

    .line 465
    .line 466
    .line 467
    cmpl-double v8, v0, v6

    .line 468
    .line 469
    if-lez v8, :cond_1b

    .line 470
    .line 471
    int-to-double v6, v2

    .line 472
    div-double/2addr v6, v0

    .line 473
    invoke-static {v6, v7}, Lr4/b;->J(D)I

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 478
    .line 479
    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 480
    .line 481
    goto/16 :goto_4

    .line 482
    .line 483
    :cond_1b
    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 484
    .line 485
    int-to-double v6, v2

    .line 486
    mul-double v6, v6, v0

    .line 487
    .line 488
    invoke-static {v6, v7}, Lr4/b;->J(D)I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 493
    .line 494
    goto/16 :goto_4

    .line 495
    .line 496
    :goto_e
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 497
    .line 498
    const/4 v0, 0x0

    .line 499
    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 500
    .line 501
    :goto_f
    :try_start_0
    invoke-interface {v13}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    const/4 v2, 0x0

    .line 506
    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 507
    .line 508
    .line 509
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-static {v13, v2}, La2/a;->r(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 511
    .line 512
    .line 513
    iget-object v2, v5, Ld2/b;->a:Ljava/lang/Exception;

    .line 514
    .line 515
    if-nez v2, :cond_28

    .line 516
    .line 517
    if-eqz v1, :cond_27

    .line 518
    .line 519
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 528
    .line 529
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 530
    .line 531
    .line 532
    if-nez v11, :cond_1c

    .line 533
    .line 534
    if-lez v3, :cond_24

    .line 535
    .line 536
    :cond_1c
    new-instance v2, Landroid/graphics/Matrix;

    .line 537
    .line 538
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 542
    .line 543
    .line 544
    move-result v5

    .line 545
    int-to-float v5, v5

    .line 546
    const/high16 v6, 0x40000000    # 2.0f

    .line 547
    .line 548
    div-float/2addr v5, v6

    .line 549
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 550
    .line 551
    .line 552
    move-result v7

    .line 553
    int-to-float v7, v7

    .line 554
    div-float/2addr v7, v6

    .line 555
    if-eqz v11, :cond_1d

    .line 556
    .line 557
    const/high16 v6, -0x40800000    # -1.0f

    .line 558
    .line 559
    const/high16 v8, 0x3f800000    # 1.0f

    .line 560
    .line 561
    invoke-virtual {v2, v6, v8, v5, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 562
    .line 563
    .line 564
    :cond_1d
    if-lez v3, :cond_1e

    .line 565
    .line 566
    int-to-float v6, v3

    .line 567
    invoke-virtual {v2, v6, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 568
    .line 569
    .line 570
    :cond_1e
    new-instance v5, Landroid/graphics/RectF;

    .line 571
    .line 572
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 573
    .line 574
    .line 575
    move-result v6

    .line 576
    int-to-float v6, v6

    .line 577
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 578
    .line 579
    .line 580
    move-result v7

    .line 581
    int-to-float v7, v7

    .line 582
    const/4 v8, 0x0

    .line 583
    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 587
    .line 588
    .line 589
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 590
    .line 591
    cmpg-float v7, v6, v8

    .line 592
    .line 593
    if-nez v7, :cond_1f

    .line 594
    .line 595
    iget v7, v5, Landroid/graphics/RectF;->top:F

    .line 596
    .line 597
    cmpg-float v7, v7, v8

    .line 598
    .line 599
    if-nez v7, :cond_1f

    .line 600
    .line 601
    :goto_10
    const/16 v5, 0x5a

    .line 602
    .line 603
    goto :goto_11

    .line 604
    :cond_1f
    neg-float v6, v6

    .line 605
    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 606
    .line 607
    neg-float v5, v5

    .line 608
    invoke-virtual {v2, v6, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 609
    .line 610
    .line 611
    goto :goto_10

    .line 612
    :goto_11
    if-eq v3, v5, :cond_22

    .line 613
    .line 614
    const/16 v5, 0x10e

    .line 615
    .line 616
    if-ne v3, v5, :cond_20

    .line 617
    .line 618
    goto :goto_12

    .line 619
    :cond_20
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 624
    .line 625
    .line 626
    move-result v5

    .line 627
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 628
    .line 629
    .line 630
    move-result-object v6

    .line 631
    if-nez v6, :cond_21

    .line 632
    .line 633
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 634
    .line 635
    :cond_21
    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    goto :goto_13

    .line 640
    :cond_22
    :goto_12
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 645
    .line 646
    .line 647
    move-result v5

    .line 648
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 649
    .line 650
    .line 651
    move-result-object v6

    .line 652
    if-nez v6, :cond_23

    .line 653
    .line 654
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 655
    .line 656
    :cond_23
    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    :goto_13
    new-instance v5, Landroid/graphics/Canvas;

    .line 661
    .line 662
    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 663
    .line 664
    .line 665
    sget-object v6, Ld2/k;->a:Landroid/graphics/Paint;

    .line 666
    .line 667
    invoke-virtual {v5, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 671
    .line 672
    .line 673
    move-object v1, v3

    .line 674
    :cond_24
    new-instance v2, Ld2/g;

    .line 675
    .line 676
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 681
    .line 682
    invoke-direct {v5, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 683
    .line 684
    .line 685
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 686
    .line 687
    const/4 v3, 0x1

    .line 688
    if-gt v1, v3, :cond_25

    .line 689
    .line 690
    iget-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 691
    .line 692
    if-eqz v1, :cond_26

    .line 693
    .line 694
    :cond_25
    const/4 v0, 0x1

    .line 695
    :cond_26
    invoke-direct {v2, v5, v0}, Ld2/g;-><init>(Landroid/graphics/drawable/BitmapDrawable;Z)V

    .line 696
    .line 697
    .line 698
    return-object v2

    .line 699
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 700
    .line 701
    const-string v1, "BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the input source (e.g. network, disk, or memory) as it\'s not encoded as a valid image format."

    .line 702
    .line 703
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    throw v0

    .line 707
    :cond_28
    throw v2

    .line 708
    :catchall_0
    move-exception v0

    .line 709
    move-object v1, v0

    .line 710
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 711
    :catchall_1
    move-exception v0

    .line 712
    move-object v2, v0

    .line 713
    invoke-static {v13, v1}, La2/a;->r(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 714
    .line 715
    .line 716
    throw v2

    .line 717
    :cond_29
    throw v10

    .line 718
    :cond_2a
    throw v8

    .line 719
    :pswitch_3
    check-cast v2, Landroidx/activity/ComponentActivity;

    .line 720
    .line 721
    invoke-static {v2}, Landroidx/lifecycle/o0;->e(Landroidx/lifecycle/a1;)Landroidx/lifecycle/r0;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    return-object v0

    .line 726
    nop

    .line 727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
