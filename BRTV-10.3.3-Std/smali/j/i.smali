.class public final Lj/i;
.super Landroid/view/MenuInflater;
.source "MyApplication"


# static fields
.field public static final e:[Ljava/lang/Class;

.field public static final f:[Ljava/lang/Class;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const-class v1, Landroid/content/Context;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sput-object v0, Lj/i;->e:[Ljava/lang/Class;

    .line 10
    .line 11
    sput-object v0, Lj/i;->f:[Ljava/lang/Class;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/i;->c:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    iput-object v0, p0, Lj/i;->a:[Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v0, p0, Lj/i;->b:[Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Landroid/content/ContextWrapper;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lj/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lj/h;

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-direct {v2, v0, v3}, Lj/h;-><init>(Lj/i;Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    :goto_0
    const/4 v4, 0x1

    .line 17
    const-string v5, "menu"

    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    if-ne v3, v6, :cond_1

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v2, "Expecting menu, got "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ne v3, v4, :cond_17

    .line 54
    .line 55
    :goto_1
    const/4 v7, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_2
    if-nez v9, :cond_16

    .line 60
    .line 61
    if-eq v3, v4, :cond_15

    .line 62
    .line 63
    const-string v12, "item"

    .line 64
    .line 65
    const-string v13, "group"

    .line 66
    .line 67
    const/4 v14, 0x3

    .line 68
    if-eq v3, v6, :cond_8

    .line 69
    .line 70
    if-eq v3, v14, :cond_3

    .line 71
    .line 72
    :cond_2
    :goto_3
    move-object/from16 v8, p1

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    :goto_4
    const/4 v6, 0x1

    .line 76
    goto/16 :goto_c

    .line 77
    .line 78
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v10, :cond_4

    .line 83
    .line 84
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    if-eqz v14, :cond_4

    .line 89
    .line 90
    move-object/from16 v8, p1

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    const/4 v6, 0x1

    .line 94
    const/4 v10, 0x0

    .line 95
    const/4 v11, 0x0

    .line 96
    goto/16 :goto_c

    .line 97
    .line 98
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    if-eqz v13, :cond_5

    .line 103
    .line 104
    iput v7, v2, Lj/h;->b:I

    .line 105
    .line 106
    iput v7, v2, Lj/h;->c:I

    .line 107
    .line 108
    iput v7, v2, Lj/h;->d:I

    .line 109
    .line 110
    iput v7, v2, Lj/h;->e:I

    .line 111
    .line 112
    iput-boolean v4, v2, Lj/h;->f:Z

    .line 113
    .line 114
    iput-boolean v4, v2, Lj/h;->g:Z

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-eqz v12, :cond_7

    .line 122
    .line 123
    iget-boolean v3, v2, Lj/h;->h:Z

    .line 124
    .line 125
    if-nez v3, :cond_2

    .line 126
    .line 127
    iget-object v3, v2, Lj/h;->z:Ln0/c;

    .line 128
    .line 129
    if-eqz v3, :cond_6

    .line 130
    .line 131
    check-cast v3, Lk/o;

    .line 132
    .line 133
    iget-object v3, v3, Lk/o;->b:Landroid/view/ActionProvider;

    .line 134
    .line 135
    invoke-virtual {v3}, Landroid/view/ActionProvider;->hasSubMenu()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_6

    .line 140
    .line 141
    iput-boolean v4, v2, Lj/h;->h:Z

    .line 142
    .line 143
    iget v3, v2, Lj/h;->b:I

    .line 144
    .line 145
    iget v12, v2, Lj/h;->i:I

    .line 146
    .line 147
    iget v13, v2, Lj/h;->j:I

    .line 148
    .line 149
    iget-object v14, v2, Lj/h;->k:Ljava/lang/CharSequence;

    .line 150
    .line 151
    iget-object v15, v2, Lj/h;->a:Landroid/view/Menu;

    .line 152
    .line 153
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v2, v3}, Lj/h;->b(Landroid/view/MenuItem;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    iput-boolean v4, v2, Lj/h;->h:Z

    .line 166
    .line 167
    iget v3, v2, Lj/h;->b:I

    .line 168
    .line 169
    iget v12, v2, Lj/h;->i:I

    .line 170
    .line 171
    iget v13, v2, Lj/h;->j:I

    .line 172
    .line 173
    iget-object v14, v2, Lj/h;->k:Ljava/lang/CharSequence;

    .line 174
    .line 175
    iget-object v15, v2, Lj/h;->a:Landroid/view/Menu;

    .line 176
    .line 177
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v2, v3}, Lj/h;->b(Landroid/view/MenuItem;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_2

    .line 190
    .line 191
    move-object/from16 v8, p1

    .line 192
    .line 193
    const/4 v4, 0x0

    .line 194
    const/4 v6, 0x1

    .line 195
    const/4 v9, 0x1

    .line 196
    goto/16 :goto_c

    .line 197
    .line 198
    :cond_8
    if-eqz v10, :cond_9

    .line 199
    .line 200
    goto/16 :goto_3

    .line 201
    .line 202
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    const/4 v15, 0x5

    .line 211
    const/4 v8, 0x4

    .line 212
    iget-object v6, v2, Lj/h;->E:Lj/i;

    .line 213
    .line 214
    if-eqz v13, :cond_a

    .line 215
    .line 216
    iget-object v3, v6, Lj/i;->c:Landroid/content/Context;

    .line 217
    .line 218
    sget-object v6, Le/a;->q:[I

    .line 219
    .line 220
    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    iput v6, v2, Lj/h;->b:I

    .line 229
    .line 230
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    iput v6, v2, Lj/h;->c:I

    .line 235
    .line 236
    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    iput v6, v2, Lj/h;->d:I

    .line 241
    .line 242
    invoke-virtual {v3, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    iput v6, v2, Lj/h;->e:I

    .line 247
    .line 248
    const/4 v6, 0x2

    .line 249
    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    iput-boolean v8, v2, Lj/h;->f:Z

    .line 254
    .line 255
    invoke-virtual {v3, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    iput-boolean v6, v2, Lj/h;->g:Z

    .line 260
    .line 261
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :cond_a
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    if-eqz v12, :cond_13

    .line 271
    .line 272
    iget-object v3, v6, Lj/i;->c:Landroid/content/Context;

    .line 273
    .line 274
    sget-object v12, Le/a;->r:[I

    .line 275
    .line 276
    invoke-static {v3, v1, v12}, La1/b;->B(Landroid/content/Context;Landroid/util/AttributeSet;[I)La1/b;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    iget-object v12, v3, La1/b;->c:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v12, Landroid/content/res/TypedArray;

    .line 283
    .line 284
    const/4 v13, 0x2

    .line 285
    invoke-virtual {v12, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    iput v4, v2, Lj/h;->i:I

    .line 290
    .line 291
    iget v4, v2, Lj/h;->c:I

    .line 292
    .line 293
    invoke-virtual {v12, v15, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    iget v15, v2, Lj/h;->d:I

    .line 298
    .line 299
    const/4 v13, 0x6

    .line 300
    invoke-virtual {v12, v13, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    const/high16 v15, -0x10000

    .line 305
    .line 306
    and-int/2addr v4, v15

    .line 307
    const v15, 0xffff

    .line 308
    .line 309
    .line 310
    and-int/2addr v13, v15

    .line 311
    or-int/2addr v4, v13

    .line 312
    iput v4, v2, Lj/h;->j:I

    .line 313
    .line 314
    const/4 v4, 0x7

    .line 315
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    iput-object v4, v2, Lj/h;->k:Ljava/lang/CharSequence;

    .line 320
    .line 321
    const/16 v4, 0x8

    .line 322
    .line 323
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    iput-object v4, v2, Lj/h;->l:Ljava/lang/CharSequence;

    .line 328
    .line 329
    invoke-virtual {v12, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    iput v4, v2, Lj/h;->m:I

    .line 334
    .line 335
    const/16 v4, 0x9

    .line 336
    .line 337
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    if-nez v4, :cond_b

    .line 342
    .line 343
    const/4 v4, 0x0

    .line 344
    goto :goto_5

    .line 345
    :cond_b
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    :goto_5
    iput-char v4, v2, Lj/h;->n:C

    .line 350
    .line 351
    const/16 v4, 0x10

    .line 352
    .line 353
    const/16 v13, 0x1000

    .line 354
    .line 355
    invoke-virtual {v12, v4, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    iput v4, v2, Lj/h;->o:I

    .line 360
    .line 361
    const/16 v4, 0xa

    .line 362
    .line 363
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    if-nez v4, :cond_c

    .line 368
    .line 369
    const/4 v4, 0x0

    .line 370
    goto :goto_6

    .line 371
    :cond_c
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    :goto_6
    iput-char v4, v2, Lj/h;->p:C

    .line 376
    .line 377
    const/16 v4, 0x14

    .line 378
    .line 379
    invoke-virtual {v12, v4, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    iput v4, v2, Lj/h;->q:I

    .line 384
    .line 385
    const/16 v4, 0xb

    .line 386
    .line 387
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 388
    .line 389
    .line 390
    move-result v13

    .line 391
    if-eqz v13, :cond_d

    .line 392
    .line 393
    invoke-virtual {v12, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    iput v4, v2, Lj/h;->r:I

    .line 398
    .line 399
    goto :goto_7

    .line 400
    :cond_d
    iget v4, v2, Lj/h;->e:I

    .line 401
    .line 402
    iput v4, v2, Lj/h;->r:I

    .line 403
    .line 404
    :goto_7
    invoke-virtual {v12, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    iput-boolean v4, v2, Lj/h;->s:Z

    .line 409
    .line 410
    iget-boolean v4, v2, Lj/h;->f:Z

    .line 411
    .line 412
    invoke-virtual {v12, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    iput-boolean v4, v2, Lj/h;->t:Z

    .line 417
    .line 418
    iget-boolean v4, v2, Lj/h;->g:Z

    .line 419
    .line 420
    const/4 v8, 0x1

    .line 421
    invoke-virtual {v12, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    iput-boolean v4, v2, Lj/h;->u:Z

    .line 426
    .line 427
    const/16 v4, 0x15

    .line 428
    .line 429
    const/4 v8, -0x1

    .line 430
    invoke-virtual {v12, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 431
    .line 432
    .line 433
    move-result v4

    .line 434
    iput v4, v2, Lj/h;->v:I

    .line 435
    .line 436
    const/16 v4, 0xc

    .line 437
    .line 438
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    iput-object v4, v2, Lj/h;->y:Ljava/lang/String;

    .line 443
    .line 444
    const/16 v4, 0xd

    .line 445
    .line 446
    invoke-virtual {v12, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    iput v4, v2, Lj/h;->w:I

    .line 451
    .line 452
    const/16 v4, 0xf

    .line 453
    .line 454
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    iput-object v4, v2, Lj/h;->x:Ljava/lang/String;

    .line 459
    .line 460
    const/16 v4, 0xe

    .line 461
    .line 462
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    if-eqz v4, :cond_e

    .line 467
    .line 468
    const/4 v13, 0x1

    .line 469
    goto :goto_8

    .line 470
    :cond_e
    const/4 v13, 0x0

    .line 471
    :goto_8
    if-eqz v13, :cond_f

    .line 472
    .line 473
    iget v14, v2, Lj/h;->w:I

    .line 474
    .line 475
    if-nez v14, :cond_f

    .line 476
    .line 477
    iget-object v14, v2, Lj/h;->x:Ljava/lang/String;

    .line 478
    .line 479
    if-nez v14, :cond_f

    .line 480
    .line 481
    sget-object v13, Lj/i;->f:[Ljava/lang/Class;

    .line 482
    .line 483
    iget-object v6, v6, Lj/i;->b:[Ljava/lang/Object;

    .line 484
    .line 485
    invoke-virtual {v2, v4, v13, v6}, Lj/h;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    check-cast v4, Ln0/c;

    .line 490
    .line 491
    iput-object v4, v2, Lj/h;->z:Ln0/c;

    .line 492
    .line 493
    goto :goto_9

    .line 494
    :cond_f
    if-eqz v13, :cond_10

    .line 495
    .line 496
    const-string v4, "SupportMenuInflater"

    .line 497
    .line 498
    const-string v6, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 499
    .line 500
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    :cond_10
    const/4 v4, 0x0

    .line 504
    iput-object v4, v2, Lj/h;->z:Ln0/c;

    .line 505
    .line 506
    :goto_9
    const/16 v4, 0x11

    .line 507
    .line 508
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    iput-object v4, v2, Lj/h;->A:Ljava/lang/CharSequence;

    .line 513
    .line 514
    const/16 v4, 0x16

    .line 515
    .line 516
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    iput-object v4, v2, Lj/h;->B:Ljava/lang/CharSequence;

    .line 521
    .line 522
    const/16 v4, 0x13

    .line 523
    .line 524
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 525
    .line 526
    .line 527
    move-result v6

    .line 528
    if-eqz v6, :cond_11

    .line 529
    .line 530
    invoke-virtual {v12, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    iget-object v6, v2, Lj/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 535
    .line 536
    invoke-static {v4, v6}, Landroidx/appcompat/widget/m1;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    iput-object v4, v2, Lj/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 541
    .line 542
    const/4 v4, 0x0

    .line 543
    goto :goto_a

    .line 544
    :cond_11
    const/4 v4, 0x0

    .line 545
    iput-object v4, v2, Lj/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 546
    .line 547
    :goto_a
    const/16 v6, 0x12

    .line 548
    .line 549
    invoke-virtual {v12, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 550
    .line 551
    .line 552
    move-result v8

    .line 553
    if-eqz v8, :cond_12

    .line 554
    .line 555
    invoke-virtual {v3, v6}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    iput-object v6, v2, Lj/h;->C:Landroid/content/res/ColorStateList;

    .line 560
    .line 561
    goto :goto_b

    .line 562
    :cond_12
    iput-object v4, v2, Lj/h;->C:Landroid/content/res/ColorStateList;

    .line 563
    .line 564
    :goto_b
    invoke-virtual {v3}, La1/b;->F()V

    .line 565
    .line 566
    .line 567
    iput-boolean v7, v2, Lj/h;->h:Z

    .line 568
    .line 569
    move-object/from16 v8, p1

    .line 570
    .line 571
    goto/16 :goto_4

    .line 572
    .line 573
    :cond_13
    const/4 v4, 0x0

    .line 574
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    if-eqz v6, :cond_14

    .line 579
    .line 580
    const/4 v6, 0x1

    .line 581
    iput-boolean v6, v2, Lj/h;->h:Z

    .line 582
    .line 583
    iget v3, v2, Lj/h;->b:I

    .line 584
    .line 585
    iget v8, v2, Lj/h;->i:I

    .line 586
    .line 587
    iget v12, v2, Lj/h;->j:I

    .line 588
    .line 589
    iget-object v13, v2, Lj/h;->k:Ljava/lang/CharSequence;

    .line 590
    .line 591
    iget-object v14, v2, Lj/h;->a:Landroid/view/Menu;

    .line 592
    .line 593
    invoke-interface {v14, v3, v8, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 598
    .line 599
    .line 600
    move-result-object v8

    .line 601
    invoke-virtual {v2, v8}, Lj/h;->b(Landroid/view/MenuItem;)V

    .line 602
    .line 603
    .line 604
    move-object/from16 v8, p1

    .line 605
    .line 606
    invoke-virtual {v0, v8, v1, v3}, Lj/i;->b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 607
    .line 608
    .line 609
    goto :goto_c

    .line 610
    :cond_14
    move-object/from16 v8, p1

    .line 611
    .line 612
    const/4 v6, 0x1

    .line 613
    move-object v11, v3

    .line 614
    const/4 v10, 0x1

    .line 615
    :goto_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 616
    .line 617
    .line 618
    move-result v3

    .line 619
    const/4 v4, 0x1

    .line 620
    const/4 v6, 0x2

    .line 621
    goto/16 :goto_2

    .line 622
    .line 623
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    .line 624
    .line 625
    const-string v2, "Unexpected end of document"

    .line 626
    .line 627
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    throw v1

    .line 631
    :cond_16
    return-void

    .line 632
    :cond_17
    move-object/from16 v8, p1

    .line 633
    .line 634
    goto/16 :goto_0
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 3

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 2
    .line 3
    instance-of v1, p2, Lk/l;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iget-object v2, p0, Lj/i;->c:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, v1, p1, p2}, Lj/i;->b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    :try_start_1
    new-instance p2, Landroid/view/InflateException;

    .line 40
    .line 41
    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw p2

    .line 45
    :goto_1
    new-instance p2, Landroid/view/InflateException;

    .line 46
    .line 47
    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_2
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 54
    .line 55
    .line 56
    :cond_1
    throw p1
.end method
