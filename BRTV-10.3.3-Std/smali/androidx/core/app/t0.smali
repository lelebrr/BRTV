.class public final Landroidx/core/app/t0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/core/app/n;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/Notification$Builder;

.field public final c:Landroidx/core/app/u;

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/core/app/u;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Landroidx/core/app/t0;->d:Landroid/os/Bundle;

    .line 19
    .line 20
    iput-object v1, v0, Landroidx/core/app/t0;->c:Landroidx/core/app/u;

    .line 21
    .line 22
    iget-object v2, v1, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 23
    .line 24
    iput-object v2, v0, Landroidx/core/app/t0;->a:Landroid/content/Context;

    .line 25
    .line 26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v4, 0x1a

    .line 29
    .line 30
    if-lt v3, v4, :cond_0

    .line 31
    .line 32
    iget-object v5, v1, Landroidx/core/app/u;->x:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v2, v5}, Landroidx/core/app/p0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iput-object v5, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v5, Landroid/app/Notification$Builder;

    .line 42
    .line 43
    iget-object v6, v1, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v5, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 49
    .line 50
    :goto_0
    iget-object v5, v1, Landroidx/core/app/u;->B:Landroid/app/Notification;

    .line 51
    .line 52
    iget-object v6, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 53
    .line 54
    iget-wide v7, v5, Landroid/app/Notification;->when:J

    .line 55
    .line 56
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iget v7, v5, Landroid/app/Notification;->icon:I

    .line 61
    .line 62
    iget v8, v5, Landroid/app/Notification;->iconLevel:I

    .line 63
    .line 64
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iget-object v7, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    iget-object v7, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    iget-object v7, v5, Landroid/app/Notification;->vibrate:[J

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    iget v7, v5, Landroid/app/Notification;->ledARGB:I

    .line 88
    .line 89
    iget v9, v5, Landroid/app/Notification;->ledOnMS:I

    .line 90
    .line 91
    iget v10, v5, Landroid/app/Notification;->ledOffMS:I

    .line 92
    .line 93
    invoke-virtual {v6, v7, v9, v10}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iget v7, v5, Landroid/app/Notification;->flags:I

    .line 98
    .line 99
    const/4 v9, 0x2

    .line 100
    and-int/2addr v7, v9

    .line 101
    const/4 v10, 0x1

    .line 102
    const/4 v11, 0x0

    .line 103
    if-eqz v7, :cond_1

    .line 104
    .line 105
    const/4 v7, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    const/4 v7, 0x0

    .line 108
    :goto_1
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    iget v7, v5, Landroid/app/Notification;->flags:I

    .line 113
    .line 114
    and-int/lit8 v7, v7, 0x8

    .line 115
    .line 116
    if-eqz v7, :cond_2

    .line 117
    .line 118
    const/4 v7, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    const/4 v7, 0x0

    .line 121
    :goto_2
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    iget v7, v5, Landroid/app/Notification;->flags:I

    .line 126
    .line 127
    and-int/lit8 v7, v7, 0x10

    .line 128
    .line 129
    if-eqz v7, :cond_3

    .line 130
    .line 131
    const/4 v7, 0x1

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    const/4 v7, 0x0

    .line 134
    :goto_3
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    iget v7, v5, Landroid/app/Notification;->defaults:I

    .line 139
    .line 140
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    iget-object v7, v1, Landroidx/core/app/u;->e:Ljava/lang/CharSequence;

    .line 145
    .line 146
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    iget-object v7, v1, Landroidx/core/app/u;->f:Ljava/lang/CharSequence;

    .line 151
    .line 152
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    iget-object v7, v1, Landroidx/core/app/u;->g:Landroid/app/PendingIntent;

    .line 161
    .line 162
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iget-object v7, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 167
    .line 168
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    iget v7, v5, Landroid/app/Notification;->flags:I

    .line 173
    .line 174
    and-int/lit16 v7, v7, 0x80

    .line 175
    .line 176
    if-eqz v7, :cond_4

    .line 177
    .line 178
    const/4 v7, 0x1

    .line 179
    goto :goto_4

    .line 180
    :cond_4
    const/4 v7, 0x0

    .line 181
    :goto_4
    invoke-virtual {v6, v8, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    iget v7, v1, Landroidx/core/app/u;->n:I

    .line 190
    .line 191
    iget v12, v1, Landroidx/core/app/u;->o:I

    .line 192
    .line 193
    iget-boolean v13, v1, Landroidx/core/app/u;->p:Z

    .line 194
    .line 195
    invoke-virtual {v6, v7, v12, v13}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 196
    .line 197
    .line 198
    const/16 v6, 0x17

    .line 199
    .line 200
    if-ge v3, v6, :cond_6

    .line 201
    .line 202
    iget-object v2, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 203
    .line 204
    iget-object v3, v1, Landroidx/core/app/u;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 205
    .line 206
    if-nez v3, :cond_5

    .line 207
    .line 208
    move-object v3, v8

    .line 209
    goto :goto_5

    .line 210
    :cond_5
    invoke-virtual {v3}, Landroidx/core/graphics/drawable/IconCompat;->f()Landroid/graphics/Bitmap;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    :goto_5
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 215
    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_6
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 219
    .line 220
    iget-object v6, v1, Landroidx/core/app/u;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 221
    .line 222
    if-nez v6, :cond_7

    .line 223
    .line 224
    move-object v2, v8

    .line 225
    goto :goto_6

    .line 226
    :cond_7
    invoke-virtual {v6, v2}, Landroidx/core/graphics/drawable/IconCompat;->n(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    :goto_6
    invoke-static {v3, v2}, Landroidx/core/app/n0;->b(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 231
    .line 232
    .line 233
    :goto_7
    iget-object v2, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 234
    .line 235
    iget-object v3, v1, Landroidx/core/app/u;->m:Ljava/lang/CharSequence;

    .line 236
    .line 237
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget-boolean v3, v1, Landroidx/core/app/u;->k:Z

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    iget v3, v1, Landroidx/core/app/u;->i:I

    .line 248
    .line 249
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 250
    .line 251
    .line 252
    iget-object v2, v1, Landroidx/core/app/u;->l:Landroidx/core/app/k0;

    .line 253
    .line 254
    instance-of v3, v2, Landroidx/core/app/a0;

    .line 255
    .line 256
    if-eqz v3, :cond_11

    .line 257
    .line 258
    check-cast v2, Landroidx/core/app/a0;

    .line 259
    .line 260
    iget-object v3, v2, Landroidx/core/app/a0;->d:Landroid/app/PendingIntent;

    .line 261
    .line 262
    const v13, 0x7f080130

    .line 263
    .line 264
    .line 265
    if-nez v3, :cond_8

    .line 266
    .line 267
    iget-object v15, v2, Landroidx/core/app/a0;->h:Ljava/lang/Integer;

    .line 268
    .line 269
    iget-object v3, v2, Landroidx/core/app/a0;->e:Landroid/app/PendingIntent;

    .line 270
    .line 271
    const v14, 0x7f120058

    .line 272
    .line 273
    .line 274
    const v16, 0x7f06002d

    .line 275
    .line 276
    .line 277
    move-object v12, v2

    .line 278
    move-object/from16 v17, v3

    .line 279
    .line 280
    invoke-virtual/range {v12 .. v17}, Landroidx/core/app/a0;->c(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/p;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    goto :goto_8

    .line 285
    :cond_8
    iget-object v15, v2, Landroidx/core/app/a0;->h:Ljava/lang/Integer;

    .line 286
    .line 287
    const v16, 0x7f06002d

    .line 288
    .line 289
    .line 290
    const v14, 0x7f120057

    .line 291
    .line 292
    .line 293
    move-object v12, v2

    .line 294
    move-object/from16 v17, v3

    .line 295
    .line 296
    invoke-virtual/range {v12 .. v17}, Landroidx/core/app/a0;->c(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/p;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    :goto_8
    iget-object v6, v2, Landroidx/core/app/a0;->c:Landroid/app/PendingIntent;

    .line 301
    .line 302
    if-nez v6, :cond_9

    .line 303
    .line 304
    move-object v6, v8

    .line 305
    goto :goto_b

    .line 306
    :cond_9
    iget-boolean v7, v2, Landroidx/core/app/a0;->f:Z

    .line 307
    .line 308
    if-eqz v7, :cond_a

    .line 309
    .line 310
    const v12, 0x7f08012e

    .line 311
    .line 312
    .line 313
    const v13, 0x7f08012e

    .line 314
    .line 315
    .line 316
    goto :goto_9

    .line 317
    :cond_a
    const v12, 0x7f08012c

    .line 318
    .line 319
    .line 320
    const v13, 0x7f08012c

    .line 321
    .line 322
    .line 323
    :goto_9
    if-eqz v7, :cond_b

    .line 324
    .line 325
    const v7, 0x7f120056

    .line 326
    .line 327
    .line 328
    const v14, 0x7f120056

    .line 329
    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_b
    const v7, 0x7f120055

    .line 333
    .line 334
    .line 335
    const v14, 0x7f120055

    .line 336
    .line 337
    .line 338
    :goto_a
    iget-object v15, v2, Landroidx/core/app/a0;->g:Ljava/lang/Integer;

    .line 339
    .line 340
    const v16, 0x7f06002c

    .line 341
    .line 342
    .line 343
    move-object v12, v2

    .line 344
    move-object/from16 v17, v6

    .line 345
    .line 346
    invoke-virtual/range {v12 .. v17}, Landroidx/core/app/a0;->c(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/p;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    :goto_b
    new-instance v7, Ljava/util/ArrayList;

    .line 351
    .line 352
    const/4 v12, 0x3

    .line 353
    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    iget-object v2, v2, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 360
    .line 361
    iget-object v2, v2, Landroidx/core/app/u;->b:Ljava/util/ArrayList;

    .line 362
    .line 363
    if-eqz v2, :cond_f

    .line 364
    .line 365
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_f

    .line 374
    .line 375
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    check-cast v3, Landroidx/core/app/p;

    .line 380
    .line 381
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    const-string v12, "key_action_priority"

    .line 385
    .line 386
    iget-object v13, v3, Landroidx/core/app/p;->a:Landroid/os/Bundle;

    .line 387
    .line 388
    invoke-virtual {v13, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 389
    .line 390
    .line 391
    move-result v12

    .line 392
    if-eqz v12, :cond_d

    .line 393
    .line 394
    goto :goto_d

    .line 395
    :cond_d
    if-le v9, v10, :cond_e

    .line 396
    .line 397
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    add-int/lit8 v9, v9, -0x1

    .line 401
    .line 402
    :cond_e
    :goto_d
    if-eqz v6, :cond_c

    .line 403
    .line 404
    if-ne v9, v10, :cond_c

    .line 405
    .line 406
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    add-int/lit8 v9, v9, -0x1

    .line 410
    .line 411
    goto :goto_c

    .line 412
    :cond_f
    if-eqz v6, :cond_10

    .line 413
    .line 414
    if-lt v9, v10, :cond_10

    .line 415
    .line 416
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    :cond_10
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-eqz v3, :cond_12

    .line 428
    .line 429
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    check-cast v3, Landroidx/core/app/p;

    .line 434
    .line 435
    invoke-virtual {v0, v3}, Landroidx/core/app/t0;->a(Landroidx/core/app/p;)V

    .line 436
    .line 437
    .line 438
    goto :goto_e

    .line 439
    :cond_11
    iget-object v2, v1, Landroidx/core/app/u;->b:Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    if-eqz v3, :cond_12

    .line 450
    .line 451
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    check-cast v3, Landroidx/core/app/p;

    .line 456
    .line 457
    invoke-virtual {v0, v3}, Landroidx/core/app/t0;->a(Landroidx/core/app/p;)V

    .line 458
    .line 459
    .line 460
    goto :goto_f

    .line 461
    :cond_12
    iget-object v2, v1, Landroidx/core/app/u;->u:Landroid/os/Bundle;

    .line 462
    .line 463
    if-eqz v2, :cond_13

    .line 464
    .line 465
    iget-object v3, v0, Landroidx/core/app/t0;->d:Landroid/os/Bundle;

    .line 466
    .line 467
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 468
    .line 469
    .line 470
    :cond_13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 471
    .line 472
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 473
    .line 474
    iget-boolean v6, v1, Landroidx/core/app/u;->j:Z

    .line 475
    .line 476
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 477
    .line 478
    .line 479
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 480
    .line 481
    iget-boolean v6, v1, Landroidx/core/app/u;->r:Z

    .line 482
    .line 483
    invoke-static {v3, v6}, Landroidx/core/app/l0;->i(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 484
    .line 485
    .line 486
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 487
    .line 488
    iget-object v6, v1, Landroidx/core/app/u;->q:Ljava/lang/String;

    .line 489
    .line 490
    invoke-static {v3, v6}, Landroidx/core/app/l0;->g(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 491
    .line 492
    .line 493
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 494
    .line 495
    invoke-static {v3, v8}, Landroidx/core/app/l0;->j(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 496
    .line 497
    .line 498
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 499
    .line 500
    invoke-static {v3, v11}, Landroidx/core/app/l0;->h(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 501
    .line 502
    .line 503
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 504
    .line 505
    invoke-static {v3, v8}, Landroidx/core/app/m0;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 506
    .line 507
    .line 508
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 509
    .line 510
    iget v6, v1, Landroidx/core/app/u;->v:I

    .line 511
    .line 512
    invoke-static {v3, v6}, Landroidx/core/app/m0;->c(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 513
    .line 514
    .line 515
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 516
    .line 517
    iget v6, v1, Landroidx/core/app/u;->w:I

    .line 518
    .line 519
    invoke-static {v3, v6}, Landroidx/core/app/m0;->f(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 520
    .line 521
    .line 522
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 523
    .line 524
    invoke-static {v3, v8}, Landroidx/core/app/m0;->d(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 525
    .line 526
    .line 527
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 528
    .line 529
    iget-object v6, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 530
    .line 531
    iget-object v5, v5, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 532
    .line 533
    invoke-static {v3, v6, v5}, Landroidx/core/app/m0;->e(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    .line 534
    .line 535
    .line 536
    iget-object v3, v1, Landroidx/core/app/u;->C:Ljava/util/ArrayList;

    .line 537
    .line 538
    iget-object v5, v1, Landroidx/core/app/u;->c:Ljava/util/ArrayList;

    .line 539
    .line 540
    const/16 v6, 0x1c

    .line 541
    .line 542
    if-ge v2, v6, :cond_1a

    .line 543
    .line 544
    if-nez v5, :cond_14

    .line 545
    .line 546
    move-object v2, v8

    .line 547
    goto :goto_12

    .line 548
    :cond_14
    new-instance v2, Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 551
    .line 552
    .line 553
    move-result v7

    .line 554
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 562
    .line 563
    .line 564
    move-result v9

    .line 565
    if-eqz v9, :cond_17

    .line 566
    .line 567
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v9

    .line 571
    check-cast v9, Landroidx/core/app/b1;

    .line 572
    .line 573
    iget-object v10, v9, Landroidx/core/app/b1;->c:Ljava/lang/String;

    .line 574
    .line 575
    if-eqz v10, :cond_15

    .line 576
    .line 577
    goto :goto_11

    .line 578
    :cond_15
    iget-object v9, v9, Landroidx/core/app/b1;->a:Ljava/lang/CharSequence;

    .line 579
    .line 580
    if-eqz v9, :cond_16

    .line 581
    .line 582
    new-instance v10, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    const-string v12, "name:"

    .line 585
    .line 586
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v10

    .line 596
    goto :goto_11

    .line 597
    :cond_16
    const-string v10, ""

    .line 598
    .line 599
    :goto_11
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    goto :goto_10

    .line 603
    :cond_17
    :goto_12
    if-nez v2, :cond_18

    .line 604
    .line 605
    goto :goto_13

    .line 606
    :cond_18
    if-nez v3, :cond_19

    .line 607
    .line 608
    move-object v3, v2

    .line 609
    goto :goto_13

    .line 610
    :cond_19
    new-instance v7, Lp/f;

    .line 611
    .line 612
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 613
    .line 614
    .line 615
    move-result v9

    .line 616
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 617
    .line 618
    .line 619
    move-result v10

    .line 620
    add-int/2addr v10, v9

    .line 621
    invoke-direct {v7, v10}, Lp/f;-><init>(I)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v7, v2}, Lp/f;->addAll(Ljava/util/Collection;)Z

    .line 625
    .line 626
    .line 627
    invoke-virtual {v7, v3}, Lp/f;->addAll(Ljava/util/Collection;)Z

    .line 628
    .line 629
    .line 630
    new-instance v3, Ljava/util/ArrayList;

    .line 631
    .line 632
    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 633
    .line 634
    .line 635
    :cond_1a
    :goto_13
    if-eqz v3, :cond_1b

    .line 636
    .line 637
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    if-nez v2, :cond_1b

    .line 642
    .line 643
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    if-eqz v3, :cond_1b

    .line 652
    .line 653
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    check-cast v3, Ljava/lang/String;

    .line 658
    .line 659
    iget-object v7, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 660
    .line 661
    invoke-static {v7, v3}, Landroidx/core/app/m0;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 662
    .line 663
    .line 664
    goto :goto_14

    .line 665
    :cond_1b
    iget-object v2, v1, Landroidx/core/app/u;->d:Ljava/util/ArrayList;

    .line 666
    .line 667
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    if-lez v3, :cond_24

    .line 672
    .line 673
    iget-object v3, v1, Landroidx/core/app/u;->u:Landroid/os/Bundle;

    .line 674
    .line 675
    if-nez v3, :cond_1c

    .line 676
    .line 677
    new-instance v3, Landroid/os/Bundle;

    .line 678
    .line 679
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 680
    .line 681
    .line 682
    iput-object v3, v1, Landroidx/core/app/u;->u:Landroid/os/Bundle;

    .line 683
    .line 684
    :cond_1c
    iget-object v3, v1, Landroidx/core/app/u;->u:Landroid/os/Bundle;

    .line 685
    .line 686
    const-string v7, "android.car.EXTENSIONS"

    .line 687
    .line 688
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    if-nez v3, :cond_1d

    .line 693
    .line 694
    new-instance v3, Landroid/os/Bundle;

    .line 695
    .line 696
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 697
    .line 698
    .line 699
    :cond_1d
    new-instance v9, Landroid/os/Bundle;

    .line 700
    .line 701
    invoke-direct {v9, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 702
    .line 703
    .line 704
    new-instance v10, Landroid/os/Bundle;

    .line 705
    .line 706
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 707
    .line 708
    .line 709
    const/4 v12, 0x0

    .line 710
    :goto_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 711
    .line 712
    .line 713
    move-result v13

    .line 714
    if-ge v12, v13, :cond_22

    .line 715
    .line 716
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v13

    .line 720
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v14

    .line 724
    check-cast v14, Landroidx/core/app/p;

    .line 725
    .line 726
    new-instance v15, Landroid/os/Bundle;

    .line 727
    .line 728
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v14}, Landroidx/core/app/p;->a()Landroidx/core/graphics/drawable/IconCompat;

    .line 732
    .line 733
    .line 734
    move-result-object v16

    .line 735
    if-eqz v16, :cond_1e

    .line 736
    .line 737
    invoke-virtual/range {v16 .. v16}, Landroidx/core/graphics/drawable/IconCompat;->g()I

    .line 738
    .line 739
    .line 740
    move-result v16

    .line 741
    move/from16 v6, v16

    .line 742
    .line 743
    goto :goto_16

    .line 744
    :cond_1e
    const/4 v6, 0x0

    .line 745
    :goto_16
    const-string v4, "icon"

    .line 746
    .line 747
    invoke-virtual {v15, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 748
    .line 749
    .line 750
    const-string v4, "title"

    .line 751
    .line 752
    iget-object v6, v14, Landroidx/core/app/p;->g:Ljava/lang/CharSequence;

    .line 753
    .line 754
    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 755
    .line 756
    .line 757
    const-string v4, "actionIntent"

    .line 758
    .line 759
    iget-object v6, v14, Landroidx/core/app/p;->h:Landroid/app/PendingIntent;

    .line 760
    .line 761
    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 762
    .line 763
    .line 764
    iget-object v4, v14, Landroidx/core/app/p;->a:Landroid/os/Bundle;

    .line 765
    .line 766
    if-eqz v4, :cond_1f

    .line 767
    .line 768
    new-instance v6, Landroid/os/Bundle;

    .line 769
    .line 770
    invoke-direct {v6, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 771
    .line 772
    .line 773
    goto :goto_17

    .line 774
    :cond_1f
    new-instance v6, Landroid/os/Bundle;

    .line 775
    .line 776
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 777
    .line 778
    .line 779
    :goto_17
    const-string v4, "android.support.allowGeneratedReplies"

    .line 780
    .line 781
    iget-boolean v8, v14, Landroidx/core/app/p;->d:Z

    .line 782
    .line 783
    invoke-virtual {v6, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 784
    .line 785
    .line 786
    const-string v4, "extras"

    .line 787
    .line 788
    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 789
    .line 790
    .line 791
    iget-object v4, v14, Landroidx/core/app/p;->c:[Landroidx/core/app/c1;

    .line 792
    .line 793
    if-nez v4, :cond_20

    .line 794
    .line 795
    const/4 v6, 0x0

    .line 796
    goto :goto_18

    .line 797
    :cond_20
    array-length v6, v4

    .line 798
    new-array v6, v6, [Landroid/os/Bundle;

    .line 799
    .line 800
    array-length v8, v4

    .line 801
    if-gtz v8, :cond_21

    .line 802
    .line 803
    :goto_18
    const-string v4, "remoteInputs"

    .line 804
    .line 805
    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 806
    .line 807
    .line 808
    const-string v4, "showsUserInterface"

    .line 809
    .line 810
    iget-boolean v6, v14, Landroidx/core/app/p;->e:Z

    .line 811
    .line 812
    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 813
    .line 814
    .line 815
    const-string v4, "semanticAction"

    .line 816
    .line 817
    invoke-virtual {v15, v4, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v10, v13, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 821
    .line 822
    .line 823
    add-int/lit8 v12, v12, 0x1

    .line 824
    .line 825
    const/16 v4, 0x1a

    .line 826
    .line 827
    const/16 v6, 0x1c

    .line 828
    .line 829
    const/4 v8, 0x0

    .line 830
    goto :goto_15

    .line 831
    :cond_21
    aget-object v1, v4, v11

    .line 832
    .line 833
    new-instance v1, Landroid/os/Bundle;

    .line 834
    .line 835
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 836
    .line 837
    .line 838
    const/4 v1, 0x0

    .line 839
    throw v1

    .line 840
    :cond_22
    const-string v2, "invisible_actions"

    .line 841
    .line 842
    invoke-virtual {v3, v2, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v9, v2, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 846
    .line 847
    .line 848
    iget-object v2, v1, Landroidx/core/app/u;->u:Landroid/os/Bundle;

    .line 849
    .line 850
    if-nez v2, :cond_23

    .line 851
    .line 852
    new-instance v2, Landroid/os/Bundle;

    .line 853
    .line 854
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 855
    .line 856
    .line 857
    iput-object v2, v1, Landroidx/core/app/u;->u:Landroid/os/Bundle;

    .line 858
    .line 859
    :cond_23
    iget-object v2, v1, Landroidx/core/app/u;->u:Landroid/os/Bundle;

    .line 860
    .line 861
    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 862
    .line 863
    .line 864
    iget-object v2, v0, Landroidx/core/app/t0;->d:Landroid/os/Bundle;

    .line 865
    .line 866
    invoke-virtual {v2, v7, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 867
    .line 868
    .line 869
    :cond_24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 870
    .line 871
    const/16 v3, 0x18

    .line 872
    .line 873
    if-lt v2, v3, :cond_25

    .line 874
    .line 875
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 876
    .line 877
    iget-object v4, v1, Landroidx/core/app/u;->u:Landroid/os/Bundle;

    .line 878
    .line 879
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 880
    .line 881
    .line 882
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 883
    .line 884
    const/4 v4, 0x0

    .line 885
    invoke-static {v3, v4}, Landroidx/core/app/o0;->e(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 886
    .line 887
    .line 888
    :goto_19
    const/16 v3, 0x1a

    .line 889
    .line 890
    goto :goto_1a

    .line 891
    :cond_25
    const/4 v4, 0x0

    .line 892
    goto :goto_19

    .line 893
    :goto_1a
    if-lt v2, v3, :cond_27

    .line 894
    .line 895
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 896
    .line 897
    iget v6, v1, Landroidx/core/app/u;->y:I

    .line 898
    .line 899
    invoke-static {v3, v6}, Landroidx/core/app/p0;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 900
    .line 901
    .line 902
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 903
    .line 904
    invoke-static {v3, v4}, Landroidx/core/app/p0;->e(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 905
    .line 906
    .line 907
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 908
    .line 909
    invoke-static {v3, v4}, Landroidx/core/app/p0;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 910
    .line 911
    .line 912
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 913
    .line 914
    const-wide/16 v6, 0x0

    .line 915
    .line 916
    invoke-static {v3, v6, v7}, Landroidx/core/app/p0;->g(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    .line 917
    .line 918
    .line 919
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 920
    .line 921
    invoke-static {v3, v11}, Landroidx/core/app/p0;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 922
    .line 923
    .line 924
    iget-boolean v3, v1, Landroidx/core/app/u;->t:Z

    .line 925
    .line 926
    if-eqz v3, :cond_26

    .line 927
    .line 928
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 929
    .line 930
    iget-boolean v4, v1, Landroidx/core/app/u;->s:Z

    .line 931
    .line 932
    invoke-static {v3, v4}, Landroidx/core/app/p0;->c(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 933
    .line 934
    .line 935
    :cond_26
    iget-object v3, v1, Landroidx/core/app/u;->x:Ljava/lang/String;

    .line 936
    .line 937
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    if-nez v3, :cond_27

    .line 942
    .line 943
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 944
    .line 945
    const/4 v4, 0x0

    .line 946
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 947
    .line 948
    .line 949
    move-result-object v3

    .line 950
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 951
    .line 952
    .line 953
    move-result-object v3

    .line 954
    invoke-virtual {v3, v11, v11, v11}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 959
    .line 960
    .line 961
    :cond_27
    const/16 v3, 0x1c

    .line 962
    .line 963
    if-lt v2, v3, :cond_28

    .line 964
    .line 965
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 970
    .line 971
    .line 972
    move-result v3

    .line 973
    if-eqz v3, :cond_28

    .line 974
    .line 975
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object v3

    .line 979
    check-cast v3, Landroidx/core/app/b1;

    .line 980
    .line 981
    iget-object v4, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 982
    .line 983
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 984
    .line 985
    .line 986
    invoke-static {v3}, Landroidx/core/app/a1;->b(Landroidx/core/app/b1;)Landroid/app/Person;

    .line 987
    .line 988
    .line 989
    move-result-object v3

    .line 990
    invoke-static {v4, v3}, Landroidx/core/app/q0;->a(Landroid/app/Notification$Builder;Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 991
    .line 992
    .line 993
    goto :goto_1b

    .line 994
    :cond_28
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 995
    .line 996
    const/16 v3, 0x1d

    .line 997
    .line 998
    if-lt v2, v3, :cond_29

    .line 999
    .line 1000
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 1001
    .line 1002
    iget-boolean v4, v1, Landroidx/core/app/u;->A:Z

    .line 1003
    .line 1004
    invoke-static {v3, v4}, Landroidx/core/app/r0;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 1005
    .line 1006
    .line 1007
    iget-object v3, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 1008
    .line 1009
    const/4 v4, 0x0

    .line 1010
    invoke-static {v3, v4}, Landroidx/core/app/r0;->b(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 1011
    .line 1012
    .line 1013
    :cond_29
    const/16 v3, 0x1f

    .line 1014
    .line 1015
    if-lt v2, v3, :cond_2a

    .line 1016
    .line 1017
    iget v1, v1, Landroidx/core/app/u;->z:I

    .line 1018
    .line 1019
    if-eqz v1, :cond_2a

    .line 1020
    .line 1021
    iget-object v2, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 1022
    .line 1023
    invoke-static {v2, v1}, Landroidx/core/app/s0;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 1024
    .line 1025
    .line 1026
    :cond_2a
    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/app/p;)V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/app/p;->a()Landroidx/core/graphics/drawable/IconCompat;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Landroidx/core/app/p;->h:Landroid/app/PendingIntent;

    .line 8
    .line 9
    iget-object v3, p1, Landroidx/core/app/p;->g:Ljava/lang/CharSequence;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/16 v5, 0x17

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    if-lt v0, v5, :cond_1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v6}, Landroidx/core/graphics/drawable/IconCompat;->n(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v6

    .line 25
    :goto_0
    invoke-static {v0, v3, v2}, Landroidx/core/app/n0;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->g()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_1
    invoke-static {v0, v3, v2}, Landroidx/core/app/l0;->e(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_2
    iget-object v1, p1, Landroidx/core/app/p;->c:[Landroidx/core/app/c1;

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    array-length v2, v1

    .line 47
    new-array v2, v2, [Landroid/app/RemoteInput;

    .line 48
    .line 49
    array-length v3, v1

    .line 50
    if-gtz v3, :cond_3

    .line 51
    .line 52
    array-length v1, v2

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_3
    if-ge v3, v1, :cond_4

    .line 55
    .line 56
    aget-object v5, v2, v3

    .line 57
    .line 58
    invoke-static {v0, v5}, Landroidx/core/app/l0;->c(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 59
    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    aget-object p1, v1, v4

    .line 65
    .line 66
    new-instance p1, Landroid/app/RemoteInput$Builder;

    .line 67
    .line 68
    throw v6

    .line 69
    :cond_4
    iget-object v1, p1, Landroidx/core/app/p;->a:Landroid/os/Bundle;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    new-instance v2, Landroid/os/Bundle;

    .line 74
    .line 75
    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    new-instance v2, Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 82
    .line 83
    .line 84
    :goto_4
    iget-boolean v1, p1, Landroidx/core/app/p;->d:Z

    .line 85
    .line 86
    const-string v3, "android.support.allowGeneratedReplies"

    .line 87
    .line 88
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    .line 93
    const/16 v5, 0x18

    .line 94
    .line 95
    if-lt v3, v5, :cond_6

    .line 96
    .line 97
    invoke-static {v0, v1}, Landroidx/core/app/o0;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 98
    .line 99
    .line 100
    :cond_6
    const-string v1, "android.support.action.semanticAction"

    .line 101
    .line 102
    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    const/16 v1, 0x1c

    .line 106
    .line 107
    if-lt v3, v1, :cond_7

    .line 108
    .line 109
    invoke-static {v0, v4}, Landroidx/core/app/q0;->b(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    .line 110
    .line 111
    .line 112
    :cond_7
    const/16 v1, 0x1d

    .line 113
    .line 114
    if-lt v3, v1, :cond_8

    .line 115
    .line 116
    invoke-static {v0, v4}, Landroidx/core/app/r0;->c(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 117
    .line 118
    .line 119
    :cond_8
    const/16 v1, 0x1f

    .line 120
    .line 121
    if-lt v3, v1, :cond_9

    .line 122
    .line 123
    invoke-static {v0, v4}, Landroidx/core/app/s0;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 124
    .line 125
    .line 126
    :cond_9
    const-string v1, "android.support.action.showsUserInterface"

    .line 127
    .line 128
    iget-boolean p1, p1, Landroidx/core/app/p;->e:Z

    .line 129
    .line 130
    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v2}, Landroidx/core/app/l0;->b(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 137
    .line 138
    invoke-static {v0}, Landroidx/core/app/l0;->d(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {p1, v0}, Landroidx/core/app/l0;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 143
    .line 144
    .line 145
    return-void
.end method
