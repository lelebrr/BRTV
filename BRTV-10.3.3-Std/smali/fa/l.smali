.class public final Lfa/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lfa/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lfa/l;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lfa/l;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/16 v2, 0x80

    .line 6
    .line 7
    const/16 v3, 0x17

    .line 8
    .line 9
    const/16 v4, 0x42

    .line 10
    .line 11
    const/16 v5, 0x60

    .line 12
    .line 13
    const/4 v6, -0x1

    .line 14
    const/16 v7, 0x14

    .line 15
    .line 16
    const/16 v9, 0x13

    .line 17
    .line 18
    const/16 v10, 0x16

    .line 19
    .line 20
    const/16 v11, 0x15

    .line 21
    .line 22
    iget-object v12, v0, Lfa/l;->b:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v13, 0x1

    .line 25
    iget-object v14, v0, Lfa/l;->c:Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v15, 0x4

    .line 28
    iget v8, v0, Lfa/l;->a:I

    .line 29
    .line 30
    packed-switch v8, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    check-cast v14, Lka/i0;

    .line 34
    .line 35
    if-ne v1, v15, :cond_1

    .line 36
    .line 37
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne v1, v13, :cond_0

    .line 42
    .line 43
    iget-object v1, v14, Lka/i0;->U:Lta/a;

    .line 44
    .line 45
    invoke-virtual {v1}, Lta/a;->f()V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    const/4 v8, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    check-cast v12, Lx6/h;

    .line 51
    .line 52
    if-ne v1, v11, :cond_2

    .line 53
    .line 54
    iget v2, v12, Lx6/h;->d:I

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-ne v1, v10, :cond_3

    .line 60
    .line 61
    iget v2, v12, Lx6/h;->d:I

    .line 62
    .line 63
    iget-object v3, v14, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    sub-int/2addr v3, v13

    .line 70
    if-ne v2, v3, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    if-ne v1, v9, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const/4 v8, 0x0

    .line 77
    :goto_1
    return v8

    .line 78
    :pswitch_0
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    .line 80
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/x0;

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-nez v8, :cond_6

    .line 88
    .line 89
    if-ne v1, v15, :cond_6

    .line 90
    .line 91
    :cond_5
    :goto_2
    const/4 v8, 0x1

    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    const/16 v12, 0x70

    .line 99
    .line 100
    check-cast v14, Lfa/u;

    .line 101
    .line 102
    if-nez v8, :cond_13

    .line 103
    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eq v8, v3, :cond_11

    .line 109
    .line 110
    if-eq v8, v4, :cond_11

    .line 111
    .line 112
    if-eq v8, v5, :cond_11

    .line 113
    .line 114
    iget-object v2, v14, Lfa/u;->a:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 115
    .line 116
    sget-object v3, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSLIVE:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 117
    .line 118
    if-ne v2, v3, :cond_c

    .line 119
    .line 120
    if-ne v1, v10, :cond_7

    .line 121
    .line 122
    invoke-static {v14, v13}, Lfa/u;->a(Lfa/u;I)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    :cond_7
    if-ne v1, v11, :cond_9

    .line 129
    .line 130
    iget v1, v14, Lfa/u;->b:I

    .line 131
    .line 132
    if-nez v1, :cond_8

    .line 133
    .line 134
    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 135
    .line 136
    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 137
    .line 138
    .line 139
    sput-object v3, Lka/e;->k0:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 140
    .line 141
    iput v6, v14, Lfa/u;->c:I

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_8
    invoke-static {v14, v6}, Lfa/u;->a(Lfa/u;I)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :cond_9
    if-ne v1, v9, :cond_a

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_a
    if-ne v1, v7, :cond_b

    .line 154
    .line 155
    iget v1, v14, Lfa/u;->b:I

    .line 156
    .line 157
    neg-int v1, v1

    .line 158
    sub-int/2addr v1, v13

    .line 159
    invoke-static {v14, v1}, Lfa/u;->a(Lfa/u;I)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    goto/16 :goto_4

    .line 164
    .line 165
    :cond_b
    const/4 v8, 0x0

    .line 166
    goto/16 :goto_4

    .line 167
    .line 168
    :cond_c
    sget-object v3, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 169
    .line 170
    if-ne v2, v3, :cond_b

    .line 171
    .line 172
    if-ne v1, v10, :cond_d

    .line 173
    .line 174
    invoke-static {v14, v13}, Lfa/u;->a(Lfa/u;I)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    goto/16 :goto_4

    .line 179
    .line 180
    :cond_d
    if-ne v1, v11, :cond_f

    .line 181
    .line 182
    iget v1, v14, Lfa/u;->b:I

    .line 183
    .line 184
    sget v2, Lea/h;->u:I

    .line 185
    .line 186
    rem-int/2addr v1, v2

    .line 187
    if-nez v1, :cond_e

    .line 188
    .line 189
    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 190
    .line 191
    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    .line 193
    .line 194
    sput-object v3, Lka/e;->k0:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 195
    .line 196
    iput v6, v14, Lfa/u;->c:I

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_e
    invoke-static {v14, v6}, Lfa/u;->a(Lfa/u;I)Z

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    goto/16 :goto_4

    .line 204
    .line 205
    :cond_f
    if-ne v1, v9, :cond_10

    .line 206
    .line 207
    const/4 v1, -0x5

    .line 208
    invoke-static {v14, v1}, Lfa/u;->a(Lfa/u;I)Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    goto/16 :goto_4

    .line 213
    .line 214
    :cond_10
    if-ne v1, v7, :cond_b

    .line 215
    .line 216
    const/4 v1, 0x5

    .line 217
    invoke-static {v14, v1}, Lfa/u;->a(Lfa/u;I)Z

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    goto/16 :goto_4

    .line 222
    .line 223
    :cond_11
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    and-int/2addr v1, v2

    .line 228
    if-ne v1, v2, :cond_12

    .line 229
    .line 230
    iget-object v1, v14, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 231
    .line 232
    iget v2, v14, Lfa/u;->b:I

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-eqz v1, :cond_5

    .line 239
    .line 240
    iget-object v1, v14, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 241
    .line 242
    iget v2, v14, Lfa/u;->b:I

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    iget-object v1, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 249
    .line 250
    if-eqz v1, :cond_5

    .line 251
    .line 252
    iget-object v1, v14, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 253
    .line 254
    iget v2, v14, Lfa/u;->b:I

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    iget-object v1, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 261
    .line 262
    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    .line 263
    .line 264
    .line 265
    goto/16 :goto_2

    .line 266
    .line 267
    :cond_12
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->startTracking()V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :cond_13
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    if-ne v6, v13, :cond_15

    .line 277
    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-eq v6, v3, :cond_14

    .line 283
    .line 284
    if-eq v6, v4, :cond_14

    .line 285
    .line 286
    if-eq v6, v5, :cond_14

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    and-int/2addr v3, v2

    .line 294
    if-eq v3, v2, :cond_15

    .line 295
    .line 296
    iget-object v1, v14, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 297
    .line 298
    iget v2, v14, Lfa/u;->b:I

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    if-eqz v1, :cond_5

    .line 305
    .line 306
    iget-object v1, v14, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 307
    .line 308
    iget v2, v14, Lfa/u;->b:I

    .line 309
    .line 310
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    iget-object v1, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 315
    .line 316
    if-eqz v1, :cond_5

    .line 317
    .line 318
    iget-object v1, v14, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 319
    .line 320
    iget v2, v14, Lfa/u;->b:I

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    iget-object v1, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 327
    .line 328
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 329
    .line 330
    .line 331
    goto/16 :goto_2

    .line 332
    .line 333
    :cond_15
    :goto_3
    if-ne v1, v15, :cond_b

    .line 334
    .line 335
    sget v1, Lfa/u;->f:I

    .line 336
    .line 337
    if-lez v1, :cond_16

    .line 338
    .line 339
    const/4 v8, 0x0

    .line 340
    sput v8, Lfa/u;->f:I

    .line 341
    .line 342
    goto/16 :goto_2

    .line 343
    .line 344
    :cond_16
    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 345
    .line 346
    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 347
    .line 348
    .line 349
    goto/16 :goto_2

    .line 350
    .line 351
    :goto_4
    return v8

    .line 352
    :pswitch_1
    const/4 v8, 0x0

    .line 353
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 354
    .line 355
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/x0;

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 359
    .line 360
    .line 361
    move-result v12

    .line 362
    check-cast v14, Lfa/p;

    .line 363
    .line 364
    if-nez v12, :cond_18

    .line 365
    .line 366
    if-ne v1, v15, :cond_18

    .line 367
    .line 368
    iget-object v1, v14, Lfa/p;->e:La7/f;

    .line 369
    .line 370
    if-eqz v1, :cond_17

    .line 371
    .line 372
    invoke-virtual {v1}, La7/f;->j()V

    .line 373
    .line 374
    .line 375
    :cond_17
    :goto_5
    const/4 v8, 0x1

    .line 376
    goto/16 :goto_6

    .line 377
    .line 378
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 379
    .line 380
    .line 381
    move-result v12

    .line 382
    if-nez v12, :cond_22

    .line 383
    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 385
    .line 386
    .line 387
    move-result v12

    .line 388
    if-eq v12, v3, :cond_20

    .line 389
    .line 390
    if-eq v12, v4, :cond_20

    .line 391
    .line 392
    if-eq v12, v5, :cond_20

    .line 393
    .line 394
    const/16 v2, 0xb

    .line 395
    .line 396
    if-ne v1, v9, :cond_1a

    .line 397
    .line 398
    iget v1, v14, Lfa/p;->d:I

    .line 399
    .line 400
    if-ne v1, v2, :cond_19

    .line 401
    .line 402
    invoke-static {v14, v6}, Lfa/p;->a(Lfa/p;I)Z

    .line 403
    .line 404
    .line 405
    move-result v8

    .line 406
    goto/16 :goto_6

    .line 407
    .line 408
    :cond_19
    iput v6, v14, Lfa/p;->b:I

    .line 409
    .line 410
    goto/16 :goto_6

    .line 411
    .line 412
    :cond_1a
    if-ne v1, v7, :cond_1c

    .line 413
    .line 414
    iget v1, v14, Lfa/p;->d:I

    .line 415
    .line 416
    if-ne v1, v2, :cond_1b

    .line 417
    .line 418
    invoke-static {v14, v13}, Lfa/p;->a(Lfa/p;I)Z

    .line 419
    .line 420
    .line 421
    move-result v8

    .line 422
    goto/16 :goto_6

    .line 423
    .line 424
    :cond_1b
    sget-object v2, Lea/d;->e:Lea/d;

    .line 425
    .line 426
    sput-object v2, Lka/m0;->F0:Lea/d;

    .line 427
    .line 428
    iput v6, v14, Lfa/p;->b:I

    .line 429
    .line 430
    const/4 v2, 0x2

    .line 431
    if-ne v1, v2, :cond_24

    .line 432
    .line 433
    sget-object v1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 434
    .line 435
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    const/16 v2, 0x8

    .line 440
    .line 441
    if-ne v1, v2, :cond_24

    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_1c
    if-ne v1, v10, :cond_1e

    .line 445
    .line 446
    iget v1, v14, Lfa/p;->d:I

    .line 447
    .line 448
    if-ne v1, v2, :cond_1d

    .line 449
    .line 450
    iput v6, v14, Lfa/p;->b:I

    .line 451
    .line 452
    goto/16 :goto_6

    .line 453
    .line 454
    :cond_1d
    invoke-static {v14, v13}, Lfa/p;->a(Lfa/p;I)Z

    .line 455
    .line 456
    .line 457
    move-result v8

    .line 458
    goto :goto_6

    .line 459
    :cond_1e
    if-ne v1, v11, :cond_24

    .line 460
    .line 461
    iget v1, v14, Lfa/p;->d:I

    .line 462
    .line 463
    if-ne v1, v2, :cond_1f

    .line 464
    .line 465
    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 466
    .line 467
    const/16 v2, 0x69

    .line 468
    .line 469
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 470
    .line 471
    .line 472
    goto :goto_5

    .line 473
    :cond_1f
    invoke-static {v14, v6}, Lfa/p;->a(Lfa/p;I)Z

    .line 474
    .line 475
    .line 476
    move-result v8

    .line 477
    goto :goto_6

    .line 478
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    and-int/2addr v1, v2

    .line 483
    if-ne v1, v2, :cond_21

    .line 484
    .line 485
    iget-object v1, v14, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 486
    .line 487
    iget v2, v14, Lfa/p;->a:I

    .line 488
    .line 489
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    if-eqz v1, :cond_17

    .line 494
    .line 495
    iget-object v1, v14, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 496
    .line 497
    iget v2, v14, Lfa/p;->a:I

    .line 498
    .line 499
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    iget-object v1, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 504
    .line 505
    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    .line 506
    .line 507
    .line 508
    goto/16 :goto_5

    .line 509
    .line 510
    :cond_21
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->startTracking()V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_5

    .line 514
    .line 515
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    if-ne v1, v13, :cond_24

    .line 520
    .line 521
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-eq v1, v3, :cond_23

    .line 526
    .line 527
    if-eq v1, v4, :cond_23

    .line 528
    .line 529
    if-eq v1, v5, :cond_23

    .line 530
    .line 531
    goto :goto_6

    .line 532
    :cond_23
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    and-int/2addr v1, v2

    .line 537
    if-eq v1, v2, :cond_24

    .line 538
    .line 539
    iget-object v1, v14, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 540
    .line 541
    iget v2, v14, Lfa/p;->a:I

    .line 542
    .line 543
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    if-eqz v1, :cond_17

    .line 548
    .line 549
    iget-object v1, v14, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 550
    .line 551
    iget v2, v14, Lfa/p;->a:I

    .line 552
    .line 553
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    iget-object v1, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 558
    .line 559
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 560
    .line 561
    .line 562
    goto/16 :goto_5

    .line 563
    .line 564
    :cond_24
    :goto_6
    return v8

    .line 565
    :pswitch_2
    const/4 v8, 0x0

    .line 566
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 567
    .line 568
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/x0;

    .line 569
    .line 570
    .line 571
    sget-object v2, Lfa/o;->i:Ljava/lang/String;

    .line 572
    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .line 577
    .line 578
    const-string v4, "qLEIboDqUwGosQhzgOpTAaixCG6A6lMBteNbGNiuVA==\n"

    .line 579
    .line 580
    const-string v5, "lYw1U73Xbjw=\n"

    .line 581
    .line 582
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v4, "/Y7ZXNmFHg==\n"

    .line 593
    .line 594
    const-string v5, "3euvObfxJI8=\n"

    .line 595
    .line 596
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    move-object/from16 v4, p3

    .line 604
    .line 605
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    sget-boolean v5, Lorg/bitspark/android/utils/m;->b:Z

    .line 613
    .line 614
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    const/16 v3, 0x6a

    .line 618
    .line 619
    check-cast v14, Lfa/o;

    .line 620
    .line 621
    if-ne v1, v15, :cond_28

    .line 622
    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    if-nez v1, :cond_27

    .line 628
    .line 629
    iget-object v1, v14, Lfa/o;->f:Lea/d;

    .line 630
    .line 631
    sget-object v4, Lea/d;->e:Lea/d;

    .line 632
    .line 633
    if-ne v1, v4, :cond_25

    .line 634
    .line 635
    iget-object v1, v14, Lfa/o;->h:Lfa/n0;

    .line 636
    .line 637
    invoke-interface {v1}, Lfa/n0;->j()V

    .line 638
    .line 639
    .line 640
    :goto_7
    const/4 v8, 0x1

    .line 641
    goto/16 :goto_9

    .line 642
    .line 643
    :cond_25
    sget-object v4, Lea/d;->g:Lea/d;

    .line 644
    .line 645
    if-ne v1, v4, :cond_26

    .line 646
    .line 647
    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 648
    .line 649
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 650
    .line 651
    .line 652
    goto :goto_7

    .line 653
    :cond_26
    const-string v1, "zMpPwJxFVxj7y0Hbolc=\n"

    .line 654
    .line 655
    const-string v3, "v6Igt80wPmw=\n"

    .line 656
    .line 657
    invoke-static {v1, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-static {v2, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    iget-object v1, v14, Lfa/o;->a:Landroid/content/Context;

    .line 665
    .line 666
    invoke-static {v1}, Lorg/bitspark/android/utils/m;->p(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 667
    .line 668
    .line 669
    goto :goto_7

    .line 670
    :cond_27
    const-string v1, "9uq9bXqrAjX26r1weqsCNfbqvW16qwI165zlKQLgWma/+cETE99wRpSC0Gpn5Fp8vqXucDPkSm0=\n"

    .line 671
    .line 672
    const-string v3, "y9eAUEeWPwg=\n"

    .line 673
    .line 674
    invoke-static {v1, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    invoke-static {v2, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    goto/16 :goto_9

    .line 682
    .line 683
    :cond_28
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    if-nez v2, :cond_31

    .line 688
    .line 689
    if-ne v1, v10, :cond_29

    .line 690
    .line 691
    invoke-virtual {v14, v13}, Lfa/o;->a(I)Z

    .line 692
    .line 693
    .line 694
    move-result v8

    .line 695
    goto :goto_9

    .line 696
    :cond_29
    if-ne v1, v11, :cond_2e

    .line 697
    .line 698
    iget v1, v14, Lfa/o;->b:I

    .line 699
    .line 700
    iget v2, v14, Lfa/o;->g:I

    .line 701
    .line 702
    rem-int/2addr v1, v2

    .line 703
    if-nez v1, :cond_2d

    .line 704
    .line 705
    iget-object v1, v14, Lfa/o;->f:Lea/d;

    .line 706
    .line 707
    sget-object v2, Lea/d;->e:Lea/d;

    .line 708
    .line 709
    if-ne v1, v2, :cond_2a

    .line 710
    .line 711
    sget-boolean v4, Lka/m0;->G0:Z

    .line 712
    .line 713
    if-nez v4, :cond_2a

    .line 714
    .line 715
    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 716
    .line 717
    const/16 v3, 0x78

    .line 718
    .line 719
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 720
    .line 721
    .line 722
    sput-object v2, Lka/m0;->F0:Lea/d;

    .line 723
    .line 724
    goto :goto_8

    .line 725
    :cond_2a
    sget-object v4, Lea/d;->g:Lea/d;

    .line 726
    .line 727
    if-ne v1, v4, :cond_2b

    .line 728
    .line 729
    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 730
    .line 731
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 732
    .line 733
    .line 734
    goto :goto_8

    .line 735
    :cond_2b
    if-ne v1, v2, :cond_2c

    .line 736
    .line 737
    sget-boolean v1, Lka/m0;->G0:Z

    .line 738
    .line 739
    if-eqz v1, :cond_2c

    .line 740
    .line 741
    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 742
    .line 743
    const/16 v3, 0x6b

    .line 744
    .line 745
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 746
    .line 747
    .line 748
    sput-object v2, Lka/m0;->F0:Lea/d;

    .line 749
    .line 750
    :cond_2c
    :goto_8
    iput v6, v14, Lfa/o;->d:I

    .line 751
    .line 752
    iput v13, v14, Lfa/o;->c:I

    .line 753
    .line 754
    goto :goto_7

    .line 755
    :cond_2d
    invoke-virtual {v14, v6}, Lfa/o;->a(I)Z

    .line 756
    .line 757
    .line 758
    move-result v8

    .line 759
    goto :goto_9

    .line 760
    :cond_2e
    if-ne v1, v9, :cond_30

    .line 761
    .line 762
    iget-object v1, v14, Lfa/o;->f:Lea/d;

    .line 763
    .line 764
    sget-object v2, Lea/d;->g:Lea/d;

    .line 765
    .line 766
    if-ne v1, v2, :cond_2f

    .line 767
    .line 768
    iget v1, v14, Lfa/o;->b:I

    .line 769
    .line 770
    iget v2, v14, Lfa/o;->g:I

    .line 771
    .line 772
    if-gt v1, v2, :cond_2f

    .line 773
    .line 774
    goto/16 :goto_7

    .line 775
    .line 776
    :cond_2f
    iget v1, v14, Lfa/o;->g:I

    .line 777
    .line 778
    neg-int v1, v1

    .line 779
    invoke-virtual {v14, v1}, Lfa/o;->a(I)Z

    .line 780
    .line 781
    .line 782
    move-result v8

    .line 783
    goto :goto_9

    .line 784
    :cond_30
    if-ne v1, v7, :cond_31

    .line 785
    .line 786
    iget v1, v14, Lfa/o;->g:I

    .line 787
    .line 788
    invoke-virtual {v14, v1}, Lfa/o;->a(I)Z

    .line 789
    .line 790
    .line 791
    move-result v8

    .line 792
    :cond_31
    :goto_9
    return v8

    .line 793
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
