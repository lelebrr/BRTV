.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "MyApplication"


# instance fields
.field public j:Lv/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final g(Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->g(Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv/h;

    .line 5
    .line 6
    invoke-direct {v0}, Lv/h;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 10
    .line 11
    if-eqz p1, :cond_1a

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Ly/j;->b:[I

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v0, :cond_1a

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 38
    .line 39
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iput v3, v4, Lv/h;->L0:I

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_0
    const/4 v4, 0x1

    .line 48
    if-ne v3, v4, :cond_1

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 51
    .line 52
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iput v3, v4, Lv/h;->i0:I

    .line 57
    .line 58
    iput v3, v4, Lv/h;->j0:I

    .line 59
    .line 60
    iput v3, v4, Lv/h;->k0:I

    .line 61
    .line 62
    iput v3, v4, Lv/h;->l0:I

    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_1
    const/16 v4, 0xb

    .line 67
    .line 68
    if-ne v3, v4, :cond_2

    .line 69
    .line 70
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 71
    .line 72
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput v3, v4, Lv/h;->k0:I

    .line 77
    .line 78
    iput v3, v4, Lv/h;->m0:I

    .line 79
    .line 80
    iput v3, v4, Lv/h;->n0:I

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_2
    const/16 v4, 0xc

    .line 85
    .line 86
    if-ne v3, v4, :cond_3

    .line 87
    .line 88
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 89
    .line 90
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    iput v3, v4, Lv/h;->l0:I

    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_3
    const/4 v4, 0x2

    .line 99
    if-ne v3, v4, :cond_4

    .line 100
    .line 101
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 102
    .line 103
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iput v3, v4, Lv/h;->m0:I

    .line 108
    .line 109
    goto/16 :goto_1

    .line 110
    .line 111
    :cond_4
    const/4 v5, 0x3

    .line 112
    if-ne v3, v5, :cond_5

    .line 113
    .line 114
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 115
    .line 116
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    iput v3, v4, Lv/h;->i0:I

    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :cond_5
    const/4 v5, 0x4

    .line 125
    if-ne v3, v5, :cond_6

    .line 126
    .line 127
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 128
    .line 129
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    iput v3, v4, Lv/h;->n0:I

    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    :cond_6
    const/4 v5, 0x5

    .line 138
    if-ne v3, v5, :cond_7

    .line 139
    .line 140
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 141
    .line 142
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    iput v3, v4, Lv/h;->j0:I

    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :cond_7
    const/16 v5, 0x25

    .line 151
    .line 152
    if-ne v3, v5, :cond_8

    .line 153
    .line 154
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 155
    .line 156
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    iput v3, v4, Lv/h;->J0:I

    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :cond_8
    const/16 v5, 0x1b

    .line 165
    .line 166
    if-ne v3, v5, :cond_9

    .line 167
    .line 168
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 169
    .line 170
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    iput v3, v4, Lv/h;->t0:I

    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_9
    const/16 v5, 0x24

    .line 179
    .line 180
    if-ne v3, v5, :cond_a

    .line 181
    .line 182
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 183
    .line 184
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    iput v3, v4, Lv/h;->u0:I

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_a
    const/16 v5, 0x15

    .line 193
    .line 194
    if-ne v3, v5, :cond_b

    .line 195
    .line 196
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 197
    .line 198
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    iput v3, v4, Lv/h;->v0:I

    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :cond_b
    const/16 v5, 0x1d

    .line 207
    .line 208
    if-ne v3, v5, :cond_c

    .line 209
    .line 210
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 211
    .line 212
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    iput v3, v4, Lv/h;->x0:I

    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :cond_c
    const/16 v5, 0x17

    .line 221
    .line 222
    if-ne v3, v5, :cond_d

    .line 223
    .line 224
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 225
    .line 226
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    iput v3, v4, Lv/h;->w0:I

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_d
    const/16 v5, 0x1f

    .line 235
    .line 236
    if-ne v3, v5, :cond_e

    .line 237
    .line 238
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 239
    .line 240
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    iput v3, v4, Lv/h;->y0:I

    .line 245
    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :cond_e
    const/16 v5, 0x19

    .line 249
    .line 250
    const/high16 v6, 0x3f000000    # 0.5f

    .line 251
    .line 252
    if-ne v3, v5, :cond_f

    .line 253
    .line 254
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 255
    .line 256
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    iput v3, v4, Lv/h;->z0:F

    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :cond_f
    const/16 v5, 0x14

    .line 265
    .line 266
    if-ne v3, v5, :cond_10

    .line 267
    .line 268
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 269
    .line 270
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    iput v3, v4, Lv/h;->B0:F

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_10
    const/16 v5, 0x1c

    .line 279
    .line 280
    if-ne v3, v5, :cond_11

    .line 281
    .line 282
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 283
    .line 284
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    iput v3, v4, Lv/h;->D0:F

    .line 289
    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    :cond_11
    const/16 v5, 0x16

    .line 293
    .line 294
    if-ne v3, v5, :cond_12

    .line 295
    .line 296
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 297
    .line 298
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    iput v3, v4, Lv/h;->C0:F

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_12
    const/16 v5, 0x1e

    .line 306
    .line 307
    if-ne v3, v5, :cond_13

    .line 308
    .line 309
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 310
    .line 311
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    iput v3, v4, Lv/h;->E0:F

    .line 316
    .line 317
    goto :goto_1

    .line 318
    :cond_13
    const/16 v5, 0x22

    .line 319
    .line 320
    if-ne v3, v5, :cond_14

    .line 321
    .line 322
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 323
    .line 324
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    iput v3, v4, Lv/h;->A0:F

    .line 329
    .line 330
    goto :goto_1

    .line 331
    :cond_14
    const/16 v5, 0x18

    .line 332
    .line 333
    if-ne v3, v5, :cond_15

    .line 334
    .line 335
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 336
    .line 337
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    iput v3, v5, Lv/h;->H0:I

    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_15
    const/16 v5, 0x21

    .line 345
    .line 346
    if-ne v3, v5, :cond_16

    .line 347
    .line 348
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 349
    .line 350
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    iput v3, v5, Lv/h;->I0:I

    .line 355
    .line 356
    goto :goto_1

    .line 357
    :cond_16
    const/16 v4, 0x1a

    .line 358
    .line 359
    if-ne v3, v4, :cond_17

    .line 360
    .line 361
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 362
    .line 363
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    iput v3, v4, Lv/h;->F0:I

    .line 368
    .line 369
    goto :goto_1

    .line 370
    :cond_17
    const/16 v4, 0x23

    .line 371
    .line 372
    if-ne v3, v4, :cond_18

    .line 373
    .line 374
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 375
    .line 376
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    iput v3, v4, Lv/h;->G0:I

    .line 381
    .line 382
    goto :goto_1

    .line 383
    :cond_18
    const/16 v4, 0x20

    .line 384
    .line 385
    if-ne v3, v4, :cond_19

    .line 386
    .line 387
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 388
    .line 389
    const/4 v5, -0x1

    .line 390
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    iput v3, v4, Lv/h;->K0:I

    .line 395
    .line 396
    :cond_19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :cond_1a
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 401
    .line 402
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->d:Lv/j;

    .line 403
    .line 404
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->l()V

    .line 405
    .line 406
    .line 407
    return-void
.end method

.method public final h(Landroidx/constraintlayout/widget/c;Lv/j;Landroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintHelper;->h(Landroidx/constraintlayout/widget/c;Lv/j;Landroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    instance-of p1, p2, Lv/h;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    check-cast p2, Lv/h;

    .line 9
    .line 10
    iget p1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 11
    .line 12
    const/4 p3, -0x1

    .line 13
    if-eq p1, p3, :cond_0

    .line 14
    .line 15
    iput p1, p2, Lv/h;->L0:I

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final i(Lv/e;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iget v0, p1, Lv/h;->k0:I

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    iget v1, p1, Lv/h;->l0:I

    .line 8
    .line 9
    if-lez v1, :cond_2

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget p2, p1, Lv/h;->l0:I

    .line 14
    .line 15
    iput p2, p1, Lv/h;->m0:I

    .line 16
    .line 17
    iput v0, p1, Lv/h;->n0:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput v0, p1, Lv/h;->m0:I

    .line 21
    .line 22
    iget p2, p1, Lv/h;->l0:I

    .line 23
    .line 24
    iput p2, p1, Lv/h;->n0:I

    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public final m(Lv/h;II)V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v10

    .line 9
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    .line 11
    .line 12
    move-result v11

    .line 13
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 14
    .line 15
    .line 16
    move-result v12

    .line 17
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v13

    .line 21
    const/4 v14, 0x0

    .line 22
    if-eqz v9, :cond_60

    .line 23
    .line 24
    iget v1, v9, Lv/j;->h0:I

    .line 25
    .line 26
    sget-object v15, Lv/d;->b:Lv/d;

    .line 27
    .line 28
    sget-object v8, Lv/d;->c:Lv/d;

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    if-lez v1, :cond_8

    .line 32
    .line 33
    iget-object v1, v9, Lv/e;->K:Lv/e;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    check-cast v1, Lv/f;

    .line 38
    .line 39
    iget-object v1, v1, Lv/f;->j0:Lw/c;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    :goto_0
    if-nez v1, :cond_1

    .line 44
    .line 45
    iput v14, v9, Lv/h;->p0:I

    .line 46
    .line 47
    iput v14, v9, Lv/h;->q0:I

    .line 48
    .line 49
    iput-boolean v14, v9, Lv/h;->o0:Z

    .line 50
    .line 51
    goto/16 :goto_35

    .line 52
    .line 53
    :cond_1
    const/4 v3, 0x0

    .line 54
    :goto_1
    iget v4, v9, Lv/j;->h0:I

    .line 55
    .line 56
    if-ge v3, v4, :cond_8

    .line 57
    .line 58
    iget-object v4, v9, Lv/j;->g0:[Lv/e;

    .line 59
    .line 60
    aget-object v4, v4, v3

    .line 61
    .line 62
    if-nez v4, :cond_2

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    instance-of v5, v4, Lv/i;

    .line 66
    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {v4, v14}, Lv/e;->i(I)Lv/d;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v4, v7}, Lv/e;->i(I)Lv/d;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    if-ne v5, v8, :cond_4

    .line 79
    .line 80
    iget v2, v4, Lv/e;->j:I

    .line 81
    .line 82
    if-eq v2, v7, :cond_4

    .line 83
    .line 84
    if-ne v6, v8, :cond_4

    .line 85
    .line 86
    iget v2, v4, Lv/e;->k:I

    .line 87
    .line 88
    if-eq v2, v7, :cond_4

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    if-ne v5, v8, :cond_5

    .line 92
    .line 93
    move-object v5, v15

    .line 94
    :cond_5
    if-ne v6, v8, :cond_6

    .line 95
    .line 96
    move-object v6, v15

    .line 97
    :cond_6
    iget-object v2, v9, Lv/h;->r0:Lw/b;

    .line 98
    .line 99
    iput-object v5, v2, Lw/b;->a:Lv/d;

    .line 100
    .line 101
    iput-object v6, v2, Lw/b;->b:Lv/d;

    .line 102
    .line 103
    invoke-virtual {v4}, Lv/e;->m()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    iput v5, v2, Lw/b;->c:I

    .line 108
    .line 109
    invoke-virtual {v4}, Lv/e;->j()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    iput v5, v2, Lw/b;->d:I

    .line 114
    .line 115
    move-object v5, v1

    .line 116
    check-cast v5, Landroidx/constraintlayout/widget/b;

    .line 117
    .line 118
    invoke-virtual {v5, v4, v2}, Landroidx/constraintlayout/widget/b;->a(Lv/e;Lw/b;)V

    .line 119
    .line 120
    .line 121
    iget v5, v2, Lw/b;->e:I

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Lv/e;->z(I)V

    .line 124
    .line 125
    .line 126
    iget v5, v2, Lw/b;->f:I

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Lv/e;->w(I)V

    .line 129
    .line 130
    .line 131
    iget v2, v2, Lw/b;->g:I

    .line 132
    .line 133
    iput v2, v4, Lv/e;->R:I

    .line 134
    .line 135
    if-lez v2, :cond_7

    .line 136
    .line 137
    const/4 v2, 0x1

    .line 138
    goto :goto_2

    .line 139
    :cond_7
    const/4 v2, 0x0

    .line 140
    :goto_2
    iput-boolean v2, v4, Lv/e;->w:Z

    .line 141
    .line 142
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_8
    iget v6, v9, Lv/h;->m0:I

    .line 146
    .line 147
    iget v5, v9, Lv/h;->n0:I

    .line 148
    .line 149
    iget v4, v9, Lv/h;->i0:I

    .line 150
    .line 151
    iget v3, v9, Lv/h;->j0:I

    .line 152
    .line 153
    const/4 v1, 0x2

    .line 154
    new-array v2, v1, [I

    .line 155
    .line 156
    sub-int v16, v11, v6

    .line 157
    .line 158
    sub-int v16, v16, v5

    .line 159
    .line 160
    iget v1, v9, Lv/h;->L0:I

    .line 161
    .line 162
    if-ne v1, v7, :cond_9

    .line 163
    .line 164
    sub-int v16, v13, v4

    .line 165
    .line 166
    sub-int v16, v16, v3

    .line 167
    .line 168
    :cond_9
    move/from16 v28, v16

    .line 169
    .line 170
    const/4 v7, -0x1

    .line 171
    if-nez v1, :cond_b

    .line 172
    .line 173
    iget v1, v9, Lv/h;->t0:I

    .line 174
    .line 175
    if-ne v1, v7, :cond_a

    .line 176
    .line 177
    iput v14, v9, Lv/h;->t0:I

    .line 178
    .line 179
    :cond_a
    iget v1, v9, Lv/h;->u0:I

    .line 180
    .line 181
    if-ne v1, v7, :cond_d

    .line 182
    .line 183
    iput v14, v9, Lv/h;->u0:I

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_b
    iget v1, v9, Lv/h;->t0:I

    .line 187
    .line 188
    if-ne v1, v7, :cond_c

    .line 189
    .line 190
    iput v14, v9, Lv/h;->t0:I

    .line 191
    .line 192
    :cond_c
    iget v1, v9, Lv/h;->u0:I

    .line 193
    .line 194
    if-ne v1, v7, :cond_d

    .line 195
    .line 196
    iput v14, v9, Lv/h;->u0:I

    .line 197
    .line 198
    :cond_d
    :goto_4
    iget-object v1, v9, Lv/j;->g0:[Lv/e;

    .line 199
    .line 200
    const/4 v7, 0x0

    .line 201
    const/16 v17, 0x0

    .line 202
    .line 203
    :goto_5
    iget v14, v9, Lv/j;->h0:I

    .line 204
    .line 205
    move-object/from16 v18, v1

    .line 206
    .line 207
    const/16 v1, 0x8

    .line 208
    .line 209
    if-ge v7, v14, :cond_f

    .line 210
    .line 211
    iget-object v14, v9, Lv/j;->g0:[Lv/e;

    .line 212
    .line 213
    aget-object v14, v14, v7

    .line 214
    .line 215
    iget v14, v14, Lv/e;->X:I

    .line 216
    .line 217
    if-ne v14, v1, :cond_e

    .line 218
    .line 219
    add-int/lit8 v17, v17, 0x1

    .line 220
    .line 221
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 222
    .line 223
    move-object/from16 v1, v18

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_f
    if-lez v17, :cond_12

    .line 227
    .line 228
    sub-int v14, v14, v17

    .line 229
    .line 230
    new-array v7, v14, [Lv/e;

    .line 231
    .line 232
    const/4 v14, 0x0

    .line 233
    const/16 v17, 0x0

    .line 234
    .line 235
    :goto_6
    iget v1, v9, Lv/j;->h0:I

    .line 236
    .line 237
    if-ge v14, v1, :cond_11

    .line 238
    .line 239
    iget-object v1, v9, Lv/j;->g0:[Lv/e;

    .line 240
    .line 241
    aget-object v1, v1, v14

    .line 242
    .line 243
    move/from16 v20, v3

    .line 244
    .line 245
    iget v3, v1, Lv/e;->X:I

    .line 246
    .line 247
    move/from16 v21, v4

    .line 248
    .line 249
    const/16 v4, 0x8

    .line 250
    .line 251
    if-eq v3, v4, :cond_10

    .line 252
    .line 253
    aput-object v1, v7, v17

    .line 254
    .line 255
    add-int/lit8 v17, v17, 0x1

    .line 256
    .line 257
    :cond_10
    add-int/lit8 v14, v14, 0x1

    .line 258
    .line 259
    move/from16 v3, v20

    .line 260
    .line 261
    move/from16 v4, v21

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_11
    move/from16 v20, v3

    .line 265
    .line 266
    move/from16 v21, v4

    .line 267
    .line 268
    move-object v14, v7

    .line 269
    move/from16 v7, v17

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_12
    move/from16 v20, v3

    .line 273
    .line 274
    move/from16 v21, v4

    .line 275
    .line 276
    move v7, v14

    .line 277
    move-object/from16 v14, v18

    .line 278
    .line 279
    :goto_7
    iput-object v14, v9, Lv/h;->Q0:[Lv/e;

    .line 280
    .line 281
    iput v7, v9, Lv/h;->R0:I

    .line 282
    .line 283
    iget v1, v9, Lv/h;->J0:I

    .line 284
    .line 285
    iget-object v4, v9, Lv/h;->M0:Ljava/util/ArrayList;

    .line 286
    .line 287
    if-eqz v1, :cond_55

    .line 288
    .line 289
    const/4 v3, 0x1

    .line 290
    if-eq v1, v3, :cond_3a

    .line 291
    .line 292
    const/4 v3, 0x2

    .line 293
    if-eq v1, v3, :cond_13

    .line 294
    .line 295
    move-object/from16 v29, v2

    .line 296
    .line 297
    move/from16 v33, v5

    .line 298
    .line 299
    move/from16 v34, v6

    .line 300
    .line 301
    move/from16 v37, v10

    .line 302
    .line 303
    move/from16 v36, v11

    .line 304
    .line 305
    move/from16 v32, v12

    .line 306
    .line 307
    move/from16 v28, v13

    .line 308
    .line 309
    :goto_8
    move/from16 v30, v20

    .line 310
    .line 311
    move/from16 v31, v21

    .line 312
    .line 313
    const/4 v1, 0x0

    .line 314
    const/16 v16, 0x1

    .line 315
    .line 316
    goto/16 :goto_30

    .line 317
    .line 318
    :cond_13
    iget v1, v9, Lv/h;->L0:I

    .line 319
    .line 320
    if-nez v1, :cond_19

    .line 321
    .line 322
    iget v3, v9, Lv/h;->K0:I

    .line 323
    .line 324
    if-gtz v3, :cond_18

    .line 325
    .line 326
    const/4 v3, 0x0

    .line 327
    const/4 v4, 0x0

    .line 328
    const/4 v8, 0x0

    .line 329
    :goto_9
    if-ge v3, v7, :cond_17

    .line 330
    .line 331
    if-lez v3, :cond_14

    .line 332
    .line 333
    iget v15, v9, Lv/h;->F0:I

    .line 334
    .line 335
    add-int/2addr v4, v15

    .line 336
    :cond_14
    aget-object v15, v14, v3

    .line 337
    .line 338
    if-nez v15, :cond_15

    .line 339
    .line 340
    move/from16 v0, v28

    .line 341
    .line 342
    goto :goto_a

    .line 343
    :cond_15
    move/from16 v0, v28

    .line 344
    .line 345
    invoke-virtual {v9, v15, v0}, Lv/h;->F(Lv/e;I)I

    .line 346
    .line 347
    .line 348
    move-result v15

    .line 349
    add-int/2addr v15, v4

    .line 350
    if-le v15, v0, :cond_16

    .line 351
    .line 352
    goto :goto_b

    .line 353
    :cond_16
    add-int/lit8 v8, v8, 0x1

    .line 354
    .line 355
    move v4, v15

    .line 356
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 357
    .line 358
    move/from16 v28, v0

    .line 359
    .line 360
    move-object/from16 v0, p0

    .line 361
    .line 362
    goto :goto_9

    .line 363
    :cond_17
    move/from16 v0, v28

    .line 364
    .line 365
    :goto_b
    const/4 v3, 0x0

    .line 366
    goto :goto_f

    .line 367
    :cond_18
    move/from16 v0, v28

    .line 368
    .line 369
    move v8, v3

    .line 370
    goto :goto_b

    .line 371
    :cond_19
    move/from16 v0, v28

    .line 372
    .line 373
    iget v3, v9, Lv/h;->K0:I

    .line 374
    .line 375
    if-gtz v3, :cond_1e

    .line 376
    .line 377
    const/4 v3, 0x0

    .line 378
    const/4 v4, 0x0

    .line 379
    const/4 v8, 0x0

    .line 380
    :goto_c
    if-ge v3, v7, :cond_1d

    .line 381
    .line 382
    if-lez v3, :cond_1a

    .line 383
    .line 384
    iget v15, v9, Lv/h;->G0:I

    .line 385
    .line 386
    add-int/2addr v4, v15

    .line 387
    :cond_1a
    aget-object v15, v14, v3

    .line 388
    .line 389
    if-nez v15, :cond_1b

    .line 390
    .line 391
    goto :goto_d

    .line 392
    :cond_1b
    invoke-virtual {v9, v15, v0}, Lv/h;->E(Lv/e;I)I

    .line 393
    .line 394
    .line 395
    move-result v15

    .line 396
    add-int/2addr v15, v4

    .line 397
    if-le v15, v0, :cond_1c

    .line 398
    .line 399
    goto :goto_e

    .line 400
    :cond_1c
    add-int/lit8 v8, v8, 0x1

    .line 401
    .line 402
    move v4, v15

    .line 403
    :goto_d
    add-int/lit8 v3, v3, 0x1

    .line 404
    .line 405
    goto :goto_c

    .line 406
    :cond_1d
    :goto_e
    move v3, v8

    .line 407
    :cond_1e
    const/4 v8, 0x0

    .line 408
    :goto_f
    iget-object v4, v9, Lv/h;->P0:[I

    .line 409
    .line 410
    if-nez v4, :cond_1f

    .line 411
    .line 412
    const/4 v4, 0x2

    .line 413
    new-array v4, v4, [I

    .line 414
    .line 415
    iput-object v4, v9, Lv/h;->P0:[I

    .line 416
    .line 417
    :cond_1f
    if-nez v3, :cond_20

    .line 418
    .line 419
    const/4 v4, 0x1

    .line 420
    if-eq v1, v4, :cond_21

    .line 421
    .line 422
    :cond_20
    if-nez v8, :cond_22

    .line 423
    .line 424
    if-nez v1, :cond_22

    .line 425
    .line 426
    :cond_21
    const/4 v4, 0x1

    .line 427
    goto :goto_10

    .line 428
    :cond_22
    const/4 v4, 0x0

    .line 429
    :goto_10
    if-nez v4, :cond_39

    .line 430
    .line 431
    if-nez v1, :cond_23

    .line 432
    .line 433
    int-to-float v3, v7

    .line 434
    int-to-float v15, v8

    .line 435
    div-float/2addr v3, v15

    .line 436
    move/from16 p3, v4

    .line 437
    .line 438
    float-to-double v3, v3

    .line 439
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 440
    .line 441
    .line 442
    move-result-wide v3

    .line 443
    double-to-int v3, v3

    .line 444
    move/from16 v17, v5

    .line 445
    .line 446
    goto :goto_11

    .line 447
    :cond_23
    move/from16 p3, v4

    .line 448
    .line 449
    int-to-float v4, v7

    .line 450
    int-to-float v8, v3

    .line 451
    div-float/2addr v4, v8

    .line 452
    move/from16 v17, v5

    .line 453
    .line 454
    float-to-double v4, v4

    .line 455
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 456
    .line 457
    .line 458
    move-result-wide v4

    .line 459
    double-to-int v8, v4

    .line 460
    :goto_11
    iget-object v4, v9, Lv/h;->O0:[Lv/e;

    .line 461
    .line 462
    if-eqz v4, :cond_24

    .line 463
    .line 464
    array-length v5, v4

    .line 465
    if-ge v5, v8, :cond_25

    .line 466
    .line 467
    :cond_24
    const/4 v5, 0x0

    .line 468
    goto :goto_12

    .line 469
    :cond_25
    const/4 v5, 0x0

    .line 470
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    goto :goto_13

    .line 474
    :goto_12
    new-array v4, v8, [Lv/e;

    .line 475
    .line 476
    iput-object v4, v9, Lv/h;->O0:[Lv/e;

    .line 477
    .line 478
    :goto_13
    iget-object v4, v9, Lv/h;->N0:[Lv/e;

    .line 479
    .line 480
    if-eqz v4, :cond_27

    .line 481
    .line 482
    array-length v15, v4

    .line 483
    if-ge v15, v3, :cond_26

    .line 484
    .line 485
    goto :goto_14

    .line 486
    :cond_26
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    goto :goto_15

    .line 490
    :cond_27
    :goto_14
    new-array v4, v3, [Lv/e;

    .line 491
    .line 492
    iput-object v4, v9, Lv/h;->N0:[Lv/e;

    .line 493
    .line 494
    :goto_15
    const/4 v4, 0x0

    .line 495
    :goto_16
    if-ge v4, v8, :cond_30

    .line 496
    .line 497
    const/4 v5, 0x0

    .line 498
    :goto_17
    if-ge v5, v3, :cond_2f

    .line 499
    .line 500
    mul-int v15, v5, v8

    .line 501
    .line 502
    add-int/2addr v15, v4

    .line 503
    move/from16 v18, v6

    .line 504
    .line 505
    const/4 v6, 0x1

    .line 506
    if-ne v1, v6, :cond_28

    .line 507
    .line 508
    mul-int v6, v4, v3

    .line 509
    .line 510
    add-int v15, v6, v5

    .line 511
    .line 512
    :cond_28
    array-length v6, v14

    .line 513
    if-lt v15, v6, :cond_29

    .line 514
    .line 515
    :goto_18
    move/from16 v28, v13

    .line 516
    .line 517
    goto :goto_19

    .line 518
    :cond_29
    aget-object v6, v14, v15

    .line 519
    .line 520
    if-nez v6, :cond_2a

    .line 521
    .line 522
    goto :goto_18

    .line 523
    :cond_2a
    invoke-virtual {v9, v6, v0}, Lv/h;->F(Lv/e;I)I

    .line 524
    .line 525
    .line 526
    move-result v15

    .line 527
    move/from16 v28, v13

    .line 528
    .line 529
    iget-object v13, v9, Lv/h;->O0:[Lv/e;

    .line 530
    .line 531
    aget-object v13, v13, v4

    .line 532
    .line 533
    if-eqz v13, :cond_2b

    .line 534
    .line 535
    invoke-virtual {v13}, Lv/e;->m()I

    .line 536
    .line 537
    .line 538
    move-result v13

    .line 539
    if-ge v13, v15, :cond_2c

    .line 540
    .line 541
    :cond_2b
    iget-object v13, v9, Lv/h;->O0:[Lv/e;

    .line 542
    .line 543
    aput-object v6, v13, v4

    .line 544
    .line 545
    :cond_2c
    invoke-virtual {v9, v6, v0}, Lv/h;->E(Lv/e;I)I

    .line 546
    .line 547
    .line 548
    move-result v13

    .line 549
    iget-object v15, v9, Lv/h;->N0:[Lv/e;

    .line 550
    .line 551
    aget-object v15, v15, v5

    .line 552
    .line 553
    if-eqz v15, :cond_2d

    .line 554
    .line 555
    invoke-virtual {v15}, Lv/e;->j()I

    .line 556
    .line 557
    .line 558
    move-result v15

    .line 559
    if-ge v15, v13, :cond_2e

    .line 560
    .line 561
    :cond_2d
    iget-object v13, v9, Lv/h;->N0:[Lv/e;

    .line 562
    .line 563
    aput-object v6, v13, v5

    .line 564
    .line 565
    :cond_2e
    :goto_19
    add-int/lit8 v5, v5, 0x1

    .line 566
    .line 567
    move/from16 v6, v18

    .line 568
    .line 569
    move/from16 v13, v28

    .line 570
    .line 571
    goto :goto_17

    .line 572
    :cond_2f
    move/from16 v18, v6

    .line 573
    .line 574
    move/from16 v28, v13

    .line 575
    .line 576
    add-int/lit8 v4, v4, 0x1

    .line 577
    .line 578
    goto :goto_16

    .line 579
    :cond_30
    move/from16 v18, v6

    .line 580
    .line 581
    move/from16 v28, v13

    .line 582
    .line 583
    const/4 v4, 0x0

    .line 584
    const/4 v5, 0x0

    .line 585
    :goto_1a
    if-ge v4, v8, :cond_33

    .line 586
    .line 587
    iget-object v6, v9, Lv/h;->O0:[Lv/e;

    .line 588
    .line 589
    aget-object v6, v6, v4

    .line 590
    .line 591
    if-eqz v6, :cond_32

    .line 592
    .line 593
    if-lez v4, :cond_31

    .line 594
    .line 595
    iget v13, v9, Lv/h;->F0:I

    .line 596
    .line 597
    add-int/2addr v5, v13

    .line 598
    :cond_31
    invoke-virtual {v9, v6, v0}, Lv/h;->F(Lv/e;I)I

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    add-int/2addr v6, v5

    .line 603
    move v5, v6

    .line 604
    :cond_32
    add-int/lit8 v4, v4, 0x1

    .line 605
    .line 606
    goto :goto_1a

    .line 607
    :cond_33
    const/4 v4, 0x0

    .line 608
    const/4 v6, 0x0

    .line 609
    :goto_1b
    if-ge v4, v3, :cond_36

    .line 610
    .line 611
    iget-object v13, v9, Lv/h;->N0:[Lv/e;

    .line 612
    .line 613
    aget-object v13, v13, v4

    .line 614
    .line 615
    if-eqz v13, :cond_35

    .line 616
    .line 617
    if-lez v4, :cond_34

    .line 618
    .line 619
    iget v15, v9, Lv/h;->G0:I

    .line 620
    .line 621
    add-int/2addr v6, v15

    .line 622
    :cond_34
    invoke-virtual {v9, v13, v0}, Lv/h;->E(Lv/e;I)I

    .line 623
    .line 624
    .line 625
    move-result v13

    .line 626
    add-int/2addr v13, v6

    .line 627
    move v6, v13

    .line 628
    :cond_35
    add-int/lit8 v4, v4, 0x1

    .line 629
    .line 630
    goto :goto_1b

    .line 631
    :cond_36
    const/4 v4, 0x0

    .line 632
    aput v5, v2, v4

    .line 633
    .line 634
    const/4 v13, 0x1

    .line 635
    aput v6, v2, v13

    .line 636
    .line 637
    if-nez v1, :cond_38

    .line 638
    .line 639
    if-le v5, v0, :cond_37

    .line 640
    .line 641
    if-le v8, v13, :cond_37

    .line 642
    .line 643
    add-int/lit8 v8, v8, -0x1

    .line 644
    .line 645
    :goto_1c
    move/from16 v4, p3

    .line 646
    .line 647
    goto :goto_1d

    .line 648
    :cond_37
    const/4 v4, 0x1

    .line 649
    goto :goto_1d

    .line 650
    :cond_38
    if-le v6, v0, :cond_37

    .line 651
    .line 652
    if-le v3, v13, :cond_37

    .line 653
    .line 654
    add-int/lit8 v3, v3, -0x1

    .line 655
    .line 656
    goto :goto_1c

    .line 657
    :goto_1d
    move/from16 v5, v17

    .line 658
    .line 659
    move/from16 v6, v18

    .line 660
    .line 661
    move/from16 v13, v28

    .line 662
    .line 663
    goto/16 :goto_10

    .line 664
    .line 665
    :cond_39
    move/from16 v17, v5

    .line 666
    .line 667
    move/from16 v18, v6

    .line 668
    .line 669
    move/from16 v28, v13

    .line 670
    .line 671
    const/4 v13, 0x1

    .line 672
    iget-object v0, v9, Lv/h;->P0:[I

    .line 673
    .line 674
    const/4 v1, 0x0

    .line 675
    aput v8, v0, v1

    .line 676
    .line 677
    aput v3, v0, v13

    .line 678
    .line 679
    move-object/from16 v29, v2

    .line 680
    .line 681
    move/from16 v37, v10

    .line 682
    .line 683
    move/from16 v36, v11

    .line 684
    .line 685
    move/from16 v32, v12

    .line 686
    .line 687
    move/from16 v33, v17

    .line 688
    .line 689
    move/from16 v34, v18

    .line 690
    .line 691
    goto/16 :goto_8

    .line 692
    .line 693
    :cond_3a
    move/from16 v17, v5

    .line 694
    .line 695
    move/from16 v18, v6

    .line 696
    .line 697
    move/from16 v0, v28

    .line 698
    .line 699
    move/from16 v28, v13

    .line 700
    .line 701
    const/4 v13, 0x1

    .line 702
    iget v6, v9, Lv/h;->L0:I

    .line 703
    .line 704
    if-nez v7, :cond_3b

    .line 705
    .line 706
    move-object/from16 v29, v2

    .line 707
    .line 708
    move/from16 v37, v10

    .line 709
    .line 710
    move/from16 v36, v11

    .line 711
    .line 712
    move/from16 v32, v12

    .line 713
    .line 714
    move/from16 v33, v17

    .line 715
    .line 716
    move/from16 v34, v18

    .line 717
    .line 718
    move/from16 v30, v20

    .line 719
    .line 720
    move/from16 v31, v21

    .line 721
    .line 722
    const/16 v16, 0x1

    .line 723
    .line 724
    goto/16 :goto_2d

    .line 725
    .line 726
    :cond_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 727
    .line 728
    .line 729
    new-instance v5, Lv/g;

    .line 730
    .line 731
    iget-object v3, v9, Lv/e;->A:Lv/c;

    .line 732
    .line 733
    iget-object v1, v9, Lv/e;->B:Lv/c;

    .line 734
    .line 735
    iget-object v13, v9, Lv/e;->y:Lv/c;

    .line 736
    .line 737
    move/from16 v19, v7

    .line 738
    .line 739
    iget-object v7, v9, Lv/e;->z:Lv/c;

    .line 740
    .line 741
    move-object/from16 v22, v1

    .line 742
    .line 743
    move-object v1, v5

    .line 744
    move-object/from16 v29, v2

    .line 745
    .line 746
    move-object/from16 v2, p1

    .line 747
    .line 748
    move/from16 v30, v20

    .line 749
    .line 750
    move-object/from16 v20, v3

    .line 751
    .line 752
    move v3, v6

    .line 753
    move/from16 v32, v12

    .line 754
    .line 755
    move/from16 v31, v21

    .line 756
    .line 757
    move-object v12, v4

    .line 758
    move-object v4, v13

    .line 759
    move-object v13, v5

    .line 760
    move/from16 v33, v17

    .line 761
    .line 762
    move-object v5, v7

    .line 763
    move/from16 v35, v6

    .line 764
    .line 765
    move/from16 v34, v18

    .line 766
    .line 767
    move-object/from16 v6, v20

    .line 768
    .line 769
    move/from16 v36, v11

    .line 770
    .line 771
    move/from16 v11, v19

    .line 772
    .line 773
    const/16 v16, 0x1

    .line 774
    .line 775
    move-object/from16 v7, v22

    .line 776
    .line 777
    move/from16 v37, v10

    .line 778
    .line 779
    move-object v10, v8

    .line 780
    move v8, v0

    .line 781
    invoke-direct/range {v1 .. v8}, Lv/g;-><init>(Lv/h;ILv/c;Lv/c;Lv/c;Lv/c;I)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    if-nez v35, :cond_43

    .line 788
    .line 789
    move-object v5, v13

    .line 790
    const/4 v1, 0x0

    .line 791
    const/4 v2, 0x0

    .line 792
    const/4 v13, 0x0

    .line 793
    :goto_1e
    if-ge v13, v11, :cond_42

    .line 794
    .line 795
    aget-object v8, v14, v13

    .line 796
    .line 797
    invoke-virtual {v9, v8, v0}, Lv/h;->F(Lv/e;I)I

    .line 798
    .line 799
    .line 800
    move-result v17

    .line 801
    iget-object v3, v8, Lv/e;->J:[Lv/d;

    .line 802
    .line 803
    const/4 v4, 0x0

    .line 804
    aget-object v3, v3, v4

    .line 805
    .line 806
    if-ne v3, v10, :cond_3c

    .line 807
    .line 808
    add-int/lit8 v1, v1, 0x1

    .line 809
    .line 810
    :cond_3c
    move/from16 v18, v1

    .line 811
    .line 812
    if-eq v2, v0, :cond_3d

    .line 813
    .line 814
    iget v1, v9, Lv/h;->F0:I

    .line 815
    .line 816
    add-int/2addr v1, v2

    .line 817
    add-int v1, v1, v17

    .line 818
    .line 819
    if-le v1, v0, :cond_3e

    .line 820
    .line 821
    :cond_3d
    iget-object v1, v5, Lv/g;->b:Lv/e;

    .line 822
    .line 823
    if-eqz v1, :cond_3e

    .line 824
    .line 825
    const/4 v7, 0x1

    .line 826
    goto :goto_1f

    .line 827
    :cond_3e
    const/4 v7, 0x0

    .line 828
    :goto_1f
    if-nez v7, :cond_3f

    .line 829
    .line 830
    if-lez v13, :cond_3f

    .line 831
    .line 832
    iget v1, v9, Lv/h;->K0:I

    .line 833
    .line 834
    if-lez v1, :cond_3f

    .line 835
    .line 836
    rem-int v1, v13, v1

    .line 837
    .line 838
    if-nez v1, :cond_3f

    .line 839
    .line 840
    const/4 v7, 0x1

    .line 841
    :cond_3f
    if-eqz v7, :cond_41

    .line 842
    .line 843
    new-instance v7, Lv/g;

    .line 844
    .line 845
    iget-object v6, v9, Lv/e;->A:Lv/c;

    .line 846
    .line 847
    iget-object v5, v9, Lv/e;->B:Lv/c;

    .line 848
    .line 849
    iget-object v4, v9, Lv/e;->y:Lv/c;

    .line 850
    .line 851
    iget-object v3, v9, Lv/e;->z:Lv/c;

    .line 852
    .line 853
    move-object v1, v7

    .line 854
    move-object/from16 v2, p1

    .line 855
    .line 856
    move-object/from16 v19, v3

    .line 857
    .line 858
    move/from16 v3, v35

    .line 859
    .line 860
    move-object/from16 v20, v5

    .line 861
    .line 862
    move-object/from16 v5, v19

    .line 863
    .line 864
    move-object/from16 p2, v15

    .line 865
    .line 866
    move-object v15, v7

    .line 867
    move-object/from16 v7, v20

    .line 868
    .line 869
    move-object/from16 v19, v10

    .line 870
    .line 871
    move-object v10, v8

    .line 872
    move v8, v0

    .line 873
    invoke-direct/range {v1 .. v8}, Lv/g;-><init>(Lv/h;ILv/c;Lv/c;Lv/c;Lv/c;I)V

    .line 874
    .line 875
    .line 876
    iput v13, v15, Lv/g;->n:I

    .line 877
    .line 878
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-object v5, v15

    .line 882
    :cond_40
    move/from16 v2, v17

    .line 883
    .line 884
    goto :goto_20

    .line 885
    :cond_41
    move-object/from16 v19, v10

    .line 886
    .line 887
    move-object/from16 p2, v15

    .line 888
    .line 889
    move-object v10, v8

    .line 890
    if-lez v13, :cond_40

    .line 891
    .line 892
    iget v1, v9, Lv/h;->F0:I

    .line 893
    .line 894
    add-int v1, v1, v17

    .line 895
    .line 896
    add-int/2addr v1, v2

    .line 897
    move v2, v1

    .line 898
    :goto_20
    invoke-virtual {v5, v10}, Lv/g;->a(Lv/e;)V

    .line 899
    .line 900
    .line 901
    add-int/lit8 v13, v13, 0x1

    .line 902
    .line 903
    move-object/from16 v15, p2

    .line 904
    .line 905
    move/from16 v1, v18

    .line 906
    .line 907
    move-object/from16 v10, v19

    .line 908
    .line 909
    goto :goto_1e

    .line 910
    :cond_42
    move-object/from16 p2, v15

    .line 911
    .line 912
    goto/16 :goto_24

    .line 913
    .line 914
    :cond_43
    move-object/from16 v19, v10

    .line 915
    .line 916
    move-object/from16 p2, v15

    .line 917
    .line 918
    move-object v5, v13

    .line 919
    const/4 v1, 0x0

    .line 920
    const/4 v2, 0x0

    .line 921
    const/4 v10, 0x0

    .line 922
    :goto_21
    if-ge v10, v11, :cond_4a

    .line 923
    .line 924
    aget-object v13, v14, v10

    .line 925
    .line 926
    invoke-virtual {v9, v13, v0}, Lv/h;->E(Lv/e;I)I

    .line 927
    .line 928
    .line 929
    move-result v15

    .line 930
    iget-object v3, v13, Lv/e;->J:[Lv/d;

    .line 931
    .line 932
    aget-object v3, v3, v16

    .line 933
    .line 934
    move-object/from16 v8, v19

    .line 935
    .line 936
    if-ne v3, v8, :cond_44

    .line 937
    .line 938
    add-int/lit8 v1, v1, 0x1

    .line 939
    .line 940
    :cond_44
    move/from16 v17, v1

    .line 941
    .line 942
    if-eq v2, v0, :cond_45

    .line 943
    .line 944
    iget v1, v9, Lv/h;->G0:I

    .line 945
    .line 946
    add-int/2addr v1, v2

    .line 947
    add-int/2addr v1, v15

    .line 948
    if-le v1, v0, :cond_46

    .line 949
    .line 950
    :cond_45
    iget-object v1, v5, Lv/g;->b:Lv/e;

    .line 951
    .line 952
    if-eqz v1, :cond_46

    .line 953
    .line 954
    const/4 v7, 0x1

    .line 955
    goto :goto_22

    .line 956
    :cond_46
    const/4 v7, 0x0

    .line 957
    :goto_22
    if-nez v7, :cond_47

    .line 958
    .line 959
    if-lez v10, :cond_47

    .line 960
    .line 961
    iget v1, v9, Lv/h;->K0:I

    .line 962
    .line 963
    if-lez v1, :cond_47

    .line 964
    .line 965
    rem-int v1, v10, v1

    .line 966
    .line 967
    if-nez v1, :cond_47

    .line 968
    .line 969
    const/4 v7, 0x1

    .line 970
    :cond_47
    if-eqz v7, :cond_49

    .line 971
    .line 972
    new-instance v7, Lv/g;

    .line 973
    .line 974
    iget-object v6, v9, Lv/e;->A:Lv/c;

    .line 975
    .line 976
    iget-object v5, v9, Lv/e;->B:Lv/c;

    .line 977
    .line 978
    iget-object v4, v9, Lv/e;->y:Lv/c;

    .line 979
    .line 980
    iget-object v3, v9, Lv/e;->z:Lv/c;

    .line 981
    .line 982
    move-object v1, v7

    .line 983
    move-object/from16 v2, p1

    .line 984
    .line 985
    move-object/from16 v18, v3

    .line 986
    .line 987
    move/from16 v3, v35

    .line 988
    .line 989
    move-object/from16 v19, v5

    .line 990
    .line 991
    move-object/from16 v5, v18

    .line 992
    .line 993
    move-object/from16 p3, v14

    .line 994
    .line 995
    move-object v14, v7

    .line 996
    move-object/from16 v7, v19

    .line 997
    .line 998
    move-object/from16 v18, v8

    .line 999
    .line 1000
    move v8, v0

    .line 1001
    invoke-direct/range {v1 .. v8}, Lv/g;-><init>(Lv/h;ILv/c;Lv/c;Lv/c;Lv/c;I)V

    .line 1002
    .line 1003
    .line 1004
    iput v10, v14, Lv/g;->n:I

    .line 1005
    .line 1006
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    move-object v5, v14

    .line 1010
    :cond_48
    move v2, v15

    .line 1011
    goto :goto_23

    .line 1012
    :cond_49
    move-object/from16 v18, v8

    .line 1013
    .line 1014
    move-object/from16 p3, v14

    .line 1015
    .line 1016
    if-lez v10, :cond_48

    .line 1017
    .line 1018
    iget v1, v9, Lv/h;->G0:I

    .line 1019
    .line 1020
    add-int/2addr v1, v15

    .line 1021
    add-int/2addr v1, v2

    .line 1022
    move v2, v1

    .line 1023
    :goto_23
    invoke-virtual {v5, v13}, Lv/g;->a(Lv/e;)V

    .line 1024
    .line 1025
    .line 1026
    add-int/lit8 v10, v10, 0x1

    .line 1027
    .line 1028
    move-object/from16 v14, p3

    .line 1029
    .line 1030
    move/from16 v1, v17

    .line 1031
    .line 1032
    move-object/from16 v19, v18

    .line 1033
    .line 1034
    goto :goto_21

    .line 1035
    :cond_4a
    :goto_24
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1036
    .line 1037
    .line 1038
    move-result v2

    .line 1039
    iget v3, v9, Lv/h;->m0:I

    .line 1040
    .line 1041
    iget v4, v9, Lv/h;->i0:I

    .line 1042
    .line 1043
    iget v5, v9, Lv/h;->n0:I

    .line 1044
    .line 1045
    iget v6, v9, Lv/h;->j0:I

    .line 1046
    .line 1047
    iget-object v7, v9, Lv/e;->J:[Lv/d;

    .line 1048
    .line 1049
    const/4 v8, 0x0

    .line 1050
    aget-object v10, v7, v8

    .line 1051
    .line 1052
    move-object/from16 v8, p2

    .line 1053
    .line 1054
    if-eq v10, v8, :cond_4c

    .line 1055
    .line 1056
    aget-object v7, v7, v16

    .line 1057
    .line 1058
    if-ne v7, v8, :cond_4b

    .line 1059
    .line 1060
    goto :goto_25

    .line 1061
    :cond_4b
    const/4 v7, 0x0

    .line 1062
    goto :goto_26

    .line 1063
    :cond_4c
    :goto_25
    const/4 v7, 0x1

    .line 1064
    :goto_26
    if-lez v1, :cond_4e

    .line 1065
    .line 1066
    if-eqz v7, :cond_4e

    .line 1067
    .line 1068
    const/4 v1, 0x0

    .line 1069
    :goto_27
    if-ge v1, v2, :cond_4e

    .line 1070
    .line 1071
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v7

    .line 1075
    check-cast v7, Lv/g;

    .line 1076
    .line 1077
    if-nez v35, :cond_4d

    .line 1078
    .line 1079
    invoke-virtual {v7}, Lv/g;->d()I

    .line 1080
    .line 1081
    .line 1082
    move-result v8

    .line 1083
    sub-int v8, v0, v8

    .line 1084
    .line 1085
    invoke-virtual {v7, v8}, Lv/g;->e(I)V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_28

    .line 1089
    :cond_4d
    invoke-virtual {v7}, Lv/g;->c()I

    .line 1090
    .line 1091
    .line 1092
    move-result v8

    .line 1093
    sub-int v8, v0, v8

    .line 1094
    .line 1095
    invoke-virtual {v7, v8}, Lv/g;->e(I)V

    .line 1096
    .line 1097
    .line 1098
    :goto_28
    add-int/lit8 v1, v1, 0x1

    .line 1099
    .line 1100
    goto :goto_27

    .line 1101
    :cond_4e
    iget-object v1, v9, Lv/e;->B:Lv/c;

    .line 1102
    .line 1103
    iget-object v7, v9, Lv/e;->A:Lv/c;

    .line 1104
    .line 1105
    iget-object v8, v9, Lv/e;->y:Lv/c;

    .line 1106
    .line 1107
    iget-object v10, v9, Lv/e;->z:Lv/c;

    .line 1108
    .line 1109
    move-object v15, v1

    .line 1110
    move-object/from16 v38, v7

    .line 1111
    .line 1112
    const/4 v11, 0x0

    .line 1113
    const/4 v13, 0x0

    .line 1114
    const/4 v14, 0x0

    .line 1115
    :goto_29
    if-ge v11, v2, :cond_54

    .line 1116
    .line 1117
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v17

    .line 1121
    move-object/from16 p2, v1

    .line 1122
    .line 1123
    move-object/from16 v1, v17

    .line 1124
    .line 1125
    check-cast v1, Lv/g;

    .line 1126
    .line 1127
    if-nez v35, :cond_51

    .line 1128
    .line 1129
    add-int/lit8 v6, v2, -0x1

    .line 1130
    .line 1131
    if-ge v11, v6, :cond_4f

    .line 1132
    .line 1133
    add-int/lit8 v6, v11, 0x1

    .line 1134
    .line 1135
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v6

    .line 1139
    check-cast v6, Lv/g;

    .line 1140
    .line 1141
    iget-object v6, v6, Lv/g;->b:Lv/e;

    .line 1142
    .line 1143
    iget-object v6, v6, Lv/e;->z:Lv/c;

    .line 1144
    .line 1145
    move-object v15, v6

    .line 1146
    move-object/from16 p3, v7

    .line 1147
    .line 1148
    const/4 v6, 0x0

    .line 1149
    goto :goto_2a

    .line 1150
    :cond_4f
    iget v6, v9, Lv/h;->j0:I

    .line 1151
    .line 1152
    move-object/from16 v15, p2

    .line 1153
    .line 1154
    move-object/from16 p3, v7

    .line 1155
    .line 1156
    :goto_2a
    iget-object v7, v1, Lv/g;->b:Lv/e;

    .line 1157
    .line 1158
    iget-object v7, v7, Lv/e;->B:Lv/c;

    .line 1159
    .line 1160
    move-object/from16 v17, v1

    .line 1161
    .line 1162
    move/from16 v18, v35

    .line 1163
    .line 1164
    move-object/from16 v19, v8

    .line 1165
    .line 1166
    move-object/from16 v20, v10

    .line 1167
    .line 1168
    move-object/from16 v21, v38

    .line 1169
    .line 1170
    move-object/from16 v22, v15

    .line 1171
    .line 1172
    move/from16 v23, v3

    .line 1173
    .line 1174
    move/from16 v24, v4

    .line 1175
    .line 1176
    move/from16 v25, v5

    .line 1177
    .line 1178
    move/from16 v26, v6

    .line 1179
    .line 1180
    move/from16 v27, v0

    .line 1181
    .line 1182
    invoke-virtual/range {v17 .. v27}, Lv/g;->f(ILv/c;Lv/c;Lv/c;Lv/c;IIIII)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v1}, Lv/g;->d()I

    .line 1186
    .line 1187
    .line 1188
    move-result v4

    .line 1189
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    .line 1190
    .line 1191
    .line 1192
    move-result v4

    .line 1193
    invoke-virtual {v1}, Lv/g;->c()I

    .line 1194
    .line 1195
    .line 1196
    move-result v1

    .line 1197
    add-int/2addr v1, v14

    .line 1198
    if-lez v11, :cond_50

    .line 1199
    .line 1200
    iget v10, v9, Lv/h;->G0:I

    .line 1201
    .line 1202
    add-int/2addr v1, v10

    .line 1203
    :cond_50
    move v14, v1

    .line 1204
    move v13, v4

    .line 1205
    move-object v10, v7

    .line 1206
    const/4 v4, 0x0

    .line 1207
    goto :goto_2c

    .line 1208
    :cond_51
    move-object/from16 p3, v7

    .line 1209
    .line 1210
    add-int/lit8 v5, v2, -0x1

    .line 1211
    .line 1212
    if-ge v11, v5, :cond_52

    .line 1213
    .line 1214
    add-int/lit8 v5, v11, 0x1

    .line 1215
    .line 1216
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v5

    .line 1220
    check-cast v5, Lv/g;

    .line 1221
    .line 1222
    iget-object v5, v5, Lv/g;->b:Lv/e;

    .line 1223
    .line 1224
    iget-object v5, v5, Lv/e;->y:Lv/c;

    .line 1225
    .line 1226
    move-object/from16 v38, v5

    .line 1227
    .line 1228
    const/4 v5, 0x0

    .line 1229
    goto :goto_2b

    .line 1230
    :cond_52
    iget v5, v9, Lv/h;->n0:I

    .line 1231
    .line 1232
    move-object/from16 v38, p3

    .line 1233
    .line 1234
    :goto_2b
    iget-object v7, v1, Lv/g;->b:Lv/e;

    .line 1235
    .line 1236
    iget-object v7, v7, Lv/e;->A:Lv/c;

    .line 1237
    .line 1238
    move-object/from16 v17, v1

    .line 1239
    .line 1240
    move/from16 v18, v35

    .line 1241
    .line 1242
    move-object/from16 v19, v8

    .line 1243
    .line 1244
    move-object/from16 v20, v10

    .line 1245
    .line 1246
    move-object/from16 v21, v38

    .line 1247
    .line 1248
    move-object/from16 v22, v15

    .line 1249
    .line 1250
    move/from16 v23, v3

    .line 1251
    .line 1252
    move/from16 v24, v4

    .line 1253
    .line 1254
    move/from16 v25, v5

    .line 1255
    .line 1256
    move/from16 v26, v6

    .line 1257
    .line 1258
    move/from16 v27, v0

    .line 1259
    .line 1260
    invoke-virtual/range {v17 .. v27}, Lv/g;->f(ILv/c;Lv/c;Lv/c;Lv/c;IIIII)V

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v1}, Lv/g;->d()I

    .line 1264
    .line 1265
    .line 1266
    move-result v3

    .line 1267
    add-int/2addr v3, v13

    .line 1268
    invoke-virtual {v1}, Lv/g;->c()I

    .line 1269
    .line 1270
    .line 1271
    move-result v1

    .line 1272
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 1273
    .line 1274
    .line 1275
    move-result v1

    .line 1276
    if-lez v11, :cond_53

    .line 1277
    .line 1278
    iget v8, v9, Lv/h;->F0:I

    .line 1279
    .line 1280
    add-int/2addr v3, v8

    .line 1281
    :cond_53
    move v14, v1

    .line 1282
    move v13, v3

    .line 1283
    move-object v8, v7

    .line 1284
    const/4 v3, 0x0

    .line 1285
    :goto_2c
    add-int/lit8 v11, v11, 0x1

    .line 1286
    .line 1287
    move-object/from16 v1, p2

    .line 1288
    .line 1289
    move-object/from16 v7, p3

    .line 1290
    .line 1291
    goto/16 :goto_29

    .line 1292
    .line 1293
    :cond_54
    const/4 v1, 0x0

    .line 1294
    aput v13, v29, v1

    .line 1295
    .line 1296
    aput v14, v29, v16

    .line 1297
    .line 1298
    :goto_2d
    const/4 v1, 0x0

    .line 1299
    goto/16 :goto_30

    .line 1300
    .line 1301
    :cond_55
    move-object/from16 v29, v2

    .line 1302
    .line 1303
    move/from16 v33, v5

    .line 1304
    .line 1305
    move/from16 v34, v6

    .line 1306
    .line 1307
    move/from16 v37, v10

    .line 1308
    .line 1309
    move/from16 v36, v11

    .line 1310
    .line 1311
    move/from16 v32, v12

    .line 1312
    .line 1313
    move-object/from16 p3, v14

    .line 1314
    .line 1315
    move/from16 v30, v20

    .line 1316
    .line 1317
    move/from16 v31, v21

    .line 1318
    .line 1319
    move/from16 v0, v28

    .line 1320
    .line 1321
    const/16 v16, 0x1

    .line 1322
    .line 1323
    move-object v12, v4

    .line 1324
    move v11, v7

    .line 1325
    move/from16 v28, v13

    .line 1326
    .line 1327
    iget v3, v9, Lv/h;->L0:I

    .line 1328
    .line 1329
    if-nez v11, :cond_56

    .line 1330
    .line 1331
    goto :goto_2d

    .line 1332
    :cond_56
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1333
    .line 1334
    .line 1335
    move-result v1

    .line 1336
    if-nez v1, :cond_57

    .line 1337
    .line 1338
    new-instance v10, Lv/g;

    .line 1339
    .line 1340
    iget-object v6, v9, Lv/e;->A:Lv/c;

    .line 1341
    .line 1342
    iget-object v7, v9, Lv/e;->B:Lv/c;

    .line 1343
    .line 1344
    iget-object v4, v9, Lv/e;->y:Lv/c;

    .line 1345
    .line 1346
    iget-object v5, v9, Lv/e;->z:Lv/c;

    .line 1347
    .line 1348
    move-object v1, v10

    .line 1349
    move-object/from16 v2, p1

    .line 1350
    .line 1351
    move v8, v0

    .line 1352
    invoke-direct/range {v1 .. v8}, Lv/g;-><init>(Lv/h;ILv/c;Lv/c;Lv/c;Lv/c;I)V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    .line 1357
    .line 1358
    goto :goto_2e

    .line 1359
    :cond_57
    const/4 v1, 0x0

    .line 1360
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v2

    .line 1364
    move-object v10, v2

    .line 1365
    check-cast v10, Lv/g;

    .line 1366
    .line 1367
    iput v1, v10, Lv/g;->c:I

    .line 1368
    .line 1369
    const/4 v2, 0x0

    .line 1370
    iput-object v2, v10, Lv/g;->b:Lv/e;

    .line 1371
    .line 1372
    iput v1, v10, Lv/g;->l:I

    .line 1373
    .line 1374
    iput v1, v10, Lv/g;->m:I

    .line 1375
    .line 1376
    iput v1, v10, Lv/g;->n:I

    .line 1377
    .line 1378
    iput v1, v10, Lv/g;->o:I

    .line 1379
    .line 1380
    iput v1, v10, Lv/g;->p:I

    .line 1381
    .line 1382
    iget v1, v9, Lv/h;->m0:I

    .line 1383
    .line 1384
    iget v2, v9, Lv/h;->i0:I

    .line 1385
    .line 1386
    iget v4, v9, Lv/h;->n0:I

    .line 1387
    .line 1388
    iget v5, v9, Lv/h;->j0:I

    .line 1389
    .line 1390
    iget-object v6, v9, Lv/e;->y:Lv/c;

    .line 1391
    .line 1392
    iget-object v7, v9, Lv/e;->z:Lv/c;

    .line 1393
    .line 1394
    iget-object v8, v9, Lv/e;->A:Lv/c;

    .line 1395
    .line 1396
    iget-object v12, v9, Lv/e;->B:Lv/c;

    .line 1397
    .line 1398
    move-object/from16 v17, v10

    .line 1399
    .line 1400
    move/from16 v18, v3

    .line 1401
    .line 1402
    move-object/from16 v19, v6

    .line 1403
    .line 1404
    move-object/from16 v20, v7

    .line 1405
    .line 1406
    move-object/from16 v21, v8

    .line 1407
    .line 1408
    move-object/from16 v22, v12

    .line 1409
    .line 1410
    move/from16 v23, v1

    .line 1411
    .line 1412
    move/from16 v24, v2

    .line 1413
    .line 1414
    move/from16 v25, v4

    .line 1415
    .line 1416
    move/from16 v26, v5

    .line 1417
    .line 1418
    move/from16 v27, v0

    .line 1419
    .line 1420
    invoke-virtual/range {v17 .. v27}, Lv/g;->f(ILv/c;Lv/c;Lv/c;Lv/c;IIIII)V

    .line 1421
    .line 1422
    .line 1423
    :goto_2e
    const/4 v0, 0x0

    .line 1424
    :goto_2f
    if-ge v0, v11, :cond_58

    .line 1425
    .line 1426
    aget-object v1, p3, v0

    .line 1427
    .line 1428
    invoke-virtual {v10, v1}, Lv/g;->a(Lv/e;)V

    .line 1429
    .line 1430
    .line 1431
    add-int/lit8 v0, v0, 0x1

    .line 1432
    .line 1433
    goto :goto_2f

    .line 1434
    :cond_58
    invoke-virtual {v10}, Lv/g;->d()I

    .line 1435
    .line 1436
    .line 1437
    move-result v0

    .line 1438
    const/4 v1, 0x0

    .line 1439
    aput v0, v29, v1

    .line 1440
    .line 1441
    invoke-virtual {v10}, Lv/g;->c()I

    .line 1442
    .line 1443
    .line 1444
    move-result v0

    .line 1445
    aput v0, v29, v16

    .line 1446
    .line 1447
    :goto_30
    aget v0, v29, v1

    .line 1448
    .line 1449
    add-int v0, v0, v34

    .line 1450
    .line 1451
    add-int v0, v0, v33

    .line 1452
    .line 1453
    aget v1, v29, v16

    .line 1454
    .line 1455
    add-int v1, v1, v31

    .line 1456
    .line 1457
    add-int v1, v1, v30

    .line 1458
    .line 1459
    const/high16 v2, -0x80000000

    .line 1460
    .line 1461
    const/high16 v3, 0x40000000    # 2.0f

    .line 1462
    .line 1463
    move/from16 v4, v37

    .line 1464
    .line 1465
    if-ne v4, v3, :cond_59

    .line 1466
    .line 1467
    move/from16 v0, v32

    .line 1468
    .line 1469
    move/from16 v11, v36

    .line 1470
    .line 1471
    goto :goto_32

    .line 1472
    :cond_59
    if-ne v4, v2, :cond_5a

    .line 1473
    .line 1474
    move/from16 v5, v36

    .line 1475
    .line 1476
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 1477
    .line 1478
    .line 1479
    move-result v11

    .line 1480
    :goto_31
    move/from16 v0, v32

    .line 1481
    .line 1482
    goto :goto_32

    .line 1483
    :cond_5a
    if-nez v4, :cond_5b

    .line 1484
    .line 1485
    move v11, v0

    .line 1486
    goto :goto_31

    .line 1487
    :cond_5b
    move/from16 v0, v32

    .line 1488
    .line 1489
    const/4 v11, 0x0

    .line 1490
    :goto_32
    if-ne v0, v3, :cond_5c

    .line 1491
    .line 1492
    move/from16 v13, v28

    .line 1493
    .line 1494
    goto :goto_33

    .line 1495
    :cond_5c
    if-ne v0, v2, :cond_5d

    .line 1496
    .line 1497
    move/from16 v2, v28

    .line 1498
    .line 1499
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 1500
    .line 1501
    .line 1502
    move-result v13

    .line 1503
    goto :goto_33

    .line 1504
    :cond_5d
    if-nez v0, :cond_5e

    .line 1505
    .line 1506
    move v13, v1

    .line 1507
    goto :goto_33

    .line 1508
    :cond_5e
    const/4 v13, 0x0

    .line 1509
    :goto_33
    iput v11, v9, Lv/h;->p0:I

    .line 1510
    .line 1511
    iput v13, v9, Lv/h;->q0:I

    .line 1512
    .line 1513
    invoke-virtual {v9, v11}, Lv/e;->z(I)V

    .line 1514
    .line 1515
    .line 1516
    invoke-virtual {v9, v13}, Lv/e;->w(I)V

    .line 1517
    .line 1518
    .line 1519
    iget v0, v9, Lv/j;->h0:I

    .line 1520
    .line 1521
    if-lez v0, :cond_5f

    .line 1522
    .line 1523
    const/4 v14, 0x1

    .line 1524
    goto :goto_34

    .line 1525
    :cond_5f
    const/4 v14, 0x0

    .line 1526
    :goto_34
    iput-boolean v14, v9, Lv/h;->o0:Z

    .line 1527
    .line 1528
    :goto_35
    iget v0, v9, Lv/h;->p0:I

    .line 1529
    .line 1530
    iget v1, v9, Lv/h;->q0:I

    .line 1531
    .line 1532
    move-object/from16 v2, p0

    .line 1533
    .line 1534
    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1535
    .line 1536
    .line 1537
    goto :goto_36

    .line 1538
    :cond_60
    move-object v2, v0

    .line 1539
    const/4 v0, 0x0

    .line 1540
    invoke-virtual {v2, v0, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1541
    .line 1542
    .line 1543
    :goto_36
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->m(Lv/h;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->B0:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->v0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->C0:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->w0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->H0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->z0:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->F0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->t0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->K0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->L0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->i0:I

    .line 4
    .line 5
    iput p1, v0, Lv/h;->j0:I

    .line 6
    .line 7
    iput p1, v0, Lv/h;->k0:I

    .line 8
    .line 9
    iput p1, v0, Lv/h;->l0:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->j0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->m0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->n0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->i0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->I0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->A0:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->G0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->u0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lv/h;

    .line 2
    .line 3
    iput p1, v0, Lv/h;->J0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
