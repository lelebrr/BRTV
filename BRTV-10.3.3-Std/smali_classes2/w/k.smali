.class public final Lw/k;
.super Lw/n;
.source "MyApplication"


# static fields
.field public static final k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lw/k;->k:[I

    .line 5
    .line 6
    return-void
.end method

.method public static m([IIIIIFI)V
    .locals 2

    .line 1
    sub-int/2addr p2, p1

    .line 2
    sub-int/2addr p4, p3

    .line 3
    const/4 p1, -0x1

    .line 4
    const/4 p3, 0x0

    .line 5
    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p6, p1, :cond_2

    .line 9
    .line 10
    if-eqz p6, :cond_1

    .line 11
    .line 12
    if-eq p6, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    int-to-float p1, p2

    .line 16
    mul-float p1, p1, p5

    .line 17
    .line 18
    add-float/2addr p1, v0

    .line 19
    float-to-int p1, p1

    .line 20
    aput p2, p0, p3

    .line 21
    .line 22
    aput p1, p0, v1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    int-to-float p1, p4

    .line 26
    mul-float p1, p1, p5

    .line 27
    .line 28
    add-float/2addr p1, v0

    .line 29
    float-to-int p1, p1

    .line 30
    aput p1, p0, p3

    .line 31
    .line 32
    aput p4, p0, v1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    int-to-float p1, p4

    .line 36
    mul-float p1, p1, p5

    .line 37
    .line 38
    add-float/2addr p1, v0

    .line 39
    float-to-int p1, p1

    .line 40
    int-to-float p6, p2

    .line 41
    div-float/2addr p6, p5

    .line 42
    add-float/2addr p6, v0

    .line 43
    float-to-int p5, p6

    .line 44
    if-gt p1, p2, :cond_3

    .line 45
    .line 46
    aput p1, p0, p3

    .line 47
    .line 48
    aput p4, p0, v1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    if-gt p5, p4, :cond_4

    .line 52
    .line 53
    aput p2, p0, p3

    .line 54
    .line 55
    aput p5, p0, v1

    .line 56
    .line 57
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lw/e;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw/n;->j:I

    .line 4
    .line 5
    invoke-static {v1}, Lu/h;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x3

    .line 11
    if-eq v1, v3, :cond_2a

    .line 12
    .line 13
    iget-object v1, v0, Lw/n;->e:Lw/h;

    .line 14
    .line 15
    iget-boolean v4, v1, Lw/g;->j:Z

    .line 16
    .line 17
    sget-object v5, Lv/d;->c:Lv/d;

    .line 18
    .line 19
    iget-object v6, v0, Lw/n;->h:Lw/g;

    .line 20
    .line 21
    iget-object v7, v0, Lw/n;->i:Lw/g;

    .line 22
    .line 23
    const/high16 v8, 0x3f000000    # 0.5f

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    if-nez v4, :cond_21

    .line 27
    .line 28
    iget-object v4, v0, Lw/n;->d:Lv/d;

    .line 29
    .line 30
    if-ne v4, v5, :cond_21

    .line 31
    .line 32
    iget-object v4, v0, Lw/n;->b:Lv/e;

    .line 33
    .line 34
    iget v10, v4, Lv/e;->j:I

    .line 35
    .line 36
    const/4 v11, 0x2

    .line 37
    if-eq v10, v11, :cond_20

    .line 38
    .line 39
    if-eq v10, v3, :cond_0

    .line 40
    .line 41
    goto/16 :goto_e

    .line 42
    .line 43
    :cond_0
    iget v10, v4, Lv/e;->k:I

    .line 44
    .line 45
    const/4 v11, -0x1

    .line 46
    if-eqz v10, :cond_5

    .line 47
    .line 48
    if-ne v10, v3, :cond_1

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    iget v3, v4, Lv/e;->O:I

    .line 52
    .line 53
    if-eq v3, v11, :cond_4

    .line 54
    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    if-eq v3, v9, :cond_2

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    iget-object v3, v4, Lv/e;->e:Lw/m;

    .line 62
    .line 63
    iget-object v3, v3, Lw/n;->e:Lw/h;

    .line 64
    .line 65
    iget v3, v3, Lw/g;->g:I

    .line 66
    .line 67
    int-to-float v3, v3

    .line 68
    iget v4, v4, Lv/e;->N:F

    .line 69
    .line 70
    :goto_0
    mul-float v3, v3, v4

    .line 71
    .line 72
    :goto_1
    add-float/2addr v3, v8

    .line 73
    float-to-int v3, v3

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object v3, v4, Lv/e;->e:Lw/m;

    .line 76
    .line 77
    iget-object v3, v3, Lw/n;->e:Lw/h;

    .line 78
    .line 79
    iget v3, v3, Lw/g;->g:I

    .line 80
    .line 81
    int-to-float v3, v3

    .line 82
    iget v4, v4, Lv/e;->N:F

    .line 83
    .line 84
    div-float/2addr v3, v4

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iget-object v3, v4, Lv/e;->e:Lw/m;

    .line 87
    .line 88
    iget-object v3, v3, Lw/n;->e:Lw/h;

    .line 89
    .line 90
    iget v3, v3, Lw/g;->g:I

    .line 91
    .line 92
    int-to-float v3, v3

    .line 93
    iget v4, v4, Lv/e;->N:F

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :goto_2
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_e

    .line 100
    .line 101
    :cond_5
    :goto_3
    iget-object v3, v4, Lv/e;->e:Lw/m;

    .line 102
    .line 103
    iget-object v10, v3, Lw/n;->h:Lw/g;

    .line 104
    .line 105
    iget-object v3, v3, Lw/n;->i:Lw/g;

    .line 106
    .line 107
    iget-object v12, v4, Lv/e;->y:Lv/c;

    .line 108
    .line 109
    iget-object v12, v12, Lv/c;->d:Lv/c;

    .line 110
    .line 111
    if-eqz v12, :cond_6

    .line 112
    .line 113
    const/4 v12, 0x1

    .line 114
    goto :goto_4

    .line 115
    :cond_6
    const/4 v12, 0x0

    .line 116
    :goto_4
    iget-object v13, v4, Lv/e;->z:Lv/c;

    .line 117
    .line 118
    iget-object v13, v13, Lv/c;->d:Lv/c;

    .line 119
    .line 120
    if-eqz v13, :cond_7

    .line 121
    .line 122
    const/4 v13, 0x1

    .line 123
    goto :goto_5

    .line 124
    :cond_7
    const/4 v13, 0x0

    .line 125
    :goto_5
    iget-object v14, v4, Lv/e;->A:Lv/c;

    .line 126
    .line 127
    iget-object v14, v14, Lv/c;->d:Lv/c;

    .line 128
    .line 129
    if-eqz v14, :cond_8

    .line 130
    .line 131
    const/4 v14, 0x1

    .line 132
    goto :goto_6

    .line 133
    :cond_8
    const/4 v14, 0x0

    .line 134
    :goto_6
    iget-object v15, v4, Lv/e;->B:Lv/c;

    .line 135
    .line 136
    iget-object v15, v15, Lv/c;->d:Lv/c;

    .line 137
    .line 138
    if-eqz v15, :cond_9

    .line 139
    .line 140
    const/4 v15, 0x1

    .line 141
    goto :goto_7

    .line 142
    :cond_9
    const/4 v15, 0x0

    .line 143
    :goto_7
    iget v8, v4, Lv/e;->O:I

    .line 144
    .line 145
    if-eqz v12, :cond_12

    .line 146
    .line 147
    if-eqz v13, :cond_12

    .line 148
    .line 149
    if-eqz v14, :cond_12

    .line 150
    .line 151
    if-eqz v15, :cond_12

    .line 152
    .line 153
    iget v4, v4, Lv/e;->N:F

    .line 154
    .line 155
    iget-boolean v11, v10, Lw/g;->j:Z

    .line 156
    .line 157
    sget-object v12, Lw/k;->k:[I

    .line 158
    .line 159
    if-eqz v11, :cond_c

    .line 160
    .line 161
    iget-boolean v11, v3, Lw/g;->j:Z

    .line 162
    .line 163
    if-eqz v11, :cond_c

    .line 164
    .line 165
    iget-boolean v5, v6, Lw/g;->c:Z

    .line 166
    .line 167
    if-eqz v5, :cond_b

    .line 168
    .line 169
    iget-boolean v5, v7, Lw/g;->c:Z

    .line 170
    .line 171
    if-nez v5, :cond_a

    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_a
    iget-object v5, v6, Lw/g;->l:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    check-cast v5, Lw/g;

    .line 181
    .line 182
    iget v5, v5, Lw/g;->g:I

    .line 183
    .line 184
    iget v6, v6, Lw/g;->f:I

    .line 185
    .line 186
    add-int v17, v5, v6

    .line 187
    .line 188
    iget-object v5, v7, Lw/g;->l:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    check-cast v5, Lw/g;

    .line 195
    .line 196
    iget v5, v5, Lw/g;->g:I

    .line 197
    .line 198
    iget v6, v7, Lw/g;->f:I

    .line 199
    .line 200
    sub-int v18, v5, v6

    .line 201
    .line 202
    iget v5, v10, Lw/g;->g:I

    .line 203
    .line 204
    iget v6, v10, Lw/g;->f:I

    .line 205
    .line 206
    add-int v19, v5, v6

    .line 207
    .line 208
    iget v5, v3, Lw/g;->g:I

    .line 209
    .line 210
    iget v3, v3, Lw/g;->f:I

    .line 211
    .line 212
    sub-int v20, v5, v3

    .line 213
    .line 214
    move-object/from16 v16, v12

    .line 215
    .line 216
    move/from16 v21, v4

    .line 217
    .line 218
    move/from16 v22, v8

    .line 219
    .line 220
    invoke-static/range {v16 .. v22}, Lw/k;->m([IIIIIFI)V

    .line 221
    .line 222
    .line 223
    aget v2, v12, v2

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Lw/h;->d(I)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lw/n;->b:Lv/e;

    .line 229
    .line 230
    iget-object v1, v1, Lv/e;->e:Lw/m;

    .line 231
    .line 232
    iget-object v1, v1, Lw/n;->e:Lw/h;

    .line 233
    .line 234
    aget v2, v12, v9

    .line 235
    .line 236
    invoke-virtual {v1, v2}, Lw/h;->d(I)V

    .line 237
    .line 238
    .line 239
    :cond_b
    :goto_8
    return-void

    .line 240
    :cond_c
    iget-boolean v11, v6, Lw/g;->j:Z

    .line 241
    .line 242
    iget-object v13, v10, Lw/g;->l:Ljava/util/ArrayList;

    .line 243
    .line 244
    if-eqz v11, :cond_f

    .line 245
    .line 246
    iget-boolean v11, v7, Lw/g;->j:Z

    .line 247
    .line 248
    if-eqz v11, :cond_f

    .line 249
    .line 250
    iget-boolean v11, v10, Lw/g;->c:Z

    .line 251
    .line 252
    if-eqz v11, :cond_e

    .line 253
    .line 254
    iget-boolean v11, v3, Lw/g;->c:Z

    .line 255
    .line 256
    if-nez v11, :cond_d

    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_d
    iget v11, v6, Lw/g;->g:I

    .line 260
    .line 261
    iget v14, v6, Lw/g;->f:I

    .line 262
    .line 263
    add-int v17, v11, v14

    .line 264
    .line 265
    iget v11, v7, Lw/g;->g:I

    .line 266
    .line 267
    iget v14, v7, Lw/g;->f:I

    .line 268
    .line 269
    sub-int v18, v11, v14

    .line 270
    .line 271
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    check-cast v11, Lw/g;

    .line 276
    .line 277
    iget v11, v11, Lw/g;->g:I

    .line 278
    .line 279
    iget v14, v10, Lw/g;->f:I

    .line 280
    .line 281
    add-int v19, v11, v14

    .line 282
    .line 283
    iget-object v11, v3, Lw/g;->l:Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    check-cast v11, Lw/g;

    .line 290
    .line 291
    iget v11, v11, Lw/g;->g:I

    .line 292
    .line 293
    iget v14, v3, Lw/g;->f:I

    .line 294
    .line 295
    sub-int v20, v11, v14

    .line 296
    .line 297
    move-object/from16 v16, v12

    .line 298
    .line 299
    move/from16 v21, v4

    .line 300
    .line 301
    move/from16 v22, v8

    .line 302
    .line 303
    invoke-static/range {v16 .. v22}, Lw/k;->m([IIIIIFI)V

    .line 304
    .line 305
    .line 306
    aget v11, v12, v2

    .line 307
    .line 308
    invoke-virtual {v1, v11}, Lw/h;->d(I)V

    .line 309
    .line 310
    .line 311
    iget-object v11, v0, Lw/n;->b:Lv/e;

    .line 312
    .line 313
    iget-object v11, v11, Lv/e;->e:Lw/m;

    .line 314
    .line 315
    iget-object v11, v11, Lw/n;->e:Lw/h;

    .line 316
    .line 317
    aget v14, v12, v9

    .line 318
    .line 319
    invoke-virtual {v11, v14}, Lw/h;->d(I)V

    .line 320
    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_e
    :goto_9
    return-void

    .line 324
    :cond_f
    :goto_a
    iget-boolean v11, v6, Lw/g;->c:Z

    .line 325
    .line 326
    if-eqz v11, :cond_11

    .line 327
    .line 328
    iget-boolean v11, v7, Lw/g;->c:Z

    .line 329
    .line 330
    if-eqz v11, :cond_11

    .line 331
    .line 332
    iget-boolean v11, v10, Lw/g;->c:Z

    .line 333
    .line 334
    if-eqz v11, :cond_11

    .line 335
    .line 336
    iget-boolean v11, v3, Lw/g;->c:Z

    .line 337
    .line 338
    if-nez v11, :cond_10

    .line 339
    .line 340
    goto :goto_b

    .line 341
    :cond_10
    iget-object v11, v6, Lw/g;->l:Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v11

    .line 347
    check-cast v11, Lw/g;

    .line 348
    .line 349
    iget v11, v11, Lw/g;->g:I

    .line 350
    .line 351
    iget v14, v6, Lw/g;->f:I

    .line 352
    .line 353
    add-int v17, v11, v14

    .line 354
    .line 355
    iget-object v11, v7, Lw/g;->l:Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v11

    .line 361
    check-cast v11, Lw/g;

    .line 362
    .line 363
    iget v11, v11, Lw/g;->g:I

    .line 364
    .line 365
    iget v14, v7, Lw/g;->f:I

    .line 366
    .line 367
    sub-int v18, v11, v14

    .line 368
    .line 369
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    check-cast v11, Lw/g;

    .line 374
    .line 375
    iget v11, v11, Lw/g;->g:I

    .line 376
    .line 377
    iget v10, v10, Lw/g;->f:I

    .line 378
    .line 379
    add-int v19, v11, v10

    .line 380
    .line 381
    iget-object v10, v3, Lw/g;->l:Ljava/util/ArrayList;

    .line 382
    .line 383
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v10

    .line 387
    check-cast v10, Lw/g;

    .line 388
    .line 389
    iget v10, v10, Lw/g;->g:I

    .line 390
    .line 391
    iget v3, v3, Lw/g;->f:I

    .line 392
    .line 393
    sub-int v20, v10, v3

    .line 394
    .line 395
    move-object/from16 v16, v12

    .line 396
    .line 397
    move/from16 v21, v4

    .line 398
    .line 399
    move/from16 v22, v8

    .line 400
    .line 401
    invoke-static/range {v16 .. v22}, Lw/k;->m([IIIIIFI)V

    .line 402
    .line 403
    .line 404
    aget v3, v12, v2

    .line 405
    .line 406
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 407
    .line 408
    .line 409
    iget-object v3, v0, Lw/n;->b:Lv/e;

    .line 410
    .line 411
    iget-object v3, v3, Lv/e;->e:Lw/m;

    .line 412
    .line 413
    iget-object v3, v3, Lw/n;->e:Lw/h;

    .line 414
    .line 415
    aget v4, v12, v9

    .line 416
    .line 417
    invoke-virtual {v3, v4}, Lw/h;->d(I)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_e

    .line 421
    .line 422
    :cond_11
    :goto_b
    return-void

    .line 423
    :cond_12
    if-eqz v12, :cond_19

    .line 424
    .line 425
    if-eqz v14, :cond_19

    .line 426
    .line 427
    iget-boolean v3, v6, Lw/g;->c:Z

    .line 428
    .line 429
    if-eqz v3, :cond_18

    .line 430
    .line 431
    iget-boolean v3, v7, Lw/g;->c:Z

    .line 432
    .line 433
    if-nez v3, :cond_13

    .line 434
    .line 435
    goto :goto_c

    .line 436
    :cond_13
    iget v3, v4, Lv/e;->N:F

    .line 437
    .line 438
    iget-object v4, v6, Lw/g;->l:Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    check-cast v4, Lw/g;

    .line 445
    .line 446
    iget v4, v4, Lw/g;->g:I

    .line 447
    .line 448
    iget v10, v6, Lw/g;->f:I

    .line 449
    .line 450
    add-int/2addr v4, v10

    .line 451
    iget-object v10, v7, Lw/g;->l:Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v10

    .line 457
    check-cast v10, Lw/g;

    .line 458
    .line 459
    iget v10, v10, Lw/g;->g:I

    .line 460
    .line 461
    iget v12, v7, Lw/g;->f:I

    .line 462
    .line 463
    sub-int/2addr v10, v12

    .line 464
    if-eq v8, v11, :cond_16

    .line 465
    .line 466
    if-eqz v8, :cond_16

    .line 467
    .line 468
    if-eq v8, v9, :cond_14

    .line 469
    .line 470
    goto/16 :goto_e

    .line 471
    .line 472
    :cond_14
    sub-int/2addr v10, v4

    .line 473
    invoke-virtual {v0, v10, v2}, Lw/n;->g(II)I

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    int-to-float v8, v4

    .line 478
    div-float/2addr v8, v3

    .line 479
    const/high16 v10, 0x3f000000    # 0.5f

    .line 480
    .line 481
    add-float/2addr v8, v10

    .line 482
    float-to-int v8, v8

    .line 483
    invoke-virtual {v0, v8, v9}, Lw/n;->g(II)I

    .line 484
    .line 485
    .line 486
    move-result v11

    .line 487
    if-eq v8, v11, :cond_15

    .line 488
    .line 489
    int-to-float v4, v11

    .line 490
    mul-float v4, v4, v3

    .line 491
    .line 492
    add-float/2addr v4, v10

    .line 493
    float-to-int v4, v4

    .line 494
    :cond_15
    invoke-virtual {v1, v4}, Lw/h;->d(I)V

    .line 495
    .line 496
    .line 497
    iget-object v3, v0, Lw/n;->b:Lv/e;

    .line 498
    .line 499
    iget-object v3, v3, Lv/e;->e:Lw/m;

    .line 500
    .line 501
    iget-object v3, v3, Lw/n;->e:Lw/h;

    .line 502
    .line 503
    invoke-virtual {v3, v11}, Lw/h;->d(I)V

    .line 504
    .line 505
    .line 506
    goto/16 :goto_e

    .line 507
    .line 508
    :cond_16
    sub-int/2addr v10, v4

    .line 509
    invoke-virtual {v0, v10, v2}, Lw/n;->g(II)I

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    int-to-float v8, v4

    .line 514
    mul-float v8, v8, v3

    .line 515
    .line 516
    const/high16 v10, 0x3f000000    # 0.5f

    .line 517
    .line 518
    add-float/2addr v8, v10

    .line 519
    float-to-int v8, v8

    .line 520
    invoke-virtual {v0, v8, v9}, Lw/n;->g(II)I

    .line 521
    .line 522
    .line 523
    move-result v11

    .line 524
    if-eq v8, v11, :cond_17

    .line 525
    .line 526
    int-to-float v4, v11

    .line 527
    div-float/2addr v4, v3

    .line 528
    add-float/2addr v4, v10

    .line 529
    float-to-int v4, v4

    .line 530
    :cond_17
    invoke-virtual {v1, v4}, Lw/h;->d(I)V

    .line 531
    .line 532
    .line 533
    iget-object v3, v0, Lw/n;->b:Lv/e;

    .line 534
    .line 535
    iget-object v3, v3, Lv/e;->e:Lw/m;

    .line 536
    .line 537
    iget-object v3, v3, Lw/n;->e:Lw/h;

    .line 538
    .line 539
    invoke-virtual {v3, v11}, Lw/h;->d(I)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_e

    .line 543
    .line 544
    :cond_18
    :goto_c
    return-void

    .line 545
    :cond_19
    if-eqz v13, :cond_21

    .line 546
    .line 547
    if-eqz v15, :cond_21

    .line 548
    .line 549
    iget-boolean v12, v10, Lw/g;->c:Z

    .line 550
    .line 551
    if-eqz v12, :cond_1f

    .line 552
    .line 553
    iget-boolean v12, v3, Lw/g;->c:Z

    .line 554
    .line 555
    if-nez v12, :cond_1a

    .line 556
    .line 557
    goto :goto_d

    .line 558
    :cond_1a
    iget v4, v4, Lv/e;->N:F

    .line 559
    .line 560
    iget-object v12, v10, Lw/g;->l:Ljava/util/ArrayList;

    .line 561
    .line 562
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v12

    .line 566
    check-cast v12, Lw/g;

    .line 567
    .line 568
    iget v12, v12, Lw/g;->g:I

    .line 569
    .line 570
    iget v10, v10, Lw/g;->f:I

    .line 571
    .line 572
    add-int/2addr v12, v10

    .line 573
    iget-object v10, v3, Lw/g;->l:Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v10

    .line 579
    check-cast v10, Lw/g;

    .line 580
    .line 581
    iget v10, v10, Lw/g;->g:I

    .line 582
    .line 583
    iget v3, v3, Lw/g;->f:I

    .line 584
    .line 585
    sub-int/2addr v10, v3

    .line 586
    if-eq v8, v11, :cond_1d

    .line 587
    .line 588
    if-eqz v8, :cond_1b

    .line 589
    .line 590
    if-eq v8, v9, :cond_1d

    .line 591
    .line 592
    goto :goto_e

    .line 593
    :cond_1b
    sub-int/2addr v10, v12

    .line 594
    invoke-virtual {v0, v10, v9}, Lw/n;->g(II)I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    int-to-float v8, v3

    .line 599
    mul-float v8, v8, v4

    .line 600
    .line 601
    const/high16 v10, 0x3f000000    # 0.5f

    .line 602
    .line 603
    add-float/2addr v8, v10

    .line 604
    float-to-int v8, v8

    .line 605
    invoke-virtual {v0, v8, v2}, Lw/n;->g(II)I

    .line 606
    .line 607
    .line 608
    move-result v11

    .line 609
    if-eq v8, v11, :cond_1c

    .line 610
    .line 611
    int-to-float v3, v11

    .line 612
    div-float/2addr v3, v4

    .line 613
    add-float/2addr v3, v10

    .line 614
    float-to-int v3, v3

    .line 615
    :cond_1c
    invoke-virtual {v1, v11}, Lw/h;->d(I)V

    .line 616
    .line 617
    .line 618
    iget-object v4, v0, Lw/n;->b:Lv/e;

    .line 619
    .line 620
    iget-object v4, v4, Lv/e;->e:Lw/m;

    .line 621
    .line 622
    iget-object v4, v4, Lw/n;->e:Lw/h;

    .line 623
    .line 624
    invoke-virtual {v4, v3}, Lw/h;->d(I)V

    .line 625
    .line 626
    .line 627
    goto :goto_e

    .line 628
    :cond_1d
    sub-int/2addr v10, v12

    .line 629
    invoke-virtual {v0, v10, v9}, Lw/n;->g(II)I

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    int-to-float v8, v3

    .line 634
    div-float/2addr v8, v4

    .line 635
    const/high16 v10, 0x3f000000    # 0.5f

    .line 636
    .line 637
    add-float/2addr v8, v10

    .line 638
    float-to-int v8, v8

    .line 639
    invoke-virtual {v0, v8, v2}, Lw/n;->g(II)I

    .line 640
    .line 641
    .line 642
    move-result v11

    .line 643
    if-eq v8, v11, :cond_1e

    .line 644
    .line 645
    int-to-float v3, v11

    .line 646
    mul-float v3, v3, v4

    .line 647
    .line 648
    add-float/2addr v3, v10

    .line 649
    float-to-int v3, v3

    .line 650
    :cond_1e
    invoke-virtual {v1, v11}, Lw/h;->d(I)V

    .line 651
    .line 652
    .line 653
    iget-object v4, v0, Lw/n;->b:Lv/e;

    .line 654
    .line 655
    iget-object v4, v4, Lv/e;->e:Lw/m;

    .line 656
    .line 657
    iget-object v4, v4, Lw/n;->e:Lw/h;

    .line 658
    .line 659
    invoke-virtual {v4, v3}, Lw/h;->d(I)V

    .line 660
    .line 661
    .line 662
    goto :goto_e

    .line 663
    :cond_1f
    :goto_d
    return-void

    .line 664
    :cond_20
    iget-object v3, v4, Lv/e;->K:Lv/e;

    .line 665
    .line 666
    if-eqz v3, :cond_21

    .line 667
    .line 668
    iget-object v3, v3, Lv/e;->d:Lw/k;

    .line 669
    .line 670
    iget-object v3, v3, Lw/n;->e:Lw/h;

    .line 671
    .line 672
    iget-boolean v8, v3, Lw/g;->j:Z

    .line 673
    .line 674
    if-eqz v8, :cond_21

    .line 675
    .line 676
    iget v4, v4, Lv/e;->o:F

    .line 677
    .line 678
    iget v3, v3, Lw/g;->g:I

    .line 679
    .line 680
    int-to-float v3, v3

    .line 681
    mul-float v3, v3, v4

    .line 682
    .line 683
    const/high16 v4, 0x3f000000    # 0.5f

    .line 684
    .line 685
    add-float/2addr v3, v4

    .line 686
    float-to-int v3, v3

    .line 687
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 688
    .line 689
    .line 690
    :cond_21
    :goto_e
    iget-boolean v3, v6, Lw/g;->c:Z

    .line 691
    .line 692
    if-eqz v3, :cond_29

    .line 693
    .line 694
    iget-boolean v3, v7, Lw/g;->c:Z

    .line 695
    .line 696
    if-nez v3, :cond_22

    .line 697
    .line 698
    goto/16 :goto_10

    .line 699
    .line 700
    :cond_22
    iget-boolean v3, v6, Lw/g;->j:Z

    .line 701
    .line 702
    if-eqz v3, :cond_23

    .line 703
    .line 704
    iget-boolean v3, v7, Lw/g;->j:Z

    .line 705
    .line 706
    if-eqz v3, :cond_23

    .line 707
    .line 708
    iget-boolean v3, v1, Lw/g;->j:Z

    .line 709
    .line 710
    if-eqz v3, :cond_23

    .line 711
    .line 712
    return-void

    .line 713
    :cond_23
    iget-boolean v3, v1, Lw/g;->j:Z

    .line 714
    .line 715
    if-nez v3, :cond_24

    .line 716
    .line 717
    iget-object v3, v0, Lw/n;->d:Lv/d;

    .line 718
    .line 719
    if-ne v3, v5, :cond_24

    .line 720
    .line 721
    iget-object v3, v0, Lw/n;->b:Lv/e;

    .line 722
    .line 723
    iget v4, v3, Lv/e;->j:I

    .line 724
    .line 725
    if-nez v4, :cond_24

    .line 726
    .line 727
    invoke-virtual {v3}, Lv/e;->r()Z

    .line 728
    .line 729
    .line 730
    move-result v3

    .line 731
    if-nez v3, :cond_24

    .line 732
    .line 733
    iget-object v3, v6, Lw/g;->l:Ljava/util/ArrayList;

    .line 734
    .line 735
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v3

    .line 739
    check-cast v3, Lw/g;

    .line 740
    .line 741
    iget-object v4, v7, Lw/g;->l:Ljava/util/ArrayList;

    .line 742
    .line 743
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    check-cast v2, Lw/g;

    .line 748
    .line 749
    iget v3, v3, Lw/g;->g:I

    .line 750
    .line 751
    iget v4, v6, Lw/g;->f:I

    .line 752
    .line 753
    add-int/2addr v3, v4

    .line 754
    iget v2, v2, Lw/g;->g:I

    .line 755
    .line 756
    iget v4, v7, Lw/g;->f:I

    .line 757
    .line 758
    add-int/2addr v2, v4

    .line 759
    sub-int v4, v2, v3

    .line 760
    .line 761
    invoke-virtual {v6, v3}, Lw/g;->d(I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v7, v2}, Lw/g;->d(I)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v1, v4}, Lw/h;->d(I)V

    .line 768
    .line 769
    .line 770
    return-void

    .line 771
    :cond_24
    iget-boolean v3, v1, Lw/g;->j:Z

    .line 772
    .line 773
    if-nez v3, :cond_26

    .line 774
    .line 775
    iget-object v3, v0, Lw/n;->d:Lv/d;

    .line 776
    .line 777
    if-ne v3, v5, :cond_26

    .line 778
    .line 779
    iget v3, v0, Lw/n;->a:I

    .line 780
    .line 781
    if-ne v3, v9, :cond_26

    .line 782
    .line 783
    iget-object v3, v6, Lw/g;->l:Ljava/util/ArrayList;

    .line 784
    .line 785
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 786
    .line 787
    .line 788
    move-result v3

    .line 789
    if-lez v3, :cond_26

    .line 790
    .line 791
    iget-object v3, v7, Lw/g;->l:Ljava/util/ArrayList;

    .line 792
    .line 793
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 794
    .line 795
    .line 796
    move-result v3

    .line 797
    if-lez v3, :cond_26

    .line 798
    .line 799
    iget-object v3, v6, Lw/g;->l:Ljava/util/ArrayList;

    .line 800
    .line 801
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v3

    .line 805
    check-cast v3, Lw/g;

    .line 806
    .line 807
    iget-object v4, v7, Lw/g;->l:Ljava/util/ArrayList;

    .line 808
    .line 809
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v4

    .line 813
    check-cast v4, Lw/g;

    .line 814
    .line 815
    iget v3, v3, Lw/g;->g:I

    .line 816
    .line 817
    iget v5, v6, Lw/g;->f:I

    .line 818
    .line 819
    add-int/2addr v3, v5

    .line 820
    iget v4, v4, Lw/g;->g:I

    .line 821
    .line 822
    iget v5, v7, Lw/g;->f:I

    .line 823
    .line 824
    add-int/2addr v4, v5

    .line 825
    sub-int/2addr v4, v3

    .line 826
    iget v3, v1, Lw/h;->m:I

    .line 827
    .line 828
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 829
    .line 830
    .line 831
    move-result v3

    .line 832
    iget-object v4, v0, Lw/n;->b:Lv/e;

    .line 833
    .line 834
    iget v5, v4, Lv/e;->n:I

    .line 835
    .line 836
    iget v4, v4, Lv/e;->m:I

    .line 837
    .line 838
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 839
    .line 840
    .line 841
    move-result v3

    .line 842
    if-lez v5, :cond_25

    .line 843
    .line 844
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 845
    .line 846
    .line 847
    move-result v3

    .line 848
    :cond_25
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 849
    .line 850
    .line 851
    :cond_26
    iget-boolean v3, v1, Lw/g;->j:Z

    .line 852
    .line 853
    if-nez v3, :cond_27

    .line 854
    .line 855
    return-void

    .line 856
    :cond_27
    iget-object v3, v6, Lw/g;->l:Ljava/util/ArrayList;

    .line 857
    .line 858
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v3

    .line 862
    check-cast v3, Lw/g;

    .line 863
    .line 864
    iget-object v4, v7, Lw/g;->l:Ljava/util/ArrayList;

    .line 865
    .line 866
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    check-cast v2, Lw/g;

    .line 871
    .line 872
    iget v4, v3, Lw/g;->g:I

    .line 873
    .line 874
    iget v5, v6, Lw/g;->f:I

    .line 875
    .line 876
    add-int/2addr v5, v4

    .line 877
    iget v8, v2, Lw/g;->g:I

    .line 878
    .line 879
    iget v9, v7, Lw/g;->f:I

    .line 880
    .line 881
    add-int/2addr v9, v8

    .line 882
    iget-object v10, v0, Lw/n;->b:Lv/e;

    .line 883
    .line 884
    iget v10, v10, Lv/e;->U:F

    .line 885
    .line 886
    if-ne v3, v2, :cond_28

    .line 887
    .line 888
    const/high16 v10, 0x3f000000    # 0.5f

    .line 889
    .line 890
    goto :goto_f

    .line 891
    :cond_28
    move v4, v5

    .line 892
    move v8, v9

    .line 893
    :goto_f
    sub-int/2addr v8, v4

    .line 894
    iget v2, v1, Lw/g;->g:I

    .line 895
    .line 896
    sub-int/2addr v8, v2

    .line 897
    int-to-float v2, v4

    .line 898
    const/high16 v3, 0x3f000000    # 0.5f

    .line 899
    .line 900
    add-float/2addr v2, v3

    .line 901
    int-to-float v3, v8

    .line 902
    mul-float v3, v3, v10

    .line 903
    .line 904
    add-float/2addr v3, v2

    .line 905
    float-to-int v2, v3

    .line 906
    invoke-virtual {v6, v2}, Lw/g;->d(I)V

    .line 907
    .line 908
    .line 909
    iget v2, v6, Lw/g;->g:I

    .line 910
    .line 911
    iget v1, v1, Lw/g;->g:I

    .line 912
    .line 913
    add-int/2addr v2, v1

    .line 914
    invoke-virtual {v7, v2}, Lw/g;->d(I)V

    .line 915
    .line 916
    .line 917
    :cond_29
    :goto_10
    return-void

    .line 918
    :cond_2a
    iget-object v1, v0, Lw/n;->b:Lv/e;

    .line 919
    .line 920
    iget-object v3, v1, Lv/e;->y:Lv/c;

    .line 921
    .line 922
    iget-object v1, v1, Lv/e;->A:Lv/c;

    .line 923
    .line 924
    invoke-virtual {v0, v3, v1, v2}, Lw/n;->l(Lv/c;Lv/c;I)V

    .line 925
    .line 926
    .line 927
    return-void
.end method

.method public final d()V
    .locals 11

    .line 1
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 2
    .line 3
    iget-boolean v1, v0, Lv/e;->a:Z

    .line 4
    .line 5
    iget-object v2, p0, Lw/n;->e:Lw/h;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lv/e;->m()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v2, v0}, Lw/h;->d(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, v2, Lw/g;->j:Z

    .line 17
    .line 18
    sget-object v1, Lv/d;->d:Lv/d;

    .line 19
    .line 20
    sget-object v3, Lv/d;->c:Lv/d;

    .line 21
    .line 22
    sget-object v4, Lv/d;->a:Lv/d;

    .line 23
    .line 24
    iget-object v5, p0, Lw/n;->i:Lw/g;

    .line 25
    .line 26
    iget-object v6, p0, Lw/n;->h:Lw/g;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    if-nez v0, :cond_4

    .line 30
    .line 31
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 32
    .line 33
    iget-object v8, v0, Lv/e;->J:[Lv/d;

    .line 34
    .line 35
    aget-object v8, v8, v7

    .line 36
    .line 37
    iput-object v8, p0, Lw/n;->d:Lv/d;

    .line 38
    .line 39
    if-eq v8, v3, :cond_7

    .line 40
    .line 41
    if-ne v8, v1, :cond_3

    .line 42
    .line 43
    iget-object v9, v0, Lv/e;->K:Lv/e;

    .line 44
    .line 45
    if-eqz v9, :cond_1

    .line 46
    .line 47
    iget-object v10, v9, Lv/e;->J:[Lv/d;

    .line 48
    .line 49
    aget-object v10, v10, v7

    .line 50
    .line 51
    if-eq v10, v4, :cond_2

    .line 52
    .line 53
    :cond_1
    iget-object v10, v9, Lv/e;->J:[Lv/d;

    .line 54
    .line 55
    aget-object v10, v10, v7

    .line 56
    .line 57
    if-ne v10, v1, :cond_3

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v9}, Lv/e;->m()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object v1, p0, Lw/n;->b:Lv/e;

    .line 64
    .line 65
    iget-object v1, v1, Lv/e;->y:Lv/c;

    .line 66
    .line 67
    invoke-virtual {v1}, Lv/c;->c()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    sub-int/2addr v0, v1

    .line 72
    iget-object v1, p0, Lw/n;->b:Lv/e;

    .line 73
    .line 74
    iget-object v1, v1, Lv/e;->A:Lv/c;

    .line 75
    .line 76
    invoke-virtual {v1}, Lv/c;->c()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    sub-int/2addr v0, v1

    .line 81
    iget-object v1, v9, Lv/e;->d:Lw/k;

    .line 82
    .line 83
    iget-object v3, v1, Lw/n;->h:Lw/g;

    .line 84
    .line 85
    iget-object v4, p0, Lw/n;->b:Lv/e;

    .line 86
    .line 87
    iget-object v4, v4, Lv/e;->y:Lv/c;

    .line 88
    .line 89
    invoke-virtual {v4}, Lv/c;->c()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-static {v6, v3, v4}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v1, Lw/n;->i:Lw/g;

    .line 97
    .line 98
    iget-object v3, p0, Lw/n;->b:Lv/e;

    .line 99
    .line 100
    iget-object v3, v3, Lv/e;->A:Lv/c;

    .line 101
    .line 102
    invoke-virtual {v3}, Lv/c;->c()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    neg-int v3, v3

    .line 107
    invoke-static {v5, v1, v3}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v0}, Lw/h;->d(I)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    if-ne v8, v4, :cond_7

    .line 115
    .line 116
    invoke-virtual {v0}, Lv/e;->m()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {v2, v0}, Lw/h;->d(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    iget-object v0, p0, Lw/n;->d:Lv/d;

    .line 125
    .line 126
    if-ne v0, v1, :cond_7

    .line 127
    .line 128
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 129
    .line 130
    iget-object v8, v0, Lv/e;->K:Lv/e;

    .line 131
    .line 132
    if-eqz v8, :cond_5

    .line 133
    .line 134
    iget-object v9, v8, Lv/e;->J:[Lv/d;

    .line 135
    .line 136
    aget-object v9, v9, v7

    .line 137
    .line 138
    if-eq v9, v4, :cond_6

    .line 139
    .line 140
    :cond_5
    iget-object v4, v8, Lv/e;->J:[Lv/d;

    .line 141
    .line 142
    aget-object v4, v4, v7

    .line 143
    .line 144
    if-ne v4, v1, :cond_7

    .line 145
    .line 146
    :cond_6
    iget-object v1, v8, Lv/e;->d:Lw/k;

    .line 147
    .line 148
    iget-object v1, v1, Lw/n;->h:Lw/g;

    .line 149
    .line 150
    iget-object v0, v0, Lv/e;->y:Lv/c;

    .line 151
    .line 152
    invoke-virtual {v0}, Lv/c;->c()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-static {v6, v1, v0}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v8, Lv/e;->d:Lw/k;

    .line 160
    .line 161
    iget-object v0, v0, Lw/n;->i:Lw/g;

    .line 162
    .line 163
    iget-object v1, p0, Lw/n;->b:Lv/e;

    .line 164
    .line 165
    iget-object v1, v1, Lv/e;->A:Lv/c;

    .line 166
    .line 167
    invoke-virtual {v1}, Lv/c;->c()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    neg-int v1, v1

    .line 172
    invoke-static {v5, v0, v1}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_7
    :goto_0
    iget-boolean v0, v2, Lw/g;->j:Z

    .line 177
    .line 178
    const/4 v1, 0x1

    .line 179
    if-eqz v0, :cond_e

    .line 180
    .line 181
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 182
    .line 183
    iget-boolean v4, v0, Lv/e;->a:Z

    .line 184
    .line 185
    if-eqz v4, :cond_e

    .line 186
    .line 187
    iget-object v3, v0, Lv/e;->G:[Lv/c;

    .line 188
    .line 189
    aget-object v4, v3, v7

    .line 190
    .line 191
    iget-object v8, v4, Lv/c;->d:Lv/c;

    .line 192
    .line 193
    if-eqz v8, :cond_b

    .line 194
    .line 195
    aget-object v9, v3, v1

    .line 196
    .line 197
    iget-object v9, v9, Lv/c;->d:Lv/c;

    .line 198
    .line 199
    if-eqz v9, :cond_b

    .line 200
    .line 201
    invoke-virtual {v0}, Lv/e;->r()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_8

    .line 206
    .line 207
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 208
    .line 209
    iget-object v0, v0, Lv/e;->G:[Lv/c;

    .line 210
    .line 211
    aget-object v0, v0, v7

    .line 212
    .line 213
    invoke-virtual {v0}, Lv/c;->c()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    iput v0, v6, Lw/g;->f:I

    .line 218
    .line 219
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 220
    .line 221
    iget-object v0, v0, Lv/e;->G:[Lv/c;

    .line 222
    .line 223
    aget-object v0, v0, v1

    .line 224
    .line 225
    invoke-virtual {v0}, Lv/c;->c()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    neg-int v0, v0

    .line 230
    iput v0, v5, Lw/g;->f:I

    .line 231
    .line 232
    goto/16 :goto_2

    .line 233
    .line 234
    :cond_8
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 235
    .line 236
    iget-object v0, v0, Lv/e;->G:[Lv/c;

    .line 237
    .line 238
    aget-object v0, v0, v7

    .line 239
    .line 240
    invoke-static {v0}, Lw/n;->h(Lv/c;)Lw/g;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-eqz v0, :cond_9

    .line 245
    .line 246
    iget-object v2, p0, Lw/n;->b:Lv/e;

    .line 247
    .line 248
    iget-object v2, v2, Lv/e;->G:[Lv/c;

    .line 249
    .line 250
    aget-object v2, v2, v7

    .line 251
    .line 252
    invoke-virtual {v2}, Lv/c;->c()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-static {v6, v0, v2}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 257
    .line 258
    .line 259
    :cond_9
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 260
    .line 261
    iget-object v0, v0, Lv/e;->G:[Lv/c;

    .line 262
    .line 263
    aget-object v0, v0, v1

    .line 264
    .line 265
    invoke-static {v0}, Lw/n;->h(Lv/c;)Lw/g;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-eqz v0, :cond_a

    .line 270
    .line 271
    iget-object v2, p0, Lw/n;->b:Lv/e;

    .line 272
    .line 273
    iget-object v2, v2, Lv/e;->G:[Lv/c;

    .line 274
    .line 275
    aget-object v2, v2, v1

    .line 276
    .line 277
    invoke-virtual {v2}, Lv/c;->c()I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    neg-int v2, v2

    .line 282
    invoke-static {v5, v0, v2}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 283
    .line 284
    .line 285
    :cond_a
    iput-boolean v1, v6, Lw/g;->b:Z

    .line 286
    .line 287
    iput-boolean v1, v5, Lw/g;->b:Z

    .line 288
    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    :cond_b
    if-eqz v8, :cond_c

    .line 292
    .line 293
    invoke-static {v4}, Lw/n;->h(Lv/c;)Lw/g;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    if-eqz v0, :cond_1a

    .line 298
    .line 299
    iget-object v1, p0, Lw/n;->b:Lv/e;

    .line 300
    .line 301
    iget-object v1, v1, Lv/e;->G:[Lv/c;

    .line 302
    .line 303
    aget-object v1, v1, v7

    .line 304
    .line 305
    invoke-virtual {v1}, Lv/c;->c()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-static {v6, v0, v1}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 310
    .line 311
    .line 312
    iget v0, v2, Lw/g;->g:I

    .line 313
    .line 314
    invoke-static {v5, v6, v0}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_2

    .line 318
    .line 319
    :cond_c
    aget-object v3, v3, v1

    .line 320
    .line 321
    iget-object v4, v3, Lv/c;->d:Lv/c;

    .line 322
    .line 323
    if-eqz v4, :cond_d

    .line 324
    .line 325
    invoke-static {v3}, Lw/n;->h(Lv/c;)Lw/g;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    if-eqz v0, :cond_1a

    .line 330
    .line 331
    iget-object v3, p0, Lw/n;->b:Lv/e;

    .line 332
    .line 333
    iget-object v3, v3, Lv/e;->G:[Lv/c;

    .line 334
    .line 335
    aget-object v1, v3, v1

    .line 336
    .line 337
    invoke-virtual {v1}, Lv/c;->c()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    neg-int v1, v1

    .line 342
    invoke-static {v5, v0, v1}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 343
    .line 344
    .line 345
    iget v0, v2, Lw/g;->g:I

    .line 346
    .line 347
    neg-int v0, v0

    .line 348
    invoke-static {v6, v5, v0}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_2

    .line 352
    .line 353
    :cond_d
    instance-of v1, v0, Lv/j;

    .line 354
    .line 355
    if-nez v1, :cond_1a

    .line 356
    .line 357
    iget-object v1, v0, Lv/e;->K:Lv/e;

    .line 358
    .line 359
    if-eqz v1, :cond_1a

    .line 360
    .line 361
    const/4 v1, 0x7

    .line 362
    invoke-virtual {v0, v1}, Lv/e;->h(I)Lv/c;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    iget-object v0, v0, Lv/c;->d:Lv/c;

    .line 367
    .line 368
    if-nez v0, :cond_1a

    .line 369
    .line 370
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 371
    .line 372
    iget-object v1, v0, Lv/e;->K:Lv/e;

    .line 373
    .line 374
    iget-object v1, v1, Lv/e;->d:Lw/k;

    .line 375
    .line 376
    iget-object v1, v1, Lw/n;->h:Lw/g;

    .line 377
    .line 378
    invoke-virtual {v0}, Lv/e;->n()I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    invoke-static {v6, v1, v0}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 383
    .line 384
    .line 385
    iget v0, v2, Lw/g;->g:I

    .line 386
    .line 387
    invoke-static {v5, v6, v0}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_2

    .line 391
    .line 392
    :cond_e
    iget-object v0, p0, Lw/n;->d:Lv/d;

    .line 393
    .line 394
    if-ne v0, v3, :cond_15

    .line 395
    .line 396
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 397
    .line 398
    iget v3, v0, Lv/e;->j:I

    .line 399
    .line 400
    const/4 v4, 0x2

    .line 401
    if-eq v3, v4, :cond_13

    .line 402
    .line 403
    const/4 v4, 0x3

    .line 404
    if-eq v3, v4, :cond_f

    .line 405
    .line 406
    goto/16 :goto_1

    .line 407
    .line 408
    :cond_f
    iget v3, v0, Lv/e;->k:I

    .line 409
    .line 410
    if-ne v3, v4, :cond_12

    .line 411
    .line 412
    iput-object p0, v6, Lw/g;->a:Lw/n;

    .line 413
    .line 414
    iput-object p0, v5, Lw/g;->a:Lw/n;

    .line 415
    .line 416
    iget-object v3, v0, Lv/e;->e:Lw/m;

    .line 417
    .line 418
    iget-object v4, v3, Lw/n;->h:Lw/g;

    .line 419
    .line 420
    iput-object p0, v4, Lw/g;->a:Lw/n;

    .line 421
    .line 422
    iget-object v3, v3, Lw/n;->i:Lw/g;

    .line 423
    .line 424
    iput-object p0, v3, Lw/g;->a:Lw/n;

    .line 425
    .line 426
    iput-object p0, v2, Lw/g;->a:Lw/n;

    .line 427
    .line 428
    invoke-virtual {v0}, Lv/e;->s()Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-eqz v0, :cond_10

    .line 433
    .line 434
    iget-object v0, v2, Lw/g;->l:Ljava/util/ArrayList;

    .line 435
    .line 436
    iget-object v3, p0, Lw/n;->b:Lv/e;

    .line 437
    .line 438
    iget-object v3, v3, Lv/e;->e:Lw/m;

    .line 439
    .line 440
    iget-object v3, v3, Lw/n;->e:Lw/h;

    .line 441
    .line 442
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 446
    .line 447
    iget-object v0, v0, Lv/e;->e:Lw/m;

    .line 448
    .line 449
    iget-object v0, v0, Lw/n;->e:Lw/h;

    .line 450
    .line 451
    iget-object v0, v0, Lw/g;->k:Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 457
    .line 458
    iget-object v0, v0, Lv/e;->e:Lw/m;

    .line 459
    .line 460
    iget-object v3, v0, Lw/n;->e:Lw/h;

    .line 461
    .line 462
    iput-object p0, v3, Lw/g;->a:Lw/n;

    .line 463
    .line 464
    iget-object v3, v2, Lw/g;->l:Ljava/util/ArrayList;

    .line 465
    .line 466
    iget-object v0, v0, Lw/n;->h:Lw/g;

    .line 467
    .line 468
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    iget-object v0, v2, Lw/g;->l:Ljava/util/ArrayList;

    .line 472
    .line 473
    iget-object v3, p0, Lw/n;->b:Lv/e;

    .line 474
    .line 475
    iget-object v3, v3, Lv/e;->e:Lw/m;

    .line 476
    .line 477
    iget-object v3, v3, Lw/n;->i:Lw/g;

    .line 478
    .line 479
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 483
    .line 484
    iget-object v0, v0, Lv/e;->e:Lw/m;

    .line 485
    .line 486
    iget-object v0, v0, Lw/n;->h:Lw/g;

    .line 487
    .line 488
    iget-object v0, v0, Lw/g;->k:Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 494
    .line 495
    iget-object v0, v0, Lv/e;->e:Lw/m;

    .line 496
    .line 497
    iget-object v0, v0, Lw/n;->i:Lw/g;

    .line 498
    .line 499
    iget-object v0, v0, Lw/g;->k:Ljava/util/ArrayList;

    .line 500
    .line 501
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    goto/16 :goto_1

    .line 505
    .line 506
    :cond_10
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 507
    .line 508
    invoke-virtual {v0}, Lv/e;->r()Z

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-eqz v0, :cond_11

    .line 513
    .line 514
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 515
    .line 516
    iget-object v0, v0, Lv/e;->e:Lw/m;

    .line 517
    .line 518
    iget-object v0, v0, Lw/n;->e:Lw/h;

    .line 519
    .line 520
    iget-object v0, v0, Lw/g;->l:Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    iget-object v0, v2, Lw/g;->k:Ljava/util/ArrayList;

    .line 526
    .line 527
    iget-object v3, p0, Lw/n;->b:Lv/e;

    .line 528
    .line 529
    iget-object v3, v3, Lv/e;->e:Lw/m;

    .line 530
    .line 531
    iget-object v3, v3, Lw/n;->e:Lw/h;

    .line 532
    .line 533
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    goto :goto_1

    .line 537
    :cond_11
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 538
    .line 539
    iget-object v0, v0, Lv/e;->e:Lw/m;

    .line 540
    .line 541
    iget-object v0, v0, Lw/n;->e:Lw/h;

    .line 542
    .line 543
    iget-object v0, v0, Lw/g;->l:Ljava/util/ArrayList;

    .line 544
    .line 545
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    goto :goto_1

    .line 549
    :cond_12
    iget-object v0, v0, Lv/e;->e:Lw/m;

    .line 550
    .line 551
    iget-object v0, v0, Lw/n;->e:Lw/h;

    .line 552
    .line 553
    iget-object v3, v2, Lw/g;->l:Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    iget-object v0, v0, Lw/g;->k:Ljava/util/ArrayList;

    .line 559
    .line 560
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 564
    .line 565
    iget-object v0, v0, Lv/e;->e:Lw/m;

    .line 566
    .line 567
    iget-object v0, v0, Lw/n;->h:Lw/g;

    .line 568
    .line 569
    iget-object v0, v0, Lw/g;->k:Ljava/util/ArrayList;

    .line 570
    .line 571
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 575
    .line 576
    iget-object v0, v0, Lv/e;->e:Lw/m;

    .line 577
    .line 578
    iget-object v0, v0, Lw/n;->i:Lw/g;

    .line 579
    .line 580
    iget-object v0, v0, Lw/g;->k:Ljava/util/ArrayList;

    .line 581
    .line 582
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    iput-boolean v1, v2, Lw/g;->b:Z

    .line 586
    .line 587
    iget-object v0, v2, Lw/g;->k:Ljava/util/ArrayList;

    .line 588
    .line 589
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    iget-object v0, v2, Lw/g;->k:Ljava/util/ArrayList;

    .line 593
    .line 594
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    iget-object v0, v6, Lw/g;->l:Ljava/util/ArrayList;

    .line 598
    .line 599
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    iget-object v0, v5, Lw/g;->l:Ljava/util/ArrayList;

    .line 603
    .line 604
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    goto :goto_1

    .line 608
    :cond_13
    iget-object v0, v0, Lv/e;->K:Lv/e;

    .line 609
    .line 610
    if-nez v0, :cond_14

    .line 611
    .line 612
    goto :goto_1

    .line 613
    :cond_14
    iget-object v0, v0, Lv/e;->e:Lw/m;

    .line 614
    .line 615
    iget-object v0, v0, Lw/n;->e:Lw/h;

    .line 616
    .line 617
    iget-object v3, v2, Lw/g;->l:Ljava/util/ArrayList;

    .line 618
    .line 619
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    iget-object v0, v0, Lw/g;->k:Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    iput-boolean v1, v2, Lw/g;->b:Z

    .line 628
    .line 629
    iget-object v0, v2, Lw/g;->k:Ljava/util/ArrayList;

    .line 630
    .line 631
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    iget-object v0, v2, Lw/g;->k:Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    :cond_15
    :goto_1
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 640
    .line 641
    iget-object v3, v0, Lv/e;->G:[Lv/c;

    .line 642
    .line 643
    aget-object v4, v3, v7

    .line 644
    .line 645
    iget-object v8, v4, Lv/c;->d:Lv/c;

    .line 646
    .line 647
    if-eqz v8, :cond_17

    .line 648
    .line 649
    aget-object v9, v3, v1

    .line 650
    .line 651
    iget-object v9, v9, Lv/c;->d:Lv/c;

    .line 652
    .line 653
    if-eqz v9, :cond_17

    .line 654
    .line 655
    invoke-virtual {v0}, Lv/e;->r()Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-eqz v0, :cond_16

    .line 660
    .line 661
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 662
    .line 663
    iget-object v0, v0, Lv/e;->G:[Lv/c;

    .line 664
    .line 665
    aget-object v0, v0, v7

    .line 666
    .line 667
    invoke-virtual {v0}, Lv/c;->c()I

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    iput v0, v6, Lw/g;->f:I

    .line 672
    .line 673
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 674
    .line 675
    iget-object v0, v0, Lv/e;->G:[Lv/c;

    .line 676
    .line 677
    aget-object v0, v0, v1

    .line 678
    .line 679
    invoke-virtual {v0}, Lv/c;->c()I

    .line 680
    .line 681
    .line 682
    move-result v0

    .line 683
    neg-int v0, v0

    .line 684
    iput v0, v5, Lw/g;->f:I

    .line 685
    .line 686
    goto :goto_2

    .line 687
    :cond_16
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 688
    .line 689
    iget-object v0, v0, Lv/e;->G:[Lv/c;

    .line 690
    .line 691
    aget-object v0, v0, v7

    .line 692
    .line 693
    invoke-static {v0}, Lw/n;->h(Lv/c;)Lw/g;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    iget-object v2, p0, Lw/n;->b:Lv/e;

    .line 698
    .line 699
    iget-object v2, v2, Lv/e;->G:[Lv/c;

    .line 700
    .line 701
    aget-object v1, v2, v1

    .line 702
    .line 703
    invoke-static {v1}, Lw/n;->h(Lv/c;)Lw/g;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    invoke-virtual {v0, p0}, Lw/g;->b(Lw/n;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v1, p0}, Lw/g;->b(Lw/n;)V

    .line 711
    .line 712
    .line 713
    const/4 v0, 0x4

    .line 714
    iput v0, p0, Lw/n;->j:I

    .line 715
    .line 716
    goto :goto_2

    .line 717
    :cond_17
    if-eqz v8, :cond_18

    .line 718
    .line 719
    invoke-static {v4}, Lw/n;->h(Lv/c;)Lw/g;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    if-eqz v0, :cond_1a

    .line 724
    .line 725
    iget-object v3, p0, Lw/n;->b:Lv/e;

    .line 726
    .line 727
    iget-object v3, v3, Lv/e;->G:[Lv/c;

    .line 728
    .line 729
    aget-object v3, v3, v7

    .line 730
    .line 731
    invoke-virtual {v3}, Lv/c;->c()I

    .line 732
    .line 733
    .line 734
    move-result v3

    .line 735
    invoke-static {v6, v0, v3}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {p0, v5, v6, v1, v2}, Lw/n;->c(Lw/g;Lw/g;ILw/h;)V

    .line 739
    .line 740
    .line 741
    goto :goto_2

    .line 742
    :cond_18
    aget-object v3, v3, v1

    .line 743
    .line 744
    iget-object v4, v3, Lv/c;->d:Lv/c;

    .line 745
    .line 746
    if-eqz v4, :cond_19

    .line 747
    .line 748
    invoke-static {v3}, Lw/n;->h(Lv/c;)Lw/g;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    if-eqz v0, :cond_1a

    .line 753
    .line 754
    iget-object v3, p0, Lw/n;->b:Lv/e;

    .line 755
    .line 756
    iget-object v3, v3, Lv/e;->G:[Lv/c;

    .line 757
    .line 758
    aget-object v1, v3, v1

    .line 759
    .line 760
    invoke-virtual {v1}, Lv/c;->c()I

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    neg-int v1, v1

    .line 765
    invoke-static {v5, v0, v1}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 766
    .line 767
    .line 768
    const/4 v0, -0x1

    .line 769
    invoke-virtual {p0, v6, v5, v0, v2}, Lw/n;->c(Lw/g;Lw/g;ILw/h;)V

    .line 770
    .line 771
    .line 772
    goto :goto_2

    .line 773
    :cond_19
    instance-of v3, v0, Lv/j;

    .line 774
    .line 775
    if-nez v3, :cond_1a

    .line 776
    .line 777
    iget-object v3, v0, Lv/e;->K:Lv/e;

    .line 778
    .line 779
    if-eqz v3, :cond_1a

    .line 780
    .line 781
    iget-object v3, v3, Lv/e;->d:Lw/k;

    .line 782
    .line 783
    iget-object v3, v3, Lw/n;->h:Lw/g;

    .line 784
    .line 785
    invoke-virtual {v0}, Lv/e;->n()I

    .line 786
    .line 787
    .line 788
    move-result v0

    .line 789
    invoke-static {v6, v3, v0}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {p0, v5, v6, v1, v2}, Lw/n;->c(Lw/g;Lw/g;ILw/h;)V

    .line 793
    .line 794
    .line 795
    :cond_1a
    :goto_2
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw/n;->h:Lw/g;

    .line 2
    .line 3
    iget-boolean v1, v0, Lw/g;->j:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lw/n;->b:Lv/e;

    .line 8
    .line 9
    iget v0, v0, Lw/g;->g:I

    .line 10
    .line 11
    iput v0, v1, Lv/e;->P:I

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lw/n;->c:Lw/l;

    .line 3
    .line 4
    iget-object v0, p0, Lw/n;->h:Lw/g;

    .line 5
    .line 6
    invoke-virtual {v0}, Lw/g;->c()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lw/n;->i:Lw/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Lw/g;->c()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lw/n;->e:Lw/h;

    .line 15
    .line 16
    invoke-virtual {v0}, Lw/g;->c()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lw/n;->g:Z

    .line 21
    .line 22
    return-void
.end method

.method public final k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw/n;->d:Lv/d;

    .line 2
    .line 3
    sget-object v1, Lv/d;->c:Lv/d;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lw/n;->b:Lv/e;

    .line 9
    .line 10
    iget v0, v0, Lv/e;->j:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_1
    return v2
.end method

.method public final n()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lw/n;->g:Z

    .line 3
    .line 4
    iget-object v1, p0, Lw/n;->h:Lw/g;

    .line 5
    .line 6
    invoke-virtual {v1}, Lw/g;->c()V

    .line 7
    .line 8
    .line 9
    iput-boolean v0, v1, Lw/g;->j:Z

    .line 10
    .line 11
    iget-object v1, p0, Lw/n;->i:Lw/g;

    .line 12
    .line 13
    invoke-virtual {v1}, Lw/g;->c()V

    .line 14
    .line 15
    .line 16
    iput-boolean v0, v1, Lw/g;->j:Z

    .line 17
    .line 18
    iget-object v1, p0, Lw/n;->e:Lw/h;

    .line 19
    .line 20
    iput-boolean v0, v1, Lw/g;->j:Z

    .line 21
    .line 22
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HorizontalRun "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lw/n;->b:Lv/e;

    .line 9
    .line 10
    iget-object v1, v1, Lv/e;->Y:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
