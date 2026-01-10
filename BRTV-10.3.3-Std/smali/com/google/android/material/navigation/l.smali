.class public abstract Lcom/google/android/material/navigation/l;
.super Landroid/widget/FrameLayout;
.source "MyApplication"


# instance fields
.field public final a:Lcom/google/android/material/navigation/e;

.field public final b:Lcom/google/android/material/navigation/f;

.field public final c:Lcom/google/android/material/navigation/h;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Lj/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    .line 1
    invoke-static {p1, p2, p3, p4}, Ly6/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/google/android/material/navigation/h;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p1, Lcom/google/android/material/navigation/h;->b:Z

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/material/navigation/l;->c:Lcom/google/android/material/navigation/h;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    sget-object v3, Lx5/a;->L:[I

    .line 23
    .line 24
    const/16 v8, 0xa

    .line 25
    .line 26
    const/16 v9, 0x9

    .line 27
    .line 28
    filled-new-array {v8, v9}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    move-object v1, v7

    .line 33
    move-object v2, p2

    .line 34
    move v4, p3

    .line 35
    move v5, p4

    .line 36
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/a0;->k(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)La1/b;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance p3, Lcom/google/android/material/navigation/e;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/navigation/l;->getMaxItemCount()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-direct {p3, v7, p4, v1}, Lcom/google/android/material/navigation/e;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 51
    .line 52
    .line 53
    iput-object p3, p0, Lcom/google/android/material/navigation/l;->a:Lcom/google/android/material/navigation/e;

    .line 54
    .line 55
    invoke-virtual {p0, v7}, Lcom/google/android/material/navigation/l;->a(Landroid/content/Context;)Lcom/google/android/material/navigation/f;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    iput-object p4, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 60
    .line 61
    iput-object p4, p1, Lcom/google/android/material/navigation/h;->a:Lcom/google/android/material/navigation/f;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    iput v1, p1, Lcom/google/android/material/navigation/h;->c:I

    .line 65
    .line 66
    invoke-virtual {p4, p1}, Lcom/google/android/material/navigation/f;->setPresenter(Lcom/google/android/material/navigation/h;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p3, Lk/l;->a:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {p3, p1, v2}, Lk/l;->b(Lk/y;Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    iget-object v2, p1, Lcom/google/android/material/navigation/h;->a:Lcom/google/android/material/navigation/f;

    .line 78
    .line 79
    iput-object p3, v2, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 80
    .line 81
    iget-object v2, p2, La1/b;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Landroid/content/res/TypedArray;

    .line 84
    .line 85
    const/4 v3, 0x5

    .line 86
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_0

    .line 91
    .line 92
    invoke-virtual {p2, v3}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p4, v3}, Lcom/google/android/material/navigation/f;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p4}, Lcom/google/android/material/navigation/f;->b()Landroid/content/res/ColorStateList;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {p4, v3}, Lcom/google/android/material/navigation/f;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const v4, 0x7f070339

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    const/4 v4, 0x4

    .line 119
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/l;->setItemIconSize(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_1

    .line 131
    .line 132
    invoke-virtual {v2, v8, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/l;->setItemTextAppearanceInactive(I)V

    .line 137
    .line 138
    .line 139
    :cond_1
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_2

    .line 144
    .line 145
    invoke-virtual {v2, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/l;->setItemTextAppearanceActive(I)V

    .line 150
    .line 151
    .line 152
    :cond_2
    const/16 v3, 0xb

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_3

    .line 159
    .line 160
    invoke-virtual {p2, v3}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/l;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-eqz v3, :cond_4

    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    .line 178
    .line 179
    if-eqz v3, :cond_6

    .line 180
    .line 181
    :cond_4
    new-instance v3, Lu6/h;

    .line 182
    .line 183
    invoke-direct {v3}, Lu6/h;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    instance-of v6, v5, Landroid/graphics/drawable/ColorDrawable;

    .line 191
    .line 192
    if-eqz v6, :cond_5

    .line 193
    .line 194
    check-cast v5, Landroid/graphics/drawable/ColorDrawable;

    .line 195
    .line 196
    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v3, v5}, Lu6/h;->n(Landroid/content/res/ColorStateList;)V

    .line 205
    .line 206
    .line 207
    :cond_5
    invoke-virtual {v3, v7}, Lu6/h;->k(Landroid/content/Context;)V

    .line 208
    .line 209
    .line 210
    sget-object v5, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 211
    .line 212
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    const/4 v3, 0x7

    .line 216
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-eqz v5, :cond_7

    .line 221
    .line 222
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/l;->setItemPaddingTop(I)V

    .line 227
    .line 228
    .line 229
    :cond_7
    const/4 v3, 0x6

    .line 230
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_8

    .line 235
    .line 236
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/l;->setItemPaddingBottom(I)V

    .line 241
    .line 242
    .line 243
    :cond_8
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-eqz v3, :cond_9

    .line 248
    .line 249
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    int-to-float v3, v3

    .line 254
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/l;->setElevation(F)V

    .line 255
    .line 256
    .line 257
    :cond_9
    invoke-static {v7, p2, v0}, Lcom/bumptech/glide/d;->j(Landroid/content/Context;La1/b;I)Landroid/content/res/ColorStateList;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-static {v5, v3}, Lg0/a;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 270
    .line 271
    .line 272
    const/16 v3, 0xc

    .line 273
    .line 274
    const/4 v5, -0x1

    .line 275
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/l;->setLabelVisibilityMode(I)V

    .line 280
    .line 281
    .line 282
    const/4 v3, 0x3

    .line 283
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_a

    .line 288
    .line 289
    invoke-virtual {p4, v5}, Lcom/google/android/material/navigation/f;->setItemBackgroundRes(I)V

    .line 290
    .line 291
    .line 292
    goto :goto_1

    .line 293
    :cond_a
    const/16 v5, 0x8

    .line 294
    .line 295
    invoke-static {v7, p2, v5}, Lcom/bumptech/glide/d;->j(Landroid/content/Context;La1/b;I)Landroid/content/res/ColorStateList;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {p0, v5}, Lcom/google/android/material/navigation/l;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 300
    .line 301
    .line 302
    :goto_1
    const/4 v5, 0x2

    .line 303
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    if-eqz v6, :cond_b

    .line 308
    .line 309
    invoke-virtual {p0, v1}, Lcom/google/android/material/navigation/l;->setItemActiveIndicatorEnabled(Z)V

    .line 310
    .line 311
    .line 312
    sget-object v8, Lx5/a;->K:[I

    .line 313
    .line 314
    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    invoke-virtual {p0, v8}, Lcom/google/android/material/navigation/l;->setItemActiveIndicatorWidth(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 326
    .line 327
    .line 328
    move-result v8

    .line 329
    invoke-virtual {p0, v8}, Lcom/google/android/material/navigation/l;->setItemActiveIndicatorHeight(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/l;->setItemActiveIndicatorMarginHorizontal(I)V

    .line 337
    .line 338
    .line 339
    invoke-static {v7, v6, v5}, Lcom/bumptech/glide/d;->k(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/l;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v6, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    new-instance v4, Lu6/a;

    .line 351
    .line 352
    int-to-float v5, v0

    .line 353
    invoke-direct {v4, v5}, Lu6/a;-><init>(F)V

    .line 354
    .line 355
    .line 356
    invoke-static {v7, v3, v0, v4}, Lu6/m;->a(Landroid/content/Context;IILu6/c;)Lu6/l;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v3}, Lu6/l;->a()Lu6/m;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/l;->setItemActiveIndicatorShapeAppearance(Lu6/m;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 368
    .line 369
    .line 370
    :cond_b
    const/16 v3, 0xd

    .line 371
    .line 372
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    if-eqz v4, :cond_c

    .line 377
    .line 378
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    iput-boolean v1, p1, Lcom/google/android/material/navigation/h;->b:Z

    .line 383
    .line 384
    invoke-direct {p0}, Lcom/google/android/material/navigation/l;->getMenuInflater()Landroid/view/MenuInflater;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v3, v2, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 389
    .line 390
    .line 391
    iput-boolean v0, p1, Lcom/google/android/material/navigation/h;->b:Z

    .line 392
    .line 393
    invoke-virtual {p1, v1}, Lcom/google/android/material/navigation/h;->j(Z)V

    .line 394
    .line 395
    .line 396
    :cond_c
    invoke-virtual {p2}, La1/b;->F()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 400
    .line 401
    .line 402
    new-instance p1, La0/b;

    .line 403
    .line 404
    const/16 p2, 0x13

    .line 405
    .line 406
    invoke-direct {p1, p2, p0}, La0/b;-><init>(ILjava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    iput-object p1, p3, Lk/l;->e:Lk/j;

    .line 410
    .line 411
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->e:Lj/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lj/i;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lj/i;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/material/navigation/l;->e:Lj/i;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->e:Lj/i;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Lcom/google/android/material/navigation/f;
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemActiveIndicatorHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemActiveIndicatorMarginHorizontal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lu6/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemActiveIndicatorShapeAppearance()Lu6/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemActiveIndicatorWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemBackgroundRes()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemIconSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getIconTintList()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemPaddingBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemPaddingBottom()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemPaddingTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemPaddingTop()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->d:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemTextAppearanceActive()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemTextAppearanceInactive()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getItemTextColor()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getLabelVisibilityMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->a:Lcom/google/android/material/navigation/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMenuView()Lk/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPresenter()Lcom/google/android/material/navigation/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->c:Lcom/google/android/material/navigation/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getSelectedItemId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lo9/d;->E(Landroid/view/ViewGroup;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->a:Lcom/google/android/material/navigation/e;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->c:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lk/l;->t(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->c:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/material/navigation/l;->a:Lcom/google/android/material/navigation/e;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Lk/l;->v(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lo9/d;->B(Landroid/view/ViewGroup;F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemActiveIndicatorEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemActiveIndicatorHeight(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemActiveIndicatorMarginHorizontal(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Lu6/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemActiveIndicatorShapeAppearance(Lu6/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemActiveIndicatorWidth(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/material/navigation/l;->d:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemBackgroundRes(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/material/navigation/l;->d:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemIconSize(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/l;->setItemIconSize(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemPaddingBottom(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemPaddingTop(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->d:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 5
    .line 6
    if-ne v0, p1, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/google/android/material/navigation/f;->getItemBackground()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/google/android/material/navigation/f;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/navigation/l;->d:Landroid/content/res/ColorStateList;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/google/android/material/navigation/f;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-static {p1}, Ls6/c;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 33
    .line 34
    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Lcom/google/android/material/navigation/f;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemTextAppearanceActive(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemTextAppearanceInactive(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->b:Lcom/google/android/material/navigation/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/navigation/f;->getLabelVisibilityMode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/f;->setLabelVisibilityMode(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/material/navigation/l;->c:Lcom/google/android/material/navigation/h;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/h;->j(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setOnItemReselectedListener(Lcom/google/android/material/navigation/i;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/google/android/material/navigation/j;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/l;->a:Lcom/google/android/material/navigation/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk/l;->findItem(I)Landroid/view/MenuItem;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/material/navigation/l;->c:Lcom/google/android/material/navigation/h;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lk/l;->q(Landroid/view/MenuItem;Lk/y;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
