.class public abstract Lcom/alibaba/fastjson/JSONValidator;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;,
        Lcom/alibaba/fastjson/JSONValidator$Type;
    }
.end annotation


# instance fields
.field protected ch:C

.field protected count:I

.field protected eof:Z

.field protected pos:I

.field protected supportMultiValue:Z

.field protected type:Lcom/alibaba/fastjson/JSONValidator$Type;

.field private validateResult:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->pos:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    .line 11
    .line 12
    return-void
.end method

.method private any()Z
    .locals 13

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 2
    .line 3
    const/16 v1, 0x75

    .line 4
    .line 5
    const/16 v2, 0x22

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v0, v2, :cond_2a

    .line 10
    .line 11
    const/16 v5, 0x65

    .line 12
    .line 13
    const/16 v6, 0x2d

    .line 14
    .line 15
    const/16 v7, 0x2b

    .line 16
    .line 17
    if-eq v0, v7, :cond_1e

    .line 18
    .line 19
    if-eq v0, v6, :cond_1e

    .line 20
    .line 21
    const/16 v8, 0x5b

    .line 22
    .line 23
    const/16 v9, 0x5d

    .line 24
    .line 25
    const/16 v10, 0x2c

    .line 26
    .line 27
    if-eq v0, v8, :cond_19

    .line 28
    .line 29
    const/16 v8, 0x66

    .line 30
    .line 31
    const/16 v11, 0x6c

    .line 32
    .line 33
    const/16 v12, 0x7d

    .line 34
    .line 35
    if-eq v0, v8, :cond_12

    .line 36
    .line 37
    const/16 v8, 0x6e

    .line 38
    .line 39
    if-eq v0, v8, :cond_c

    .line 40
    .line 41
    const/16 v8, 0x74

    .line 42
    .line 43
    if-eq v0, v8, :cond_6

    .line 44
    .line 45
    const/16 v1, 0x7b

    .line 46
    .line 47
    if-eq v0, v1, :cond_0

    .line 48
    .line 49
    packed-switch v0, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    return v4

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 57
    .line 58
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 69
    .line 70
    if-ne v0, v12, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 78
    .line 79
    return v3

    .line 80
    :cond_2
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 81
    .line 82
    if-ne v0, v2, :cond_5

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->fieldName()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 88
    .line 89
    .line 90
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 91
    .line 92
    const/16 v1, 0x3a

    .line 93
    .line 94
    if-ne v0, v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    return v4

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 110
    .line 111
    .line 112
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 113
    .line 114
    if-ne v0, v10, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    if-ne v0, v12, :cond_5

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 131
    .line 132
    return v3

    .line 133
    :cond_5
    return v4

    .line 134
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 135
    .line 136
    .line 137
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 138
    .line 139
    const/16 v2, 0x72

    .line 140
    .line 141
    if-eq v0, v2, :cond_7

    .line 142
    .line 143
    return v4

    .line 144
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 145
    .line 146
    .line 147
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 148
    .line 149
    if-eq v0, v1, :cond_8

    .line 150
    .line 151
    return v4

    .line 152
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 153
    .line 154
    .line 155
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 156
    .line 157
    if-eq v0, v5, :cond_9

    .line 158
    .line 159
    return v4

    .line 160
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 161
    .line 162
    .line 163
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 164
    .line 165
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_b

    .line 170
    .line 171
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 172
    .line 173
    if-eq v0, v10, :cond_b

    .line 174
    .line 175
    if-eq v0, v9, :cond_b

    .line 176
    .line 177
    if-eq v0, v12, :cond_b

    .line 178
    .line 179
    if-nez v0, :cond_a

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_a
    return v4

    .line 183
    :cond_b
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 184
    .line 185
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 186
    .line 187
    return v3

    .line 188
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 189
    .line 190
    .line 191
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 192
    .line 193
    if-eq v0, v1, :cond_d

    .line 194
    .line 195
    return v4

    .line 196
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 197
    .line 198
    .line 199
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 200
    .line 201
    if-eq v0, v11, :cond_e

    .line 202
    .line 203
    return v4

    .line 204
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 205
    .line 206
    .line 207
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 208
    .line 209
    if-eq v0, v11, :cond_f

    .line 210
    .line 211
    return v4

    .line 212
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 213
    .line 214
    .line 215
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 216
    .line 217
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_11

    .line 222
    .line 223
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 224
    .line 225
    if-eq v0, v10, :cond_11

    .line 226
    .line 227
    if-eq v0, v9, :cond_11

    .line 228
    .line 229
    if-eq v0, v12, :cond_11

    .line 230
    .line 231
    if-nez v0, :cond_10

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_10
    return v4

    .line 235
    :cond_11
    :goto_3
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 236
    .line 237
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 238
    .line 239
    return v3

    .line 240
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 241
    .line 242
    .line 243
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 244
    .line 245
    const/16 v1, 0x61

    .line 246
    .line 247
    if-eq v0, v1, :cond_13

    .line 248
    .line 249
    return v4

    .line 250
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 251
    .line 252
    .line 253
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 254
    .line 255
    if-eq v0, v11, :cond_14

    .line 256
    .line 257
    return v4

    .line 258
    :cond_14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 259
    .line 260
    .line 261
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 262
    .line 263
    const/16 v1, 0x73

    .line 264
    .line 265
    if-eq v0, v1, :cond_15

    .line 266
    .line 267
    return v4

    .line 268
    :cond_15
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 269
    .line 270
    .line 271
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 272
    .line 273
    if-eq v0, v5, :cond_16

    .line 274
    .line 275
    return v4

    .line 276
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 277
    .line 278
    .line 279
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 280
    .line 281
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-nez v0, :cond_18

    .line 286
    .line 287
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 288
    .line 289
    if-eq v0, v10, :cond_18

    .line 290
    .line 291
    if-eq v0, v9, :cond_18

    .line 292
    .line 293
    if-eq v0, v12, :cond_18

    .line 294
    .line 295
    if-nez v0, :cond_17

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_17
    return v4

    .line 299
    :cond_18
    :goto_4
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 300
    .line 301
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 302
    .line 303
    return v3

    .line 304
    :cond_19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 308
    .line 309
    .line 310
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 311
    .line 312
    if-ne v0, v9, :cond_1a

    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 315
    .line 316
    .line 317
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 318
    .line 319
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 320
    .line 321
    return v3

    .line 322
    :cond_1a
    :goto_5
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-nez v0, :cond_1b

    .line 327
    .line 328
    return v4

    .line 329
    :cond_1b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 330
    .line 331
    .line 332
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 333
    .line 334
    if-ne v0, v10, :cond_1c

    .line 335
    .line 336
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 340
    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_1c
    if-ne v0, v9, :cond_1d

    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 346
    .line 347
    .line 348
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 349
    .line 350
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 351
    .line 352
    return v3

    .line 353
    :cond_1d
    return v4

    .line 354
    :cond_1e
    :pswitch_0
    const/16 v1, 0x39

    .line 355
    .line 356
    const/16 v2, 0x30

    .line 357
    .line 358
    if-eq v0, v6, :cond_1f

    .line 359
    .line 360
    if-ne v0, v7, :cond_20

    .line 361
    .line 362
    :cond_1f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 366
    .line 367
    .line 368
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 369
    .line 370
    if-lt v0, v2, :cond_29

    .line 371
    .line 372
    if-le v0, v1, :cond_20

    .line 373
    .line 374
    goto :goto_9

    .line 375
    :cond_20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 376
    .line 377
    .line 378
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 379
    .line 380
    if-lt v0, v2, :cond_21

    .line 381
    .line 382
    if-le v0, v1, :cond_20

    .line 383
    .line 384
    :cond_21
    const/16 v8, 0x2e

    .line 385
    .line 386
    if-ne v0, v8, :cond_24

    .line 387
    .line 388
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 389
    .line 390
    .line 391
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 392
    .line 393
    if-lt v0, v2, :cond_23

    .line 394
    .line 395
    if-le v0, v1, :cond_22

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_22
    :goto_6
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 399
    .line 400
    if-lt v0, v2, :cond_24

    .line 401
    .line 402
    if-gt v0, v1, :cond_24

    .line 403
    .line 404
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 405
    .line 406
    .line 407
    goto :goto_6

    .line 408
    :cond_23
    :goto_7
    return v4

    .line 409
    :cond_24
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 410
    .line 411
    if-eq v0, v5, :cond_25

    .line 412
    .line 413
    const/16 v5, 0x45

    .line 414
    .line 415
    if-ne v0, v5, :cond_28

    .line 416
    .line 417
    :cond_25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 418
    .line 419
    .line 420
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 421
    .line 422
    if-eq v0, v6, :cond_26

    .line 423
    .line 424
    if-ne v0, v7, :cond_27

    .line 425
    .line 426
    :cond_26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 427
    .line 428
    .line 429
    :cond_27
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 430
    .line 431
    if-lt v0, v2, :cond_29

    .line 432
    .line 433
    if-gt v0, v1, :cond_29

    .line 434
    .line 435
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 436
    .line 437
    .line 438
    :goto_8
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 439
    .line 440
    if-lt v0, v2, :cond_28

    .line 441
    .line 442
    if-gt v0, v1, :cond_28

    .line 443
    .line 444
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 445
    .line 446
    .line 447
    goto :goto_8

    .line 448
    :cond_28
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 449
    .line 450
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 451
    .line 452
    return v3

    .line 453
    :cond_29
    :goto_9
    return v4

    .line 454
    :cond_2a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 455
    .line 456
    .line 457
    :goto_a
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    .line 458
    .line 459
    if-eqz v0, :cond_2b

    .line 460
    .line 461
    return v4

    .line 462
    :cond_2b
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 463
    .line 464
    const/16 v5, 0x5c

    .line 465
    .line 466
    if-ne v0, v5, :cond_2d

    .line 467
    .line 468
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 469
    .line 470
    .line 471
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 472
    .line 473
    if-ne v0, v1, :cond_2c

    .line 474
    .line 475
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 488
    .line 489
    .line 490
    goto :goto_a

    .line 491
    :cond_2c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 492
    .line 493
    .line 494
    goto :goto_a

    .line 495
    :cond_2d
    if-ne v0, v2, :cond_2e

    .line 496
    .line 497
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 498
    .line 499
    .line 500
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 501
    .line 502
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 503
    .line 504
    return v3

    .line 505
    :cond_2e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 506
    .line 507
    .line 508
    goto :goto_a

    .line 509
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static from(Ljava/io/Reader;)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromUtf8(Ljava/io/InputStream;)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static fromUtf8([B)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;-><init>([B)V

    return-object v0
.end method

.method public static final isWhiteSpace(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xd

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0xc

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    if-ne p0, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public fieldName()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 2
    .line 3
    .line 4
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 5
    .line 6
    const/16 v1, 0x5c

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 11
    .line 12
    .line 13
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 14
    .line 15
    const/16 v1, 0x75

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 v1, 0x22

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 48
    .line 49
    .line 50
    goto :goto_0
.end method

.method public getType()Lcom/alibaba/fastjson/JSONValidator$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->validate()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 9
    .line 10
    return-object v0
.end method

.method public isSupportMultiValue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract next()V
.end method

.method public setSupportMultiValue(Z)Lcom/alibaba/fastjson/JSONValidator;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public skipWhiteSpace()V
    .locals 1

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public string()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 2
    .line 3
    .line 4
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 9
    .line 10
    const/16 v1, 0x5c

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 15
    .line 16
    .line 17
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    .line 18
    .line 19
    const/16 v1, 0x75

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 v1, 0x22

    .line 44
    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    return v0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v0, 0x0

    .line 57
    return v0
.end method

.method public validate()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    add-int/2addr v0, v2

    .line 29
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    .line 38
    .line 39
    return v2

    .line 40
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    .line 54
    .line 55
    return v2

    .line 56
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    .line 59
    .line 60
    return v1
.end method
