.class public final Landroidx/mediarouter/app/c;
.super Landroid/os/Handler;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/mediarouter/app/c;->a:I

    iput-object p2, p0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Landroidx/mediarouter/app/c;->a:I

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    new-instance v0, Lj7/c;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p1}, Lj7/c;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lka/b;Landroid/os/Looper;I)V
    .locals 0

    .line 2
    iput p3, p0, Landroidx/mediarouter/app/c;->a:I

    iput-object p1, p0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lq1/l;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Landroidx/mediarouter/app/c;->a:I

    .line 5
    iput-object p1, p0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x1

    .line 10
    iget v7, v0, Landroidx/mediarouter/app/c;->a:I

    .line 11
    .line 12
    packed-switch v7, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget v2, v1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    if-eq v2, v6, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 23
    .line 24
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouteProviderService;->e:Lq1/k0;

    .line 25
    .line 26
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroid/os/Messenger;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lq1/k0;->c(Landroid/os/Messenger;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ltz v1, :cond_1

    .line 35
    .line 36
    iget-object v3, v2, Lq1/k0;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lq1/j0;

    .line 43
    .line 44
    invoke-virtual {v2}, Lq1/k0;->e()V

    .line 45
    .line 46
    .line 47
    sget v2, Landroidx/mediarouter/media/MediaRouteProviderService;->f:I

    .line 48
    .line 49
    invoke-virtual {v1}, Lq1/j0;->d()V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget v1, v1, Landroid/os/Message;->what:I

    .line 54
    .line 55
    iget-object v2, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Lq1/e0;

    .line 58
    .line 59
    if-eq v1, v6, :cond_3

    .line 60
    .line 61
    if-eq v1, v5, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iput-boolean v4, v2, Lq1/e0;->f:Z

    .line 65
    .line 66
    iget-object v1, v2, Lq1/e0;->e:Lq1/x;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Lq1/e0;->e(Lq1/x;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iput-boolean v4, v2, Lq1/e0;->h:Z

    .line 73
    .line 74
    iget-object v1, v2, Lq1/e0;->d:Lu7/d;

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    iget-object v3, v2, Lq1/e0;->g:Landroidx/appcompat/app/r0;

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Lu7/d;->w(Lq1/e0;Landroidx/appcompat/app/r0;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    return-void

    .line 84
    :pswitch_1
    iget v4, v1, Landroid/os/Message;->what:I

    .line 85
    .line 86
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 87
    .line 88
    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v7, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v7, Lq1/l;

    .line 97
    .line 98
    iget-object v8, v7, Lq1/l;->j:Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    check-cast v8, Lq1/o0;

    .line 105
    .line 106
    if-nez v8, :cond_5

    .line 107
    .line 108
    const-string v1, "MR2Provider"

    .line 109
    .line 110
    const-string v2, "Pending callback not found for control request."

    .line 111
    .line 112
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    iget-object v7, v7, Lq1/l;->j:Landroid/util/SparseArray;

    .line 117
    .line 118
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 119
    .line 120
    .line 121
    if-eq v4, v3, :cond_8

    .line 122
    .line 123
    const/4 v3, 0x4

    .line 124
    if-eq v4, v3, :cond_6

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    if-nez v1, :cond_7

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    const-string v2, "error"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :goto_2
    check-cast v6, Landroid/os/Bundle;

    .line 137
    .line 138
    invoke-virtual {v8, v2, v6}, Lq1/o0;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_8
    check-cast v6, Landroid/os/Bundle;

    .line 143
    .line 144
    invoke-virtual {v8, v6}, Lq1/o0;->b(Landroid/os/Bundle;)V

    .line 145
    .line 146
    .line 147
    :goto_3
    return-void

    .line 148
    :pswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v2, Landroid/view/View;

    .line 151
    .line 152
    iget v1, v1, Landroid/os/Message;->what:I

    .line 153
    .line 154
    iget-object v3, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v3, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 157
    .line 158
    invoke-static {v3, v2, v1}, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->a(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;Landroid/view/View;I)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget v3, v1, Landroid/os/Message;->what:I

    .line 167
    .line 168
    const-string v5, "data_callback_token"

    .line 169
    .line 170
    const-string v7, "data_calling_uid"

    .line 171
    .line 172
    const-string v8, "data_calling_pid"

    .line 173
    .line 174
    const-string v9, "data_package_name"

    .line 175
    .line 176
    const-string v10, "data_root_hints"

    .line 177
    .line 178
    const-string v11, "data_media_item_id"

    .line 179
    .line 180
    const-string v12, "data_result_receiver"

    .line 181
    .line 182
    iget-object v13, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v13, Lj7/c;

    .line 185
    .line 186
    packed-switch v3, :pswitch_data_1

    .line 187
    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v3, "Unhandled message: "

    .line 192
    .line 193
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v3, "\n  Service version: 2\n  Client version: "

    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 205
    .line 206
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const-string v2, "MBServiceCompat"

    .line 214
    .line 215
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    goto/16 :goto_5

    .line 219
    .line 220
    :pswitch_4
    const-string v3, "data_custom_action_extras"

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 223
    .line 224
    .line 225
    move-result-object v18

    .line 226
    invoke-static/range {v18 .. v18}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 227
    .line 228
    .line 229
    const-string v3, "data_custom_action"

    .line 230
    .line 231
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v17

    .line 235
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    move-object/from16 v19, v2

    .line 240
    .line 241
    check-cast v19, Landroid/support/v4/os/ResultReceiver;

    .line 242
    .line 243
    new-instance v2, Lm1/p;

    .line 244
    .line 245
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 246
    .line 247
    invoke-direct {v2, v1}, Lm1/p;-><init>(Landroid/os/Messenger;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-nez v1, :cond_c

    .line 258
    .line 259
    if-nez v19, :cond_9

    .line 260
    .line 261
    goto/16 :goto_5

    .line 262
    .line 263
    :cond_9
    iget-object v1, v13, Lj7/c;->b:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 266
    .line 267
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/mediarouter/app/c;

    .line 268
    .line 269
    new-instance v3, Lm1/m;

    .line 270
    .line 271
    move-object v14, v3

    .line 272
    move-object v15, v13

    .line 273
    move-object/from16 v16, v2

    .line 274
    .line 275
    invoke-direct/range {v14 .. v19}, Lm1/m;-><init>(Lj7/c;Lm1/p;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v3}, Landroidx/mediarouter/app/c;->a(Ljava/lang/Runnable;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_5

    .line 282
    .line 283
    :pswitch_5
    const-string v3, "data_search_extras"

    .line 284
    .line 285
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 286
    .line 287
    .line 288
    move-result-object v18

    .line 289
    invoke-static/range {v18 .. v18}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 290
    .line 291
    .line 292
    const-string v3, "data_search_query"

    .line 293
    .line 294
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v17

    .line 298
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    move-object/from16 v19, v2

    .line 303
    .line 304
    check-cast v19, Landroid/support/v4/os/ResultReceiver;

    .line 305
    .line 306
    new-instance v2, Lm1/p;

    .line 307
    .line 308
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 309
    .line 310
    invoke-direct {v2, v1}, Lm1/p;-><init>(Landroid/os/Messenger;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-nez v1, :cond_c

    .line 321
    .line 322
    if-nez v19, :cond_a

    .line 323
    .line 324
    goto/16 :goto_5

    .line 325
    .line 326
    :cond_a
    iget-object v1, v13, Lj7/c;->b:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 329
    .line 330
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/mediarouter/app/c;

    .line 331
    .line 332
    new-instance v3, Lm1/n;

    .line 333
    .line 334
    move-object v14, v3

    .line 335
    move-object v15, v13

    .line 336
    move-object/from16 v16, v2

    .line 337
    .line 338
    invoke-direct/range {v14 .. v19}, Lm1/n;-><init>(Lj7/c;Lm1/p;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v3}, Landroidx/mediarouter/app/c;->a(Ljava/lang/Runnable;)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_5

    .line 345
    .line 346
    :pswitch_6
    new-instance v2, Lm1/p;

    .line 347
    .line 348
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 349
    .line 350
    invoke-direct {v2, v1}, Lm1/p;-><init>(Landroid/os/Messenger;)V

    .line 351
    .line 352
    .line 353
    iget-object v1, v13, Lj7/c;->b:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 356
    .line 357
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/mediarouter/app/c;

    .line 358
    .line 359
    new-instance v3, Lm1/l;

    .line 360
    .line 361
    invoke-direct {v3, v13, v2, v6}, Lm1/l;-><init>(Lj7/c;Lm1/p;I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v3}, Landroidx/mediarouter/app/c;->a(Ljava/lang/Runnable;)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_5

    .line 368
    .line 369
    :pswitch_7
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 370
    .line 371
    .line 372
    move-result-object v17

    .line 373
    invoke-static/range {v17 .. v17}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 374
    .line 375
    .line 376
    new-instance v3, Lm1/p;

    .line 377
    .line 378
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 379
    .line 380
    invoke-direct {v3, v1}, Lm1/p;-><init>(Landroid/os/Messenger;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v19

    .line 387
    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    move-result v16

    .line 391
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v15

    .line 395
    iget-object v1, v13, Lj7/c;->b:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 398
    .line 399
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/mediarouter/app/c;

    .line 400
    .line 401
    new-instance v2, Lm1/o;

    .line 402
    .line 403
    move-object v14, v2

    .line 404
    move-object/from16 v18, v13

    .line 405
    .line 406
    move-object/from16 v20, v3

    .line 407
    .line 408
    invoke-direct/range {v14 .. v20}, Lm1/o;-><init>(IILandroid/os/Bundle;Lj7/c;Ljava/lang/String;Lm1/p;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v2}, Landroidx/mediarouter/app/c;->a(Ljava/lang/Runnable;)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_5

    .line 415
    .line 416
    :pswitch_8
    invoke-virtual {v2, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    check-cast v2, Landroid/support/v4/os/ResultReceiver;

    .line 425
    .line 426
    new-instance v4, Lm1/p;

    .line 427
    .line 428
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 429
    .line 430
    invoke-direct {v4, v1}, Lm1/p;-><init>(Landroid/os/Messenger;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-nez v1, :cond_c

    .line 441
    .line 442
    if-nez v2, :cond_b

    .line 443
    .line 444
    goto/16 :goto_5

    .line 445
    .line 446
    :cond_b
    iget-object v1, v13, Lj7/c;->b:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 449
    .line 450
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/mediarouter/app/c;

    .line 451
    .line 452
    new-instance v5, Lm1/n;

    .line 453
    .line 454
    invoke-direct {v5, v13, v4, v3, v2}, Lm1/n;-><init>(Lj7/c;Lm1/p;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v5}, Landroidx/mediarouter/app/c;->a(Ljava/lang/Runnable;)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_5

    .line 461
    .line 462
    :pswitch_9
    invoke-virtual {v2, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v17

    .line 466
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 467
    .line 468
    .line 469
    move-result-object v18

    .line 470
    new-instance v2, Lm1/p;

    .line 471
    .line 472
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 473
    .line 474
    invoke-direct {v2, v1}, Lm1/p;-><init>(Landroid/os/Messenger;)V

    .line 475
    .line 476
    .line 477
    iget-object v1, v13, Lj7/c;->b:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 480
    .line 481
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/mediarouter/app/c;

    .line 482
    .line 483
    new-instance v3, Lk/d;

    .line 484
    .line 485
    const/16 v19, 0x1

    .line 486
    .line 487
    move-object v14, v3

    .line 488
    move-object v15, v13

    .line 489
    move-object/from16 v16, v2

    .line 490
    .line 491
    invoke-direct/range {v14 .. v19}, Lk/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v3}, Landroidx/mediarouter/app/c;->a(Ljava/lang/Runnable;)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_5

    .line 498
    .line 499
    :pswitch_a
    const-string v3, "data_options"

    .line 500
    .line 501
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 502
    .line 503
    .line 504
    move-result-object v19

    .line 505
    invoke-static/range {v19 .. v19}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v17

    .line 512
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 513
    .line 514
    .line 515
    move-result-object v18

    .line 516
    new-instance v2, Lm1/p;

    .line 517
    .line 518
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 519
    .line 520
    invoke-direct {v2, v1}, Lm1/p;-><init>(Landroid/os/Messenger;)V

    .line 521
    .line 522
    .line 523
    iget-object v1, v13, Lj7/c;->b:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 526
    .line 527
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/mediarouter/app/c;

    .line 528
    .line 529
    new-instance v3, Lm1/m;

    .line 530
    .line 531
    move-object v14, v3

    .line 532
    move-object v15, v13

    .line 533
    move-object/from16 v16, v2

    .line 534
    .line 535
    invoke-direct/range {v14 .. v19}, Lm1/m;-><init>(Lj7/c;Lm1/p;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v3}, Landroidx/mediarouter/app/c;->a(Ljava/lang/Runnable;)V

    .line 539
    .line 540
    .line 541
    goto :goto_5

    .line 542
    :pswitch_b
    new-instance v2, Lm1/p;

    .line 543
    .line 544
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 545
    .line 546
    invoke-direct {v2, v1}, Lm1/p;-><init>(Landroid/os/Messenger;)V

    .line 547
    .line 548
    .line 549
    iget-object v1, v13, Lj7/c;->b:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 552
    .line 553
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/mediarouter/app/c;

    .line 554
    .line 555
    new-instance v3, Lm1/l;

    .line 556
    .line 557
    invoke-direct {v3, v13, v2, v4}, Lm1/l;-><init>(Lj7/c;Lm1/p;I)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v3}, Landroidx/mediarouter/app/c;->a(Ljava/lang/Runnable;)V

    .line 561
    .line 562
    .line 563
    goto :goto_5

    .line 564
    :pswitch_c
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 565
    .line 566
    .line 567
    move-result-object v17

    .line 568
    invoke-static/range {v17 .. v17}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 576
    .line 577
    .line 578
    move-result v15

    .line 579
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    new-instance v5, Lm1/p;

    .line 584
    .line 585
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 586
    .line 587
    invoke-direct {v5, v1}, Lm1/p;-><init>(Landroid/os/Messenger;)V

    .line 588
    .line 589
    .line 590
    iget-object v1, v13, Lj7/c;->b:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 593
    .line 594
    if-eqz v3, :cond_e

    .line 595
    .line 596
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 597
    .line 598
    .line 599
    move-result-object v7

    .line 600
    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v7

    .line 604
    array-length v8, v7

    .line 605
    :goto_4
    if-ge v4, v8, :cond_f

    .line 606
    .line 607
    aget-object v9, v7, v4

    .line 608
    .line 609
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v9

    .line 613
    if-eqz v9, :cond_d

    .line 614
    .line 615
    new-instance v4, Lm1/k;

    .line 616
    .line 617
    move-object v14, v4

    .line 618
    move/from16 v16, v2

    .line 619
    .line 620
    move-object/from16 v18, v13

    .line 621
    .line 622
    move-object/from16 v19, v3

    .line 623
    .line 624
    move-object/from16 v20, v5

    .line 625
    .line 626
    invoke-direct/range {v14 .. v20}, Lm1/k;-><init>(IILandroid/os/Bundle;Lj7/c;Ljava/lang/String;Lm1/p;)V

    .line 627
    .line 628
    .line 629
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/mediarouter/app/c;

    .line 630
    .line 631
    invoke-virtual {v1, v4}, Landroidx/mediarouter/app/c;->a(Ljava/lang/Runnable;)V

    .line 632
    .line 633
    .line 634
    :cond_c
    :goto_5
    return-void

    .line 635
    :cond_d
    add-int/2addr v4, v6

    .line 636
    goto :goto_4

    .line 637
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 641
    .line 642
    new-instance v4, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    const-string v5, "Package/uid mismatch: uid="

    .line 645
    .line 646
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    const-string v2, " package="

    .line 653
    .line 654
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    throw v1

    .line 668
    :pswitch_d
    iget v2, v1, Landroid/os/Message;->what:I

    .line 669
    .line 670
    if-eqz v2, :cond_1c

    .line 671
    .line 672
    if-eq v2, v6, :cond_1b

    .line 673
    .line 674
    if-eq v2, v5, :cond_12

    .line 675
    .line 676
    if-eq v2, v3, :cond_10

    .line 677
    .line 678
    goto/16 :goto_b

    .line 679
    .line 680
    :cond_10
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 681
    .line 682
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v3, Ljava/lang/String;

    .line 685
    .line 686
    const/16 v4, -0x14

    .line 687
    .line 688
    if-ne v2, v4, :cond_11

    .line 689
    .line 690
    iget-object v2, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 691
    .line 692
    check-cast v2, Lka/m0;

    .line 693
    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .line 698
    .line 699
    sget-object v5, Lga/l;->i:Lga/l;

    .line 700
    .line 701
    invoke-static {v5}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v5

    .line 705
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    const-string v5, "Ug==\n"

    .line 709
    .line 710
    const-string v6, "fWaur5IIJCo=\n"

    .line 711
    .line 712
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v5

    .line 716
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v3

    .line 726
    invoke-static {v3}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    sget-object v5, Lka/m0;->B0:Ljava/lang/String;

    .line 731
    .line 732
    invoke-virtual {v2, v4, v3}, Lka/m0;->Y(ILjava/lang/String;)V

    .line 733
    .line 734
    .line 735
    goto/16 :goto_b

    .line 736
    .line 737
    :cond_11
    iget-object v4, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 738
    .line 739
    check-cast v4, Lka/m0;

    .line 740
    .line 741
    sget-object v5, Lka/m0;->B0:Ljava/lang/String;

    .line 742
    .line 743
    invoke-virtual {v4, v2, v3}, Lka/m0;->Y(ILjava/lang/String;)V

    .line 744
    .line 745
    .line 746
    goto/16 :goto_b

    .line 747
    .line 748
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    const-string v3, "tgnGDz/DqVg=\n"

    .line 753
    .line 754
    const-string v5, "0Xupek+QzCw=\n"

    .line 755
    .line 756
    invoke-static {v3, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 761
    .line 762
    .line 763
    move-result-object v2

    .line 764
    check-cast v2, Ljava/util/HashSet;

    .line 765
    .line 766
    const-string v3, "MmQwElE=\n"

    .line 767
    .line 768
    const-string v5, "cDdmfTXMekg=\n"

    .line 769
    .line 770
    invoke-static {v3, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    new-instance v5, Ljava/lang/StringBuilder;

    .line 775
    .line 776
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    .line 778
    .line 779
    const-string v7, "545u74Oqepeg\n"

    .line 780
    .line 781
    const-string v8, "gPwBmvP5H+M=\n"

    .line 782
    .line 783
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v7

    .line 787
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    sget-boolean v7, Lorg/bitspark/android/utils/m;->b:Z

    .line 798
    .line 799
    invoke-static {v3, v5}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    iget-object v3, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 803
    .line 804
    check-cast v3, Lka/m0;

    .line 805
    .line 806
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    new-instance v5, Landroid/util/SparseArray;

    .line 810
    .line 811
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 812
    .line 813
    .line 814
    if-eqz v2, :cond_15

    .line 815
    .line 816
    sget-object v7, Lga/o;->f:Ljava/util/List;

    .line 817
    .line 818
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 819
    .line 820
    .line 821
    move-result-object v7

    .line 822
    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 823
    .line 824
    .line 825
    move-result v8

    .line 826
    if-eqz v8, :cond_14

    .line 827
    .line 828
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v8

    .line 832
    check-cast v8, Lorg/bitspark/android/beans/GroupBeanModel;

    .line 833
    .line 834
    iget v9, v8, Lorg/bitspark/android/beans/GroupBeanModel;->group_id:I

    .line 835
    .line 836
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 837
    .line 838
    .line 839
    move-result-object v9

    .line 840
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v9

    .line 844
    if-eqz v9, :cond_13

    .line 845
    .line 846
    iget-object v8, v8, Lorg/bitspark/android/beans/GroupBeanModel;->items:Ljava/util/List;

    .line 847
    .line 848
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 849
    .line 850
    .line 851
    move-result-object v8

    .line 852
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 853
    .line 854
    .line 855
    move-result v9

    .line 856
    if-eqz v9, :cond_13

    .line 857
    .line 858
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v9

    .line 862
    check-cast v9, Lorg/bitspark/android/beans/ChannelBean$TagsBean;

    .line 863
    .line 864
    new-instance v10, Lorg/bitspark/android/beans/Group;

    .line 865
    .line 866
    invoke-direct {v10}, Lorg/bitspark/android/beans/Group;-><init>()V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v9}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getName()Lorg/bitspark/android/beans/ChannelBean$TagsBean$NameBean;

    .line 870
    .line 871
    .line 872
    move-result-object v11

    .line 873
    invoke-virtual {v11}, Lorg/bitspark/android/beans/ChannelBean$TagsBean$NameBean;->getInit()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v11

    .line 877
    iput-object v11, v10, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 878
    .line 879
    invoke-virtual {v9}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 880
    .line 881
    .line 882
    move-result v11

    .line 883
    iput v11, v10, Lorg/bitspark/android/beans/Group;->id:I

    .line 884
    .line 885
    iget-object v11, v9, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->url:Ljava/lang/String;

    .line 886
    .line 887
    iput-object v11, v10, Lorg/bitspark/android/beans/Group;->url:Ljava/lang/String;

    .line 888
    .line 889
    invoke-virtual {v9}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->isRestrictedAccess()Z

    .line 890
    .line 891
    .line 892
    move-result v9

    .line 893
    iput-boolean v9, v10, Lorg/bitspark/android/beans/Group;->restrictedAccess:Z

    .line 894
    .line 895
    iget v9, v10, Lorg/bitspark/android/beans/Group;->id:I

    .line 896
    .line 897
    invoke-virtual {v5, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 898
    .line 899
    .line 900
    goto :goto_6

    .line 901
    :cond_14
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 902
    .line 903
    .line 904
    move-result v2

    .line 905
    if-nez v2, :cond_15

    .line 906
    .line 907
    new-instance v2, Lorg/bitspark/android/beans/Group;

    .line 908
    .line 909
    invoke-direct {v2}, Lorg/bitspark/android/beans/Group;-><init>()V

    .line 910
    .line 911
    .line 912
    sget-object v7, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 913
    .line 914
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 915
    .line 916
    .line 917
    move-result-object v7

    .line 918
    const v8, 0x7f120016

    .line 919
    .line 920
    .line 921
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v7

    .line 925
    iput-object v7, v2, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 926
    .line 927
    const/16 v7, -0xa

    .line 928
    .line 929
    iput v7, v2, Lorg/bitspark/android/beans/Group;->id:I

    .line 930
    .line 931
    invoke-virtual {v5, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 932
    .line 933
    .line 934
    new-instance v2, Lorg/bitspark/android/beans/Group;

    .line 935
    .line 936
    invoke-direct {v2}, Lorg/bitspark/android/beans/Group;-><init>()V

    .line 937
    .line 938
    .line 939
    sget-object v7, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 940
    .line 941
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 942
    .line 943
    .line 944
    move-result-object v7

    .line 945
    const v8, 0x7f12000b

    .line 946
    .line 947
    .line 948
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v7

    .line 952
    iput-object v7, v2, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 953
    .line 954
    const/4 v7, -0x5

    .line 955
    iput v7, v2, Lorg/bitspark/android/beans/Group;->id:I

    .line 956
    .line 957
    invoke-virtual {v5, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 958
    .line 959
    .line 960
    :cond_15
    iget-object v2, v3, Lka/m0;->c0:Lfa/f1;

    .line 961
    .line 962
    if-nez v2, :cond_16

    .line 963
    .line 964
    new-instance v2, Lfa/f1;

    .line 965
    .line 966
    invoke-virtual {v3}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 967
    .line 968
    .line 969
    move-result-object v6

    .line 970
    sget-object v7, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 971
    .line 972
    invoke-direct {v2, v5, v6, v7}, Lfa/f1;-><init>(Landroid/util/SparseArray;Landroidx/fragment/app/FragmentActivity;Landroidx/mediarouter/app/c;)V

    .line 973
    .line 974
    .line 975
    iput-object v2, v3, Lka/m0;->c0:Lfa/f1;

    .line 976
    .line 977
    invoke-virtual {v3}, Lka/m0;->b0()V

    .line 978
    .line 979
    .line 980
    goto :goto_9

    .line 981
    :cond_16
    iget-object v7, v2, Lfa/f1;->h:Landroid/util/SparseArray;

    .line 982
    .line 983
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 984
    .line 985
    .line 986
    iput v4, v2, Lfa/p;->a:I

    .line 987
    .line 988
    const/4 v8, 0x0

    .line 989
    :goto_7
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 990
    .line 991
    .line 992
    move-result v9

    .line 993
    if-ge v8, v9, :cond_17

    .line 994
    .line 995
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 996
    .line 997
    .line 998
    move-result v9

    .line 999
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v10

    .line 1003
    check-cast v10, Lorg/bitspark/android/beans/Group;

    .line 1004
    .line 1005
    invoke-virtual {v7, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1006
    .line 1007
    .line 1008
    add-int/2addr v8, v6

    .line 1009
    goto :goto_7

    .line 1010
    :cond_17
    new-instance v7, Ljava/util/HashSet;

    .line 1011
    .line 1012
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1013
    .line 1014
    .line 1015
    const/4 v8, 0x0

    .line 1016
    :goto_8
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 1017
    .line 1018
    .line 1019
    move-result v9

    .line 1020
    if-ge v8, v9, :cond_18

    .line 1021
    .line 1022
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1023
    .line 1024
    .line 1025
    move-result v9

    .line 1026
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v9

    .line 1030
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1031
    .line 1032
    .line 1033
    add-int/2addr v8, v6

    .line 1034
    goto :goto_8

    .line 1035
    :cond_18
    iget-object v2, v2, Lfa/f1;->i:Ljava/util/ArrayList;

    .line 1036
    .line 1037
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1041
    .line 1042
    .line 1043
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1044
    .line 1045
    .line 1046
    iget-object v2, v3, Lka/m0;->c0:Lfa/f1;

    .line 1047
    .line 1048
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 1049
    .line 1050
    .line 1051
    iget-boolean v2, v3, Lka/m0;->r0:Z

    .line 1052
    .line 1053
    if-eqz v2, :cond_19

    .line 1054
    .line 1055
    iget-object v2, v3, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 1056
    .line 1057
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_9

    .line 1061
    :cond_19
    iget-object v2, v3, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 1062
    .line 1063
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1064
    .line 1065
    .line 1066
    :goto_9
    sget-object v2, Lka/m0;->B0:Ljava/lang/String;

    .line 1067
    .line 1068
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    .line 1072
    .line 1073
    const-string v7, "qpLKJnQLTV6jjsA/SSlVEb6J3zY+aA==\n"

    .line 1074
    .line 1075
    const-string v8, "zeClUwRIJT8=\n"

    .line 1076
    .line 1077
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v7

    .line 1081
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 1085
    .line 1086
    .line 1087
    move-result v7

    .line 1088
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    .line 1091
    const-string v7, "xeLtNlae3hfM/ucva7zGTII=\n"

    .line 1092
    .line 1093
    const-string v8, "opCCQybdtnY=\n"

    .line 1094
    .line 1095
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v7

    .line 1099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v5

    .line 1109
    sget-boolean v6, Lorg/bitspark/android/utils/m;->b:Z

    .line 1110
    .line 1111
    invoke-static {v2, v5}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    iget-object v2, v3, Lka/m0;->c0:Lfa/f1;

    .line 1115
    .line 1116
    if-eqz v2, :cond_1d

    .line 1117
    .line 1118
    iget-boolean v5, v3, Lka/m0;->r0:Z

    .line 1119
    .line 1120
    if-eqz v5, :cond_1a

    .line 1121
    .line 1122
    iget-object v5, v3, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 1123
    .line 1124
    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/k0;Z)V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_a

    .line 1128
    :cond_1a
    iget-object v5, v3, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 1129
    .line 1130
    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/k0;Z)V

    .line 1131
    .line 1132
    .line 1133
    :goto_a
    iget-object v2, v3, Lka/m0;->c0:Lfa/f1;

    .line 1134
    .line 1135
    iget-object v2, v2, Lfa/f1;->i:Ljava/util/ArrayList;

    .line 1136
    .line 1137
    if-eqz v2, :cond_1d

    .line 1138
    .line 1139
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1140
    .line 1141
    .line 1142
    move-result v2

    .line 1143
    if-lez v2, :cond_1d

    .line 1144
    .line 1145
    iget-object v2, v3, Lka/m0;->c0:Lfa/f1;

    .line 1146
    .line 1147
    iget-object v2, v2, Lfa/f1;->i:Ljava/util/ArrayList;

    .line 1148
    .line 1149
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v2

    .line 1153
    check-cast v2, Ljava/lang/Integer;

    .line 1154
    .line 1155
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1156
    .line 1157
    .line 1158
    move-result v2

    .line 1159
    const-string v4, ""

    .line 1160
    .line 1161
    invoke-virtual {v3, v2, v4}, Lka/m0;->Y(ILjava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    goto :goto_b

    .line 1165
    :cond_1b
    const-string v2, "cxJ3/T8=\n"

    .line 1166
    .line 1167
    const-string v3, "MUEhkltHNqo=\n"

    .line 1168
    .line 1169
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    const-string v3, "pxYqBoa6jv+FLRQu6b6c5YwrBDf23w==\n"

    .line 1174
    .line 1175
    const-string v4, "y3lLYqb/2Lo=\n"

    .line 1176
    .line 1177
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v3

    .line 1181
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 1182
    .line 1183
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    iget-object v2, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 1187
    .line 1188
    check-cast v2, Lka/m0;

    .line 1189
    .line 1190
    invoke-virtual {v2}, Lka/m0;->X()V

    .line 1191
    .line 1192
    .line 1193
    goto :goto_b

    .line 1194
    :cond_1c
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1195
    .line 1196
    const-string v3, "WWBfqps=\n"

    .line 1197
    .line 1198
    const-string v4, "GzMJxf8lkZo=\n"

    .line 1199
    .line 1200
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v3

    .line 1204
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1205
    .line 1206
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1207
    .line 1208
    .line 1209
    const-string v5, "1GzE/ExzOlDcddf3R2U8UNwa\n"

    .line 1210
    .line 1211
    const-string v6, "kTqBshgsaBU=\n"

    .line 1212
    .line 1213
    invoke-static {v5, v6, v4, v2}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v4

    .line 1217
    sget-boolean v5, Lorg/bitspark/android/utils/m;->b:Z

    .line 1218
    .line 1219
    invoke-static {v3, v4}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    .line 1221
    .line 1222
    iget-object v3, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 1223
    .line 1224
    check-cast v3, Lka/m0;

    .line 1225
    .line 1226
    iget-object v4, v3, Lka/m0;->d0:Lfa/x0;

    .line 1227
    .line 1228
    iget-object v4, v4, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 1229
    .line 1230
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1231
    .line 1232
    .line 1233
    iget-object v4, v3, Lka/m0;->d0:Lfa/x0;

    .line 1234
    .line 1235
    iget-object v4, v4, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 1236
    .line 1237
    sget-object v5, Lga/o;->c:Landroid/util/SparseArray;

    .line 1238
    .line 1239
    const/4 v6, -0x1

    .line 1240
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v5

    .line 1244
    check-cast v5, Lorg/bitspark/android/beans/Group;

    .line 1245
    .line 1246
    iget-object v5, v5, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 1247
    .line 1248
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1249
    .line 1250
    .line 1251
    iget-object v4, v3, Lka/m0;->d0:Lfa/x0;

    .line 1252
    .line 1253
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/k0;->notifyItemRemoved(I)V

    .line 1254
    .line 1255
    .line 1256
    iget-object v2, v3, Lka/m0;->d0:Lfa/x0;

    .line 1257
    .line 1258
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 1259
    .line 1260
    .line 1261
    :cond_1d
    :goto_b
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1262
    .line 1263
    .line 1264
    return-void

    .line 1265
    :pswitch_e
    iget v2, v1, Landroid/os/Message;->what:I

    .line 1266
    .line 1267
    iget-object v3, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 1268
    .line 1269
    check-cast v3, Lka/r;

    .line 1270
    .line 1271
    if-eq v2, v6, :cond_21

    .line 1272
    .line 1273
    if-eq v2, v5, :cond_1e

    .line 1274
    .line 1275
    goto :goto_d

    .line 1276
    :cond_1e
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1277
    .line 1278
    invoke-virtual {v3}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v4

    .line 1282
    if-eqz v4, :cond_20

    .line 1283
    .line 1284
    invoke-virtual {v3}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v4

    .line 1288
    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v4

    .line 1292
    if-eqz v4, :cond_20

    .line 1293
    .line 1294
    invoke-virtual {v3}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v4

    .line 1298
    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v4

    .line 1302
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 1303
    .line 1304
    .line 1305
    move-result v4

    .line 1306
    const v5, 0x7f0b01b7

    .line 1307
    .line 1308
    .line 1309
    if-eq v4, v5, :cond_1f

    .line 1310
    .line 1311
    goto :goto_c

    .line 1312
    :cond_1f
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1313
    .line 1314
    iput-object v2, v3, Lka/r;->q0:Ljava/lang/Boolean;

    .line 1315
    .line 1316
    goto :goto_d

    .line 1317
    :cond_20
    :goto_c
    invoke-virtual {v3, v2}, Lka/r;->Y(I)V

    .line 1318
    .line 1319
    .line 1320
    goto :goto_d

    .line 1321
    :cond_21
    invoke-virtual {v3}, Lka/r;->Z()V

    .line 1322
    .line 1323
    .line 1324
    :goto_d
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1325
    .line 1326
    .line 1327
    return-void

    .line 1328
    :pswitch_f
    iget v1, v1, Landroid/os/Message;->what:I

    .line 1329
    .line 1330
    iget-object v3, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 1331
    .line 1332
    check-cast v3, Landroidx/mediarouter/app/q0;

    .line 1333
    .line 1334
    if-eq v1, v6, :cond_23

    .line 1335
    .line 1336
    if-eq v1, v5, :cond_22

    .line 1337
    .line 1338
    goto :goto_e

    .line 1339
    :cond_22
    iget-object v1, v3, Landroidx/mediarouter/app/q0;->v:Lq1/s0;

    .line 1340
    .line 1341
    if-eqz v1, :cond_24

    .line 1342
    .line 1343
    iput-object v2, v3, Landroidx/mediarouter/app/q0;->v:Lq1/s0;

    .line 1344
    .line 1345
    invoke-virtual {v3}, Landroidx/mediarouter/app/q0;->q()V

    .line 1346
    .line 1347
    .line 1348
    goto :goto_e

    .line 1349
    :cond_23
    invoke-virtual {v3}, Landroidx/mediarouter/app/q0;->p()V

    .line 1350
    .line 1351
    .line 1352
    :cond_24
    :goto_e
    return-void

    .line 1353
    :pswitch_10
    iget v2, v1, Landroid/os/Message;->what:I

    .line 1354
    .line 1355
    if-eq v2, v6, :cond_25

    .line 1356
    .line 1357
    goto :goto_f

    .line 1358
    :cond_25
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1359
    .line 1360
    check-cast v1, Ljava/util/List;

    .line 1361
    .line 1362
    iget-object v2, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 1363
    .line 1364
    check-cast v2, Landroidx/mediarouter/app/c0;

    .line 1365
    .line 1366
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1367
    .line 1368
    .line 1369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1370
    .line 1371
    .line 1372
    move-result-wide v3

    .line 1373
    iput-wide v3, v2, Landroidx/mediarouter/app/c0;->o:J

    .line 1374
    .line 1375
    iget-object v3, v2, Landroidx/mediarouter/app/c0;->i:Ljava/util/ArrayList;

    .line 1376
    .line 1377
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1378
    .line 1379
    .line 1380
    iget-object v3, v2, Landroidx/mediarouter/app/c0;->i:Ljava/util/ArrayList;

    .line 1381
    .line 1382
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1383
    .line 1384
    .line 1385
    iget-object v1, v2, Landroidx/mediarouter/app/c0;->j:Landroidx/mediarouter/app/b0;

    .line 1386
    .line 1387
    invoke-virtual {v1}, Landroidx/mediarouter/app/b0;->a()V

    .line 1388
    .line 1389
    .line 1390
    :goto_f
    return-void

    .line 1391
    :pswitch_11
    iget v2, v1, Landroid/os/Message;->what:I

    .line 1392
    .line 1393
    iget-object v4, v0, Landroidx/mediarouter/app/c;->b:Ljava/lang/Object;

    .line 1394
    .line 1395
    check-cast v4, Landroidx/mediarouter/app/f;

    .line 1396
    .line 1397
    if-eq v2, v6, :cond_28

    .line 1398
    .line 1399
    if-eq v2, v5, :cond_27

    .line 1400
    .line 1401
    if-eq v2, v3, :cond_26

    .line 1402
    .line 1403
    goto :goto_10

    .line 1404
    :cond_26
    iget-object v1, v4, Landroidx/mediarouter/app/f;->h:Ljava/util/ArrayList;

    .line 1405
    .line 1406
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1407
    .line 1408
    .line 1409
    move-result v1

    .line 1410
    if-eqz v1, :cond_29

    .line 1411
    .line 1412
    invoke-virtual {v4, v3}, Landroidx/mediarouter/app/f;->l(I)V

    .line 1413
    .line 1414
    .line 1415
    iget-object v1, v4, Landroidx/mediarouter/app/f;->v:Landroidx/mediarouter/app/c;

    .line 1416
    .line 1417
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1424
    .line 1425
    .line 1426
    iget-object v1, v4, Landroidx/mediarouter/app/f;->e:Lq1/u0;

    .line 1427
    .line 1428
    iget-object v2, v4, Landroidx/mediarouter/app/f;->f:Landroidx/mediarouter/app/i0;

    .line 1429
    .line 1430
    invoke-virtual {v1, v2}, Lq1/u0;->h(Lq1/m0;)V

    .line 1431
    .line 1432
    .line 1433
    goto :goto_10

    .line 1434
    :cond_27
    iget-object v1, v4, Landroidx/mediarouter/app/f;->h:Ljava/util/ArrayList;

    .line 1435
    .line 1436
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1437
    .line 1438
    .line 1439
    move-result v1

    .line 1440
    if-eqz v1, :cond_29

    .line 1441
    .line 1442
    invoke-virtual {v4, v5}, Landroidx/mediarouter/app/f;->l(I)V

    .line 1443
    .line 1444
    .line 1445
    iget-object v1, v4, Landroidx/mediarouter/app/f;->v:Landroidx/mediarouter/app/c;

    .line 1446
    .line 1447
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v2

    .line 1457
    const-wide/16 v3, 0x3a98

    .line 1458
    .line 1459
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1460
    .line 1461
    .line 1462
    goto :goto_10

    .line 1463
    :cond_28
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1464
    .line 1465
    check-cast v1, Ljava/util/List;

    .line 1466
    .line 1467
    invoke-virtual {v4, v1}, Landroidx/mediarouter/app/f;->i(Ljava/util/List;)V

    .line 1468
    .line 1469
    .line 1470
    :cond_29
    :goto_10
    return-void

    .line 1471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Landroid/support/v4/media/MediaBrowserCompat;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "data_calling_uid"

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "data_calling_pid"

    .line 38
    .line 39
    if-lez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
