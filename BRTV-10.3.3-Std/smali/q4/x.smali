.class public final Lq4/x;
.super Lcom/google/android/gms/internal/cast/s;
.source "MyApplication"


# instance fields
.field public final d:Lq4/g;

.field public final e:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lq4/g;)V
    .locals 2

    .line 1
    const-string v0, "com.google.android.gms.cast.framework.ISessionManagerListener"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/cast/s;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lq4/x;->d:Lq4/g;

    .line 8
    .line 9
    const-class p1, Lq4/b;

    .line 10
    .line 11
    iput-object p1, p0, Lq4/x;->e:Ljava/lang/Class;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final w(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lq4/x;->e:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v3, p0, Lq4/x;->d:Lq4/g;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    return v1

    .line 11
    :pswitch_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    .line 13
    .line 14
    const p1, 0xbdfcb8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lq4/e;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lq4/e;

    .line 56
    .line 57
    invoke-interface {v3, p1, v1}, Lq4/g;->g(Lq4/e;I)V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lq4/e;

    .line 85
    .line 86
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_1

    .line 91
    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lq4/e;

    .line 99
    .line 100
    invoke-interface {v3, p1, v1}, Lq4/g;->i(Lq4/e;I)V

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    sget v4, Lcom/google/android/gms/internal/cast/d0;->a:I

    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_2

    .line 123
    .line 124
    const/4 v1, 0x1

    .line 125
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lq4/e;

    .line 133
    .line 134
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_3

    .line 139
    .line 140
    if-eqz v3, :cond_3

    .line 141
    .line 142
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Lq4/e;

    .line 147
    .line 148
    invoke-interface {v3, p1, v1}, Lq4/g;->d(Lq4/e;Z)V

    .line 149
    .line 150
    .line 151
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p1}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Lq4/e;

    .line 176
    .line 177
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    if-eqz p2, :cond_4

    .line 182
    .line 183
    if-eqz v3, :cond_4

    .line 184
    .line 185
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Lq4/e;

    .line 190
    .line 191
    invoke-interface {v3, p1, v1}, Lq4/g;->k(Lq4/e;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p1}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 212
    .line 213
    .line 214
    invoke-static {p1}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lq4/e;

    .line 219
    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    if-eqz p2, :cond_5

    .line 225
    .line 226
    if-eqz v3, :cond_5

    .line 227
    .line 228
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Lq4/e;

    .line 233
    .line 234
    invoke-interface {v3, p1, v1}, Lq4/g;->m(Lq4/e;I)V

    .line 235
    .line 236
    .line 237
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {p1}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 251
    .line 252
    .line 253
    invoke-static {p1}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Lq4/e;

    .line 258
    .line 259
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-eqz p2, :cond_6

    .line 264
    .line 265
    if-eqz v3, :cond_6

    .line 266
    .line 267
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    check-cast p1, Lq4/e;

    .line 272
    .line 273
    invoke-interface {v3, p1}, Lq4/g;->l(Lq4/e;)V

    .line 274
    .line 275
    .line 276
    :cond_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-static {p1}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 294
    .line 295
    .line 296
    invoke-static {p1}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    check-cast p1, Lq4/e;

    .line 301
    .line 302
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result p2

    .line 306
    if-eqz p2, :cond_7

    .line 307
    .line 308
    if-eqz v3, :cond_7

    .line 309
    .line 310
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    check-cast p1, Lq4/e;

    .line 315
    .line 316
    invoke-interface {v3, p1, v1}, Lq4/g;->a(Lq4/e;I)V

    .line 317
    .line 318
    .line 319
    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    .line 321
    .line 322
    goto :goto_0

    .line 323
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-static {p1}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 336
    .line 337
    .line 338
    invoke-static {p1}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    check-cast p1, Lq4/e;

    .line 343
    .line 344
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    if-eqz p2, :cond_8

    .line 349
    .line 350
    if-eqz v3, :cond_8

    .line 351
    .line 352
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    check-cast p1, Lq4/e;

    .line 357
    .line 358
    invoke-interface {v3, p1, v1}, Lq4/g;->h(Lq4/e;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :cond_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    .line 363
    .line 364
    goto :goto_0

    .line 365
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-static {p1}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 374
    .line 375
    .line 376
    invoke-static {p1}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    check-cast p1, Lq4/e;

    .line 381
    .line 382
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result p2

    .line 386
    if-eqz p2, :cond_9

    .line 387
    .line 388
    if-eqz v3, :cond_9

    .line 389
    .line 390
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    check-cast p1, Lq4/e;

    .line 395
    .line 396
    invoke-interface {v3, p1}, Lq4/g;->n(Lq4/e;)V

    .line 397
    .line 398
    .line 399
    :cond_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    .line 401
    .line 402
    goto :goto_0

    .line 403
    :pswitch_a
    new-instance p1, Lm5/b;

    .line 404
    .line 405
    invoke-direct {p1, v3}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    .line 410
    .line 411
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/cast/d0;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 412
    .line 413
    .line 414
    :goto_0
    return v0

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
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
