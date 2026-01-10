.class public abstract Lf0/g;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Ll5/a;

.field public static final b:Lp/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lf0/l;

    .line 8
    .line 9
    invoke-direct {v0}, Ll5/a;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lf0/g;->a:Ll5/a;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x1c

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Lf0/k;

    .line 20
    .line 21
    invoke-direct {v0}, Lf0/j;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lf0/g;->a:Ll5/a;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v1, 0x1a

    .line 28
    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    new-instance v0, Lf0/j;

    .line 32
    .line 33
    invoke-direct {v0}, Lf0/j;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lf0/g;->a:Ll5/a;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/16 v1, 0x18

    .line 40
    .line 41
    if-lt v0, v1, :cond_4

    .line 42
    .line 43
    sget-object v0, Lf0/i;->t:Ljava/lang/reflect/Method;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    const-string v1, "TypefaceCompatApi24Impl"

    .line 48
    .line 49
    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 50
    .line 51
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_3
    if-eqz v0, :cond_4

    .line 55
    .line 56
    new-instance v0, Lf0/i;

    .line 57
    .line 58
    invoke-direct {v0}, Ll5/a;-><init>()V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lf0/g;->a:Ll5/a;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    new-instance v0, Lf0/h;

    .line 65
    .line 66
    invoke-direct {v0}, Ll5/a;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lf0/g;->a:Ll5/a;

    .line 70
    .line 71
    :goto_0
    new-instance v0, Lp/k;

    .line 72
    .line 73
    const/16 v1, 0x10

    .line 74
    .line 75
    invoke-direct {v0, v1}, Lp/k;-><init>(I)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lf0/g;->b:Lp/k;

    .line 79
    .line 80
    return-void
.end method

