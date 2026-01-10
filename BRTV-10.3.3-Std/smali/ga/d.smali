.class public final Lga/d;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Ljava/lang/String;

.field public static volatile b:Ljava/util/List;

.field public static volatile c:Ljava/util/HashMap;

.field public static volatile d:Ljava/util/HashMap;

.field public static volatile e:Ljava/util/HashMap;

.field public static volatile f:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "L8+3+OdcxCEB\n"

    .line 2
    .line 3
    const-string v1, "bZz0kIYyqkQ=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lga/d;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static a()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "JWrwRt1grP8/bOpf336y/Th/4w==\n"

    .line 4
    .line 5
    const-string v2, "djqvAJw287M=\n"

    .line 6
    .line 7
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 17
    .line 18
    sget-object v3, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "mtqSo7erTB8=\n"

    .line 25
    .line 26
    const-string v5, "+Kni0dLNKW0=\n"

    .line 27
    .line 28
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lga/d;->f:Ljava/util/HashSet;

    .line 45
    .line 46
    sget-object v0, Lga/d;->a:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "Pr7vG4ULvco+vu8bhkv2iHPzqVThWvGcbfSiX4Y=\n"

    .line 54
    .line 55
    const-string v3, "HZ3MOKYonuk=\n"

    .line 56
    .line 57
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    sget-object v2, Lga/d;->f:Ljava/util/HashSet;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    sput-object v1, Lga/d;->c:Ljava/util/HashMap;

    .line 86
    .line 87
    new-instance v1, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    sput-object v1, Lga/d;->d:Ljava/util/HashMap;

    .line 93
    .line 94
    new-instance v1, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    .line 98
    .line 99
    sput-object v1, Lga/d;->e:Ljava/util/HashMap;

    .line 100
    .line 101
    sget-object v1, Lga/d;->b:Ljava/util/List;

    .line 102
    .line 103
    if-eqz v1, :cond_d

    .line 104
    .line 105
    sget-object v1, Lga/d;->b:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_0

    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :cond_0
    new-instance v0, Lorg/bitspark/android/beans/Group;

    .line 116
    .line 117
    invoke-direct {v0}, Lorg/bitspark/android/beans/Group;-><init>()V

    .line 118
    .line 119
    .line 120
    sget-object v1, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const v2, 0x7f12000c

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iput-object v1, v0, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 134
    .line 135
    const/4 v1, -0x5

    .line 136
    iput v1, v0, Lorg/bitspark/android/beans/Group;->type:I

    .line 137
    .line 138
    new-instance v2, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v2, v0, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 144
    .line 145
    sget-object v2, Lga/d;->d:Ljava/util/HashMap;

    .line 146
    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    sget-boolean v0, Lea/h;->D:Z

    .line 155
    .line 156
    const/4 v2, -0x4

    .line 157
    if-eqz v0, :cond_1

    .line 158
    .line 159
    new-instance v0, Lorg/bitspark/android/beans/Group;

    .line 160
    .line 161
    invoke-direct {v0}, Lorg/bitspark/android/beans/Group;-><init>()V

    .line 162
    .line 163
    .line 164
    sget-object v3, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 165
    .line 166
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    const v4, 0x7f120014

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iput-object v3, v0, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 178
    .line 179
    iput v2, v0, Lorg/bitspark/android/beans/Group;->type:I

    .line 180
    .line 181
    new-instance v3, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object v3, v0, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 187
    .line 188
    sget-object v3, Lga/d;->d:Ljava/util/HashMap;

    .line 189
    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_1
    new-instance v0, Lorg/bitspark/android/beans/Group;

    .line 198
    .line 199
    invoke-direct {v0}, Lorg/bitspark/android/beans/Group;-><init>()V

    .line 200
    .line 201
    .line 202
    sget-object v3, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 203
    .line 204
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    const v4, 0x7f120001

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    iput-object v3, v0, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 216
    .line 217
    const/4 v3, -0x3

    .line 218
    iput v3, v0, Lorg/bitspark/android/beans/Group;->type:I

    .line 219
    .line 220
    new-instance v4, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .line 224
    .line 225
    iput-object v4, v0, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 226
    .line 227
    sget-object v4, Lga/d;->d:Ljava/util/HashMap;

    .line 228
    .line 229
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    sget-object v0, Lga/d;->b:Ljava/util/List;

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_b

    .line 247
    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    check-cast v4, Lorg/bitspark/android/beans/ChannelBean;

    .line 253
    .line 254
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getTags()Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    sget-object v6, Lga/d;->c:Ljava/util/HashMap;

    .line 259
    .line 260
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getSid()I

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    if-lez v6, :cond_3

    .line 276
    .line 277
    sget-object v6, Lga/d;->e:Ljava/util/HashMap;

    .line 278
    .line 279
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getSid()I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    const/16 v7, 0x12

    .line 299
    .line 300
    if-eqz v6, :cond_a

    .line 301
    .line 302
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    check-cast v6, Lorg/bitspark/android/beans/ChannelBean$TagsBean;

    .line 307
    .line 308
    sget-object v8, Lga/d;->d:Ljava/util/HashMap;

    .line 309
    .line 310
    invoke-virtual {v6}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    const/16 v9, 0x68

    .line 323
    .line 324
    if-eqz v8, :cond_7

    .line 325
    .line 326
    sget-object v8, Lga/d;->d:Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-virtual {v6}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 329
    .line 330
    .line 331
    move-result v10

    .line 332
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    check-cast v8, Lorg/bitspark/android/beans/Group;

    .line 341
    .line 342
    iget-boolean v8, v8, Lorg/bitspark/android/beans/Group;->restrictedAccess:Z

    .line 343
    .line 344
    if-nez v8, :cond_5

    .line 345
    .line 346
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    if-ne v8, v7, :cond_5

    .line 351
    .line 352
    goto :goto_1

    .line 353
    :cond_5
    sget-boolean v7, Lea/h;->C:Z

    .line 354
    .line 355
    if-eqz v7, :cond_6

    .line 356
    .line 357
    invoke-virtual {v6}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getType()I

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    if-ne v7, v9, :cond_6

    .line 362
    .line 363
    goto :goto_1

    .line 364
    :cond_6
    sget-object v7, Lga/d;->d:Ljava/util/HashMap;

    .line 365
    .line 366
    invoke-virtual {v6}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    check-cast v6, Lorg/bitspark/android/beans/Group;

    .line 379
    .line 380
    iget-object v6, v6, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 381
    .line 382
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    goto :goto_2

    .line 386
    :cond_7
    new-instance v8, Lorg/bitspark/android/beans/Group;

    .line 387
    .line 388
    invoke-direct {v8}, Lorg/bitspark/android/beans/Group;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v6}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getName()Lorg/bitspark/android/beans/ChannelBean$TagsBean$NameBean;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    invoke-virtual {v10}, Lorg/bitspark/android/beans/ChannelBean$TagsBean$NameBean;->getInit()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    iput-object v10, v8, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v6}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->isRestrictedAccess()Z

    .line 402
    .line 403
    .line 404
    move-result v10

    .line 405
    iput-boolean v10, v8, Lorg/bitspark/android/beans/Group;->restrictedAccess:Z

    .line 406
    .line 407
    if-nez v10, :cond_8

    .line 408
    .line 409
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    if-ne v10, v7, :cond_8

    .line 414
    .line 415
    goto :goto_1

    .line 416
    :cond_8
    sget-boolean v7, Lea/h;->C:Z

    .line 417
    .line 418
    if-eqz v7, :cond_9

    .line 419
    .line 420
    invoke-virtual {v6}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getType()I

    .line 421
    .line 422
    .line 423
    move-result v7

    .line 424
    if-ne v7, v9, :cond_9

    .line 425
    .line 426
    goto/16 :goto_1

    .line 427
    .line 428
    :cond_9
    invoke-virtual {v6}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getType()I

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    iput v7, v8, Lorg/bitspark/android/beans/Group;->type:I

    .line 433
    .line 434
    new-instance v7, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .line 438
    .line 439
    iput-object v7, v8, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 440
    .line 441
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    sget-object v7, Lga/d;->d:Ljava/util/HashMap;

    .line 445
    .line 446
    invoke-virtual {v6}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 447
    .line 448
    .line 449
    move-result v6

    .line 450
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    :goto_2
    sget-object v6, Lga/d;->f:Ljava/util/HashSet;

    .line 458
    .line 459
    new-instance v7, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    const-string v8, ""

    .line 462
    .line 463
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 467
    .line 468
    .line 469
    move-result v8

    .line 470
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    if-eqz v6, :cond_4

    .line 482
    .line 483
    sget-object v6, Lga/d;->d:Ljava/util/HashMap;

    .line 484
    .line 485
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    check-cast v6, Lorg/bitspark/android/beans/Group;

    .line 494
    .line 495
    iget-object v6, v6, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 496
    .line 497
    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 498
    .line 499
    .line 500
    move-result v6

    .line 501
    if-gez v6, :cond_4

    .line 502
    .line 503
    sget-object v6, Lga/d;->d:Ljava/util/HashMap;

    .line 504
    .line 505
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    check-cast v6, Lorg/bitspark/android/beans/Group;

    .line 514
    .line 515
    iget-object v6, v6, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 516
    .line 517
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    goto/16 :goto_1

    .line 521
    .line 522
    :cond_a
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 523
    .line 524
    .line 525
    move-result v5

    .line 526
    if-ge v5, v7, :cond_2

    .line 527
    .line 528
    sget-object v5, Lga/d;->d:Ljava/util/HashMap;

    .line 529
    .line 530
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v6

    .line 534
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    check-cast v5, Lorg/bitspark/android/beans/Group;

    .line 539
    .line 540
    iget-object v5, v5, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 541
    .line 542
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->isHasPlayBack()Z

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    if-eqz v5, :cond_2

    .line 550
    .line 551
    sget-boolean v5, Lea/h;->D:Z

    .line 552
    .line 553
    if-eqz v5, :cond_2

    .line 554
    .line 555
    sget-object v5, Lga/d;->d:Ljava/util/HashMap;

    .line 556
    .line 557
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    check-cast v5, Lorg/bitspark/android/beans/Group;

    .line 566
    .line 567
    iget-object v5, v5, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 568
    .line 569
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    goto/16 :goto_0

    .line 573
    .line 574
    :cond_b
    sget-boolean v0, Lea/h;->q:Z

    .line 575
    .line 576
    if-nez v0, :cond_c

    .line 577
    .line 578
    sget-object v0, Lga/d;->d:Ljava/util/HashMap;

    .line 579
    .line 580
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    if-eqz v0, :cond_c

    .line 589
    .line 590
    sget-object v0, Lga/d;->d:Ljava/util/HashMap;

    .line 591
    .line 592
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    check-cast v0, Lorg/bitspark/android/beans/Group;

    .line 601
    .line 602
    iget-object v0, v0, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 603
    .line 604
    if-eqz v0, :cond_c

    .line 605
    .line 606
    sget-object v0, Lga/d;->d:Ljava/util/HashMap;

    .line 607
    .line 608
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    check-cast v0, Lorg/bitspark/android/beans/Group;

    .line 617
    .line 618
    iget-object v0, v0, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 619
    .line 620
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-nez v0, :cond_c

    .line 625
    .line 626
    sget-object v0, Lga/d;->d:Ljava/util/HashMap;

    .line 627
    .line 628
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    :cond_c
    sget-object v0, Lga/d;->a:Ljava/lang/String;

    .line 636
    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    .line 638
    .line 639
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .line 641
    .line 642
    const-string v2, "w+gKQCXbOYfD6ApAJp9oy5W7agtnlnTBjIZIEyY=\n"

    .line 643
    .line 644
    const-string v3, "4MspYwb4GqQ=\n"

    .line 645
    .line 646
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    sget-object v2, Lga/d;->d:Ljava/util/HashMap;

    .line 654
    .line 655
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    return-void

    .line 670
    :cond_d
    :goto_3
    const-string v1, "dqFf/kQyzqB2oV/+R3KF4jvsGbEgY4L2JesSukcxjus07BK4C12E8CG/QbMSfYGjKf5cvg9wg+0w\n7jC0FGXD8Dz4GfVOLNCz\n"

    .line 671
    .line 672
    const-string v2, "VYJ83WcR7YM=\n"

    .line 673
    .line 674
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    return-void
.end method
