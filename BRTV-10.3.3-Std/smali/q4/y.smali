.class public final synthetic Lq4/y;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lw5/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq4/a;


# direct methods
.method public synthetic constructor <init>(Lq4/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq4/y;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq4/y;->b:Lq4/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    iget v4, v1, Lq4/y;->a:I

    .line 5
    .line 6
    packed-switch v4, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    move-object/from16 v0, p1

    .line 10
    .line 11
    check-cast v0, Landroid/os/Bundle;

    .line 12
    .line 13
    const-string v2, "com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"

    .line 14
    .line 15
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/cast/z0;->g(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    iget-object v0, v1, Lq4/y;->b:Lq4/a;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v4, v1, Lq4/y;->b:Lq4/a;

    .line 25
    .line 26
    move-object/from16 v5, p1

    .line 27
    .line 28
    check-cast v5, Landroid/os/Bundle;

    .line 29
    .line 30
    sget-boolean v6, Lcom/google/android/gms/internal/cast/m1;->k:Z

    .line 31
    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    goto/16 :goto_b

    .line 35
    .line 36
    :cond_0
    iget-object v6, v4, Lq4/a;->a:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v13, v4, Lq4/a;->e:Lv4/r;

    .line 39
    .line 40
    iget-object v10, v4, Lq4/a;->b:Lq4/f;

    .line 41
    .line 42
    iget-object v11, v4, Lq4/a;->h:Lcom/google/android/gms/internal/cast/x;

    .line 43
    .line 44
    iget-object v12, v4, Lq4/a;->f:Lcom/google/android/gms/internal/cast/h;

    .line 45
    .line 46
    new-instance v4, Lcom/google/android/gms/internal/cast/m1;

    .line 47
    .line 48
    move-object v7, v4

    .line 49
    move-object v8, v6

    .line 50
    move-object v9, v13

    .line 51
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/cast/m1;-><init>(Landroid/content/Context;Lv4/r;Lq4/f;Lcom/google/android/gms/internal/cast/x;Lcom/google/android/gms/internal/cast/h;)V

    .line 52
    .line 53
    .line 54
    const-string v7, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    .line 55
    .line 56
    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    const-string v7, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    .line 63
    .line 64
    invoke-virtual {v5, v7, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string v7, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 70
    .line 71
    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_2

    .line 76
    .line 77
    const-string v7, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 78
    .line 79
    invoke-virtual {v5, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_2

    .line 84
    .line 85
    const/4 v7, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const/4 v7, 0x0

    .line 88
    :goto_0
    const-string v8, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    .line 89
    .line 90
    invoke-virtual {v5, v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    const-string v9, "com.google.android.gms.cast.FLAG_CLIENT_ANALYTICS_ENABLED"

    .line 95
    .line 96
    invoke-virtual {v5, v9, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    sput-boolean v9, Lcom/google/android/gms/internal/cast/m1;->k:Z

    .line 101
    .line 102
    if-nez v7, :cond_4

    .line 103
    .line 104
    if-nez v8, :cond_3

    .line 105
    .line 106
    if-eqz v9, :cond_15

    .line 107
    .line 108
    :cond_3
    const/4 v7, 0x0

    .line 109
    :cond_4
    const-string v9, "com.google.android.gms.cast.FLAG_ANALYTICS_CONSENT_TIMEOUT_SECONDS"

    .line 110
    .line 111
    const-wide/16 v10, 0x5

    .line 112
    .line 113
    invoke-virtual {v5, v9, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v9

    .line 117
    new-instance v11, Lcom/google/android/gms/internal/cast/a0;

    .line 118
    .line 119
    invoke-direct {v11, v6, v9, v10}, Lcom/google/android/gms/internal/cast/a0;-><init>(Landroid/content/Context;J)V

    .line 120
    .line 121
    .line 122
    iput-object v11, v4, Lcom/google/android/gms/internal/cast/m1;->h:Lcom/google/android/gms/internal/cast/a0;

    .line 123
    .line 124
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 129
    .line 130
    const-string v10, ".client_cast_analytics_data"

    .line 131
    .line 132
    invoke-static {v9, v10}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    const-string v11, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    .line 137
    .line 138
    invoke-virtual {v5, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v11

    .line 142
    const-wide/16 v14, 0x0

    .line 143
    .line 144
    cmp-long v16, v11, v14

    .line 145
    .line 146
    if-nez v16, :cond_5

    .line 147
    .line 148
    const/4 v11, 0x1

    .line 149
    goto :goto_1

    .line 150
    :cond_5
    const/4 v11, 0x2

    .line 151
    :goto_1
    iput v11, v4, Lcom/google/android/gms/internal/cast/m1;->i:I

    .line 152
    .line 153
    invoke-static {v6}, La4/t;->b(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    invoke-static {}, La4/t;->a()La4/t;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    sget-object v12, Ly3/a;->e:Ly3/a;

    .line 161
    .line 162
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    instance-of v0, v12, La4/m;

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    sget-object v0, Ly3/a;->d:Ljava/util/Set;

    .line 173
    .line 174
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    goto :goto_2

    .line 179
    :cond_6
    new-instance v0, Lx3/b;

    .line 180
    .line 181
    const-string v14, "proto"

    .line 182
    .line 183
    invoke-direct {v0, v14}, Lx3/b;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    :goto_2
    invoke-static {}, La4/j;->a()La1/b;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    const-string v15, "cct"

    .line 198
    .line 199
    iput-object v15, v14, La1/b;->b:Ljava/lang/Object;

    .line 200
    .line 201
    iget-object v15, v12, Ly3/a;->a:Ljava/lang/String;

    .line 202
    .line 203
    iget-object v12, v12, Ly3/a;->b:Ljava/lang/String;

    .line 204
    .line 205
    if-nez v12, :cond_7

    .line 206
    .line 207
    if-nez v15, :cond_7

    .line 208
    .line 209
    const/4 v2, 0x0

    .line 210
    goto :goto_3

    .line 211
    :cond_7
    if-nez v12, :cond_8

    .line 212
    .line 213
    const-string v12, ""

    .line 214
    .line 215
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v3, "1$"

    .line 218
    .line 219
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v3, "\\"

    .line 226
    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    const-string v3, "UTF-8"

    .line 238
    .line 239
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    :goto_3
    iput-object v2, v14, La1/b;->c:Ljava/lang/Object;

    .line 248
    .line 249
    invoke-virtual {v14}, La1/b;->h()La4/j;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    const-string v3, "proto"

    .line 254
    .line 255
    new-instance v12, Lx3/b;

    .line 256
    .line 257
    invoke-direct {v12, v3}, Lx3/b;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance v3, Lcom/google/android/gms/internal/cast/k2;

    .line 261
    .line 262
    const/16 v14, 0x13

    .line 263
    .line 264
    invoke-direct {v3, v14}, Lcom/google/android/gms/internal/cast/k2;-><init>(I)V

    .line 265
    .line 266
    .line 267
    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v14

    .line 271
    if-eqz v14, :cond_16

    .line 272
    .line 273
    new-instance v0, La1/b;

    .line 274
    .line 275
    invoke-direct {v0, v2, v12, v3, v11}, La1/b;-><init>(La4/j;Lx3/b;Lcom/google/android/gms/internal/cast/k2;La4/t;)V

    .line 276
    .line 277
    .line 278
    iput-object v0, v4, Lcom/google/android/gms/internal/cast/m1;->g:La1/b;

    .line 279
    .line 280
    const-string v0, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    .line 281
    .line 282
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_9

    .line 287
    .line 288
    const-string v0, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    .line 289
    .line 290
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 291
    .line 292
    .line 293
    move-result-wide v2

    .line 294
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iput-object v0, v4, Lcom/google/android/gms/internal/cast/m1;->e:Ljava/lang/Long;

    .line 299
    .line 300
    :cond_9
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    const/4 v2, 0x0

    .line 305
    invoke-virtual {v0, v10, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-eqz v7, :cond_a

    .line 310
    .line 311
    const-string v3, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR"

    .line 312
    .line 313
    const-string v5, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"

    .line 314
    .line 315
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    new-instance v6, Lv4/p;

    .line 324
    .line 325
    invoke-direct {v6, v13, v3, v2}, Lv4/p;-><init>(Lv4/r;[Ljava/lang/String;I)V

    .line 326
    .line 327
    .line 328
    iput-object v6, v5, Lc6/c;->c:Ljava/lang/Object;

    .line 329
    .line 330
    const/4 v3, 0x1

    .line 331
    new-array v3, v3, [Lcom/google/android/gms/common/Feature;

    .line 332
    .line 333
    sget-object v6, Lp4/j;->c:Lcom/google/android/gms/common/Feature;

    .line 334
    .line 335
    aput-object v6, v3, v2

    .line 336
    .line 337
    iput-object v3, v5, Lc6/c;->d:Ljava/lang/Object;

    .line 338
    .line 339
    iput-boolean v2, v5, Lc6/c;->b:Z

    .line 340
    .line 341
    const/16 v3, 0x20ea

    .line 342
    .line 343
    iput v3, v5, Lc6/c;->a:I

    .line 344
    .line 345
    invoke-virtual {v5}, Lc6/c;->b()Lc6/c;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-virtual {v13, v2, v3}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    new-instance v3, Landroidx/appcompat/widget/z;

    .line 354
    .line 355
    invoke-direct {v3, v4, v9, v7, v0}, Landroidx/appcompat/widget/z;-><init>(Lcom/google/android/gms/internal/cast/m1;Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v3}, Lw5/g;->b(Lw5/c;)V

    .line 359
    .line 360
    .line 361
    :cond_a
    if-eqz v8, :cond_14

    .line 362
    .line 363
    invoke-static {v0}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    sget-object v2, Lcom/google/android/gms/internal/cast/l2;->i:Lv4/b;

    .line 367
    .line 368
    const-class v2, Lcom/google/android/gms/internal/cast/l2;

    .line 369
    .line 370
    monitor-enter v2

    .line 371
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/cast/l2;->k:Lcom/google/android/gms/internal/cast/l2;

    .line 372
    .line 373
    if-nez v3, :cond_b

    .line 374
    .line 375
    new-instance v3, Lcom/google/android/gms/internal/cast/l2;

    .line 376
    .line 377
    invoke-direct {v3, v0, v4, v9}, Lcom/google/android/gms/internal/cast/l2;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/m1;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    sput-object v3, Lcom/google/android/gms/internal/cast/l2;->k:Lcom/google/android/gms/internal/cast/l2;

    .line 381
    .line 382
    goto :goto_4

    .line 383
    :catchall_0
    move-exception v0

    .line 384
    goto/16 :goto_9

    .line 385
    .line 386
    :cond_b
    :goto_4
    sget-object v0, Lcom/google/android/gms/internal/cast/l2;->k:Lcom/google/android/gms/internal/cast/l2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .line 388
    monitor-exit v2

    .line 389
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/l2;->f:Ljava/util/HashSet;

    .line 390
    .line 391
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/l2;->b:Landroid/content/SharedPreferences;

    .line 392
    .line 393
    const-string v4, "feature_usage_sdk_version"

    .line 394
    .line 395
    const/4 v5, 0x0

    .line 396
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    const-string v7, "feature_usage_package_name"

    .line 401
    .line 402
    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 407
    .line 408
    .line 409
    iget-object v8, v0, Lcom/google/android/gms/internal/cast/l2;->g:Ljava/util/HashSet;

    .line 410
    .line 411
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 412
    .line 413
    .line 414
    const-wide/16 v9, 0x0

    .line 415
    .line 416
    iput-wide v9, v0, Lcom/google/android/gms/internal/cast/l2;->h:J

    .line 417
    .line 418
    sget-object v11, Lcom/google/android/gms/internal/cast/l2;->j:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    const-string v12, "feature_usage_timestamp_"

    .line 425
    .line 426
    const-string v13, "feature_usage_last_report_time"

    .line 427
    .line 428
    iget-object v14, v0, Lcom/google/android/gms/internal/cast/l2;->c:Ljava/lang/String;

    .line 429
    .line 430
    if-eqz v6, :cond_11

    .line 431
    .line 432
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    if-nez v5, :cond_c

    .line 437
    .line 438
    goto/16 :goto_6

    .line 439
    .line 440
    :cond_c
    invoke-interface {v3, v13, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 441
    .line 442
    .line 443
    move-result-wide v4

    .line 444
    iput-wide v4, v0, Lcom/google/android/gms/internal/cast/l2;->h:J

    .line 445
    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 447
    .line 448
    .line 449
    move-result-wide v4

    .line 450
    new-instance v6, Ljava/util/HashSet;

    .line 451
    .line 452
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    :cond_d
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 468
    .line 469
    .line 470
    move-result v9

    .line 471
    if-eqz v9, :cond_10

    .line 472
    .line 473
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v9

    .line 477
    check-cast v9, Ljava/lang/String;

    .line 478
    .line 479
    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 480
    .line 481
    .line 482
    move-result v10

    .line 483
    if-eqz v10, :cond_d

    .line 484
    .line 485
    const-wide/16 v10, 0x0

    .line 486
    .line 487
    invoke-interface {v3, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 488
    .line 489
    .line 490
    move-result-wide v13

    .line 491
    cmp-long v15, v13, v10

    .line 492
    .line 493
    if-eqz v15, :cond_e

    .line 494
    .line 495
    sub-long v13, v4, v13

    .line 496
    .line 497
    const-wide/32 v15, 0x48190800

    .line 498
    .line 499
    .line 500
    cmp-long v17, v13, v15

    .line 501
    .line 502
    if-lez v17, :cond_e

    .line 503
    .line 504
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    goto :goto_5

    .line 508
    :cond_e
    const-string v13, "feature_usage_timestamp_reported_feature_"

    .line 509
    .line 510
    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 511
    .line 512
    .line 513
    move-result v13

    .line 514
    const/16 v14, 0x29

    .line 515
    .line 516
    if-eqz v13, :cond_f

    .line 517
    .line 518
    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/l2;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/m2;

    .line 523
    .line 524
    .line 525
    move-result-object v9

    .line 526
    if-eqz v9, :cond_d

    .line 527
    .line 528
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    goto :goto_5

    .line 535
    :cond_f
    const-string v13, "feature_usage_timestamp_detected_feature_"

    .line 536
    .line 537
    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 538
    .line 539
    .line 540
    move-result v13

    .line 541
    if-eqz v13, :cond_d

    .line 542
    .line 543
    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v9

    .line 547
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/l2;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/m2;

    .line 548
    .line 549
    .line 550
    move-result-object v9

    .line 551
    if-eqz v9, :cond_d

    .line 552
    .line 553
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    goto :goto_5

    .line 557
    :cond_10
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/cast/l2;->c(Ljava/util/HashSet;)V

    .line 558
    .line 559
    .line 560
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/l2;->e:Lcom/google/android/gms/internal/cast/x0;

    .line 561
    .line 562
    invoke-static {v2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/l2;->d:Lcom/google/android/gms/internal/cast/z;

    .line 566
    .line 567
    invoke-static {v2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/l2;->e:Lcom/google/android/gms/internal/cast/x0;

    .line 571
    .line 572
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/l2;->d:Lcom/google/android/gms/internal/cast/z;

    .line 573
    .line 574
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    .line 576
    .line 577
    goto :goto_8

    .line 578
    :cond_11
    :goto_6
    new-instance v2, Ljava/util/HashSet;

    .line 579
    .line 580
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 581
    .line 582
    .line 583
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 584
    .line 585
    .line 586
    move-result-object v5

    .line 587
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    :cond_12
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 596
    .line 597
    .line 598
    move-result v6

    .line 599
    if-eqz v6, :cond_13

    .line 600
    .line 601
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v6

    .line 605
    check-cast v6, Ljava/lang/String;

    .line 606
    .line 607
    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 608
    .line 609
    .line 610
    move-result v8

    .line 611
    if-eqz v8, :cond_12

    .line 612
    .line 613
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    goto :goto_7

    .line 617
    :cond_13
    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cast/l2;->c(Ljava/util/HashSet;)V

    .line 621
    .line 622
    .line 623
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-interface {v0, v4, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-interface {v0, v7, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 636
    .line 637
    .line 638
    :goto_8
    sget-object v0, Lcom/google/android/gms/internal/cast/m2;->g:Lcom/google/android/gms/internal/cast/m2;

    .line 639
    .line 640
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/l2;->a(Lcom/google/android/gms/internal/cast/m2;)V

    .line 641
    .line 642
    .line 643
    goto :goto_a

    .line 644
    :goto_9
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    throw v0

    .line 646
    :cond_14
    :goto_a
    sget-boolean v0, Lcom/google/android/gms/internal/cast/m1;->k:Z

    .line 647
    .line 648
    if-eqz v0, :cond_15

    .line 649
    .line 650
    invoke-static {}, Lcom/google/android/gms/internal/cast/h4;->a()V

    .line 651
    .line 652
    .line 653
    :cond_15
    :goto_b
    return-void

    .line 654
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 655
    .line 656
    const-string v3, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 657
    .line 658
    const/4 v4, 0x2

    .line 659
    new-array v4, v4, [Ljava/lang/Object;

    .line 660
    .line 661
    const/4 v5, 0x0

    .line 662
    aput-object v12, v4, v5

    .line 663
    .line 664
    const/4 v5, 0x1

    .line 665
    aput-object v0, v4, v5

    .line 666
    .line 667
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    throw v2

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
