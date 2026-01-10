.class public final synthetic La/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La/b;->a:I

    .line 2
    .line 3
    iput-object p2, p0, La/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    const/4 v6, 0x0

    .line 9
    iget v7, v1, La/b;->a:I

    .line 10
    .line 11
    packed-switch v7, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lq1/q0;

    .line 17
    .line 18
    invoke-virtual {v0}, Lq1/q0;->a()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    const/4 v0, -0x1

    .line 23
    iget-object v2, v1, La/b;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lq1/l;

    .line 26
    .line 27
    iput v0, v2, Lq1/l;->n:I

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lq1/h;

    .line 33
    .line 34
    invoke-virtual {v0}, Lq1/h;->l()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_2
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lorg/bitspark/android/utils/q;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object v2, Lorg/bitspark/android/utils/q;->d:Ljava/lang/String;

    .line 46
    .line 47
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    .line 49
    const-wide/16 v4, 0x6

    .line 50
    .line 51
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 52
    .line 53
    .line 54
    const-string v3, "x7tYfQv4lrDht1V1S7jd\n"

    .line 55
    .line 56
    const-string v4, "ld47EmWW89M=\n"

    .line 57
    .line 58
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 63
    .line 64
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v3, v0, Lorg/bitspark/android/utils/q;->c:Ljava/lang/String;

    .line 68
    .line 69
    iput-object v3, v0, Lorg/bitspark/android/utils/q;->c:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v4, Lokhttp3/Request$Builder;

    .line 72
    .line 73
    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v5, v0, Lorg/bitspark/android/utils/q;->a:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    new-instance v5, Lorg/bitspark/android/utils/p;

    .line 87
    .line 88
    invoke-direct {v5, v0, v3}, Lorg/bitspark/android/utils/p;-><init>(Lorg/bitspark/android/utils/q;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v0, Lorg/bitspark/android/utils/q;->b:Lokhttp3/OkHttpClient;

    .line 92
    .line 93
    invoke-virtual {v0, v4, v5}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v4, "Y6k77yGgF8BF7DHuO6sA0US8LOUr9FI=\n"

    .line 104
    .line 105
    const-string v5, "McxYgE/OcqM=\n"

    .line 106
    .line 107
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 126
    .line 127
    invoke-static {v2, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_0
    return-void

    .line 131
    :pswitch_3
    const-wide/16 v2, 0x1

    .line 132
    .line 133
    const-wide/16 v4, 0x0

    .line 134
    .line 135
    invoke-static {v4, v5, v2, v3, v6}, Lorg/bitspark/android/utils/k;->d(JJZ)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v2, v1, La/b;->b:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v2, Lj7/c;

    .line 142
    .line 143
    iget v3, v2, Lj7/c;->a:I

    .line 144
    .line 145
    packed-switch v3, :pswitch_data_1

    .line 146
    .line 147
    .line 148
    iget-object v2, v2, Lj7/c;->b:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v2, Lla/b;

    .line 151
    .line 152
    iget-object v2, v2, Lla/b;->b:Lla/d;

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0}, Lla/d;->T(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :pswitch_4
    iget-object v2, v2, Lj7/c;->b:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v2, Lka/w;

    .line 164
    .line 165
    iget-object v2, v2, Lka/w;->b:Lka/y;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v0}, Lka/y;->Q(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :goto_1
    return-void

    .line 174
    :pswitch_5
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Lh4/j;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    new-instance v2, Landroidx/media3/common/x;

    .line 182
    .line 183
    const/16 v3, 0xe

    .line 184
    .line 185
    invoke-direct {v2, v3, v0}, Landroidx/media3/common/x;-><init>(ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, v0, Lh4/j;->d:Lj4/c;

    .line 189
    .line 190
    check-cast v0, Li4/g;

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_6
    iget-object v2, v1, La/b;->b:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v2, Lorg/bitspark/android/Spark;

    .line 199
    .line 200
    iget-object v2, v2, Lorg/bitspark/android/Spark;->j0:Landroid/widget/FrameLayout;

    .line 201
    .line 202
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :pswitch_7
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 207
    .line 208
    move-object v2, v0

    .line 209
    check-cast v2, Lb1/o;

    .line 210
    .line 211
    const-string v0, "fetchFonts result is not OK. ("

    .line 212
    .line 213
    iget-object v4, v2, Lb1/o;->d:Ljava/lang/Object;

    .line 214
    .line 215
    monitor-enter v4

    .line 216
    :try_start_1
    iget-object v7, v2, Lb1/o;->h:La2/a;

    .line 217
    .line 218
    if-nez v7, :cond_0

    .line 219
    .line 220
    monitor-exit v4

    .line 221
    goto/16 :goto_7

    .line 222
    .line 223
    :catchall_0
    move-exception v0

    .line 224
    goto/16 :goto_9

    .line 225
    .line 226
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    invoke-virtual {v2}, Lb1/o;->d()Lk0/g;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    iget v7, v4, Lk0/g;->e:I

    .line 232
    .line 233
    if-ne v7, v3, :cond_1

    .line 234
    .line 235
    iget-object v3, v2, Lb1/o;->d:Ljava/lang/Object;

    .line 236
    .line 237
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 238
    :try_start_3
    monitor-exit v3

    .line 239
    goto :goto_2

    .line 240
    :catchall_1
    move-exception v0

    .line 241
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 243
    :catchall_2
    move-exception v0

    .line 244
    goto/16 :goto_5

    .line 245
    .line 246
    :cond_1
    :goto_2
    if-nez v7, :cond_4

    .line 247
    .line 248
    :try_start_5
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 249
    .line 250
    sget-object v3, Lj0/n;->b:Ljava/lang/reflect/Method;

    .line 251
    .line 252
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, v2, Lb1/o;->c:Lx4/e;

    .line 256
    .line 257
    iget-object v3, v2, Lb1/o;->a:Landroid/content/Context;

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    new-array v0, v5, [Lk0/g;

    .line 263
    .line 264
    aput-object v4, v0, v6

    .line 265
    .line 266
    sget-object v5, Lf0/g;->a:Ll5/a;

    .line 267
    .line 268
    invoke-virtual {v5, v3, v0, v6}, Ll5/a;->m(Landroid/content/Context;[Lk0/g;I)Landroid/graphics/Typeface;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iget-object v3, v2, Lb1/o;->a:Landroid/content/Context;

    .line 273
    .line 274
    iget-object v4, v4, Lk0/g;->a:Landroid/net/Uri;

    .line 275
    .line 276
    invoke-static {v3, v4}, Ln5/d;->D(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 277
    .line 278
    .line 279
    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 280
    if-eqz v3, :cond_3

    .line 281
    .line 282
    if-eqz v0, :cond_3

    .line 283
    .line 284
    :try_start_6
    const-string v4, "EmojiCompat.MetadataRepo.create"

    .line 285
    .line 286
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    new-instance v4, La0/f;

    .line 290
    .line 291
    invoke-static {v3}, Lcom/bumptech/glide/c;->k(Ljava/nio/MappedByteBuffer;)Lc1/b;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-direct {v4, v0, v3}, La0/f;-><init>(Landroid/graphics/Typeface;Lc1/b;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 296
    .line 297
    .line 298
    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 299
    .line 300
    .line 301
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 302
    .line 303
    .line 304
    iget-object v3, v2, Lb1/o;->d:Ljava/lang/Object;

    .line 305
    .line 306
    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 307
    :try_start_9
    iget-object v0, v2, Lb1/o;->h:La2/a;

    .line 308
    .line 309
    if-eqz v0, :cond_2

    .line 310
    .line 311
    invoke-virtual {v0, v4}, La2/a;->I(La0/f;)V

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :catchall_3
    move-exception v0

    .line 316
    goto :goto_4

    .line 317
    :cond_2
    :goto_3
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 318
    :try_start_a
    invoke-virtual {v2}, Lb1/o;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :goto_4
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 323
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 324
    :catchall_4
    move-exception v0

    .line 325
    :try_start_d
    sget-object v3, Lj0/n;->b:Ljava/lang/reflect/Method;

    .line 326
    .line 327
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 332
    .line 333
    const-string v3, "Unable to open file."

    .line 334
    .line 335
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 339
    :catchall_5
    move-exception v0

    .line 340
    :try_start_e
    sget-object v3, Lj0/n;->b:Ljava/lang/reflect/Method;

    .line 341
    .line 342
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 343
    .line 344
    .line 345
    throw v0

    .line 346
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    .line 347
    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v0, ")"

    .line 357
    .line 358
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 369
    :goto_5
    iget-object v3, v2, Lb1/o;->d:Ljava/lang/Object;

    .line 370
    .line 371
    monitor-enter v3

    .line 372
    :try_start_f
    iget-object v4, v2, Lb1/o;->h:La2/a;

    .line 373
    .line 374
    if-eqz v4, :cond_5

    .line 375
    .line 376
    invoke-virtual {v4, v0}, La2/a;->H(Ljava/lang/Throwable;)V

    .line 377
    .line 378
    .line 379
    goto :goto_6

    .line 380
    :catchall_6
    move-exception v0

    .line 381
    goto :goto_8

    .line 382
    :cond_5
    :goto_6
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 383
    invoke-virtual {v2}, Lb1/o;->b()V

    .line 384
    .line 385
    .line 386
    :goto_7
    return-void

    .line 387
    :goto_8
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 388
    throw v0

    .line 389
    :goto_9
    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 390
    throw v0

    .line 391
    :pswitch_8
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    .line 394
    .line 395
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->h(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;)V

    .line 396
    .line 397
    .line 398
    return-void

    .line 399
    :pswitch_9
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;

    .line 402
    .line 403
    invoke-static {v0}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->a(Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;)V

    .line 404
    .line 405
    .line 406
    return-void

    .line 407
    :pswitch_a
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 410
    .line 411
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->R(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V

    .line 412
    .line 413
    .line 414
    return-void

    .line 415
    :pswitch_b
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v0, Landroidx/lifecycle/i0;

    .line 418
    .line 419
    const-string v2, "this$0"

    .line 420
    .line 421
    invoke-static {v0, v2}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget v2, v0, Landroidx/lifecycle/i0;->b:I

    .line 425
    .line 426
    iget-object v3, v0, Landroidx/lifecycle/i0;->f:Landroidx/lifecycle/y;

    .line 427
    .line 428
    if-nez v2, :cond_6

    .line 429
    .line 430
    iput-boolean v5, v0, Landroidx/lifecycle/i0;->c:Z

    .line 431
    .line 432
    sget-object v2, Landroidx/lifecycle/n;->ON_PAUSE:Landroidx/lifecycle/n;

    .line 433
    .line 434
    invoke-virtual {v3, v2}, Landroidx/lifecycle/y;->f(Landroidx/lifecycle/n;)V

    .line 435
    .line 436
    .line 437
    :cond_6
    iget v2, v0, Landroidx/lifecycle/i0;->a:I

    .line 438
    .line 439
    if-nez v2, :cond_7

    .line 440
    .line 441
    iget-boolean v2, v0, Landroidx/lifecycle/i0;->c:Z

    .line 442
    .line 443
    if-eqz v2, :cond_7

    .line 444
    .line 445
    sget-object v2, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 446
    .line 447
    invoke-virtual {v3, v2}, Landroidx/lifecycle/y;->f(Landroidx/lifecycle/n;)V

    .line 448
    .line 449
    .line 450
    iput-boolean v5, v0, Landroidx/lifecycle/i0;->d:Z

    .line 451
    .line 452
    :cond_7
    return-void

    .line 453
    :pswitch_c
    iget-object v7, v1, La/b;->b:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v7, Landroid/app/Activity;

    .line 456
    .line 457
    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    .line 458
    .line 459
    .line 460
    move-result v8

    .line 461
    if-nez v8, :cond_12

    .line 462
    .line 463
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 464
    .line 465
    const/16 v9, 0x1c

    .line 466
    .line 467
    if-lt v8, v9, :cond_8

    .line 468
    .line 469
    sget-object v0, Landroidx/core/app/e;->a:Ljava/lang/Class;

    .line 470
    .line 471
    invoke-virtual {v7}, Landroid/app/Activity;->recreate()V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_11

    .line 475
    .line 476
    :cond_8
    sget-object v9, Landroidx/core/app/e;->a:Ljava/lang/Class;

    .line 477
    .line 478
    const/16 v9, 0x1b

    .line 479
    .line 480
    const/16 v10, 0x1a

    .line 481
    .line 482
    if-eq v8, v10, :cond_a

    .line 483
    .line 484
    if-ne v8, v9, :cond_9

    .line 485
    .line 486
    goto :goto_a

    .line 487
    :cond_9
    const/4 v11, 0x0

    .line 488
    goto :goto_b

    .line 489
    :cond_a
    :goto_a
    const/4 v11, 0x1

    .line 490
    :goto_b
    sget-object v12, Landroidx/core/app/e;->f:Ljava/lang/reflect/Method;

    .line 491
    .line 492
    if-eqz v11, :cond_b

    .line 493
    .line 494
    if-nez v12, :cond_b

    .line 495
    .line 496
    goto/16 :goto_10

    .line 497
    .line 498
    :cond_b
    sget-object v11, Landroidx/core/app/e;->e:Ljava/lang/reflect/Method;

    .line 499
    .line 500
    if-nez v11, :cond_c

    .line 501
    .line 502
    sget-object v11, Landroidx/core/app/e;->d:Ljava/lang/reflect/Method;

    .line 503
    .line 504
    if-nez v11, :cond_c

    .line 505
    .line 506
    goto/16 :goto_10

    .line 507
    .line 508
    :cond_c
    :try_start_12
    sget-object v11, Landroidx/core/app/e;->c:Ljava/lang/reflect/Field;

    .line 509
    .line 510
    invoke-virtual {v11, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v11

    .line 514
    if-nez v11, :cond_d

    .line 515
    .line 516
    goto :goto_10

    .line 517
    :cond_d
    sget-object v13, Landroidx/core/app/e;->b:Ljava/lang/reflect/Field;

    .line 518
    .line 519
    invoke-virtual {v13, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v13

    .line 523
    if-nez v13, :cond_e

    .line 524
    .line 525
    goto :goto_10

    .line 526
    :cond_e
    invoke-virtual {v7}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 527
    .line 528
    .line 529
    move-result-object v14

    .line 530
    new-instance v15, Landroidx/core/app/d;

    .line 531
    .line 532
    invoke-direct {v15, v7}, Landroidx/core/app/d;-><init>(Landroid/app/Activity;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v14, v15}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 536
    .line 537
    .line 538
    sget-object v2, Landroidx/core/app/e;->g:Landroid/os/Handler;

    .line 539
    .line 540
    :try_start_13
    new-instance v0, La3/c;

    .line 541
    .line 542
    invoke-direct {v0, v3, v15, v11, v6}, La3/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 546
    .line 547
    .line 548
    if-eq v8, v10, :cond_10

    .line 549
    .line 550
    if-ne v8, v9, :cond_f

    .line 551
    .line 552
    goto :goto_c

    .line 553
    :cond_f
    const/4 v0, 0x0

    .line 554
    goto :goto_d

    .line 555
    :cond_10
    :goto_c
    const/4 v0, 0x1

    .line 556
    :goto_d
    if-eqz v0, :cond_11

    .line 557
    .line 558
    :try_start_14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    const/16 v8, 0x9

    .line 563
    .line 564
    new-array v8, v8, [Ljava/lang/Object;

    .line 565
    .line 566
    aput-object v11, v8, v6

    .line 567
    .line 568
    aput-object v4, v8, v5

    .line 569
    .line 570
    aput-object v4, v8, v3

    .line 571
    .line 572
    const/4 v3, 0x3

    .line 573
    aput-object v0, v8, v3

    .line 574
    .line 575
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 576
    .line 577
    const/4 v3, 0x4

    .line 578
    aput-object v0, v8, v3

    .line 579
    .line 580
    const/4 v3, 0x5

    .line 581
    aput-object v4, v8, v3

    .line 582
    .line 583
    const/4 v3, 0x6

    .line 584
    aput-object v4, v8, v3

    .line 585
    .line 586
    const/4 v3, 0x7

    .line 587
    aput-object v0, v8, v3

    .line 588
    .line 589
    const/16 v3, 0x8

    .line 590
    .line 591
    aput-object v0, v8, v3

    .line 592
    .line 593
    invoke-virtual {v12, v13, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    goto :goto_e

    .line 597
    :catchall_7
    move-exception v0

    .line 598
    goto :goto_f

    .line 599
    :cond_11
    invoke-virtual {v7}, Landroid/app/Activity;->recreate()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 600
    .line 601
    .line 602
    :goto_e
    :try_start_15
    new-instance v0, La3/c;

    .line 603
    .line 604
    const/4 v3, 0x3

    .line 605
    invoke-direct {v0, v3, v14, v15, v6}, La3/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    .line 610
    .line 611
    goto :goto_11

    .line 612
    :goto_f
    new-instance v3, La3/c;

    .line 613
    .line 614
    const/4 v4, 0x3

    .line 615
    invoke-direct {v3, v4, v14, v15, v6}, La3/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 619
    .line 620
    .line 621
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 622
    :catchall_8
    :goto_10
    invoke-virtual {v7}, Landroid/app/Activity;->recreate()V

    .line 623
    .line 624
    .line 625
    :cond_12
    :goto_11
    return-void

    .line 626
    :pswitch_d
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast v0, La/q;

    .line 629
    .line 630
    invoke-virtual {v0}, La/q;->c()V

    .line 631
    .line 632
    .line 633
    return-void

    .line 634
    :pswitch_e
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast v0, Landroidx/appcompat/app/i0;

    .line 637
    .line 638
    invoke-static {v0}, Landroidx/appcompat/app/i0;->b(Landroidx/appcompat/app/i0;)V

    .line 639
    .line 640
    .line 641
    return-void

    .line 642
    :pswitch_f
    iget-object v0, v1, La/b;->b:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 645
    .line 646
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 647
    .line 648
    .line 649
    return-void

    .line 650
    nop

    .line 651
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_4
    .end packed-switch
.end method
