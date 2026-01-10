.class public final Lq4/w;
.super Lcom/google/android/gms/internal/cast/s;
.source "MyApplication"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/j;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq4/w;->d:I

    .line 1
    iput-object p1, p0, Lq4/w;->e:Ljava/lang/Object;

    .line 2
    const-string p1, "com.google.android.gms.cast.framework.ISessionProvider"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/s;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lq4/b;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lq4/w;->d:I

    .line 3
    iput-object p1, p0, Lq4/w;->e:Ljava/lang/Object;

    .line 4
    const-string p1, "com.google.android.gms.cast.framework.ICastConnectionController"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/s;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lq4/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lq4/w;->d:I

    .line 5
    iput-object p1, p0, Lq4/w;->e:Ljava/lang/Object;

    .line 6
    const-string p1, "com.google.android.gms.cast.framework.ISessionProxy"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/s;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ls4/b;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lq4/w;->d:I

    .line 7
    iput-object p1, p0, Lq4/w;->e:Ljava/lang/Object;

    .line 8
    const-string p1, "com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/s;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final w(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x3

    .line 11
    iget-object v6, v1, Lq4/w;->e:Ljava/lang/Object;

    .line 12
    .line 13
    const v7, 0xbdfcb8

    .line 14
    .line 15
    .line 16
    const/4 v8, 0x2

    .line 17
    const/4 v9, 0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    iget v11, v1, Lq4/w;->d:I

    .line 20
    .line 21
    packed-switch v11, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    if-eq v0, v9, :cond_1

    .line 25
    .line 26
    if-eq v0, v8, :cond_0

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 42
    .line 43
    .line 44
    move-result-wide v11

    .line 45
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-array v4, v8, [Ljava/lang/Long;

    .line 57
    .line 58
    aput-object v0, v4, v10

    .line 59
    .line 60
    aput-object v2, v4, v9

    .line 61
    .line 62
    check-cast v6, Ls4/b;

    .line 63
    .line 64
    invoke-static {v6, v4}, Ls4/b;->a(Ls4/b;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    .line 69
    .line 70
    :goto_0
    return v9

    .line 71
    :pswitch_0
    check-cast v6, Lq4/b;

    .line 72
    .line 73
    if-eq v0, v9, :cond_8

    .line 74
    .line 75
    if-eq v0, v8, :cond_6

    .line 76
    .line 77
    if-eq v0, v5, :cond_4

    .line 78
    .line 79
    if-eq v0, v4, :cond_3

    .line 80
    .line 81
    const/4 v2, 0x5

    .line 82
    if-eq v0, v2, :cond_2

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v0}, Lq4/b;->h(Lq4/b;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 115
    .line 116
    .line 117
    iget-object v2, v6, Lq4/b;->i:Lp4/o;

    .line 118
    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    invoke-virtual {v2}, Lp4/o;->j()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_5

    .line 126
    .line 127
    iget-object v2, v6, Lq4/b;->i:Lp4/o;

    .line 128
    .line 129
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    new-instance v5, Lp4/l;

    .line 134
    .line 135
    invoke-direct {v5, v2, v0}, Lp4/l;-><init>(Lp4/o;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iput-object v5, v4, Lc6/c;->c:Ljava/lang/Object;

    .line 139
    .line 140
    const/16 v0, 0x20d9

    .line 141
    .line 142
    iput v0, v4, Lc6/c;->a:I

    .line 143
    .line 144
    invoke-virtual {v4}, Lc6/c;->b()Lc6/c;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v2, v9, v0}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 149
    .line 150
    .line 151
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sget-object v4, Lcom/google/android/gms/cast/LaunchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    .line 162
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/cast/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Lcom/google/android/gms/cast/LaunchOptions;

    .line 167
    .line 168
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, v6, Lq4/b;->i:Lp4/o;

    .line 172
    .line 173
    if-eqz v2, :cond_7

    .line 174
    .line 175
    invoke-virtual {v2}, Lp4/o;->j()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_7

    .line 180
    .line 181
    iget-object v2, v6, Lq4/b;->i:Lp4/o;

    .line 182
    .line 183
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    new-instance v6, La1/b;

    .line 188
    .line 189
    const/16 v7, 0x1a

    .line 190
    .line 191
    invoke-direct {v6, v2, v0, v4, v7}, La1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 192
    .line 193
    .line 194
    iput-object v6, v5, Lc6/c;->c:Ljava/lang/Object;

    .line 195
    .line 196
    const/16 v0, 0x20d6

    .line 197
    .line 198
    iput v0, v5, Lc6/c;->a:I

    .line 199
    .line 200
    invoke-virtual {v5}, Lc6/c;->b()Lc6/c;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v2, v9, v0}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v2, Lq4/a0;

    .line 209
    .line 210
    invoke-direct {v2, v1, v10}, Lq4/a0;-><init>(Lq4/w;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v2}, Lw5/g;->a(Lw5/a;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 229
    .line 230
    .line 231
    iget-object v2, v6, Lq4/b;->i:Lp4/o;

    .line 232
    .line 233
    if-eqz v2, :cond_9

    .line 234
    .line 235
    invoke-virtual {v2}, Lp4/o;->j()Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_9

    .line 240
    .line 241
    iget-object v2, v6, Lq4/b;->i:Lp4/o;

    .line 242
    .line 243
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    new-instance v6, Lp4/k;

    .line 248
    .line 249
    invoke-direct {v6, v2, v0, v4, v10}, Lp4/k;-><init>(Lp4/o;Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    iput-object v6, v5, Lc6/c;->c:Ljava/lang/Object;

    .line 253
    .line 254
    const/16 v0, 0x20d7

    .line 255
    .line 256
    iput v0, v5, Lc6/c;->a:I

    .line 257
    .line 258
    invoke-virtual {v5}, Lc6/c;->b()Lc6/c;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v2, v9, v0}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    new-instance v2, Lq4/a0;

    .line 267
    .line 268
    invoke-direct {v2, v1, v9}, Lq4/a0;-><init>(Lq4/w;I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v2}, Lw5/g;->a(Lw5/a;)V

    .line 272
    .line 273
    .line 274
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    .line 276
    .line 277
    :goto_1
    return v9

    .line 278
    :pswitch_1
    check-cast v6, Lcom/google/android/gms/internal/cast/j;

    .line 279
    .line 280
    if-eq v0, v9, :cond_d

    .line 281
    .line 282
    if-eq v0, v8, :cond_c

    .line 283
    .line 284
    if-eq v0, v5, :cond_b

    .line 285
    .line 286
    if-eq v0, v4, :cond_a

    .line 287
    .line 288
    const/4 v9, 0x0

    .line 289
    goto :goto_2

    .line 290
    :cond_a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_b
    iget-object v0, v6, Lcom/google/android/gms/internal/cast/j;->b:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_2

    .line 306
    :cond_c
    iget-object v0, v6, Lcom/google/android/gms/internal/cast/j;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 307
    .line 308
    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->e:Z

    .line 309
    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    .line 312
    .line 313
    sget v2, Lcom/google/android/gms/internal/cast/d0;->a:I

    .line 314
    .line 315
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v13

    .line 323
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    new-instance v0, Lq4/b;

    .line 330
    .line 331
    new-instance v2, Ls4/k;

    .line 332
    .line 333
    iget-object v4, v6, Lcom/google/android/gms/internal/cast/j;->a:Landroid/content/Context;

    .line 334
    .line 335
    iget-object v14, v6, Lcom/google/android/gms/internal/cast/j;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 336
    .line 337
    iget-object v15, v6, Lcom/google/android/gms/internal/cast/j;->e:Lcom/google/android/gms/internal/cast/u;

    .line 338
    .line 339
    invoke-direct {v2, v4, v14, v15}, Ls4/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/u;)V

    .line 340
    .line 341
    .line 342
    iget-object v11, v6, Lcom/google/android/gms/internal/cast/j;->a:Landroid/content/Context;

    .line 343
    .line 344
    iget-object v12, v6, Lcom/google/android/gms/internal/cast/j;->b:Ljava/lang/String;

    .line 345
    .line 346
    move-object v10, v0

    .line 347
    move-object/from16 v16, v2

    .line 348
    .line 349
    invoke-direct/range {v10 .. v16}, Lq4/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/u;Ls4/k;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Lq4/e;->d()Lm5/a;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    .line 358
    .line 359
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/cast/d0;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 360
    .line 361
    .line 362
    :goto_2
    return v9

    .line 363
    :pswitch_2
    check-cast v6, Lq4/e;

    .line 364
    .line 365
    packed-switch v0, :pswitch_data_1

    .line 366
    .line 367
    .line 368
    const/4 v9, 0x0

    .line 369
    goto/16 :goto_9

    .line 370
    .line 371
    :pswitch_3
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 372
    .line 373
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/cast/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Landroid/os/Bundle;

    .line 378
    .line 379
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 380
    .line 381
    .line 382
    check-cast v6, Lq4/b;

    .line 383
    .line 384
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->l(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-eqz v0, :cond_13

    .line 392
    .line 393
    iget-object v2, v6, Lq4/b;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/CastDevice;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-nez v2, :cond_13

    .line 400
    .line 401
    iget-object v2, v0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/lang/String;

    .line 402
    .line 403
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    if-nez v4, :cond_f

    .line 408
    .line 409
    iget-object v4, v6, Lq4/b;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 410
    .line 411
    if-eqz v4, :cond_e

    .line 412
    .line 413
    iget-object v4, v4, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/lang/String;

    .line 414
    .line 415
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-nez v2, :cond_f

    .line 420
    .line 421
    :cond_e
    const/4 v2, 0x1

    .line 422
    goto :goto_3

    .line 423
    :cond_f
    const/4 v2, 0x0

    .line 424
    :goto_3
    iput-object v0, v6, Lq4/b;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 425
    .line 426
    if-eq v9, v2, :cond_10

    .line 427
    .line 428
    const-string v4, "unchanged"

    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_10
    const-string v4, "changed"

    .line 432
    .line 433
    :goto_4
    new-array v5, v8, [Ljava/lang/Object;

    .line 434
    .line 435
    aput-object v0, v5, v10

    .line 436
    .line 437
    aput-object v4, v5, v9

    .line 438
    .line 439
    const-string v0, "update to device (%s) with name %s"

    .line 440
    .line 441
    sget-object v4, Lq4/b;->m:Lv4/b;

    .line 442
    .line 443
    invoke-virtual {v4, v0, v5}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    if-eqz v2, :cond_13

    .line 447
    .line 448
    iget-object v0, v6, Lq4/b;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 449
    .line 450
    if-eqz v0, :cond_13

    .line 451
    .line 452
    iget-object v2, v6, Lq4/b;->h:Ls4/k;

    .line 453
    .line 454
    if-eqz v2, :cond_11

    .line 455
    .line 456
    new-array v4, v9, [Ljava/lang/Object;

    .line 457
    .line 458
    aput-object v0, v4, v10

    .line 459
    .line 460
    sget-object v5, Ls4/k;->v:Lv4/b;

    .line 461
    .line 462
    iget-object v7, v5, Lv4/b;->a:Ljava/lang/String;

    .line 463
    .line 464
    const-string v8, "update Cast device to %s"

    .line 465
    .line 466
    invoke-virtual {v5, v8, v4}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    iput-object v0, v2, Ls4/k;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 474
    .line 475
    invoke-virtual {v2}, Ls4/k;->c()V

    .line 476
    .line 477
    .line 478
    :cond_11
    iget-object v0, v6, Lq4/b;->d:Ljava/util/HashSet;

    .line 479
    .line 480
    new-instance v2, Ljava/util/HashSet;

    .line 481
    .line 482
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-eqz v2, :cond_12

    .line 494
    .line 495
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    check-cast v2, Lcom/google/android/gms/internal/cast/j0;

    .line 500
    .line 501
    iget v4, v2, Lcom/google/android/gms/internal/cast/j0;->a:I

    .line 502
    .line 503
    packed-switch v4, :pswitch_data_2

    .line 504
    .line 505
    .line 506
    goto :goto_5

    .line 507
    :pswitch_4
    sget v4, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->n0:I

    .line 508
    .line 509
    iget-object v2, v2, Lcom/google/android/gms/internal/cast/j0;->b:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v2, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 512
    .line 513
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->s()V

    .line 514
    .line 515
    .line 516
    goto :goto_5

    .line 517
    :cond_12
    iget-object v0, v6, Lq4/b;->l:Lcom/google/android/gms/internal/cast/u4;

    .line 518
    .line 519
    if-eqz v0, :cond_13

    .line 520
    .line 521
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 522
    .line 523
    invoke-virtual {v0}, Lc2/b;->l()Lcom/google/android/gms/internal/cast/x7;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    iget v2, v0, Lcom/google/android/gms/internal/cast/x7;->u:I

    .line 528
    .line 529
    add-int/2addr v2, v9

    .line 530
    iput v2, v0, Lcom/google/android/gms/internal/cast/x7;->u:I

    .line 531
    .line 532
    :cond_13
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    .line 534
    .line 535
    goto/16 :goto_9

    .line 536
    .line 537
    :pswitch_5
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 538
    .line 539
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/cast/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    check-cast v0, Landroid/os/Bundle;

    .line 544
    .line 545
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 546
    .line 547
    .line 548
    check-cast v6, Lq4/b;

    .line 549
    .line 550
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->l(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    iput-object v0, v6, Lq4/b;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 558
    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_9

    .line 563
    .line 564
    :pswitch_6
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 565
    .line 566
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/cast/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    check-cast v0, Landroid/os/Bundle;

    .line 571
    .line 572
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 573
    .line 574
    .line 575
    check-cast v6, Lq4/b;

    .line 576
    .line 577
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->l(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    iput-object v0, v6, Lq4/b;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 585
    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    .line 588
    .line 589
    goto/16 :goto_9

    .line 590
    .line 591
    :pswitch_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_9

    .line 598
    .line 599
    :pswitch_8
    check-cast v6, Lq4/b;

    .line 600
    .line 601
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    const-string v0, "Must be called from the main thread."

    .line 605
    .line 606
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    iget-object v0, v6, Lq4/b;->j:Lr4/f;

    .line 610
    .line 611
    if-nez v0, :cond_14

    .line 612
    .line 613
    const-wide/16 v4, 0x0

    .line 614
    .line 615
    goto :goto_6

    .line 616
    :cond_14
    invoke-virtual {v0}, Lr4/f;->h()J

    .line 617
    .line 618
    .line 619
    move-result-wide v4

    .line 620
    iget-object v0, v6, Lq4/b;->j:Lr4/f;

    .line 621
    .line 622
    invoke-virtual {v0}, Lr4/f;->c()J

    .line 623
    .line 624
    .line 625
    move-result-wide v6

    .line 626
    sub-long/2addr v4, v6

    .line 627
    :goto_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 631
    .line 632
    .line 633
    goto/16 :goto_9

    .line 634
    .line 635
    :pswitch_9
    sget v0, Lcom/google/android/gms/internal/cast/d0;->a:I

    .line 636
    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    if-eqz v0, :cond_15

    .line 642
    .line 643
    const/4 v0, 0x1

    .line 644
    goto :goto_7

    .line 645
    :cond_15
    const/4 v0, 0x0

    .line 646
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 647
    .line 648
    .line 649
    check-cast v6, Lq4/b;

    .line 650
    .line 651
    iget-object v2, v6, Lq4/b;->e:Lq4/n;

    .line 652
    .line 653
    if-eqz v2, :cond_16

    .line 654
    .line 655
    :try_start_0
    check-cast v2, Lq4/l;

    .line 656
    .line 657
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v4, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    .line 666
    .line 667
    const/4 v0, 0x6

    .line 668
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .line 670
    .line 671
    goto :goto_8

    .line 672
    :catch_0
    move-exception v0

    .line 673
    const-class v2, Lq4/n;

    .line 674
    .line 675
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    new-array v4, v8, [Ljava/lang/Object;

    .line 680
    .line 681
    const-string v5, "disconnectFromDevice"

    .line 682
    .line 683
    aput-object v5, v4, v10

    .line 684
    .line 685
    aput-object v2, v4, v9

    .line 686
    .line 687
    const-string v2, "Unable to call %s on %s."

    .line 688
    .line 689
    sget-object v5, Lq4/b;->m:Lv4/b;

    .line 690
    .line 691
    invoke-virtual {v5, v0, v2, v4}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    :goto_8
    invoke-virtual {v6, v10}, Lq4/e;->b(I)V

    .line 695
    .line 696
    .line 697
    :cond_16
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    .line 699
    .line 700
    goto :goto_9

    .line 701
    :pswitch_a
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 702
    .line 703
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/cast/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    check-cast v0, Landroid/os/Bundle;

    .line 708
    .line 709
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 710
    .line 711
    .line 712
    check-cast v6, Lq4/b;

    .line 713
    .line 714
    invoke-virtual {v6, v0}, Lq4/b;->j(Landroid/os/Bundle;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    .line 719
    .line 720
    goto :goto_9

    .line 721
    :pswitch_b
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 722
    .line 723
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/cast/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    check-cast v0, Landroid/os/Bundle;

    .line 728
    .line 729
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 730
    .line 731
    .line 732
    check-cast v6, Lq4/b;

    .line 733
    .line 734
    invoke-virtual {v6, v0}, Lq4/b;->j(Landroid/os/Bundle;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    .line 739
    .line 740
    goto :goto_9

    .line 741
    :pswitch_c
    new-instance v0, Lm5/b;

    .line 742
    .line 743
    invoke-direct {v0, v6}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    .line 748
    .line 749
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/cast/d0;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 750
    .line 751
    .line 752
    :goto_9
    return v9

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
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
        :pswitch_3
    .end packed-switch

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method
