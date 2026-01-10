.class public final Lga/o;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/util/HashMap;

.field public static volatile c:Landroid/util/SparseArray;

.field public static volatile d:Landroid/util/SparseArray;

.field public static volatile e:Ljava/util/HashSet;

.field public static volatile f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "yOtsy+rhdxXk1l/I\n"

    .line 2
    .line 3
    const-string v1, "irg6pI6iH3Q=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lga/o;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "FiRYsZ99jHQLOQaclXiJYwIwG7vBHpIKPAc=\n"

    .line 12
    .line 13
    const-string v1, "b10hyLIwwVk=\n"

    .line 14
    .line 15
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    const-string v1, "+b7GULG34fTko5h9u7Lk4+2qhVrv1P+K050=\n"

    .line 21
    .line 22
    const-string v2, "gMe/KZz6rNk=\n"

    .line 23
    .line 24
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static a()V
    .locals 6

    .line 1
    sget-object v0, Lga/o;->f:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/Date;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sget-object v2, Lga/o;->a:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "Qgd14tu3+TNVU3f4zvnhOV1TU+LA4v81XxQ6voG3\n"

    .line 23
    .line 24
    const-string v5, "MXMUkK+Xj1w=\n"

    .line 25
    .line 26
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 41
    .line 42
    invoke-static {v2, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lga/o;->e:Ljava/util/HashSet;

    .line 51
    .line 52
    sget-object v0, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-object v2, Lga/i;->g:Lorg/bitspark/android/utils/LimitQueue;

    .line 63
    .line 64
    invoke-virtual {v2}, Lorg/bitspark/android/utils/LimitQueue;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lorg/bitspark/android/beans/ChannelBean;

    .line 79
    .line 80
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    monitor-exit v0

    .line 95
    sput-object v1, Lga/o;->e:Ljava/util/HashSet;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    throw v1

    .line 100
    :cond_2
    :goto_2
    sget-object v0, Lga/o;->a:Ljava/lang/String;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v2, "hCFTdpsjQqaEIVN2mHYO4cRqETvWZQ3C1W0FJdFuBqU=\n"

    .line 108
    .line 109
    const-string v3, "pwJwVbgAYYU=\n"

    .line 110
    .line 111
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    sget-object v2, Lga/o;->e:Ljava/util/HashSet;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Landroid/util/SparseArray;

    .line 135
    .line 136
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 137
    .line 138
    .line 139
    sput-object v1, Lga/o;->c:Landroid/util/SparseArray;

    .line 140
    .line 141
    new-instance v1, Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 144
    .line 145
    .line 146
    sput-object v1, Lga/o;->b:Ljava/util/HashMap;

    .line 147
    .line 148
    new-instance v1, Landroid/util/SparseArray;

    .line 149
    .line 150
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 151
    .line 152
    .line 153
    sput-object v1, Lga/o;->d:Landroid/util/SparseArray;

    .line 154
    .line 155
    new-instance v1, Lorg/bitspark/android/beans/GroupL1;

    .line 156
    .line 157
    invoke-direct {v1}, Lorg/bitspark/android/beans/GroupL1;-><init>()V

    .line 158
    .line 159
    .line 160
    const/4 v2, 0x0

    .line 161
    iput v2, v1, Lorg/bitspark/android/beans/GroupL1;->id:I

    .line 162
    .line 163
    sget-object v2, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 164
    .line 165
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const v3, 0x7f120018

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iput-object v2, v1, Lorg/bitspark/android/beans/GroupL1;->name:Ljava/lang/String;

    .line 177
    .line 178
    new-instance v2, Ljava/util/HashSet;

    .line 179
    .line 180
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object v2, v1, Lorg/bitspark/android/beans/GroupL1;->groups:Ljava/util/HashSet;

    .line 184
    .line 185
    sget-object v2, Lga/o;->d:Landroid/util/SparseArray;

    .line 186
    .line 187
    iget v3, v1, Lorg/bitspark/android/beans/GroupL1;->id:I

    .line 188
    .line 189
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    sget-object v2, Lga/o;->b:Ljava/util/HashMap;

    .line 193
    .line 194
    iget-object v3, v1, Lorg/bitspark/android/beans/GroupL1;->name:Ljava/lang/String;

    .line 195
    .line 196
    iget v4, v1, Lorg/bitspark/android/beans/GroupL1;->id:I

    .line 197
    .line 198
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    new-instance v2, Lorg/bitspark/android/beans/Group;

    .line 206
    .line 207
    invoke-direct {v2}, Lorg/bitspark/android/beans/Group;-><init>()V

    .line 208
    .line 209
    .line 210
    sget-object v3, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 211
    .line 212
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    const v4, 0x7f120016

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    iput-object v3, v2, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 224
    .line 225
    const/16 v3, -0xa

    .line 226
    .line 227
    iput v3, v2, Lorg/bitspark/android/beans/Group;->id:I

    .line 228
    .line 229
    new-instance v4, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .line 233
    .line 234
    iput-object v4, v2, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 235
    .line 236
    sget-object v4, Lga/o;->c:Landroid/util/SparseArray;

    .line 237
    .line 238
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    iget-object v3, v1, Lorg/bitspark/android/beans/GroupL1;->groups:Ljava/util/HashSet;

    .line 242
    .line 243
    iget v2, v2, Lorg/bitspark/android/beans/Group;->id:I

    .line 244
    .line 245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    new-instance v2, Lorg/bitspark/android/beans/Group;

    .line 253
    .line 254
    invoke-direct {v2}, Lorg/bitspark/android/beans/Group;-><init>()V

    .line 255
    .line 256
    .line 257
    sget-object v3, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 258
    .line 259
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    const v4, 0x7f12000b

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    iput-object v3, v2, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 271
    .line 272
    const/4 v3, -0x5

    .line 273
    iput v3, v2, Lorg/bitspark/android/beans/Group;->id:I

    .line 274
    .line 275
    new-instance v4, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .line 279
    .line 280
    iput-object v4, v2, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 281
    .line 282
    sget-object v4, Lga/o;->c:Landroid/util/SparseArray;

    .line 283
    .line 284
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v1, Lorg/bitspark/android/beans/GroupL1;->groups:Ljava/util/HashSet;

    .line 288
    .line 289
    iget v2, v2, Lorg/bitspark/android/beans/Group;->id:I

    .line 290
    .line 291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v2, "WTHcCzBv7KtZMd9+fCiJ+ht1kk19OOHBKU2sbVIejMAlQatpRwn1qA==\n"

    .line 304
    .line 305
    const-string v3, "ehL/KBNMz4g=\n"

    .line 306
    .line 307
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    sget-boolean v2, Lka/m0;->G0:Z

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    new-instance v0, Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 329
    .line 330
    .line 331
    sget-object v0, Lga/o;->f:Ljava/util/List;

    .line 332
    .line 333
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_4

    .line 342
    .line 343
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    check-cast v1, Lorg/bitspark/android/beans/GroupBeanModel;

    .line 348
    .line 349
    sget-boolean v2, Lka/m0;->G0:Z

    .line 350
    .line 351
    if-eqz v2, :cond_3

    .line 352
    .line 353
    goto :goto_3

    .line 354
    :cond_3
    new-instance v2, Lorg/bitspark/android/beans/Group;

    .line 355
    .line 356
    invoke-direct {v2}, Lorg/bitspark/android/beans/Group;-><init>()V

    .line 357
    .line 358
    .line 359
    iget v3, v1, Lorg/bitspark/android/beans/GroupBeanModel;->group_id:I

    .line 360
    .line 361
    iput v3, v2, Lorg/bitspark/android/beans/Group;->id:I

    .line 362
    .line 363
    iget-object v3, v1, Lorg/bitspark/android/beans/GroupBeanModel;->group_name:Ljava/lang/String;

    .line 364
    .line 365
    iput-object v3, v2, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 366
    .line 367
    iget-boolean v3, v1, Lorg/bitspark/android/beans/GroupBeanModel;->restrictedAccess:Z

    .line 368
    .line 369
    iput-boolean v3, v2, Lorg/bitspark/android/beans/Group;->restrictedAccess:Z

    .line 370
    .line 371
    new-instance v3, Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .line 375
    .line 376
    iput-object v3, v2, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 377
    .line 378
    new-instance v2, Lorg/bitspark/android/beans/GroupL1;

    .line 379
    .line 380
    invoke-direct {v2}, Lorg/bitspark/android/beans/GroupL1;-><init>()V

    .line 381
    .line 382
    .line 383
    iget-object v3, v1, Lorg/bitspark/android/beans/GroupBeanModel;->group_name:Ljava/lang/String;

    .line 384
    .line 385
    iput-object v3, v2, Lorg/bitspark/android/beans/GroupL1;->name:Ljava/lang/String;

    .line 386
    .line 387
    iget v3, v1, Lorg/bitspark/android/beans/GroupBeanModel;->group_id:I

    .line 388
    .line 389
    iput v3, v2, Lorg/bitspark/android/beans/GroupL1;->id:I

    .line 390
    .line 391
    new-instance v3, Ljava/util/HashSet;

    .line 392
    .line 393
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 394
    .line 395
    .line 396
    iput-object v3, v2, Lorg/bitspark/android/beans/GroupL1;->groups:Ljava/util/HashSet;

    .line 397
    .line 398
    iget v1, v1, Lorg/bitspark/android/beans/GroupBeanModel;->group_id:I

    .line 399
    .line 400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    sget-object v1, Lga/o;->d:Landroid/util/SparseArray;

    .line 408
    .line 409
    iget v3, v2, Lorg/bitspark/android/beans/GroupL1;->id:I

    .line 410
    .line 411
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    sget-object v1, Lga/o;->b:Ljava/util/HashMap;

    .line 415
    .line 416
    iget-object v3, v2, Lorg/bitspark/android/beans/GroupL1;->name:Ljava/lang/String;

    .line 417
    .line 418
    iget v2, v2, Lorg/bitspark/android/beans/GroupL1;->id:I

    .line 419
    .line 420
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    goto :goto_3

    .line 428
    :cond_4
    return-void
.end method

.method public static b(I)Lorg/bitspark/android/beans/ChannelBean$TagsBean;
    .locals 5

    .line 1
    sget-object v0, Lga/o;->f:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v0, Lga/o;->f:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lorg/bitspark/android/beans/GroupBeanModel;

    .line 24
    .line 25
    iget-object v2, v2, Lorg/bitspark/android/beans/GroupBeanModel;->items:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lorg/bitspark/android/beans/ChannelBean$TagsBean;

    .line 42
    .line 43
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v4, p0, :cond_2

    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_3
    return-object v1
.end method
