.class public final Lua/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lua/a;->a:I

    iput-object p2, p0, Lua/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lua/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Lua/a;->a:I

    iput-object p1, p0, Lua/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lua/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lua/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lua/a;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lua/a;->c:Ljava/lang/Object;

    .line 5
    new-instance p1, Ll6/h;

    const/16 v0, 0xa

    .line 6
    invoke-direct {p1, v0}, Ll6/h;-><init>(I)V

    .line 7
    iput-object p1, p0, Lua/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw5/f;

    .line 4
    .line 5
    iget-object v0, v0, Lw5/f;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lua/a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lw5/f;

    .line 11
    .line 12
    iget-object v1, v1, Lw5/f;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lw5/b;

    .line 15
    .line 16
    iget-object v2, p0, Lua/a;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lw5/g;

    .line 19
    .line 20
    invoke-virtual {v2}, Lw5/g;->c()Ljava/lang/Exception;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Lw5/b;->a(Ljava/lang/Exception;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method

.method private final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw5/f;

    .line 4
    .line 5
    iget-object v0, v0, Lw5/f;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lua/a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lw5/f;

    .line 11
    .line 12
    iget-object v1, v1, Lw5/f;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lw5/c;

    .line 15
    .line 16
    iget-object v2, p0, Lua/a;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lw5/g;

    .line 19
    .line 20
    invoke-virtual {v2}, Lw5/g;->d()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v1, v2}, Lw5/c;->onSuccess(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    iget v4, p0, Lua/a;->a:I

    .line 6
    .line 7
    packed-switch v4, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v4, p0, Lua/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v4, Lcom/google/android/gms/signin/internal/zak;

    .line 13
    .line 14
    iget-object v5, v4, Lcom/google/android/gms/signin/internal/zak;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 15
    .line 16
    iget v6, v5, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 17
    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    :cond_0
    iget-object v3, p0, Lua/a;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, Lz4/w;

    .line 24
    .line 25
    if-eqz v2, :cond_6

    .line 26
    .line 27
    iget-object v2, v4, Lcom/google/android/gms/signin/internal/zak;->c:Lcom/google/android/gms/common/internal/zav;

    .line 28
    .line 29
    invoke-static {v2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v4, v2, Lcom/google/android/gms/common/internal/zav;->c:Lcom/google/android/gms/common/ConnectionResult;

    .line 33
    .line 34
    iget v5, v4, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 35
    .line 36
    if-nez v5, :cond_5

    .line 37
    .line 38
    iget-object v4, v3, Lz4/w;->j:La/q;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/google/android/gms/common/internal/zav;->b:Landroid/os/IBinder;

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    sget v0, Lb5/a;->d:I

    .line 46
    .line 47
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 48
    .line 49
    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    instance-of v6, v5, Lb5/c;

    .line 54
    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    check-cast v5, Lb5/c;

    .line 58
    .line 59
    :goto_0
    move-object v0, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    new-instance v5, Lb5/x;

    .line 62
    .line 63
    invoke-direct {v5, v2, v0, v1}, Lcom/google/android/gms/internal/cast/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v1, v3, Lz4/w;->g:Ljava/util/Set;

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    iput-object v0, v4, La/q;->d:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v1, v4, La/q;->e:Ljava/lang/Object;

    .line 80
    .line 81
    iget-boolean v2, v4, La/q;->a:Z

    .line 82
    .line 83
    if-eqz v2, :cond_7

    .line 84
    .line 85
    iget-object v2, v4, La/q;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Ly4/c;

    .line 88
    .line 89
    invoke-interface {v2, v0, v1}, Ly4/c;->b(Lb5/c;Ljava/util/Set;)V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/Exception;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v1, "GoogleApiManager"

    .line 99
    .line 100
    const-string v2, "Received null response from onSignInSuccess"

    .line 101
    .line 102
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 106
    .line 107
    const/4 v1, 0x4

    .line 108
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v0}, La/q;->e(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/Exception;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v2, "Sign-in succeeded with resolve account failure: "

    .line 125
    .line 126
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v2, "SignInCoordinator"

    .line 131
    .line 132
    invoke-static {v2, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    iget-object v0, v3, Lz4/w;->j:La/q;

    .line 136
    .line 137
    invoke-virtual {v0, v4}, La/q;->e(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, v3, Lz4/w;->i:Lv5/a;

    .line 141
    .line 142
    invoke-interface {v0}, Ly4/c;->disconnect()V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    iget-object v0, v3, Lz4/w;->j:La/q;

    .line 147
    .line 148
    invoke-virtual {v0, v5}, La/q;->e(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    :goto_3
    iget-object v0, v3, Lz4/w;->i:Lv5/a;

    .line 152
    .line 153
    invoke-interface {v0}, Ly4/c;->disconnect()V

    .line 154
    .line 155
    .line 156
    :goto_4
    return-void

    .line 157
    :pswitch_0
    iget-object v1, p0, Lua/a;->c:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v1, La/q;

    .line 160
    .line 161
    iget-object v4, v1, La/q;->f:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v4, Lz4/e;

    .line 164
    .line 165
    iget-object v4, v4, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    .line 167
    iget-object v5, v1, La/q;->c:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v5, Lz4/b;

    .line 170
    .line 171
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Lz4/n;

    .line 176
    .line 177
    if-nez v4, :cond_8

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_8
    iget-object v5, p0, Lua/a;->b:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v5, Lcom/google/android/gms/common/ConnectionResult;

    .line 183
    .line 184
    iget v6, v5, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 185
    .line 186
    if-nez v6, :cond_9

    .line 187
    .line 188
    const/4 v2, 0x1

    .line 189
    :cond_9
    if-eqz v2, :cond_b

    .line 190
    .line 191
    iput-boolean v3, v1, La/q;->a:Z

    .line 192
    .line 193
    iget-object v2, v1, La/q;->b:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v2, Ly4/c;

    .line 196
    .line 197
    invoke-interface {v2}, Ly4/c;->k()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_a

    .line 202
    .line 203
    iget-boolean v0, v1, La/q;->a:Z

    .line 204
    .line 205
    if-eqz v0, :cond_c

    .line 206
    .line 207
    iget-object v0, v1, La/q;->d:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v0, Lb5/c;

    .line 210
    .line 211
    if-eqz v0, :cond_c

    .line 212
    .line 213
    iget-object v1, v1, La/q;->e:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v1, Ljava/util/Set;

    .line 216
    .line 217
    invoke-interface {v2, v0, v1}, Ly4/c;->b(Lb5/c;Ljava/util/Set;)V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_a
    :try_start_0
    invoke-interface {v2}, Ly4/c;->a()Ljava/util/Set;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-interface {v2, v0, v1}, Ly4/c;->b(Lb5/c;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :catch_0
    move-exception v1

    .line 230
    const-string v3, "GoogleApiManager"

    .line 231
    .line 232
    const-string v5, "Failed to get service from broker. "

    .line 233
    .line 234
    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .line 236
    .line 237
    const-string v1, "Failed to get service from broker."

    .line 238
    .line 239
    invoke-interface {v2, v1}, Ly4/c;->c(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 243
    .line 244
    const/16 v2, 0xa

    .line 245
    .line 246
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v1, v0}, Lz4/n;->o(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 250
    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_b
    invoke-virtual {v4, v5, v0}, Lz4/n;->o(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 254
    .line 255
    .line 256
    :cond_c
    :goto_5
    return-void

    .line 257
    :cond_d
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lua/a;->b:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v0, Ljava/lang/Runnable;

    .line 260
    .line 261
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .line 263
    .line 264
    goto :goto_6

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    sget-object v1, La9/j;->a:La9/j;

    .line 267
    .line 268
    invoke-static {v1, v0}, Lt9/u;->h(La9/i;Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    :goto_6
    iget-object v0, p0, Lua/a;->c:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v0, Lx9/h;

    .line 274
    .line 275
    invoke-virtual {v0}, Lx9/h;->h()Ljava/lang/Runnable;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    if-nez v1, :cond_e

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_e
    iput-object v1, p0, Lua/a;->b:Ljava/lang/Object;

    .line 283
    .line 284
    add-int/2addr v2, v3

    .line 285
    const/16 v1, 0x10

    .line 286
    .line 287
    if-lt v2, v1, :cond_d

    .line 288
    .line 289
    iget-object v1, v0, Lx9/h;->c:Lt9/p;

    .line 290
    .line 291
    invoke-virtual {v1}, Lt9/p;->g()Z

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    if-eqz v4, :cond_d

    .line 296
    .line 297
    invoke-virtual {v1, v0, p0}, Lt9/p;->d(La9/i;Ljava/lang/Runnable;)V

    .line 298
    .line 299
    .line 300
    :goto_7
    return-void

    .line 301
    :pswitch_2
    invoke-direct {p0}, Lua/a;->b()V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :pswitch_3
    invoke-direct {p0}, Lua/a;->a()V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :pswitch_4
    iget-object v0, p0, Lua/a;->c:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v0, Lw5/f;

    .line 312
    .line 313
    iget-object v0, v0, Lw5/f;->b:Ljava/lang/Object;

    .line 314
    .line 315
    monitor-enter v0

    .line 316
    :try_start_2
    iget-object v1, p0, Lua/a;->c:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v1, Lw5/f;

    .line 319
    .line 320
    iget-object v1, v1, Lw5/f;->d:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v1, Lw5/a;

    .line 323
    .line 324
    iget-object v2, p0, Lua/a;->b:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v2, Lw5/g;

    .line 327
    .line 328
    invoke-interface {v1, v2}, Lw5/a;->e(Lw5/g;)V

    .line 329
    .line 330
    .line 331
    monitor-exit v0

    .line 332
    return-void

    .line 333
    :catchall_1
    move-exception v1

    .line 334
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 335
    throw v1

    .line 336
    :pswitch_5
    :try_start_3
    iget-object v0, p0, Lua/a;->b:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 341
    .line 342
    .line 343
    :catch_1
    :try_start_4
    iget-object v0, p0, Lua/a;->c:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v0, Ljava/io/DataOutputStream;

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 348
    .line 349
    .line 350
    :catch_2
    return-void

    .line 351
    :pswitch_6
    sget-object v0, Lv4/v;->S:Lv4/b;

    .line 352
    .line 353
    iget-object v0, p0, Lua/a;->c:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v0, Lcom/google/android/gms/cast/internal/zza;

    .line 356
    .line 357
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zza;->a:Ljava/lang/String;

    .line 358
    .line 359
    iget-object v4, p0, Lua/a;->b:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v4, Lv4/v;

    .line 362
    .line 363
    iget-object v5, v4, Lv4/v;->G:Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v0, v5}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    if-nez v5, :cond_f

    .line 370
    .line 371
    iput-object v0, v4, Lv4/v;->G:Ljava/lang/String;

    .line 372
    .line 373
    const/4 v0, 0x1

    .line 374
    goto :goto_8

    .line 375
    :cond_f
    const/4 v0, 0x0

    .line 376
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    iget-boolean v6, v4, Lv4/v;->I:Z

    .line 381
    .line 382
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    new-array v1, v1, [Ljava/lang/Object;

    .line 387
    .line 388
    aput-object v5, v1, v2

    .line 389
    .line 390
    aput-object v6, v1, v3

    .line 391
    .line 392
    const-string v3, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 393
    .line 394
    sget-object v5, Lv4/v;->S:Lv4/b;

    .line 395
    .line 396
    invoke-virtual {v5, v3, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    iget-object v1, v4, Lv4/v;->B:Lcom/google/android/gms/internal/cast/j0;

    .line 400
    .line 401
    if-eqz v1, :cond_11

    .line 402
    .line 403
    if-nez v0, :cond_10

    .line 404
    .line 405
    iget-boolean v0, v4, Lv4/v;->I:Z

    .line 406
    .line 407
    if-eqz v0, :cond_11

    .line 408
    .line 409
    :cond_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/j0;->g()V

    .line 410
    .line 411
    .line 412
    :cond_11
    iput-boolean v2, v4, Lv4/v;->I:Z

    .line 413
    .line 414
    return-void

    .line 415
    :pswitch_7
    sget-object v0, Lv4/v;->S:Lv4/b;

    .line 416
    .line 417
    iget-object v0, p0, Lua/a;->c:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v0, Lcom/google/android/gms/cast/internal/zzac;

    .line 420
    .line 421
    iget-object v4, v0, Lcom/google/android/gms/cast/internal/zzac;->d:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 422
    .line 423
    iget-object v5, p0, Lua/a;->b:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v5, Lv4/v;

    .line 426
    .line 427
    iget-object v6, v5, Lv4/v;->z:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 428
    .line 429
    invoke-static {v4, v6}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    iget-object v7, v5, Lv4/v;->B:Lcom/google/android/gms/internal/cast/j0;

    .line 434
    .line 435
    if-nez v6, :cond_12

    .line 436
    .line 437
    iput-object v4, v5, Lv4/v;->z:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 438
    .line 439
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/cast/j0;->e(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    .line 440
    .line 441
    .line 442
    :cond_12
    iget-wide v8, v0, Lcom/google/android/gms/cast/internal/zzac;->a:D

    .line 443
    .line 444
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    if-nez v4, :cond_13

    .line 449
    .line 450
    iget-wide v10, v5, Lv4/v;->K:D

    .line 451
    .line 452
    sub-double v10, v8, v10

    .line 453
    .line 454
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    .line 455
    .line 456
    .line 457
    move-result-wide v10

    .line 458
    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    cmpl-double v4, v10, v12

    .line 464
    .line 465
    if-lez v4, :cond_13

    .line 466
    .line 467
    iput-wide v8, v5, Lv4/v;->K:D

    .line 468
    .line 469
    const/4 v4, 0x1

    .line 470
    goto :goto_9

    .line 471
    :cond_13
    const/4 v4, 0x0

    .line 472
    :goto_9
    iget-boolean v6, v5, Lv4/v;->H:Z

    .line 473
    .line 474
    iget-boolean v8, v0, Lcom/google/android/gms/cast/internal/zzac;->b:Z

    .line 475
    .line 476
    if-eq v8, v6, :cond_14

    .line 477
    .line 478
    iput-boolean v8, v5, Lv4/v;->H:Z

    .line 479
    .line 480
    const/4 v4, 0x1

    .line 481
    :cond_14
    iget-wide v8, v0, Lcom/google/android/gms/cast/internal/zzac;->g:D

    .line 482
    .line 483
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 484
    .line 485
    .line 486
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 487
    .line 488
    .line 489
    move-result-object v6

    .line 490
    iget-boolean v8, v5, Lv4/v;->J:Z

    .line 491
    .line 492
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 493
    .line 494
    .line 495
    move-result-object v8

    .line 496
    new-array v9, v1, [Ljava/lang/Object;

    .line 497
    .line 498
    aput-object v6, v9, v2

    .line 499
    .line 500
    aput-object v8, v9, v3

    .line 501
    .line 502
    sget-object v6, Lv4/v;->S:Lv4/b;

    .line 503
    .line 504
    const-string v8, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 505
    .line 506
    invoke-virtual {v6, v8, v9}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    if-eqz v7, :cond_16

    .line 510
    .line 511
    if-nez v4, :cond_15

    .line 512
    .line 513
    iget-boolean v4, v5, Lv4/v;->J:Z

    .line 514
    .line 515
    if-eqz v4, :cond_16

    .line 516
    .line 517
    :cond_15
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/j0;->l()V

    .line 518
    .line 519
    .line 520
    :cond_16
    iget v4, v5, Lv4/v;->M:I

    .line 521
    .line 522
    iget v8, v0, Lcom/google/android/gms/cast/internal/zzac;->c:I

    .line 523
    .line 524
    if-eq v8, v4, :cond_17

    .line 525
    .line 526
    iput v8, v5, Lv4/v;->M:I

    .line 527
    .line 528
    const/4 v4, 0x1

    .line 529
    goto :goto_a

    .line 530
    :cond_17
    const/4 v4, 0x0

    .line 531
    :goto_a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    iget-boolean v9, v5, Lv4/v;->J:Z

    .line 536
    .line 537
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 538
    .line 539
    .line 540
    move-result-object v9

    .line 541
    new-array v10, v1, [Ljava/lang/Object;

    .line 542
    .line 543
    aput-object v8, v10, v2

    .line 544
    .line 545
    aput-object v9, v10, v3

    .line 546
    .line 547
    const-string v8, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 548
    .line 549
    invoke-virtual {v6, v8, v10}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    if-eqz v7, :cond_19

    .line 553
    .line 554
    if-nez v4, :cond_18

    .line 555
    .line 556
    iget-boolean v4, v5, Lv4/v;->J:Z

    .line 557
    .line 558
    if-eqz v4, :cond_19

    .line 559
    .line 560
    :cond_18
    iget v4, v5, Lv4/v;->M:I

    .line 561
    .line 562
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/cast/j0;->a(I)V

    .line 563
    .line 564
    .line 565
    :cond_19
    iget v4, v5, Lv4/v;->N:I

    .line 566
    .line 567
    iget v8, v0, Lcom/google/android/gms/cast/internal/zzac;->e:I

    .line 568
    .line 569
    if-eq v8, v4, :cond_1a

    .line 570
    .line 571
    iput v8, v5, Lv4/v;->N:I

    .line 572
    .line 573
    const/4 v4, 0x1

    .line 574
    goto :goto_b

    .line 575
    :cond_1a
    const/4 v4, 0x0

    .line 576
    :goto_b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 577
    .line 578
    .line 579
    move-result-object v8

    .line 580
    iget-boolean v9, v5, Lv4/v;->J:Z

    .line 581
    .line 582
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 583
    .line 584
    .line 585
    move-result-object v9

    .line 586
    new-array v1, v1, [Ljava/lang/Object;

    .line 587
    .line 588
    aput-object v8, v1, v2

    .line 589
    .line 590
    aput-object v9, v1, v3

    .line 591
    .line 592
    const-string v3, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 593
    .line 594
    invoke-virtual {v6, v3, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    if-eqz v7, :cond_1c

    .line 598
    .line 599
    if-nez v4, :cond_1b

    .line 600
    .line 601
    iget-boolean v1, v5, Lv4/v;->J:Z

    .line 602
    .line 603
    if-eqz v1, :cond_1c

    .line 604
    .line 605
    :cond_1b
    iget v1, v5, Lv4/v;->N:I

    .line 606
    .line 607
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/cast/j0;->j(I)V

    .line 608
    .line 609
    .line 610
    :cond_1c
    iget-object v1, v5, Lv4/v;->L:Lcom/google/android/gms/cast/zzat;

    .line 611
    .line 612
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zzac;->f:Lcom/google/android/gms/cast/zzat;

    .line 613
    .line 614
    invoke-static {v1, v0}, Lv4/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    if-nez v1, :cond_1d

    .line 619
    .line 620
    iput-object v0, v5, Lv4/v;->L:Lcom/google/android/gms/cast/zzat;

    .line 621
    .line 622
    :cond_1d
    iput-boolean v2, v5, Lv4/v;->J:Z

    .line 623
    .line 624
    return-void

    .line 625
    :pswitch_8
    iget-object v0, p0, Lua/a;->b:Ljava/lang/Object;

    .line 626
    .line 627
    check-cast v0, Ll6/h;

    .line 628
    .line 629
    invoke-virtual {v0}, Ll6/h;->m()Lua/i;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    if-eqz v0, :cond_1e

    .line 634
    .line 635
    iget-object v1, p0, Lua/a;->c:Ljava/lang/Object;

    .line 636
    .line 637
    check-cast v1, Lua/e;

    .line 638
    .line 639
    invoke-virtual {v1, v0}, Lua/e;->c(Lua/i;)V

    .line 640
    .line 641
    .line 642
    return-void

    .line 643
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 644
    .line 645
    const-string v1, "No pending post available"

    .line 646
    .line 647
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    throw v0

    .line 651
    :pswitch_data_0
    .packed-switch 0x0
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
