.class public final Ln5/c;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final b:Lx4/e;

.field public static c:Ljava/lang/Boolean; = null

.field public static d:Ljava/lang/String; = null

.field public static e:Z = false

.field public static f:I = -0x1

.field public static g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/ThreadLocal;

.field public static final i:Lm9/b;

.field public static final j:Lu6/e;

.field public static k:Ln5/g;

.field public static l:Ln5/h;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ln5/c;->h:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Lm9/b;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lm9/b;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ln5/c;->i:Lm9/b;

    .line 15
    .line 16
    new-instance v0, Lu6/e;

    .line 17
    .line 18
    const/16 v1, 0x15

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Ln5/c;->j:Lu6/e;

    .line 24
    .line 25
    new-instance v0, Lx4/e;

    .line 26
    .line 27
    const/16 v1, 0x15

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lx4/e;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Ln5/c;->b:Lx4/e;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln5/c;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Landroid/content/Context;Lx4/e;)Ln5/c;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "No acceptable module com.google.android.gms.cast.framework.dynamite found. Local version is "

    .line 4
    .line 5
    const-string v2, "Selected remote version of com.google.android.gms.cast.framework.dynamite, version >= "

    .line 6
    .line 7
    const-string v3, "Selected remote version of com.google.android.gms.cast.framework.dynamite, version >= "

    .line 8
    .line 9
    const-string v4, " and remote module com.google.android.gms.cast.framework.dynamite:"

    .line 10
    .line 11
    const-string v5, "Considering local module com.google.android.gms.cast.framework.dynamite:"

    .line 12
    .line 13
    const-string v6, "VersionPolicy returned invalid code:"

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    if-eqz v7, :cond_18

    .line 20
    .line 21
    sget-object v8, Ln5/c;->h:Ljava/lang/ThreadLocal;

    .line 22
    .line 23
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    check-cast v9, Ln5/f;

    .line 28
    .line 29
    new-instance v10, Ln5/f;

    .line 30
    .line 31
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v8, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object v11, Ln5/c;->i:Lm9/b;

    .line 38
    .line 39
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    check-cast v12, Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v13

    .line 49
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v17

    .line 53
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v15

    .line 57
    invoke-virtual {v11, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    sget-object v11, Ln5/c;->j:Lu6/e;

    .line 61
    .line 62
    move-object/from16 v15, p1

    .line 63
    .line 64
    invoke-virtual {v15, v0, v11}, Lx4/e;->u(Landroid/content/Context;Lu6/e;)Ln5/b;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    const-string v15, "DynamiteModule"

    .line 69
    .line 70
    move-object/from16 v16, v1

    .line 71
    .line 72
    iget v1, v11, Ln5/b;->a:I

    .line 73
    .line 74
    move-object/from16 v17, v6

    .line 75
    .line 76
    iget v6, v11, Ln5/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 77
    .line 78
    move-object/from16 v18, v9

    .line 79
    .line 80
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget v1, v11, Ln5/b;->c:I

    .line 102
    .line 103
    if-eqz v1, :cond_0

    .line 104
    .line 105
    const/4 v4, -0x1

    .line 106
    if-ne v1, v4, :cond_1

    .line 107
    .line 108
    iget v1, v11, Ln5/b;->a:I

    .line 109
    .line 110
    if-eqz v1, :cond_0

    .line 111
    .line 112
    const/4 v1, -0x1

    .line 113
    goto :goto_2

    .line 114
    :cond_0
    move-object/from16 v9, v18

    .line 115
    .line 116
    goto/16 :goto_10

    .line 117
    .line 118
    :catchall_0
    move-exception v0

    .line 119
    :goto_0
    move-object/from16 v9, v18

    .line 120
    .line 121
    :goto_1
    const-wide/16 v1, 0x0

    .line 122
    .line 123
    goto/16 :goto_11

    .line 124
    .line 125
    :cond_1
    :goto_2
    const/4 v5, 0x1

    .line 126
    if-ne v1, v5, :cond_2

    .line 127
    .line 128
    iget v6, v11, Ln5/b;->b:I

    .line 129
    .line 130
    if-eqz v6, :cond_0

    .line 131
    .line 132
    :cond_2
    if-ne v1, v4, :cond_3

    .line 133
    .line 134
    const-string v0, "Selected local version of "

    .line 135
    .line 136
    const-string v1, "com.google.android.gms.cast.framework.dynamite"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v1, "DynamiteModule"

    .line 143
    .line 144
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    new-instance v0, Ln5/c;

    .line 148
    .line 149
    invoke-direct {v0, v7}, Ln5/c;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .line 151
    .line 152
    :goto_3
    const-wide/16 v1, 0x0

    .line 153
    .line 154
    goto/16 :goto_d

    .line 155
    .line 156
    :cond_3
    if-ne v1, v5, :cond_15

    .line 157
    .line 158
    const/4 v1, 0x0

    .line 159
    :try_start_2
    iget v6, v11, Ln5/b;->b:I
    :try_end_2
    .catch Ln5/a; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .line 161
    :try_start_3
    const-class v9, Ln5/c;

    .line 162
    .line 163
    monitor-enter v9
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ln5/a; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    :try_start_4
    invoke-static/range {p0 .. p0}, Ln5/c;->e(Landroid/content/Context;)Z

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    if-eqz v15, :cond_10

    .line 169
    .line 170
    sget-object v15, Ln5/c;->c:Ljava/lang/Boolean;

    .line 171
    .line 172
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 173
    if-eqz v15, :cond_f

    .line 174
    .line 175
    :try_start_5
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    const/4 v15, 0x2

    .line 180
    if-eqz v9, :cond_9

    .line 181
    .line 182
    const-string v2, "DynamiteModule"

    .line 183
    .line 184
    new-instance v9, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    const-class v2, Ln5/c;

    .line 200
    .line 201
    monitor-enter v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ln5/a; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 202
    :try_start_6
    sget-object v3, Ln5/c;->l:Ln5/h;

    .line 203
    .line 204
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 205
    if-eqz v3, :cond_8

    .line 206
    .line 207
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Ln5/f;

    .line 212
    .line 213
    if-eqz v2, :cond_7

    .line 214
    .line 215
    iget-object v8, v2, Ln5/f;->a:Landroid/database/Cursor;

    .line 216
    .line 217
    if-eqz v8, :cond_7

    .line 218
    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iget-object v2, v2, Ln5/f;->a:Landroid/database/Cursor;

    .line 224
    .line 225
    new-instance v8, Lm5/b;

    .line 226
    .line 227
    const/4 v9, 0x0

    .line 228
    invoke-direct {v8, v9}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    const-class v8, Ln5/c;

    .line 232
    .line 233
    monitor-enter v8
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ln5/a; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 234
    :try_start_8
    sget v9, Ln5/c;->f:I

    .line 235
    .line 236
    if-lt v9, v15, :cond_4

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_4
    const/4 v5, 0x0

    .line 240
    :goto_4
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 241
    if-eqz v5, :cond_5

    .line 242
    .line 243
    :try_start_9
    const-string v5, "DynamiteModule"

    .line 244
    .line 245
    const-string v8, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 246
    .line 247
    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    new-instance v5, Lm5/b;

    .line 251
    .line 252
    invoke-direct {v5, v0}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    new-instance v0, Lm5/b;

    .line 256
    .line 257
    invoke-direct {v0, v2}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v5, v6, v0}, Ln5/h;->A(Lm5/b;ILm5/b;)Lm5/a;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    goto :goto_5

    .line 265
    :catchall_1
    move-exception v0

    .line 266
    goto/16 :goto_9

    .line 267
    .line 268
    :catch_0
    move-exception v0

    .line 269
    goto/16 :goto_a

    .line 270
    .line 271
    :catch_1
    move-exception v0

    .line 272
    goto/16 :goto_b

    .line 273
    .line 274
    :cond_5
    const-string v5, "DynamiteModule"

    .line 275
    .line 276
    const-string v8, "Dynamite loader version < 2, falling back to loadModule2"

    .line 277
    .line 278
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    new-instance v5, Lm5/b;

    .line 282
    .line 283
    invoke-direct {v5, v0}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    new-instance v0, Lm5/b;

    .line 287
    .line 288
    invoke-direct {v0, v2}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v5, v6, v0}, Ln5/h;->z(Lm5/b;ILm5/b;)Lm5/a;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    :goto_5
    invoke-static {v0}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Landroid/content/Context;

    .line 300
    .line 301
    if-eqz v0, :cond_6

    .line 302
    .line 303
    new-instance v2, Ln5/c;

    .line 304
    .line 305
    invoke-direct {v2, v0}, Ln5/c;-><init>(Landroid/content/Context;)V

    .line 306
    .line 307
    .line 308
    :goto_6
    move-object v0, v2

    .line 309
    goto/16 :goto_3

    .line 310
    .line 311
    :cond_6
    new-instance v0, Ln5/a;

    .line 312
    .line 313
    const-string v2, "Failed to get module context"

    .line 314
    .line 315
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ln5/a; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 319
    :catchall_2
    move-exception v0

    .line 320
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 321
    :try_start_b
    throw v0

    .line 322
    :cond_7
    new-instance v0, Ln5/a;

    .line 323
    .line 324
    const-string v2, "No result cursor"

    .line 325
    .line 326
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v0

    .line 330
    :cond_8
    new-instance v0, Ln5/a;

    .line 331
    .line 332
    const-string v2, "DynamiteLoaderV2 was not cached."

    .line 333
    .line 334
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ln5/a; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 338
    :catchall_3
    move-exception v0

    .line 339
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 340
    :try_start_d
    throw v0

    .line 341
    :cond_9
    const-string v3, "DynamiteModule"

    .line 342
    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    invoke-static/range {p0 .. p0}, Ln5/c;->f(Landroid/content/Context;)Ln5/g;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    if-eqz v2, :cond_e

    .line 363
    .line 364
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    const/4 v5, 0x6

    .line 369
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/cast/a;->g(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 378
    .line 379
    .line 380
    const/4 v3, 0x3

    .line 381
    if-lt v5, v3, :cond_b

    .line 382
    .line 383
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    check-cast v3, Ln5/f;

    .line 388
    .line 389
    if-eqz v3, :cond_a

    .line 390
    .line 391
    new-instance v5, Lm5/b;

    .line 392
    .line 393
    invoke-direct {v5, v0}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    iget-object v0, v3, Ln5/f;->a:Landroid/database/Cursor;

    .line 397
    .line 398
    new-instance v3, Lm5/b;

    .line 399
    .line 400
    invoke-direct {v3, v0}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v5, v6, v3}, Ln5/g;->A(Lm5/b;ILm5/b;)Lm5/a;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    goto :goto_7

    .line 408
    :cond_a
    new-instance v0, Ln5/a;

    .line 409
    .line 410
    const-string v2, "No cached result cursor holder"

    .line 411
    .line 412
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    throw v0

    .line 416
    :cond_b
    if-ne v5, v15, :cond_c

    .line 417
    .line 418
    const-string v3, "DynamiteModule"

    .line 419
    .line 420
    const-string v5, "IDynamite loader version = 2"

    .line 421
    .line 422
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    new-instance v3, Lm5/b;

    .line 426
    .line 427
    invoke-direct {v3, v0}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v3, v6}, Ln5/g;->B(Lm5/b;I)Lm5/a;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    goto :goto_7

    .line 435
    :cond_c
    const-string v3, "DynamiteModule"

    .line 436
    .line 437
    const-string v5, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 438
    .line 439
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    new-instance v3, Lm5/b;

    .line 443
    .line 444
    invoke-direct {v3, v0}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v3, v6}, Ln5/g;->z(Lm5/b;I)Lm5/a;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    :goto_7
    invoke-static {v0}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    if-eqz v0, :cond_d

    .line 456
    .line 457
    new-instance v2, Ln5/c;

    .line 458
    .line 459
    check-cast v0, Landroid/content/Context;

    .line 460
    .line 461
    invoke-direct {v2, v0}, Ln5/c;-><init>(Landroid/content/Context;)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_6

    .line 465
    .line 466
    :cond_d
    new-instance v0, Ln5/a;

    .line 467
    .line 468
    const-string v2, "Failed to load remote module."

    .line 469
    .line 470
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v0

    .line 474
    :cond_e
    new-instance v0, Ln5/a;

    .line 475
    .line 476
    const-string v2, "Failed to create IDynamiteLoader."

    .line 477
    .line 478
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    throw v0

    .line 482
    :cond_f
    new-instance v0, Ln5/a;

    .line 483
    .line 484
    const-string v2, "Failed to determine which loading route to use."

    .line 485
    .line 486
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    throw v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ln5/a; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 490
    :catchall_4
    move-exception v0

    .line 491
    goto :goto_8

    .line 492
    :cond_10
    :try_start_e
    new-instance v0, Ln5/a;

    .line 493
    .line 494
    const-string v2, "Remote loading disabled"

    .line 495
    .line 496
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    throw v0

    .line 500
    :goto_8
    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 501
    :try_start_f
    throw v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ln5/a; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 502
    :goto_9
    :try_start_10
    new-instance v2, Ln5/a;

    .line 503
    .line 504
    const-string v3, "Failed to load remote module."

    .line 505
    .line 506
    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    .line 508
    .line 509
    throw v2

    .line 510
    :catch_2
    move-exception v0

    .line 511
    goto :goto_c

    .line 512
    :goto_a
    throw v0

    .line 513
    :goto_b
    new-instance v2, Ln5/a;

    .line 514
    .line 515
    const-string v3, "Failed to load remote module."

    .line 516
    .line 517
    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 518
    .line 519
    .line 520
    throw v2
    :try_end_10
    .catch Ln5/a; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 521
    :goto_c
    :try_start_11
    const-string v2, "DynamiteModule"

    .line 522
    .line 523
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    const-string v6, "Failed to load remote module: "

    .line 533
    .line 534
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .line 546
    .line 547
    iget v2, v11, Ln5/b;->a:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 548
    .line 549
    if-eqz v2, :cond_14

    .line 550
    .line 551
    :try_start_12
    new-instance v3, Ln5/b;

    .line 552
    .line 553
    invoke-direct {v3}, Ln5/b;-><init>()V

    .line 554
    .line 555
    .line 556
    iput v1, v3, Ln5/b;->b:I

    .line 557
    .line 558
    iput v2, v3, Ln5/b;->a:I

    .line 559
    .line 560
    if-eqz v2, :cond_11

    .line 561
    .line 562
    iput v4, v3, Ln5/b;->c:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 563
    .line 564
    :cond_11
    :try_start_13
    iget v1, v3, Ln5/b;->c:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 565
    .line 566
    if-ne v1, v4, :cond_14

    .line 567
    .line 568
    :try_start_14
    const-string v0, "Selected local version of "

    .line 569
    .line 570
    const-string v1, "com.google.android.gms.cast.framework.dynamite"

    .line 571
    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    const-string v1, "DynamiteModule"

    .line 577
    .line 578
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    new-instance v0, Ln5/c;

    .line 582
    .line 583
    invoke-direct {v0, v7}, Ln5/c;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 584
    .line 585
    .line 586
    goto/16 :goto_3

    .line 587
    .line 588
    :goto_d
    cmp-long v3, v13, v1

    .line 589
    .line 590
    if-nez v3, :cond_12

    .line 591
    .line 592
    sget-object v1, Ln5/c;->i:Lm9/b;

    .line 593
    .line 594
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 595
    .line 596
    .line 597
    goto :goto_e

    .line 598
    :cond_12
    sget-object v1, Ln5/c;->i:Lm9/b;

    .line 599
    .line 600
    invoke-virtual {v1, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 601
    .line 602
    .line 603
    :goto_e
    iget-object v1, v10, Ln5/f;->a:Landroid/database/Cursor;

    .line 604
    .line 605
    if-eqz v1, :cond_13

    .line 606
    .line 607
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 608
    .line 609
    .line 610
    :cond_13
    sget-object v1, Ln5/c;->h:Ljava/lang/ThreadLocal;

    .line 611
    .line 612
    move-object/from16 v9, v18

    .line 613
    .line 614
    invoke-virtual {v1, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    return-object v0

    .line 618
    :catchall_5
    move-exception v0

    .line 619
    goto/16 :goto_0

    .line 620
    .line 621
    :cond_14
    move-object/from16 v9, v18

    .line 622
    .line 623
    goto :goto_f

    .line 624
    :catchall_6
    move-exception v0

    .line 625
    goto/16 :goto_0

    .line 626
    .line 627
    :goto_f
    :try_start_15
    new-instance v1, Ln5/a;

    .line 628
    .line 629
    const-string v2, "Remote load failed. No local fallback found."

    .line 630
    .line 631
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 632
    .line 633
    .line 634
    throw v1

    .line 635
    :catchall_7
    move-exception v0

    .line 636
    goto/16 :goto_1

    .line 637
    .line 638
    :cond_15
    move-object/from16 v9, v18

    .line 639
    .line 640
    new-instance v0, Ln5/a;

    .line 641
    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    move-object/from16 v3, v17

    .line 645
    .line 646
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    throw v0

    .line 660
    :goto_10
    new-instance v0, Ln5/a;

    .line 661
    .line 662
    iget v1, v11, Ln5/b;->a:I

    .line 663
    .line 664
    iget v2, v11, Ln5/b;->b:I

    .line 665
    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    move-object/from16 v4, v16

    .line 669
    .line 670
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    const-string v1, " and remote version is "

    .line 677
    .line 678
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    const-string v1, "."

    .line 685
    .line 686
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 697
    :goto_11
    cmp-long v3, v13, v1

    .line 698
    .line 699
    if-nez v3, :cond_16

    .line 700
    .line 701
    sget-object v1, Ln5/c;->i:Lm9/b;

    .line 702
    .line 703
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 704
    .line 705
    .line 706
    goto :goto_12

    .line 707
    :cond_16
    sget-object v1, Ln5/c;->i:Lm9/b;

    .line 708
    .line 709
    invoke-virtual {v1, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    :goto_12
    iget-object v1, v10, Ln5/f;->a:Landroid/database/Cursor;

    .line 713
    .line 714
    if-eqz v1, :cond_17

    .line 715
    .line 716
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 717
    .line 718
    .line 719
    :cond_17
    sget-object v1, Ln5/c;->h:Ljava/lang/ThreadLocal;

    .line 720
    .line 721
    invoke-virtual {v1, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    throw v0

    .line 725
    :cond_18
    new-instance v0, Ln5/a;

    .line 726
    .line 727
    const-string v1, "null application Context"

    .line 728
    .line 729
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 11

    .line 1
    :try_start_0
    const-class v0, Ln5/c;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    sget-object v1, Ln5/c;->c:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v1, :cond_9

    .line 10
    .line 11
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-class v5, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v5, "sClassLoader"

    .line 30
    .line 31
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    :try_start_3
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Ljava/lang/ClassLoader;

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    if-ne v6, v7, :cond_0

    .line 51
    .line 52
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :catchall_0
    move-exception v1

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_0
    if-eqz v6, :cond_1

    .line 60
    .line 61
    :try_start_4
    invoke-static {v6}, Ln5/c;->d(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Ln5/a; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    .line 63
    .line 64
    :catch_0
    :try_start_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_1
    invoke-static {p0}, Ln5/c;->e(Landroid/content/Context;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_2

    .line 73
    .line 74
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 75
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 76
    return v3

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    goto/16 :goto_12

    .line 79
    .line 80
    :cond_2
    :try_start_7
    sget-boolean v6, Ln5/c;->e:Z

    .line 81
    .line 82
    if-nez v6, :cond_8

    .line 83
    .line 84
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {v6, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 90
    if-eqz v7, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    :try_start_8
    invoke-static {p0, p1, p2, v2}, Ln5/c;->c(Landroid/content/Context;Ljava/lang/String;ZZ)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    sget-object v8, Ln5/c;->d:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v8, :cond_7

    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-eqz v8, :cond_4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    invoke-static {}, Ln5/d;->Y()Ljava/lang/ClassLoader;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    if-eqz v8, :cond_5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 116
    .line 117
    const/16 v9, 0x1d

    .line 118
    .line 119
    if-lt v8, v9, :cond_6

    .line 120
    .line 121
    invoke-static {}, Le3/c0;->c()V

    .line 122
    .line 123
    .line 124
    sget-object v8, Ln5/c;->d:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v8}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-static {v8, v9}, Le3/c0;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DelegateLastClassLoader;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    goto :goto_0

    .line 138
    :cond_6
    new-instance v8, Ln5/e;

    .line 139
    .line 140
    sget-object v9, Ln5/c;->d:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v9}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-direct {v8, v9, v10}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 150
    .line 151
    .line 152
    :goto_0
    invoke-static {v8}, Ln5/c;->d(Ljava/lang/ClassLoader;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v4, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    sput-object v6, Ln5/c;->c:Ljava/lang/Boolean;
    :try_end_8
    .catch Ln5/a; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 159
    .line 160
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 161
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 162
    return v7

    .line 163
    :cond_7
    :goto_1
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 164
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 165
    return v7

    .line 166
    :catch_1
    :try_start_d
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_8
    :goto_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 184
    .line 185
    :goto_3
    monitor-exit v5

    .line 186
    goto :goto_6

    .line 187
    :goto_4
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 188
    :try_start_e
    throw v1
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 189
    :catch_2
    move-exception v1

    .line 190
    goto :goto_5

    .line 191
    :catch_3
    move-exception v1

    .line 192
    goto :goto_5

    .line 193
    :catch_4
    move-exception v1

    .line 194
    :goto_5
    :try_start_f
    const-string v5, "DynamiteModule"

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v7, "Failed to load module via V2: "

    .line 206
    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 221
    .line 222
    :goto_6
    sput-object v1, Ln5/c;->c:Ljava/lang/Boolean;

    .line 223
    .line 224
    :cond_9
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 225
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 226
    .line 227
    .line 228
    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 229
    if-eqz v0, :cond_a

    .line 230
    .line 231
    :try_start_11
    invoke-static {p0, p1, p2, v3}, Ln5/c;->c(Landroid/content/Context;Ljava/lang/String;ZZ)I

    .line 232
    .line 233
    .line 234
    move-result p0
    :try_end_11
    .catch Ln5/a; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 235
    return p0

    .line 236
    :catchall_2
    move-exception p1

    .line 237
    goto/16 :goto_13

    .line 238
    .line 239
    :catch_5
    move-exception p1

    .line 240
    :try_start_12
    const-string p2, "DynamiteModule"

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v1, "Failed to retrieve remote module version: "

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    return v3

    .line 267
    :cond_a
    invoke-static {p0}, Ln5/c;->f(Landroid/content/Context;)Ln5/g;

    .line 268
    .line 269
    .line 270
    move-result-object v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 271
    if-nez v5, :cond_b

    .line 272
    .line 273
    goto/16 :goto_10

    .line 274
    .line 275
    :cond_b
    :try_start_13
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    const/4 v1, 0x6

    .line 280
    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/cast/a;->g(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 289
    .line 290
    .line 291
    const/4 v0, 0x3

    .line 292
    if-lt v1, v0, :cond_12

    .line 293
    .line 294
    sget-object v0, Ln5/c;->h:Ljava/lang/ThreadLocal;

    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    check-cast v1, Ln5/f;

    .line 301
    .line 302
    if-eqz v1, :cond_c

    .line 303
    .line 304
    iget-object v1, v1, Ln5/f;->a:Landroid/database/Cursor;

    .line 305
    .line 306
    if-eqz v1, :cond_c

    .line 307
    .line 308
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    goto/16 :goto_10

    .line 313
    .line 314
    :catch_6
    move-exception p1

    .line 315
    goto/16 :goto_e

    .line 316
    .line 317
    :cond_c
    new-instance v6, Lm5/b;

    .line 318
    .line 319
    invoke-direct {v6, p0}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    sget-object v1, Ln5/c;->i:Lm9/b;

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    check-cast v1, Ljava/lang/Long;

    .line 329
    .line 330
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 331
    .line 332
    .line 333
    move-result-wide v9

    .line 334
    move-object v7, p1

    .line 335
    move v8, p2

    .line 336
    invoke-virtual/range {v5 .. v10}, Ln5/g;->C(Lm5/b;Ljava/lang/String;ZJ)Lm5/a;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-static {p1}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    check-cast p1, Landroid/database/Cursor;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 345
    .line 346
    if-eqz p1, :cond_11

    .line 347
    .line 348
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 349
    .line 350
    .line 351
    move-result p2

    .line 352
    if-nez p2, :cond_d

    .line 353
    .line 354
    goto :goto_a

    .line 355
    :cond_d
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 356
    .line 357
    .line 358
    move-result p2

    .line 359
    if-lez p2, :cond_f

    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Ln5/f;

    .line 366
    .line 367
    if-eqz v0, :cond_e

    .line 368
    .line 369
    iget-object v1, v0, Ln5/f;->a:Landroid/database/Cursor;

    .line 370
    .line 371
    if-nez v1, :cond_e

    .line 372
    .line 373
    iput-object p1, v0, Ln5/f;->a:Landroid/database/Cursor;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_e
    const/4 v2, 0x0

    .line 377
    :goto_7
    if-eqz v2, :cond_f

    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_f
    move-object v4, p1

    .line 381
    :goto_8
    if-eqz v4, :cond_10

    .line 382
    .line 383
    :try_start_15
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 384
    .line 385
    .line 386
    :cond_10
    :goto_9
    move v3, p2

    .line 387
    goto/16 :goto_10

    .line 388
    .line 389
    :catchall_3
    move-exception p2

    .line 390
    goto :goto_b

    .line 391
    :catch_7
    move-exception p2

    .line 392
    goto :goto_c

    .line 393
    :cond_11
    :goto_a
    :try_start_16
    const-string p2, "DynamiteModule"

    .line 394
    .line 395
    const-string v0, "Failed to retrieve remote module version."

    .line 396
    .line 397
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 398
    .line 399
    .line 400
    if-eqz p1, :cond_14

    .line 401
    .line 402
    :try_start_17
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 403
    .line 404
    .line 405
    goto/16 :goto_10

    .line 406
    .line 407
    :goto_b
    move-object v4, p1

    .line 408
    goto/16 :goto_11

    .line 409
    .line 410
    :goto_c
    move-object v4, p1

    .line 411
    goto :goto_f

    .line 412
    :cond_12
    const/4 v2, 0x2

    .line 413
    if-ne v1, v2, :cond_13

    .line 414
    .line 415
    :try_start_18
    const-string v0, "DynamiteModule"

    .line 416
    .line 417
    const-string v1, "IDynamite loader version = 2, no high precision latency measurement."

    .line 418
    .line 419
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    new-instance v0, Lm5/b;

    .line 423
    .line 424
    invoke-direct {v0, p0}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-static {v1, v0}, Lr5/a;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    .line 439
    .line 440
    const/4 p1, 0x5

    .line 441
    invoke-virtual {v5, v1, p1}, Lcom/google/android/gms/internal/cast/a;->g(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 446
    .line 447
    .line 448
    move-result p2

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 450
    .line 451
    .line 452
    goto :goto_9

    .line 453
    :cond_13
    const-string v1, "DynamiteModule"

    .line 454
    .line 455
    const-string v2, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 456
    .line 457
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    new-instance v1, Lm5/b;

    .line 461
    .line 462
    invoke-direct {v1, p0}, Lm5/b;-><init>(Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-static {v2, v1}, Lr5/a;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v5, v2, v0}, Lcom/google/android/gms/internal/cast/a;->g(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 483
    .line 484
    .line 485
    move-result p2

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 487
    .line 488
    .line 489
    goto :goto_9

    .line 490
    :goto_d
    move-object p2, p1

    .line 491
    goto :goto_11

    .line 492
    :goto_e
    move-object p2, p1

    .line 493
    :goto_f
    :try_start_19
    const-string p1, "DynamiteModule"

    .line 494
    .line 495
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object p2

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    const-string v1, "Failed to retrieve remote module version: "

    .line 505
    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p2

    .line 516
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 517
    .line 518
    .line 519
    if-eqz v4, :cond_14

    .line 520
    .line 521
    :try_start_1a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 522
    .line 523
    .line 524
    :cond_14
    :goto_10
    return v3

    .line 525
    :catchall_4
    move-exception p1

    .line 526
    goto :goto_d

    .line 527
    :goto_11
    if-eqz v4, :cond_15

    .line 528
    .line 529
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 530
    .line 531
    .line 532
    :cond_15
    throw p2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 533
    :goto_12
    :try_start_1b
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 534
    :try_start_1c
    throw p1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 535
    :goto_13
    :try_start_1d
    invoke-static {p0}, Lb5/l;->e(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8

    .line 536
    .line 537
    .line 538
    goto :goto_14

    .line 539
    :catch_8
    move-exception p0

    .line 540
    const-string p2, "CrashUtils"

    .line 541
    .line 542
    const-string v0, "Error adding exception to DropBox!"

    .line 543
    .line 544
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    .line 546
    .line 547
    :goto_14
    throw p1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Ln5/c;->i:Lm9/b;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const-string v3, "api_force_staging"

    .line 15
    .line 16
    const-string v4, "api"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v5, p2, :cond_0

    .line 20
    .line 21
    move-object v3, v4

    .line 22
    :cond_0
    new-instance p2, Landroid/net/Uri$Builder;

    .line 23
    .line 24
    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "content"

    .line 28
    .line 29
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v4, "com.google.android.gms.chimera"

    .line 34
    .line 35
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "requestStartUptime"

    .line 48
    .line 49
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 66
    .line 67
    .line 68
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 69
    const/4 p1, 0x0

    .line 70
    const/4 p2, 0x2

    .line 71
    if-nez p0, :cond_1

    .line 72
    .line 73
    :goto_0
    move-object v4, v0

    .line 74
    goto/16 :goto_7

    .line 75
    .line 76
    :cond_1
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v11, 0x0

    .line 80
    move-object v6, p0

    .line 81
    :try_start_1
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 82
    .line 83
    .line 84
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    new-instance v4, Landroid/database/MatrixCursor;

    .line 100
    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-direct {v4, v6, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    :goto_1
    if-ge v6, v2, :cond_a

    .line 110
    .line 111
    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_9

    .line 116
    .line 117
    new-array v7, v3, [Ljava/lang/Object;

    .line 118
    .line 119
    const/4 v8, 0x0

    .line 120
    :goto_2
    if-ge v8, v3, :cond_8

    .line 121
    .line 122
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getType(I)I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_7

    .line 127
    .line 128
    if-eq v9, v5, :cond_6

    .line 129
    .line 130
    if-eq v9, p2, :cond_5

    .line 131
    .line 132
    const/4 v10, 0x3

    .line 133
    if-eq v9, v10, :cond_4

    .line 134
    .line 135
    const/4 v10, 0x4

    .line 136
    if-ne v9, v10, :cond_3

    .line 137
    .line 138
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    aput-object v9, v7, v8

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :catchall_0
    move-exception v2

    .line 146
    goto :goto_4

    .line 147
    :cond_3
    new-instance v2, Landroid/os/RemoteException;

    .line 148
    .line 149
    const-string v3, "Unknown column type"

    .line 150
    .line 151
    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v2

    .line 155
    :cond_4
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    aput-object v9, v7, v8

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getDouble(I)D

    .line 163
    .line 164
    .line 165
    move-result-wide v9

    .line 166
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    aput-object v9, v7, v8

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 174
    .line 175
    .line 176
    move-result-wide v9

    .line 177
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    aput-object v9, v7, v8

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    aput-object v0, v7, v8

    .line 185
    .line 186
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_8
    invoke-virtual {v4, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    add-int/lit8 v6, v6, 0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_9
    new-instance v2, Landroid/os/RemoteException;

    .line 196
    .line 197
    const-string v3, "Cursor read incomplete (ContentProvider dead?)"

    .line 198
    .line 199
    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    :cond_a
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 204
    .line 205
    .line 206
    :try_start_5
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 207
    .line 208
    .line 209
    goto :goto_7

    .line 210
    :catchall_1
    move-exception p1

    .line 211
    goto :goto_6

    .line 212
    :goto_4
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catchall_2
    move-exception v1

    .line 217
    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    :goto_5
    throw v2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 221
    :goto_6
    :try_start_8
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 222
    .line 223
    .line 224
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 225
    :goto_7
    if-eqz v4, :cond_13

    .line 226
    .line 227
    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    if-eqz p0, :cond_13

    .line 232
    .line 233
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    if-lez p0, :cond_f

    .line 238
    .line 239
    const-class v1, Ln5/c;

    .line 240
    .line 241
    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 242
    :try_start_a
    invoke-interface {v4, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    sput-object p2, Ln5/c;->d:Ljava/lang/String;

    .line 247
    .line 248
    const-string p2, "loaderVersion"

    .line 249
    .line 250
    invoke-interface {v4, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    if-ltz p2, :cond_b

    .line 255
    .line 256
    invoke-interface {v4, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    sput p2, Ln5/c;->f:I

    .line 261
    .line 262
    goto :goto_8

    .line 263
    :catchall_3
    move-exception p0

    .line 264
    goto :goto_c

    .line 265
    :cond_b
    :goto_8
    const-string p2, "disableStandaloneDynamiteLoader2"

    .line 266
    .line 267
    invoke-interface {v4, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-ltz p2, :cond_d

    .line 272
    .line 273
    invoke-interface {v4, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-eqz p2, :cond_c

    .line 278
    .line 279
    const/4 p2, 0x1

    .line 280
    goto :goto_9

    .line 281
    :cond_c
    const/4 p2, 0x0

    .line 282
    :goto_9
    sput-boolean p2, Ln5/c;->e:Z

    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_d
    const/4 p2, 0x0

    .line 286
    :goto_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 287
    :try_start_b
    sget-object v1, Ln5/c;->h:Ljava/lang/ThreadLocal;

    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    check-cast v1, Ln5/f;

    .line 294
    .line 295
    if-eqz v1, :cond_e

    .line 296
    .line 297
    iget-object v2, v1, Ln5/f;->a:Landroid/database/Cursor;

    .line 298
    .line 299
    if-nez v2, :cond_e

    .line 300
    .line 301
    iput-object v4, v1, Ln5/f;->a:Landroid/database/Cursor;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 302
    .line 303
    goto :goto_b

    .line 304
    :cond_e
    const/4 v5, 0x0

    .line 305
    :goto_b
    move p1, p2

    .line 306
    if-eqz v5, :cond_f

    .line 307
    .line 308
    goto :goto_d

    .line 309
    :cond_f
    move-object v0, v4

    .line 310
    goto :goto_d

    .line 311
    :goto_c
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 312
    :try_start_d
    throw p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 313
    :catchall_4
    move-exception p0

    .line 314
    goto :goto_f

    .line 315
    :catch_1
    move-exception p0

    .line 316
    goto :goto_10

    .line 317
    :goto_d
    if-eqz p3, :cond_11

    .line 318
    .line 319
    if-nez p1, :cond_10

    .line 320
    .line 321
    goto :goto_e

    .line 322
    :cond_10
    :try_start_e
    new-instance p0, Ln5/a;

    .line 323
    .line 324
    const-string p1, "forcing fallback to container DynamiteLoader impl"

    .line 325
    .line 326
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 330
    :catchall_5
    move-exception p0

    .line 331
    goto :goto_12

    .line 332
    :catch_2
    move-exception p0

    .line 333
    goto :goto_11

    .line 334
    :cond_11
    :goto_e
    if-eqz v0, :cond_12

    .line 335
    .line 336
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 337
    .line 338
    .line 339
    :cond_12
    return p0

    .line 340
    :cond_13
    :try_start_f
    const-string p0, "DynamiteModule"

    .line 341
    .line 342
    const-string p1, "Failed to retrieve remote module version."

    .line 343
    .line 344
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    new-instance p0, Ln5/a;

    .line 348
    .line 349
    const-string p1, "Failed to connect to dynamite module ContentResolver."

    .line 350
    .line 351
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 355
    :goto_f
    move-object v0, v4

    .line 356
    goto :goto_12

    .line 357
    :goto_10
    move-object v0, v4

    .line 358
    :goto_11
    :try_start_10
    instance-of p1, p0, Ln5/a;

    .line 359
    .line 360
    if-eqz p1, :cond_14

    .line 361
    .line 362
    throw p0

    .line 363
    :cond_14
    new-instance p1, Ln5/a;

    .line 364
    .line 365
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    new-instance p3, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    const-string v1, "V2 version check failed: "

    .line 375
    .line 376
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    .line 388
    .line 389
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 390
    :goto_12
    if-eqz v0, :cond_15

    .line 391
    .line 392
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 393
    .line 394
    .line 395
    :cond_15
    throw p0
.end method

.method public static d(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/os/IBinder;

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Ln5/h;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v1, Ln5/h;

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
    :cond_1
    new-instance v1, Ln5/h;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/cast/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    sput-object v1, Ln5/c;->l:Ln5/h;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    return-void

    .line 53
    :goto_1
    new-instance v0, Ln5/a;

    .line 54
    .line 55
    const-string v1, "Failed to instantiate dynamite loader"

    .line 56
    .line 57
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    sget-object v1, Ln5/c;->g:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    sget-object v0, Ln5/c;->g:Ljava/lang/Boolean;

    .line 22
    .line 23
    const-string v1, "DynamiteModule"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v5, 0x1d

    .line 35
    .line 36
    if-lt v4, v5, :cond_2

    .line 37
    .line 38
    const/high16 v4, 0x10000000

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v4, 0x0

    .line 42
    :goto_0
    const-string v5, "com.google.android.gms.chimera"

    .line 43
    .line 44
    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v4, Lx4/c;->b:Lx4/c;

    .line 49
    .line 50
    const v5, 0x989680

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, p0, v5}, Lx4/c;->b(Landroid/content/Context;I)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_3

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    const-string p0, "com.google.android.gms"

    .line 62
    .line 63
    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    sput-object p0, Ln5/c;->g:Ljava/lang/Boolean;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 81
    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 85
    .line 86
    and-int/lit16 p0, p0, 0x81

    .line 87
    .line 88
    if-nez p0, :cond_4

    .line 89
    .line 90
    const-string p0, "Non-system-image GmsCore APK, forcing V1"

    .line 91
    .line 92
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    sput-boolean v2, Ln5/c;->e:Z

    .line 96
    .line 97
    :cond_4
    if-nez v3, :cond_5

    .line 98
    .line 99
    const-string p0, "Invalid GmsCore APK, remote loading disabled."

    .line 100
    .line 101
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_5
    return v3
.end method

.method public static f(Landroid/content/Context;)Ln5/g;
    .locals 6

    .line 1
    const-string v0, "Failed to load IDynamiteLoader from GmsCore: "

    .line 2
    .line 3
    const-class v1, Ln5/c;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Ln5/c;->k:Ln5/g;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object v2

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :try_start_1
    const-string v3, "com.google.android.gms"

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/os/IBinder;

    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    move-object v3, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v3, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 43
    .line 44
    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    instance-of v4, v3, Ln5/g;

    .line 49
    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    check-cast v3, Ln5/g;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance v3, Ln5/g;

    .line 58
    .line 59
    const-string v4, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 60
    .line 61
    const/4 v5, 0x2

    .line 62
    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/gms/internal/cast/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    if-eqz v3, :cond_3

    .line 66
    .line 67
    sput-object v3, Ln5/c;->k:Ln5/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    :try_start_2
    monitor-exit v1

    .line 70
    return-object v3

    .line 71
    :goto_1
    const-string v3, "DynamiteModule"

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_3
    monitor-exit v1

    .line 93
    return-object v2

    .line 94
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    throw p0
.end method
