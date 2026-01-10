.class public abstract Lcom/google/android/gms/internal/cast/l;
.super Lcom/google/android/gms/internal/cast/s;
.source "MyApplication"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/cast/l;->d:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/s;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final w(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10

    .line 1
    const v0, 0xbdfcb8

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget v5, p0, Lcom/google/android/gms/internal/cast/l;->d:I

    .line 9
    .line 10
    packed-switch v5, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    if-eq p1, v3, :cond_8

    .line 14
    .line 15
    if-eq p1, v2, :cond_6

    .line 16
    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    const/4 p2, 0x4

    .line 20
    if-eq p1, p2, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_1
    move-object p1, p0

    .line 34
    check-cast p1, Lcom/google/android/gms/internal/cast/h;

    .line 35
    .line 36
    new-array p2, v4, [Ljava/lang/Object;

    .line 37
    .line 38
    sget-object v0, Lcom/google/android/gms/internal/cast/h;->g:Lv4/b;

    .line 39
    .line 40
    iget-object v1, v0, Lv4/b;->a:Ljava/lang/String;

    .line 41
    .line 42
    const-string v5, "onAppEnteredBackground"

    .line 43
    .line 44
    invoke-virtual {v0, v5, p2}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iput v2, p1, Lcom/google/android/gms/internal/cast/h;->f:I

    .line 52
    .line 53
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/h;->e:Ljava/util/Set;

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_5

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lcom/google/android/gms/internal/cast/q;

    .line 70
    .line 71
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/q;->a:Lcom/google/android/gms/internal/cast/r;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-array v0, v4, [Ljava/lang/Object;

    .line 77
    .line 78
    sget-object v1, Lcom/google/android/gms/internal/cast/r;->f:Lv4/b;

    .line 79
    .line 80
    const-string v2, "Stopping RouteDiscovery."

    .line 81
    .line 82
    invoke-virtual {v1, v2, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p2, Lcom/google/android/gms/internal/cast/r;->c:Ljava/util/Map;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-ne v0, v1, :cond_4

    .line 99
    .line 100
    iget-object v0, p2, Lcom/google/android/gms/internal/cast/r;->e:Lcom/google/android/gms/internal/cast/v;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/v;->b:Lq1/u0;

    .line 103
    .line 104
    if-nez v1, :cond_3

    .line 105
    .line 106
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/v;->a:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {v1}, Lq1/u0;->d(Landroid/content/Context;)Lq1/u0;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/v;->b:Lq1/u0;

    .line 113
    .line 114
    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/v;->b:Lq1/u0;

    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    invoke-virtual {v0, p2}, Lq1/u0;->h(Lq1/m0;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/cast/x0;

    .line 123
    .line 124
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;I)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lcom/google/android/gms/internal/cast/o;

    .line 132
    .line 133
    invoke-direct {v1, p2, v4}, Lcom/google/android/gms/internal/cast/o;-><init>(Lcom/google/android/gms/internal/cast/r;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    move-object p1, p0

    .line 145
    check-cast p1, Lcom/google/android/gms/internal/cast/h;

    .line 146
    .line 147
    new-array p2, v4, [Ljava/lang/Object;

    .line 148
    .line 149
    sget-object v0, Lcom/google/android/gms/internal/cast/h;->g:Lv4/b;

    .line 150
    .line 151
    iget-object v1, v0, Lv4/b;->a:Ljava/lang/String;

    .line 152
    .line 153
    const-string v2, "onAppEnteredForeground"

    .line 154
    .line 155
    invoke-virtual {v0, v2, p2}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    iput v3, p1, Lcom/google/android/gms/internal/cast/h;->f:I

    .line 163
    .line 164
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/h;->e:Ljava/util/Set;

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_7

    .line 175
    .line 176
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    check-cast p2, Lcom/google/android/gms/internal/cast/q;

    .line 181
    .line 182
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/q;->a:Lcom/google/android/gms/internal/cast/r;

    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/r;->o()V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_8
    move-object p1, p0

    .line 193
    check-cast p1, Lcom/google/android/gms/internal/cast/h;

    .line 194
    .line 195
    new-instance p2, Lm5/b;

    .line 196
    .line 197
    invoke-direct {p2, p1}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    .line 202
    .line 203
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/cast/d0;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 204
    .line 205
    .line 206
    :goto_2
    return v3

    .line 207
    :pswitch_0
    const-string v5, "There is no default route.  The media router has not yet been fully initialized."

    .line 208
    .line 209
    const/4 v6, 0x0

    .line 210
    packed-switch p1, :pswitch_data_1

    .line 211
    .line 212
    .line 213
    const/4 v3, 0x0

    .line 214
    goto/16 :goto_d

    .line 215
    .line 216
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 221
    .line 222
    .line 223
    move-object p2, p0

    .line 224
    check-cast p2, Lcom/google/android/gms/internal/cast/u;

    .line 225
    .line 226
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/u;->e:Lq1/u0;

    .line 227
    .line 228
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-static {p1}, Lq1/u0;->i(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_d

    .line 238
    .line 239
    :pswitch_2
    move-object p1, p0

    .line 240
    check-cast p1, Lcom/google/android/gms/internal/cast/u;

    .line 241
    .line 242
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/u;->e:Lq1/u0;

    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-static {}, Lq1/u0;->b()V

    .line 248
    .line 249
    .line 250
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iget-object p1, p1, Lq1/h;->w:Lq1/s0;

    .line 255
    .line 256
    if-eqz p1, :cond_9

    .line 257
    .line 258
    invoke-static {}, Lq1/u0;->f()Lq1/s0;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    iget-object p2, p2, Lq1/s0;->c:Ljava/lang/String;

    .line 263
    .line 264
    iget-object p1, p1, Lq1/s0;->c:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-eqz p1, :cond_9

    .line 271
    .line 272
    const/4 v4, 0x1

    .line 273
    :cond_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    .line 275
    .line 276
    sget p1, Lcom/google/android/gms/internal/cast/d0;->a:I

    .line 277
    .line 278
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_d

    .line 282
    .line 283
    :pswitch_3
    move-object p1, p0

    .line 284
    check-cast p1, Lcom/google/android/gms/internal/cast/u;

    .line 285
    .line 286
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/u;->g:Ljava/util/HashMap;

    .line 287
    .line 288
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_b

    .line 301
    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    check-cast v1, Ljava/util/Set;

    .line 307
    .line 308
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_a

    .line 317
    .line 318
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    check-cast v2, Lq1/m0;

    .line 323
    .line 324
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/u;->e:Lq1/u0;

    .line 325
    .line 326
    invoke-virtual {v4, v2}, Lq1/u0;->h(Lq1/m0;)V

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_b
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_d

    .line 337
    .line 338
    :pswitch_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_d

    .line 345
    .line 346
    :pswitch_5
    move-object p1, p0

    .line 347
    check-cast p1, Lcom/google/android/gms/internal/cast/u;

    .line 348
    .line 349
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/u;->e:Lq1/u0;

    .line 350
    .line 351
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    invoke-static {}, Lq1/u0;->f()Lq1/s0;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    iget-object p1, p1, Lq1/s0;->c:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_d

    .line 367
    .line 368
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 373
    .line 374
    .line 375
    move-object p2, p0

    .line 376
    check-cast p2, Lcom/google/android/gms/internal/cast/u;

    .line 377
    .line 378
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/u;->e:Lq1/u0;

    .line 379
    .line 380
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    invoke-static {}, Lq1/u0;->b()V

    .line 384
    .line 385
    .line 386
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 387
    .line 388
    .line 389
    move-result-object p2

    .line 390
    iget-object p2, p2, Lq1/h;->i:Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-eqz v0, :cond_d

    .line 401
    .line 402
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    check-cast v0, Lq1/s0;

    .line 407
    .line 408
    iget-object v1, v0, Lq1/s0;->c:Ljava/lang/String;

    .line 409
    .line 410
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-eqz v1, :cond_c

    .line 415
    .line 416
    iget-object v6, v0, Lq1/s0;->s:Landroid/os/Bundle;

    .line 417
    .line 418
    :cond_d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    .line 420
    .line 421
    if-nez v6, :cond_e

    .line 422
    .line 423
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_d

    .line 427
    .line 428
    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v6, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_d

    .line 435
    .line 436
    :pswitch_7
    move-object p1, p0

    .line 437
    check-cast p1, Lcom/google/android/gms/internal/cast/u;

    .line 438
    .line 439
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/u;->e:Lq1/u0;

    .line 440
    .line 441
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    invoke-static {}, Lq1/u0;->b()V

    .line 445
    .line 446
    .line 447
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    iget-object p1, p1, Lq1/h;->v:Lq1/s0;

    .line 452
    .line 453
    if-eqz p1, :cond_f

    .line 454
    .line 455
    invoke-static {}, Lq1/u0;->f()Lq1/s0;

    .line 456
    .line 457
    .line 458
    move-result-object p2

    .line 459
    iget-object p2, p2, Lq1/s0;->c:Ljava/lang/String;

    .line 460
    .line 461
    iget-object p1, p1, Lq1/s0;->c:Ljava/lang/String;

    .line 462
    .line 463
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    .line 469
    .line 470
    sget p2, Lcom/google/android/gms/internal/cast/d0;->a:I

    .line 471
    .line 472
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_d

    .line 476
    .line 477
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 478
    .line 479
    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw p1

    .line 483
    :pswitch_8
    move-object p1, p0

    .line 484
    check-cast p1, Lcom/google/android/gms/internal/cast/u;

    .line 485
    .line 486
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/u;->e:Lq1/u0;

    .line 487
    .line 488
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    invoke-static {}, Lq1/u0;->b()V

    .line 492
    .line 493
    .line 494
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    iget-object p1, p1, Lq1/h;->v:Lq1/s0;

    .line 499
    .line 500
    if-eqz p1, :cond_10

    .line 501
    .line 502
    invoke-virtual {p1, v3}, Lq1/s0;->l(Z)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    .line 507
    .line 508
    goto/16 :goto_d

    .line 509
    .line 510
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 511
    .line 512
    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    throw p1

    .line 516
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 521
    .line 522
    .line 523
    move-object p2, p0

    .line 524
    check-cast p2, Lcom/google/android/gms/internal/cast/u;

    .line 525
    .line 526
    new-array v0, v3, [Ljava/lang/Object;

    .line 527
    .line 528
    aput-object p1, v0, v4

    .line 529
    .line 530
    sget-object v1, Lcom/google/android/gms/internal/cast/u;->l:Lv4/b;

    .line 531
    .line 532
    const-string v2, "select route with routeId = %s"

    .line 533
    .line 534
    invoke-virtual {v1, v2, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/u;->e:Lq1/u0;

    .line 538
    .line 539
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    invoke-static {}, Lq1/u0;->b()V

    .line 543
    .line 544
    .line 545
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 546
    .line 547
    .line 548
    move-result-object p2

    .line 549
    iget-object p2, p2, Lq1/h;->i:Ljava/util/ArrayList;

    .line 550
    .line 551
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 552
    .line 553
    .line 554
    move-result-object p2

    .line 555
    :cond_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-eqz v0, :cond_12

    .line 560
    .line 561
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    check-cast v0, Lq1/s0;

    .line 566
    .line 567
    iget-object v2, v0, Lq1/s0;->c:Ljava/lang/String;

    .line 568
    .line 569
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    if-eqz v2, :cond_11

    .line 574
    .line 575
    new-array p1, v4, [Ljava/lang/Object;

    .line 576
    .line 577
    const-string p2, "media route is found and selected"

    .line 578
    .line 579
    invoke-virtual {v1, p2, p1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v3}, Lq1/s0;->l(Z)V

    .line 583
    .line 584
    .line 585
    :cond_12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_d

    .line 589
    .line 590
    :pswitch_a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 591
    .line 592
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    check-cast p1, Landroid/os/Bundle;

    .line 597
    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 603
    .line 604
    .line 605
    move-object p2, p0

    .line 606
    check-cast p2, Lcom/google/android/gms/internal/cast/u;

    .line 607
    .line 608
    invoke-static {p1}, Lq1/l0;->b(Landroid/os/Bundle;)Lq1/l0;

    .line 609
    .line 610
    .line 611
    move-result-object p1

    .line 612
    if-nez p1, :cond_13

    .line 613
    .line 614
    goto/16 :goto_8

    .line 615
    .line 616
    :cond_13
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/u;->e:Lq1/u0;

    .line 617
    .line 618
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    invoke-static {}, Lq1/u0;->b()V

    .line 622
    .line 623
    .line 624
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 625
    .line 626
    .line 627
    move-result-object p2

    .line 628
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    invoke-virtual {p1}, Lq1/l0;->d()Z

    .line 632
    .line 633
    .line 634
    move-result v1

    .line 635
    if-eqz v1, :cond_14

    .line 636
    .line 637
    goto :goto_8

    .line 638
    :cond_14
    and-int/lit8 v1, v0, 0x2

    .line 639
    .line 640
    if-nez v1, :cond_15

    .line 641
    .line 642
    iget-boolean v1, p2, Lq1/h;->p:Z

    .line 643
    .line 644
    if-eqz v1, :cond_15

    .line 645
    .line 646
    :goto_4
    const/4 v4, 0x1

    .line 647
    goto :goto_8

    .line 648
    :cond_15
    iget-object v1, p2, Lq1/h;->u:Lq1/x0;

    .line 649
    .line 650
    if-eqz v1, :cond_16

    .line 651
    .line 652
    iget-boolean v1, v1, Lq1/x0;->b:Z

    .line 653
    .line 654
    if-eqz v1, :cond_16

    .line 655
    .line 656
    invoke-virtual {p2}, Lq1/h;->h()Z

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    if-eqz v1, :cond_16

    .line 661
    .line 662
    const/4 v1, 0x1

    .line 663
    goto :goto_5

    .line 664
    :cond_16
    const/4 v1, 0x0

    .line 665
    :goto_5
    iget-object v2, p2, Lq1/h;->i:Ljava/util/ArrayList;

    .line 666
    .line 667
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    const/4 v6, 0x0

    .line 672
    :goto_6
    if-ge v6, v5, :cond_1a

    .line 673
    .line 674
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v7

    .line 678
    check-cast v7, Lq1/s0;

    .line 679
    .line 680
    and-int/lit8 v8, v0, 0x1

    .line 681
    .line 682
    if-eqz v8, :cond_17

    .line 683
    .line 684
    invoke-virtual {v7}, Lq1/s0;->d()Z

    .line 685
    .line 686
    .line 687
    move-result v8

    .line 688
    if-eqz v8, :cond_17

    .line 689
    .line 690
    goto :goto_7

    .line 691
    :cond_17
    if-eqz v1, :cond_18

    .line 692
    .line 693
    invoke-virtual {v7}, Lq1/s0;->d()Z

    .line 694
    .line 695
    .line 696
    move-result v8

    .line 697
    if-nez v8, :cond_18

    .line 698
    .line 699
    invoke-virtual {v7}, Lq1/s0;->c()Lq1/e0;

    .line 700
    .line 701
    .line 702
    move-result-object v8

    .line 703
    iget-object v9, p2, Lq1/h;->r:Lq1/p;

    .line 704
    .line 705
    if-eq v8, v9, :cond_18

    .line 706
    .line 707
    goto :goto_7

    .line 708
    :cond_18
    invoke-virtual {v7, p1}, Lq1/s0;->h(Lq1/l0;)Z

    .line 709
    .line 710
    .line 711
    move-result v7

    .line 712
    if-eqz v7, :cond_19

    .line 713
    .line 714
    goto :goto_4

    .line 715
    :cond_19
    :goto_7
    add-int/2addr v6, v3

    .line 716
    goto :goto_6

    .line 717
    :cond_1a
    :goto_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    .line 719
    .line 720
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_d

    .line 724
    .line 725
    :pswitch_b
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 726
    .line 727
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 728
    .line 729
    .line 730
    move-result-object p1

    .line 731
    check-cast p1, Landroid/os/Bundle;

    .line 732
    .line 733
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 734
    .line 735
    .line 736
    move-object p2, p0

    .line 737
    check-cast p2, Lcom/google/android/gms/internal/cast/u;

    .line 738
    .line 739
    invoke-static {p1}, Lq1/l0;->b(Landroid/os/Bundle;)Lq1/l0;

    .line 740
    .line 741
    .line 742
    move-result-object p1

    .line 743
    if-nez p1, :cond_1b

    .line 744
    .line 745
    goto :goto_9

    .line 746
    :cond_1b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    if-ne v0, v1, :cond_1c

    .line 755
    .line 756
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/u;->A(Lq1/l0;)V

    .line 757
    .line 758
    .line 759
    goto :goto_9

    .line 760
    :cond_1c
    new-instance v0, Lcom/google/android/gms/internal/cast/x0;

    .line 761
    .line 762
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;I)V

    .line 767
    .line 768
    .line 769
    new-instance v1, Lcom/google/android/gms/internal/cast/t;

    .line 770
    .line 771
    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/cast/t;-><init>(Lcom/google/android/gms/internal/cast/u;Lq1/l0;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 775
    .line 776
    .line 777
    :goto_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    .line 779
    .line 780
    goto/16 :goto_d

    .line 781
    .line 782
    :pswitch_c
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 783
    .line 784
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 785
    .line 786
    .line 787
    move-result-object p1

    .line 788
    check-cast p1, Landroid/os/Bundle;

    .line 789
    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 795
    .line 796
    .line 797
    move-object p2, p0

    .line 798
    check-cast p2, Lcom/google/android/gms/internal/cast/u;

    .line 799
    .line 800
    invoke-static {p1}, Lq1/l0;->b(Landroid/os/Bundle;)Lq1/l0;

    .line 801
    .line 802
    .line 803
    move-result-object p1

    .line 804
    if-nez p1, :cond_1d

    .line 805
    .line 806
    goto :goto_a

    .line 807
    :cond_1d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 812
    .line 813
    .line 814
    move-result-object v5

    .line 815
    if-ne v2, v5, :cond_1e

    .line 816
    .line 817
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/u;->z(Lq1/l0;I)V

    .line 818
    .line 819
    .line 820
    goto :goto_a

    .line 821
    :cond_1e
    new-instance v2, Lcom/google/android/gms/internal/cast/x0;

    .line 822
    .line 823
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 824
    .line 825
    .line 826
    move-result-object v5

    .line 827
    invoke-direct {v2, v5, v4}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;I)V

    .line 828
    .line 829
    .line 830
    new-instance v4, Landroidx/appcompat/widget/r0;

    .line 831
    .line 832
    invoke-direct {v4, p2, p1, v0, v1}, Landroidx/appcompat/widget/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 836
    .line 837
    .line 838
    :goto_a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    .line 840
    .line 841
    goto :goto_d

    .line 842
    :pswitch_d
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 843
    .line 844
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    check-cast p1, Landroid/os/Bundle;

    .line 849
    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    if-nez v0, :cond_1f

    .line 855
    .line 856
    goto :goto_b

    .line 857
    :cond_1f
    const-string v1, "com.google.android.gms.cast.framework.internal.IMediaRouterCallback"

    .line 858
    .line 859
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    instance-of v5, v2, Lcom/google/android/gms/internal/cast/m;

    .line 864
    .line 865
    if-eqz v5, :cond_20

    .line 866
    .line 867
    move-object v6, v2

    .line 868
    check-cast v6, Lcom/google/android/gms/internal/cast/m;

    .line 869
    .line 870
    goto :goto_b

    .line 871
    :cond_20
    new-instance v6, Lcom/google/android/gms/internal/cast/m;

    .line 872
    .line 873
    invoke-direct {v6, v0, v1, v4}, Lcom/google/android/gms/internal/cast/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 874
    .line 875
    .line 876
    :goto_b
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 877
    .line 878
    .line 879
    move-object p2, p0

    .line 880
    check-cast p2, Lcom/google/android/gms/internal/cast/u;

    .line 881
    .line 882
    invoke-static {p1}, Lq1/l0;->b(Landroid/os/Bundle;)Lq1/l0;

    .line 883
    .line 884
    .line 885
    move-result-object p1

    .line 886
    if-nez p1, :cond_21

    .line 887
    .line 888
    goto :goto_c

    .line 889
    :cond_21
    iget-object v0, p2, Lcom/google/android/gms/internal/cast/u;->g:Ljava/util/HashMap;

    .line 890
    .line 891
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    move-result v1

    .line 895
    if-nez v1, :cond_22

    .line 896
    .line 897
    new-instance v1, Ljava/util/HashSet;

    .line 898
    .line 899
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    :cond_22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object p1

    .line 909
    check-cast p1, Ljava/util/Set;

    .line 910
    .line 911
    new-instance v0, Lcom/google/android/gms/internal/cast/n;

    .line 912
    .line 913
    iget-object v1, p2, Lcom/google/android/gms/internal/cast/u;->h:Lcom/google/android/gms/internal/cast/x;

    .line 914
    .line 915
    invoke-direct {v0, v6, p2, v1}, Lcom/google/android/gms/internal/cast/n;-><init>(Lcom/google/android/gms/internal/cast/m;Lcom/google/android/gms/internal/cast/u;Lcom/google/android/gms/internal/cast/x;)V

    .line 916
    .line 917
    .line 918
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    :goto_c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    .line 923
    .line 924
    :goto_d
    return v3

    .line 925
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
