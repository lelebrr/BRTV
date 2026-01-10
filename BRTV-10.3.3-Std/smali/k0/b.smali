.class public abstract Lk0/b;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Landroidx/media3/datasource/cache/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/datasource/cache/c;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroidx/media3/datasource/cache/c;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lk0/b;->a:Landroidx/media3/datasource/cache/c;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Lc2/b;)Lc6/b;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, v1, Lc2/b;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Ljava/lang/String;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    if-eqz v6, :cond_13

    .line 23
    .line 24
    iget-object v7, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v8, v1, Lc2/b;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v8, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_12

    .line 35
    .line 36
    iget-object v4, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    const/16 v7, 0x40

    .line 39
    .line 40
    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 45
    .line 46
    new-instance v4, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    array-length v7, v2

    .line 52
    const/4 v8, 0x0

    .line 53
    :goto_0
    if-ge v8, v7, :cond_0

    .line 54
    .line 55
    aget-object v9, v2, v8

    .line 56
    .line 57
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    sget-object v2, Lk0/b;->a:Landroidx/media3/datasource/cache/c;

    .line 68
    .line 69
    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    .line 71
    .line 72
    iget-object v7, v1, Lc2/b;->e:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v7, Ljava/util/List;

    .line 75
    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-static {v3, v5}, Le0/b;->l(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    :goto_1
    const/4 v3, 0x0

    .line 84
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    const/4 v9, 0x0

    .line 89
    if-ge v3, v8, :cond_4

    .line 90
    .line 91
    new-instance v8, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    check-cast v10, Ljava/util/Collection;

    .line 98
    .line 99
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eq v10, v11, :cond_2

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_2
    const/4 v10, 0x0

    .line 117
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-ge v10, v11, :cond_5

    .line 122
    .line 123
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    check-cast v11, [B

    .line 128
    .line 129
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    check-cast v12, [B

    .line 134
    .line 135
    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-nez v11, :cond_3

    .line 140
    .line 141
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    move-object v6, v9

    .line 148
    :cond_5
    const/4 v2, 0x1

    .line 149
    if-nez v6, :cond_6

    .line 150
    .line 151
    new-instance v0, Lc6/b;

    .line 152
    .line 153
    invoke-direct {v0, v2, v9}, Lc6/b;-><init>(I[Lk0/g;)V

    .line 154
    .line 155
    .line 156
    return-object v0

    .line 157
    :cond_6
    iget-object v3, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 158
    .line 159
    new-instance v4, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    new-instance v6, Landroid/net/Uri$Builder;

    .line 165
    .line 166
    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v7, "content"

    .line 170
    .line 171
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v6, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    new-instance v8, Landroid/net/Uri$Builder;

    .line 184
    .line 185
    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v7, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    const-string v7, "file"

    .line 197
    .line 198
    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    .line 208
    const/16 v8, 0x18

    .line 209
    .line 210
    if-ge v7, v8, :cond_7

    .line 211
    .line 212
    new-instance v7, Lk0/a;

    .line 213
    .line 214
    const/4 v8, 0x0

    .line 215
    invoke-direct {v7, v0, v6, v8}, Lk0/a;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_7
    new-instance v7, Lk0/a;

    .line 220
    .line 221
    const/4 v8, 0x1

    .line 222
    invoke-direct {v7, v0, v6, v8}, Lk0/a;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 223
    .line 224
    .line 225
    :goto_5
    :try_start_0
    const-string v10, "_id"

    .line 226
    .line 227
    const-string v11, "file_id"

    .line 228
    .line 229
    const-string v12, "font_ttc_index"

    .line 230
    .line 231
    const-string v13, "font_variation_settings"

    .line 232
    .line 233
    const-string v14, "font_weight"

    .line 234
    .line 235
    const-string v15, "font_italic"

    .line 236
    .line 237
    const-string v16, "result_code"

    .line 238
    .line 239
    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    iget-object v0, v1, Lc2/b;->d:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v0, Ljava/lang/String;

    .line 246
    .line 247
    filled-new-array {v0}, [Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v14

    .line 251
    iget v0, v7, Lk0/a;->a:I

    .line 252
    .line 253
    packed-switch v0, :pswitch_data_0

    .line 254
    .line 255
    .line 256
    const-string v13, "query = ?"

    .line 257
    .line 258
    const/4 v1, 0x0

    .line 259
    iget-object v10, v7, Lk0/a;->b:Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .line 261
    if-nez v10, :cond_8

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_8
    const/4 v15, 0x0

    .line 265
    const/16 v16, 0x0

    .line 266
    .line 267
    move-object v11, v6

    .line 268
    :try_start_1
    invoke-virtual/range {v10 .. v16}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 269
    .line 270
    .line 271
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    goto :goto_6

    .line 273
    :catch_0
    move-exception v0

    .line 274
    move-object v8, v0

    .line 275
    :try_start_2
    const-string v0, "FontsProvider"

    .line 276
    .line 277
    const-string v10, "Unable to query the content provider"

    .line 278
    .line 279
    invoke-static {v0, v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .line 281
    .line 282
    :goto_6
    move-object v9, v1

    .line 283
    goto :goto_7

    .line 284
    :pswitch_0
    const-string v13, "query = ?"

    .line 285
    .line 286
    const/4 v1, 0x0

    .line 287
    iget-object v10, v7, Lk0/a;->b:Landroid/content/ContentProviderClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    .line 289
    if-nez v10, :cond_9

    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_9
    const/4 v15, 0x0

    .line 293
    const/16 v16, 0x0

    .line 294
    .line 295
    move-object v11, v6

    .line 296
    :try_start_3
    invoke-virtual/range {v10 .. v16}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 297
    .line 298
    .line 299
    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    goto :goto_6

    .line 301
    :catch_1
    move-exception v0

    .line 302
    move-object v8, v0

    .line 303
    :try_start_4
    const-string v0, "FontsProvider"

    .line 304
    .line 305
    const-string v10, "Unable to query the content provider"

    .line 306
    .line 307
    invoke-static {v0, v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .line 309
    .line 310
    goto :goto_6

    .line 311
    :goto_7
    if-eqz v9, :cond_f

    .line 312
    .line 313
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-lez v0, :cond_f

    .line 318
    .line 319
    const-string v0, "result_code"

    .line 320
    .line 321
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    new-instance v4, Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string v1, "_id"

    .line 331
    .line 332
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    const-string v8, "file_id"

    .line 337
    .line 338
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    const-string v10, "font_ttc_index"

    .line 343
    .line 344
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v10

    .line 348
    const-string v11, "font_weight"

    .line 349
    .line 350
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    move-result v11

    .line 354
    const-string v12, "font_italic"

    .line 355
    .line 356
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    move-result v12

    .line 360
    :goto_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 361
    .line 362
    .line 363
    move-result v13

    .line 364
    if-eqz v13, :cond_f

    .line 365
    .line 366
    const/4 v13, -0x1

    .line 367
    if-eq v0, v13, :cond_a

    .line 368
    .line 369
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 370
    .line 371
    .line 372
    move-result v14

    .line 373
    move/from16 v20, v14

    .line 374
    .line 375
    goto :goto_9

    .line 376
    :catchall_0
    move-exception v0

    .line 377
    goto :goto_f

    .line 378
    :cond_a
    const/16 v20, 0x0

    .line 379
    .line 380
    :goto_9
    if-eq v10, v13, :cond_b

    .line 381
    .line 382
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 383
    .line 384
    .line 385
    move-result v14

    .line 386
    move/from16 v17, v14

    .line 387
    .line 388
    goto :goto_a

    .line 389
    :cond_b
    const/16 v17, 0x0

    .line 390
    .line 391
    :goto_a
    if-ne v8, v13, :cond_c

    .line 392
    .line 393
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 394
    .line 395
    .line 396
    move-result-wide v14

    .line 397
    invoke-static {v6, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 398
    .line 399
    .line 400
    move-result-object v14

    .line 401
    :goto_b
    move-object/from16 v16, v14

    .line 402
    .line 403
    goto :goto_c

    .line 404
    :cond_c
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 405
    .line 406
    .line 407
    move-result-wide v14

    .line 408
    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 409
    .line 410
    .line 411
    move-result-object v14

    .line 412
    goto :goto_b

    .line 413
    :goto_c
    if-eq v11, v13, :cond_d

    .line 414
    .line 415
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 416
    .line 417
    .line 418
    move-result v14

    .line 419
    move/from16 v18, v14

    .line 420
    .line 421
    goto :goto_d

    .line 422
    :cond_d
    const/16 v14, 0x190

    .line 423
    .line 424
    const/16 v18, 0x190

    .line 425
    .line 426
    :goto_d
    if-eq v12, v13, :cond_e

    .line 427
    .line 428
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 429
    .line 430
    .line 431
    move-result v13

    .line 432
    if-ne v13, v2, :cond_e

    .line 433
    .line 434
    const/16 v19, 0x1

    .line 435
    .line 436
    goto :goto_e

    .line 437
    :cond_e
    const/16 v19, 0x0

    .line 438
    .line 439
    :goto_e
    new-instance v13, Lk0/g;

    .line 440
    .line 441
    move-object v15, v13

    .line 442
    invoke-direct/range {v15 .. v20}, Lk0/g;-><init>(Landroid/net/Uri;IIZI)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 446
    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_f
    if-eqz v9, :cond_10

    .line 450
    .line 451
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 452
    .line 453
    .line 454
    :cond_10
    invoke-virtual {v7}, Lk0/a;->a()V

    .line 455
    .line 456
    .line 457
    new-array v0, v5, [Lk0/g;

    .line 458
    .line 459
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    check-cast v0, [Lk0/g;

    .line 464
    .line 465
    new-instance v1, Lc6/b;

    .line 466
    .line 467
    invoke-direct {v1, v5, v0}, Lc6/b;-><init>(I[Lk0/g;)V

    .line 468
    .line 469
    .line 470
    return-object v1

    .line 471
    :goto_f
    if-eqz v9, :cond_11

    .line 472
    .line 473
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 474
    .line 475
    .line 476
    :cond_11
    invoke-virtual {v7}, Lk0/a;->a()V

    .line 477
    .line 478
    .line 479
    throw v0

    .line 480
    :cond_12
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 481
    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    const-string v2, "Found content provider "

    .line 485
    .line 486
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v2, ", but package was not "

    .line 493
    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    throw v0

    .line 508
    :cond_13
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 509
    .line 510
    const-string v1, "No package found for authority: "

    .line 511
    .line 512
    invoke-static {v1, v4}, Lea/q;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    throw v0

    .line 520
    nop

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
