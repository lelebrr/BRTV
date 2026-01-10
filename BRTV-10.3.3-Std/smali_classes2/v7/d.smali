.class public abstract Lv7/d;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lu7/c;


# static fields
.field public static final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lv7/d;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lv7/d;->e:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    sget-object v0, Lv7/d;->e:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const/4 v1, 0x3

    .line 15
    iput v1, p0, Lv7/d;->c:I

    .line 16
    .line 17
    iput-object p1, p0, Lv7/d;->a:[Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lv7/d;->b:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public abstract a(Ls2/c;Ljava/lang/String;Ljava/lang/String;)Lv7/f;
.end method

.method public final b(Lu7/b;)[Lu7/f;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "resolver interrupted"

    .line 4
    .line 5
    iget-object v3, v1, Lv7/d;->a:[Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v3, :cond_16

    .line 8
    .line 9
    array-length v0, v3

    .line 10
    if-eqz v0, :cond_16

    .line 11
    .line 12
    move-object/from16 v0, p1

    .line 13
    .line 14
    iget-object v4, v0, Lu7/b;->b:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v4, :cond_15

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_15

    .line 23
    .line 24
    new-instance v5, Ls2/c;

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    invoke-direct {v5, v0}, Ls2/c;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, v5, Ls2/c;->b:Ljava/lang/Object;

    .line 36
    .line 37
    array-length v0, v3

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    if-eq v0, v6, :cond_c

    .line 42
    .line 43
    iget-object v0, v1, Lv7/d;->b:Ljava/util/concurrent/ExecutorService;

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    goto/16 :goto_9

    .line 48
    .line 49
    :cond_0
    new-instance v9, Ljava/util/concurrent/ExecutorCompletionService;

    .line 50
    .line 51
    invoke-direct {v9, v0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 52
    .line 53
    .line 54
    new-instance v10, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    array-length v0, v3

    .line 60
    const/4 v11, 0x0

    .line 61
    :goto_0
    if-ge v11, v0, :cond_1

    .line 62
    .line 63
    aget-object v12, v3, v11

    .line 64
    .line 65
    new-instance v13, Lv7/c;

    .line 66
    .line 67
    invoke-direct {v13, v1, v5, v12, v4}, Lv7/c;-><init>(Lv7/d;Ls2/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v9, v13}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 v11, v11, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v11

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 85
    .line 86
    iget v4, v1, Lv7/d;->c:I

    .line 87
    .line 88
    int-to-long v13, v4

    .line 89
    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v13

    .line 93
    add-long/2addr v13, v11

    .line 94
    move-object v0, v8

    .line 95
    const/4 v4, 0x0

    .line 96
    :goto_1
    array-length v11, v3

    .line 97
    if-ge v4, v11, :cond_9

    .line 98
    .line 99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 100
    .line 101
    .line 102
    move-result-wide v11

    .line 103
    sub-long v11, v13, v11

    .line 104
    .line 105
    const-wide/16 v15, 0x0

    .line 106
    .line 107
    cmp-long v17, v11, v15

    .line 108
    .line 109
    if-gtz v17, :cond_2

    .line 110
    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :cond_2
    :try_start_0
    sget-object v15, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 114
    .line 115
    invoke-virtual {v9, v11, v12, v15}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    .line 116
    .line 117
    .line 118
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 119
    if-nez v11, :cond_3

    .line 120
    .line 121
    goto/16 :goto_7

    .line 122
    .line 123
    :cond_3
    :try_start_1
    invoke-interface {v11}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lv7/f;

    .line 128
    .line 129
    if-nez v0, :cond_4

    .line 130
    .line 131
    new-instance v0, Ljava/io/IOException;

    .line 132
    .line 133
    const-string v11, "resolver returned null"

    .line 134
    .line 135
    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :catch_0
    move-exception v0

    .line 140
    goto :goto_3

    .line 141
    :catch_1
    move-exception v0

    .line 142
    goto :goto_4

    .line 143
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    if-eqz v12, :cond_6

    .line 152
    .line 153
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    check-cast v12, Ljava/util/concurrent/Future;

    .line 158
    .line 159
    invoke-interface {v12}, Ljava/util/concurrent/Future;->isDone()Z

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-nez v15, :cond_5

    .line 164
    .line 165
    invoke-interface {v12, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    invoke-virtual {v5}, Ls2/c;->c()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    .line 171
    .line 172
    goto/16 :goto_b

    .line 173
    .line 174
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 179
    .line 180
    .line 181
    new-instance v3, Ljava/io/IOException;

    .line 182
    .line 183
    invoke-direct {v3, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    throw v3

    .line 187
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    instance-of v11, v0, Ljava/io/IOException;

    .line 192
    .line 193
    if-eqz v11, :cond_7

    .line 194
    .line 195
    check-cast v0, Ljava/io/IOException;

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    new-instance v11, Ljava/io/IOException;

    .line 199
    .line 200
    const-string v12, "resolver failed"

    .line 201
    .line 202
    invoke-direct {v11, v12, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    move-object v0, v11

    .line 206
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :catch_2
    move-exception v0

    .line 210
    invoke-virtual {v5}, Ls2/c;->c()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_8

    .line 222
    .line 223
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    check-cast v4, Ljava/util/concurrent/Future;

    .line 228
    .line 229
    invoke-interface {v4, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 238
    .line 239
    .line 240
    new-instance v3, Ljava/io/IOException;

    .line 241
    .line 242
    invoke-direct {v3, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    throw v3

    .line 246
    :cond_9
    :goto_7
    invoke-virtual {v5}, Ls2/c;->c()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eqz v3, :cond_a

    .line 258
    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    check-cast v3, Ljava/util/concurrent/Future;

    .line 264
    .line 265
    invoke-interface {v3, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 266
    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_a
    if-eqz v0, :cond_b

    .line 270
    .line 271
    throw v0

    .line 272
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 273
    .line 274
    const-string v2, "resolver timeout"

    .line 275
    .line 276
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v0

    .line 280
    :cond_c
    :goto_9
    :try_start_2
    array-length v2, v3

    .line 281
    move-object v0, v8

    .line 282
    const/4 v9, 0x0

    .line 283
    :goto_a
    if-ge v9, v2, :cond_14

    .line 284
    .line 285
    aget-object v0, v3, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    .line 287
    :try_start_3
    invoke-virtual {v1, v5, v0, v4}, Lv7/d;->a(Ls2/c;Ljava/lang/String;Ljava/lang/String;)Lv7/f;

    .line 288
    .line 289
    .line 290
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 291
    invoke-virtual {v5}, Ls2/c;->c()V

    .line 292
    .line 293
    .line 294
    :goto_b
    iget-object v0, v0, Lv7/f;->l:Ljava/util/ArrayList;

    .line 295
    .line 296
    if-eqz v0, :cond_13

    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-nez v2, :cond_d

    .line 303
    .line 304
    goto :goto_e

    .line 305
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    .line 306
    .line 307
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    :cond_e
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-eqz v3, :cond_12

    .line 319
    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    check-cast v3, Lu7/f;

    .line 325
    .line 326
    iget v4, v3, Lu7/f;->b:I

    .line 327
    .line 328
    if-ne v4, v6, :cond_f

    .line 329
    .line 330
    goto :goto_d

    .line 331
    :cond_f
    const/4 v5, 0x5

    .line 332
    if-ne v4, v5, :cond_10

    .line 333
    .line 334
    goto :goto_d

    .line 335
    :cond_10
    const/16 v5, 0x1c

    .line 336
    .line 337
    if-ne v4, v5, :cond_11

    .line 338
    .line 339
    goto :goto_d

    .line 340
    :cond_11
    if-ne v4, v6, :cond_e

    .line 341
    .line 342
    :goto_d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto :goto_c

    .line 346
    :cond_12
    new-array v0, v7, [Lu7/f;

    .line 347
    .line 348
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, [Lu7/f;

    .line 353
    .line 354
    return-object v0

    .line 355
    :cond_13
    :goto_e
    return-object v8

    .line 356
    :catchall_0
    move-exception v0

    .line 357
    goto :goto_f

    .line 358
    :catch_3
    move-exception v0

    .line 359
    add-int/lit8 v9, v9, 0x1

    .line 360
    .line 361
    goto :goto_a

    .line 362
    :cond_14
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    .line 363
    .line 364
    const-string v3, "All resolvers failed"

    .line 365
    .line 366
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    .line 368
    .line 369
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    :goto_f
    invoke-virtual {v5}, Ls2/c;->c()V

    .line 371
    .line 372
    .line 373
    throw v0

    .line 374
    :cond_15
    new-instance v0, Ljava/io/IOException;

    .line 375
    .line 376
    const-string v2, "host can not empty"

    .line 377
    .line 378
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v0

    .line 382
    :cond_16
    new-instance v0, Ljava/io/IOException;

    .line 383
    .line 384
    const-string v2, "server can not empty"

    .line 385
    .line 386
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw v0
.end method
