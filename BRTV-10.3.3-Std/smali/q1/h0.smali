.class public final Lq1/h0;
.super Lq1/k0;
.source "MyApplication"


# instance fields
.field public i:Lq1/v;

.field public final j:Landroidx/media3/common/x;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lq1/k0;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/media3/common/x;

    .line 5
    .line 6
    const/16 v0, 0x12

    .line 7
    .line 8
    invoke-direct {p1, v0, p0}, Landroidx/media3/common/x;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lq1/h0;->j:Landroidx/media3/common/x;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq1/h0;->i:Lq1/v;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lq1/v;->attachBaseContext(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Messenger;ILjava/lang/String;)Lq1/j0;
    .locals 1

    .line 1
    new-instance v0, Lq1/g0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lq1/g0;-><init>(Lq1/h0;Landroid/os/Messenger;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final f(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderService;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lq1/h0;->i:Lq1/v;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lq1/v;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lq1/v;-><init>(Lq1/h0;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lq1/h0;->i:Lq1/v;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lq1/h0;->i:Lq1/v;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lq1/v;->attachBaseContext(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-super {p0, p1}, Lq1/k0;->f(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    iget-object v0, p0, Lq1/h0;->i:Lq1/v;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public final g(Landroidx/appcompat/app/r0;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x4

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x1

    .line 7
    invoke-super/range {p0 .. p1}, Lq1/k0;->g(Landroidx/appcompat/app/r0;)V

    .line 8
    .line 9
    .line 10
    move-object/from16 v6, p0

    .line 11
    .line 12
    iget-object v7, v6, Lq1/h0;->i:Lq1/v;

    .line 13
    .line 14
    iput-object v0, v7, Lq1/v;->e:Landroidx/appcompat/app/r0;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/app/r0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/util/List;

    .line 26
    .line 27
    :goto_0
    new-instance v8, Lp/e;

    .line 28
    .line 29
    invoke-direct {v8, v4}, Lp/l;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-eqz v9, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    check-cast v9, Lq1/w;

    .line 47
    .line 48
    if-nez v9, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v9}, Lq1/w;->f()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-virtual {v8, v10, v9}, Lp/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v9, v7, Lq1/v;->a:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v9

    .line 67
    :try_start_0
    iget-object v10, v7, Lq1/v;->c:Lp/e;

    .line 68
    .line 69
    invoke-virtual {v10}, Lp/e;->values()Ljava/util/Collection;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    check-cast v10, Lp/d;

    .line 74
    .line 75
    invoke-virtual {v10}, Lp/d;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    :cond_3
    :goto_2
    move-object v11, v10

    .line 80
    check-cast v11, Lp/a;

    .line 81
    .line 82
    invoke-virtual {v11}, Lp/a;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    if-eqz v12, :cond_4

    .line 87
    .line 88
    invoke-virtual {v11}, Lp/a;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    check-cast v11, Lq1/u;

    .line 93
    .line 94
    iget v12, v11, Lq1/u;->d:I

    .line 95
    .line 96
    and-int/2addr v12, v3

    .line 97
    if-nez v12, :cond_3

    .line 98
    .line 99
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto/16 :goto_d

    .line 105
    .line 106
    :cond_4
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    const/4 v10, 0x0

    .line 116
    if-eqz v9, :cond_6

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    check-cast v9, Lq1/u;

    .line 123
    .line 124
    iget-object v11, v9, Lq1/u;->b:Lq1/b0;

    .line 125
    .line 126
    check-cast v11, Lq1/r;

    .line 127
    .line 128
    iget-object v12, v11, Lq1/r;->f:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v8, v12}, Lp/l;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    if-eqz v12, :cond_5

    .line 135
    .line 136
    iget-object v11, v11, Lq1/r;->f:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v8, v11}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    check-cast v11, Lq1/w;

    .line 143
    .line 144
    invoke-virtual {v9, v11, v10}, Lq1/u;->d(Lq1/w;Ljava/util/ArrayList;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Lp/e;->values()Ljava/util/Collection;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    check-cast v8, Lp/d;

    .line 158
    .line 159
    invoke-virtual {v8}, Lp/d;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    :goto_4
    move-object v9, v8

    .line 164
    check-cast v9, Lp/a;

    .line 165
    .line 166
    invoke-virtual {v9}, Lp/a;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-eqz v11, :cond_19

    .line 171
    .line 172
    invoke-virtual {v9}, Lp/a;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    check-cast v9, Lq1/w;

    .line 177
    .line 178
    if-nez v9, :cond_8

    .line 179
    .line 180
    :cond_7
    :goto_5
    move-object v1, v10

    .line 181
    goto/16 :goto_c

    .line 182
    .line 183
    :cond_8
    invoke-virtual {v9}, Lq1/w;->f()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    if-nez v11, :cond_7

    .line 192
    .line 193
    invoke-virtual {v9}, Lq1/w;->g()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-eqz v11, :cond_9

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_9
    invoke-static {}, Lq1/t;->l()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v9}, Lq1/w;->f()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    invoke-virtual {v9}, Lq1/w;->g()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    invoke-static {v11, v12}, Lq1/t;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    iget-object v12, v9, Lq1/w;->a:Landroid/os/Bundle;

    .line 220
    .line 221
    const-string v13, "status"

    .line 222
    .line 223
    invoke-virtual {v12, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    invoke-static {v11, v12}, Lq1/t;->d(Landroid/media/MediaRoute2Info$Builder;Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    const-string v12, "connectionState"

    .line 232
    .line 233
    iget-object v13, v9, Lq1/w;->a:Landroid/os/Bundle;

    .line 234
    .line 235
    invoke-virtual {v13, v12, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    invoke-static {v11, v12}, Lq1/t;->b(Landroid/media/MediaRoute2Info$Builder;I)Landroid/media/MediaRoute2Info$Builder;

    .line 240
    .line 241
    .line 242
    move-result-object v11

    .line 243
    invoke-virtual {v9}, Lq1/w;->i()I

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    invoke-static {v11, v12}, Lq1/t;->s(Landroid/media/MediaRoute2Info$Builder;I)Landroid/media/MediaRoute2Info$Builder;

    .line 248
    .line 249
    .line 250
    move-result-object v11

    .line 251
    invoke-virtual {v9}, Lq1/w;->h()I

    .line 252
    .line 253
    .line 254
    move-result v12

    .line 255
    invoke-static {v11, v12}, Lq1/t;->y(Landroid/media/MediaRoute2Info$Builder;I)Landroid/media/MediaRoute2Info$Builder;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    invoke-virtual {v9}, Lq1/w;->j()I

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    invoke-static {v11, v12}, Lq1/t;->C(Landroid/media/MediaRoute2Info$Builder;I)Landroid/media/MediaRoute2Info$Builder;

    .line 264
    .line 265
    .line 266
    move-result-object v11

    .line 267
    invoke-virtual {v9}, Lq1/w;->b()Ljava/util/ArrayList;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    new-instance v13, Ljava/util/HashSet;

    .line 272
    .line 273
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    if-eqz v14, :cond_10

    .line 285
    .line 286
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v14

    .line 290
    check-cast v14, Landroid/content/IntentFilter;

    .line 291
    .line 292
    invoke-virtual {v14}, Landroid/content/IntentFilter;->countCategories()I

    .line 293
    .line 294
    .line 295
    move-result v15

    .line 296
    const/4 v1, 0x0

    .line 297
    :goto_6
    if-ge v1, v15, :cond_a

    .line 298
    .line 299
    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    const/16 v16, -0x1

    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 309
    .line 310
    .line 311
    move-result v17

    .line 312
    sparse-switch v17, :sswitch_data_0

    .line 313
    .line 314
    .line 315
    goto :goto_7

    .line 316
    :sswitch_0
    const-string v4, "android.media.intent.category.REMOTE_VIDEO_PLAYBACK"

    .line 317
    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-nez v4, :cond_b

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_b
    const/16 v16, 0x4

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :sswitch_1
    const-string v4, "android.media.intent.category.REMOTE_AUDIO_PLAYBACK"

    .line 329
    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-nez v4, :cond_c

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_c
    const/16 v16, 0x3

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :sswitch_2
    const-string v4, "android.media.intent.category.LIVE_VIDEO"

    .line 341
    .line 342
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-nez v4, :cond_d

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_d
    const/16 v16, 0x2

    .line 350
    .line 351
    goto :goto_7

    .line 352
    :sswitch_3
    const-string v4, "android.media.intent.category.LIVE_AUDIO"

    .line 353
    .line 354
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    if-nez v4, :cond_e

    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_e
    const/16 v16, 0x1

    .line 362
    .line 363
    goto :goto_7

    .line 364
    :sswitch_4
    const-string v4, "android.media.intent.category.REMOTE_PLAYBACK"

    .line 365
    .line 366
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-nez v4, :cond_f

    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_f
    const/16 v16, 0x0

    .line 374
    .line 375
    :goto_7
    packed-switch v16, :pswitch_data_0

    .line 376
    .line 377
    .line 378
    goto :goto_8

    .line 379
    :pswitch_0
    const-string v3, "android.media.route.feature.REMOTE_VIDEO_PLAYBACK"

    .line 380
    .line 381
    goto :goto_8

    .line 382
    :pswitch_1
    const-string v3, "android.media.route.feature.REMOTE_AUDIO_PLAYBACK"

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :pswitch_2
    const-string v3, "android.media.route.feature.LIVE_VIDEO"

    .line 386
    .line 387
    goto :goto_8

    .line 388
    :pswitch_3
    const-string v3, "android.media.route.feature.LIVE_AUDIO"

    .line 389
    .line 390
    goto :goto_8

    .line 391
    :pswitch_4
    const-string v3, "android.media.route.feature.REMOTE_PLAYBACK"

    .line 392
    .line 393
    :goto_8
    invoke-virtual {v13, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    add-int/2addr v1, v5

    .line 397
    const/4 v3, 0x4

    .line 398
    const/4 v4, 0x0

    .line 399
    goto :goto_6

    .line 400
    :cond_10
    invoke-static {v11, v13}, Lq1/t;->e(Landroid/media/MediaRoute2Info$Builder;Ljava/util/HashSet;)Landroid/media/MediaRoute2Info$Builder;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v9}, Lq1/w;->e()Landroid/net/Uri;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-static {v1, v3}, Lq1/t;->c(Landroid/media/MediaRoute2Info$Builder;Landroid/net/Uri;)Landroid/media/MediaRoute2Info$Builder;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 413
    .line 414
    const/16 v4, 0x22

    .line 415
    .line 416
    if-lt v3, v4, :cond_13

    .line 417
    .line 418
    iget-object v3, v9, Lq1/w;->a:Landroid/os/Bundle;

    .line 419
    .line 420
    const-string v4, "deduplicationIds"

    .line 421
    .line 422
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    if-eqz v3, :cond_11

    .line 427
    .line 428
    new-instance v4, Ljava/util/HashSet;

    .line 429
    .line 430
    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 431
    .line 432
    .line 433
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    goto :goto_9

    .line 438
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    :goto_9
    invoke-static {v1, v3}, Landroidx/mediarouter/app/t0;->d(Landroid/media/MediaRoute2Info$Builder;Ljava/util/Set;)V

    .line 443
    .line 444
    .line 445
    invoke-static {v1, v9}, Landroidx/mediarouter/app/t0;->a(Landroid/media/MediaRoute2Info$Builder;Lq1/w;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v9}, Lq1/w;->c()I

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    const/16 v4, 0x3e8

    .line 453
    .line 454
    if-eq v3, v4, :cond_12

    .line 455
    .line 456
    packed-switch v3, :pswitch_data_1

    .line 457
    .line 458
    .line 459
    packed-switch v3, :pswitch_data_2

    .line 460
    .line 461
    .line 462
    const/4 v3, 0x0

    .line 463
    goto :goto_a

    .line 464
    :pswitch_5
    const/16 v3, 0x1d

    .line 465
    .line 466
    goto :goto_a

    .line 467
    :pswitch_6
    const/16 v3, 0xa

    .line 468
    .line 469
    goto :goto_a

    .line 470
    :pswitch_7
    const/16 v3, 0x1a

    .line 471
    .line 472
    goto :goto_a

    .line 473
    :pswitch_8
    const/16 v3, 0x17

    .line 474
    .line 475
    goto :goto_a

    .line 476
    :pswitch_9
    const/16 v3, 0x16

    .line 477
    .line 478
    goto :goto_a

    .line 479
    :pswitch_a
    const/16 v3, 0xd

    .line 480
    .line 481
    goto :goto_a

    .line 482
    :pswitch_b
    const/16 v3, 0xc

    .line 483
    .line 484
    goto :goto_a

    .line 485
    :pswitch_c
    const/16 v3, 0xb

    .line 486
    .line 487
    goto :goto_a

    .line 488
    :pswitch_d
    const/16 v3, 0x9

    .line 489
    .line 490
    goto :goto_a

    .line 491
    :pswitch_e
    const/4 v3, 0x4

    .line 492
    goto :goto_a

    .line 493
    :pswitch_f
    const/4 v3, 0x3

    .line 494
    goto :goto_a

    .line 495
    :pswitch_10
    const/4 v3, 0x2

    .line 496
    goto :goto_a

    .line 497
    :pswitch_11
    const/16 v3, 0x3f2

    .line 498
    .line 499
    goto :goto_a

    .line 500
    :pswitch_12
    const/16 v3, 0x3f1

    .line 501
    .line 502
    goto :goto_a

    .line 503
    :pswitch_13
    const/16 v3, 0x3f0

    .line 504
    .line 505
    goto :goto_a

    .line 506
    :pswitch_14
    const/16 v3, 0x3ef

    .line 507
    .line 508
    goto :goto_a

    .line 509
    :pswitch_15
    const/16 v3, 0x3ee

    .line 510
    .line 511
    goto :goto_a

    .line 512
    :pswitch_16
    const/16 v3, 0x3ed

    .line 513
    .line 514
    goto :goto_a

    .line 515
    :pswitch_17
    const/16 v3, 0x3ec

    .line 516
    .line 517
    goto :goto_a

    .line 518
    :pswitch_18
    const/16 v3, 0x3eb

    .line 519
    .line 520
    goto :goto_a

    .line 521
    :pswitch_19
    const/16 v3, 0x8

    .line 522
    .line 523
    goto :goto_a

    .line 524
    :pswitch_1a
    const/16 v3, 0x3ea

    .line 525
    .line 526
    goto :goto_a

    .line 527
    :pswitch_1b
    const/16 v3, 0x3e9

    .line 528
    .line 529
    goto :goto_a

    .line 530
    :cond_12
    const/16 v3, 0x7d0

    .line 531
    .line 532
    :goto_a
    invoke-static {v1, v3}, Landroidx/mediarouter/app/t0;->e(Landroid/media/MediaRoute2Info$Builder;I)V

    .line 533
    .line 534
    .line 535
    :cond_13
    invoke-virtual {v9}, Lq1/w;->c()I

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    if-eq v3, v5, :cond_14

    .line 540
    .line 541
    if-eq v3, v2, :cond_15

    .line 542
    .line 543
    goto :goto_b

    .line 544
    :cond_14
    invoke-static {v1}, Lq1/t;->u(Landroid/media/MediaRoute2Info$Builder;)V

    .line 545
    .line 546
    .line 547
    :cond_15
    invoke-static {v1}, Lq1/t;->z(Landroid/media/MediaRoute2Info$Builder;)V

    .line 548
    .line 549
    .line 550
    :goto_b
    invoke-virtual {v9}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    if-nez v3, :cond_16

    .line 559
    .line 560
    invoke-static {v1}, Lq1/t;->D(Landroid/media/MediaRoute2Info$Builder;)V

    .line 561
    .line 562
    .line 563
    :cond_16
    new-instance v3, Landroid/os/Bundle;

    .line 564
    .line 565
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 566
    .line 567
    .line 568
    const-string v4, "androidx.mediarouter.media.KEY_EXTRAS"

    .line 569
    .line 570
    iget-object v11, v9, Lq1/w;->a:Landroid/os/Bundle;

    .line 571
    .line 572
    const-string v12, "extras"

    .line 573
    .line 574
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 575
    .line 576
    .line 577
    move-result-object v11

    .line 578
    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 579
    .line 580
    .line 581
    new-instance v4, Ljava/util/ArrayList;

    .line 582
    .line 583
    invoke-virtual {v9}, Lq1/w;->b()Ljava/util/ArrayList;

    .line 584
    .line 585
    .line 586
    move-result-object v11

    .line 587
    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 588
    .line 589
    .line 590
    const-string v11, "androidx.mediarouter.media.KEY_CONTROL_FILTERS"

    .line 591
    .line 592
    invoke-virtual {v3, v11, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 593
    .line 594
    .line 595
    const-string v4, "androidx.mediarouter.media.KEY_DEVICE_TYPE"

    .line 596
    .line 597
    invoke-virtual {v9}, Lq1/w;->c()I

    .line 598
    .line 599
    .line 600
    move-result v11

    .line 601
    invoke-virtual {v3, v4, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 602
    .line 603
    .line 604
    const-string v4, "androidx.mediarouter.media.KEY_PLAYBACK_TYPE"

    .line 605
    .line 606
    const-string v11, "playbackType"

    .line 607
    .line 608
    iget-object v12, v9, Lq1/w;->a:Landroid/os/Bundle;

    .line 609
    .line 610
    invoke-virtual {v12, v11, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 611
    .line 612
    .line 613
    move-result v11

    .line 614
    invoke-virtual {v3, v4, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 615
    .line 616
    .line 617
    const-string v4, "androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID"

    .line 618
    .line 619
    invoke-virtual {v9}, Lq1/w;->f()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v11

    .line 623
    invoke-virtual {v3, v4, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-static {v1, v3}, Lq1/t;->n(Landroid/media/MediaRoute2Info$Builder;Landroid/os/Bundle;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v9}, Lq1/w;->b()Ljava/util/ArrayList;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 634
    .line 635
    .line 636
    move-result v3

    .line 637
    if-eqz v3, :cond_17

    .line 638
    .line 639
    invoke-static {v1}, Lq1/t;->m(Landroid/media/MediaRoute2Info$Builder;)V

    .line 640
    .line 641
    .line 642
    :cond_17
    invoke-static {v1}, Lq1/t;->g(Landroid/media/MediaRoute2Info$Builder;)Landroid/media/MediaRoute2Info;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    :goto_c
    if-eqz v1, :cond_18

    .line 647
    .line 648
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    :cond_18
    const/4 v3, 0x4

    .line 652
    const/4 v4, 0x0

    .line 653
    goto/16 :goto_4

    .line 654
    .line 655
    :cond_19
    invoke-static {v7, v0}, Lq1/j;->w(Lq1/v;Ljava/util/ArrayList;)V

    .line 656
    .line 657
    .line 658
    return-void

    .line 659
    :goto_d
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    throw v0

    .line 661
    :sswitch_data_0
    .sparse-switch
        -0x7b1e3633 -> :sswitch_4
        0x3909bb2a -> :sswitch_3
        0x3a2c33cf -> :sswitch_2
        0x5f7016b6 -> :sswitch_1
        0x64ea87b1 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
