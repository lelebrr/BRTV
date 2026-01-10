.class public final Lh4/i;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb4/f;

.field public final c:Li4/d;

.field public final d:Lh4/d;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lj4/c;

.field public final g:Lk4/a;

.field public final h:Lk4/a;

.field public final i:Li4/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb4/f;Li4/d;Lh4/d;Ljava/util/concurrent/Executor;Lj4/c;Lk4/a;Lk4/a;Li4/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh4/i;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lh4/i;->b:Lb4/f;

    .line 7
    .line 8
    iput-object p3, p0, Lh4/i;->c:Li4/d;

    .line 9
    .line 10
    iput-object p4, p0, Lh4/i;->d:Lh4/d;

    .line 11
    .line 12
    iput-object p5, p0, Lh4/i;->e:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p6, p0, Lh4/i;->f:Lj4/c;

    .line 15
    .line 16
    iput-object p7, p0, Lh4/i;->g:Lk4/a;

    .line 17
    .line 18
    iput-object p8, p0, Lh4/i;->h:Lk4/a;

    .line 19
    .line 20
    iput-object p9, p0, Lh4/i;->i:Li4/c;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(La4/j;I)V
    .locals 45

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    iget-object v0, v7, Lh4/i;->b:Lb4/f;

    .line 10
    .line 11
    iget-object v3, v8, La4/j;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Lb4/f;->a(Ljava/lang/String;)Lb4/g;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-wide/16 v10, 0x0

    .line 18
    .line 19
    :goto_0
    new-instance v0, Lh4/g;

    .line 20
    .line 21
    invoke-direct {v0, v7, v8, v2}, Lh4/g;-><init>(Lh4/i;La4/j;I)V

    .line 22
    .line 23
    .line 24
    iget-object v6, v7, Lh4/i;->f:Lj4/c;

    .line 25
    .line 26
    move-object v12, v6

    .line 27
    check-cast v12, Li4/g;

    .line 28
    .line 29
    invoke-virtual {v12, v0}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_20

    .line 40
    .line 41
    new-instance v0, Lh4/g;

    .line 42
    .line 43
    invoke-direct {v0, v7, v8, v9}, Lh4/g;-><init>(Lh4/i;La4/j;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v12, v0}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object v6, v0

    .line 51
    check-cast v6, Ljava/lang/Iterable;

    .line 52
    .line 53
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x3

    .line 65
    const-wide/16 v14, -0x1

    .line 66
    .line 67
    iget-object v4, v8, La4/j;->b:[B

    .line 68
    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    const-string v13, "Uploader"

    .line 72
    .line 73
    const-string v5, "Unknown backend for %s, deleting event batch for it..."

    .line 74
    .line 75
    invoke-static {v13, v5, v8}, Lo9/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance v5, Lb4/a;

    .line 79
    .line 80
    invoke-direct {v5, v0, v14, v15}, Lb4/a;-><init>(IJ)V

    .line 81
    .line 82
    .line 83
    move-object/from16 v31, v3

    .line 84
    .line 85
    move-object/from16 v33, v12

    .line 86
    .line 87
    :goto_1
    const/4 v1, 0x2

    .line 88
    goto/16 :goto_12

    .line 89
    .line 90
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v16

    .line 103
    if-eqz v16, :cond_2

    .line 104
    .line 105
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v16

    .line 109
    move-object/from16 v9, v16

    .line 110
    .line 111
    check-cast v9, Li4/b;

    .line 112
    .line 113
    iget-object v9, v9, Li4/b;->c:La4/i;

    .line 114
    .line 115
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    const/4 v9, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    if-eqz v4, :cond_3

    .line 121
    .line 122
    const/4 v9, 0x1

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    const/4 v9, 0x0

    .line 125
    :goto_3
    const-string v13, "proto"

    .line 126
    .line 127
    if-eqz v9, :cond_4

    .line 128
    .line 129
    iget-object v9, v7, Lh4/i;->i:Li4/c;

    .line 130
    .line 131
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    new-instance v0, Landroidx/media3/common/x;

    .line 135
    .line 136
    invoke-direct {v0, v1, v9}, Landroidx/media3/common/x;-><init>(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v12, v0}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Le4/a;

    .line 144
    .line 145
    new-instance v9, La4/h;

    .line 146
    .line 147
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 148
    .line 149
    .line 150
    new-instance v1, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object v1, v9, La4/h;->f:Ljava/lang/Object;

    .line 156
    .line 157
    iget-object v1, v7, Lh4/i;->g:Lk4/a;

    .line 158
    .line 159
    invoke-interface {v1}, Lk4/a;->c()J

    .line 160
    .line 161
    .line 162
    move-result-wide v17

    .line 163
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iput-object v1, v9, La4/h;->d:Ljava/lang/Object;

    .line 168
    .line 169
    iget-object v1, v7, Lh4/i;->h:Lk4/a;

    .line 170
    .line 171
    invoke-interface {v1}, Lk4/a;->c()J

    .line 172
    .line 173
    .line 174
    move-result-wide v17

    .line 175
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iput-object v1, v9, La4/h;->e:Ljava/io/Serializable;

    .line 180
    .line 181
    const-string v1, "GDT_CLIENT_METRICS"

    .line 182
    .line 183
    iput-object v1, v9, La4/h;->a:Ljava/io/Serializable;

    .line 184
    .line 185
    new-instance v1, La4/n;

    .line 186
    .line 187
    new-instance v14, Lx3/b;

    .line 188
    .line 189
    invoke-direct {v14, v13}, Lx3/b;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    sget-object v15, La4/p;->a:La1/b;

    .line 196
    .line 197
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .line 204
    .line 205
    :try_start_0
    invoke-virtual {v15, v0, v2}, La1/b;->j(Le4/a;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    .line 208
    :catch_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-direct {v1, v14, v0}, La4/n;-><init>(Lx3/b;[B)V

    .line 213
    .line 214
    .line 215
    iput-object v1, v9, La4/h;->c:Ljava/lang/Object;

    .line 216
    .line 217
    invoke-virtual {v9}, La4/h;->c()La4/i;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    move-object v1, v3

    .line 222
    check-cast v1, Ly3/d;

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Ly3/d;->a(La4/i;)La4/i;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    :cond_4
    move-object v0, v3

    .line 232
    check-cast v0, Ly3/d;

    .line 233
    .line 234
    new-instance v1, Ljava/util/HashMap;

    .line 235
    .line 236
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-eqz v5, :cond_6

    .line 248
    .line 249
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    check-cast v5, La4/i;

    .line 254
    .line 255
    iget-object v9, v5, La4/i;->a:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v14

    .line 261
    if-nez v14, :cond_5

    .line 262
    .line 263
    new-instance v14, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_5
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    check-cast v9, Ljava/util/List;

    .line 280
    .line 281
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    const-string v9, "TransportRuntime."

    .line 303
    .line 304
    const-string v15, "CctTransportBackend"

    .line 305
    .line 306
    if-eqz v5, :cond_10

    .line 307
    .line 308
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    check-cast v5, Ljava/util/Map$Entry;

    .line 313
    .line 314
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v20

    .line 318
    move-object/from16 v14, v20

    .line 319
    .line 320
    check-cast v14, Ljava/util/List;

    .line 321
    .line 322
    move-object/from16 v20, v1

    .line 323
    .line 324
    const/4 v1, 0x0

    .line 325
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    check-cast v14, La4/i;

    .line 330
    .line 331
    sget-object v19, Lz3/w;->a:Lz3/w;

    .line 332
    .line 333
    iget-object v1, v0, Ly3/d;->f:Lk4/a;

    .line 334
    .line 335
    invoke-interface {v1}, Lk4/a;->c()J

    .line 336
    .line 337
    .line 338
    move-result-wide v23

    .line 339
    iget-object v1, v0, Ly3/d;->e:Lk4/a;

    .line 340
    .line 341
    invoke-interface {v1}, Lk4/a;->c()J

    .line 342
    .line 343
    .line 344
    move-result-wide v25

    .line 345
    const-string v1, "sdk-version"

    .line 346
    .line 347
    invoke-virtual {v14, v1}, La4/i;->b(Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v28

    .line 355
    const-string v1, "model"

    .line 356
    .line 357
    invoke-virtual {v14, v1}, La4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v29

    .line 361
    const-string v1, "hardware"

    .line 362
    .line 363
    invoke-virtual {v14, v1}, La4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v30

    .line 367
    const-string v1, "device"

    .line 368
    .line 369
    invoke-virtual {v14, v1}, La4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v31

    .line 373
    const-string v1, "product"

    .line 374
    .line 375
    invoke-virtual {v14, v1}, La4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v32

    .line 379
    const-string v1, "os-uild"

    .line 380
    .line 381
    invoke-virtual {v14, v1}, La4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v33

    .line 385
    const-string v1, "manufacturer"

    .line 386
    .line 387
    invoke-virtual {v14, v1}, La4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v34

    .line 391
    const-string v1, "fingerprint"

    .line 392
    .line 393
    invoke-virtual {v14, v1}, La4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v35

    .line 397
    const-string v1, "country"

    .line 398
    .line 399
    invoke-virtual {v14, v1}, La4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v37

    .line 403
    const-string v1, "locale"

    .line 404
    .line 405
    invoke-virtual {v14, v1}, La4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v36

    .line 409
    const-string v1, "mcc_mnc"

    .line 410
    .line 411
    invoke-virtual {v14, v1}, La4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v38

    .line 415
    const-string v1, "application_build"

    .line 416
    .line 417
    invoke-virtual {v14, v1}, La4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v39

    .line 421
    new-instance v1, Lz3/h;

    .line 422
    .line 423
    move-object/from16 v27, v1

    .line 424
    .line 425
    invoke-direct/range {v27 .. v39}, Lz3/h;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    new-instance v14, Lz3/j;

    .line 429
    .line 430
    invoke-direct {v14, v1}, Lz3/j;-><init>(Lz3/h;)V

    .line 431
    .line 432
    .line 433
    :try_start_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    check-cast v1, Ljava/lang/String;

    .line 438
    .line 439
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    move-object/from16 v28, v1

    .line 448
    .line 449
    const/16 v29, 0x0

    .line 450
    .line 451
    goto :goto_6

    .line 452
    :catch_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    check-cast v1, Ljava/lang/String;

    .line 457
    .line 458
    move-object/from16 v29, v1

    .line 459
    .line 460
    const/16 v28, 0x0

    .line 461
    .line 462
    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    check-cast v5, Ljava/util/List;

    .line 472
    .line 473
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 478
    .line 479
    .line 480
    move-result v21

    .line 481
    if-eqz v21, :cond_f

    .line 482
    .line 483
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v21

    .line 487
    move-object/from16 v31, v3

    .line 488
    .line 489
    move-object/from16 v3, v21

    .line 490
    .line 491
    check-cast v3, La4/i;

    .line 492
    .line 493
    move-object/from16 v21, v5

    .line 494
    .line 495
    iget-object v5, v3, La4/i;->c:La4/n;

    .line 496
    .line 497
    iget-object v8, v5, La4/n;->a:Lx3/b;

    .line 498
    .line 499
    new-instance v7, Lx3/b;

    .line 500
    .line 501
    invoke-direct {v7, v13}, Lx3/b;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v8, v7}, Lx3/b;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v7

    .line 508
    iget-object v5, v5, La4/n;->b:[B

    .line 509
    .line 510
    if-eqz v7, :cond_7

    .line 511
    .line 512
    new-instance v7, Landroidx/appcompat/widget/z3;

    .line 513
    .line 514
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 515
    .line 516
    .line 517
    iput-object v5, v7, Landroidx/appcompat/widget/z3;->d:Ljava/lang/Object;

    .line 518
    .line 519
    move-object/from16 v33, v12

    .line 520
    .line 521
    move-object/from16 v32, v13

    .line 522
    .line 523
    goto :goto_8

    .line 524
    :cond_7
    new-instance v7, Lx3/b;

    .line 525
    .line 526
    move-object/from16 v32, v13

    .line 527
    .line 528
    const-string v13, "json"

    .line 529
    .line 530
    invoke-direct {v7, v13}, Lx3/b;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v8, v7}, Lx3/b;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v7

    .line 537
    if-eqz v7, :cond_e

    .line 538
    .line 539
    new-instance v7, Ljava/lang/String;

    .line 540
    .line 541
    const-string v8, "UTF-8"

    .line 542
    .line 543
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 548
    .line 549
    .line 550
    new-instance v5, Landroidx/appcompat/widget/z3;

    .line 551
    .line 552
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 553
    .line 554
    .line 555
    iput-object v7, v5, Landroidx/appcompat/widget/z3;->e:Ljava/lang/Object;

    .line 556
    .line 557
    move-object v7, v5

    .line 558
    move-object/from16 v33, v12

    .line 559
    .line 560
    :goto_8
    iget-wide v12, v3, La4/i;->d:J

    .line 561
    .line 562
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    iput-object v5, v7, Landroidx/appcompat/widget/z3;->a:Ljava/lang/Object;

    .line 567
    .line 568
    iget-wide v12, v3, La4/i;->e:J

    .line 569
    .line 570
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    iput-object v5, v7, Landroidx/appcompat/widget/z3;->c:Ljava/lang/Object;

    .line 575
    .line 576
    iget-object v5, v3, La4/i;->f:Ljava/util/HashMap;

    .line 577
    .line 578
    const-string v8, "tz-offset"

    .line 579
    .line 580
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    check-cast v5, Ljava/lang/String;

    .line 585
    .line 586
    if-nez v5, :cond_8

    .line 587
    .line 588
    const-wide/16 v12, 0x0

    .line 589
    .line 590
    goto :goto_9

    .line 591
    :cond_8
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 596
    .line 597
    .line 598
    move-result-wide v12

    .line 599
    :goto_9
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 600
    .line 601
    .line 602
    move-result-object v5

    .line 603
    iput-object v5, v7, Landroidx/appcompat/widget/z3;->f:Ljava/lang/Object;

    .line 604
    .line 605
    const-string v5, "net-type"

    .line 606
    .line 607
    invoke-virtual {v3, v5}, La4/i;->b(Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    sget-object v8, Lz3/u;->a:Landroid/util/SparseArray;

    .line 612
    .line 613
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    check-cast v5, Lz3/u;

    .line 618
    .line 619
    const-string v8, "mobile-subtype"

    .line 620
    .line 621
    invoke-virtual {v3, v8}, La4/i;->b(Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    move-result v8

    .line 625
    sget-object v12, Lz3/t;->a:Landroid/util/SparseArray;

    .line 626
    .line 627
    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v8

    .line 631
    check-cast v8, Lz3/t;

    .line 632
    .line 633
    new-instance v12, Lz3/n;

    .line 634
    .line 635
    invoke-direct {v12, v5, v8}, Lz3/n;-><init>(Lz3/u;Lz3/t;)V

    .line 636
    .line 637
    .line 638
    iput-object v12, v7, Landroidx/appcompat/widget/z3;->g:Ljava/lang/Object;

    .line 639
    .line 640
    iget-object v3, v3, La4/i;->b:Ljava/lang/Integer;

    .line 641
    .line 642
    if-eqz v3, :cond_9

    .line 643
    .line 644
    iput-object v3, v7, Landroidx/appcompat/widget/z3;->b:Ljava/lang/Object;

    .line 645
    .line 646
    :cond_9
    iget-object v3, v7, Landroidx/appcompat/widget/z3;->a:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v3, Ljava/lang/Long;

    .line 649
    .line 650
    if-nez v3, :cond_a

    .line 651
    .line 652
    const-string v3, " eventTimeMs"

    .line 653
    .line 654
    goto :goto_a

    .line 655
    :cond_a
    const-string v3, ""

    .line 656
    .line 657
    :goto_a
    iget-object v5, v7, Landroidx/appcompat/widget/z3;->c:Ljava/lang/Object;

    .line 658
    .line 659
    check-cast v5, Ljava/lang/Long;

    .line 660
    .line 661
    if-nez v5, :cond_b

    .line 662
    .line 663
    const-string v5, " eventUptimeMs"

    .line 664
    .line 665
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    :cond_b
    iget-object v5, v7, Landroidx/appcompat/widget/z3;->f:Ljava/lang/Object;

    .line 670
    .line 671
    check-cast v5, Ljava/lang/Long;

    .line 672
    .line 673
    if-nez v5, :cond_c

    .line 674
    .line 675
    const-string v5, " timezoneOffsetSeconds"

    .line 676
    .line 677
    invoke-static {v3, v5}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 682
    .line 683
    .line 684
    move-result v5

    .line 685
    if-eqz v5, :cond_d

    .line 686
    .line 687
    new-instance v3, Lz3/k;

    .line 688
    .line 689
    iget-object v5, v7, Landroidx/appcompat/widget/z3;->a:Ljava/lang/Object;

    .line 690
    .line 691
    check-cast v5, Ljava/lang/Long;

    .line 692
    .line 693
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 694
    .line 695
    .line 696
    move-result-wide v35

    .line 697
    iget-object v5, v7, Landroidx/appcompat/widget/z3;->b:Ljava/lang/Object;

    .line 698
    .line 699
    move-object/from16 v37, v5

    .line 700
    .line 701
    check-cast v37, Ljava/lang/Integer;

    .line 702
    .line 703
    iget-object v5, v7, Landroidx/appcompat/widget/z3;->c:Ljava/lang/Object;

    .line 704
    .line 705
    check-cast v5, Ljava/lang/Long;

    .line 706
    .line 707
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 708
    .line 709
    .line 710
    move-result-wide v38

    .line 711
    iget-object v5, v7, Landroidx/appcompat/widget/z3;->d:Ljava/lang/Object;

    .line 712
    .line 713
    move-object/from16 v40, v5

    .line 714
    .line 715
    check-cast v40, [B

    .line 716
    .line 717
    iget-object v5, v7, Landroidx/appcompat/widget/z3;->e:Ljava/lang/Object;

    .line 718
    .line 719
    move-object/from16 v41, v5

    .line 720
    .line 721
    check-cast v41, Ljava/lang/String;

    .line 722
    .line 723
    iget-object v5, v7, Landroidx/appcompat/widget/z3;->f:Ljava/lang/Object;

    .line 724
    .line 725
    check-cast v5, Ljava/lang/Long;

    .line 726
    .line 727
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 728
    .line 729
    .line 730
    move-result-wide v42

    .line 731
    iget-object v5, v7, Landroidx/appcompat/widget/z3;->g:Ljava/lang/Object;

    .line 732
    .line 733
    move-object/from16 v44, v5

    .line 734
    .line 735
    check-cast v44, Lz3/n;

    .line 736
    .line 737
    move-object/from16 v34, v3

    .line 738
    .line 739
    invoke-direct/range {v34 .. v44}, Lz3/k;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLz3/n;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    :goto_b
    move-object/from16 v7, p0

    .line 746
    .line 747
    move-object/from16 v8, p1

    .line 748
    .line 749
    move-object/from16 v5, v21

    .line 750
    .line 751
    move-object/from16 v3, v31

    .line 752
    .line 753
    move-object/from16 v13, v32

    .line 754
    .line 755
    move-object/from16 v12, v33

    .line 756
    .line 757
    goto/16 :goto_7

    .line 758
    .line 759
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 760
    .line 761
    const-string v1, "Missing required properties:"

    .line 762
    .line 763
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    throw v0

    .line 771
    :cond_e
    move-object/from16 v33, v12

    .line 772
    .line 773
    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v3

    .line 777
    new-instance v5, Ljava/lang/StringBuilder;

    .line 778
    .line 779
    const-string v7, "Received event of unsupported encoding "

    .line 780
    .line 781
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    const-string v7, ". Skipping..."

    .line 788
    .line 789
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v5

    .line 796
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .line 798
    .line 799
    goto :goto_b

    .line 800
    :cond_f
    move-object/from16 v31, v3

    .line 801
    .line 802
    move-object/from16 v33, v12

    .line 803
    .line 804
    move-object/from16 v32, v13

    .line 805
    .line 806
    new-instance v3, Lz3/l;

    .line 807
    .line 808
    move-object/from16 v22, v3

    .line 809
    .line 810
    move-object/from16 v27, v14

    .line 811
    .line 812
    move-object/from16 v30, v1

    .line 813
    .line 814
    invoke-direct/range {v22 .. v30}, Lz3/l;-><init>(JJLz3/j;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-object/from16 v7, p0

    .line 821
    .line 822
    move-object/from16 v8, p1

    .line 823
    .line 824
    move-object/from16 v1, v20

    .line 825
    .line 826
    move-object/from16 v3, v31

    .line 827
    .line 828
    move-object/from16 v13, v32

    .line 829
    .line 830
    move-object/from16 v12, v33

    .line 831
    .line 832
    goto/16 :goto_5

    .line 833
    .line 834
    :cond_10
    move-object/from16 v31, v3

    .line 835
    .line 836
    move-object/from16 v33, v12

    .line 837
    .line 838
    new-instance v1, Lz3/i;

    .line 839
    .line 840
    invoke-direct {v1, v2}, Lz3/i;-><init>(Ljava/util/ArrayList;)V

    .line 841
    .line 842
    .line 843
    iget-object v2, v0, Ly3/d;->d:Ljava/net/URL;

    .line 844
    .line 845
    if-eqz v4, :cond_12

    .line 846
    .line 847
    :try_start_2
    invoke-static {v4}, Ly3/a;->a([B)Ly3/a;

    .line 848
    .line 849
    .line 850
    move-result-object v3

    .line 851
    iget-object v5, v3, Ly3/a;->b:Ljava/lang/String;

    .line 852
    .line 853
    if-eqz v5, :cond_11

    .line 854
    .line 855
    goto :goto_c

    .line 856
    :cond_11
    const/4 v5, 0x0

    .line 857
    :goto_c
    iget-object v3, v3, Ly3/a;->a:Ljava/lang/String;

    .line 858
    .line 859
    if-eqz v3, :cond_13

    .line 860
    .line 861
    invoke-static {v3}, Ly3/d;->b(Ljava/lang/String;)Ljava/net/URL;

    .line 862
    .line 863
    .line 864
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 865
    goto :goto_e

    .line 866
    :catch_2
    new-instance v0, Lb4/a;

    .line 867
    .line 868
    const/4 v1, 0x3

    .line 869
    const-wide/16 v2, -0x1

    .line 870
    .line 871
    invoke-direct {v0, v1, v2, v3}, Lb4/a;-><init>(IJ)V

    .line 872
    .line 873
    .line 874
    :goto_d
    move-object v5, v0

    .line 875
    goto/16 :goto_1

    .line 876
    .line 877
    :cond_12
    const/4 v5, 0x0

    .line 878
    :cond_13
    :goto_e
    :try_start_3
    new-instance v3, Ly3/b;

    .line 879
    .line 880
    invoke-direct {v3, v2, v1, v5}, Ly3/b;-><init>(Ljava/net/URL;Lz3/i;Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    new-instance v1, Landroidx/media3/common/x;

    .line 884
    .line 885
    const/16 v2, 0x15

    .line 886
    .line 887
    invoke-direct {v1, v2, v0}, Landroidx/media3/common/x;-><init>(ILjava/lang/Object;)V

    .line 888
    .line 889
    .line 890
    const/4 v0, 0x5

    .line 891
    :cond_14
    invoke-virtual {v1, v3}, Landroidx/media3/common/x;->b(Ljava/lang/Object;)Ly3/c;

    .line 892
    .line 893
    .line 894
    move-result-object v2

    .line 895
    iget-object v5, v2, Ly3/c;->b:Ljava/net/URL;

    .line 896
    .line 897
    if-eqz v5, :cond_15

    .line 898
    .line 899
    const-string v7, "Following redirect to: %s"

    .line 900
    .line 901
    invoke-static {v15, v7, v5}, Lo9/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 902
    .line 903
    .line 904
    new-instance v7, Ly3/b;

    .line 905
    .line 906
    iget-object v8, v3, Ly3/b;->b:Lz3/i;

    .line 907
    .line 908
    iget-object v3, v3, Ly3/b;->c:Ljava/lang/String;

    .line 909
    .line 910
    invoke-direct {v7, v5, v8, v3}, Ly3/b;-><init>(Ljava/net/URL;Lz3/i;Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    move-object v3, v7

    .line 914
    goto :goto_f

    .line 915
    :cond_15
    const/4 v3, 0x0

    .line 916
    :goto_f
    if-eqz v3, :cond_16

    .line 917
    .line 918
    add-int/lit8 v0, v0, -0x1

    .line 919
    .line 920
    const/4 v5, 0x1

    .line 921
    if-ge v0, v5, :cond_14

    .line 922
    .line 923
    :cond_16
    iget v0, v2, Ly3/c;->a:I

    .line 924
    .line 925
    const/16 v1, 0xc8

    .line 926
    .line 927
    if-ne v0, v1, :cond_17

    .line 928
    .line 929
    iget-wide v0, v2, Ly3/c;->c:J

    .line 930
    .line 931
    new-instance v2, Lb4/a;

    .line 932
    .line 933
    const/4 v3, 0x1

    .line 934
    invoke-direct {v2, v3, v0, v1}, Lb4/a;-><init>(IJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 935
    .line 936
    .line 937
    move-object v5, v2

    .line 938
    goto/16 :goto_1

    .line 939
    .line 940
    :catch_3
    move-exception v0

    .line 941
    goto :goto_11

    .line 942
    :cond_17
    const/16 v1, 0x1f4

    .line 943
    .line 944
    if-ge v0, v1, :cond_1a

    .line 945
    .line 946
    const/16 v1, 0x194

    .line 947
    .line 948
    if-ne v0, v1, :cond_18

    .line 949
    .line 950
    goto :goto_10

    .line 951
    :cond_18
    const/16 v1, 0x190

    .line 952
    .line 953
    if-ne v0, v1, :cond_19

    .line 954
    .line 955
    :try_start_4
    new-instance v0, Lb4/a;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 956
    .line 957
    const-wide/16 v1, -0x1

    .line 958
    .line 959
    const/4 v3, 0x4

    .line 960
    :try_start_5
    invoke-direct {v0, v3, v1, v2}, Lb4/a;-><init>(IJ)V

    .line 961
    .line 962
    .line 963
    goto :goto_d

    .line 964
    :catch_4
    move-exception v0

    .line 965
    const-wide/16 v1, -0x1

    .line 966
    .line 967
    goto :goto_11

    .line 968
    :cond_19
    const-wide/16 v1, -0x1

    .line 969
    .line 970
    new-instance v0, Lb4/a;

    .line 971
    .line 972
    const/4 v3, 0x3

    .line 973
    invoke-direct {v0, v3, v1, v2}, Lb4/a;-><init>(IJ)V

    .line 974
    .line 975
    .line 976
    goto :goto_d

    .line 977
    :cond_1a
    :goto_10
    new-instance v0, Lb4/a;

    .line 978
    .line 979
    const/4 v1, 0x2

    .line 980
    const-wide/16 v2, -0x1

    .line 981
    .line 982
    invoke-direct {v0, v1, v2, v3}, Lb4/a;-><init>(IJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 983
    .line 984
    .line 985
    goto :goto_d

    .line 986
    :goto_11
    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    const-string v2, "Could not make request to the backend"

    .line 991
    .line 992
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 993
    .line 994
    .line 995
    new-instance v0, Lb4/a;

    .line 996
    .line 997
    const/4 v1, 0x2

    .line 998
    const-wide/16 v2, -0x1

    .line 999
    .line 1000
    invoke-direct {v0, v1, v2, v3}, Lb4/a;-><init>(IJ)V

    .line 1001
    .line 1002
    .line 1003
    move-object v5, v0

    .line 1004
    :goto_12
    iget v0, v5, Lb4/a;->a:I

    .line 1005
    .line 1006
    if-ne v0, v1, :cond_1b

    .line 1007
    .line 1008
    new-instance v0, Lh4/h;

    .line 1009
    .line 1010
    move-object v1, v0

    .line 1011
    move-object/from16 v2, p0

    .line 1012
    .line 1013
    move-object v3, v6

    .line 1014
    move-object/from16 v4, p1

    .line 1015
    .line 1016
    move-wide v5, v10

    .line 1017
    invoke-direct/range {v1 .. v6}, Lh4/h;-><init>(Lh4/i;Ljava/lang/Iterable;La4/j;J)V

    .line 1018
    .line 1019
    .line 1020
    move-object/from16 v1, v33

    .line 1021
    .line 1022
    invoke-virtual {v1, v0}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    const/4 v2, 0x1

    .line 1026
    add-int/lit8 v0, p2, 0x1

    .line 1027
    .line 1028
    move-object/from16 v3, p0

    .line 1029
    .line 1030
    iget-object v1, v3, Lh4/i;->d:Lh4/d;

    .line 1031
    .line 1032
    move-object/from16 v7, p1

    .line 1033
    .line 1034
    invoke-virtual {v1, v7, v0, v2}, Lh4/d;->a(La4/j;IZ)V

    .line 1035
    .line 1036
    .line 1037
    return-void

    .line 1038
    :cond_1b
    const/4 v2, 0x1

    .line 1039
    move-object/from16 v3, p0

    .line 1040
    .line 1041
    move-object/from16 v7, p1

    .line 1042
    .line 1043
    move-object/from16 v1, v33

    .line 1044
    .line 1045
    new-instance v8, Landroidx/media3/exoplayer/analytics/b;

    .line 1046
    .line 1047
    const/16 v9, 0xb

    .line 1048
    .line 1049
    invoke-direct {v8, v3, v9, v6}, Landroidx/media3/exoplayer/analytics/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v1, v8}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    if-ne v0, v2, :cond_1d

    .line 1056
    .line 1057
    iget-wide v5, v5, Lb4/a;->b:J

    .line 1058
    .line 1059
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 1060
    .line 1061
    .line 1062
    move-result-wide v10

    .line 1063
    if-eqz v4, :cond_1c

    .line 1064
    .line 1065
    new-instance v0, Landroidx/media3/common/x;

    .line 1066
    .line 1067
    const/16 v2, 0xd

    .line 1068
    .line 1069
    invoke-direct {v0, v2, v3}, Landroidx/media3/common/x;-><init>(ILjava/lang/Object;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v1, v0}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    :cond_1c
    const/4 v5, 0x1

    .line 1076
    goto :goto_14

    .line 1077
    :cond_1d
    const/4 v2, 0x4

    .line 1078
    if-ne v0, v2, :cond_1c

    .line 1079
    .line 1080
    new-instance v0, Ljava/util/HashMap;

    .line 1081
    .line 1082
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1083
    .line 1084
    .line 1085
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v2

    .line 1089
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1090
    .line 1091
    .line 1092
    move-result v4

    .line 1093
    if-eqz v4, :cond_1f

    .line 1094
    .line 1095
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v4

    .line 1099
    check-cast v4, Li4/b;

    .line 1100
    .line 1101
    iget-object v4, v4, Li4/b;->c:La4/i;

    .line 1102
    .line 1103
    iget-object v4, v4, La4/i;->a:Ljava/lang/String;

    .line 1104
    .line 1105
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1106
    .line 1107
    .line 1108
    move-result v5

    .line 1109
    if-nez v5, :cond_1e

    .line 1110
    .line 1111
    const/4 v5, 0x1

    .line 1112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v6

    .line 1116
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    goto :goto_13

    .line 1120
    :cond_1e
    const/4 v5, 0x1

    .line 1121
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v6

    .line 1125
    check-cast v6, Ljava/lang/Integer;

    .line 1126
    .line 1127
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1128
    .line 1129
    .line 1130
    move-result v6

    .line 1131
    add-int/2addr v6, v5

    .line 1132
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v6

    .line 1136
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    goto :goto_13

    .line 1140
    :cond_1f
    const/4 v5, 0x1

    .line 1141
    new-instance v2, Landroidx/media3/exoplayer/analytics/b;

    .line 1142
    .line 1143
    const/16 v4, 0xc

    .line 1144
    .line 1145
    invoke-direct {v2, v3, v4, v0}, Landroidx/media3/exoplayer/analytics/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v1, v2}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    :goto_14
    move-object v8, v7

    .line 1152
    const/16 v1, 0xb

    .line 1153
    .line 1154
    const/4 v2, 0x0

    .line 1155
    const/4 v9, 0x1

    .line 1156
    move-object v7, v3

    .line 1157
    move-object/from16 v3, v31

    .line 1158
    .line 1159
    goto/16 :goto_0

    .line 1160
    .line 1161
    :cond_20
    move-object v3, v7

    .line 1162
    move-object v7, v8

    .line 1163
    move-object v1, v12

    .line 1164
    new-instance v0, Landroidx/media3/exoplayer/analytics/x;

    .line 1165
    .line 1166
    invoke-direct {v0, v10, v11, v3, v7}, Landroidx/media3/exoplayer/analytics/x;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v1, v0}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    return-void
.end method
