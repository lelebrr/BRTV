.class public final Lga/g;
.super Ljava/lang/Thread;
.source "MyApplication"


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lga/h;


# direct methods
.method public constructor <init>(Lga/h;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lga/g;->b:Lga/h;

    .line 2
    .line 3
    iput-object p2, p0, Lga/g;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    long-to-int v0, v2

    .line 12
    const-string v4, "39wX2Lk=\n"

    .line 13
    .line 14
    const-string v5, "nY9SiP6XXgw=\n"

    .line 15
    .line 16
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v6, "uKEVFx3Ra+i4oRUXHZg5oeTwZU9NgySsv7w=\n"

    .line 26
    .line 27
    const-string v7, "hZwoKiDsVtU=\n"

    .line 28
    .line 29
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, "xk640NQacUOcSOOT\n"

    .line 40
    .line 41
    const-string v3, "5i3Zs7x/Iio=\n"

    .line 42
    .line 43
    invoke-static {v2, v3, v5, v0}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 48
    .line 49
    invoke-static {v4, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/util/Date;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    sget-wide v4, Lorg/bitspark/android/utils/m;->a:J

    .line 62
    .line 63
    add-long/2addr v2, v4

    .line 64
    const-wide/32 v4, 0x5265c00

    .line 65
    .line 66
    .line 67
    add-long/2addr v2, v4

    .line 68
    invoke-static {v2, v3}, Lorg/bitspark/android/utils/m;->c(J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    const-string v0, "fNqqe24=\n"

    .line 73
    .line 74
    const-string v4, "PonvKymCgTE=\n"

    .line 75
    .line 76
    invoke-static {v0, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v5, "WO9GbTixrk1b2k5yOJe1T0mg\n"

    .line 86
    .line 87
    const-string v6, "LIArAFfD3CI=\n"

    .line 88
    .line 89
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v5, v1, Lga/g;->b:Lga/h;

    .line 97
    .line 98
    iget-object v5, v5, Lga/h;->a:Ljava/text/SimpleDateFormat;

    .line 99
    .line 100
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v5, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v0, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :try_start_0
    new-instance v0, Ljava/util/Date;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    iget-object v0, v1, Lga/g;->a:Ljava/io/File;

    .line 128
    .line 129
    invoke-static {v0}, Lga/h;->e(Ljava/io/File;)Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/4 v4, 0x0

    .line 134
    const/4 v5, 0x0

    .line 135
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-ge v5, v6, :cond_5

    .line 140
    .line 141
    new-instance v6, Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 144
    .line 145
    .line 146
    new-instance v7, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    check-cast v8, Lorg/bitspark/android/beans/EpgBeans;

    .line 156
    .line 157
    invoke-virtual {v8}, Lorg/bitspark/android/beans/EpgBeans;->getEpg()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    new-instance v9, Lga/f;

    .line 162
    .line 163
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    .line 168
    .line 169
    const-wide/16 v9, 0x0

    .line 170
    .line 171
    move-wide v12, v9

    .line 172
    const/4 v11, 0x0

    .line 173
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    if-ge v11, v14, :cond_2

    .line 178
    .line 179
    sget-object v14, Lea/h;->a:Ljava/lang/String;

    .line 180
    .line 181
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    check-cast v14, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 186
    .line 187
    invoke-virtual {v14}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getTime()Ljava/lang/Long;

    .line 188
    .line 189
    .line 190
    move-result-object v14

    .line 191
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 192
    .line 193
    .line 194
    move-result-wide v14

    .line 195
    invoke-static {v14, v15}, Lorg/bitspark/android/utils/m;->c(J)J

    .line 196
    .line 197
    .line 198
    move-result-wide v14

    .line 199
    cmp-long v16, v12, v14

    .line 200
    .line 201
    if-eqz v16, :cond_1

    .line 202
    .line 203
    cmp-long v16, v12, v9

    .line 204
    .line 205
    if-eqz v16, :cond_0

    .line 206
    .line 207
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    invoke-virtual {v6, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    new-instance v7, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    goto/16 :goto_4

    .line 222
    .line 223
    :catch_0
    move-exception v0

    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :cond_0
    :goto_2
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    check-cast v12, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 231
    .line 232
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-wide v12, v14

    .line 236
    goto :goto_3

    .line 237
    :cond_1
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    check-cast v14, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 242
    .line 243
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-lez v8, :cond_3

    .line 254
    .line 255
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    if-lez v7, :cond_4

    .line 267
    .line 268
    sget-object v7, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 269
    .line 270
    new-instance v8, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v9, "byx2deUt2W0hIHZi5Q==\n"

    .line 276
    .line 277
    const-string v10, "DEQXG8hIqQo=\n"

    .line 278
    .line 279
    invoke-static {v9, v10}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    check-cast v9, Lorg/bitspark/android/beans/EpgBeans;

    .line 291
    .line 292
    invoke-virtual {v9}, Lorg/bitspark/android/beans/EpgBeans;->getId()I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-virtual {v7, v8}, Lda/c;->g(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    sget-object v7, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 307
    .line 308
    new-instance v8, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v9, "bdWwRcHqMd8j2bBSwQ==\n"

    .line 314
    .line 315
    const-string v10, "Dr3RK+yPQbg=\n"

    .line 316
    .line 317
    invoke-static {v9, v10}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    check-cast v9, Lorg/bitspark/android/beans/EpgBeans;

    .line 329
    .line 330
    invoke-virtual {v9}, Lorg/bitspark/android/beans/EpgBeans;->getId()I

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    sget v9, Lea/h;->j:I

    .line 342
    .line 343
    div-int/lit16 v9, v9, 0x3e8

    .line 344
    .line 345
    invoke-virtual {v7, v8, v6, v9}, Lda/c;->d(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 346
    .line 347
    .line 348
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :cond_5
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 353
    .line 354
    const/16 v4, 0x12d

    .line 355
    .line 356
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    .line 358
    .line 359
    const-string v0, "Xc5v6QY=\n"

    .line 360
    .line 361
    const-string v4, "H50quUFmGRA=\n"

    .line 362
    .line 363
    invoke-static {v0, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    const-string v5, "5K64nHhDqVHo67yAPxSkSu6u+d52Gg==\n"

    .line 373
    .line 374
    const-string v6, "gMvZ8Fg0wCU=\n"

    .line 375
    .line 376
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    new-instance v5, Ljava/util/Date;

    .line 384
    .line 385
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 389
    .line 390
    .line 391
    move-result-wide v5

    .line 392
    sub-long/2addr v5, v2

    .line 393
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-static {v0, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    .line 402
    .line 403
    goto :goto_6

    .line 404
    :goto_4
    throw v0

    .line 405
    :goto_5
    const-string v2, "l+4ooV0=\n"

    .line 406
    .line 407
    const-string v3, "1b1t8RrDGFA=\n"

    .line 408
    .line 409
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    const-string v3, "qoglshaHq929yTOgB8buyKibOLNS\n"

    .line 414
    .line 415
    const-string v4, "2ulXwXOnzq0=\n"

    .line 416
    .line 417
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    .line 426
    .line 427
    :goto_6
    return-void
.end method
