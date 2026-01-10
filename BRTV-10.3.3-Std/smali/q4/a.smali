.class public final Lq4/a;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final j:Lv4/b;

.field public static final k:Ljava/lang/Object;

.field public static volatile l:Lq4/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lq4/f;

.field public final c:Lq4/h;

.field public final d:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final e:Lv4/r;

.field public final f:Lcom/google/android/gms/internal/cast/h;

.field public final g:Lcom/google/android/gms/internal/cast/r;

.field public final h:Lcom/google/android/gms/internal/cast/x;

.field public final i:Lcom/google/android/gms/internal/cast/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CastContext"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lq4/a;->j:Lv4/b;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lq4/a;->k:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;Lcom/google/android/gms/internal/cast/u;Lv4/r;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lq4/a;->a:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lq4/a;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 9
    .line 10
    iput-object p5, p0, Lq4/a;->e:Lv4/r;

    .line 11
    .line 12
    new-instance v2, Lcom/google/android/gms/internal/cast/r;

    .line 13
    .line 14
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/cast/r;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lq4/a;->g:Lcom/google/android/gms/internal/cast/r;

    .line 18
    .line 19
    iget-object v2, p4, Lcom/google/android/gms/internal/cast/u;->h:Lcom/google/android/gms/internal/cast/x;

    .line 20
    .line 21
    iput-object v2, p0, Lq4/a;->h:Lcom/google/android/gms/internal/cast/x;

    .line 22
    .line 23
    iget-object v2, p2, Lcom/google/android/gms/cast/framework/CastOptions;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    new-instance v2, Lcom/google/android/gms/internal/cast/j;

    .line 33
    .line 34
    invoke-direct {v2, p1, p2, p4}, Lcom/google/android/gms/internal/cast/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/u;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lq4/a;->i:Lcom/google/android/gms/internal/cast/j;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput-object v3, p0, Lq4/a;->i:Lcom/google/android/gms/internal/cast/j;

    .line 41
    .line 42
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lq4/a;->i:Lcom/google/android/gms/internal/cast/j;

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    iget-object v5, v4, Lcom/google/android/gms/internal/cast/j;->b:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/j;->c:Lq4/w;

    .line 54
    .line 55
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_1
    if-eqz p3, :cond_3

    .line 59
    .line 60
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lcom/google/android/gms/internal/cast/j;

    .line 75
    .line 76
    const-string v5, "Additional SessionProvider must not be null."

    .line 77
    .line 78
    invoke-static {v4, v5}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v5, "Category for SessionProvider must not be null or empty string."

    .line 82
    .line 83
    iget-object v6, v4, Lcom/google/android/gms/internal/cast/j;->b:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v6, v5}, Lb5/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const-string v7, "SessionProvider for category "

    .line 93
    .line 94
    const-string v8, " already added"

    .line 95
    .line 96
    invoke-static {v7, v6, v8}, La/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    if-nez v5, :cond_2

    .line 101
    .line 102
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/j;->c:Lq4/w;

    .line 103
    .line 104
    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :cond_3
    new-instance p3, Lcom/google/android/gms/cast/framework/zzl;

    .line 119
    .line 120
    invoke-direct {p3, v0}, Lcom/google/android/gms/cast/framework/zzl;-><init>(I)V

    .line 121
    .line 122
    .line 123
    iput-object p3, p2, Lcom/google/android/gms/cast/framework/CastOptions;->p:Lcom/google/android/gms/cast/framework/zzl;

    .line 124
    .line 125
    :try_start_0
    invoke-static {p1, p2, p4, v2}, Lcom/google/android/gms/internal/cast/i;->a(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/u;Ljava/util/HashMap;)Lq4/k;

    .line 126
    .line 127
    .line 128
    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 129
    :try_start_1
    move-object p4, p3

    .line 130
    check-cast p4, Lq4/i;

    .line 131
    .line 132
    invoke-virtual {p4}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const/4 v4, 0x6

    .line 137
    invoke-virtual {p4, v2, v4}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 138
    .line 139
    .line 140
    move-result-object p4

    .line 141
    invoke-virtual {p4}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-nez v2, :cond_4

    .line 146
    .line 147
    move-object v5, v3

    .line 148
    goto :goto_2

    .line 149
    :cond_4
    const-string v4, "com.google.android.gms.cast.framework.IDiscoveryManager"

    .line 150
    .line 151
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    instance-of v6, v5, Lq4/o;

    .line 156
    .line 157
    if-eqz v6, :cond_5

    .line 158
    .line 159
    check-cast v5, Lq4/o;

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    new-instance v5, Lq4/o;

    .line 163
    .line 164
    invoke-direct {v5, v2, v4, v1}, Lcom/google/android/gms/internal/cast/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    :goto_2
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 168
    .line 169
    .line 170
    new-instance p4, Lq4/h;

    .line 171
    .line 172
    invoke-direct {p4, v5}, Lq4/h;-><init>(Lq4/o;)V

    .line 173
    .line 174
    .line 175
    iput-object p4, p0, Lq4/a;->c:Lq4/h;

    .line 176
    .line 177
    :try_start_2
    move-object p4, p3

    .line 178
    check-cast p4, Lq4/i;

    .line 179
    .line 180
    invoke-virtual {p4}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    const/4 v4, 0x5

    .line 185
    invoke-virtual {p4, v2, v4}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 186
    .line 187
    .line 188
    move-result-object p4

    .line 189
    invoke-virtual {p4}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    if-nez v2, :cond_6

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_6
    const-string v3, "com.google.android.gms.cast.framework.ISessionManager"

    .line 197
    .line 198
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    instance-of v5, v4, Lq4/v;

    .line 203
    .line 204
    if-eqz v5, :cond_7

    .line 205
    .line 206
    move-object v3, v4

    .line 207
    check-cast v3, Lq4/v;

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_7
    new-instance v4, Lq4/v;

    .line 211
    .line 212
    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/gms/internal/cast/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    move-object v3, v4

    .line 216
    :goto_3
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 217
    .line 218
    .line 219
    new-instance p4, Lq4/f;

    .line 220
    .line 221
    invoke-direct {p4, v3, p1}, Lq4/f;-><init>(Lq4/v;Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    iput-object p4, p0, Lq4/a;->b:Lq4/f;

    .line 225
    .line 226
    const-string v2, "The log tag cannot be null or empty."

    .line 227
    .line 228
    const-string v3, "PrecacheManager"

    .line 229
    .line 230
    invoke-static {v3, v2}, Lb5/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object v2, p0, Lq4/a;->h:Lcom/google/android/gms/internal/cast/x;

    .line 234
    .line 235
    if-eqz v2, :cond_8

    .line 236
    .line 237
    iput-object p4, v2, Lcom/google/android/gms/internal/cast/x;->f:Lq4/f;

    .line 238
    .line 239
    iget-object p4, v2, Lcom/google/android/gms/internal/cast/x;->c:Lcom/google/android/gms/internal/cast/x0;

    .line 240
    .line 241
    invoke-static {p4}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    new-instance v3, Lcom/google/android/gms/internal/cast/w;

    .line 245
    .line 246
    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/internal/cast/w;-><init>(Lcom/google/android/gms/internal/cast/x;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    .line 251
    .line 252
    :cond_8
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 253
    .line 254
    const/16 v2, 0x17

    .line 255
    .line 256
    const/4 v3, 0x3

    .line 257
    if-lt p4, v2, :cond_b

    .line 258
    .line 259
    new-instance p4, Lcom/google/android/gms/internal/cast/r0;

    .line 260
    .line 261
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    instance-of v4, v2, Lcom/google/android/gms/internal/cast/k6;

    .line 266
    .line 267
    if-eqz v4, :cond_9

    .line 268
    .line 269
    check-cast v2, Lcom/google/android/gms/internal/cast/k6;

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_9
    instance-of v4, v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 273
    .line 274
    if-eqz v4, :cond_a

    .line 275
    .line 276
    new-instance v4, Lcom/google/android/gms/internal/cast/o6;

    .line 277
    .line 278
    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 279
    .line 280
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/cast/o6;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 281
    .line 282
    .line 283
    :goto_4
    move-object v2, v4

    .line 284
    goto :goto_5

    .line 285
    :cond_a
    new-instance v4, Lcom/google/android/gms/internal/cast/l6;

    .line 286
    .line 287
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/cast/l6;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :goto_5
    invoke-direct {p4, p1, v2}, Lcom/google/android/gms/internal/cast/r0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cast/k6;)V

    .line 292
    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_b
    new-instance p4, Lcom/google/android/gms/internal/cast/k2;

    .line 296
    .line 297
    const/16 p1, 0x12

    .line 298
    .line 299
    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/cast/k2;-><init>(I)V

    .line 300
    .line 301
    .line 302
    :goto_6
    const-string p1, "BaseNetUtils"

    .line 303
    .line 304
    const-string v2, "The log tag cannot be null or empty."

    .line 305
    .line 306
    invoke-static {p1, v2}, Lb5/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-interface {p4}, Lcom/google/android/gms/internal/cast/p0;->a()V

    .line 310
    .line 311
    .line 312
    new-instance p1, Lcom/google/android/gms/internal/cast/h;

    .line 313
    .line 314
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/h;-><init>()V

    .line 315
    .line 316
    .line 317
    iput-object p1, p0, Lq4/a;->f:Lcom/google/android/gms/internal/cast/h;

    .line 318
    .line 319
    :try_start_3
    check-cast p3, Lq4/i;

    .line 320
    .line 321
    invoke-virtual {p3}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 322
    .line 323
    .line 324
    move-result-object p4

    .line 325
    invoke-static {p4, p1}, Lcom/google/android/gms/internal/cast/d0;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p3, p4, v3}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 329
    .line 330
    .line 331
    iget-object p3, p0, Lq4/a;->g:Lcom/google/android/gms/internal/cast/r;

    .line 332
    .line 333
    iget-object p3, p3, Lcom/google/android/gms/internal/cast/r;->a:Lcom/google/android/gms/internal/cast/q;

    .line 334
    .line 335
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/h;->e:Ljava/util/Set;

    .line 336
    .line 337
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    iget-object p1, p2, Lcom/google/android/gms/cast/framework/CastOptions;->l:Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-nez p1, :cond_f

    .line 351
    .line 352
    sget-object p1, Lq4/a;->j:Lv4/b;

    .line 353
    .line 354
    iget-object p2, p0, Lq4/a;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 355
    .line 356
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/CastOptions;->l:Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    new-array p3, v1, [Ljava/lang/Object;

    .line 367
    .line 368
    const-string p4, "Setting Route Discovery for appIds: "

    .line 369
    .line 370
    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    iget-object p4, p1, Lv4/b;->a:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {p1, p2, p3}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    iget-object p1, p0, Lq4/a;->g:Lcom/google/android/gms/internal/cast/r;

    .line 384
    .line 385
    iget-object p2, p0, Lq4/a;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 386
    .line 387
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/CastOptions;->l:Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    sget-object p3, Lcom/google/android/gms/internal/cast/r;->f:Lv4/b;

    .line 397
    .line 398
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 399
    .line 400
    .line 401
    move-result p4

    .line 402
    const-string v2, "SetRouteDiscovery for "

    .line 403
    .line 404
    const-string v3, " IDs"

    .line 405
    .line 406
    invoke-static {p4, v2, v3}, Lea/q;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p4

    .line 410
    new-array v2, v1, [Ljava/lang/Object;

    .line 411
    .line 412
    invoke-virtual {p3, p4, v2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    new-instance p4, Ljava/util/LinkedHashSet;

    .line 416
    .line 417
    invoke-direct {p4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 421
    .line 422
    .line 423
    move-result-object p2

    .line 424
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eqz v2, :cond_c

    .line 429
    .line 430
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    check-cast v2, Ljava/lang/String;

    .line 435
    .line 436
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/z0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {p4, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_c
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/r;->c:Ljava/util/Map;

    .line 445
    .line 446
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    new-array v3, v1, [Ljava/lang/Object;

    .line 455
    .line 456
    const-string v4, "resetting routes. appIdToRouteInfo has these appId route keys: "

    .line 457
    .line 458
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {p3, v2, v3}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    new-instance v2, Ljava/util/HashMap;

    .line 466
    .line 467
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 468
    .line 469
    .line 470
    monitor-enter p2

    .line 471
    :try_start_4
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    :cond_d
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    if-eqz v4, :cond_e

    .line 480
    .line 481
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    check-cast v4, Ljava/lang/String;

    .line 486
    .line 487
    invoke-static {v4}, Lcom/google/android/gms/internal/cast/z0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    check-cast v5, Lcom/google/android/gms/internal/cast/p;

    .line 496
    .line 497
    if-eqz v5, :cond_d

    .line 498
    .line 499
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    goto :goto_8

    .line 503
    :catchall_0
    move-exception p1

    .line 504
    goto :goto_9

    .line 505
    :cond_e
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 506
    .line 507
    .line 508
    invoke-interface {p2, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 509
    .line 510
    .line 511
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 512
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 513
    .line 514
    .line 515
    move-result-object p2

    .line 516
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p2

    .line 520
    new-array v2, v1, [Ljava/lang/Object;

    .line 521
    .line 522
    const-string v3, "Routes reset. appIdToRouteInfo has these appId route keys: "

    .line 523
    .line 524
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object p2

    .line 528
    invoke-virtual {p3, p2, v2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    iget-object p3, p1, Lcom/google/android/gms/internal/cast/r;->d:Ljava/util/LinkedHashSet;

    .line 532
    .line 533
    monitor-enter p3

    .line 534
    :try_start_5
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->clear()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {p3, p4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 538
    .line 539
    .line 540
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 541
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/r;->o()V

    .line 542
    .line 543
    .line 544
    goto :goto_a

    .line 545
    :catchall_1
    move-exception p1

    .line 546
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 547
    throw p1

    .line 548
    :goto_9
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 549
    throw p1

    .line 550
    :cond_f
    :goto_a
    const-string v2, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 551
    .line 552
    const-string v3, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    .line 553
    .line 554
    const-string v4, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    .line 555
    .line 556
    const-string v5, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    .line 557
    .line 558
    const-string v6, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    .line 559
    .line 560
    const-string v7, "com.google.android.gms.cast.FLAG_CLIENT_ANALYTICS_ENABLED"

    .line 561
    .line 562
    const-string v8, "com.google.android.gms.cast.FLAG_ANALYTICS_CONSENT_TIMEOUT_SECONDS"

    .line 563
    .line 564
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    invoke-virtual {p5, p1}, Lv4/r;->d([Ljava/lang/String;)Lw5/g;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    new-instance p2, Lq4/y;

    .line 573
    .line 574
    invoke-direct {p2, p0, v1}, Lq4/y;-><init>(Lq4/a;I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {p1, p2}, Lw5/g;->b(Lw5/c;)V

    .line 578
    .line 579
    .line 580
    const-string p1, "com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"

    .line 581
    .line 582
    filled-new-array {p1}, [Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 587
    .line 588
    .line 589
    move-result-object p2

    .line 590
    new-instance p3, Lv4/p;

    .line 591
    .line 592
    const/4 p4, 0x2

    .line 593
    invoke-direct {p3, p5, p1, p4}, Lv4/p;-><init>(Lv4/r;[Ljava/lang/String;I)V

    .line 594
    .line 595
    .line 596
    iput-object p3, p2, Lc6/c;->c:Ljava/lang/Object;

    .line 597
    .line 598
    new-array p1, v0, [Lcom/google/android/gms/common/Feature;

    .line 599
    .line 600
    sget-object p3, Lp4/j;->d:Lcom/google/android/gms/common/Feature;

    .line 601
    .line 602
    aput-object p3, p1, v1

    .line 603
    .line 604
    iput-object p1, p2, Lc6/c;->d:Ljava/lang/Object;

    .line 605
    .line 606
    iput-boolean v1, p2, Lc6/c;->b:Z

    .line 607
    .line 608
    const/16 p1, 0x20eb

    .line 609
    .line 610
    iput p1, p2, Lc6/c;->a:I

    .line 611
    .line 612
    invoke-virtual {p2}, Lc6/c;->b()Lc6/c;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    invoke-virtual {p5, v1, p1}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 617
    .line 618
    .line 619
    move-result-object p1

    .line 620
    new-instance p2, Lq4/y;

    .line 621
    .line 622
    invoke-direct {p2, p0, v0}, Lq4/y;-><init>(Lq4/a;I)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {p1, p2}, Lw5/g;->b(Lw5/c;)V

    .line 626
    .line 627
    .line 628
    return-void

    .line 629
    :catch_0
    move-exception p1

    .line 630
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 631
    .line 632
    const-string p3, "Failed to call addAppVisibilityListener"

    .line 633
    .line 634
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 635
    .line 636
    .line 637
    throw p2

    .line 638
    :catch_1
    move-exception p1

    .line 639
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 640
    .line 641
    const-string p3, "Failed to call getSessionManagerImpl"

    .line 642
    .line 643
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    .line 645
    .line 646
    throw p2

    .line 647
    :catch_2
    move-exception p1

    .line 648
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 649
    .line 650
    const-string p3, "Failed to call getDiscoveryManagerImpl"

    .line 651
    .line 652
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    .line 654
    .line 655
    throw p2

    .line 656
    :catch_3
    move-exception p1

    .line 657
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 658
    .line 659
    const-string p3, "Failed to call newCastContextImpl"

    .line 660
    .line 661
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    .line 663
    .line 664
    throw p2
.end method

.method public static b(Landroid/content/Context;)Lq4/a;
    .locals 8

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lq4/a;->l:Lq4/a;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lq4/a;->k:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lq4/a;->l:Lq4/a;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Lq4/a;->d(Landroid/content/Context;)Lorg/bitspark/android/utils/CastOptionsProvider;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, v3}, Lorg/bitspark/android/utils/CastOptionsProvider;->getCastOptions(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v7, Lv4/r;

    .line 30
    .line 31
    sget-object v1, Ly4/b;->a0:Ly4/a;

    .line 32
    .line 33
    sget-object v2, Ly4/f;->c:Ly4/f;

    .line 34
    .line 35
    sget-object v5, Lv4/r;->j:Ll6/h;

    .line 36
    .line 37
    invoke-direct {v7, v3, v5, v1, v2}, Ly4/g;-><init>(Landroid/content/Context;Ll6/h;Ly4/b;Ly4/f;)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Lcom/google/android/gms/internal/cast/u;

    .line 41
    .line 42
    invoke-static {v3}, Lq1/u0;->d(Landroid/content/Context;)Lq1/u0;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v6, v3, v1, v4, v7}, Lcom/google/android/gms/internal/cast/u;-><init>(Landroid/content/Context;Lq1/u0;Lcom/google/android/gms/cast/framework/CastOptions;Lv4/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_1
    new-instance v1, Lq4/a;

    .line 50
    .line 51
    invoke-virtual {p0, v3}, Lorg/bitspark/android/utils/CastOptionsProvider;->getAdditionalSessionProviders(Landroid/content/Context;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    move-object v2, v1

    .line 56
    invoke-direct/range {v2 .. v7}, Lq4/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;Lcom/google/android/gms/internal/cast/u;Lv4/r;)V

    .line 57
    .line 58
    .line 59
    sput-object v1, Lq4/a;->l:Lq4/a;
    :try_end_1
    .catch Lq4/c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :cond_0
    :goto_0
    monitor-exit v0

    .line 72
    goto :goto_2

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_1
    :goto_2
    sget-object p0, Lq4/a;->l:Lq4/a;

    .line 76
    .line 77
    return-object p0
.end method

.method public static c(Landroid/app/Activity;)Lq4/a;
    .locals 3

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Lq4/a;->b(Landroid/content/Context;)Lq4/a;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const/4 v0, 0x1

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aput-object p0, v0, v1

    .line 17
    .line 18
    sget-object p0, Lq4/a;->j:Lv4/b;

    .line 19
    .line 20
    iget-object v1, p0, Lv4/b;->a:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently."

    .line 23
    .line 24
    invoke-virtual {p0, v2, v0}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lorg/bitspark/android/utils/CastOptionsProvider;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ll5/b;->a(Landroid/content/Context;)La4/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object v0, v0, La4/k;->b:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x80

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 22
    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lq4/a;->j:Lv4/b;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lv4/b;->c([Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :catch_2
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :catch_3
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_4
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :catch_5
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catch_6
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    const-string v0, "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-class v0, Lorg/bitspark/android/utils/CastOptionsProvider;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lorg/bitspark/android/utils/CastOptionsProvider;

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string v0, "The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME."

    .line 81
    .line 82
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string v1, "Failed to initialize CastContext."

    .line 89
    .line 90
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw v0
.end method


# virtual methods
.method public final a()Lq4/f;
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq4/a;->b:Lq4/f;

    .line 7
    .line 8
    return-object v0
.end method
