.class public final Lz5/b;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Lcom/google/android/material/badge/BadgeState$State;

.field public final b:Lcom/google/android/material/badge/BadgeState$State;

.field public final c:F

.field public final d:F

.field public final e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/google/android/material/badge/BadgeState$State;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lcom/google/android/material/badge/BadgeState$State;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 20
    .line 21
    .line 22
    move-object v8, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object/from16 v8, p2

    .line 25
    .line 26
    :goto_0
    iget v2, v8, Lcom/google/android/material/badge/BadgeState$State;->a:I

    .line 27
    .line 28
    const/4 v9, 0x2

    .line 29
    const/4 v10, 0x1

    .line 30
    const/4 v11, 0x0

    .line 31
    if-eqz v2, :cond_5

    .line 32
    .line 33
    const-string v3, "badge"

    .line 34
    .line 35
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eq v5, v9, :cond_2

    .line 48
    .line 49
    if-ne v5, v10, :cond_1

    .line 50
    .line 51
    :cond_2
    if-ne v5, v9, :cond_4

    .line 52
    .line 53
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 64
    .line 65
    .line 66
    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-interface {v2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    move-object v4, v2

    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v5, "Must have a <"

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, "> start tag"

    .line 93
    .line 94
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 106
    .line 107
    const-string v3, "No start tag found"

    .line 108
    .line 109
    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    :goto_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    .line 114
    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v5, "Can\'t load badge resource ID #0x"

    .line 118
    .line 119
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-direct {v3, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 137
    .line 138
    .line 139
    throw v3

    .line 140
    :cond_5
    const/4 v2, 0x0

    .line 141
    move-object v4, v2

    .line 142
    const/4 v3, 0x0

    .line 143
    :goto_2
    if-nez v3, :cond_6

    .line 144
    .line 145
    const v2, 0x7f130474

    .line 146
    .line 147
    .line 148
    const v6, 0x7f130474

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_6
    move v6, v3

    .line 153
    :goto_3
    sget-object v5, Lx5/a;->c:[I

    .line 154
    .line 155
    new-array v7, v11, [I

    .line 156
    .line 157
    const v12, 0x7f040053

    .line 158
    .line 159
    .line 160
    move-object/from16 v2, p1

    .line 161
    .line 162
    move-object v3, v4

    .line 163
    move-object v4, v5

    .line 164
    move v5, v12

    .line 165
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/a0;->j(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    const v4, 0x7f0702c1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-virtual {v2, v9, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    int-to-float v4, v4

    .line 185
    iput v4, v1, Lz5/b;->c:F

    .line 186
    .line 187
    const v4, 0x7f0702c0

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    const/4 v5, 0x4

    .line 195
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    int-to-float v4, v4

    .line 200
    iput v4, v1, Lz5/b;->e:F

    .line 201
    .line 202
    const v4, 0x7f0702c6

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    const/4 v4, 0x5

    .line 210
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    int-to-float v3, v3

    .line 215
    iput v3, v1, Lz5/b;->d:F

    .line 216
    .line 217
    iget-object v3, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 218
    .line 219
    iget v6, v8, Lcom/google/android/material/badge/BadgeState$State;->d:I

    .line 220
    .line 221
    const/4 v7, -0x2

    .line 222
    if-ne v6, v7, :cond_7

    .line 223
    .line 224
    const/16 v6, 0xff

    .line 225
    .line 226
    :cond_7
    iput v6, v3, Lcom/google/android/material/badge/BadgeState$State;->d:I

    .line 227
    .line 228
    iget-object v6, v8, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/CharSequence;

    .line 229
    .line 230
    if-nez v6, :cond_8

    .line 231
    .line 232
    const v6, 0x7f120177

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    :cond_8
    iput-object v6, v3, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/CharSequence;

    .line 240
    .line 241
    iget-object v3, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 242
    .line 243
    iget v6, v8, Lcom/google/android/material/badge/BadgeState$State;->i:I

    .line 244
    .line 245
    if-nez v6, :cond_9

    .line 246
    .line 247
    const v6, 0x7f100002

    .line 248
    .line 249
    .line 250
    :cond_9
    iput v6, v3, Lcom/google/android/material/badge/BadgeState$State;->i:I

    .line 251
    .line 252
    iget v6, v8, Lcom/google/android/material/badge/BadgeState$State;->j:I

    .line 253
    .line 254
    if-nez v6, :cond_a

    .line 255
    .line 256
    const v6, 0x7f120179

    .line 257
    .line 258
    .line 259
    :cond_a
    iput v6, v3, Lcom/google/android/material/badge/BadgeState$State;->j:I

    .line 260
    .line 261
    iget-object v6, v8, Lcom/google/android/material/badge/BadgeState$State;->l:Ljava/lang/Boolean;

    .line 262
    .line 263
    if-eqz v6, :cond_c

    .line 264
    .line 265
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-eqz v6, :cond_b

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_b
    const/4 v6, 0x0

    .line 273
    goto :goto_5

    .line 274
    :cond_c
    :goto_4
    const/4 v6, 0x1

    .line 275
    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    iput-object v6, v3, Lcom/google/android/material/badge/BadgeState$State;->l:Ljava/lang/Boolean;

    .line 280
    .line 281
    iget-object v3, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 282
    .line 283
    iget v6, v8, Lcom/google/android/material/badge/BadgeState$State;->f:I

    .line 284
    .line 285
    const/16 v12, 0x8

    .line 286
    .line 287
    if-ne v6, v7, :cond_d

    .line 288
    .line 289
    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    :cond_d
    iput v6, v3, Lcom/google/android/material/badge/BadgeState$State;->f:I

    .line 294
    .line 295
    iget v3, v8, Lcom/google/android/material/badge/BadgeState$State;->e:I

    .line 296
    .line 297
    const/16 v6, 0x9

    .line 298
    .line 299
    if-eq v3, v7, :cond_e

    .line 300
    .line 301
    iget-object v7, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 302
    .line 303
    iput v3, v7, Lcom/google/android/material/badge/BadgeState$State;->e:I

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_e
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_f

    .line 311
    .line 312
    iget-object v3, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 313
    .line 314
    invoke-virtual {v2, v6, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    iput v7, v3, Lcom/google/android/material/badge/BadgeState$State;->e:I

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_f
    iget-object v3, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 322
    .line 323
    const/4 v7, -0x1

    .line 324
    iput v7, v3, Lcom/google/android/material/badge/BadgeState$State;->e:I

    .line 325
    .line 326
    :goto_6
    iget-object v3, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 327
    .line 328
    iget-object v7, v8, Lcom/google/android/material/badge/BadgeState$State;->b:Ljava/lang/Integer;

    .line 329
    .line 330
    if-nez v7, :cond_10

    .line 331
    .line 332
    invoke-static {v0, v2, v11}, Lcom/bumptech/glide/d;->k(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    goto :goto_7

    .line 341
    :cond_10
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    :goto_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    iput-object v7, v3, Lcom/google/android/material/badge/BadgeState$State;->b:Ljava/lang/Integer;

    .line 350
    .line 351
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    .line 352
    .line 353
    const/4 v7, 0x7

    .line 354
    const/4 v13, 0x6

    .line 355
    if-eqz v3, :cond_11

    .line 356
    .line 357
    iget-object v0, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 358
    .line 359
    iput-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    .line 360
    .line 361
    goto/16 :goto_9

    .line 362
    .line 363
    :cond_11
    const/4 v3, 0x3

    .line 364
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 365
    .line 366
    .line 367
    move-result v15

    .line 368
    if-eqz v15, :cond_12

    .line 369
    .line 370
    iget-object v4, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 371
    .line 372
    invoke-static {v0, v2, v3}, Lcom/bumptech/glide/d;->k(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    iput-object v0, v4, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_12
    sget-object v15, Lx5/a;->Z:[I

    .line 388
    .line 389
    const v14, 0x7f130232

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 393
    .line 394
    .line 395
    move-result-object v15

    .line 396
    const/4 v14, 0x0

    .line 397
    invoke-virtual {v15, v11, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 398
    .line 399
    .line 400
    invoke-static {v0, v15, v3}, Lcom/bumptech/glide/d;->k(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-static {v0, v15, v5}, Lcom/bumptech/glide/d;->k(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 405
    .line 406
    .line 407
    invoke-static {v0, v15, v4}, Lcom/bumptech/glide/d;->k(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v15, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 411
    .line 412
    .line 413
    invoke-virtual {v15, v10, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 414
    .line 415
    .line 416
    const/16 v4, 0xc

    .line 417
    .line 418
    invoke-virtual {v15, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    if-eqz v5, :cond_13

    .line 423
    .line 424
    goto :goto_8

    .line 425
    :cond_13
    const/16 v4, 0xa

    .line 426
    .line 427
    :goto_8
    invoke-virtual {v15, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 428
    .line 429
    .line 430
    invoke-virtual {v15, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    const/16 v4, 0xe

    .line 434
    .line 435
    invoke-virtual {v15, v4, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 436
    .line 437
    .line 438
    invoke-static {v0, v15, v13}, Lcom/bumptech/glide/d;->k(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v15, v7, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 442
    .line 443
    .line 444
    invoke-virtual {v15, v12, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 445
    .line 446
    .line 447
    invoke-virtual {v15, v6, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 448
    .line 449
    .line 450
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 451
    .line 452
    .line 453
    sget-object v4, Lx5/a;->H:[I

    .line 454
    .line 455
    const v5, 0x7f130232

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v11, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 469
    .line 470
    .line 471
    iget-object v0, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 472
    .line 473
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    iput-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    .line 482
    .line 483
    :goto_9
    iget-object v0, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 484
    .line 485
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->k:Ljava/lang/Integer;

    .line 486
    .line 487
    if-nez v3, :cond_14

    .line 488
    .line 489
    const v3, 0x800035

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2, v10, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    goto :goto_a

    .line 497
    :cond_14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    :goto_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    iput-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->k:Ljava/lang/Integer;

    .line 506
    .line 507
    iget-object v0, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 508
    .line 509
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/Integer;

    .line 510
    .line 511
    if-nez v3, :cond_15

    .line 512
    .line 513
    invoke-virtual {v2, v13, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    goto :goto_b

    .line 518
    :cond_15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    iput-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/Integer;

    .line 527
    .line 528
    iget-object v0, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 529
    .line 530
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/Integer;

    .line 531
    .line 532
    if-nez v3, :cond_16

    .line 533
    .line 534
    const/16 v3, 0xa

    .line 535
    .line 536
    invoke-virtual {v2, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    goto :goto_c

    .line 541
    :cond_16
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/lang/Integer;

    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    iput-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/lang/Integer;

    .line 552
    .line 553
    iget-object v0, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 554
    .line 555
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->o:Ljava/lang/Integer;

    .line 556
    .line 557
    if-nez v3, :cond_17

    .line 558
    .line 559
    iget-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->m:Ljava/lang/Integer;

    .line 560
    .line 561
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 566
    .line 567
    .line 568
    move-result v3

    .line 569
    goto :goto_d

    .line 570
    :cond_17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    :goto_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    iput-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->o:Ljava/lang/Integer;

    .line 579
    .line 580
    iget-object v0, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 581
    .line 582
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->p:Ljava/lang/Integer;

    .line 583
    .line 584
    if-nez v3, :cond_18

    .line 585
    .line 586
    iget-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/lang/Integer;

    .line 587
    .line 588
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    const/16 v4, 0xb

    .line 593
    .line 594
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    goto :goto_e

    .line 599
    :cond_18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 600
    .line 601
    .line 602
    move-result v3

    .line 603
    :goto_e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    iput-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->p:Ljava/lang/Integer;

    .line 608
    .line 609
    iget-object v0, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 610
    .line 611
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->q:Ljava/lang/Integer;

    .line 612
    .line 613
    if-nez v3, :cond_19

    .line 614
    .line 615
    const/4 v3, 0x0

    .line 616
    goto :goto_f

    .line 617
    :cond_19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    :goto_f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 622
    .line 623
    .line 624
    move-result-object v3

    .line 625
    iput-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->q:Ljava/lang/Integer;

    .line 626
    .line 627
    iget-object v0, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 628
    .line 629
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/lang/Integer;

    .line 630
    .line 631
    if-nez v3, :cond_1a

    .line 632
    .line 633
    goto :goto_10

    .line 634
    :cond_1a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 635
    .line 636
    .line 637
    move-result v11

    .line 638
    :goto_10
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 639
    .line 640
    .line 641
    move-result-object v3

    .line 642
    iput-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/lang/Integer;

    .line 643
    .line 644
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 645
    .line 646
    .line 647
    iget-object v0, v8, Lcom/google/android/material/badge/BadgeState$State;->g:Ljava/util/Locale;

    .line 648
    .line 649
    if-nez v0, :cond_1c

    .line 650
    .line 651
    iget-object v0, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 652
    .line 653
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 654
    .line 655
    const/16 v3, 0x18

    .line 656
    .line 657
    if-lt v2, v3, :cond_1b

    .line 658
    .line 659
    invoke-static {}, Lk3/p;->g()Ljava/util/Locale$Category;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    invoke-static {v2}, Landroid/support/v4/media/b;->l(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    goto :goto_11

    .line 668
    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    :goto_11
    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->g:Ljava/util/Locale;

    .line 673
    .line 674
    goto :goto_12

    .line 675
    :cond_1c
    iget-object v2, v1, Lz5/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 676
    .line 677
    iput-object v0, v2, Lcom/google/android/material/badge/BadgeState$State;->g:Ljava/util/Locale;

    .line 678
    .line 679
    :goto_12
    iput-object v8, v1, Lz5/b;->a:Lcom/google/android/material/badge/BadgeState$State;

    .line 680
    .line 681
    return-void
.end method
