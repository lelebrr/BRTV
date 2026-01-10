.class public final synthetic Lqa/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Li9/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lqa/b;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lqa/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lqa/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    iget v5, v0, Lqa/b;->a:I

    .line 10
    .line 11
    packed-switch v5, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v2, Lx8/a;

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    const-string v1, "(this Collection)"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    return-object v1

    .line 26
    :pswitch_0
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    const-string v5, "ZQgzYA==\n"

    .line 29
    .line 30
    const-string v6, "C2leBQOAux0=\n"

    .line 31
    .line 32
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v1, v5}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    check-cast v2, Lqa/g;

    .line 40
    .line 41
    iget-object v5, v2, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 42
    .line 43
    iget-object v5, v5, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 44
    .line 45
    iget-object v5, v5, Lta/a;->k:Landroidx/lifecycle/d0;

    .line 46
    .line 47
    invoke-virtual {v5}, Landroidx/lifecycle/d0;->d()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lorg/bitspark/android/beans/ChannelBean;

    .line 52
    .line 53
    if-eqz v5, :cond_1d

    .line 54
    .line 55
    invoke-virtual {v5}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const-string v7, "LyhZ1FIfxrotPgWpE0Sd\n"

    .line 60
    .line 61
    const-string v8, "SE0thz1qtNk=\n"

    .line 62
    .line 63
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-static {v6, v7}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v7, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_3

    .line 84
    .line 85
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    check-cast v8, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 90
    .line 91
    invoke-virtual {v8}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getSubTitle()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    new-instance v9, Lorg/bitspark/android/beans/Source;

    .line 103
    .line 104
    invoke-virtual {v8}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getId()I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    invoke-virtual {v8}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getAddress()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    const-string v10, "krsnxHZZgouGrXurPBPZ\n"

    .line 113
    .line 114
    const-string v13, "9d5ThRI98O4=\n"

    .line 115
    .line 116
    invoke-static {v10, v13}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-static {v12, v10}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getSubTitle()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    if-nez v8, :cond_2

    .line 128
    .line 129
    const-string v8, ""

    .line 130
    .line 131
    :cond_2
    move-object v13, v8

    .line 132
    sget-object v14, Lx8/r;->a:Lx8/r;

    .line 133
    .line 134
    const/16 v17, 0x0

    .line 135
    .line 136
    const/4 v15, 0x0

    .line 137
    const/16 v16, 0x0

    .line 138
    .line 139
    move-object v10, v9

    .line 140
    invoke-direct/range {v10 .. v17}, Lorg/bitspark/android/beans/Source;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZ)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    iget-object v6, v2, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 148
    .line 149
    const v8, 0x7f120020

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-eqz v8, :cond_e

    .line 161
    .line 162
    invoke-virtual {v5}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_4

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    const/4 v8, 0x0

    .line 178
    :goto_2
    if-ge v8, v5, :cond_6

    .line 179
    .line 180
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    check-cast v9, Lorg/bitspark/android/beans/Source;

    .line 185
    .line 186
    invoke-virtual {v9}, Lorg/bitspark/android/beans/Source;->isSelected()Z

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    if-eqz v9, :cond_5

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_5
    add-int/2addr v8, v4

    .line 194
    goto :goto_2

    .line 195
    :cond_6
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    iget-object v5, v5, Lra/f;->c:Ljava/util/HashMap;

    .line 200
    .line 201
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Ljava/lang/String;

    .line 210
    .line 211
    if-nez v1, :cond_7

    .line 212
    .line 213
    sget-object v1, Lea/h;->H:Ljava/lang/String;

    .line 214
    .line 215
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    const/4 v8, 0x0

    .line 220
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    if-eqz v9, :cond_9

    .line 225
    .line 226
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    check-cast v9, Lorg/bitspark/android/beans/Source;

    .line 231
    .line 232
    invoke-virtual {v9}, Lorg/bitspark/android/beans/Source;->getShort_title()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-static {v1, v9}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    if-eqz v9, :cond_8

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_8
    add-int/2addr v8, v4

    .line 244
    goto :goto_3

    .line 245
    :cond_9
    const/4 v8, -0x1

    .line 246
    :goto_4
    if-ltz v8, :cond_a

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_a
    const/4 v8, 0x0

    .line 250
    :goto_5
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    check-cast v1, Lorg/bitspark/android/beans/Source;

    .line 255
    .line 256
    invoke-virtual {v1, v4}, Lorg/bitspark/android/beans/Source;->setSelected(Z)V

    .line 257
    .line 258
    .line 259
    :goto_6
    invoke-virtual {v2}, Lqa/g;->a()Lqa/o;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    new-instance v5, Lqa/c;

    .line 264
    .line 265
    invoke-direct {v5, v6, v7, v2}, Lqa/c;-><init>(Lorg/bitspark/android/Spark;Ljava/util/ArrayList;Lqa/g;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    const-string v2, "fGI2RRaafg==\n"

    .line 272
    .line 273
    const-string v6, "Dw1DN3X/DRE=\n"

    .line 274
    .line 275
    invoke-static {v2, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    const-string v2, "az5UiWku6FVp\n"

    .line 279
    .line 280
    const-string v6, "Akox5CpCgTY=\n"

    .line 281
    .line 282
    invoke-static {v2, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Lqa/o;->b()Lqa/l;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iput-object v5, v1, Lqa/l;->h:Lqa/c;

    .line 290
    .line 291
    const-string v2, "ox7XC43Esg==\n"

    .line 292
    .line 293
    const-string v5, "0HGiee6hwRc=\n"

    .line 294
    .line 295
    invoke-static {v2, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    iget-object v2, v1, Lqa/l;->m:Lja/n;

    .line 299
    .line 300
    if-nez v2, :cond_d

    .line 301
    .line 302
    iget-object v2, v1, Lqa/l;->a:Landroid/app/Activity;

    .line 303
    .line 304
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    iget-object v6, v1, Lqa/l;->f:Lw0/e;

    .line 309
    .line 310
    check-cast v6, Lja/h;

    .line 311
    .line 312
    iget-object v6, v6, Lja/h;->l:Landroid/widget/FrameLayout;

    .line 313
    .line 314
    sget v8, Lja/n;->o:I

    .line 315
    .line 316
    const v8, 0x7f0e0125

    .line 317
    .line 318
    .line 319
    invoke-static {v5, v8, v6}, Lw0/c;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Lw0/e;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    check-cast v5, Lja/n;

    .line 324
    .line 325
    iput-object v5, v1, Lqa/l;->m:Lja/n;

    .line 326
    .line 327
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    const-string v5, "1Y0WEqqEvIzdiwpI8bGp\n"

    .line 332
    .line 333
    const-string v6, "s+J4ZoXFyuk=\n"

    .line 334
    .line 335
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-static {v2, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    iget-object v5, v1, Lqa/l;->m:Lja/n;

    .line 344
    .line 345
    if-eqz v5, :cond_b

    .line 346
    .line 347
    iget-object v5, v5, Lja/n;->m:Landroid/widget/TextView;

    .line 348
    .line 349
    if-eqz v5, :cond_b

    .line 350
    .line 351
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 352
    .line 353
    .line 354
    :cond_b
    iget-object v2, v1, Lqa/l;->m:Lja/n;

    .line 355
    .line 356
    if-eqz v2, :cond_c

    .line 357
    .line 358
    iget-object v2, v2, Lja/n;->n:Landroidx/leanback/widget/VerticalGridView;

    .line 359
    .line 360
    if-eqz v2, :cond_c

    .line 361
    .line 362
    iget-object v5, v1, Lqa/l;->r:Landroidx/leanback/widget/d0;

    .line 363
    .line 364
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 365
    .line 366
    .line 367
    :cond_c
    new-instance v2, Lqa/h;

    .line 368
    .line 369
    invoke-direct {v2, v1, v4}, Lqa/h;-><init>(Lqa/l;I)V

    .line 370
    .line 371
    .line 372
    iget-object v4, v1, Lqa/l;->p:Lqa/m;

    .line 373
    .line 374
    iput-object v2, v4, Lqa/m;->a:Li9/l;

    .line 375
    .line 376
    :cond_d
    iget-object v2, v1, Lqa/l;->q:La1/b;

    .line 377
    .line 378
    invoke-static {v2, v7}, Lcom/bumptech/glide/d;->H(La1/b;Ljava/util/ArrayList;)V

    .line 379
    .line 380
    .line 381
    iget-object v2, v1, Lqa/l;->m:Lja/n;

    .line 382
    .line 383
    invoke-static {v2}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    const-string v4, "LZ77Kzx9MeFk1aFQ\n"

    .line 387
    .line 388
    const-string v5, "SvuPeVMSRck=\n"

    .line 389
    .line 390
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    iget-object v2, v2, Lw0/e;->d:Landroid/view/View;

    .line 395
    .line 396
    invoke-static {v2, v4}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    sget-object v4, Lqa/j;->b:Lqa/j;

    .line 400
    .line 401
    invoke-virtual {v1, v2, v4}, Lqa/l;->c(Landroid/view/View;Lqa/j;)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v1, Lqa/l;->m:Lja/n;

    .line 405
    .line 406
    if-eqz v1, :cond_1d

    .line 407
    .line 408
    iget-object v1, v1, Lja/n;->n:Landroidx/leanback/widget/VerticalGridView;

    .line 409
    .line 410
    if-eqz v1, :cond_1d

    .line 411
    .line 412
    invoke-static {v1, v3}, Lcom/bumptech/glide/d;->D(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_c

    .line 416
    .line 417
    :cond_e
    const v7, 0x7f120024

    .line 418
    .line 419
    .line 420
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v7

    .line 424
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v7

    .line 428
    if-eqz v7, :cond_19

    .line 429
    .line 430
    invoke-virtual {v2}, Lqa/g;->a()Lqa/o;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    iget-object v7, v6, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 435
    .line 436
    iget-object v7, v7, Lta/a;->C:Ljava/util/ArrayList;

    .line 437
    .line 438
    const-string v8, "wV7C4vsWesLEQ9ji5Aprwg==\n"

    .line 439
    .line 440
    const-string v9, "rTe0h6hjGLY=\n"

    .line 441
    .line 442
    invoke-static {v8, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v8

    .line 446
    invoke-static {v7, v8}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iget-object v8, v6, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 450
    .line 451
    iget v8, v8, Lta/a;->f:I

    .line 452
    .line 453
    if-nez v8, :cond_f

    .line 454
    .line 455
    const v8, 0x7f120025

    .line 456
    .line 457
    .line 458
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    const-string v9, "t0s4eYSA10K3BmIE3ts=\n"

    .line 463
    .line 464
    const-string v10, "0C5MKvDyviw=\n"

    .line 465
    .line 466
    invoke-static {v9, v10}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v9

    .line 470
    invoke-static {v8, v9}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    goto :goto_7

    .line 474
    :cond_f
    const v8, 0x7f120004

    .line 475
    .line 476
    .line 477
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    const-string v9, "CmmZgdCkE3MKJMP8iv8=\n"

    .line 482
    .line 483
    const-string v10, "bQzt0qTWeh0=\n"

    .line 484
    .line 485
    invoke-static {v9, v10}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v9

    .line 489
    invoke-static {v8, v9}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    :goto_7
    new-instance v9, Lqa/c;

    .line 493
    .line 494
    invoke-direct {v9, v2, v6, v5}, Lqa/c;-><init>(Lqa/g;Lorg/bitspark/android/Spark;Lorg/bitspark/android/beans/ChannelBean;)V

    .line 495
    .line 496
    .line 497
    new-instance v5, Lqa/d;

    .line 498
    .line 499
    invoke-direct {v5, v6, v3, v2}, Lqa/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    const-string v2, "fP8jmJ3dSh9D4zKY\n"

    .line 506
    .line 507
    const-string v6, "D4pB7PSpJno=\n"

    .line 508
    .line 509
    invoke-static {v2, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    const-string v2, "Y9Un0+PiFrJczybG/v8VuQ==\n"

    .line 513
    .line 514
    const-string v6, "EKBFp4qWetc=\n"

    .line 515
    .line 516
    invoke-static {v2, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    const-string v2, "qQ6Q4cDQMSKZF5v2wg==\n"

    .line 520
    .line 521
    const-string v6, "2nvylamkXUc=\n"

    .line 522
    .line 523
    invoke-static {v2, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    const-string v2, "uflOOBb+eaiG408tC+N6o4ngRS8U\n"

    .line 527
    .line 528
    const-string v6, "yowsTH+KFc0=\n"

    .line 529
    .line 530
    invoke-static {v2, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1}, Lqa/o;->b()Lqa/l;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    iput-object v9, v1, Lqa/l;->i:Lqa/c;

    .line 538
    .line 539
    iput-object v5, v1, Lqa/l;->j:Lqa/d;

    .line 540
    .line 541
    const-string v2, "dPS5MeAgU4tL6Kgx\n"

    .line 542
    .line 543
    const-string v5, "B4HbRYlUP+4=\n"

    .line 544
    .line 545
    invoke-static {v2, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    const-string v2, "qN3OeHOEq8CQ19Vt\n"

    .line 549
    .line 550
    const-string v5, "xLKtGQftxK4=\n"

    .line 551
    .line 552
    invoke-static {v2, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    iget-object v2, v1, Lqa/l;->n:Lja/p;

    .line 556
    .line 557
    iget-object v5, v1, Lqa/l;->a:Landroid/app/Activity;

    .line 558
    .line 559
    if-nez v2, :cond_13

    .line 560
    .line 561
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    iget-object v6, v1, Lqa/l;->f:Lw0/e;

    .line 566
    .line 567
    check-cast v6, Lja/h;

    .line 568
    .line 569
    iget-object v6, v6, Lja/h;->l:Landroid/widget/FrameLayout;

    .line 570
    .line 571
    sget v9, Lja/p;->o:I

    .line 572
    .line 573
    const v9, 0x7f0e0126

    .line 574
    .line 575
    .line 576
    invoke-static {v2, v9, v6}, Lw0/c;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Lw0/e;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    check-cast v2, Lja/p;

    .line 581
    .line 582
    iput-object v2, v1, Lqa/l;->n:Lja/p;

    .line 583
    .line 584
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    const-string v6, "kQh7NjLU93OZDmdsaeHi\n"

    .line 589
    .line 590
    const-string v9, "92cVQh2VgRY=\n"

    .line 591
    .line 592
    invoke-static {v6, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    invoke-static {v2, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    iget-object v6, v1, Lqa/l;->n:Lja/p;

    .line 601
    .line 602
    if-eqz v6, :cond_10

    .line 603
    .line 604
    iget-object v6, v6, Lja/p;->m:Landroid/widget/TextView;

    .line 605
    .line 606
    if-eqz v6, :cond_10

    .line 607
    .line 608
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 609
    .line 610
    .line 611
    :cond_10
    iget-object v2, v1, Lqa/l;->n:Lja/p;

    .line 612
    .line 613
    if-eqz v2, :cond_11

    .line 614
    .line 615
    iget-object v2, v2, Lja/p;->n:Landroidx/leanback/widget/VerticalGridView;

    .line 616
    .line 617
    if-eqz v2, :cond_11

    .line 618
    .line 619
    new-instance v6, Lsa/b;

    .line 620
    .line 621
    const-string v9, "1zmjczPO\n"

    .line 622
    .line 623
    const-string v10, "603LGkDwxp4=\n"

    .line 624
    .line 625
    invoke-static {v9, v10}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    const/16 v9, 0x8

    .line 629
    .line 630
    int-to-float v9, v9

    .line 631
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 632
    .line 633
    .line 634
    move-result-object v10

    .line 635
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 636
    .line 637
    .line 638
    move-result-object v10

    .line 639
    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 640
    .line 641
    mul-float v9, v9, v10

    .line 642
    .line 643
    float-to-int v9, v9

    .line 644
    invoke-direct {v6, v3, v3, v9, v3}, Lsa/b;-><init>(IIII)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 648
    .line 649
    .line 650
    :cond_11
    iget-object v2, v1, Lqa/l;->n:Lja/p;

    .line 651
    .line 652
    if-eqz v2, :cond_12

    .line 653
    .line 654
    iget-object v2, v2, Lja/p;->n:Landroidx/leanback/widget/VerticalGridView;

    .line 655
    .line 656
    if-eqz v2, :cond_12

    .line 657
    .line 658
    iget-object v6, v1, Lqa/l;->B:Landroidx/leanback/widget/d0;

    .line 659
    .line 660
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 661
    .line 662
    .line 663
    :cond_12
    new-instance v2, Lqa/h;

    .line 664
    .line 665
    const/4 v6, 0x3

    .line 666
    invoke-direct {v2, v1, v6}, Lqa/h;-><init>(Lqa/l;I)V

    .line 667
    .line 668
    .line 669
    iget-object v6, v1, Lqa/l;->y:Lqa/m;

    .line 670
    .line 671
    iput-object v2, v6, Lqa/m;->a:Li9/l;

    .line 672
    .line 673
    new-instance v2, Lqa/h;

    .line 674
    .line 675
    const/4 v6, 0x4

    .line 676
    invoke-direct {v2, v1, v6}, Lqa/h;-><init>(Lqa/l;I)V

    .line 677
    .line 678
    .line 679
    iget-object v6, v1, Lqa/l;->z:Lqa/m;

    .line 680
    .line 681
    iput-object v2, v6, Lqa/m;->a:Li9/l;

    .line 682
    .line 683
    :cond_13
    iget-object v2, v1, Lqa/l;->A:La1/b;

    .line 684
    .line 685
    iget-object v6, v2, La1/b;->d:Ljava/lang/Object;

    .line 686
    .line 687
    check-cast v6, Ljava/util/ArrayList;

    .line 688
    .line 689
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 690
    .line 691
    .line 692
    move-result v9

    .line 693
    iget-object v10, v2, La1/b;->b:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v10, Landroidx/leanback/widget/e0;

    .line 696
    .line 697
    if-nez v9, :cond_14

    .line 698
    .line 699
    goto :goto_8

    .line 700
    :cond_14
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v10, v3, v9}, Landroidx/leanback/widget/e0;->d(II)V

    .line 704
    .line 705
    .line 706
    :goto_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    iget-object v2, v2, La1/b;->d:Ljava/lang/Object;

    .line 711
    .line 712
    check-cast v2, Ljava/util/ArrayList;

    .line 713
    .line 714
    if-nez v3, :cond_16

    .line 715
    .line 716
    const v3, 0x7f1200fa

    .line 717
    .line 718
    .line 719
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v3

    .line 723
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 724
    .line 725
    .line 726
    move-result v6

    .line 727
    invoke-virtual {v2, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v10, v6, v4}, Landroidx/leanback/widget/e0;->c(II)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 738
    .line 739
    .line 740
    move-result v6

    .line 741
    if-nez v6, :cond_15

    .line 742
    .line 743
    goto :goto_9

    .line 744
    :cond_15
    invoke-virtual {v2, v3, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 745
    .line 746
    .line 747
    invoke-virtual {v10, v3, v6}, Landroidx/leanback/widget/e0;->c(II)V

    .line 748
    .line 749
    .line 750
    :cond_16
    :goto_9
    const v3, 0x7f120017

    .line 751
    .line 752
    .line 753
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v3

    .line 757
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 758
    .line 759
    .line 760
    move-result v5

    .line 761
    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v10, v5, v4}, Landroidx/leanback/widget/e0;->c(II)V

    .line 765
    .line 766
    .line 767
    iget-object v3, v1, Lqa/l;->E:Ljava/util/ArrayList;

    .line 768
    .line 769
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 770
    .line 771
    .line 772
    move-result-object v5

    .line 773
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 774
    .line 775
    .line 776
    move-result v6

    .line 777
    if-eqz v6, :cond_17

    .line 778
    .line 779
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v6

    .line 783
    check-cast v6, Lorg/bitspark/android/beans/Menu;

    .line 784
    .line 785
    invoke-virtual {v6}, Lorg/bitspark/android/beans/Menu;->getName()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v7

    .line 789
    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v7

    .line 793
    invoke-virtual {v6, v7}, Lorg/bitspark/android/beans/Menu;->setSelected(Z)V

    .line 794
    .line 795
    .line 796
    goto :goto_a

    .line 797
    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 798
    .line 799
    .line 800
    move-result v5

    .line 801
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 802
    .line 803
    .line 804
    move-result v6

    .line 805
    if-nez v6, :cond_18

    .line 806
    .line 807
    goto :goto_b

    .line 808
    :cond_18
    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 809
    .line 810
    .line 811
    invoke-virtual {v10, v5, v6}, Landroidx/leanback/widget/e0;->c(II)V

    .line 812
    .line 813
    .line 814
    :goto_b
    iget-object v2, v1, Lqa/l;->n:Lja/p;

    .line 815
    .line 816
    invoke-static {v2}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 817
    .line 818
    .line 819
    const-string v3, "8+6Ksqb0L6q6pdDJ\n"

    .line 820
    .line 821
    const-string v5, "lIv+4MmbW4I=\n"

    .line 822
    .line 823
    invoke-static {v3, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    iget-object v2, v2, Lw0/e;->d:Landroid/view/View;

    .line 828
    .line 829
    invoke-static {v2, v3}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    sget-object v3, Lqa/j;->c:Lqa/j;

    .line 833
    .line 834
    invoke-virtual {v1, v2, v3}, Lqa/l;->c(Landroid/view/View;Lqa/j;)V

    .line 835
    .line 836
    .line 837
    iget-object v1, v1, Lqa/l;->n:Lja/p;

    .line 838
    .line 839
    if-eqz v1, :cond_1d

    .line 840
    .line 841
    iget-object v1, v1, Lja/p;->n:Landroidx/leanback/widget/VerticalGridView;

    .line 842
    .line 843
    if-eqz v1, :cond_1d

    .line 844
    .line 845
    invoke-static {v1, v4}, Lcom/bumptech/glide/d;->D(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 846
    .line 847
    .line 848
    goto/16 :goto_c

    .line 849
    .line 850
    :cond_19
    const v4, 0x7f120008

    .line 851
    .line 852
    .line 853
    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v4

    .line 857
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    if-eqz v1, :cond_1d

    .line 862
    .line 863
    invoke-virtual {v2}, Lqa/g;->a()Lqa/o;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    new-instance v4, Lqa/d;

    .line 868
    .line 869
    invoke-direct {v4, v2, v6}, Lqa/d;-><init>(Lqa/g;Lorg/bitspark/android/Spark;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    .line 874
    .line 875
    const-string v2, "Kzf7eP0=\n"

    .line 876
    .line 877
    const-string v5, "SFuSG5ar8YA=\n"

    .line 878
    .line 879
    invoke-static {v2, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v1}, Lqa/o;->b()Lqa/l;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    iput-object v4, v1, Lqa/l;->k:Lqa/d;

    .line 887
    .line 888
    iget-object v2, v1, Lqa/l;->o:Lja/j;

    .line 889
    .line 890
    if-nez v2, :cond_1c

    .line 891
    .line 892
    iget-object v2, v1, Lqa/l;->a:Landroid/app/Activity;

    .line 893
    .line 894
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 895
    .line 896
    .line 897
    move-result-object v4

    .line 898
    iget-object v5, v1, Lqa/l;->f:Lw0/e;

    .line 899
    .line 900
    check-cast v5, Lja/h;

    .line 901
    .line 902
    iget-object v5, v5, Lja/h;->l:Landroid/widget/FrameLayout;

    .line 903
    .line 904
    sget v6, Lja/j;->o:I

    .line 905
    .line 906
    const v6, 0x7f0e0123

    .line 907
    .line 908
    .line 909
    invoke-static {v4, v6, v5}, Lw0/c;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Lw0/e;

    .line 910
    .line 911
    .line 912
    move-result-object v4

    .line 913
    check-cast v4, Lja/j;

    .line 914
    .line 915
    iput-object v4, v1, Lqa/l;->o:Lja/j;

    .line 916
    .line 917
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 918
    .line 919
    .line 920
    move-result-object v2

    .line 921
    const-string v4, "NDg4wyX6OJc8PiSZfs8t\n"

    .line 922
    .line 923
    const-string v5, "UldWtwq7TvI=\n"

    .line 924
    .line 925
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v4

    .line 929
    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 930
    .line 931
    .line 932
    move-result-object v2

    .line 933
    iget-object v4, v1, Lqa/l;->o:Lja/j;

    .line 934
    .line 935
    if-eqz v4, :cond_1a

    .line 936
    .line 937
    iget-object v4, v4, Lja/j;->m:Landroid/widget/TextView;

    .line 938
    .line 939
    if-eqz v4, :cond_1a

    .line 940
    .line 941
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 942
    .line 943
    .line 944
    :cond_1a
    iget-object v2, v1, Lqa/l;->o:Lja/j;

    .line 945
    .line 946
    if-eqz v2, :cond_1b

    .line 947
    .line 948
    iget-object v2, v2, Lja/j;->n:Landroidx/leanback/widget/VerticalGridView;

    .line 949
    .line 950
    if-eqz v2, :cond_1b

    .line 951
    .line 952
    iget-object v4, v1, Lqa/l;->x:Landroidx/leanback/widget/d0;

    .line 953
    .line 954
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 955
    .line 956
    .line 957
    :cond_1b
    new-instance v2, Lqa/h;

    .line 958
    .line 959
    invoke-direct {v2, v1, v3}, Lqa/h;-><init>(Lqa/l;I)V

    .line 960
    .line 961
    .line 962
    iget-object v4, v1, Lqa/l;->v:Lqa/m;

    .line 963
    .line 964
    iput-object v2, v4, Lqa/m;->a:Li9/l;

    .line 965
    .line 966
    :cond_1c
    iget-object v2, v1, Lqa/l;->D:Ljava/util/ArrayList;

    .line 967
    .line 968
    iget-object v4, v1, Lqa/l;->w:La1/b;

    .line 969
    .line 970
    invoke-static {v4, v2}, Lcom/bumptech/glide/d;->H(La1/b;Ljava/util/ArrayList;)V

    .line 971
    .line 972
    .line 973
    iget-object v2, v1, Lqa/l;->o:Lja/j;

    .line 974
    .line 975
    invoke-static {v2}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 976
    .line 977
    .line 978
    const-string v4, "nD0duIzad//VdkfD\n"

    .line 979
    .line 980
    const-string v5, "+1hp6uO1A9c=\n"

    .line 981
    .line 982
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v4

    .line 986
    iget-object v2, v2, Lw0/e;->d:Landroid/view/View;

    .line 987
    .line 988
    invoke-static {v2, v4}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    sget-object v4, Lqa/j;->d:Lqa/j;

    .line 992
    .line 993
    invoke-virtual {v1, v2, v4}, Lqa/l;->c(Landroid/view/View;Lqa/j;)V

    .line 994
    .line 995
    .line 996
    iget-object v1, v1, Lqa/l;->o:Lja/j;

    .line 997
    .line 998
    if-eqz v1, :cond_1d

    .line 999
    .line 1000
    iget-object v1, v1, Lja/j;->n:Landroidx/leanback/widget/VerticalGridView;

    .line 1001
    .line 1002
    if-eqz v1, :cond_1d

    .line 1003
    .line 1004
    invoke-static {v1, v3}, Lcom/bumptech/glide/d;->D(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 1005
    .line 1006
    .line 1007
    :cond_1d
    :goto_c
    sget-object v1, Lw8/l;->a:Lw8/l;

    .line 1008
    .line 1009
    return-object v1

    .line 1010
    nop

    .line 1011
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
