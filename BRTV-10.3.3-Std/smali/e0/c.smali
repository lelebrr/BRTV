.class public abstract Le0/c;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le0/c;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-static {p0, p1, v0, p2}, Le0/c;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 24
    .line 25
    const-string p1, "No start tag found"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "selector"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_23

    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    add-int/2addr v3, v4

    .line 25
    const/16 v5, 0x14

    .line 26
    .line 27
    new-array v6, v5, [[I

    .line 28
    .line 29
    new-array v5, v5, [I

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-eq v9, v4, :cond_22

    .line 38
    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    const/4 v11, 0x3

    .line 44
    if-ge v10, v3, :cond_0

    .line 45
    .line 46
    if-eq v9, v11, :cond_22

    .line 47
    .line 48
    :cond_0
    const/4 v12, 0x2

    .line 49
    if-ne v9, v12, :cond_1

    .line 50
    .line 51
    if-gt v10, v3, :cond_1

    .line 52
    .line 53
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-string v10, "item"

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_2

    .line 64
    .line 65
    :cond_1
    move/from16 v30, v3

    .line 66
    .line 67
    const/16 v16, 0x1

    .line 68
    .line 69
    goto/16 :goto_1b

    .line 70
    .line 71
    :cond_2
    sget-object v9, Lb0/a;->a:[I

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    :goto_1
    const/4 v10, -0x1

    .line 85
    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    const v14, -0xff01

    .line 90
    .line 91
    .line 92
    const/16 v15, 0x1f

    .line 93
    .line 94
    if-eq v13, v10, :cond_6

    .line 95
    .line 96
    sget-object v10, Le0/c;->a:Ljava/lang/ThreadLocal;

    .line 97
    .line 98
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v16

    .line 102
    check-cast v16, Landroid/util/TypedValue;

    .line 103
    .line 104
    if-nez v16, :cond_4

    .line 105
    .line 106
    new-instance v12, Landroid/util/TypedValue;

    .line 107
    .line 108
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move-object/from16 v12, v16

    .line 116
    .line 117
    :goto_2
    invoke-virtual {v0, v13, v12, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 118
    .line 119
    .line 120
    iget v10, v12, Landroid/util/TypedValue;->type:I

    .line 121
    .line 122
    const/16 v12, 0x1c

    .line 123
    .line 124
    if-lt v10, v12, :cond_5

    .line 125
    .line 126
    if-gt v10, v15, :cond_5

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-static {v0, v10, v2}, Le0/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 138
    .line 139
    .line 140
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_4

    .line 142
    :catch_0
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    goto :goto_4

    .line 147
    :cond_6
    :goto_3
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    :goto_4
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    const/high16 v13, 0x3f800000    # 1.0f

    .line 156
    .line 157
    if-eqz v12, :cond_7

    .line 158
    .line 159
    invoke-virtual {v9, v4, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-eqz v12, :cond_8

    .line 169
    .line 170
    invoke-virtual {v9, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    goto :goto_5

    .line 175
    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    .line 176
    .line 177
    :goto_5
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 178
    .line 179
    const/4 v14, 0x4

    .line 180
    const/high16 v4, -0x40800000    # -1.0f

    .line 181
    .line 182
    if-lt v12, v15, :cond_9

    .line 183
    .line 184
    const/4 v12, 0x2

    .line 185
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    if-eqz v15, :cond_9

    .line 190
    .line 191
    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    goto :goto_6

    .line 196
    :cond_9
    invoke-virtual {v9, v14, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    :goto_6
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    .line 202
    .line 203
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    new-array v12, v9, [I

    .line 208
    .line 209
    const/4 v14, 0x0

    .line 210
    const/4 v15, 0x0

    .line 211
    :goto_7
    if-ge v15, v9, :cond_c

    .line 212
    .line 213
    invoke-interface {v1, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    const v7, 0x10101a5

    .line 218
    .line 219
    .line 220
    if-eq v13, v7, :cond_b

    .line 221
    .line 222
    const v7, 0x101031f

    .line 223
    .line 224
    .line 225
    if-eq v13, v7, :cond_b

    .line 226
    .line 227
    const v7, 0x7f04002d

    .line 228
    .line 229
    .line 230
    if-eq v13, v7, :cond_b

    .line 231
    .line 232
    const v7, 0x7f0402d2

    .line 233
    .line 234
    .line 235
    if-eq v13, v7, :cond_b

    .line 236
    .line 237
    add-int/lit8 v7, v14, 0x1

    .line 238
    .line 239
    const/4 v0, 0x0

    .line 240
    invoke-interface {v1, v15, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 241
    .line 242
    .line 243
    move-result v19

    .line 244
    if-eqz v19, :cond_a

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_a
    neg-int v13, v13

    .line 248
    :goto_8
    aput v13, v12, v14

    .line 249
    .line 250
    move v14, v7

    .line 251
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 252
    .line 253
    move-object/from16 v0, p0

    .line 254
    .line 255
    const/4 v7, 0x0

    .line 256
    const/high16 v13, 0x3f800000    # 1.0f

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_c
    invoke-static {v12, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const/high16 v7, 0x42c80000    # 100.0f

    .line 264
    .line 265
    const/4 v9, 0x0

    .line 266
    cmpl-float v12, v4, v9

    .line 267
    .line 268
    if-ltz v12, :cond_d

    .line 269
    .line 270
    cmpg-float v12, v4, v7

    .line 271
    .line 272
    if-gtz v12, :cond_d

    .line 273
    .line 274
    const/4 v12, 0x1

    .line 275
    :goto_9
    const/high16 v13, 0x3f800000    # 1.0f

    .line 276
    .line 277
    goto :goto_a

    .line 278
    :cond_d
    const/4 v12, 0x0

    .line 279
    goto :goto_9

    .line 280
    :goto_a
    cmpl-float v14, v11, v13

    .line 281
    .line 282
    if-nez v14, :cond_e

    .line 283
    .line 284
    if-nez v12, :cond_e

    .line 285
    .line 286
    move/from16 v30, v3

    .line 287
    .line 288
    const/16 v16, 0x1

    .line 289
    .line 290
    goto/16 :goto_18

    .line 291
    .line 292
    :cond_e
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    int-to-float v13, v13

    .line 297
    mul-float v13, v13, v11

    .line 298
    .line 299
    const/high16 v11, 0x3f000000    # 0.5f

    .line 300
    .line 301
    add-float/2addr v13, v11

    .line 302
    float-to-int v11, v13

    .line 303
    const/16 v13, 0xff

    .line 304
    .line 305
    const/4 v14, 0x0

    .line 306
    invoke-static {v11, v14, v13}, Ll5/a;->g(III)I

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    if-eqz v12, :cond_1d

    .line 311
    .line 312
    invoke-static {v10}, Le0/a;->b(I)Le0/a;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    sget-object v12, Le0/o;->k:Le0/o;

    .line 317
    .line 318
    iget v13, v10, Le0/a;->b:F

    .line 319
    .line 320
    float-to-double v14, v13

    .line 321
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 322
    .line 323
    cmpg-double v21, v14, v19

    .line 324
    .line 325
    if-ltz v21, :cond_f

    .line 326
    .line 327
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 328
    .line 329
    .line 330
    move-result v14

    .line 331
    int-to-double v14, v14

    .line 332
    const-wide/16 v19, 0x0

    .line 333
    .line 334
    cmpg-double v21, v14, v19

    .line 335
    .line 336
    if-lez v21, :cond_f

    .line 337
    .line 338
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 339
    .line 340
    .line 341
    move-result v14

    .line 342
    int-to-double v14, v14

    .line 343
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 344
    .line 345
    cmpl-double v21, v14, v19

    .line 346
    .line 347
    if-ltz v21, :cond_10

    .line 348
    .line 349
    :cond_f
    move/from16 v30, v3

    .line 350
    .line 351
    const/16 v16, 0x1

    .line 352
    .line 353
    goto/16 :goto_16

    .line 354
    .line 355
    :cond_10
    iget v10, v10, Le0/a;->a:F

    .line 356
    .line 357
    cmpg-float v14, v10, v9

    .line 358
    .line 359
    if-gez v14, :cond_11

    .line 360
    .line 361
    const/4 v10, 0x0

    .line 362
    goto :goto_b

    .line 363
    :cond_11
    const/high16 v14, 0x43b40000    # 360.0f

    .line 364
    .line 365
    invoke-static {v14, v10}, Ljava/lang/Math;->min(FF)F

    .line 366
    .line 367
    .line 368
    move-result v10

    .line 369
    :goto_b
    move v15, v13

    .line 370
    const/4 v14, 0x0

    .line 371
    const/16 v19, 0x1

    .line 372
    .line 373
    const/16 v20, 0x0

    .line 374
    .line 375
    :goto_c
    sub-float v22, v20, v13

    .line 376
    .line 377
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    .line 378
    .line 379
    .line 380
    move-result v22

    .line 381
    const v23, 0x3ecccccd    # 0.4f

    .line 382
    .line 383
    .line 384
    cmpl-float v22, v22, v23

    .line 385
    .line 386
    if-ltz v22, :cond_1b

    .line 387
    .line 388
    const/high16 v22, 0x447a0000    # 1000.0f

    .line 389
    .line 390
    const/high16 v23, 0x447a0000    # 1000.0f

    .line 391
    .line 392
    const/16 v24, 0x0

    .line 393
    .line 394
    const/high16 v25, 0x42c80000    # 100.0f

    .line 395
    .line 396
    const/16 v26, 0x0

    .line 397
    .line 398
    :goto_d
    sub-float v27, v24, v25

    .line 399
    .line 400
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    .line 401
    .line 402
    .line 403
    move-result v27

    .line 404
    const v28, 0x3c23d70a    # 0.01f

    .line 405
    .line 406
    .line 407
    const/high16 v29, 0x40000000    # 2.0f

    .line 408
    .line 409
    cmpl-float v27, v27, v28

    .line 410
    .line 411
    if-lez v27, :cond_17

    .line 412
    .line 413
    sub-float v27, v25, v24

    .line 414
    .line 415
    div-float v27, v27, v29

    .line 416
    .line 417
    add-float v9, v27, v24

    .line 418
    .line 419
    invoke-static {v9, v15, v10}, Le0/a;->c(FFF)Le0/a;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    sget-object v1, Le0/o;->k:Le0/o;

    .line 424
    .line 425
    invoke-virtual {v7, v1}, Le0/a;->d(Le0/o;)I

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    invoke-static {v7}, Le0/b;->g(I)F

    .line 434
    .line 435
    .line 436
    move-result v7

    .line 437
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 438
    .line 439
    .line 440
    move-result v30

    .line 441
    invoke-static/range {v30 .. v30}, Le0/b;->g(I)F

    .line 442
    .line 443
    .line 444
    move-result v30

    .line 445
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 446
    .line 447
    .line 448
    move-result v31

    .line 449
    invoke-static/range {v31 .. v31}, Le0/b;->g(I)F

    .line 450
    .line 451
    .line 452
    move-result v31

    .line 453
    sget-object v32, Le0/b;->d:[[F

    .line 454
    .line 455
    const/16 v16, 0x1

    .line 456
    .line 457
    aget-object v32, v32, v16

    .line 458
    .line 459
    const/16 v18, 0x0

    .line 460
    .line 461
    aget v33, v32, v18

    .line 462
    .line 463
    mul-float v7, v7, v33

    .line 464
    .line 465
    aget v33, v32, v16

    .line 466
    .line 467
    mul-float v30, v30, v33

    .line 468
    .line 469
    add-float v30, v30, v7

    .line 470
    .line 471
    const/4 v7, 0x2

    .line 472
    aget v17, v32, v7

    .line 473
    .line 474
    mul-float v31, v31, v17

    .line 475
    .line 476
    add-float v31, v31, v30

    .line 477
    .line 478
    const/high16 v17, 0x42c80000    # 100.0f

    .line 479
    .line 480
    div-float v7, v31, v17

    .line 481
    .line 482
    const v30, 0x3c111aa7

    .line 483
    .line 484
    .line 485
    cmpg-float v30, v7, v30

    .line 486
    .line 487
    if-gtz v30, :cond_12

    .line 488
    .line 489
    const v30, 0x4461d2f7

    .line 490
    .line 491
    .line 492
    mul-float v7, v7, v30

    .line 493
    .line 494
    move/from16 v30, v3

    .line 495
    .line 496
    goto :goto_e

    .line 497
    :cond_12
    move/from16 v30, v3

    .line 498
    .line 499
    float-to-double v2, v7

    .line 500
    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    .line 501
    .line 502
    .line 503
    move-result-wide v2

    .line 504
    double-to-float v2, v2

    .line 505
    const/high16 v3, 0x42e80000    # 116.0f

    .line 506
    .line 507
    mul-float v2, v2, v3

    .line 508
    .line 509
    const/high16 v3, 0x41800000    # 16.0f

    .line 510
    .line 511
    sub-float v7, v2, v3

    .line 512
    .line 513
    :goto_e
    sub-float v2, v4, v7

    .line 514
    .line 515
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    const v3, 0x3e4ccccd    # 0.2f

    .line 520
    .line 521
    .line 522
    cmpg-float v3, v2, v3

    .line 523
    .line 524
    if-gez v3, :cond_14

    .line 525
    .line 526
    invoke-static {v1}, Le0/a;->b(I)Le0/a;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    iget v3, v1, Le0/a;->c:F

    .line 531
    .line 532
    move/from16 v31, v2

    .line 533
    .line 534
    iget v2, v1, Le0/a;->b:F

    .line 535
    .line 536
    invoke-static {v3, v2, v10}, Le0/a;->c(FFF)Le0/a;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    iget v3, v1, Le0/a;->d:F

    .line 541
    .line 542
    move/from16 v32, v9

    .line 543
    .line 544
    iget v9, v2, Le0/a;->d:F

    .line 545
    .line 546
    sub-float/2addr v3, v9

    .line 547
    iget v9, v1, Le0/a;->e:F

    .line 548
    .line 549
    move/from16 v33, v10

    .line 550
    .line 551
    iget v10, v2, Le0/a;->e:F

    .line 552
    .line 553
    sub-float/2addr v9, v10

    .line 554
    iget v10, v1, Le0/a;->f:F

    .line 555
    .line 556
    iget v2, v2, Le0/a;->f:F

    .line 557
    .line 558
    sub-float/2addr v10, v2

    .line 559
    mul-float v3, v3, v3

    .line 560
    .line 561
    mul-float v9, v9, v9

    .line 562
    .line 563
    add-float/2addr v9, v3

    .line 564
    mul-float v10, v10, v10

    .line 565
    .line 566
    add-float/2addr v10, v9

    .line 567
    float-to-double v2, v10

    .line 568
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 569
    .line 570
    .line 571
    move-result-wide v2

    .line 572
    const-wide v9, 0x3fe428f5c28f5c29L    # 0.63

    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 578
    .line 579
    .line 580
    move-result-wide v2

    .line 581
    const-wide v9, 0x3ff68f5c28f5c28fL    # 1.41

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    mul-double v2, v2, v9

    .line 587
    .line 588
    double-to-float v2, v2

    .line 589
    const/high16 v3, 0x3f800000    # 1.0f

    .line 590
    .line 591
    cmpg-float v9, v2, v3

    .line 592
    .line 593
    if-gtz v9, :cond_13

    .line 594
    .line 595
    move-object/from16 v26, v1

    .line 596
    .line 597
    move/from16 v23, v2

    .line 598
    .line 599
    move/from16 v22, v31

    .line 600
    .line 601
    :cond_13
    :goto_f
    const/4 v1, 0x0

    .line 602
    goto :goto_10

    .line 603
    :cond_14
    move/from16 v32, v9

    .line 604
    .line 605
    move/from16 v33, v10

    .line 606
    .line 607
    const/high16 v3, 0x3f800000    # 1.0f

    .line 608
    .line 609
    goto :goto_f

    .line 610
    :goto_10
    cmpl-float v2, v22, v1

    .line 611
    .line 612
    if-nez v2, :cond_15

    .line 613
    .line 614
    cmpl-float v2, v23, v1

    .line 615
    .line 616
    if-nez v2, :cond_15

    .line 617
    .line 618
    :goto_11
    move-object/from16 v2, v26

    .line 619
    .line 620
    goto :goto_13

    .line 621
    :cond_15
    cmpg-float v2, v7, v4

    .line 622
    .line 623
    if-gez v2, :cond_16

    .line 624
    .line 625
    move/from16 v24, v32

    .line 626
    .line 627
    goto :goto_12

    .line 628
    :cond_16
    move/from16 v25, v32

    .line 629
    .line 630
    :goto_12
    move-object/from16 v1, p2

    .line 631
    .line 632
    move-object/from16 v2, p3

    .line 633
    .line 634
    move/from16 v3, v30

    .line 635
    .line 636
    move/from16 v10, v33

    .line 637
    .line 638
    const/high16 v7, 0x42c80000    # 100.0f

    .line 639
    .line 640
    const/4 v9, 0x0

    .line 641
    goto/16 :goto_d

    .line 642
    .line 643
    :cond_17
    move/from16 v30, v3

    .line 644
    .line 645
    move/from16 v33, v10

    .line 646
    .line 647
    const/4 v1, 0x0

    .line 648
    const/high16 v3, 0x3f800000    # 1.0f

    .line 649
    .line 650
    const/16 v16, 0x1

    .line 651
    .line 652
    const/high16 v17, 0x42c80000    # 100.0f

    .line 653
    .line 654
    goto :goto_11

    .line 655
    :goto_13
    if-eqz v19, :cond_19

    .line 656
    .line 657
    if-eqz v2, :cond_18

    .line 658
    .line 659
    invoke-virtual {v2, v12}, Le0/a;->d(Le0/o;)I

    .line 660
    .line 661
    .line 662
    move-result v1

    .line 663
    :goto_14
    move v10, v1

    .line 664
    goto :goto_17

    .line 665
    :cond_18
    sub-float v2, v13, v20

    .line 666
    .line 667
    div-float v2, v2, v29

    .line 668
    .line 669
    add-float v15, v2, v20

    .line 670
    .line 671
    move-object/from16 v1, p2

    .line 672
    .line 673
    move-object/from16 v2, p3

    .line 674
    .line 675
    move/from16 v3, v30

    .line 676
    .line 677
    move/from16 v10, v33

    .line 678
    .line 679
    const/high16 v7, 0x42c80000    # 100.0f

    .line 680
    .line 681
    const/4 v9, 0x0

    .line 682
    const/16 v19, 0x0

    .line 683
    .line 684
    goto/16 :goto_c

    .line 685
    .line 686
    :cond_19
    if-nez v2, :cond_1a

    .line 687
    .line 688
    move v13, v15

    .line 689
    goto :goto_15

    .line 690
    :cond_1a
    move-object v14, v2

    .line 691
    move/from16 v20, v15

    .line 692
    .line 693
    :goto_15
    sub-float v2, v13, v20

    .line 694
    .line 695
    div-float v2, v2, v29

    .line 696
    .line 697
    add-float v15, v2, v20

    .line 698
    .line 699
    move-object/from16 v1, p2

    .line 700
    .line 701
    move-object/from16 v2, p3

    .line 702
    .line 703
    move/from16 v3, v30

    .line 704
    .line 705
    move/from16 v10, v33

    .line 706
    .line 707
    const/high16 v7, 0x42c80000    # 100.0f

    .line 708
    .line 709
    const/4 v9, 0x0

    .line 710
    goto/16 :goto_c

    .line 711
    .line 712
    :cond_1b
    move/from16 v30, v3

    .line 713
    .line 714
    const/16 v16, 0x1

    .line 715
    .line 716
    if-nez v14, :cond_1c

    .line 717
    .line 718
    invoke-static {v4}, Le0/b;->f(F)I

    .line 719
    .line 720
    .line 721
    move-result v1

    .line 722
    goto :goto_14

    .line 723
    :cond_1c
    invoke-virtual {v14, v12}, Le0/a;->d(Le0/o;)I

    .line 724
    .line 725
    .line 726
    move-result v1

    .line 727
    goto :goto_14

    .line 728
    :goto_16
    invoke-static {v4}, Le0/b;->f(F)I

    .line 729
    .line 730
    .line 731
    move-result v1

    .line 732
    goto :goto_14

    .line 733
    :cond_1d
    move/from16 v30, v3

    .line 734
    .line 735
    const/16 v16, 0x1

    .line 736
    .line 737
    :goto_17
    const v1, 0xffffff

    .line 738
    .line 739
    .line 740
    and-int/2addr v1, v10

    .line 741
    shl-int/lit8 v2, v11, 0x18

    .line 742
    .line 743
    or-int v10, v1, v2

    .line 744
    .line 745
    :goto_18
    add-int/lit8 v1, v8, 0x1

    .line 746
    .line 747
    array-length v2, v5

    .line 748
    const/16 v3, 0x8

    .line 749
    .line 750
    if-le v1, v2, :cond_1f

    .line 751
    .line 752
    const/4 v2, 0x4

    .line 753
    if-gt v8, v2, :cond_1e

    .line 754
    .line 755
    const/16 v2, 0x8

    .line 756
    .line 757
    goto :goto_19

    .line 758
    :cond_1e
    mul-int/lit8 v2, v8, 0x2

    .line 759
    .line 760
    :goto_19
    new-array v2, v2, [I

    .line 761
    .line 762
    const/4 v4, 0x0

    .line 763
    invoke-static {v5, v4, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    .line 765
    .line 766
    move-object v5, v2

    .line 767
    :cond_1f
    aput v10, v5, v8

    .line 768
    .line 769
    array-length v2, v6

    .line 770
    if-le v1, v2, :cond_21

    .line 771
    .line 772
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    const/4 v4, 0x4

    .line 781
    if-gt v8, v4, :cond_20

    .line 782
    .line 783
    goto :goto_1a

    .line 784
    :cond_20
    mul-int/lit8 v3, v8, 0x2

    .line 785
    .line 786
    :goto_1a
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    check-cast v2, [Ljava/lang/Object;

    .line 791
    .line 792
    const/4 v3, 0x0

    .line 793
    invoke-static {v6, v3, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    .line 795
    .line 796
    move-object v6, v2

    .line 797
    :cond_21
    aput-object v0, v6, v8

    .line 798
    .line 799
    check-cast v6, [[I

    .line 800
    .line 801
    move-object/from16 v0, p0

    .line 802
    .line 803
    move-object/from16 v2, p3

    .line 804
    .line 805
    move v8, v1

    .line 806
    move/from16 v3, v30

    .line 807
    .line 808
    const/4 v4, 0x1

    .line 809
    const/4 v7, 0x0

    .line 810
    move-object/from16 v1, p2

    .line 811
    .line 812
    goto/16 :goto_0

    .line 813
    .line 814
    :goto_1b
    move-object/from16 v0, p0

    .line 815
    .line 816
    move-object/from16 v1, p2

    .line 817
    .line 818
    move-object/from16 v2, p3

    .line 819
    .line 820
    move/from16 v3, v30

    .line 821
    .line 822
    const/4 v4, 0x1

    .line 823
    const/4 v7, 0x0

    .line 824
    goto/16 :goto_0

    .line 825
    .line 826
    :cond_22
    new-array v0, v8, [I

    .line 827
    .line 828
    new-array v1, v8, [[I

    .line 829
    .line 830
    const/4 v2, 0x0

    .line 831
    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    .line 833
    .line 834
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 835
    .line 836
    .line 837
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 838
    .line 839
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 840
    .line 841
    .line 842
    return-object v2

    .line 843
    :cond_23
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 844
    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    .line 846
    .line 847
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    .line 849
    .line 850
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v2

    .line 854
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    const-string v2, ": invalid color state list tag "

    .line 858
    .line 859
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    throw v0
.end method
