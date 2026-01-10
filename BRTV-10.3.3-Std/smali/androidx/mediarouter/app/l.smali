.class public final Landroidx/mediarouter/app/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroidx/mediarouter/app/u;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/u;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/l;->b:Landroidx/mediarouter/app/u;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/mediarouter/app/l;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/l;->b:Landroidx/mediarouter/app/u;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/mediarouter/app/u;->s:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v2, v1, Landroidx/mediarouter/app/u;->f0:Z

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iput-boolean v3, v1, Landroidx/mediarouter/app/u;->g0:Z

    .line 20
    .line 21
    goto/16 :goto_c

    .line 22
    .line 23
    :cond_0
    iget-object v2, v1, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    .line 31
    iget-object v4, v1, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    const/4 v5, -0x1

    .line 34
    invoke-static {v5, v4}, Landroidx/mediarouter/app/u;->q(ILandroid/view/View;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/mediarouter/app/u;->k()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {v1, v4}, Landroidx/mediarouter/app/u;->w(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    .line 62
    const/high16 v6, 0x40000000    # 2.0f

    .line 63
    .line 64
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/4 v6, 0x0

    .line 69
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 70
    .line 71
    .line 72
    iget-object v5, v1, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    invoke-static {v2, v5}, Landroidx/mediarouter/app/u;->q(ILandroid/view/View;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v1, Landroidx/mediarouter/app/u;->t:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 84
    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    iget-object v2, v1, Landroidx/mediarouter/app/u;->t:Landroid/widget/ImageView;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    invoke-virtual {v1, v5, v7}, Landroidx/mediarouter/app/u;->n(II)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    iget-object v7, v1, Landroidx/mediarouter/app/u;->t:Landroid/widget/ImageView;

    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-lt v8, v2, :cond_1

    .line 124
    .line 125
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 129
    .line 130
    :goto_0
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    const/4 v5, 0x0

    .line 135
    :goto_1
    invoke-virtual {v1}, Landroidx/mediarouter/app/u;->k()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-virtual {v1, v2}, Landroidx/mediarouter/app/u;->o(Z)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    iget-object v7, v1, Landroidx/mediarouter/app/u;->F:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    invoke-virtual {v1}, Landroidx/mediarouter/app/u;->p()Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    iget-object v9, v1, Landroidx/mediarouter/app/u;->h:Lq1/s0;

    .line 154
    .line 155
    if-eqz v8, :cond_3

    .line 156
    .line 157
    iget v8, v1, Landroidx/mediarouter/app/u;->N:I

    .line 158
    .line 159
    iget-object v10, v9, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    mul-int v10, v10, v8

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_3
    const/4 v10, 0x0

    .line 173
    :goto_2
    if-lez v7, :cond_4

    .line 174
    .line 175
    iget v7, v1, Landroidx/mediarouter/app/u;->P:I

    .line 176
    .line 177
    add-int/2addr v10, v7

    .line 178
    :cond_4
    iget v7, v1, Landroidx/mediarouter/app/u;->O:I

    .line 179
    .line 180
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    iget-boolean v8, v1, Landroidx/mediarouter/app/u;->e0:Z

    .line 185
    .line 186
    if-eqz v8, :cond_5

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_5
    const/4 v7, 0x0

    .line 190
    :goto_3
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    add-int/2addr v8, v2

    .line 195
    new-instance v10, Landroid/graphics/Rect;

    .line 196
    .line 197
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 201
    .line 202
    .line 203
    iget-object v4, v1, Landroidx/mediarouter/app/u;->r:Landroid/widget/LinearLayout;

    .line 204
    .line 205
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    iget-object v11, v1, Landroidx/mediarouter/app/u;->s:Landroid/widget/FrameLayout;

    .line 210
    .line 211
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    sub-int/2addr v4, v11

    .line 216
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    sub-int/2addr v11, v4

    .line 221
    const/16 v4, 0x8

    .line 222
    .line 223
    if-lez v5, :cond_6

    .line 224
    .line 225
    if-gt v8, v11, :cond_6

    .line 226
    .line 227
    iget-object v2, v1, Landroidx/mediarouter/app/u;->t:Landroid/widget/ImageView;

    .line 228
    .line 229
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    iget-object v2, v1, Landroidx/mediarouter/app/u;->t:Landroid/widget/ImageView;

    .line 233
    .line 234
    invoke-static {v5, v2}, Landroidx/mediarouter/app/u;->q(ILandroid/view/View;)V

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_6
    iget-object v5, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 239
    .line 240
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    .line 246
    iget-object v8, v1, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 247
    .line 248
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    add-int/2addr v8, v5

    .line 253
    iget-object v5, v1, Landroidx/mediarouter/app/u;->s:Landroid/widget/FrameLayout;

    .line 254
    .line 255
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-lt v8, v5, :cond_7

    .line 260
    .line 261
    iget-object v5, v1, Landroidx/mediarouter/app/u;->t:Landroid/widget/ImageView;

    .line 262
    .line 263
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    :cond_7
    add-int v8, v7, v2

    .line 267
    .line 268
    const/4 v5, 0x0

    .line 269
    :goto_4
    invoke-virtual {v1}, Landroidx/mediarouter/app/u;->k()Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_8

    .line 274
    .line 275
    if-gt v8, v11, :cond_8

    .line 276
    .line 277
    iget-object v2, v1, Landroidx/mediarouter/app/u;->A:Landroid/widget/RelativeLayout;

    .line 278
    .line 279
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_8
    iget-object v2, v1, Landroidx/mediarouter/app/u;->A:Landroid/widget/RelativeLayout;

    .line 284
    .line 285
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    :goto_5
    iget-object v2, v1, Landroidx/mediarouter/app/u;->A:Landroid/widget/RelativeLayout;

    .line 289
    .line 290
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-nez v2, :cond_9

    .line 295
    .line 296
    const/4 v2, 0x1

    .line 297
    goto :goto_6

    .line 298
    :cond_9
    const/4 v2, 0x0

    .line 299
    :goto_6
    invoke-virtual {v1, v2}, Landroidx/mediarouter/app/u;->w(Z)V

    .line 300
    .line 301
    .line 302
    iget-object v2, v1, Landroidx/mediarouter/app/u;->A:Landroid/widget/RelativeLayout;

    .line 303
    .line 304
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-nez v2, :cond_a

    .line 309
    .line 310
    const/4 v2, 0x1

    .line 311
    goto :goto_7

    .line 312
    :cond_a
    const/4 v2, 0x0

    .line 313
    :goto_7
    invoke-virtual {v1, v2}, Landroidx/mediarouter/app/u;->o(Z)I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    add-int/2addr v4, v2

    .line 322
    if-le v4, v11, :cond_b

    .line 323
    .line 324
    sub-int/2addr v4, v11

    .line 325
    sub-int/2addr v7, v4

    .line 326
    goto :goto_8

    .line 327
    :cond_b
    move v11, v4

    .line 328
    :goto_8
    iget-object v4, v1, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 329
    .line 330
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 331
    .line 332
    .line 333
    iget-object v4, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 334
    .line 335
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 336
    .line 337
    .line 338
    iget-object v4, v1, Landroidx/mediarouter/app/u;->s:Landroid/widget/FrameLayout;

    .line 339
    .line 340
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 341
    .line 342
    .line 343
    iget-boolean v4, v0, Landroidx/mediarouter/app/l;->a:Z

    .line 344
    .line 345
    if-eqz v4, :cond_c

    .line 346
    .line 347
    iget-object v5, v1, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 348
    .line 349
    invoke-virtual {v1, v2, v5}, Landroidx/mediarouter/app/u;->j(ILandroid/view/View;)V

    .line 350
    .line 351
    .line 352
    iget-object v2, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 353
    .line 354
    invoke-virtual {v1, v7, v2}, Landroidx/mediarouter/app/u;->j(ILandroid/view/View;)V

    .line 355
    .line 356
    .line 357
    iget-object v2, v1, Landroidx/mediarouter/app/u;->s:Landroid/widget/FrameLayout;

    .line 358
    .line 359
    invoke-virtual {v1, v11, v2}, Landroidx/mediarouter/app/u;->j(ILandroid/view/View;)V

    .line 360
    .line 361
    .line 362
    goto :goto_9

    .line 363
    :cond_c
    iget-object v5, v1, Landroidx/mediarouter/app/u;->z:Landroid/widget/LinearLayout;

    .line 364
    .line 365
    invoke-static {v2, v5}, Landroidx/mediarouter/app/u;->q(ILandroid/view/View;)V

    .line 366
    .line 367
    .line 368
    iget-object v2, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 369
    .line 370
    invoke-static {v7, v2}, Landroidx/mediarouter/app/u;->q(ILandroid/view/View;)V

    .line 371
    .line 372
    .line 373
    iget-object v2, v1, Landroidx/mediarouter/app/u;->s:Landroid/widget/FrameLayout;

    .line 374
    .line 375
    invoke-static {v11, v2}, Landroidx/mediarouter/app/u;->q(ILandroid/view/View;)V

    .line 376
    .line 377
    .line 378
    :goto_9
    iget-object v2, v1, Landroidx/mediarouter/app/u;->q:Landroid/widget/FrameLayout;

    .line 379
    .line 380
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    invoke-static {v5, v2}, Landroidx/mediarouter/app/u;->q(ILandroid/view/View;)V

    .line 385
    .line 386
    .line 387
    iget-object v2, v9, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    if-eqz v5, :cond_d

    .line 398
    .line 399
    iget-object v2, v1, Landroidx/mediarouter/app/u;->F:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 402
    .line 403
    .line 404
    iget-object v1, v1, Landroidx/mediarouter/app/u;->E:Landroidx/mediarouter/app/t;

    .line 405
    .line 406
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_c

    .line 410
    .line 411
    :cond_d
    iget-object v5, v1, Landroidx/mediarouter/app/u;->F:Ljava/util/ArrayList;

    .line 412
    .line 413
    new-instance v7, Ljava/util/HashSet;

    .line 414
    .line 415
    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 416
    .line 417
    .line 418
    new-instance v5, Ljava/util/HashSet;

    .line 419
    .line 420
    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v5

    .line 427
    if-eqz v5, :cond_e

    .line 428
    .line 429
    iget-object v1, v1, Landroidx/mediarouter/app/u;->E:Landroidx/mediarouter/app/t;

    .line 430
    .line 431
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_c

    .line 435
    .line 436
    :cond_e
    if-eqz v4, :cond_f

    .line 437
    .line 438
    iget-object v7, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 439
    .line 440
    iget-object v8, v1, Landroidx/mediarouter/app/u;->E:Landroidx/mediarouter/app/t;

    .line 441
    .line 442
    new-instance v9, Ljava/util/HashMap;

    .line 443
    .line 444
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 448
    .line 449
    .line 450
    move-result v10

    .line 451
    const/4 v11, 0x0

    .line 452
    :goto_a
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 453
    .line 454
    .line 455
    move-result v12

    .line 456
    if-ge v11, v12, :cond_10

    .line 457
    .line 458
    add-int v12, v10, v11

    .line 459
    .line 460
    invoke-virtual {v8, v12}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v12

    .line 464
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 465
    .line 466
    .line 467
    move-result-object v13

    .line 468
    new-instance v14, Landroid/graphics/Rect;

    .line 469
    .line 470
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    .line 471
    .line 472
    .line 473
    move-result v15

    .line 474
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    .line 483
    .line 484
    .line 485
    move-result v13

    .line 486
    invoke-direct {v14, v15, v5, v3, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v9, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    add-int/lit8 v11, v11, 0x1

    .line 493
    .line 494
    const/4 v3, 0x1

    .line 495
    goto :goto_a

    .line 496
    :cond_f
    const/4 v9, 0x0

    .line 497
    :cond_10
    if-eqz v4, :cond_11

    .line 498
    .line 499
    iget-object v3, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 500
    .line 501
    iget-object v5, v1, Landroidx/mediarouter/app/u;->E:Landroidx/mediarouter/app/t;

    .line 502
    .line 503
    new-instance v7, Ljava/util/HashMap;

    .line 504
    .line 505
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 509
    .line 510
    .line 511
    move-result v8

    .line 512
    const/4 v10, 0x0

    .line 513
    :goto_b
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 514
    .line 515
    .line 516
    move-result v11

    .line 517
    if-ge v10, v11, :cond_12

    .line 518
    .line 519
    add-int v11, v8, v10

    .line 520
    .line 521
    invoke-virtual {v5, v11}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v11

    .line 525
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 526
    .line 527
    .line 528
    move-result-object v12

    .line 529
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    .line 530
    .line 531
    .line 532
    move-result v13

    .line 533
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 534
    .line 535
    .line 536
    move-result v14

    .line 537
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 538
    .line 539
    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 540
    .line 541
    .line 542
    move-result-object v13

    .line 543
    new-instance v14, Landroid/graphics/Canvas;

    .line 544
    .line 545
    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v12, v14}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 549
    .line 550
    .line 551
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 552
    .line 553
    iget-object v14, v1, Landroidx/mediarouter/app/u;->i:Landroid/content/Context;

    .line 554
    .line 555
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 556
    .line 557
    .line 558
    move-result-object v14

    .line 559
    invoke-direct {v12, v14, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    add-int/lit8 v10, v10, 0x1

    .line 566
    .line 567
    goto :goto_b

    .line 568
    :cond_11
    const/4 v7, 0x0

    .line 569
    :cond_12
    iget-object v3, v1, Landroidx/mediarouter/app/u;->F:Ljava/util/ArrayList;

    .line 570
    .line 571
    new-instance v5, Ljava/util/HashSet;

    .line 572
    .line 573
    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v5, v3}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 577
    .line 578
    .line 579
    iput-object v5, v1, Landroidx/mediarouter/app/u;->G:Ljava/util/HashSet;

    .line 580
    .line 581
    iget-object v3, v1, Landroidx/mediarouter/app/u;->F:Ljava/util/ArrayList;

    .line 582
    .line 583
    new-instance v5, Ljava/util/HashSet;

    .line 584
    .line 585
    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v5, v2}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 589
    .line 590
    .line 591
    iput-object v5, v1, Landroidx/mediarouter/app/u;->H:Ljava/util/HashSet;

    .line 592
    .line 593
    iget-object v2, v1, Landroidx/mediarouter/app/u;->F:Ljava/util/ArrayList;

    .line 594
    .line 595
    iget-object v3, v1, Landroidx/mediarouter/app/u;->G:Ljava/util/HashSet;

    .line 596
    .line 597
    invoke-virtual {v2, v6, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 598
    .line 599
    .line 600
    iget-object v2, v1, Landroidx/mediarouter/app/u;->F:Ljava/util/ArrayList;

    .line 601
    .line 602
    iget-object v3, v1, Landroidx/mediarouter/app/u;->H:Ljava/util/HashSet;

    .line 603
    .line 604
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 605
    .line 606
    .line 607
    iget-object v2, v1, Landroidx/mediarouter/app/u;->E:Landroidx/mediarouter/app/t;

    .line 608
    .line 609
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 610
    .line 611
    .line 612
    if-eqz v4, :cond_13

    .line 613
    .line 614
    iget-boolean v2, v1, Landroidx/mediarouter/app/u;->e0:Z

    .line 615
    .line 616
    if-eqz v2, :cond_13

    .line 617
    .line 618
    iget-object v2, v1, Landroidx/mediarouter/app/u;->G:Ljava/util/HashSet;

    .line 619
    .line 620
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    iget-object v3, v1, Landroidx/mediarouter/app/u;->H:Ljava/util/HashSet;

    .line 625
    .line 626
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    add-int/2addr v3, v2

    .line 631
    if-lez v3, :cond_13

    .line 632
    .line 633
    iget-object v2, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 634
    .line 635
    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 636
    .line 637
    .line 638
    iget-object v2, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 639
    .line 640
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 641
    .line 642
    .line 643
    const/4 v2, 0x1

    .line 644
    iput-boolean v2, v1, Landroidx/mediarouter/app/u;->f0:Z

    .line 645
    .line 646
    iget-object v2, v1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 647
    .line 648
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    new-instance v3, Landroidx/mediarouter/app/n;

    .line 653
    .line 654
    invoke-direct {v3, v1, v9, v7}, Landroidx/mediarouter/app/n;-><init>(Landroidx/mediarouter/app/u;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 658
    .line 659
    .line 660
    goto :goto_c

    .line 661
    :cond_13
    const/4 v2, 0x0

    .line 662
    iput-object v2, v1, Landroidx/mediarouter/app/u;->G:Ljava/util/HashSet;

    .line 663
    .line 664
    iput-object v2, v1, Landroidx/mediarouter/app/u;->H:Ljava/util/HashSet;

    .line 665
    .line 666
    :goto_c
    return-void
.end method
