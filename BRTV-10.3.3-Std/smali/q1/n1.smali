.class public final Lq1/n1;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lq1/h;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/content/pm/PackageManager;

.field public final e:Ljava/util/ArrayList;

.field public f:Z

.field public g:Z

.field public final h:Landroidx/appcompat/app/b0;

.field public final i:La/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq1/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq1/n1;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/appcompat/app/b0;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, v1, p0}, Landroidx/appcompat/app/b0;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lq1/n1;->h:Landroidx/appcompat/app/b0;

    .line 18
    .line 19
    new-instance v0, La/f;

    .line 20
    .line 21
    const/16 v1, 0x1d

    .line 22
    .line 23
    invoke-direct {v0, v1, p0}, La/f;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lq1/n1;->i:La/f;

    .line 27
    .line 28
    iput-object p1, p0, Lq1/n1;->a:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p2, p0, Lq1/n1;->b:Lq1/h;

    .line 31
    .line 32
    new-instance p2, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lq1/n1;->c:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lq1/n1;->d:Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lq1/n1;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/16 v3, 0x1e

    .line 15
    .line 16
    iget-object v4, p0, Lq1/n1;->a:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v5, p0, Lq1/n1;->d:Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    if-lt v1, v3, :cond_3

    .line 21
    .line 22
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v1, "android.media.MediaRoute2ProviderService"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 53
    .line 54
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 55
    .line 56
    iget-boolean v6, p0, Lq1/n1;->f:Z

    .line 57
    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move-object v0, v1

    .line 78
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .line 79
    .line 80
    const-string v3, "android.media.MediaRouteProviderService"

    .line 81
    .line 82
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const/4 v3, 0x0

    .line 94
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    iget-object v6, p0, Lq1/n1;->e:Ljava/util/ArrayList;

    .line 99
    .line 100
    const/4 v7, 0x1

    .line 101
    iget-object v8, p0, Lq1/n1;->b:Lq1/h;

    .line 102
    .line 103
    if-eqz v5, :cond_12

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 110
    .line 111
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 112
    .line 113
    if-nez v5, :cond_5

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    sget-object v9, Lq1/u0;->c:Lq1/h;

    .line 117
    .line 118
    if-nez v9, :cond_6

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    goto :goto_2

    .line 122
    :cond_6
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-virtual {v9}, Lq1/h;->h()Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    :goto_2
    if-eqz v9, :cond_9

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eqz v9, :cond_7

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    if-eqz v10, :cond_9

    .line 148
    .line 149
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    check-cast v10, Landroid/content/pm/ServiceInfo;

    .line 154
    .line 155
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v12, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-eqz v11, :cond_8

    .line 164
    .line 165
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    if-eqz v10, :cond_8

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_9
    :goto_3
    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    const/4 v12, 0x0

    .line 185
    :goto_4
    if-ge v12, v11, :cond_b

    .line 186
    .line 187
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v13

    .line 191
    check-cast v13, Lq1/m1;

    .line 192
    .line 193
    iget-object v13, v13, Lq1/m1;->i:Landroid/content/ComponentName;

    .line 194
    .line 195
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v14

    .line 203
    if-eqz v14, :cond_a

    .line 204
    .line 205
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    if-eqz v13, :cond_a

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_b
    const/4 v12, -0x1

    .line 220
    :goto_5
    if-gez v12, :cond_d

    .line 221
    .line 222
    new-instance v9, Lq1/m1;

    .line 223
    .line 224
    new-instance v10, Landroid/content/ComponentName;

    .line 225
    .line 226
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 227
    .line 228
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 229
    .line 230
    invoke-direct {v10, v11, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-direct {v9, v4, v10}, Lq1/m1;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 234
    .line 235
    .line 236
    new-instance v5, Landroidx/media3/common/x;

    .line 237
    .line 238
    invoke-direct {v5, p0, v9}, Landroidx/media3/common/x;-><init>(Lq1/n1;Lq1/m1;)V

    .line 239
    .line 240
    .line 241
    iput-object v5, v9, Lq1/m1;->p:Landroidx/media3/common/x;

    .line 242
    .line 243
    iget-boolean v5, v9, Lq1/m1;->l:Z

    .line 244
    .line 245
    if-nez v5, :cond_c

    .line 246
    .line 247
    iput-boolean v7, v9, Lq1/m1;->l:Z

    .line 248
    .line 249
    invoke-virtual {v9}, Lq1/m1;->l()V

    .line 250
    .line 251
    .line 252
    :cond_c
    add-int/lit8 v5, v3, 0x1

    .line 253
    .line 254
    invoke-virtual {v6, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v8, v9, v2}, Lq1/h;->a(Lq1/e0;Z)V

    .line 258
    .line 259
    .line 260
    :goto_6
    move v3, v5

    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :cond_d
    if-lt v12, v3, :cond_4

    .line 264
    .line 265
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    check-cast v5, Lq1/m1;

    .line 270
    .line 271
    iget-boolean v8, v5, Lq1/m1;->l:Z

    .line 272
    .line 273
    if-nez v8, :cond_e

    .line 274
    .line 275
    iput-boolean v7, v5, Lq1/m1;->l:Z

    .line 276
    .line 277
    invoke-virtual {v5}, Lq1/m1;->l()V

    .line 278
    .line 279
    .line 280
    :cond_e
    iget-object v8, v5, Lq1/m1;->n:Lq1/h1;

    .line 281
    .line 282
    if-nez v8, :cond_11

    .line 283
    .line 284
    iget-boolean v8, v5, Lq1/m1;->l:Z

    .line 285
    .line 286
    if-eqz v8, :cond_10

    .line 287
    .line 288
    iget-object v8, v5, Lq1/e0;->e:Lq1/x;

    .line 289
    .line 290
    if-eqz v8, :cond_f

    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_f
    iget-object v8, v5, Lq1/m1;->k:Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    if-nez v8, :cond_10

    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_10
    const/4 v7, 0x0

    .line 303
    :goto_7
    if-eqz v7, :cond_11

    .line 304
    .line 305
    invoke-virtual {v5}, Lq1/m1;->k()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5}, Lq1/m1;->h()V

    .line 309
    .line 310
    .line 311
    :cond_11
    add-int/lit8 v5, v3, 0x1

    .line 312
    .line 313
    invoke-static {v6, v12, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 314
    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_12
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-ge v3, v0, :cond_15

    .line 322
    .line 323
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    sub-int/2addr v0, v7

    .line 328
    :goto_8
    if-lt v0, v3, :cond_15

    .line 329
    .line 330
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    check-cast v1, Lq1/m1;

    .line 335
    .line 336
    invoke-virtual {v8, v1}, Lq1/h;->d(Lq1/e0;)Lq1/r0;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    const/4 v5, 0x0

    .line 341
    if-eqz v4, :cond_13

    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-static {}, Lq1/u0;->b()V

    .line 347
    .line 348
    .line 349
    iput-object v5, v1, Lq1/e0;->d:Lu7/d;

    .line 350
    .line 351
    invoke-virtual {v1, v5}, Lq1/e0;->g(Lq1/x;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v8, v4, v5}, Lq1/h;->n(Lq1/r0;Landroidx/appcompat/app/r0;)V

    .line 355
    .line 356
    .line 357
    iget-object v7, v8, Lq1/h;->a:Lq1/b;

    .line 358
    .line 359
    const/16 v9, 0x202

    .line 360
    .line 361
    invoke-virtual {v7, v9, v4}, Lq1/b;->b(ILjava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    iget-object v7, v8, Lq1/h;->l:Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    :cond_13
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    iput-object v5, v1, Lq1/m1;->p:Landroidx/media3/common/x;

    .line 373
    .line 374
    iget-boolean v4, v1, Lq1/m1;->l:Z

    .line 375
    .line 376
    if-eqz v4, :cond_14

    .line 377
    .line 378
    iput-boolean v2, v1, Lq1/m1;->l:Z

    .line 379
    .line 380
    invoke-virtual {v1}, Lq1/m1;->l()V

    .line 381
    .line 382
    .line 383
    :cond_14
    add-int/lit8 v0, v0, -0x1

    .line 384
    .line 385
    goto :goto_8

    .line 386
    :cond_15
    return-void
.end method