.method public static a(Landroid/content/Context;Le0/e;Landroid/content/res/Resources;ILjava/lang/String;IILe0/b;Z)Landroid/graphics/Typeface;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v7, p6

    .line 6
    .line 7
    move-object/from16 v2, p7

    .line 8
    .line 9
    const/16 v3, 0x11

    .line 10
    .line 11
    const/4 v8, 0x1

    .line 12
    const/16 v4, 0xc

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    instance-of v6, v1, Le0/h;

    .line 16
    .line 17
    const/4 v9, -0x3

    .line 18
    if-eqz v6, :cond_d

    .line 19
    .line 20
    check-cast v1, Le0/h;

    .line 21
    .line 22
    iget-object v6, v1, Le0/h;->d:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v11

    .line 31
    if-eqz v11, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v6, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 39
    .line 40
    invoke-static {v11, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    invoke-virtual {v6, v11}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-nez v11, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    move-object v6, v10

    .line 54
    :goto_1
    if-eqz v6, :cond_3

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    new-instance v0, Landroid/os/Handler;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Landroidx/appcompat/app/m0;

    .line 68
    .line 69
    invoke-direct {v1, v2, v4, v6}, Landroidx/appcompat/app/m0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    return-object v6

    .line 76
    :cond_3
    if-eqz p8, :cond_5

    .line 77
    .line 78
    iget v4, v1, Le0/h;->c:I

    .line 79
    .line 80
    if-nez v4, :cond_4

    .line 81
    .line 82
    :goto_2
    const/4 v4, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const/4 v4, 0x0

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    if-nez v2, :cond_4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :goto_3
    const/4 v6, -0x1

    .line 90
    if-eqz p8, :cond_6

    .line 91
    .line 92
    iget v11, v1, Le0/h;->b:I

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    const/4 v11, -0x1

    .line 96
    :goto_4
    new-instance v12, Landroid/os/Handler;

    .line 97
    .line 98
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    invoke-direct {v12, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    .line 104
    .line 105
    new-instance v13, La0/b;

    .line 106
    .line 107
    const/16 v14, 0x1c

    .line 108
    .line 109
    invoke-direct {v13, v14}, La0/b;-><init>(I)V

    .line 110
    .line 111
    .line 112
    iput-object v2, v13, La0/b;->b:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v14, v1, Le0/h;->a:Lc2/b;

    .line 115
    .line 116
    new-instance v15, La7/f;

    .line 117
    .line 118
    const/16 v1, 0x18

    .line 119
    .line 120
    invoke-direct {v15, v1, v13, v12, v5}, La7/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 121
    .line 122
    .line 123
    if-eqz v4, :cond_9

    .line 124
    .line 125
    sget-object v1, Lk0/f;->a:Lp/k;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object v2, v14, Lc2/b;->f:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v2, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, "-"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    sget-object v1, Lk0/f;->a:Lp/k;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Lp/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Landroid/graphics/Typeface;

    .line 158
    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    new-instance v0, La3/c;

    .line 162
    .line 163
    invoke-direct {v0, v3, v13, v1, v5}, La3/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    .line 168
    .line 169
    :goto_5
    move-object v10, v1

    .line 170
    goto/16 :goto_9

    .line 171
    .line 172
    :cond_7
    if-ne v11, v6, :cond_8

    .line 173
    .line 174
    invoke-static {v2, v0, v14, v7}, Lk0/f;->a(Ljava/lang/String;Landroid/content/Context;Lc2/b;I)Lk0/e;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v15, v0}, La7/f;->G(Lk0/e;)V

    .line 179
    .line 180
    .line 181
    iget-object v10, v0, Lk0/e;->a:Landroid/graphics/Typeface;

    .line 182
    .line 183
    goto/16 :goto_9

    .line 184
    .line 185
    :cond_8
    new-instance v8, Lk0/c;

    .line 186
    .line 187
    const/4 v6, 0x0

    .line 188
    move-object v1, v8

    .line 189
    move-object/from16 v3, p0

    .line 190
    .line 191
    move-object v4, v14

    .line 192
    move/from16 v5, p6

    .line 193
    .line 194
    invoke-direct/range {v1 .. v6}, Lk0/c;-><init>(Ljava/lang/String;Landroid/content/Context;Lc2/b;II)V

    .line 195
    .line 196
    .line 197
    :try_start_0
    sget-object v0, Lk0/f;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 198
    .line 199
    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 200
    .line 201
    .line 202
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 203
    int-to-long v1, v11

    .line 204
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 205
    .line 206
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 210
    :try_start_2
    check-cast v0, Lk0/e;

    .line 211
    .line 212
    invoke-virtual {v15, v0}, La7/f;->G(Lk0/e;)V

    .line 213
    .line 214
    .line 215
    iget-object v10, v0, Lk0/e;->a:Landroid/graphics/Typeface;

    .line 216
    .line 217
    goto/16 :goto_9

    .line 218
    .line 219
    :catch_0
    move-exception v0

    .line 220
    goto :goto_6

    .line 221
    :catch_1
    move-exception v0

    .line 222
    goto :goto_7

    .line 223
    :catch_2
    new-instance v0, Ljava/lang/InterruptedException;

    .line 224
    .line 225
    const-string v1, "timeout"

    .line 226
    .line 227
    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v0

    .line 231
    :goto_6
    throw v0

    .line 232
    :goto_7
    new-instance v1, Ljava/lang/RuntimeException;

    .line 233
    .line 234
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 238
    :catch_3
    new-instance v0, Landroidx/leanback/widget/n0;

    .line 239
    .line 240
    iget-object v1, v15, La7/f;->b:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v1, La0/b;

    .line 243
    .line 244
    const/4 v2, 0x4

    .line 245
    invoke-direct {v0, v9, v2, v1}, Landroidx/leanback/widget/n0;-><init>(IILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v15, La7/f;->c:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v1, Landroid/os/Handler;

    .line 251
    .line 252
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    .line 254
    .line 255
    goto/16 :goto_9

    .line 256
    .line 257
    :cond_9
    sget-object v1, Lk0/f;->a:Lp/k;

    .line 258
    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    iget-object v2, v14, Lc2/b;->f:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v2, Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v2, "-"

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    sget-object v1, Lk0/f;->a:Lp/k;

    .line 284
    .line 285
    invoke-virtual {v1, v9}, Lp/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    check-cast v1, Landroid/graphics/Typeface;

    .line 290
    .line 291
    if-eqz v1, :cond_a

    .line 292
    .line 293
    new-instance v0, La3/c;

    .line 294
    .line 295
    invoke-direct {v0, v3, v13, v1, v5}, La3/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    .line 300
    .line 301
    goto/16 :goto_5

    .line 302
    .line 303
    :cond_a
    new-instance v1, Lk0/d;

    .line 304
    .line 305
    invoke-direct {v1, v5, v15}, Lk0/d;-><init>(ILjava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    sget-object v3, Lk0/f;->c:Ljava/lang/Object;

    .line 309
    .line 310
    monitor-enter v3

    .line 311
    :try_start_3
    sget-object v2, Lk0/f;->d:Lp/l;

    .line 312
    .line 313
    invoke-virtual {v2, v9}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    check-cast v4, Ljava/util/ArrayList;

    .line 318
    .line 319
    if-eqz v4, :cond_b

    .line 320
    .line 321
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    monitor-exit v3

    .line 325
    goto :goto_9

    .line 326
    :catchall_0
    move-exception v0

    .line 327
    goto :goto_a

    .line 328
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2, v9, v4}, Lp/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    new-instance v11, Lk0/c;

    .line 341
    .line 342
    const/4 v6, 0x1

    .line 343
    move-object v1, v11

    .line 344
    move-object v2, v9

    .line 345
    move-object/from16 v3, p0

    .line 346
    .line 347
    move-object v4, v14

    .line 348
    move/from16 v5, p6

    .line 349
    .line 350
    invoke-direct/range {v1 .. v6}, Lk0/c;-><init>(Ljava/lang/String;Landroid/content/Context;Lc2/b;II)V

    .line 351
    .line 352
    .line 353
    sget-object v0, Lk0/f;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 354
    .line 355
    new-instance v1, Lk0/d;

    .line 356
    .line 357
    invoke-direct {v1, v8, v9}, Lk0/d;-><init>(ILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    if-nez v2, :cond_c

    .line 365
    .line 366
    new-instance v2, Landroid/os/Handler;

    .line 367
    .line 368
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 373
    .line 374
    .line 375
    goto :goto_8

    .line 376
    :cond_c
    new-instance v2, Landroid/os/Handler;

    .line 377
    .line 378
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 379
    .line 380
    .line 381
    :goto_8
    new-instance v3, Landroidx/appcompat/app/c;

    .line 382
    .line 383
    invoke-direct {v3}, Landroidx/appcompat/app/c;-><init>()V

    .line 384
    .line 385
    .line 386
    iput-object v11, v3, Landroidx/appcompat/app/c;->b:Ljava/lang/Object;

    .line 387
    .line 388
    iput-object v1, v3, Landroidx/appcompat/app/c;->c:Ljava/lang/Object;

    .line 389
    .line 390
    iput-object v2, v3, Landroidx/appcompat/app/c;->d:Ljava/lang/Object;

    .line 391
    .line 392
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 393
    .line 394
    .line 395
    :goto_9
    move-object/from16 v5, p2

    .line 396
    .line 397
    goto :goto_b

    .line 398
    :goto_a
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 399
    throw v0

    .line 400
    :cond_d
    sget-object v3, Lf0/g;->a:Ll5/a;

    .line 401
    .line 402
    check-cast v1, Le0/f;

    .line 403
    .line 404
    move-object/from16 v5, p2

    .line 405
    .line 406
    invoke-virtual {v3, v0, v1, v5, v7}, Ll5/a;->l(Landroid/content/Context;Le0/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 407
    .line 408
    .line 409
    move-result-object v10

    .line 410
    if-eqz v2, :cond_f

    .line 411
    .line 412
    if-eqz v10, :cond_e

    .line 413
    .line 414
    new-instance v0, Landroid/os/Handler;

    .line 415
    .line 416
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 421
    .line 422
    .line 423
    new-instance v1, Landroidx/appcompat/app/m0;

    .line 424
    .line 425
    invoke-direct {v1, v2, v4, v10}, Landroidx/appcompat/app/m0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    .line 430
    .line 431
    goto :goto_b

    .line 432
    :cond_e
    invoke-virtual {v2, v9}, Le0/b;->a(I)V

    .line 433
    .line 434
    .line 435
    :cond_f
    :goto_b
    if-eqz v10, :cond_10

    .line 436
    .line 437
    sget-object v0, Lf0/g;->b:Lp/k;

    .line 438
    .line 439
    invoke-static/range {p2 .. p6}, Lf0/g;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-virtual {v0, v1, v10}, Lp/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    :cond_10
    return-object v10
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
