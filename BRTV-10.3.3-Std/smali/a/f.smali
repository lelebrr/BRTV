.class public final La/f;
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
    iput p1, p0, La/f;->a:I

    .line 2
    .line 3
    iput-object p2, p0, La/f;->b:Ljava/lang/Object;

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
    .locals 15

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const v2, 0x7f120046

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x0

    .line 10
    iget v7, p0, La/f;->a:I

    .line 11
    .line 12
    packed-switch v7, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lq1/n1;

    .line 18
    .line 19
    invoke-virtual {v0}, Lq1/n1;->a()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lq1/k0;

    .line 26
    .line 27
    invoke-virtual {v0}, Lq1/k0;->h()Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 34
    .line 35
    iget-boolean v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a:Z

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "onCreate after delay. The local service been started: "

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a:Z

    .line 55
    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    new-array v1, v4, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v0, v1, v6

    .line 61
    .line 62
    const-string v2, "The local service has not been been started, stopping it"

    .line 63
    .line 64
    aput-object v2, v1, v5

    .line 65
    .line 66
    sget-object v2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->d:Lv4/b;

    .line 67
    .line 68
    iget-object v3, v2, Lv4/b;->a:Ljava/lang/String;

    .line 69
    .line 70
    const-string v4, "[Instance: %s] %s"

    .line 71
    .line 72
    invoke-virtual {v2, v4, v1}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 80
    .line 81
    .line 82
    :cond_0
    return-void

    .line 83
    :pswitch_2
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lm1/b;

    .line 86
    .line 87
    iget-object v1, v0, Lm1/b;->f:Landroidx/media/MediaBrowserServiceCompat;

    .line 88
    .line 89
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Lp/e;

    .line 90
    .line 91
    iget-object v0, v0, Lm1/b;->d:Lm1/p;

    .line 92
    .line 93
    iget-object v0, v0, Lm1/p;->a:Landroid/os/Messenger;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_3
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lka/l0;

    .line 106
    .line 107
    iget-object v1, v0, Lka/l0;->d:Lka/m0;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v0, v0, Lka/l0;->d:Lka/m0;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v1, v6, v0}, Lba/d;->a(Landroid/content/Context;ILjava/lang/String;)Lba/d;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lba/d;->show()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_4
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v0, Lka/j0;

    .line 134
    .line 135
    iget-object v0, v0, Lka/j0;->b:Lka/m0;

    .line 136
    .line 137
    iget-object v0, v0, Lka/m0;->g0:Lorg/bitspark/android/view/CircularProgressBar;

    .line 138
    .line 139
    const/16 v1, 0x8

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lorg/bitspark/android/view/CircularProgressBar;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_5
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v0, Landroidx/appcompat/widget/r0;

    .line 148
    .line 149
    iget-object v1, v0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v1, Lka/i0;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget-object v2, v0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v2, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroidx/fragment/app/j0;->z(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Lsa/l;

    .line 170
    .line 171
    if-eqz v1, :cond_1

    .line 172
    .line 173
    iget-object v1, v1, Lsa/l;->U:Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    .line 175
    if-eqz v1, :cond_1

    .line 176
    .line 177
    iget v2, v0, Landroidx/appcompat/widget/r0;->b:I

    .line 178
    .line 179
    invoke-static {v1, v2}, Lo9/d;->z(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 180
    .line 181
    .line 182
    :cond_1
    const-string v1, "UudbuheSsshozk2fFYu2z3A=\n"

    .line 183
    .line 184
    const-string v2, "BIg//nLm06E=\n"

    .line 185
    .line 186
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v3, "zCV3El7XjJqzRH5SyFY=\n"

    .line 196
    .line 197
    const-string v4, "KaP69PJ2ZBs=\n"

    .line 198
    .line 199
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v0, v0, Landroidx/appcompat/widget/r0;->d:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Lka/i0;

    .line 209
    .line 210
    invoke-virtual {v0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 226
    .line 227
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :pswitch_6
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v0, Lka/i0;

    .line 234
    .line 235
    invoke-virtual {v0}, Lka/i0;->Q()V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_7
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v0, Landroid/widget/TextView;

    .line 242
    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    const-string v3, "dqfzKPxHEQRTrfA5\n"

    .line 252
    .line 253
    const-string v5, "PsieTbo1cGM=\n"

    .line 254
    .line 255
    invoke-static {v3, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v7, "wGUgDzSxoTrBVD05ObrvLcZubm0=\n"

    .line 265
    .line 266
    const-string v8, "swBUTVXfz18=\n"

    .line 267
    .line 268
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v7, "CJ7JPu8WrA==\n"

    .line 279
    .line 280
    const-string v8, "NaP0A9IrkSo=\n"

    .line 281
    .line 282
    invoke-static {v7, v8, v5, v2}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    sget-boolean v7, Lorg/bitspark/android/utils/m;->b:Z

    .line 287
    .line 288
    invoke-static {v3, v5}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    if-eqz v1, :cond_3

    .line 292
    .line 293
    if-nez v2, :cond_2

    .line 294
    .line 295
    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    sget-object v2, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 300
    .line 301
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    const v3, 0x7f0600c7

    .line 306
    .line 307
    .line 308
    invoke-static {v2, v3}, Lu7/d;->i(Landroid/content/Context;I)I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    sget-object v3, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 313
    .line 314
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    const v5, 0x7f0600c6

    .line 319
    .line 320
    .line 321
    invoke-static {v3, v5}, Lu7/d;->i(Landroid/content/Context;I)I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    new-instance v13, Landroid/graphics/LinearGradient;

    .line 326
    .line 327
    int-to-float v8, v1

    .line 328
    filled-new-array {v2, v3}, [I

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    new-array v11, v4, [F

    .line 333
    .line 334
    fill-array-data v11, :array_0

    .line 335
    .line 336
    .line 337
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 338
    .line 339
    const/4 v7, 0x0

    .line 340
    const/4 v9, 0x0

    .line 341
    const/4 v6, 0x0

    .line 342
    move-object v5, v13

    .line 343
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 354
    .line 355
    .line 356
    :cond_3
    :goto_0
    return-void

    .line 357
    :pswitch_8
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v0, Lka/c;

    .line 360
    .line 361
    iget-object v1, v0, Lka/c;->b:Lka/e;

    .line 362
    .line 363
    invoke-virtual {v1}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    iget-object v0, v0, Lka/c;->b:Lka/e;

    .line 368
    .line 369
    invoke-virtual {v0}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-static {v1, v6, v0}, Lba/d;->a(Landroid/content/Context;ILjava/lang/String;)Lba/d;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lba/d;->show()V

    .line 382
    .line 383
    .line 384
    return-void

    .line 385
    :pswitch_9
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v0, Landroidx/leanback/widget/picker/DatePicker;

    .line 388
    .line 389
    iget v1, v0, Landroidx/leanback/widget/picker/DatePicker;->u:I

    .line 390
    .line 391
    iget v2, v0, Landroidx/leanback/widget/picker/DatePicker;->t:I

    .line 392
    .line 393
    iget v7, v0, Landroidx/leanback/widget/picker/DatePicker;->v:I

    .line 394
    .line 395
    filled-new-array {v1, v2, v7}, [I

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    const/4 v2, 0x1

    .line 400
    const/4 v7, 0x1

    .line 401
    :goto_1
    if-ltz v4, :cond_d

    .line 402
    .line 403
    aget v8, v1, v4

    .line 404
    .line 405
    if-gez v8, :cond_4

    .line 406
    .line 407
    goto/16 :goto_a

    .line 408
    .line 409
    :cond_4
    sget-object v9, Landroidx/leanback/widget/picker/DatePicker;->C:[I

    .line 410
    .line 411
    aget v9, v9, v4

    .line 412
    .line 413
    iget-object v10, v0, Landroidx/leanback/widget/picker/Picker;->c:Ljava/util/ArrayList;

    .line 414
    .line 415
    if-nez v10, :cond_5

    .line 416
    .line 417
    move-object v8, v3

    .line 418
    goto :goto_2

    .line 419
    :cond_5
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v8

    .line 423
    check-cast v8, Li1/d;

    .line 424
    .line 425
    :goto_2
    if-eqz v2, :cond_7

    .line 426
    .line 427
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->y:Ljava/util/Calendar;

    .line 428
    .line 429
    invoke-virtual {v10, v9}, Ljava/util/Calendar;->get(I)I

    .line 430
    .line 431
    .line 432
    move-result v10

    .line 433
    iget v11, v8, Li1/d;->b:I

    .line 434
    .line 435
    if-eq v10, v11, :cond_6

    .line 436
    .line 437
    iput v10, v8, Li1/d;->b:I

    .line 438
    .line 439
    :goto_3
    const/4 v10, 0x1

    .line 440
    goto :goto_4

    .line 441
    :cond_6
    const/4 v10, 0x0

    .line 442
    goto :goto_4

    .line 443
    :cond_7
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 444
    .line 445
    invoke-virtual {v10, v9}, Ljava/util/Calendar;->getActualMinimum(I)I

    .line 446
    .line 447
    .line 448
    move-result v10

    .line 449
    iget v11, v8, Li1/d;->b:I

    .line 450
    .line 451
    if-eq v10, v11, :cond_6

    .line 452
    .line 453
    iput v10, v8, Li1/d;->b:I

    .line 454
    .line 455
    goto :goto_3

    .line 456
    :goto_4
    if-eqz v7, :cond_9

    .line 457
    .line 458
    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->z:Ljava/util/Calendar;

    .line 459
    .line 460
    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    .line 461
    .line 462
    .line 463
    move-result v11

    .line 464
    iget v12, v8, Li1/d;->c:I

    .line 465
    .line 466
    if-eq v11, v12, :cond_8

    .line 467
    .line 468
    iput v11, v8, Li1/d;->c:I

    .line 469
    .line 470
    :goto_5
    const/4 v11, 0x1

    .line 471
    goto :goto_6

    .line 472
    :cond_8
    const/4 v11, 0x0

    .line 473
    :goto_6
    or-int/2addr v10, v11

    .line 474
    goto :goto_7

    .line 475
    :cond_9
    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 476
    .line 477
    invoke-virtual {v11, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 478
    .line 479
    .line 480
    move-result v11

    .line 481
    iget v12, v8, Li1/d;->c:I

    .line 482
    .line 483
    if-eq v11, v12, :cond_8

    .line 484
    .line 485
    iput v11, v8, Li1/d;->c:I

    .line 486
    .line 487
    goto :goto_5

    .line 488
    :goto_7
    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 489
    .line 490
    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    .line 491
    .line 492
    .line 493
    move-result v11

    .line 494
    iget-object v12, v0, Landroidx/leanback/widget/picker/DatePicker;->y:Ljava/util/Calendar;

    .line 495
    .line 496
    invoke-virtual {v12, v9}, Ljava/util/Calendar;->get(I)I

    .line 497
    .line 498
    .line 499
    move-result v12

    .line 500
    if-ne v11, v12, :cond_a

    .line 501
    .line 502
    const/4 v11, 0x1

    .line 503
    goto :goto_8

    .line 504
    :cond_a
    const/4 v11, 0x0

    .line 505
    :goto_8
    and-int/2addr v2, v11

    .line 506
    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 507
    .line 508
    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    .line 509
    .line 510
    .line 511
    move-result v11

    .line 512
    iget-object v12, v0, Landroidx/leanback/widget/picker/DatePicker;->z:Ljava/util/Calendar;

    .line 513
    .line 514
    invoke-virtual {v12, v9}, Ljava/util/Calendar;->get(I)I

    .line 515
    .line 516
    .line 517
    move-result v12

    .line 518
    if-ne v11, v12, :cond_b

    .line 519
    .line 520
    const/4 v11, 0x1

    .line 521
    goto :goto_9

    .line 522
    :cond_b
    const/4 v11, 0x0

    .line 523
    :goto_9
    and-int/2addr v7, v11

    .line 524
    if-eqz v10, :cond_c

    .line 525
    .line 526
    aget v10, v1, v4

    .line 527
    .line 528
    invoke-virtual {v0, v10, v8}, Landroidx/leanback/widget/picker/Picker;->b(ILi1/d;)V

    .line 529
    .line 530
    .line 531
    :cond_c
    aget v8, v1, v4

    .line 532
    .line 533
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 534
    .line 535
    invoke-virtual {v10, v9}, Ljava/util/Calendar;->get(I)I

    .line 536
    .line 537
    .line 538
    move-result v9

    .line 539
    invoke-virtual {v0, v8, v9}, Landroidx/leanback/widget/picker/Picker;->c(II)V

    .line 540
    .line 541
    .line 542
    :goto_a
    add-int/lit8 v4, v4, -0x1

    .line 543
    .line 544
    goto/16 :goto_1

    .line 545
    .line 546
    :cond_d
    return-void

    .line 547
    :pswitch_a
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast v0, Lga/a;

    .line 550
    .line 551
    iget-object v0, v0, Lga/a;->b:Lga/b;

    .line 552
    .line 553
    iget-object v0, v0, Lga/b;->a:Landroid/widget/PopupWindow;

    .line 554
    .line 555
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 556
    .line 557
    .line 558
    return-void

    .line 559
    :pswitch_b
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 560
    .line 561
    check-cast v0, Lg/e;

    .line 562
    .line 563
    invoke-virtual {v0, v5}, Lg/g;->a(Z)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 567
    .line 568
    .line 569
    return-void

    .line 570
    :pswitch_c
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v0, Landroidx/core/app/h;

    .line 573
    .line 574
    iget-object v0, v0, Landroidx/core/app/h;->b:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v0, Lfa/x0;

    .line 577
    .line 578
    iget-object v1, v0, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 579
    .line 580
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    sub-int/2addr v1, v5

    .line 585
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k0;->notifyItemInserted(I)V

    .line 586
    .line 587
    .line 588
    return-void

    .line 589
    :pswitch_d
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v0, Lea/k;

    .line 592
    .line 593
    iget-object v0, v0, Lea/k;->b:Lorg/bitspark/android/Spark;

    .line 594
    .line 595
    iget-object v1, v0, Lorg/bitspark/android/Spark;->A0:Landroidx/leanback/widget/HorizontalGridView;

    .line 596
    .line 597
    iget-object v0, v0, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 598
    .line 599
    invoke-virtual {v0, v6}, Lta/a;->d(I)I

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    invoke-virtual {v1, v0}, Landroidx/leanback/widget/j;->smoothScrollToPosition(I)V

    .line 604
    .line 605
    .line 606
    return-void

    .line 607
    :pswitch_e
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 608
    .line 609
    check-cast v0, Lea/x;

    .line 610
    .line 611
    iget-object v0, v0, Lea/x;->b:Lorg/bitspark/android/Spark;

    .line 612
    .line 613
    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->T()V

    .line 614
    .line 615
    .line 616
    return-void

    .line 617
    :pswitch_f
    iget-object v2, p0, La/f;->b:Ljava/lang/Object;

    .line 618
    .line 619
    check-cast v2, Lda/b;

    .line 620
    .line 621
    iget-object v3, v2, Lda/b;->f:Ljava/io/File;

    .line 622
    .line 623
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    if-eqz v3, :cond_10

    .line 628
    .line 629
    array-length v4, v3

    .line 630
    const/4 v7, 0x0

    .line 631
    const/4 v8, 0x0

    .line 632
    :goto_b
    if-ge v6, v4, :cond_f

    .line 633
    .line 634
    aget-object v9, v3, v6

    .line 635
    .line 636
    int-to-long v10, v7

    .line 637
    if-nez v9, :cond_e

    .line 638
    .line 639
    move-wide v12, v0

    .line 640
    goto :goto_c

    .line 641
    :cond_e
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 642
    .line 643
    .line 644
    move-result-wide v12

    .line 645
    :goto_c
    add-long/2addr v12, v10

    .line 646
    long-to-int v7, v12

    .line 647
    add-int/2addr v8, v5

    .line 648
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    .line 649
    .line 650
    .line 651
    move-result-wide v10

    .line 652
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 653
    .line 654
    .line 655
    move-result-object v10

    .line 656
    iget-object v11, v2, Lda/b;->e:Ljava/util/Map;

    .line 657
    .line 658
    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    add-int/2addr v6, v5

    .line 662
    goto :goto_b

    .line 663
    :cond_f
    iget-object v0, v2, Lda/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 664
    .line 665
    int-to-long v3, v7

    .line 666
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 667
    .line 668
    .line 669
    iget-object v0, v2, Lda/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 670
    .line 671
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 672
    .line 673
    .line 674
    :cond_10
    return-void

    .line 675
    :pswitch_10
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 676
    .line 677
    check-cast v0, Lcom/tencent/bugly/proguard/au;

    .line 678
    .line 679
    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->a(Lcom/tencent/bugly/proguard/au;)V

    .line 680
    .line 681
    .line 682
    return-void

    .line 683
    :pswitch_11
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 684
    .line 685
    check-cast v0, Ljava/util/List;

    .line 686
    .line 687
    invoke-static {v0}, Lcom/tencent/bugly/proguard/ag;->c(Ljava/util/List;)V

    .line 688
    .line 689
    .line 690
    return-void

    .line 691
    :pswitch_12
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 692
    .line 693
    check-cast v0, Landroid/view/View;

    .line 694
    .line 695
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    const-string v2, "input_method"

    .line 700
    .line 701
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 706
    .line 707
    invoke-virtual {v1, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 708
    .line 709
    .line 710
    return-void

    .line 711
    :pswitch_13
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast v0, Lcom/bumptech/glide/o;

    .line 714
    .line 715
    iget-object v1, v0, Lcom/bumptech/glide/o;->c:Lk3/g;

    .line 716
    .line 717
    invoke-interface {v1, v0}, Lk3/g;->h(Lk3/i;)V

    .line 718
    .line 719
    .line 720
    return-void

    .line 721
    :pswitch_14
    sget-object v0, Lcom/tencent/mars/xlog/Log;->toastSupportContext:Landroid/content/Context;

    .line 722
    .line 723
    iget-object v1, p0, La/f;->b:Ljava/lang/Object;

    .line 724
    .line 725
    check-cast v1, Ljava/lang/String;

    .line 726
    .line 727
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 732
    .line 733
    .line 734
    return-void

    .line 735
    :pswitch_15
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 736
    .line 737
    check-cast v0, Lc6/c;

    .line 738
    .line 739
    iput-boolean v6, v0, Lc6/c;->b:Z

    .line 740
    .line 741
    iget-object v1, v0, Lc6/c;->d:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 744
    .line 745
    iget-object v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Lv0/d;

    .line 746
    .line 747
    if-eqz v2, :cond_11

    .line 748
    .line 749
    invoke-virtual {v2}, Lv0/d;->g()Z

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    if-eqz v2, :cond_11

    .line 754
    .line 755
    iget v1, v0, Lc6/c;->a:I

    .line 756
    .line 757
    invoke-virtual {v0, v1}, Lc6/c;->d(I)V

    .line 758
    .line 759
    .line 760
    goto :goto_d

    .line 761
    :cond_11
    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    .line 762
    .line 763
    if-ne v2, v4, :cond_12

    .line 764
    .line 765
    iget v0, v0, Lc6/c;->a:I

    .line 766
    .line 767
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    .line 768
    .line 769
    .line 770
    :cond_12
    :goto_d
    return-void

    .line 771
    :pswitch_16
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 772
    .line 773
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 774
    .line 775
    invoke-virtual {v0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->p()V

    .line 779
    .line 780
    .line 781
    return-void

    .line 782
    :pswitch_17
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 783
    .line 784
    check-cast v0, Landroidx/lifecycle/d0;

    .line 785
    .line 786
    iget-object v2, v0, Landroidx/lifecycle/d0;->a:Ljava/lang/Object;

    .line 787
    .line 788
    monitor-enter v2

    .line 789
    :try_start_0
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 790
    .line 791
    check-cast v0, Landroidx/lifecycle/d0;

    .line 792
    .line 793
    iget-object v0, v0, Landroidx/lifecycle/d0;->f:Ljava/lang/Object;

    .line 794
    .line 795
    iget-object v1, p0, La/f;->b:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast v1, Landroidx/lifecycle/d0;

    .line 798
    .line 799
    sget-object v3, Landroidx/lifecycle/d0;->k:Ljava/lang/Object;

    .line 800
    .line 801
    iput-object v3, v1, Landroidx/lifecycle/d0;->f:Ljava/lang/Object;

    .line 802
    .line 803
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    iget-object v1, p0, La/f;->b:Ljava/lang/Object;

    .line 805
    .line 806
    check-cast v1, Landroidx/lifecycle/d0;

    .line 807
    .line 808
    invoke-virtual {v1, v0}, Landroidx/lifecycle/d0;->j(Ljava/lang/Object;)V

    .line 809
    .line 810
    .line 811
    return-void

    .line 812
    :catchall_0
    move-exception v0

    .line 813
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    throw v0

    .line 815
    :pswitch_18
    iget-object v2, p0, La/f;->b:Ljava/lang/Object;

    .line 816
    .line 817
    check-cast v2, Landroidx/core/widget/h;

    .line 818
    .line 819
    iget-boolean v3, v2, Landroidx/core/widget/h;->o:Z

    .line 820
    .line 821
    if-nez v3, :cond_13

    .line 822
    .line 823
    goto/16 :goto_f

    .line 824
    .line 825
    :cond_13
    iget-boolean v3, v2, Landroidx/core/widget/h;->m:Z

    .line 826
    .line 827
    iget-object v4, v2, Landroidx/core/widget/h;->a:Landroidx/core/widget/a;

    .line 828
    .line 829
    if-eqz v3, :cond_14

    .line 830
    .line 831
    iput-boolean v6, v2, Landroidx/core/widget/h;->m:Z

    .line 832
    .line 833
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 834
    .line 835
    .line 836
    move-result-wide v7

    .line 837
    iput-wide v7, v4, Landroidx/core/widget/a;->e:J

    .line 838
    .line 839
    const-wide/16 v9, -0x1

    .line 840
    .line 841
    iput-wide v9, v4, Landroidx/core/widget/a;->g:J

    .line 842
    .line 843
    iput-wide v7, v4, Landroidx/core/widget/a;->f:J

    .line 844
    .line 845
    const/high16 v3, 0x3f000000    # 0.5f

    .line 846
    .line 847
    iput v3, v4, Landroidx/core/widget/a;->h:F

    .line 848
    .line 849
    :cond_14
    iget-wide v7, v4, Landroidx/core/widget/a;->g:J

    .line 850
    .line 851
    cmp-long v3, v7, v0

    .line 852
    .line 853
    if-lez v3, :cond_15

    .line 854
    .line 855
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 856
    .line 857
    .line 858
    move-result-wide v7

    .line 859
    iget-wide v9, v4, Landroidx/core/widget/a;->g:J

    .line 860
    .line 861
    iget v3, v4, Landroidx/core/widget/a;->i:I

    .line 862
    .line 863
    int-to-long v11, v3

    .line 864
    add-long/2addr v9, v11

    .line 865
    cmp-long v3, v7, v9

    .line 866
    .line 867
    if-lez v3, :cond_15

    .line 868
    .line 869
    goto :goto_e

    .line 870
    :cond_15
    invoke-virtual {v2}, Landroidx/core/widget/h;->e()Z

    .line 871
    .line 872
    .line 873
    move-result v3

    .line 874
    if-nez v3, :cond_16

    .line 875
    .line 876
    :goto_e
    iput-boolean v6, v2, Landroidx/core/widget/h;->o:Z

    .line 877
    .line 878
    goto :goto_f

    .line 879
    :cond_16
    iget-boolean v3, v2, Landroidx/core/widget/h;->n:Z

    .line 880
    .line 881
    iget-object v5, v2, Landroidx/core/widget/h;->c:Landroid/widget/ListView;

    .line 882
    .line 883
    if-eqz v3, :cond_17

    .line 884
    .line 885
    iput-boolean v6, v2, Landroidx/core/widget/h;->n:Z

    .line 886
    .line 887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 888
    .line 889
    .line 890
    move-result-wide v9

    .line 891
    const/4 v13, 0x0

    .line 892
    const/4 v14, 0x0

    .line 893
    const/4 v11, 0x3

    .line 894
    const/4 v12, 0x0

    .line 895
    move-wide v7, v9

    .line 896
    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 897
    .line 898
    .line 899
    move-result-object v3

    .line 900
    invoke-virtual {v5, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 901
    .line 902
    .line 903
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 904
    .line 905
    .line 906
    :cond_17
    iget-wide v6, v4, Landroidx/core/widget/a;->f:J

    .line 907
    .line 908
    cmp-long v3, v6, v0

    .line 909
    .line 910
    if-eqz v3, :cond_18

    .line 911
    .line 912
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 913
    .line 914
    .line 915
    move-result-wide v0

    .line 916
    invoke-virtual {v4, v0, v1}, Landroidx/core/widget/a;->a(J)F

    .line 917
    .line 918
    .line 919
    move-result v3

    .line 920
    const/high16 v6, -0x3f800000    # -4.0f

    .line 921
    .line 922
    mul-float v6, v6, v3

    .line 923
    .line 924
    mul-float v6, v6, v3

    .line 925
    .line 926
    const/high16 v7, 0x40800000    # 4.0f

    .line 927
    .line 928
    mul-float v3, v3, v7

    .line 929
    .line 930
    add-float/2addr v3, v6

    .line 931
    iget-wide v6, v4, Landroidx/core/widget/a;->f:J

    .line 932
    .line 933
    sub-long v6, v0, v6

    .line 934
    .line 935
    iput-wide v0, v4, Landroidx/core/widget/a;->f:J

    .line 936
    .line 937
    long-to-float v0, v6

    .line 938
    mul-float v0, v0, v3

    .line 939
    .line 940
    iget v1, v4, Landroidx/core/widget/a;->d:F

    .line 941
    .line 942
    mul-float v0, v0, v1

    .line 943
    .line 944
    float-to-int v0, v0

    .line 945
    iget-object v1, v2, Landroidx/core/widget/h;->q:Landroidx/appcompat/widget/s1;

    .line 946
    .line 947
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 948
    .line 949
    .line 950
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 951
    .line 952
    invoke-virtual {v5, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 953
    .line 954
    .line 955
    :goto_f
    return-void

    .line 956
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    .line 957
    .line 958
    const-string v1, "Cannot compute scroll delta before calling start()"

    .line 959
    .line 960
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    throw v0

    .line 964
    :pswitch_19
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 965
    .line 966
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 967
    .line 968
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->v()Z

    .line 969
    .line 970
    .line 971
    return-void

    .line 972
    :pswitch_1a
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 973
    .line 974
    check-cast v0, Landroidx/appcompat/widget/s1;

    .line 975
    .line 976
    iput-object v3, v0, Landroidx/appcompat/widget/s1;->l:La/f;

    .line 977
    .line 978
    invoke-virtual {v0}, Landroidx/appcompat/widget/s1;->drawableStateChanged()V

    .line 979
    .line 980
    .line 981
    return-void

    .line 982
    :pswitch_1b
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 983
    .line 984
    check-cast v0, Landroidx/appcompat/app/s0;

    .line 985
    .line 986
    iget-object v1, v0, Landroidx/appcompat/app/s0;->s:Landroidx/appcompat/app/z;

    .line 987
    .line 988
    invoke-virtual {v0}, Landroidx/appcompat/app/s0;->V()Landroid/view/Menu;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    instance-of v2, v0, Lk/l;

    .line 993
    .line 994
    if-eqz v2, :cond_19

    .line 995
    .line 996
    move-object v2, v0

    .line 997
    check-cast v2, Lk/l;

    .line 998
    .line 999
    goto :goto_10

    .line 1000
    :cond_19
    move-object v2, v3

    .line 1001
    :goto_10
    if-eqz v2, :cond_1a

    .line 1002
    .line 1003
    invoke-virtual {v2}, Lk/l;->y()V

    .line 1004
    .line 1005
    .line 1006
    :cond_1a
    :try_start_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v1, v6, v0}, Landroidx/appcompat/app/z;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 1010
    .line 1011
    .line 1012
    move-result v4

    .line 1013
    if-eqz v4, :cond_1b

    .line 1014
    .line 1015
    invoke-virtual {v1, v6, v3, v0}, Landroidx/appcompat/app/z;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v1

    .line 1019
    if-nez v1, :cond_1c

    .line 1020
    .line 1021
    goto :goto_11

    .line 1022
    :catchall_1
    move-exception v0

    .line 1023
    goto :goto_12

    .line 1024
    :cond_1b
    :goto_11
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1025
    .line 1026
    .line 1027
    :cond_1c
    if-eqz v2, :cond_1d

    .line 1028
    .line 1029
    invoke-virtual {v2}, Lk/l;->x()V

    .line 1030
    .line 1031
    .line 1032
    :cond_1d
    return-void

    .line 1033
    :goto_12
    if-eqz v2, :cond_1e

    .line 1034
    .line 1035
    invoke-virtual {v2}, Lk/l;->x()V

    .line 1036
    .line 1037
    .line 1038
    :cond_1e
    throw v0

    .line 1039
    :pswitch_1c
    :try_start_3
    iget-object v0, p0, La/f;->b:Ljava/lang/Object;

    .line 1040
    .line 1041
    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 1042
    .line 1043
    invoke-static {v0}, Landroidx/activity/ComponentActivity;->h(Landroidx/activity/ComponentActivity;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1044
    .line 1045
    .line 1046
    goto :goto_13

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    const-string v2, "Can not perform this action after onSaveInstanceState"

    .line 1053
    .line 1054
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1055
    .line 1056
    .line 1057
    move-result v1

    .line 1058
    if-eqz v1, :cond_1f

    .line 1059
    .line 1060
    :goto_13
    return-void

    .line 1061
    :cond_1f
    throw v0

    .line 1062
    nop

    .line 1063
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
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
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
