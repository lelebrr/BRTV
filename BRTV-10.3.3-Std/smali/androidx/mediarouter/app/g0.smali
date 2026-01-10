.class public final Landroidx/mediarouter/app/g0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/mediarouter/app/g0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/mediarouter/app/g0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/g0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/mediarouter/app/g0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/mediarouter/app/n0;

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/mediarouter/app/h0;->a:Lq1/s0;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/n0;->d(Lq1/s0;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    xor-int/lit8 v1, v0, 0x1

    .line 17
    .line 18
    iget-object v2, p1, Landroidx/mediarouter/app/h0;->a:Lq1/s0;

    .line 19
    .line 20
    invoke-virtual {v2}, Lq1/s0;->e()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    iget-object v4, p1, Landroidx/mediarouter/app/n0;->n:Landroidx/mediarouter/app/o0;

    .line 26
    .line 27
    const-string v5, "route must not be null"

    .line 28
    .line 29
    const-string v6, "There is no currently selected dynamic group route."

    .line 30
    .line 31
    const-string v7, "AxMediaRouter"

    .line 32
    .line 33
    if-nez v0, :cond_7

    .line 34
    .line 35
    iget-object v8, v4, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 36
    .line 37
    iget-object v8, v8, Landroidx/mediarouter/app/q0;->e:Lq1/u0;

    .line 38
    .line 39
    iget-object v9, p1, Landroidx/mediarouter/app/h0;->a:Lq1/s0;

    .line 40
    .line 41
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    if-eqz v9, :cond_6

    .line 45
    .line 46
    invoke-static {}, Lq1/u0;->b()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v8, v5, Lq1/h;->d:Lq1/s0;

    .line 54
    .line 55
    invoke-virtual {v8}, Lq1/s0;->a()Lq1/p0;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    if-nez v8, :cond_0

    .line 60
    .line 61
    const-string v5, "Ignoring attempt to add a member route to a selected non-group route"

    .line 62
    .line 63
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_0
    invoke-virtual {v8, v9}, Lq1/p0;->o(Lq1/s0;)Z

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    if-nez v10, :cond_1

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v6, "Ignoring attempt to add a non-groupable member route: "

    .line 77
    .line 78
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_1
    iget-object v10, v8, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_2

    .line 104
    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v6, "Ignoring attempt to add an existing member route: "

    .line 108
    .line 109
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :cond_2
    invoke-virtual {v8}, Lq1/s0;->g()Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-eqz v10, :cond_4

    .line 129
    .line 130
    iget-object v5, v5, Lq1/h;->e:Lq1/c0;

    .line 131
    .line 132
    instance-of v7, v5, Lq1/b0;

    .line 133
    .line 134
    if-eqz v7, :cond_3

    .line 135
    .line 136
    check-cast v5, Lq1/b0;

    .line 137
    .line 138
    iget-object v6, v9, Lq1/s0;->b:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v5, v6}, Lq1/b0;->n(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 146
    .line 147
    invoke-direct {p1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_4
    invoke-virtual {v8}, Lq1/p0;->n()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_5

    .line 156
    .line 157
    invoke-virtual {v5}, Lq1/h;->e()V

    .line 158
    .line 159
    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v6, "Ignoring attempt to add a route to a non-available connected route: "

    .line 163
    .line 164
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v6, "Ignoring attempt to add a route to an unsupported group route:"

    .line 182
    .line 183
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 199
    .line 200
    invoke-direct {p1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    :cond_7
    iget-object v8, v4, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 205
    .line 206
    iget-object v8, v8, Landroidx/mediarouter/app/q0;->e:Lq1/u0;

    .line 207
    .line 208
    iget-object v9, p1, Landroidx/mediarouter/app/h0;->a:Lq1/s0;

    .line 209
    .line 210
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    if-eqz v9, :cond_1a

    .line 214
    .line 215
    invoke-static {}, Lq1/u0;->b()V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    iget-object v8, v5, Lq1/h;->d:Lq1/s0;

    .line 223
    .line 224
    invoke-virtual {v8}, Lq1/s0;->a()Lq1/p0;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    if-nez v8, :cond_8

    .line 229
    .line 230
    const-string v5, "Ignoring attempt to remove a member route from a selected non-group route"

    .line 231
    .line 232
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_8
    iget-object v10, v8, Lq1/p0;->x:Lp/e;

    .line 238
    .line 239
    iget-object v11, v9, Lq1/s0;->c:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v10, v11}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    check-cast v10, Lq1/z;

    .line 246
    .line 247
    if-eqz v10, :cond_e

    .line 248
    .line 249
    iget-boolean v10, v10, Lq1/z;->c:Z

    .line 250
    .line 251
    if-eqz v10, :cond_e

    .line 252
    .line 253
    iget-object v10, v8, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v10

    .line 263
    if-nez v10, :cond_9

    .line 264
    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v6, "Ignoring attempt to remove a non-in-group member route: "

    .line 268
    .line 269
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    goto :goto_0

    .line 283
    :cond_9
    iget-object v10, v8, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 290
    .line 291
    .line 292
    move-result v10

    .line 293
    if-gt v10, v3, :cond_a

    .line 294
    .line 295
    const-string v5, "Ignoring attempt to remove the last member route."

    .line 296
    .line 297
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    goto :goto_0

    .line 301
    :cond_a
    invoke-virtual {v8}, Lq1/s0;->g()Z

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    if-eqz v10, :cond_c

    .line 306
    .line 307
    iget-object v5, v5, Lq1/h;->e:Lq1/c0;

    .line 308
    .line 309
    instance-of v7, v5, Lq1/b0;

    .line 310
    .line 311
    if-eqz v7, :cond_b

    .line 312
    .line 313
    check-cast v5, Lq1/b0;

    .line 314
    .line 315
    iget-object v6, v9, Lq1/s0;->b:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v5, v6}, Lq1/b0;->o(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto :goto_0

    .line 321
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 322
    .line 323
    invoke-direct {p1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw p1

    .line 327
    :cond_c
    invoke-virtual {v8}, Lq1/p0;->n()Z

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    if-eqz v6, :cond_d

    .line 332
    .line 333
    invoke-virtual {v5}, Lq1/h;->e()V

    .line 334
    .line 335
    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string v6, "Ignoring attempt to update routes for a non-available connected route: "

    .line 339
    .line 340
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    goto :goto_0

    .line 354
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string v6, "Ignoring attempt to remove a route from an unsupported group route:"

    .line 357
    .line 358
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    goto :goto_0

    .line 372
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v6, "Ignoring attempt to remove a non-unselectable member route: "

    .line 375
    .line 376
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    :goto_0
    xor-int/lit8 v5, v2, 0x1

    .line 390
    .line 391
    invoke-virtual {p1, v1, v5}, Landroidx/mediarouter/app/n0;->e(ZZ)V

    .line 392
    .line 393
    .line 394
    if-eqz v2, :cond_10

    .line 395
    .line 396
    iget-object v2, v4, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 397
    .line 398
    iget-object v2, v2, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 399
    .line 400
    iget-object v2, v2, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    iget-object v5, p1, Landroidx/mediarouter/app/h0;->a:Lq1/s0;

    .line 407
    .line 408
    iget-object v5, v5, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    :cond_f
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    if-eqz v6, :cond_10

    .line 423
    .line 424
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    check-cast v6, Lq1/s0;

    .line 429
    .line 430
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    if-eq v7, v1, :cond_f

    .line 435
    .line 436
    iget-object v7, v4, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 437
    .line 438
    iget-object v7, v7, Landroidx/mediarouter/app/q0;->u:Ljava/util/HashMap;

    .line 439
    .line 440
    iget-object v6, v6, Lq1/s0;->c:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v6

    .line 446
    check-cast v6, Landroidx/mediarouter/app/h0;

    .line 447
    .line 448
    instance-of v7, v6, Landroidx/mediarouter/app/n0;

    .line 449
    .line 450
    if-eqz v7, :cond_f

    .line 451
    .line 452
    check-cast v6, Landroidx/mediarouter/app/n0;

    .line 453
    .line 454
    invoke-virtual {v6, v1, v3}, Landroidx/mediarouter/app/n0;->e(ZZ)V

    .line 455
    .line 456
    .line 457
    goto :goto_1

    .line 458
    :cond_10
    iget-object p1, p1, Landroidx/mediarouter/app/h0;->a:Lq1/s0;

    .line 459
    .line 460
    iget-object v2, v4, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 461
    .line 462
    iget-object v5, v2, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 463
    .line 464
    iget-object v5, v5, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 465
    .line 466
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    invoke-virtual {p1}, Lq1/s0;->e()Z

    .line 479
    .line 480
    .line 481
    move-result v7

    .line 482
    const/4 v8, -0x1

    .line 483
    if-eqz v7, :cond_13

    .line 484
    .line 485
    iget-object p1, p1, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 486
    .line 487
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    :cond_11
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    .line 497
    .line 498
    move-result v7

    .line 499
    if-eqz v7, :cond_15

    .line 500
    .line 501
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v7

    .line 505
    check-cast v7, Lq1/s0;

    .line 506
    .line 507
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    if-eq v7, v1, :cond_11

    .line 512
    .line 513
    if-nez v0, :cond_12

    .line 514
    .line 515
    const/4 v7, 0x1

    .line 516
    goto :goto_3

    .line 517
    :cond_12
    const/4 v7, -0x1

    .line 518
    :goto_3
    add-int/2addr v6, v7

    .line 519
    goto :goto_2

    .line 520
    :cond_13
    if-nez v0, :cond_14

    .line 521
    .line 522
    const/4 v8, 0x1

    .line 523
    :cond_14
    add-int/2addr v6, v8

    .line 524
    :cond_15
    iget-object p1, v4, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 525
    .line 526
    iget-boolean v0, p1, Landroidx/mediarouter/app/q0;->R:Z

    .line 527
    .line 528
    const/4 v1, 0x0

    .line 529
    if-eqz v0, :cond_16

    .line 530
    .line 531
    iget-object p1, p1, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 532
    .line 533
    iget-object p1, p1, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 534
    .line 535
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    if-le p1, v3, :cond_16

    .line 544
    .line 545
    const/4 p1, 0x1

    .line 546
    goto :goto_4

    .line 547
    :cond_16
    const/4 p1, 0x0

    .line 548
    :goto_4
    iget-boolean v0, v2, Landroidx/mediarouter/app/q0;->R:Z

    .line 549
    .line 550
    if-eqz v0, :cond_17

    .line 551
    .line 552
    const/4 v0, 0x2

    .line 553
    if-lt v6, v0, :cond_17

    .line 554
    .line 555
    goto :goto_5

    .line 556
    :cond_17
    const/4 v3, 0x0

    .line 557
    :goto_5
    if-eq p1, v3, :cond_19

    .line 558
    .line 559
    iget-object p1, v2, Landroidx/mediarouter/app/q0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 560
    .line 561
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    instance-of v0, p1, Landroidx/mediarouter/app/k0;

    .line 566
    .line 567
    if-eqz v0, :cond_19

    .line 568
    .line 569
    check-cast p1, Landroidx/mediarouter/app/k0;

    .line 570
    .line 571
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 572
    .line 573
    if-eqz v3, :cond_18

    .line 574
    .line 575
    iget v1, p1, Landroidx/mediarouter/app/k0;->f:I

    .line 576
    .line 577
    :cond_18
    invoke-virtual {v4, v1, v0}, Landroidx/mediarouter/app/o0;->a(ILandroid/view/View;)V

    .line 578
    .line 579
    .line 580
    :cond_19
    return-void

    .line 581
    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    .line 582
    .line 583
    invoke-direct {p1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    throw p1

    .line 587
    :pswitch_0
    iget-object p1, p0, Landroidx/mediarouter/app/g0;->b:Ljava/lang/Object;

    .line 588
    .line 589
    check-cast p1, Landroidx/mediarouter/app/j0;

    .line 590
    .line 591
    iget-object v0, p1, Landroidx/mediarouter/app/j0;->g:Landroidx/mediarouter/app/o0;

    .line 592
    .line 593
    iget-object v0, v0, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 594
    .line 595
    iget-object v0, v0, Landroidx/mediarouter/app/q0;->e:Lq1/u0;

    .line 596
    .line 597
    iget-object v1, p1, Landroidx/mediarouter/app/j0;->f:Lq1/s0;

    .line 598
    .line 599
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    if-eqz v1, :cond_22

    .line 603
    .line 604
    invoke-static {}, Lq1/u0;->b()V

    .line 605
    .line 606
    .line 607
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    iget-object v2, v0, Lq1/h;->d:Lq1/s0;

    .line 612
    .line 613
    invoke-virtual {v2}, Lq1/s0;->a()Lq1/p0;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    const-string v3, "AxMediaRouter"

    .line 618
    .line 619
    if-nez v2, :cond_1b

    .line 620
    .line 621
    const-string v0, "Ignoring attempt to transfer for a selected non-group route"

    .line 622
    .line 623
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    goto/16 :goto_7

    .line 627
    .line 628
    :cond_1b
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    new-instance v4, Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .line 636
    .line 637
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 642
    .line 643
    .line 644
    move-result v5

    .line 645
    if-eqz v5, :cond_1d

    .line 646
    .line 647
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    check-cast v5, Lq1/s0;

    .line 652
    .line 653
    iget-object v6, v2, Lq1/p0;->x:Lp/e;

    .line 654
    .line 655
    iget-object v7, v5, Lq1/s0;->c:Ljava/lang/String;

    .line 656
    .line 657
    invoke-virtual {v6, v7}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v6

    .line 661
    check-cast v6, Lq1/z;

    .line 662
    .line 663
    if-eqz v6, :cond_1c

    .line 664
    .line 665
    iget-boolean v6, v6, Lq1/z;->e:Z

    .line 666
    .line 667
    if-eqz v6, :cond_1c

    .line 668
    .line 669
    iget-object v5, v5, Lq1/s0;->b:Ljava/lang/String;

    .line 670
    .line 671
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    goto :goto_6

    .line 675
    :cond_1c
    new-instance v6, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    const-string v7, "Ignoring attempt to update the group with a non-transferable route: "

    .line 678
    .line 679
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v5

    .line 689
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .line 691
    .line 692
    goto :goto_6

    .line 693
    :cond_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    if-eqz v1, :cond_1e

    .line 698
    .line 699
    const-string v0, "Ignoring attempt to update the group with non-transferable routes"

    .line 700
    .line 701
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .line 703
    .line 704
    goto :goto_7

    .line 705
    :cond_1e
    invoke-virtual {v2}, Lq1/s0;->g()Z

    .line 706
    .line 707
    .line 708
    move-result v1

    .line 709
    if-eqz v1, :cond_20

    .line 710
    .line 711
    iget-object v0, v0, Lq1/h;->e:Lq1/c0;

    .line 712
    .line 713
    instance-of v1, v0, Lq1/b0;

    .line 714
    .line 715
    if-eqz v1, :cond_1f

    .line 716
    .line 717
    check-cast v0, Lq1/b0;

    .line 718
    .line 719
    invoke-virtual {v0, v4}, Lq1/b0;->p(Ljava/util/List;)V

    .line 720
    .line 721
    .line 722
    goto :goto_7

    .line 723
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 724
    .line 725
    const-string v0, "There is no currently selected dynamic group route."

    .line 726
    .line 727
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    throw p1

    .line 731
    :cond_20
    invoke-virtual {v2}, Lq1/p0;->n()Z

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    if-eqz v1, :cond_21

    .line 736
    .line 737
    invoke-virtual {v0}, Lq1/h;->e()V

    .line 738
    .line 739
    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    .line 741
    .line 742
    const-string v1, "Ignoring attempt to update routes for a non-available connected route: "

    .line 743
    .line 744
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .line 756
    .line 757
    goto :goto_7

    .line 758
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 759
    .line 760
    const-string v1, "Ignoring attempt to update routes for an unsupported group route:"

    .line 761
    .line 762
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    .line 774
    .line 775
    :goto_7
    iget-object v0, p1, Landroidx/mediarouter/app/j0;->b:Landroid/widget/ImageView;

    .line 776
    .line 777
    const/4 v1, 0x4

    .line 778
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 779
    .line 780
    .line 781
    iget-object p1, p1, Landroidx/mediarouter/app/j0;->c:Landroid/widget/ProgressBar;

    .line 782
    .line 783
    const/4 v0, 0x0

    .line 784
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 785
    .line 786
    .line 787
    return-void

    .line 788
    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    .line 789
    .line 790
    const-string v0, "route must not be null"

    .line 791
    .line 792
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    throw p1

    .line 796
    :pswitch_1
    iget-object p1, p0, Landroidx/mediarouter/app/g0;->b:Ljava/lang/Object;

    .line 797
    .line 798
    check-cast p1, Landroidx/mediarouter/app/c0;

    .line 799
    .line 800
    invoke-virtual {p1}, Landroidx/appcompat/app/i0;->dismiss()V

    .line 801
    .line 802
    .line 803
    return-void

    .line 804
    :pswitch_2
    iget-object v0, p0, Landroidx/mediarouter/app/g0;->b:Ljava/lang/Object;

    .line 805
    .line 806
    check-cast v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 807
    .line 808
    iget-boolean v1, v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->h:Z

    .line 809
    .line 810
    xor-int/lit8 v2, v1, 0x1

    .line 811
    .line 812
    iput-boolean v2, v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->h:Z

    .line 813
    .line 814
    if-nez v1, :cond_23

    .line 815
    .line 816
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->d:Landroid/graphics/drawable/AnimationDrawable;

    .line 817
    .line 818
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 819
    .line 820
    .line 821
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->d:Landroid/graphics/drawable/AnimationDrawable;

    .line 822
    .line 823
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 824
    .line 825
    .line 826
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->g:Ljava/lang/String;

    .line 827
    .line 828
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 829
    .line 830
    .line 831
    goto :goto_8

    .line 832
    :cond_23
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 833
    .line 834
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 835
    .line 836
    .line 837
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 838
    .line 839
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 840
    .line 841
    .line 842
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->f:Ljava/lang/String;

    .line 843
    .line 844
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 845
    .line 846
    .line 847
    :goto_8
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->i:Landroid/view/View$OnClickListener;

    .line 848
    .line 849
    if-eqz v0, :cond_24

    .line 850
    .line 851
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 852
    .line 853
    .line 854
    :cond_24
    return-void

    .line 855
    :pswitch_3
    iget-object v0, p0, Landroidx/mediarouter/app/g0;->b:Ljava/lang/Object;

    .line 856
    .line 857
    check-cast v0, Landroidx/mediarouter/app/h0;

    .line 858
    .line 859
    iget-object v1, v0, Landroidx/mediarouter/app/h0;->d:Landroidx/mediarouter/app/q0;

    .line 860
    .line 861
    iget-object v2, v1, Landroidx/mediarouter/app/q0;->v:Lq1/s0;

    .line 862
    .line 863
    const/4 v3, 0x2

    .line 864
    if-eqz v2, :cond_25

    .line 865
    .line 866
    iget-object v1, v1, Landroidx/mediarouter/app/q0;->q:Landroidx/mediarouter/app/c;

    .line 867
    .line 868
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 869
    .line 870
    .line 871
    :cond_25
    iget-object v1, v0, Landroidx/mediarouter/app/h0;->a:Lq1/s0;

    .line 872
    .line 873
    iget-object v2, v0, Landroidx/mediarouter/app/h0;->d:Landroidx/mediarouter/app/q0;

    .line 874
    .line 875
    iput-object v1, v2, Landroidx/mediarouter/app/q0;->v:Lq1/s0;

    .line 876
    .line 877
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 878
    .line 879
    .line 880
    move-result p1

    .line 881
    xor-int/lit8 v1, p1, 0x1

    .line 882
    .line 883
    if-nez p1, :cond_26

    .line 884
    .line 885
    const/4 p1, 0x0

    .line 886
    goto :goto_9

    .line 887
    :cond_26
    iget-object p1, v2, Landroidx/mediarouter/app/q0;->w:Ljava/util/HashMap;

    .line 888
    .line 889
    iget-object v4, v0, Landroidx/mediarouter/app/h0;->a:Lq1/s0;

    .line 890
    .line 891
    iget-object v4, v4, Lq1/s0;->c:Ljava/lang/String;

    .line 892
    .line 893
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object p1

    .line 897
    check-cast p1, Ljava/lang/Integer;

    .line 898
    .line 899
    const/4 v4, 0x1

    .line 900
    if-nez p1, :cond_27

    .line 901
    .line 902
    const/4 p1, 0x1

    .line 903
    goto :goto_9

    .line 904
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 905
    .line 906
    .line 907
    move-result p1

    .line 908
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    .line 909
    .line 910
    .line 911
    move-result p1

    .line 912
    :goto_9
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/h0;->c(Z)V

    .line 913
    .line 914
    .line 915
    iget-object v1, v0, Landroidx/mediarouter/app/h0;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 916
    .line 917
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 918
    .line 919
    .line 920
    iget-object v0, v0, Landroidx/mediarouter/app/h0;->a:Lq1/s0;

    .line 921
    .line 922
    invoke-virtual {v0, p1}, Lq1/s0;->j(I)V

    .line 923
    .line 924
    .line 925
    iget-object p1, v2, Landroidx/mediarouter/app/q0;->q:Landroidx/mediarouter/app/c;

    .line 926
    .line 927
    const-wide/16 v0, 0x1f4

    .line 928
    .line 929
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 930
    .line 931
    .line 932
    return-void

    .line 933
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
