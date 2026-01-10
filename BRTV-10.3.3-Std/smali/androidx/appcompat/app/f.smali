.class public final Landroidx/appcompat/app/f;
.super Landroid/os/Handler;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/f;->a:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/app/f;->a:I

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lq1/h1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/app/f;->a:I

    .line 4
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v3, "routeId"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    iget v7, v0, Landroidx/appcompat/app/f;->a:I

    .line 11
    .line 12
    packed-switch v7, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Landroidx/appcompat/app/f;->b:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lq1/h1;

    .line 22
    .line 23
    if-eqz v2, :cond_15

    .line 24
    .line 25
    iget v7, v1, Landroid/os/Message;->what:I

    .line 26
    .line 27
    iget v8, v1, Landroid/os/Message;->arg1:I

    .line 28
    .line 29
    iget v9, v1, Landroid/os/Message;->arg2:I

    .line 30
    .line 31
    iget-object v10, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v11, v2, Lq1/h1;->h:Landroid/util/SparseArray;

    .line 38
    .line 39
    iget-object v12, v2, Lq1/h1;->i:Lq1/m1;

    .line 40
    .line 41
    packed-switch v7, :pswitch_data_1

    .line 42
    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :pswitch_0
    iget-object v1, v12, Lq1/m1;->n:Lq1/h1;

    .line 47
    .line 48
    if-ne v1, v2, :cond_13

    .line 49
    .line 50
    iget-object v1, v12, Lq1/m1;->k:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lq1/i1;

    .line 67
    .line 68
    invoke-interface {v3}, Lq1/i1;->a()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-ne v4, v9, :cond_0

    .line 73
    .line 74
    move-object v5, v3

    .line 75
    :cond_1
    iget-object v2, v12, Lq1/m1;->p:Landroidx/media3/common/x;

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    instance-of v3, v5, Lq1/c0;

    .line 80
    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    move-object v3, v5

    .line 84
    check-cast v3, Lq1/c0;

    .line 85
    .line 86
    iget-object v2, v2, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Lq1/n1;

    .line 89
    .line 90
    iget-object v2, v2, Lq1/n1;->b:Lq1/h;

    .line 91
    .line 92
    iget-object v4, v2, Lq1/h;->e:Lq1/c0;

    .line 93
    .line 94
    if-ne v4, v3, :cond_2

    .line 95
    .line 96
    invoke-virtual {v2}, Lq1/h;->c()Lq1/s0;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const/4 v4, 0x2

    .line 101
    invoke-virtual {v2, v3, v4, v6}, Lq1/h;->j(Lq1/s0;IZ)V

    .line 102
    .line 103
    .line 104
    :cond_2
    if-eqz v5, :cond_13

    .line 105
    .line 106
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-interface {v5}, Lq1/i1;->c()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12}, Lq1/m1;->l()V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_6

    .line 116
    .line 117
    :pswitch_1
    if-eqz v10, :cond_3

    .line 118
    .line 119
    instance-of v1, v10, Landroid/os/Bundle;

    .line 120
    .line 121
    if-eqz v1, :cond_13

    .line 122
    .line 123
    :cond_3
    check-cast v10, Landroid/os/Bundle;

    .line 124
    .line 125
    iget v1, v2, Lq1/h1;->f:I

    .line 126
    .line 127
    if-eqz v1, :cond_13

    .line 128
    .line 129
    const-string v1, "groupRoute"

    .line 130
    .line 131
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Landroid/os/Bundle;

    .line 136
    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    new-instance v3, Lq1/w;

    .line 140
    .line 141
    invoke-direct {v3, v1}, Lq1/w;-><init>(Landroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    move-object v3, v5

    .line 146
    :goto_0
    const-string v1, "dynamicRoutes"

    .line 147
    .line 148
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    new-instance v7, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-eqz v8, :cond_7

    .line 166
    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    check-cast v8, Landroid/os/Bundle;

    .line 172
    .line 173
    if-nez v8, :cond_5

    .line 174
    .line 175
    move-object v8, v5

    .line 176
    goto :goto_3

    .line 177
    :cond_5
    const-string v10, "mrDescriptor"

    .line 178
    .line 179
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    if-eqz v10, :cond_6

    .line 184
    .line 185
    new-instance v11, Lq1/w;

    .line 186
    .line 187
    invoke-direct {v11, v10}, Lq1/w;-><init>(Landroid/os/Bundle;)V

    .line 188
    .line 189
    .line 190
    move-object v14, v11

    .line 191
    goto :goto_2

    .line 192
    :cond_6
    move-object v14, v5

    .line 193
    :goto_2
    const-string v10, "selectionState"

    .line 194
    .line 195
    invoke-virtual {v8, v10, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 196
    .line 197
    .line 198
    move-result v15

    .line 199
    const-string v10, "isUnselectable"

    .line 200
    .line 201
    invoke-virtual {v8, v10, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 202
    .line 203
    .line 204
    move-result v16

    .line 205
    const-string v10, "isGroupable"

    .line 206
    .line 207
    invoke-virtual {v8, v10, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 208
    .line 209
    .line 210
    move-result v17

    .line 211
    const-string v10, "isTransferable"

    .line 212
    .line 213
    invoke-virtual {v8, v10, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 214
    .line 215
    .line 216
    move-result v18

    .line 217
    new-instance v8, Lq1/z;

    .line 218
    .line 219
    move-object v13, v8

    .line 220
    invoke-direct/range {v13 .. v18}, Lq1/z;-><init>(Lq1/w;IZZZ)V

    .line 221
    .line 222
    .line 223
    :goto_3
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_7
    iget-object v1, v12, Lq1/m1;->n:Lq1/h1;

    .line 228
    .line 229
    if-ne v1, v2, :cond_15

    .line 230
    .line 231
    iget-object v1, v12, Lq1/m1;->k:Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_9

    .line 242
    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Lq1/i1;

    .line 248
    .line 249
    invoke-interface {v2}, Lq1/i1;->a()I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-ne v4, v9, :cond_8

    .line 254
    .line 255
    move-object v5, v2

    .line 256
    :cond_9
    instance-of v1, v5, Lq1/k1;

    .line 257
    .line 258
    if-eqz v1, :cond_15

    .line 259
    .line 260
    check-cast v5, Lq1/k1;

    .line 261
    .line 262
    invoke-virtual {v5, v3, v7}, Lq1/b0;->m(Lq1/w;Ljava/util/ArrayList;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_7

    .line 266
    .line 267
    :pswitch_2
    instance-of v1, v10, Landroid/os/Bundle;

    .line 268
    .line 269
    if-eqz v1, :cond_b

    .line 270
    .line 271
    check-cast v10, Landroid/os/Bundle;

    .line 272
    .line 273
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    check-cast v1, Lq1/o0;

    .line 278
    .line 279
    if-eqz v10, :cond_a

    .line 280
    .line 281
    invoke-virtual {v10, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_a

    .line 286
    .line 287
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v10}, Lq1/o0;->b(Landroid/os/Bundle;)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_6

    .line 294
    .line 295
    :cond_a
    const-string v2, "DynamicGroupRouteController is created without valid route id."

    .line 296
    .line 297
    invoke-virtual {v1, v2, v10}, Lq1/o0;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_6

    .line 301
    .line 302
    :cond_b
    const-string v1, "MediaRouteProviderProxy"

    .line 303
    .line 304
    const-string v2, "No further information on the dynamic group controller"

    .line 305
    .line 306
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    goto/16 :goto_6

    .line 310
    .line 311
    :pswitch_3
    if-eqz v10, :cond_c

    .line 312
    .line 313
    instance-of v1, v10, Landroid/os/Bundle;

    .line 314
    .line 315
    if-eqz v1, :cond_13

    .line 316
    .line 317
    :cond_c
    check-cast v10, Landroid/os/Bundle;

    .line 318
    .line 319
    iget v1, v2, Lq1/h1;->f:I

    .line 320
    .line 321
    if-eqz v1, :cond_13

    .line 322
    .line 323
    invoke-static {v10}, Landroidx/appcompat/app/r0;->c(Landroid/os/Bundle;)Landroidx/appcompat/app/r0;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    iget-object v3, v12, Lq1/m1;->n:Lq1/h1;

    .line 328
    .line 329
    if-ne v3, v2, :cond_15

    .line 330
    .line 331
    invoke-virtual {v12, v1}, Lq1/e0;->f(Landroidx/appcompat/app/r0;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_7

    .line 335
    .line 336
    :pswitch_4
    if-eqz v10, :cond_d

    .line 337
    .line 338
    instance-of v2, v10, Landroid/os/Bundle;

    .line 339
    .line 340
    if-eqz v2, :cond_13

    .line 341
    .line 342
    :cond_d
    if-nez v1, :cond_e

    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_e
    const-string v2, "error"

    .line 346
    .line 347
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    :goto_4
    check-cast v10, Landroid/os/Bundle;

    .line 352
    .line 353
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    check-cast v1, Lq1/o0;

    .line 358
    .line 359
    if-eqz v1, :cond_13

    .line 360
    .line 361
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v5, v10}, Lq1/o0;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_7

    .line 368
    .line 369
    :pswitch_5
    if-eqz v10, :cond_f

    .line 370
    .line 371
    instance-of v1, v10, Landroid/os/Bundle;

    .line 372
    .line 373
    if-eqz v1, :cond_13

    .line 374
    .line 375
    :cond_f
    check-cast v10, Landroid/os/Bundle;

    .line 376
    .line 377
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    check-cast v1, Lq1/o0;

    .line 382
    .line 383
    if-eqz v1, :cond_13

    .line 384
    .line 385
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v10}, Lq1/o0;->b(Landroid/os/Bundle;)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_7

    .line 392
    .line 393
    :pswitch_6
    if-eqz v10, :cond_10

    .line 394
    .line 395
    instance-of v1, v10, Landroid/os/Bundle;

    .line 396
    .line 397
    if-eqz v1, :cond_13

    .line 398
    .line 399
    :cond_10
    check-cast v10, Landroid/os/Bundle;

    .line 400
    .line 401
    iget v1, v2, Lq1/h1;->f:I

    .line 402
    .line 403
    if-nez v1, :cond_13

    .line 404
    .line 405
    iget v1, v2, Lq1/h1;->g:I

    .line 406
    .line 407
    if-ne v8, v1, :cond_13

    .line 408
    .line 409
    if-lt v9, v6, :cond_13

    .line 410
    .line 411
    iput v4, v2, Lq1/h1;->g:I

    .line 412
    .line 413
    iput v9, v2, Lq1/h1;->f:I

    .line 414
    .line 415
    invoke-static {v10}, Landroidx/appcompat/app/r0;->c(Landroid/os/Bundle;)Landroidx/appcompat/app/r0;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    iget-object v3, v12, Lq1/m1;->n:Lq1/h1;

    .line 420
    .line 421
    if-ne v3, v2, :cond_11

    .line 422
    .line 423
    invoke-virtual {v12, v1}, Lq1/e0;->f(Landroidx/appcompat/app/r0;)V

    .line 424
    .line 425
    .line 426
    :cond_11
    iget-object v1, v12, Lq1/m1;->n:Lq1/h1;

    .line 427
    .line 428
    if-ne v1, v2, :cond_15

    .line 429
    .line 430
    iput-boolean v6, v12, Lq1/m1;->o:Z

    .line 431
    .line 432
    iget-object v1, v12, Lq1/m1;->k:Ljava/util/ArrayList;

    .line 433
    .line 434
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    :goto_5
    if-ge v4, v2, :cond_12

    .line 439
    .line 440
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    check-cast v3, Lq1/i1;

    .line 445
    .line 446
    iget-object v5, v12, Lq1/m1;->n:Lq1/h1;

    .line 447
    .line 448
    invoke-interface {v3, v5}, Lq1/i1;->b(Lq1/h1;)V

    .line 449
    .line 450
    .line 451
    add-int/2addr v4, v6

    .line 452
    goto :goto_5

    .line 453
    :cond_12
    iget-object v1, v12, Lq1/e0;->e:Lq1/x;

    .line 454
    .line 455
    if-eqz v1, :cond_15

    .line 456
    .line 457
    iget-object v13, v12, Lq1/m1;->n:Lq1/h1;

    .line 458
    .line 459
    iget v15, v13, Lq1/h1;->d:I

    .line 460
    .line 461
    add-int/2addr v6, v15

    .line 462
    iput v6, v13, Lq1/h1;->d:I

    .line 463
    .line 464
    const/16 v16, 0x0

    .line 465
    .line 466
    const/16 v18, 0x0

    .line 467
    .line 468
    const/16 v14, 0xa

    .line 469
    .line 470
    iget-object v1, v1, Lq1/x;->a:Landroid/os/Bundle;

    .line 471
    .line 472
    move-object/from16 v17, v1

    .line 473
    .line 474
    invoke-virtual/range {v13 .. v18}, Lq1/h1;->b(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 475
    .line 476
    .line 477
    goto :goto_7

    .line 478
    :cond_13
    :goto_6
    sget v1, Lq1/m1;->q:I

    .line 479
    .line 480
    goto :goto_7

    .line 481
    :pswitch_7
    iget v1, v2, Lq1/h1;->g:I

    .line 482
    .line 483
    if-ne v8, v1, :cond_14

    .line 484
    .line 485
    iput v4, v2, Lq1/h1;->g:I

    .line 486
    .line 487
    iget-object v1, v12, Lq1/m1;->n:Lq1/h1;

    .line 488
    .line 489
    if-ne v1, v2, :cond_14

    .line 490
    .line 491
    invoke-virtual {v12}, Lq1/m1;->k()V

    .line 492
    .line 493
    .line 494
    :cond_14
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    check-cast v1, Lq1/o0;

    .line 499
    .line 500
    if-eqz v1, :cond_15

    .line 501
    .line 502
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, v5, v5}, Lq1/o0;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 506
    .line 507
    .line 508
    :cond_15
    :goto_7
    :pswitch_8
    return-void

    .line 509
    :pswitch_9
    iget-object v7, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 510
    .line 511
    if-eqz v7, :cond_24

    .line 512
    .line 513
    :try_start_0
    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 514
    .line 515
    .line 516
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 517
    if-eqz v8, :cond_24

    .line 518
    .line 519
    iget v8, v1, Landroid/os/Message;->what:I

    .line 520
    .line 521
    iget v9, v1, Landroid/os/Message;->arg1:I

    .line 522
    .line 523
    iget v15, v1, Landroid/os/Message;->arg2:I

    .line 524
    .line 525
    iget-object v10, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 526
    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 528
    .line 529
    .line 530
    move-result-object v11

    .line 531
    iget-object v12, v0, Landroidx/appcompat/app/f;->b:Ljava/lang/ref/WeakReference;

    .line 532
    .line 533
    if-ne v8, v6, :cond_16

    .line 534
    .line 535
    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v13

    .line 539
    check-cast v13, Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 540
    .line 541
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 542
    .line 543
    .line 544
    move-result-object v13

    .line 545
    iget v1, v1, Landroid/os/Message;->sendingUid:I

    .line 546
    .line 547
    invoke-virtual {v13, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    if-eqz v1, :cond_16

    .line 552
    .line 553
    array-length v13, v1

    .line 554
    if-lez v13, :cond_16

    .line 555
    .line 556
    aget-object v1, v1, v4

    .line 557
    .line 558
    goto :goto_8

    .line 559
    :cond_16
    move-object v1, v5

    .line 560
    :goto_8
    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v12

    .line 564
    check-cast v12, Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 565
    .line 566
    if-eqz v12, :cond_23

    .line 567
    .line 568
    iget-object v13, v12, Landroidx/mediarouter/media/MediaRouteProviderService;->e:Lq1/k0;

    .line 569
    .line 570
    const-string v12, ""

    .line 571
    .line 572
    const-string v14, "controlHints"

    .line 573
    .line 574
    const-string v6, "clientPackageName"

    .line 575
    .line 576
    const-string v2, "volume"

    .line 577
    .line 578
    const-string v4, "routeControllerOptions"

    .line 579
    .line 580
    const-string v5, "memberRouteId"

    .line 581
    .line 582
    packed-switch v8, :pswitch_data_2

    .line 583
    .line 584
    .line 585
    goto/16 :goto_11

    .line 586
    .line 587
    :pswitch_a
    const-string v1, "memberRouteIds"

    .line 588
    .line 589
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    if-eqz v1, :cond_23

    .line 594
    .line 595
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    if-eqz v2, :cond_23

    .line 600
    .line 601
    invoke-virtual {v2, v15}, Lq1/j0;->e(I)Lq1/c0;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    instance-of v3, v2, Lq1/b0;

    .line 606
    .line 607
    if-eqz v3, :cond_23

    .line 608
    .line 609
    check-cast v2, Lq1/b0;

    .line 610
    .line 611
    invoke-virtual {v2, v1}, Lq1/b0;->p(Ljava/util/List;)V

    .line 612
    .line 613
    .line 614
    invoke-static {v7, v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->d(Landroid/os/Messenger;I)V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_12

    .line 618
    .line 619
    :pswitch_b
    invoke-virtual {v11, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    if-eqz v1, :cond_23

    .line 624
    .line 625
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    if-eqz v2, :cond_23

    .line 630
    .line 631
    invoke-virtual {v2, v15}, Lq1/j0;->e(I)Lq1/c0;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    instance-of v3, v2, Lq1/b0;

    .line 636
    .line 637
    if-eqz v3, :cond_23

    .line 638
    .line 639
    check-cast v2, Lq1/b0;

    .line 640
    .line 641
    invoke-virtual {v2, v1}, Lq1/b0;->o(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    invoke-static {v7, v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->d(Landroid/os/Messenger;I)V

    .line 645
    .line 646
    .line 647
    goto/16 :goto_12

    .line 648
    .line 649
    :pswitch_c
    invoke-virtual {v11, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    if-eqz v1, :cond_23

    .line 654
    .line 655
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    if-eqz v2, :cond_23

    .line 660
    .line 661
    invoke-virtual {v2, v15}, Lq1/j0;->e(I)Lq1/c0;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    instance-of v3, v2, Lq1/b0;

    .line 666
    .line 667
    if-eqz v3, :cond_23

    .line 668
    .line 669
    check-cast v2, Lq1/b0;

    .line 670
    .line 671
    invoke-virtual {v2, v1}, Lq1/b0;->n(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-static {v7, v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->d(Landroid/os/Messenger;I)V

    .line 675
    .line 676
    .line 677
    goto/16 :goto_12

    .line 678
    .line 679
    :pswitch_d
    invoke-virtual {v11, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    check-cast v2, Landroid/os/Bundle;

    .line 688
    .line 689
    if-eqz v2, :cond_17

    .line 690
    .line 691
    new-instance v3, Lq1/d0;

    .line 692
    .line 693
    invoke-direct {v3, v2}, Lq1/d0;-><init>(Landroid/os/Bundle;)V

    .line 694
    .line 695
    .line 696
    goto :goto_9

    .line 697
    :cond_17
    sget-object v3, Lq1/d0;->b:Lq1/d0;

    .line 698
    .line 699
    :goto_9
    if-eqz v1, :cond_23

    .line 700
    .line 701
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    if-eqz v2, :cond_23

    .line 706
    .line 707
    new-instance v4, Landroid/os/Bundle;

    .line 708
    .line 709
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 710
    .line 711
    .line 712
    iget-object v5, v3, Lq1/d0;->a:Landroid/os/Bundle;

    .line 713
    .line 714
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 715
    .line 716
    .line 717
    move-result-object v5

    .line 718
    check-cast v5, Landroid/os/Bundle;

    .line 719
    .line 720
    if-eqz v5, :cond_18

    .line 721
    .line 722
    goto :goto_a

    .line 723
    :cond_18
    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 724
    .line 725
    :goto_a
    invoke-virtual {v4, v14, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 726
    .line 727
    .line 728
    iget-object v3, v3, Lq1/d0;->a:Landroid/os/Bundle;

    .line 729
    .line 730
    invoke-virtual {v3, v6, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v3

    .line 734
    invoke-virtual {v4, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    iget-object v3, v2, Lq1/j0;->c:Ljava/lang/String;

    .line 738
    .line 739
    invoke-virtual {v4, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    new-instance v3, Lq1/d0;

    .line 743
    .line 744
    invoke-direct {v3, v4}, Lq1/d0;-><init>(Landroid/os/Bundle;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2, v1, v3, v15}, Lq1/j0;->b(Ljava/lang/String;Lq1/d0;I)Landroid/os/Bundle;

    .line 748
    .line 749
    .line 750
    move-result-object v16

    .line 751
    if-eqz v16, :cond_23

    .line 752
    .line 753
    const/4 v15, 0x3

    .line 754
    const/16 v17, 0x0

    .line 755
    .line 756
    const/4 v13, 0x6

    .line 757
    move-object v12, v7

    .line 758
    move v14, v9

    .line 759
    invoke-static/range {v12 .. v17}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 760
    .line 761
    .line 762
    goto/16 :goto_12

    .line 763
    .line 764
    :pswitch_e
    if-eqz v10, :cond_19

    .line 765
    .line 766
    instance-of v1, v10, Landroid/os/Bundle;

    .line 767
    .line 768
    if-eqz v1, :cond_23

    .line 769
    .line 770
    :cond_19
    check-cast v10, Landroid/os/Bundle;

    .line 771
    .line 772
    if-eqz v10, :cond_1a

    .line 773
    .line 774
    new-instance v1, Lq1/x;

    .line 775
    .line 776
    invoke-direct {v1, v10}, Lq1/x;-><init>(Landroid/os/Bundle;)V

    .line 777
    .line 778
    .line 779
    goto :goto_b

    .line 780
    :cond_1a
    const/4 v1, 0x0

    .line 781
    :goto_b
    if-eqz v1, :cond_1b

    .line 782
    .line 783
    invoke-virtual {v1}, Lq1/x;->a()V

    .line 784
    .line 785
    .line 786
    iget-object v2, v1, Lq1/x;->b:Lq1/l0;

    .line 787
    .line 788
    invoke-virtual {v2}, Lq1/l0;->a()V

    .line 789
    .line 790
    .line 791
    iget-object v2, v2, Lq1/l0;->b:Ljava/util/List;

    .line 792
    .line 793
    const/4 v3, 0x0

    .line 794
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    if-nez v2, :cond_1c

    .line 799
    .line 800
    move-object v5, v1

    .line 801
    goto :goto_c

    .line 802
    :cond_1b
    const/4 v3, 0x0

    .line 803
    :cond_1c
    move-object v5, v3

    .line 804
    :goto_c
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    if-eqz v1, :cond_23

    .line 809
    .line 810
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 811
    .line 812
    .line 813
    move-result-wide v2

    .line 814
    iget-object v4, v1, Lq1/j0;->d:Lq1/x;

    .line 815
    .line 816
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    if-nez v4, :cond_1d

    .line 821
    .line 822
    iput-object v5, v1, Lq1/j0;->d:Lq1/x;

    .line 823
    .line 824
    iput-wide v2, v1, Lq1/j0;->e:J

    .line 825
    .line 826
    iget-object v1, v1, Lq1/j0;->h:Lq1/k0;

    .line 827
    .line 828
    invoke-virtual {v1}, Lq1/k0;->h()Z

    .line 829
    .line 830
    .line 831
    :cond_1d
    invoke-static {v7, v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->d(Landroid/os/Messenger;I)V

    .line 832
    .line 833
    .line 834
    goto/16 :goto_12

    .line 835
    .line 836
    :pswitch_f
    const/4 v3, 0x0

    .line 837
    instance-of v1, v10, Landroid/content/Intent;

    .line 838
    .line 839
    if-eqz v1, :cond_23

    .line 840
    .line 841
    check-cast v10, Landroid/content/Intent;

    .line 842
    .line 843
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 844
    .line 845
    .line 846
    move-result-object v14

    .line 847
    if-eqz v14, :cond_23

    .line 848
    .line 849
    invoke-virtual {v14, v15}, Lq1/j0;->e(I)Lq1/c0;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    if-eqz v1, :cond_23

    .line 854
    .line 855
    if-eqz v9, :cond_1e

    .line 856
    .line 857
    new-instance v5, Lq1/i0;

    .line 858
    .line 859
    move-object v12, v5

    .line 860
    move-object/from16 v16, v10

    .line 861
    .line 862
    move-object/from16 v17, v7

    .line 863
    .line 864
    move/from16 v18, v9

    .line 865
    .line 866
    invoke-direct/range {v12 .. v18}, Lq1/i0;-><init>(Lq1/k0;Lq1/j0;ILandroid/content/Intent;Landroid/os/Messenger;I)V

    .line 867
    .line 868
    .line 869
    goto :goto_d

    .line 870
    :cond_1e
    move-object v5, v3

    .line 871
    :goto_d
    invoke-virtual {v1, v10, v5}, Lq1/c0;->d(Landroid/content/Intent;Lq1/o0;)Z

    .line 872
    .line 873
    .line 874
    move-result v1

    .line 875
    if-eqz v1, :cond_23

    .line 876
    .line 877
    sget v1, Landroidx/mediarouter/media/MediaRouteProviderService;->f:I

    .line 878
    .line 879
    goto/16 :goto_12

    .line 880
    .line 881
    :pswitch_10
    const/4 v1, 0x0

    .line 882
    invoke-virtual {v11, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 883
    .line 884
    .line 885
    move-result v1

    .line 886
    if-eqz v1, :cond_23

    .line 887
    .line 888
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    if-eqz v2, :cond_23

    .line 893
    .line 894
    invoke-virtual {v2, v15}, Lq1/j0;->e(I)Lq1/c0;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    if-eqz v2, :cond_23

    .line 899
    .line 900
    invoke-virtual {v2, v1}, Lq1/c0;->j(I)V

    .line 901
    .line 902
    .line 903
    invoke-static {v7, v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->d(Landroid/os/Messenger;I)V

    .line 904
    .line 905
    .line 906
    goto/16 :goto_12

    .line 907
    .line 908
    :pswitch_11
    const/4 v1, -0x1

    .line 909
    invoke-virtual {v11, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 910
    .line 911
    .line 912
    move-result v1

    .line 913
    if-ltz v1, :cond_23

    .line 914
    .line 915
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 916
    .line 917
    .line 918
    move-result-object v2

    .line 919
    if-eqz v2, :cond_23

    .line 920
    .line 921
    invoke-virtual {v2, v15}, Lq1/j0;->e(I)Lq1/c0;

    .line 922
    .line 923
    .line 924
    move-result-object v2

    .line 925
    if-eqz v2, :cond_23

    .line 926
    .line 927
    invoke-virtual {v2, v1}, Lq1/c0;->g(I)V

    .line 928
    .line 929
    .line 930
    invoke-static {v7, v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->d(Landroid/os/Messenger;I)V

    .line 931
    .line 932
    .line 933
    goto/16 :goto_12

    .line 934
    .line 935
    :pswitch_12
    if-nez v11, :cond_1f

    .line 936
    .line 937
    const/4 v4, 0x0

    .line 938
    goto :goto_e

    .line 939
    :cond_1f
    const-string v1, "unselectReason"

    .line 940
    .line 941
    const/4 v2, 0x0

    .line 942
    invoke-virtual {v11, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 943
    .line 944
    .line 945
    move-result v4

    .line 946
    :goto_e
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    if-eqz v1, :cond_23

    .line 951
    .line 952
    invoke-virtual {v1, v15}, Lq1/j0;->e(I)Lq1/c0;

    .line 953
    .line 954
    .line 955
    move-result-object v1

    .line 956
    if-eqz v1, :cond_23

    .line 957
    .line 958
    invoke-virtual {v1, v4}, Lq1/c0;->i(I)V

    .line 959
    .line 960
    .line 961
    invoke-static {v7, v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->d(Landroid/os/Messenger;I)V

    .line 962
    .line 963
    .line 964
    goto/16 :goto_12

    .line 965
    .line 966
    :pswitch_13
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 967
    .line 968
    .line 969
    move-result-object v1

    .line 970
    if-eqz v1, :cond_23

    .line 971
    .line 972
    invoke-virtual {v1, v15}, Lq1/j0;->e(I)Lq1/c0;

    .line 973
    .line 974
    .line 975
    move-result-object v1

    .line 976
    if-eqz v1, :cond_23

    .line 977
    .line 978
    invoke-virtual {v1}, Lq1/c0;->f()V

    .line 979
    .line 980
    .line 981
    invoke-static {v7, v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->d(Landroid/os/Messenger;I)V

    .line 982
    .line 983
    .line 984
    goto/16 :goto_12

    .line 985
    .line 986
    :pswitch_14
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    if-eqz v1, :cond_23

    .line 991
    .line 992
    invoke-virtual {v1, v15}, Lq1/j0;->f(I)Z

    .line 993
    .line 994
    .line 995
    move-result v1

    .line 996
    if-eqz v1, :cond_23

    .line 997
    .line 998
    invoke-static {v7, v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->d(Landroid/os/Messenger;I)V

    .line 999
    .line 1000
    .line 1001
    goto/16 :goto_12

    .line 1002
    .line 1003
    :pswitch_15
    invoke-virtual {v11, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v1

    .line 1007
    const-string v2, "routeGroupId"

    .line 1008
    .line 1009
    invoke-virtual {v11, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v2

    .line 1013
    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v3

    .line 1017
    check-cast v3, Landroid/os/Bundle;

    .line 1018
    .line 1019
    if-eqz v3, :cond_20

    .line 1020
    .line 1021
    new-instance v4, Lq1/d0;

    .line 1022
    .line 1023
    invoke-direct {v4, v3}, Lq1/d0;-><init>(Landroid/os/Bundle;)V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_f

    .line 1027
    :cond_20
    sget-object v4, Lq1/d0;->b:Lq1/d0;

    .line 1028
    .line 1029
    :goto_f
    if-eqz v1, :cond_23

    .line 1030
    .line 1031
    invoke-virtual {v13, v7}, Lq1/k0;->d(Landroid/os/Messenger;)Lq1/j0;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v3

    .line 1035
    if-eqz v3, :cond_23

    .line 1036
    .line 1037
    new-instance v5, Landroid/os/Bundle;

    .line 1038
    .line 1039
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1040
    .line 1041
    .line 1042
    iget-object v8, v4, Lq1/d0;->a:Landroid/os/Bundle;

    .line 1043
    .line 1044
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v8

    .line 1048
    check-cast v8, Landroid/os/Bundle;

    .line 1049
    .line 1050
    if-eqz v8, :cond_21

    .line 1051
    .line 1052
    goto :goto_10

    .line 1053
    :cond_21
    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 1054
    .line 1055
    :goto_10
    invoke-virtual {v5, v14, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1056
    .line 1057
    .line 1058
    iget-object v4, v4, Lq1/d0;->a:Landroid/os/Bundle;

    .line 1059
    .line 1060
    invoke-virtual {v4, v6, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v4

    .line 1064
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    iget-object v4, v3, Lq1/j0;->c:Ljava/lang/String;

    .line 1068
    .line 1069
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    new-instance v4, Lq1/d0;

    .line 1073
    .line 1074
    invoke-direct {v4, v5}, Lq1/d0;-><init>(Landroid/os/Bundle;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v3, v1, v2, v4, v15}, Lq1/j0;->c(Ljava/lang/String;Ljava/lang/String;Lq1/d0;I)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v1

    .line 1081
    if-eqz v1, :cond_23

    .line 1082
    .line 1083
    invoke-static {v7, v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->d(Landroid/os/Messenger;I)V

    .line 1084
    .line 1085
    .line 1086
    goto/16 :goto_12

    .line 1087
    .line 1088
    :pswitch_16
    invoke-virtual {v13, v7}, Lq1/k0;->c(Landroid/os/Messenger;)I

    .line 1089
    .line 1090
    .line 1091
    move-result v1

    .line 1092
    if-ltz v1, :cond_23

    .line 1093
    .line 1094
    iget-object v2, v13, Lq1/k0;->b:Ljava/util/ArrayList;

    .line 1095
    .line 1096
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v1

    .line 1100
    check-cast v1, Lq1/j0;

    .line 1101
    .line 1102
    invoke-virtual {v13}, Lq1/k0;->e()V

    .line 1103
    .line 1104
    .line 1105
    sget v2, Landroidx/mediarouter/media/MediaRouteProviderService;->f:I

    .line 1106
    .line 1107
    invoke-virtual {v1}, Lq1/j0;->d()V

    .line 1108
    .line 1109
    .line 1110
    invoke-static {v7, v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->d(Landroid/os/Messenger;I)V

    .line 1111
    .line 1112
    .line 1113
    goto :goto_12

    .line 1114
    :pswitch_17
    const/4 v2, 0x1

    .line 1115
    if-lt v15, v2, :cond_22

    .line 1116
    .line 1117
    invoke-virtual {v13, v7}, Lq1/k0;->c(Landroid/os/Messenger;)I

    .line 1118
    .line 1119
    .line 1120
    move-result v2

    .line 1121
    if-gez v2, :cond_23

    .line 1122
    .line 1123
    invoke-virtual {v13, v7, v15, v1}, Lq1/k0;->b(Landroid/os/Messenger;ILjava/lang/String;)Lq1/j0;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    :try_start_1
    iget-object v2, v1, Lq1/j0;->a:Landroid/os/Messenger;

    .line 1128
    .line 1129
    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v2

    .line 1133
    const/4 v3, 0x0

    .line 1134
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1135
    .line 1136
    .line 1137
    iget-object v2, v13, Lq1/k0;->b:Ljava/util/ArrayList;

    .line 1138
    .line 1139
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v13}, Lq1/k0;->e()V

    .line 1143
    .line 1144
    .line 1145
    sget v2, Landroidx/mediarouter/media/MediaRouteProviderService;->f:I

    .line 1146
    .line 1147
    if-eqz v9, :cond_25

    .line 1148
    .line 1149
    iget-object v2, v13, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 1150
    .line 1151
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 1152
    .line 1153
    iget-object v2, v2, Lq1/e0;->g:Landroidx/appcompat/app/r0;

    .line 1154
    .line 1155
    iget v1, v1, Lq1/j0;->b:I

    .line 1156
    .line 1157
    invoke-static {v2, v1}, Landroidx/mediarouter/media/MediaRouteProviderService;->a(Landroidx/appcompat/app/r0;I)Landroid/os/Bundle;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v16

    .line 1161
    const/16 v17, 0x0

    .line 1162
    .line 1163
    const/4 v13, 0x2

    .line 1164
    const/4 v15, 0x3

    .line 1165
    move-object v12, v7

    .line 1166
    move v14, v9

    .line 1167
    invoke-static/range {v12 .. v17}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1168
    .line 1169
    .line 1170
    goto :goto_12

    .line 1171
    :catch_0
    invoke-virtual {v1}, Lq1/j0;->binderDied()V

    .line 1172
    .line 1173
    .line 1174
    goto :goto_11

    .line 1175
    :cond_22
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1176
    .line 1177
    .line 1178
    :cond_23
    :goto_11
    sget v1, Landroidx/mediarouter/media/MediaRouteProviderService;->f:I

    .line 1179
    .line 1180
    if-eqz v9, :cond_25

    .line 1181
    .line 1182
    const/16 v16, 0x0

    .line 1183
    .line 1184
    const/16 v17, 0x0

    .line 1185
    .line 1186
    const/4 v13, 0x0

    .line 1187
    const/4 v15, 0x0

    .line 1188
    move-object v12, v7

    .line 1189
    move v14, v9

    .line 1190
    invoke-static/range {v12 .. v17}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1191
    .line 1192
    .line 1193
    goto :goto_12

    .line 1194
    :catch_1
    :cond_24
    sget v1, Landroidx/mediarouter/media/MediaRouteProviderService;->f:I

    .line 1195
    .line 1196
    :cond_25
    :goto_12
    return-void

    .line 1197
    :pswitch_18
    iget v2, v1, Landroid/os/Message;->what:I

    .line 1198
    .line 1199
    const/4 v3, -0x3

    .line 1200
    if-eq v2, v3, :cond_27

    .line 1201
    .line 1202
    const/4 v3, -0x2

    .line 1203
    if-eq v2, v3, :cond_27

    .line 1204
    .line 1205
    const/4 v3, -0x1

    .line 1206
    if-eq v2, v3, :cond_27

    .line 1207
    .line 1208
    const/4 v3, 0x1

    .line 1209
    if-eq v2, v3, :cond_26

    .line 1210
    .line 1211
    goto :goto_13

    .line 1212
    :cond_26
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1213
    .line 1214
    check-cast v1, Landroid/content/DialogInterface;

    .line 1215
    .line 1216
    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1217
    .line 1218
    .line 1219
    goto :goto_13

    .line 1220
    :cond_27
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1221
    .line 1222
    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    .line 1223
    .line 1224
    iget-object v3, v0, Landroidx/appcompat/app/f;->b:Ljava/lang/ref/WeakReference;

    .line 1225
    .line 1226
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v3

    .line 1230
    check-cast v3, Landroid/content/DialogInterface;

    .line 1231
    .line 1232
    iget v1, v1, Landroid/os/Message;->what:I

    .line 1233
    .line 1234
    invoke-interface {v2, v3, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1235
    .line 1236
    .line 1237
    :goto_13
    return-void

    .line 1238
    nop

    .line 1239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_9
    .end packed-switch

    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    :pswitch_data_2
    .packed-switch 0x1
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
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
