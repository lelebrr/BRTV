.class public final Lp4/p;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lp4/p;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lp4/p;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    move-object v6, v4

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    if-ge v7, v2, :cond_4

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    int-to-char v8, v7

    .line 30
    const/4 v9, 0x1

    .line 31
    if-eq v8, v9, :cond_3

    .line 32
    .line 33
    const/4 v9, 0x2

    .line 34
    if-eq v8, v9, :cond_2

    .line 35
    .line 36
    const/4 v9, 0x3

    .line 37
    if-eq v8, v9, :cond_1

    .line 38
    .line 39
    const/4 v9, 0x4

    .line 40
    if-eq v8, v9, :cond_0

    .line 41
    .line 42
    invoke-static {v1, v7}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {v1, v7}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {v1, v7}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/google/android/gms/common/zzq;

    .line 70
    .line 71
    invoke-direct {v1, v6, v4, v5, v3}, Lcom/google/android/gms/common/zzq;-><init>(Ljava/lang/String;IIZ)V

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :pswitch_0
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v3, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    move-object v6, v4

    .line 82
    move-object v9, v6

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-ge v3, v2, :cond_5

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    int-to-char v4, v3

    .line 98
    packed-switch v4, :pswitch_data_1

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_1
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    goto :goto_1

    .line 110
    :pswitch_2
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    goto :goto_1

    .line 115
    :pswitch_3
    invoke-static {v1, v3}, Ln5/d;->J(Landroid/os/Parcel;I)Landroid/os/IBinder;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    goto :goto_1

    .line 120
    :pswitch_4
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    goto :goto_1

    .line 125
    :pswitch_5
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    goto :goto_1

    .line 130
    :pswitch_6
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Lcom/google/android/gms/common/zzo;

    .line 139
    .line 140
    move-object v5, v1

    .line 141
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/common/zzo;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V

    .line 142
    .line 143
    .line 144
    return-object v1

    .line 145
    :pswitch_7
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const-wide/16 v3, -0x1

    .line 150
    .line 151
    const/4 v5, 0x0

    .line 152
    const/4 v6, 0x0

    .line 153
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-ge v7, v2, :cond_9

    .line 158
    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    int-to-char v8, v7

    .line 164
    const/4 v9, 0x1

    .line 165
    if-eq v8, v9, :cond_8

    .line 166
    .line 167
    const/4 v9, 0x2

    .line 168
    if-eq v8, v9, :cond_7

    .line 169
    .line 170
    const/4 v9, 0x3

    .line 171
    if-eq v8, v9, :cond_6

    .line 172
    .line 173
    invoke-static {v1, v7}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    invoke-static {v1, v7}, Ln5/d;->M(Landroid/os/Parcel;I)J

    .line 178
    .line 179
    .line 180
    move-result-wide v3

    .line 181
    goto :goto_2

    .line 182
    :cond_7
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    goto :goto_2

    .line 187
    :cond_8
    invoke-static {v1, v7}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    goto :goto_2

    .line 192
    :cond_9
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 193
    .line 194
    .line 195
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 196
    .line 197
    invoke-direct {v1, v6, v5, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;IJ)V

    .line 198
    .line 199
    .line 200
    return-object v1

    .line 201
    :pswitch_8
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    const/4 v3, 0x0

    .line 206
    const/4 v4, 0x0

    .line 207
    move-object v4, v3

    .line 208
    const/4 v5, 0x0

    .line 209
    const/4 v6, 0x0

    .line 210
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-ge v7, v2, :cond_e

    .line 215
    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    int-to-char v8, v7

    .line 221
    const/4 v9, 0x1

    .line 222
    if-eq v8, v9, :cond_d

    .line 223
    .line 224
    const/4 v9, 0x2

    .line 225
    if-eq v8, v9, :cond_c

    .line 226
    .line 227
    const/4 v9, 0x3

    .line 228
    if-eq v8, v9, :cond_b

    .line 229
    .line 230
    const/4 v9, 0x4

    .line 231
    if-eq v8, v9, :cond_a

    .line 232
    .line 233
    invoke-static {v1, v7}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_a
    invoke-static {v1, v7}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    goto :goto_3

    .line 242
    :cond_b
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 243
    .line 244
    invoke-static {v1, v7, v3}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    check-cast v3, Landroid/app/PendingIntent;

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_c
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    goto :goto_3

    .line 256
    :cond_d
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    goto :goto_3

    .line 261
    :cond_e
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 262
    .line 263
    .line 264
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 265
    .line 266
    invoke-direct {v1, v5, v6, v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-object v1

    .line 270
    :pswitch_9
    new-instance v2, Landroidx/databinding/ObservableShort;

    .line 271
    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    int-to-short v1, v1

    .line 277
    invoke-direct {v2}, Lw0/a;-><init>()V

    .line 278
    .line 279
    .line 280
    iput-short v1, v2, Landroidx/databinding/ObservableShort;->b:S

    .line 281
    .line 282
    return-object v2

    .line 283
    :pswitch_a
    new-instance v2, Landroidx/databinding/ObservableLong;

    .line 284
    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 286
    .line 287
    .line 288
    move-result-wide v3

    .line 289
    invoke-direct {v2}, Lw0/a;-><init>()V

    .line 290
    .line 291
    .line 292
    iput-wide v3, v2, Landroidx/databinding/ObservableLong;->b:J

    .line 293
    .line 294
    return-object v2

    .line 295
    :pswitch_b
    new-instance v2, Landroidx/databinding/ObservableInt;

    .line 296
    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    invoke-direct {v2}, Lw0/a;-><init>()V

    .line 302
    .line 303
    .line 304
    iput v1, v2, Landroidx/databinding/ObservableInt;->b:I

    .line 305
    .line 306
    return-object v2

    .line 307
    :pswitch_c
    new-instance v2, Landroidx/databinding/ObservableFloat;

    .line 308
    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    invoke-direct {v2}, Lw0/a;-><init>()V

    .line 314
    .line 315
    .line 316
    iput v1, v2, Landroidx/databinding/ObservableFloat;->b:F

    .line 317
    .line 318
    return-object v2

    .line 319
    :pswitch_d
    new-instance v2, Landroidx/databinding/ObservableDouble;

    .line 320
    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    .line 322
    .line 323
    .line 324
    move-result-wide v3

    .line 325
    invoke-direct {v2}, Lw0/a;-><init>()V

    .line 326
    .line 327
    .line 328
    iput-wide v3, v2, Landroidx/databinding/ObservableDouble;->b:D

    .line 329
    .line 330
    return-object v2

    .line 331
    :pswitch_e
    new-instance v2, Landroidx/databinding/ObservableChar;

    .line 332
    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    int-to-char v1, v1

    .line 338
    invoke-direct {v2}, Lw0/a;-><init>()V

    .line 339
    .line 340
    .line 341
    iput-char v1, v2, Landroidx/databinding/ObservableChar;->b:C

    .line 342
    .line 343
    return-object v2

    .line 344
    :pswitch_f
    new-instance v2, Landroidx/databinding/ObservableByte;

    .line 345
    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    invoke-direct {v2}, Lw0/a;-><init>()V

    .line 351
    .line 352
    .line 353
    iput-byte v1, v2, Landroidx/databinding/ObservableByte;->b:B

    .line 354
    .line 355
    return-object v2

    .line 356
    :pswitch_10
    new-instance v2, Landroidx/databinding/ObservableBoolean;

    .line 357
    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    const/4 v3, 0x1

    .line 363
    if-ne v1, v3, :cond_f

    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_f
    const/4 v3, 0x0

    .line 367
    :goto_4
    invoke-direct {v2}, Lw0/a;-><init>()V

    .line 368
    .line 369
    .line 370
    iput-boolean v3, v2, Landroidx/databinding/ObservableBoolean;->b:Z

    .line 371
    .line 372
    return-object v2

    .line 373
    :pswitch_11
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    const/4 v3, 0x0

    .line 378
    const/4 v4, 0x0

    .line 379
    move-object v4, v3

    .line 380
    const/4 v5, 0x0

    .line 381
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    if-ge v6, v2, :cond_13

    .line 386
    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    int-to-char v7, v6

    .line 392
    const/4 v8, 0x1

    .line 393
    if-eq v7, v8, :cond_12

    .line 394
    .line 395
    const/4 v8, 0x2

    .line 396
    if-eq v7, v8, :cond_11

    .line 397
    .line 398
    const/4 v8, 0x3

    .line 399
    if-eq v7, v8, :cond_10

    .line 400
    .line 401
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 402
    .line 403
    .line 404
    goto :goto_5

    .line 405
    :cond_10
    sget-object v4, Lcom/google/android/gms/common/internal/zav;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 406
    .line 407
    invoke-static {v1, v6, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    check-cast v4, Lcom/google/android/gms/common/internal/zav;

    .line 412
    .line 413
    goto :goto_5

    .line 414
    :cond_11
    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 415
    .line 416
    invoke-static {v1, v6, v3}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    check-cast v3, Lcom/google/android/gms/common/ConnectionResult;

    .line 421
    .line 422
    goto :goto_5

    .line 423
    :cond_12
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 424
    .line 425
    .line 426
    move-result v5

    .line 427
    goto :goto_5

    .line 428
    :cond_13
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 429
    .line 430
    .line 431
    new-instance v1, Lcom/google/android/gms/signin/internal/zak;

    .line 432
    .line 433
    invoke-direct {v1, v5, v3, v4}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    .line 434
    .line 435
    .line 436
    return-object v1

    .line 437
    :pswitch_12
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    const/4 v3, 0x0

    .line 442
    const/4 v4, 0x0

    .line 443
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    if-ge v5, v2, :cond_16

    .line 448
    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    int-to-char v6, v5

    .line 454
    const/4 v7, 0x1

    .line 455
    if-eq v6, v7, :cond_15

    .line 456
    .line 457
    const/4 v7, 0x2

    .line 458
    if-eq v6, v7, :cond_14

    .line 459
    .line 460
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 461
    .line 462
    .line 463
    goto :goto_6

    .line 464
    :cond_14
    sget-object v3, Lcom/google/android/gms/common/internal/zat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 465
    .line 466
    invoke-static {v1, v5, v3}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    check-cast v3, Lcom/google/android/gms/common/internal/zat;

    .line 471
    .line 472
    goto :goto_6

    .line 473
    :cond_15
    invoke-static {v1, v5}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    goto :goto_6

    .line 478
    :cond_16
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 479
    .line 480
    .line 481
    new-instance v1, Lcom/google/android/gms/signin/internal/zai;

    .line 482
    .line 483
    invoke-direct {v1, v4, v3}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    .line 484
    .line 485
    .line 486
    return-object v1

    .line 487
    :pswitch_13
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    const/4 v3, 0x0

    .line 492
    move-object v4, v3

    .line 493
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    if-ge v5, v2, :cond_19

    .line 498
    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    int-to-char v6, v5

    .line 504
    const/4 v7, 0x1

    .line 505
    if-eq v6, v7, :cond_18

    .line 506
    .line 507
    const/4 v7, 0x2

    .line 508
    if-eq v6, v7, :cond_17

    .line 509
    .line 510
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 511
    .line 512
    .line 513
    goto :goto_7

    .line 514
    :cond_17
    invoke-static {v1, v5}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    goto :goto_7

    .line 519
    :cond_18
    invoke-static {v1, v5}, Ln5/d;->n(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    goto :goto_7

    .line 524
    :cond_19
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 525
    .line 526
    .line 527
    new-instance v1, Lcom/google/android/gms/signin/internal/zag;

    .line 528
    .line 529
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/signin/internal/zag;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    return-object v1

    .line 533
    :pswitch_14
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    const/4 v3, 0x0

    .line 538
    const/4 v4, 0x0

    .line 539
    const/4 v5, 0x0

    .line 540
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 541
    .line 542
    .line 543
    move-result v6

    .line 544
    if-ge v6, v2, :cond_1d

    .line 545
    .line 546
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 547
    .line 548
    .line 549
    move-result v6

    .line 550
    int-to-char v7, v6

    .line 551
    const/4 v8, 0x1

    .line 552
    if-eq v7, v8, :cond_1c

    .line 553
    .line 554
    const/4 v8, 0x2

    .line 555
    if-eq v7, v8, :cond_1b

    .line 556
    .line 557
    const/4 v8, 0x3

    .line 558
    if-eq v7, v8, :cond_1a

    .line 559
    .line 560
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 561
    .line 562
    .line 563
    goto :goto_8

    .line 564
    :cond_1a
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 565
    .line 566
    invoke-static {v1, v6, v3}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    check-cast v3, Landroid/content/Intent;

    .line 571
    .line 572
    goto :goto_8

    .line 573
    :cond_1b
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 574
    .line 575
    .line 576
    move-result v5

    .line 577
    goto :goto_8

    .line 578
    :cond_1c
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    goto :goto_8

    .line 583
    :cond_1d
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 584
    .line 585
    .line 586
    new-instance v1, Lcom/google/android/gms/signin/internal/zaa;

    .line 587
    .line 588
    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/gms/signin/internal/zaa;-><init>(IILandroid/content/Intent;)V

    .line 589
    .line 590
    .line 591
    return-object v1

    .line 592
    :pswitch_15
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    const/4 v3, 0x0

    .line 597
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    if-ge v4, v2, :cond_1f

    .line 602
    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 604
    .line 605
    .line 606
    move-result v4

    .line 607
    int-to-char v5, v4

    .line 608
    const/4 v6, 0x2

    .line 609
    if-eq v5, v6, :cond_1e

    .line 610
    .line 611
    invoke-static {v1, v4}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 612
    .line 613
    .line 614
    goto :goto_9

    .line 615
    :cond_1e
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    goto :goto_9

    .line 620
    :cond_1f
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 621
    .line 622
    .line 623
    new-instance v1, Lcom/google/android/gms/cast/internal/zza;

    .line 624
    .line 625
    invoke-direct {v1, v3}, Lcom/google/android/gms/cast/internal/zza;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    return-object v1

    .line 629
    :pswitch_16
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 630
    .line 631
    .line 632
    move-result v2

    .line 633
    const-wide/16 v3, 0x0

    .line 634
    .line 635
    const/4 v5, 0x0

    .line 636
    const/4 v6, 0x0

    .line 637
    move-object v7, v5

    .line 638
    move-object v8, v7

    .line 639
    const/4 v9, 0x0

    .line 640
    const/4 v10, 0x0

    .line 641
    const/4 v11, 0x0

    .line 642
    move-wide v5, v3

    .line 643
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 644
    .line 645
    .line 646
    move-result v12

    .line 647
    if-ge v12, v2, :cond_20

    .line 648
    .line 649
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 650
    .line 651
    .line 652
    move-result v12

    .line 653
    int-to-char v13, v12

    .line 654
    packed-switch v13, :pswitch_data_2

    .line 655
    .line 656
    .line 657
    invoke-static {v1, v12}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 658
    .line 659
    .line 660
    goto :goto_a

    .line 661
    :pswitch_17
    invoke-static {v1, v12}, Ln5/d;->H(Landroid/os/Parcel;I)D

    .line 662
    .line 663
    .line 664
    move-result-wide v5

    .line 665
    goto :goto_a

    .line 666
    :pswitch_18
    sget-object v8, Lcom/google/android/gms/cast/zzat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 667
    .line 668
    invoke-static {v1, v12, v8}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 669
    .line 670
    .line 671
    move-result-object v8

    .line 672
    check-cast v8, Lcom/google/android/gms/cast/zzat;

    .line 673
    .line 674
    goto :goto_a

    .line 675
    :pswitch_19
    invoke-static {v1, v12}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 676
    .line 677
    .line 678
    move-result v11

    .line 679
    goto :goto_a

    .line 680
    :pswitch_1a
    sget-object v7, Lcom/google/android/gms/cast/ApplicationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 681
    .line 682
    invoke-static {v1, v12, v7}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 683
    .line 684
    .line 685
    move-result-object v7

    .line 686
    check-cast v7, Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 687
    .line 688
    goto :goto_a

    .line 689
    :pswitch_1b
    invoke-static {v1, v12}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 690
    .line 691
    .line 692
    move-result v10

    .line 693
    goto :goto_a

    .line 694
    :pswitch_1c
    invoke-static {v1, v12}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 695
    .line 696
    .line 697
    move-result v9

    .line 698
    goto :goto_a

    .line 699
    :pswitch_1d
    invoke-static {v1, v12}, Ln5/d;->H(Landroid/os/Parcel;I)D

    .line 700
    .line 701
    .line 702
    move-result-wide v3

    .line 703
    goto :goto_a

    .line 704
    :cond_20
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 705
    .line 706
    .line 707
    new-instance v1, Lcom/google/android/gms/cast/internal/zzac;

    .line 708
    .line 709
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 710
    .line 711
    .line 712
    iput-wide v3, v1, Lcom/google/android/gms/cast/internal/zzac;->a:D

    .line 713
    .line 714
    iput-boolean v9, v1, Lcom/google/android/gms/cast/internal/zzac;->b:Z

    .line 715
    .line 716
    iput v10, v1, Lcom/google/android/gms/cast/internal/zzac;->c:I

    .line 717
    .line 718
    iput-object v7, v1, Lcom/google/android/gms/cast/internal/zzac;->d:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 719
    .line 720
    iput v11, v1, Lcom/google/android/gms/cast/internal/zzac;->e:I

    .line 721
    .line 722
    iput-object v8, v1, Lcom/google/android/gms/cast/internal/zzac;->f:Lcom/google/android/gms/cast/zzat;

    .line 723
    .line 724
    iput-wide v5, v1, Lcom/google/android/gms/cast/internal/zzac;->g:D

    .line 725
    .line 726
    return-object v1

    .line 727
    :pswitch_1e
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 728
    .line 729
    .line 730
    move-result v2

    .line 731
    const/4 v3, 0x0

    .line 732
    const/4 v4, 0x0

    .line 733
    move-object v9, v4

    .line 734
    move-object v10, v9

    .line 735
    move-object v11, v10

    .line 736
    move-object v12, v11

    .line 737
    move-object v13, v12

    .line 738
    const/4 v6, 0x0

    .line 739
    const/4 v7, 0x0

    .line 740
    const/4 v8, 0x0

    .line 741
    const/4 v14, 0x0

    .line 742
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 743
    .line 744
    .line 745
    move-result v3

    .line 746
    if-ge v3, v2, :cond_21

    .line 747
    .line 748
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 749
    .line 750
    .line 751
    move-result v3

    .line 752
    int-to-char v4, v3

    .line 753
    packed-switch v4, :pswitch_data_3

    .line 754
    .line 755
    .line 756
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 757
    .line 758
    .line 759
    goto :goto_b

    .line 760
    :pswitch_1f
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 761
    .line 762
    .line 763
    move-result v14

    .line 764
    goto :goto_b

    .line 765
    :pswitch_20
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v13

    .line 769
    goto :goto_b

    .line 770
    :pswitch_21
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v12

    .line 774
    goto :goto_b

    .line 775
    :pswitch_22
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v11

    .line 779
    goto :goto_b

    .line 780
    :pswitch_23
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v10

    .line 784
    goto :goto_b

    .line 785
    :pswitch_24
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v9

    .line 789
    goto :goto_b

    .line 790
    :pswitch_25
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 791
    .line 792
    .line 793
    move-result v8

    .line 794
    goto :goto_b

    .line 795
    :pswitch_26
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 796
    .line 797
    .line 798
    move-result v7

    .line 799
    goto :goto_b

    .line 800
    :pswitch_27
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 801
    .line 802
    .line 803
    move-result v6

    .line 804
    goto :goto_b

    .line 805
    :cond_21
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 806
    .line 807
    .line 808
    new-instance v1, Lcom/google/android/gms/cast/internal/zzaa;

    .line 809
    .line 810
    move-object v5, v1

    .line 811
    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/cast/internal/zzaa;-><init>(IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 812
    .line 813
    .line 814
    return-object v1

    .line 815
    :pswitch_28
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 816
    .line 817
    .line 818
    move-result v2

    .line 819
    const/4 v3, 0x0

    .line 820
    const/4 v4, 0x0

    .line 821
    const-wide/16 v5, 0x0

    .line 822
    .line 823
    move-object v8, v4

    .line 824
    move-object v9, v8

    .line 825
    move-object v12, v9

    .line 826
    move-object/from16 v40, v12

    .line 827
    .line 828
    move-wide v10, v5

    .line 829
    const/4 v13, 0x0

    .line 830
    const/4 v14, 0x0

    .line 831
    const/4 v15, 0x0

    .line 832
    const/16 v16, 0x0

    .line 833
    .line 834
    const/16 v17, 0x0

    .line 835
    .line 836
    const/16 v18, 0x0

    .line 837
    .line 838
    const/16 v19, 0x0

    .line 839
    .line 840
    const/16 v20, 0x0

    .line 841
    .line 842
    const/16 v21, 0x0

    .line 843
    .line 844
    const/16 v22, 0x0

    .line 845
    .line 846
    const/16 v23, 0x0

    .line 847
    .line 848
    const/16 v24, 0x0

    .line 849
    .line 850
    const/16 v25, 0x0

    .line 851
    .line 852
    const/16 v26, 0x0

    .line 853
    .line 854
    const/16 v27, 0x0

    .line 855
    .line 856
    const/16 v28, 0x0

    .line 857
    .line 858
    const/16 v29, 0x0

    .line 859
    .line 860
    const/16 v30, 0x0

    .line 861
    .line 862
    const/16 v31, 0x0

    .line 863
    .line 864
    const/16 v32, 0x0

    .line 865
    .line 866
    const/16 v33, 0x0

    .line 867
    .line 868
    const/16 v34, 0x0

    .line 869
    .line 870
    const/16 v35, 0x0

    .line 871
    .line 872
    const/16 v36, 0x0

    .line 873
    .line 874
    const/16 v37, 0x0

    .line 875
    .line 876
    const/16 v38, 0x0

    .line 877
    .line 878
    const/16 v39, 0x0

    .line 879
    .line 880
    const/16 v41, 0x0

    .line 881
    .line 882
    const/16 v42, 0x0

    .line 883
    .line 884
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    if-ge v3, v2, :cond_22

    .line 889
    .line 890
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 891
    .line 892
    .line 893
    move-result v3

    .line 894
    int-to-char v4, v3

    .line 895
    packed-switch v4, :pswitch_data_4

    .line 896
    .line 897
    .line 898
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 899
    .line 900
    .line 901
    goto :goto_c

    .line 902
    :pswitch_29
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    move/from16 v42, v3

    .line 907
    .line 908
    goto :goto_c

    .line 909
    :pswitch_2a
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 910
    .line 911
    .line 912
    move-result v3

    .line 913
    move/from16 v41, v3

    .line 914
    .line 915
    goto :goto_c

    .line 916
    :pswitch_2b
    invoke-static {v1, v3}, Ln5/d;->J(Landroid/os/Parcel;I)Landroid/os/IBinder;

    .line 917
    .line 918
    .line 919
    move-result-object v3

    .line 920
    move-object/from16 v40, v3

    .line 921
    .line 922
    goto :goto_c

    .line 923
    :pswitch_2c
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 924
    .line 925
    .line 926
    move-result v3

    .line 927
    move/from16 v39, v3

    .line 928
    .line 929
    goto :goto_c

    .line 930
    :pswitch_2d
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 931
    .line 932
    .line 933
    move-result v3

    .line 934
    move/from16 v38, v3

    .line 935
    .line 936
    goto :goto_c

    .line 937
    :pswitch_2e
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    move/from16 v37, v3

    .line 942
    .line 943
    goto :goto_c

    .line 944
    :pswitch_2f
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 945
    .line 946
    .line 947
    move-result v3

    .line 948
    move/from16 v36, v3

    .line 949
    .line 950
    goto :goto_c

    .line 951
    :pswitch_30
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 952
    .line 953
    .line 954
    move-result v3

    .line 955
    move/from16 v35, v3

    .line 956
    .line 957
    goto :goto_c

    .line 958
    :pswitch_31
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 959
    .line 960
    .line 961
    move-result v3

    .line 962
    move/from16 v34, v3

    .line 963
    .line 964
    goto :goto_c

    .line 965
    :pswitch_32
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 966
    .line 967
    .line 968
    move-result v3

    .line 969
    move/from16 v33, v3

    .line 970
    .line 971
    goto :goto_c

    .line 972
    :pswitch_33
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 973
    .line 974
    .line 975
    move-result v3

    .line 976
    move/from16 v32, v3

    .line 977
    .line 978
    goto :goto_c

    .line 979
    :pswitch_34
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 980
    .line 981
    .line 982
    move-result v3

    .line 983
    move/from16 v31, v3

    .line 984
    .line 985
    goto :goto_c

    .line 986
    :pswitch_35
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 987
    .line 988
    .line 989
    move-result v3

    .line 990
    move/from16 v30, v3

    .line 991
    .line 992
    goto :goto_c

    .line 993
    :pswitch_36
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 994
    .line 995
    .line 996
    move-result v3

    .line 997
    move/from16 v29, v3

    .line 998
    .line 999
    goto :goto_c

    .line 1000
    :pswitch_37
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1001
    .line 1002
    .line 1003
    move-result v3

    .line 1004
    move/from16 v28, v3

    .line 1005
    .line 1006
    goto :goto_c

    .line 1007
    :pswitch_38
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1008
    .line 1009
    .line 1010
    move-result v3

    .line 1011
    move/from16 v27, v3

    .line 1012
    .line 1013
    goto/16 :goto_c

    .line 1014
    .line 1015
    :pswitch_39
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1016
    .line 1017
    .line 1018
    move-result v3

    .line 1019
    move/from16 v26, v3

    .line 1020
    .line 1021
    goto/16 :goto_c

    .line 1022
    .line 1023
    :pswitch_3a
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1024
    .line 1025
    .line 1026
    move-result v3

    .line 1027
    move/from16 v25, v3

    .line 1028
    .line 1029
    goto/16 :goto_c

    .line 1030
    .line 1031
    :pswitch_3b
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1032
    .line 1033
    .line 1034
    move-result v3

    .line 1035
    move/from16 v24, v3

    .line 1036
    .line 1037
    goto/16 :goto_c

    .line 1038
    .line 1039
    :pswitch_3c
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1040
    .line 1041
    .line 1042
    move-result v3

    .line 1043
    move/from16 v23, v3

    .line 1044
    .line 1045
    goto/16 :goto_c

    .line 1046
    .line 1047
    :pswitch_3d
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1048
    .line 1049
    .line 1050
    move-result v3

    .line 1051
    move/from16 v22, v3

    .line 1052
    .line 1053
    goto/16 :goto_c

    .line 1054
    .line 1055
    :pswitch_3e
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1056
    .line 1057
    .line 1058
    move-result v3

    .line 1059
    move/from16 v21, v3

    .line 1060
    .line 1061
    goto/16 :goto_c

    .line 1062
    .line 1063
    :pswitch_3f
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1064
    .line 1065
    .line 1066
    move-result v3

    .line 1067
    move/from16 v20, v3

    .line 1068
    .line 1069
    goto/16 :goto_c

    .line 1070
    .line 1071
    :pswitch_40
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1072
    .line 1073
    .line 1074
    move-result v3

    .line 1075
    move/from16 v19, v3

    .line 1076
    .line 1077
    goto/16 :goto_c

    .line 1078
    .line 1079
    :pswitch_41
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1080
    .line 1081
    .line 1082
    move-result v3

    .line 1083
    move/from16 v18, v3

    .line 1084
    .line 1085
    goto/16 :goto_c

    .line 1086
    .line 1087
    :pswitch_42
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1088
    .line 1089
    .line 1090
    move-result v3

    .line 1091
    move/from16 v17, v3

    .line 1092
    .line 1093
    goto/16 :goto_c

    .line 1094
    .line 1095
    :pswitch_43
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1096
    .line 1097
    .line 1098
    move-result v3

    .line 1099
    move/from16 v16, v3

    .line 1100
    .line 1101
    goto/16 :goto_c

    .line 1102
    .line 1103
    :pswitch_44
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1104
    .line 1105
    .line 1106
    move-result v3

    .line 1107
    move v15, v3

    .line 1108
    goto/16 :goto_c

    .line 1109
    .line 1110
    :pswitch_45
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1111
    .line 1112
    .line 1113
    move-result v3

    .line 1114
    move v14, v3

    .line 1115
    goto/16 :goto_c

    .line 1116
    .line 1117
    :pswitch_46
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1118
    .line 1119
    .line 1120
    move-result v3

    .line 1121
    move v13, v3

    .line 1122
    goto/16 :goto_c

    .line 1123
    .line 1124
    :pswitch_47
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v3

    .line 1128
    move-object v12, v3

    .line 1129
    goto/16 :goto_c

    .line 1130
    .line 1131
    :pswitch_48
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    .line 1132
    .line 1133
    .line 1134
    move-result-wide v3

    .line 1135
    move-wide v10, v3

    .line 1136
    goto/16 :goto_c

    .line 1137
    .line 1138
    :pswitch_49
    invoke-static {v1, v3}, Ln5/d;->h(Landroid/os/Parcel;I)[I

    .line 1139
    .line 1140
    .line 1141
    move-result-object v3

    .line 1142
    move-object v9, v3

    .line 1143
    goto/16 :goto_c

    .line 1144
    .line 1145
    :pswitch_4a
    invoke-static {v1, v3}, Ln5/d;->n(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v3

    .line 1149
    move-object v8, v3

    .line 1150
    goto/16 :goto_c

    .line 1151
    .line 1152
    :cond_22
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1153
    .line 1154
    .line 1155
    new-instance v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 1156
    .line 1157
    move-object v7, v1

    .line 1158
    invoke-direct/range {v7 .. v42}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;-><init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIILandroid/os/IBinder;ZZ)V

    .line 1159
    .line 1160
    .line 1161
    return-object v1

    .line 1162
    :pswitch_4b
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1163
    .line 1164
    .line 1165
    move-result v2

    .line 1166
    const/4 v3, 0x0

    .line 1167
    const/4 v4, 0x0

    .line 1168
    move-object v4, v3

    .line 1169
    const/4 v5, 0x0

    .line 1170
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1171
    .line 1172
    .line 1173
    move-result v6

    .line 1174
    if-ge v6, v2, :cond_26

    .line 1175
    .line 1176
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1177
    .line 1178
    .line 1179
    move-result v6

    .line 1180
    int-to-char v7, v6

    .line 1181
    const/4 v8, 0x2

    .line 1182
    if-eq v7, v8, :cond_25

    .line 1183
    .line 1184
    const/4 v8, 0x3

    .line 1185
    if-eq v7, v8, :cond_24

    .line 1186
    .line 1187
    const/4 v8, 0x4

    .line 1188
    if-eq v7, v8, :cond_23

    .line 1189
    .line 1190
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1191
    .line 1192
    .line 1193
    goto :goto_d

    .line 1194
    :cond_23
    invoke-static {v1, v6}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v4

    .line 1198
    goto :goto_d

    .line 1199
    :cond_24
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1200
    .line 1201
    .line 1202
    move-result v5

    .line 1203
    goto :goto_d

    .line 1204
    :cond_25
    invoke-static {v1, v6}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    goto :goto_d

    .line 1209
    :cond_26
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1210
    .line 1211
    .line 1212
    new-instance v1, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 1213
    .line 1214
    invoke-direct {v1, v3, v5, v4}, Lcom/google/android/gms/cast/framework/media/NotificationAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    return-object v1

    .line 1218
    :pswitch_4c
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1219
    .line 1220
    .line 1221
    move-result v2

    .line 1222
    const/4 v3, 0x0

    .line 1223
    const/4 v4, 0x0

    .line 1224
    const/4 v5, 0x0

    .line 1225
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1226
    .line 1227
    .line 1228
    move-result v6

    .line 1229
    if-ge v6, v2, :cond_2a

    .line 1230
    .line 1231
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1232
    .line 1233
    .line 1234
    move-result v6

    .line 1235
    int-to-char v7, v6

    .line 1236
    const/4 v8, 0x2

    .line 1237
    if-eq v7, v8, :cond_29

    .line 1238
    .line 1239
    const/4 v8, 0x3

    .line 1240
    if-eq v7, v8, :cond_28

    .line 1241
    .line 1242
    const/4 v8, 0x4

    .line 1243
    if-eq v7, v8, :cond_27

    .line 1244
    .line 1245
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1246
    .line 1247
    .line 1248
    goto :goto_e

    .line 1249
    :cond_27
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1250
    .line 1251
    .line 1252
    move-result v5

    .line 1253
    goto :goto_e

    .line 1254
    :cond_28
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1255
    .line 1256
    .line 1257
    move-result v4

    .line 1258
    goto :goto_e

    .line 1259
    :cond_29
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1260
    .line 1261
    .line 1262
    move-result v3

    .line 1263
    goto :goto_e

    .line 1264
    :cond_2a
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1265
    .line 1266
    .line 1267
    new-instance v1, Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 1268
    .line 1269
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    .line 1270
    .line 1271
    .line 1272
    return-object v1

    .line 1273
    :pswitch_4d
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1274
    .line 1275
    .line 1276
    move-result v2

    .line 1277
    const/4 v3, 0x0

    .line 1278
    const/4 v4, 0x0

    .line 1279
    move-object v6, v4

    .line 1280
    move-object v7, v6

    .line 1281
    move-object v8, v7

    .line 1282
    move-object v9, v8

    .line 1283
    const/4 v10, 0x0

    .line 1284
    const/4 v11, 0x0

    .line 1285
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1286
    .line 1287
    .line 1288
    move-result v3

    .line 1289
    if-ge v3, v2, :cond_2b

    .line 1290
    .line 1291
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1292
    .line 1293
    .line 1294
    move-result v3

    .line 1295
    int-to-char v4, v3

    .line 1296
    packed-switch v4, :pswitch_data_5

    .line 1297
    .line 1298
    .line 1299
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1300
    .line 1301
    .line 1302
    goto :goto_f

    .line 1303
    :pswitch_4e
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1304
    .line 1305
    .line 1306
    move-result v11

    .line 1307
    goto :goto_f

    .line 1308
    :pswitch_4f
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v10

    .line 1312
    goto :goto_f

    .line 1313
    :pswitch_50
    sget-object v4, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1314
    .line 1315
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v3

    .line 1319
    move-object v9, v3

    .line 1320
    check-cast v9, Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 1321
    .line 1322
    goto :goto_f

    .line 1323
    :pswitch_51
    invoke-static {v1, v3}, Ln5/d;->J(Landroid/os/Parcel;I)Landroid/os/IBinder;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v8

    .line 1327
    goto :goto_f

    .line 1328
    :pswitch_52
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v7

    .line 1332
    goto :goto_f

    .line 1333
    :pswitch_53
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v6

    .line 1337
    goto :goto_f

    .line 1338
    :cond_2b
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1339
    .line 1340
    .line 1341
    new-instance v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 1342
    .line 1343
    move-object v5, v1

    .line 1344
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/google/android/gms/cast/framework/media/NotificationOptions;ZZ)V

    .line 1345
    .line 1346
    .line 1347
    return-object v1

    .line 1348
    :pswitch_54
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1349
    .line 1350
    .line 1351
    move-result v2

    .line 1352
    const/4 v3, 0x0

    .line 1353
    const/4 v4, 0x0

    .line 1354
    const-wide/16 v5, 0x0

    .line 1355
    .line 1356
    move-object v8, v4

    .line 1357
    move-object v9, v8

    .line 1358
    move-object v11, v9

    .line 1359
    move-object v13, v11

    .line 1360
    move-object/from16 v20, v13

    .line 1361
    .line 1362
    move-object/from16 v23, v20

    .line 1363
    .line 1364
    move-object/from16 v24, v23

    .line 1365
    .line 1366
    move-wide v15, v5

    .line 1367
    const/4 v10, 0x0

    .line 1368
    const/4 v12, 0x0

    .line 1369
    const/4 v14, 0x0

    .line 1370
    const/16 v17, 0x0

    .line 1371
    .line 1372
    const/16 v18, 0x0

    .line 1373
    .line 1374
    const/16 v19, 0x0

    .line 1375
    .line 1376
    const/16 v21, 0x0

    .line 1377
    .line 1378
    const/16 v22, 0x0

    .line 1379
    .line 1380
    const/16 v25, 0x0

    .line 1381
    .line 1382
    const/16 v26, 0x0

    .line 1383
    .line 1384
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1385
    .line 1386
    .line 1387
    move-result v3

    .line 1388
    if-ge v3, v2, :cond_2c

    .line 1389
    .line 1390
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1391
    .line 1392
    .line 1393
    move-result v3

    .line 1394
    int-to-char v4, v3

    .line 1395
    packed-switch v4, :pswitch_data_6

    .line 1396
    .line 1397
    .line 1398
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1399
    .line 1400
    .line 1401
    goto :goto_10

    .line 1402
    :pswitch_55
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1403
    .line 1404
    .line 1405
    move-result v3

    .line 1406
    move/from16 v26, v3

    .line 1407
    .line 1408
    goto :goto_10

    .line 1409
    :pswitch_56
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1410
    .line 1411
    .line 1412
    move-result v3

    .line 1413
    move/from16 v25, v3

    .line 1414
    .line 1415
    goto :goto_10

    .line 1416
    :pswitch_57
    sget-object v4, Lcom/google/android/gms/cast/framework/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1417
    .line 1418
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v3

    .line 1422
    check-cast v3, Lcom/google/android/gms/cast/framework/zzl;

    .line 1423
    .line 1424
    move-object/from16 v24, v3

    .line 1425
    .line 1426
    goto :goto_10

    .line 1427
    :pswitch_58
    sget-object v4, Lcom/google/android/gms/cast/framework/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1428
    .line 1429
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v3

    .line 1433
    check-cast v3, Lcom/google/android/gms/cast/framework/zzj;

    .line 1434
    .line 1435
    move-object/from16 v23, v3

    .line 1436
    .line 1437
    goto :goto_10

    .line 1438
    :pswitch_59
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1439
    .line 1440
    .line 1441
    move-result v3

    .line 1442
    move/from16 v22, v3

    .line 1443
    .line 1444
    goto :goto_10

    .line 1445
    :pswitch_5a
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1446
    .line 1447
    .line 1448
    goto :goto_10

    .line 1449
    :pswitch_5b
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1450
    .line 1451
    .line 1452
    move-result v3

    .line 1453
    move/from16 v21, v3

    .line 1454
    .line 1455
    goto :goto_10

    .line 1456
    :pswitch_5c
    invoke-static {v1, v3}, Ln5/d;->n(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v3

    .line 1460
    move-object/from16 v20, v3

    .line 1461
    .line 1462
    goto :goto_10

    .line 1463
    :pswitch_5d
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1464
    .line 1465
    .line 1466
    move-result v3

    .line 1467
    move/from16 v19, v3

    .line 1468
    .line 1469
    goto :goto_10

    .line 1470
    :pswitch_5e
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1471
    .line 1472
    .line 1473
    move-result v3

    .line 1474
    move/from16 v18, v3

    .line 1475
    .line 1476
    goto :goto_10

    .line 1477
    :pswitch_5f
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1478
    .line 1479
    .line 1480
    move-result v3

    .line 1481
    move/from16 v17, v3

    .line 1482
    .line 1483
    goto :goto_10

    .line 1484
    :pswitch_60
    invoke-static {v1, v3}, Ln5/d;->H(Landroid/os/Parcel;I)D

    .line 1485
    .line 1486
    .line 1487
    move-result-wide v3

    .line 1488
    move-wide v15, v3

    .line 1489
    goto :goto_10

    .line 1490
    :pswitch_61
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1491
    .line 1492
    .line 1493
    move-result v3

    .line 1494
    move v14, v3

    .line 1495
    goto :goto_10

    .line 1496
    :pswitch_62
    sget-object v4, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1497
    .line 1498
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v3

    .line 1502
    check-cast v3, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 1503
    .line 1504
    move-object v13, v3

    .line 1505
    goto :goto_10

    .line 1506
    :pswitch_63
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1507
    .line 1508
    .line 1509
    move-result v3

    .line 1510
    move v12, v3

    .line 1511
    goto :goto_10

    .line 1512
    :pswitch_64
    sget-object v4, Lcom/google/android/gms/cast/LaunchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1513
    .line 1514
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v3

    .line 1518
    check-cast v3, Lcom/google/android/gms/cast/LaunchOptions;

    .line 1519
    .line 1520
    move-object v11, v3

    .line 1521
    goto/16 :goto_10

    .line 1522
    .line 1523
    :pswitch_65
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1524
    .line 1525
    .line 1526
    move-result v3

    .line 1527
    move v10, v3

    .line 1528
    goto/16 :goto_10

    .line 1529
    .line 1530
    :pswitch_66
    invoke-static {v1, v3}, Ln5/d;->n(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v3

    .line 1534
    move-object v9, v3

    .line 1535
    goto/16 :goto_10

    .line 1536
    .line 1537
    :pswitch_67
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v3

    .line 1541
    move-object v8, v3

    .line 1542
    goto/16 :goto_10

    .line 1543
    .line 1544
    :cond_2c
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1545
    .line 1546
    .line 1547
    new-instance v1, Lcom/google/android/gms/cast/framework/CastOptions;

    .line 1548
    .line 1549
    move-object v7, v1

    .line 1550
    invoke-direct/range {v7 .. v26}, Lcom/google/android/gms/cast/framework/CastOptions;-><init>(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/google/android/gms/cast/LaunchOptions;ZLcom/google/android/gms/cast/framework/media/CastMediaOptions;ZDZZZLjava/util/ArrayList;ZZLcom/google/android/gms/cast/framework/zzj;Lcom/google/android/gms/cast/framework/zzl;ZZ)V

    .line 1551
    .line 1552
    .line 1553
    return-object v1

    .line 1554
    :pswitch_68
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1555
    .line 1556
    .line 1557
    move-result v2

    .line 1558
    const/4 v3, 0x0

    .line 1559
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1560
    .line 1561
    .line 1562
    move-result v4

    .line 1563
    if-ge v4, v2, :cond_2e

    .line 1564
    .line 1565
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1566
    .line 1567
    .line 1568
    move-result v4

    .line 1569
    int-to-char v5, v4

    .line 1570
    const/4 v6, 0x2

    .line 1571
    if-eq v5, v6, :cond_2d

    .line 1572
    .line 1573
    invoke-static {v1, v4}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1574
    .line 1575
    .line 1576
    goto :goto_11

    .line 1577
    :cond_2d
    invoke-static {v1, v4}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1578
    .line 1579
    .line 1580
    move-result v3

    .line 1581
    goto :goto_11

    .line 1582
    :cond_2e
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1583
    .line 1584
    .line 1585
    new-instance v1, Lcom/google/android/gms/cast/framework/zzl;

    .line 1586
    .line 1587
    invoke-direct {v1, v3}, Lcom/google/android/gms/cast/framework/zzl;-><init>(I)V

    .line 1588
    .line 1589
    .line 1590
    return-object v1

    .line 1591
    :pswitch_69
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1592
    .line 1593
    .line 1594
    move-result v2

    .line 1595
    const/4 v3, 0x0

    .line 1596
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1597
    .line 1598
    .line 1599
    move-result v4

    .line 1600
    if-ge v4, v2, :cond_30

    .line 1601
    .line 1602
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1603
    .line 1604
    .line 1605
    move-result v4

    .line 1606
    int-to-char v5, v4

    .line 1607
    const/4 v6, 0x2

    .line 1608
    if-eq v5, v6, :cond_2f

    .line 1609
    .line 1610
    invoke-static {v1, v4}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1611
    .line 1612
    .line 1613
    goto :goto_12

    .line 1614
    :cond_2f
    invoke-static {v1, v4}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1615
    .line 1616
    .line 1617
    move-result v3

    .line 1618
    goto :goto_12

    .line 1619
    :cond_30
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1620
    .line 1621
    .line 1622
    new-instance v1, Lcom/google/android/gms/cast/framework/zzj;

    .line 1623
    .line 1624
    invoke-direct {v1, v3}, Lcom/google/android/gms/cast/framework/zzj;-><init>(Z)V

    .line 1625
    .line 1626
    .line 1627
    return-object v1

    .line 1628
    :pswitch_6a
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1629
    .line 1630
    .line 1631
    move-result v2

    .line 1632
    const/4 v3, 0x0

    .line 1633
    const/4 v4, 0x0

    .line 1634
    const/4 v5, -0x1

    .line 1635
    move-object v7, v3

    .line 1636
    move-object v8, v7

    .line 1637
    move-object v9, v8

    .line 1638
    move-object v10, v9

    .line 1639
    move-object v11, v10

    .line 1640
    move-object v13, v11

    .line 1641
    move-object/from16 v16, v13

    .line 1642
    .line 1643
    move-object/from16 v17, v16

    .line 1644
    .line 1645
    move-object/from16 v19, v17

    .line 1646
    .line 1647
    move-object/from16 v20, v19

    .line 1648
    .line 1649
    move-object/from16 v21, v20

    .line 1650
    .line 1651
    move-object/from16 v23, v21

    .line 1652
    .line 1653
    move-object/from16 v24, v23

    .line 1654
    .line 1655
    move-object/from16 v25, v24

    .line 1656
    .line 1657
    const/4 v12, 0x0

    .line 1658
    const/4 v14, 0x0

    .line 1659
    const/4 v15, -0x1

    .line 1660
    const/16 v18, 0x0

    .line 1661
    .line 1662
    const/16 v22, 0x0

    .line 1663
    .line 1664
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1665
    .line 1666
    .line 1667
    move-result v4

    .line 1668
    if-ge v4, v2, :cond_32

    .line 1669
    .line 1670
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1671
    .line 1672
    .line 1673
    move-result v4

    .line 1674
    int-to-char v5, v4

    .line 1675
    packed-switch v5, :pswitch_data_7

    .line 1676
    .line 1677
    .line 1678
    invoke-static {v1, v4}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1679
    .line 1680
    .line 1681
    goto :goto_13

    .line 1682
    :pswitch_6b
    invoke-static {v1, v4}, Ln5/d;->G(Landroid/os/Parcel;I)Ljava/lang/Boolean;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v25

    .line 1686
    goto :goto_13

    .line 1687
    :pswitch_6c
    invoke-static {v1, v4}, Ln5/d;->N(Landroid/os/Parcel;I)I

    .line 1688
    .line 1689
    .line 1690
    move-result v4

    .line 1691
    if-nez v4, :cond_31

    .line 1692
    .line 1693
    move-object/from16 v24, v3

    .line 1694
    .line 1695
    goto :goto_13

    .line 1696
    :cond_31
    const/4 v5, 0x4

    .line 1697
    invoke-static {v1, v4, v5}, Ln5/d;->Z(Landroid/os/Parcel;II)V

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1701
    .line 1702
    .line 1703
    move-result v4

    .line 1704
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v4

    .line 1708
    move-object/from16 v24, v4

    .line 1709
    .line 1710
    goto :goto_13

    .line 1711
    :pswitch_6d
    sget-object v5, Lcom/google/android/gms/cast/internal/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1712
    .line 1713
    invoke-static {v1, v4, v5}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v4

    .line 1717
    move-object/from16 v23, v4

    .line 1718
    .line 1719
    check-cast v23, Lcom/google/android/gms/cast/internal/zzaa;

    .line 1720
    .line 1721
    goto :goto_13

    .line 1722
    :pswitch_6e
    invoke-static {v1, v4}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1723
    .line 1724
    .line 1725
    move-result v22

    .line 1726
    goto :goto_13

    .line 1727
    :pswitch_6f
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v21

    .line 1731
    goto :goto_13

    .line 1732
    :pswitch_70
    invoke-static {v1, v4}, Ln5/d;->g(Landroid/os/Parcel;I)[B

    .line 1733
    .line 1734
    .line 1735
    move-result-object v20

    .line 1736
    goto :goto_13

    .line 1737
    :pswitch_71
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v19

    .line 1741
    goto :goto_13

    .line 1742
    :pswitch_72
    invoke-static {v1, v4}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1743
    .line 1744
    .line 1745
    move-result v18

    .line 1746
    goto :goto_13

    .line 1747
    :pswitch_73
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v17

    .line 1751
    goto :goto_13

    .line 1752
    :pswitch_74
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v16

    .line 1756
    goto :goto_13

    .line 1757
    :pswitch_75
    invoke-static {v1, v4}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1758
    .line 1759
    .line 1760
    move-result v15

    .line 1761
    goto :goto_13

    .line 1762
    :pswitch_76
    invoke-static {v1, v4}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1763
    .line 1764
    .line 1765
    move-result v14

    .line 1766
    goto :goto_13

    .line 1767
    :pswitch_77
    sget-object v5, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1768
    .line 1769
    invoke-static {v1, v4, v5}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v13

    .line 1773
    goto :goto_13

    .line 1774
    :pswitch_78
    invoke-static {v1, v4}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1775
    .line 1776
    .line 1777
    move-result v12

    .line 1778
    goto :goto_13

    .line 1779
    :pswitch_79
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v11

    .line 1783
    goto :goto_13

    .line 1784
    :pswitch_7a
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v10

    .line 1788
    goto :goto_13

    .line 1789
    :pswitch_7b
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v9

    .line 1793
    goto/16 :goto_13

    .line 1794
    .line 1795
    :pswitch_7c
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v8

    .line 1799
    goto/16 :goto_13

    .line 1800
    .line 1801
    :pswitch_7d
    invoke-static {v1, v4}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v7

    .line 1805
    goto/16 :goto_13

    .line 1806
    .line 1807
    :cond_32
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1808
    .line 1809
    .line 1810
    new-instance v1, Lcom/google/android/gms/cast/CastDevice;

    .line 1811
    .line 1812
    move-object v6, v1

    .line 1813
    invoke-direct/range {v6 .. v25}, Lcom/google/android/gms/cast/CastDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;ZLcom/google/android/gms/cast/internal/zzaa;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1814
    .line 1815
    .line 1816
    return-object v1

    .line 1817
    :pswitch_7e
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1818
    .line 1819
    .line 1820
    move-result v2

    .line 1821
    const/4 v3, 0x0

    .line 1822
    const/4 v4, 0x0

    .line 1823
    const/4 v5, 0x0

    .line 1824
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1825
    .line 1826
    .line 1827
    move-result v6

    .line 1828
    if-ge v6, v2, :cond_36

    .line 1829
    .line 1830
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1831
    .line 1832
    .line 1833
    move-result v6

    .line 1834
    int-to-char v7, v6

    .line 1835
    const/4 v8, 0x2

    .line 1836
    if-eq v7, v8, :cond_35

    .line 1837
    .line 1838
    const/4 v8, 0x3

    .line 1839
    if-eq v7, v8, :cond_34

    .line 1840
    .line 1841
    const/4 v8, 0x4

    .line 1842
    if-eq v7, v8, :cond_33

    .line 1843
    .line 1844
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1845
    .line 1846
    .line 1847
    goto :goto_14

    .line 1848
    :cond_33
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1849
    .line 1850
    .line 1851
    move-result v5

    .line 1852
    goto :goto_14

    .line 1853
    :cond_34
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1854
    .line 1855
    .line 1856
    move-result v4

    .line 1857
    goto :goto_14

    .line 1858
    :cond_35
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1859
    .line 1860
    .line 1861
    move-result v3

    .line 1862
    goto :goto_14

    .line 1863
    :cond_36
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1864
    .line 1865
    .line 1866
    new-instance v1, Lcom/google/android/gms/cast/VideoInfo;

    .line 1867
    .line 1868
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/cast/VideoInfo;-><init>(III)V

    .line 1869
    .line 1870
    .line 1871
    return-object v1

    .line 1872
    :pswitch_7f
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1873
    .line 1874
    .line 1875
    move-result v2

    .line 1876
    const/4 v3, 0x0

    .line 1877
    move-object v4, v3

    .line 1878
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1879
    .line 1880
    .line 1881
    move-result v5

    .line 1882
    if-ge v5, v2, :cond_39

    .line 1883
    .line 1884
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1885
    .line 1886
    .line 1887
    move-result v5

    .line 1888
    int-to-char v6, v5

    .line 1889
    const/4 v7, 0x2

    .line 1890
    if-eq v6, v7, :cond_38

    .line 1891
    .line 1892
    const/4 v7, 0x3

    .line 1893
    if-eq v6, v7, :cond_37

    .line 1894
    .line 1895
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1896
    .line 1897
    .line 1898
    goto :goto_15

    .line 1899
    :cond_37
    invoke-static {v1, v5}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v4

    .line 1903
    goto :goto_15

    .line 1904
    :cond_38
    invoke-static {v1, v5}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v3

    .line 1908
    goto :goto_15

    .line 1909
    :cond_39
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1910
    .line 1911
    .line 1912
    new-instance v1, Lcom/google/android/gms/cast/VastAdsRequest;

    .line 1913
    .line 1914
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/cast/VastAdsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    .line 1916
    .line 1917
    return-object v1

    .line 1918
    :pswitch_80
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1919
    .line 1920
    .line 1921
    move-result v2

    .line 1922
    const/4 v3, 0x0

    .line 1923
    const/4 v4, 0x0

    .line 1924
    const/4 v5, 0x0

    .line 1925
    move-object v15, v3

    .line 1926
    move-object/from16 v18, v15

    .line 1927
    .line 1928
    const/4 v7, 0x0

    .line 1929
    const/4 v8, 0x0

    .line 1930
    const/4 v9, 0x0

    .line 1931
    const/4 v10, 0x0

    .line 1932
    const/4 v11, 0x0

    .line 1933
    const/4 v12, 0x0

    .line 1934
    const/4 v13, 0x0

    .line 1935
    const/4 v14, 0x0

    .line 1936
    const/16 v16, 0x0

    .line 1937
    .line 1938
    const/16 v17, 0x0

    .line 1939
    .line 1940
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1941
    .line 1942
    .line 1943
    move-result v3

    .line 1944
    if-ge v3, v2, :cond_3a

    .line 1945
    .line 1946
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1947
    .line 1948
    .line 1949
    move-result v3

    .line 1950
    int-to-char v4, v3

    .line 1951
    packed-switch v4, :pswitch_data_8

    .line 1952
    .line 1953
    .line 1954
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1955
    .line 1956
    .line 1957
    goto :goto_16

    .line 1958
    :pswitch_81
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v18

    .line 1962
    goto :goto_16

    .line 1963
    :pswitch_82
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1964
    .line 1965
    .line 1966
    move-result v17

    .line 1967
    goto :goto_16

    .line 1968
    :pswitch_83
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1969
    .line 1970
    .line 1971
    move-result v16

    .line 1972
    goto :goto_16

    .line 1973
    :pswitch_84
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v15

    .line 1977
    goto :goto_16

    .line 1978
    :pswitch_85
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1979
    .line 1980
    .line 1981
    move-result v14

    .line 1982
    goto :goto_16

    .line 1983
    :pswitch_86
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1984
    .line 1985
    .line 1986
    move-result v13

    .line 1987
    goto :goto_16

    .line 1988
    :pswitch_87
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1989
    .line 1990
    .line 1991
    move-result v12

    .line 1992
    goto :goto_16

    .line 1993
    :pswitch_88
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1994
    .line 1995
    .line 1996
    move-result v11

    .line 1997
    goto :goto_16

    .line 1998
    :pswitch_89
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1999
    .line 2000
    .line 2001
    move-result v10

    .line 2002
    goto :goto_16

    .line 2003
    :pswitch_8a
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 2004
    .line 2005
    .line 2006
    move-result v9

    .line 2007
    goto :goto_16

    .line 2008
    :pswitch_8b
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 2009
    .line 2010
    .line 2011
    move-result v8

    .line 2012
    goto :goto_16

    .line 2013
    :pswitch_8c
    invoke-static {v1, v3}, Ln5/d;->I(Landroid/os/Parcel;I)F

    .line 2014
    .line 2015
    .line 2016
    move-result v7

    .line 2017
    goto :goto_16

    .line 2018
    :cond_3a
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 2019
    .line 2020
    .line 2021
    new-instance v1, Lcom/google/android/gms/cast/TextTrackStyle;

    .line 2022
    .line 2023
    move-object v6, v1

    .line 2024
    invoke-direct/range {v6 .. v18}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>(FIIIIIIILjava/lang/String;IILjava/lang/String;)V

    .line 2025
    .line 2026
    .line 2027
    return-object v1

    .line 2028
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_54
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_28
        :pswitch_1e
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
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lp4/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Lcom/google/android/gms/common/zzq;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Lcom/google/android/gms/common/zzo;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Lcom/google/android/gms/common/Feature;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lcom/google/android/gms/common/ConnectionResult;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Landroidx/databinding/ObservableShort;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Landroidx/databinding/ObservableLong;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Landroidx/databinding/ObservableInt;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Landroidx/databinding/ObservableFloat;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Landroidx/databinding/ObservableDouble;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [Landroidx/databinding/ObservableChar;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [Landroidx/databinding/ObservableByte;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [Landroidx/databinding/ObservableBoolean;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [Lcom/google/android/gms/signin/internal/zak;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [Lcom/google/android/gms/signin/internal/zai;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [Lcom/google/android/gms/signin/internal/zag;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [Lcom/google/android/gms/signin/internal/zaa;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [Lcom/google/android/gms/cast/internal/zza;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_10
    new-array p1, p1, [Lcom/google/android/gms/cast/internal/zzac;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_11
    new-array p1, p1, [Lcom/google/android/gms/cast/internal/zzaa;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_12
    new-array p1, p1, [Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_13
    new-array p1, p1, [Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_14
    new-array p1, p1, [Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_15
    new-array p1, p1, [Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_16
    new-array p1, p1, [Lcom/google/android/gms/cast/framework/CastOptions;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_17
    new-array p1, p1, [Lcom/google/android/gms/cast/framework/zzl;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_18
    new-array p1, p1, [Lcom/google/android/gms/cast/framework/zzj;

    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_19
    new-array p1, p1, [Lcom/google/android/gms/cast/CastDevice;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_1a
    new-array p1, p1, [Lcom/google/android/gms/cast/VideoInfo;

    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_1b
    new-array p1, p1, [Lcom/google/android/gms/cast/VastAdsRequest;

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_1c
    new-array p1, p1, [Lcom/google/android/gms/cast/TextTrackStyle;

    .line 94
    .line 95
    return-object p1

    .line 96
    nop

    .line 97
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
.end method
