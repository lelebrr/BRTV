.class public final Ly1/a0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public a:Landroidx/transition/Transition;

.field public b:Landroid/view/ViewGroup;


# virtual methods
.method public final onPreDraw()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Ly1/a0;->b:Landroid/view/ViewGroup;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Ly1/b0;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v4, v0, Ly1/a0;->b:Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    invoke-static {}, Ly1/b0;->b()Lp/e;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v4}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    new-instance v3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v4, v3}, Lp/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v6, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-lez v6, :cond_1

    .line 54
    .line 55
    new-instance v6, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object v9, v0, Ly1/a0;->a:Landroidx/transition/Transition;

    .line 61
    .line 62
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v3, Ly1/h;

    .line 66
    .line 67
    invoke-direct {v3, v0, v2}, Ly1/h;-><init>(Ly1/a0;Lp/e;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v9, v3}, Landroidx/transition/Transition;->a(Ly1/y;)V

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {v9, v4, v2}, Landroidx/transition/Transition;->g(Landroid/view/ViewGroup;Z)V

    .line 75
    .line 76
    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_3

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Landroidx/transition/Transition;

    .line 94
    .line 95
    invoke-virtual {v6, v4}, Landroidx/transition/Transition;->v(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v3, v9, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    .line 105
    .line 106
    new-instance v3, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v3, v9, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    .line 112
    .line 113
    iget-object v3, v9, Landroidx/transition/Transition;->g:La0/f;

    .line 114
    .line 115
    iget-object v6, v9, Landroidx/transition/Transition;->h:La0/f;

    .line 116
    .line 117
    new-instance v7, Lp/e;

    .line 118
    .line 119
    iget-object v8, v3, La0/f;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v8, Lp/e;

    .line 122
    .line 123
    invoke-direct {v7, v8}, Lp/e;-><init>(Lp/e;)V

    .line 124
    .line 125
    .line 126
    new-instance v8, Lp/e;

    .line 127
    .line 128
    iget-object v10, v6, La0/f;->b:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v10, Lp/e;

    .line 131
    .line 132
    invoke-direct {v8, v10}, Lp/e;-><init>(Lp/e;)V

    .line 133
    .line 134
    .line 135
    const/4 v10, 0x0

    .line 136
    :goto_2
    iget-object v11, v9, Landroidx/transition/Transition;->j:[I

    .line 137
    .line 138
    array-length v12, v11

    .line 139
    if-ge v10, v12, :cond_f

    .line 140
    .line 141
    aget v11, v11, v10

    .line 142
    .line 143
    if-eq v11, v1, :cond_d

    .line 144
    .line 145
    const/4 v12, 0x2

    .line 146
    if-eq v11, v12, :cond_b

    .line 147
    .line 148
    const/4 v12, 0x3

    .line 149
    if-eq v11, v12, :cond_9

    .line 150
    .line 151
    const/4 v12, 0x4

    .line 152
    if-eq v11, v12, :cond_6

    .line 153
    .line 154
    :cond_4
    move-object v2, v3

    .line 155
    :cond_5
    const/4 v0, 0x1

    .line 156
    goto/16 :goto_8

    .line 157
    .line 158
    :cond_6
    iget-object v11, v3, La0/f;->d:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v11, Lp/i;

    .line 161
    .line 162
    invoke-virtual {v11}, Lp/i;->j()I

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    const/4 v13, 0x0

    .line 167
    :goto_3
    if-ge v13, v12, :cond_4

    .line 168
    .line 169
    invoke-virtual {v11, v13}, Lp/i;->k(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    check-cast v14, Landroid/view/View;

    .line 174
    .line 175
    if-eqz v14, :cond_7

    .line 176
    .line 177
    invoke-virtual {v9, v14}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 178
    .line 179
    .line 180
    move-result v15

    .line 181
    if-eqz v15, :cond_7

    .line 182
    .line 183
    move-object/from16 v16, v3

    .line 184
    .line 185
    invoke-virtual {v11, v13}, Lp/i;->g(I)J

    .line 186
    .line 187
    .line 188
    move-result-wide v2

    .line 189
    iget-object v15, v6, La0/f;->d:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v15, Lp/i;

    .line 192
    .line 193
    invoke-virtual {v15, v2, v3}, Lp/i;->d(J)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Landroid/view/View;

    .line 198
    .line 199
    if-eqz v2, :cond_8

    .line 200
    .line 201
    invoke-virtual {v9, v2}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_8

    .line 206
    .line 207
    invoke-virtual {v7, v14}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    check-cast v3, Ly1/e0;

    .line 212
    .line 213
    invoke-virtual {v8, v2}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v15

    .line 217
    check-cast v15, Ly1/e0;

    .line 218
    .line 219
    if-eqz v3, :cond_8

    .line 220
    .line 221
    if-eqz v15, :cond_8

    .line 222
    .line 223
    iget-object v5, v9, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    iget-object v3, v9, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v14}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v8, v2}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_7
    move-object/from16 v16, v3

    .line 241
    .line 242
    :cond_8
    :goto_4
    add-int/2addr v13, v1

    .line 243
    move-object/from16 v3, v16

    .line 244
    .line 245
    const/4 v2, 0x0

    .line 246
    goto :goto_3

    .line 247
    :cond_9
    move-object v2, v3

    .line 248
    iget-object v3, v2, La0/f;->c:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v3, Landroid/util/SparseArray;

    .line 251
    .line 252
    iget-object v5, v6, La0/f;->c:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v5, Landroid/util/SparseArray;

    .line 255
    .line 256
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    const/4 v12, 0x0

    .line 261
    :goto_5
    if-ge v12, v11, :cond_5

    .line 262
    .line 263
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    check-cast v13, Landroid/view/View;

    .line 268
    .line 269
    if-eqz v13, :cond_a

    .line 270
    .line 271
    invoke-virtual {v9, v13}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 272
    .line 273
    .line 274
    move-result v14

    .line 275
    if-eqz v14, :cond_a

    .line 276
    .line 277
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 278
    .line 279
    .line 280
    move-result v14

    .line 281
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    check-cast v14, Landroid/view/View;

    .line 286
    .line 287
    if-eqz v14, :cond_a

    .line 288
    .line 289
    invoke-virtual {v9, v14}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 290
    .line 291
    .line 292
    move-result v15

    .line 293
    if-eqz v15, :cond_a

    .line 294
    .line 295
    invoke-virtual {v7, v13}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v15

    .line 299
    check-cast v15, Ly1/e0;

    .line 300
    .line 301
    invoke-virtual {v8, v14}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v16

    .line 305
    move-object/from16 v1, v16

    .line 306
    .line 307
    check-cast v1, Ly1/e0;

    .line 308
    .line 309
    if-eqz v15, :cond_a

    .line 310
    .line 311
    if-eqz v1, :cond_a

    .line 312
    .line 313
    iget-object v0, v9, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    iget-object v0, v9, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7, v13}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v8, v14}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    :cond_a
    const/4 v0, 0x1

    .line 330
    add-int/2addr v12, v0

    .line 331
    move-object/from16 v0, p0

    .line 332
    .line 333
    const/4 v1, 0x1

    .line 334
    goto :goto_5

    .line 335
    :cond_b
    move-object v2, v3

    .line 336
    iget-object v0, v2, La0/f;->e:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v0, Lp/e;

    .line 339
    .line 340
    iget-object v1, v6, La0/f;->e:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v1, Lp/e;

    .line 343
    .line 344
    iget v3, v0, Lp/l;->c:I

    .line 345
    .line 346
    const/4 v5, 0x0

    .line 347
    :goto_6
    if-ge v5, v3, :cond_5

    .line 348
    .line 349
    invoke-virtual {v0, v5}, Lp/l;->j(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v11

    .line 353
    check-cast v11, Landroid/view/View;

    .line 354
    .line 355
    if-eqz v11, :cond_c

    .line 356
    .line 357
    invoke-virtual {v9, v11}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 358
    .line 359
    .line 360
    move-result v12

    .line 361
    if-eqz v12, :cond_c

    .line 362
    .line 363
    invoke-virtual {v0, v5}, Lp/l;->f(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v12

    .line 367
    invoke-virtual {v1, v12}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v12

    .line 371
    check-cast v12, Landroid/view/View;

    .line 372
    .line 373
    if-eqz v12, :cond_c

    .line 374
    .line 375
    invoke-virtual {v9, v12}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 376
    .line 377
    .line 378
    move-result v13

    .line 379
    if-eqz v13, :cond_c

    .line 380
    .line 381
    invoke-virtual {v7, v11}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v13

    .line 385
    check-cast v13, Ly1/e0;

    .line 386
    .line 387
    invoke-virtual {v8, v12}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v14

    .line 391
    check-cast v14, Ly1/e0;

    .line 392
    .line 393
    if-eqz v13, :cond_c

    .line 394
    .line 395
    if-eqz v14, :cond_c

    .line 396
    .line 397
    iget-object v15, v9, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    iget-object v13, v9, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    invoke-virtual {v7, v11}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8, v12}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    :cond_c
    const/4 v11, 0x1

    .line 414
    add-int/2addr v5, v11

    .line 415
    goto :goto_6

    .line 416
    :cond_d
    move-object v2, v3

    .line 417
    const/4 v11, 0x1

    .line 418
    iget v0, v7, Lp/l;->c:I

    .line 419
    .line 420
    sub-int/2addr v0, v11

    .line 421
    :goto_7
    if-ltz v0, :cond_5

    .line 422
    .line 423
    invoke-virtual {v7, v0}, Lp/l;->f(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    check-cast v1, Landroid/view/View;

    .line 428
    .line 429
    if-eqz v1, :cond_e

    .line 430
    .line 431
    invoke-virtual {v9, v1}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    if-eqz v3, :cond_e

    .line 436
    .line 437
    invoke-virtual {v8, v1}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    check-cast v1, Ly1/e0;

    .line 442
    .line 443
    if-eqz v1, :cond_e

    .line 444
    .line 445
    iget-object v3, v1, Ly1/e0;->b:Landroid/view/View;

    .line 446
    .line 447
    invoke-virtual {v9, v3}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-eqz v3, :cond_e

    .line 452
    .line 453
    invoke-virtual {v7, v0}, Lp/l;->h(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    check-cast v3, Ly1/e0;

    .line 458
    .line 459
    iget-object v5, v9, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    .line 460
    .line 461
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    iget-object v3, v9, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    .line 465
    .line 466
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    :cond_e
    add-int/lit8 v0, v0, -0x1

    .line 470
    .line 471
    goto :goto_7

    .line 472
    :goto_8
    add-int/2addr v10, v0

    .line 473
    move-object/from16 v0, p0

    .line 474
    .line 475
    move-object v3, v2

    .line 476
    const/4 v1, 0x1

    .line 477
    const/4 v2, 0x0

    .line 478
    goto/16 :goto_2

    .line 479
    .line 480
    :cond_f
    const/4 v0, 0x0

    .line 481
    :goto_9
    iget v1, v7, Lp/l;->c:I

    .line 482
    .line 483
    if-ge v0, v1, :cond_11

    .line 484
    .line 485
    invoke-virtual {v7, v0}, Lp/l;->j(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    check-cast v1, Ly1/e0;

    .line 490
    .line 491
    iget-object v2, v1, Ly1/e0;->b:Landroid/view/View;

    .line 492
    .line 493
    invoke-virtual {v9, v2}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-eqz v2, :cond_10

    .line 498
    .line 499
    iget-object v2, v9, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    .line 500
    .line 501
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    iget-object v1, v9, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    .line 505
    .line 506
    const/4 v2, 0x0

    .line 507
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    :cond_10
    const/4 v1, 0x1

    .line 511
    add-int/2addr v0, v1

    .line 512
    goto :goto_9

    .line 513
    :cond_11
    const/4 v2, 0x0

    .line 514
    :goto_a
    iget v0, v8, Lp/l;->c:I

    .line 515
    .line 516
    if-ge v2, v0, :cond_13

    .line 517
    .line 518
    invoke-virtual {v8, v2}, Lp/l;->j(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    check-cast v0, Ly1/e0;

    .line 523
    .line 524
    iget-object v1, v0, Ly1/e0;->b:Landroid/view/View;

    .line 525
    .line 526
    invoke-virtual {v9, v1}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-eqz v1, :cond_12

    .line 531
    .line 532
    iget-object v1, v9, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    .line 533
    .line 534
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    iget-object v0, v9, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    .line 538
    .line 539
    const/4 v1, 0x0

    .line 540
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    :goto_b
    const/4 v0, 0x1

    .line 544
    goto :goto_c

    .line 545
    :cond_12
    const/4 v1, 0x0

    .line 546
    goto :goto_b

    .line 547
    :goto_c
    add-int/2addr v2, v0

    .line 548
    goto :goto_a

    .line 549
    :cond_13
    const/4 v0, 0x1

    .line 550
    invoke-static {}, Landroidx/transition/Transition;->n()Lp/e;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    iget v2, v1, Lp/l;->c:I

    .line 555
    .line 556
    sget-object v3, Ly1/g0;->a:Ly1/h0;

    .line 557
    .line 558
    invoke-virtual {v4}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    sub-int/2addr v2, v0

    .line 563
    :goto_d
    if-ltz v2, :cond_19

    .line 564
    .line 565
    invoke-virtual {v1, v2}, Lp/l;->f(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    check-cast v0, Landroid/animation/Animator;

    .line 570
    .line 571
    if-eqz v0, :cond_18

    .line 572
    .line 573
    invoke-virtual {v1, v0}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    check-cast v5, Ly1/x;

    .line 578
    .line 579
    if-eqz v5, :cond_18

    .line 580
    .line 581
    iget-object v6, v5, Ly1/x;->a:Landroid/view/View;

    .line 582
    .line 583
    if-eqz v6, :cond_18

    .line 584
    .line 585
    iget-object v7, v5, Ly1/x;->d:Ly1/o0;

    .line 586
    .line 587
    iget-object v7, v7, Ly1/o0;->a:Landroid/view/WindowId;

    .line 588
    .line 589
    invoke-virtual {v7, v3}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v7

    .line 593
    if-eqz v7, :cond_18

    .line 594
    .line 595
    const/4 v7, 0x1

    .line 596
    invoke-virtual {v9, v6, v7}, Landroidx/transition/Transition;->p(Landroid/view/View;Z)Ly1/e0;

    .line 597
    .line 598
    .line 599
    move-result-object v8

    .line 600
    invoke-virtual {v9, v6, v7}, Landroidx/transition/Transition;->m(Landroid/view/View;Z)Ly1/e0;

    .line 601
    .line 602
    .line 603
    move-result-object v10

    .line 604
    if-nez v8, :cond_14

    .line 605
    .line 606
    if-nez v10, :cond_14

    .line 607
    .line 608
    iget-object v7, v9, Landroidx/transition/Transition;->h:La0/f;

    .line 609
    .line 610
    iget-object v7, v7, La0/f;->b:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v7, Lp/e;

    .line 613
    .line 614
    invoke-virtual {v7, v6}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v6

    .line 618
    move-object v10, v6

    .line 619
    check-cast v10, Ly1/e0;

    .line 620
    .line 621
    :cond_14
    if-nez v8, :cond_15

    .line 622
    .line 623
    if-eqz v10, :cond_18

    .line 624
    .line 625
    :cond_15
    iget-object v6, v5, Ly1/x;->e:Landroidx/transition/Transition;

    .line 626
    .line 627
    iget-object v5, v5, Ly1/x;->c:Ly1/e0;

    .line 628
    .line 629
    invoke-virtual {v6, v5, v10}, Landroidx/transition/Transition;->q(Ly1/e0;Ly1/e0;)Z

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    if-eqz v5, :cond_18

    .line 634
    .line 635
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 636
    .line 637
    .line 638
    move-result v5

    .line 639
    if-nez v5, :cond_17

    .line 640
    .line 641
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 642
    .line 643
    .line 644
    move-result v5

    .line 645
    if-eqz v5, :cond_16

    .line 646
    .line 647
    goto :goto_e

    .line 648
    :cond_16
    invoke-virtual {v1, v0}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    goto :goto_f

    .line 652
    :cond_17
    :goto_e
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 653
    .line 654
    .line 655
    :cond_18
    :goto_f
    add-int/lit8 v2, v2, -0x1

    .line 656
    .line 657
    goto :goto_d

    .line 658
    :cond_19
    iget-object v5, v9, Landroidx/transition/Transition;->g:La0/f;

    .line 659
    .line 660
    iget-object v6, v9, Landroidx/transition/Transition;->h:La0/f;

    .line 661
    .line 662
    iget-object v7, v9, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    .line 663
    .line 664
    iget-object v8, v9, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    .line 665
    .line 666
    move-object v3, v9

    .line 667
    invoke-virtual/range {v3 .. v8}, Landroidx/transition/Transition;->k(Landroid/view/ViewGroup;La0/f;La0/f;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v9}, Landroidx/transition/Transition;->w()V

    .line 671
    .line 672
    .line 673
    const/4 v0, 0x1

    .line 674
    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ly1/a0;->b:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Ly1/b0;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v0, p0, Ly1/a0;->b:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ly1/b0;->b()Lp/e;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroidx/transition/Transition;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroidx/transition/Transition;->v(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Ly1/a0;->a:Landroidx/transition/Transition;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->h(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
