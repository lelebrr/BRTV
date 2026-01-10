.class public abstract Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MyApplication"


# static fields
.field public static final synthetic n0:I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:Landroid/widget/TextView;

.field public S:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

.field public T:Landroid/widget/ImageView;

.field public U:Landroid/widget/ImageView;

.field public V:[I

.field public final W:[Landroid/widget/ImageView;

.field public X:Landroid/view/View;

.field public Y:Landroid/view/View;

.field public Z:Landroid/widget/ImageView;

.field public b0:Landroid/widget/TextView;

.field public c0:Landroid/widget/TextView;

.field public d0:Landroid/widget/TextView;

.field public e0:Landroid/widget/TextView;

.field public f0:Lc2/b;

.field public g0:Lt4/b;

.field public h0:Lq4/f;

.field public i0:Lcom/google/android/gms/internal/cast/j0;

.field public j0:Z

.field public k0:Z

.field public l0:Ljava/util/Timer;

.field public m0:Ljava/lang/String;

.field public final x:Lu4/c;

.field public final y:Lu4/e;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu4/c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lu4/c;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->x:Lu4/c;

    .line 10
    .line 11
    new-instance v0, Lu4/e;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lu4/e;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->y:Lu4/e;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->W:[Landroid/widget/ImageView;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p0 .. p0}, Lq4/a;->b(Landroid/content/Context;)Lq4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lq4/a;->a()Lq4/f;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->h0:Lq4/f;

    .line 15
    .line 16
    invoke-virtual {v1}, Lq4/f;->c()Lq4/b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance v1, Lt4/b;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lt4/b;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->g0:Lt4/b;

    .line 31
    .line 32
    const-string v2, "Must be called from the main thread."

    .line 33
    .line 34
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->y:Lu4/e;

    .line 38
    .line 39
    iput-object v3, v1, Lt4/b;->f:Lu4/e;

    .line 40
    .line 41
    const v1, 0x7f0e001f

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 45
    .line 46
    .line 47
    const v1, 0x7f040455

    .line 48
    .line 49
    .line 50
    filled-new-array {v1}, [I

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iput v4, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->z:I

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lq4/d;->a:[I

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    const v5, 0x7f0400c8

    .line 72
    .line 73
    .line 74
    const v6, 0x7f130111

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v5, 0x7

    .line 82
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 87
    .line 88
    const/16 v5, 0x10

    .line 89
    .line 90
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->A:I

    .line 95
    .line 96
    const/16 v5, 0xf

    .line 97
    .line 98
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->B:I

    .line 103
    .line 104
    const/16 v5, 0x1a

    .line 105
    .line 106
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->C:I

    .line 111
    .line 112
    const/16 v5, 0x19

    .line 113
    .line 114
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->D:I

    .line 119
    .line 120
    const/16 v5, 0x18

    .line 121
    .line 122
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->E:I

    .line 127
    .line 128
    const/16 v5, 0x11

    .line 129
    .line 130
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->F:I

    .line 135
    .line 136
    const/16 v5, 0xc

    .line 137
    .line 138
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->G:I

    .line 143
    .line 144
    const/16 v5, 0xe

    .line 145
    .line 146
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->H:I

    .line 151
    .line 152
    const/16 v5, 0x8

    .line 153
    .line 154
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->I:I

    .line 159
    .line 160
    const/16 v5, 0x9

    .line 161
    .line 162
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    const/4 v6, 0x4

    .line 167
    if-eqz v5, :cond_3

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-ne v7, v6, :cond_2

    .line 182
    .line 183
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    new-array v7, v7, [I

    .line 188
    .line 189
    iput-object v7, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:[I

    .line 190
    .line 191
    const/4 v7, 0x0

    .line 192
    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-ge v7, v8, :cond_1

    .line 197
    .line 198
    iget-object v8, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:[I

    .line 199
    .line 200
    invoke-virtual {v5, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    aput v9, v8, v7

    .line 205
    .line 206
    add-int/lit8 v7, v7, 0x1

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 216
    .line 217
    .line 218
    throw v1

    .line 219
    :cond_3
    const v5, 0x7f0b00b1

    .line 220
    .line 221
    .line 222
    filled-new-array {v5, v5, v5, v5}, [I

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    iput-object v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:[I

    .line 227
    .line 228
    :goto_1
    const/16 v5, 0xb

    .line 229
    .line 230
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->M:I

    .line 235
    .line 236
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->J:I

    .line 249
    .line 250
    const/4 v5, 0x3

    .line 251
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    iput v7, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->K:I

    .line 264
    .line 265
    const/4 v7, 0x6

    .line 266
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    iput v7, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->L:I

    .line 279
    .line 280
    const/4 v7, 0x5

    .line 281
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    iput v7, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->O:I

    .line 286
    .line 287
    const/4 v7, 0x1

    .line 288
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    iput v8, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->P:I

    .line 293
    .line 294
    const/4 v8, 0x2

    .line 295
    invoke-virtual {v1, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 296
    .line 297
    .line 298
    move-result v9

    .line 299
    iput v9, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Q:I

    .line 300
    .line 301
    const/16 v9, 0xa

    .line 302
    .line 303
    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 304
    .line 305
    .line 306
    move-result v9

    .line 307
    if-eqz v9, :cond_4

    .line 308
    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 314
    .line 315
    .line 316
    move-result-object v10

    .line 317
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    iput-object v9, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->m0:Ljava/lang/String;

    .line 322
    .line 323
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    .line 325
    .line 326
    const v1, 0x7f0b018c

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    iget-object v9, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->g0:Lt4/b;

    .line 334
    .line 335
    const v10, 0x7f0b0079

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    check-cast v10, Landroid/widget/ImageView;

    .line 343
    .line 344
    iput-object v10, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->T:Landroid/widget/ImageView;

    .line 345
    .line 346
    const v10, 0x7f0b008a

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    check-cast v10, Landroid/widget/ImageView;

    .line 354
    .line 355
    iput-object v10, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->U:Landroid/widget/ImageView;

    .line 356
    .line 357
    const v10, 0x7f0b007c

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object v15

    .line 364
    new-instance v10, Landroid/util/DisplayMetrics;

    .line 365
    .line 366
    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    invoke-virtual {v11, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 378
    .line 379
    .line 380
    iget-object v14, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->T:Landroid/widget/ImageView;

    .line 381
    .line 382
    new-instance v13, Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 383
    .line 384
    iget v11, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 385
    .line 386
    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 387
    .line 388
    invoke-direct {v13, v6, v11, v10}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    .line 389
    .line 390
    .line 391
    new-instance v6, Lu4/c;

    .line 392
    .line 393
    invoke-direct {v6, v0}, Lu4/c;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    new-instance v10, Lcom/google/android/gms/internal/cast/i0;

    .line 403
    .line 404
    iget-object v12, v9, Lt4/b;->a:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 405
    .line 406
    move-object v11, v10

    .line 407
    move-object/from16 v16, v12

    .line 408
    .line 409
    move-object v12, v14

    .line 410
    move-object/from16 v17, v13

    .line 411
    .line 412
    move-object/from16 v13, v16

    .line 413
    .line 414
    move-object v4, v14

    .line 415
    move-object/from16 v14, v17

    .line 416
    .line 417
    move-object/from16 v16, v6

    .line 418
    .line 419
    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/cast/i0;-><init>(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Lcom/google/android/gms/cast/framework/media/ImageHints;Landroid/view/View;Lu4/c;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v9, v4, v10}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 423
    .line 424
    .line 425
    const v4, 0x7f0b03e3

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    check-cast v4, Landroid/widget/TextView;

    .line 433
    .line 434
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->R:Landroid/widget/TextView;

    .line 435
    .line 436
    const v4, 0x7f0b0274

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    check-cast v4, Landroid/widget/ProgressBar;

    .line 444
    .line 445
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    iget v10, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->M:I

    .line 450
    .line 451
    if-eqz v10, :cond_5

    .line 452
    .line 453
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 454
    .line 455
    invoke-virtual {v6, v10, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 456
    .line 457
    .line 458
    :cond_5
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    new-instance v6, Lcom/google/android/gms/internal/cast/l0;

    .line 462
    .line 463
    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/cast/l0;-><init>(Landroid/widget/ProgressBar;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v9, v4, v6}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 467
    .line 468
    .line 469
    const v4, 0x7f0b03de

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    check-cast v4, Landroid/widget/TextView;

    .line 477
    .line 478
    const v6, 0x7f0b0146

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    check-cast v6, Landroid/widget/TextView;

    .line 486
    .line 487
    const v10, 0x7f0b03a5

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    check-cast v10, Landroid/widget/SeekBar;

    .line 495
    .line 496
    const v10, 0x7f0b00bc

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    check-cast v10, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 504
    .line 505
    iput-object v10, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->S:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 506
    .line 507
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    sget-object v11, Lcom/google/android/gms/internal/cast/m2;->o:Lcom/google/android/gms/internal/cast/m2;

    .line 511
    .line 512
    invoke-static {v11}, Lcom/google/android/gms/internal/cast/l2;->a(Lcom/google/android/gms/internal/cast/m2;)V

    .line 513
    .line 514
    .line 515
    new-instance v11, Ls2/c;

    .line 516
    .line 517
    const/4 v12, 0x2

    .line 518
    invoke-direct {v11, v12, v9}, Ls2/c;-><init>(ILjava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    iput-object v11, v10, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->f:Ls2/c;

    .line 522
    .line 523
    new-instance v11, Lcom/google/android/gms/internal/cast/h0;

    .line 524
    .line 525
    iget-object v12, v9, Lt4/b;->e:Lr4/n;

    .line 526
    .line 527
    invoke-direct {v11, v10, v12}, Lcom/google/android/gms/internal/cast/h0;-><init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;Lr4/n;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v9, v10, v11}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 531
    .line 532
    .line 533
    new-instance v10, Lcom/google/android/gms/internal/cast/m0;

    .line 534
    .line 535
    const/4 v11, 0x1

    .line 536
    invoke-direct {v10, v4, v12, v11}, Lcom/google/android/gms/internal/cast/m0;-><init>(Landroid/widget/TextView;Lr4/n;I)V

    .line 537
    .line 538
    .line 539
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v9, v4, v10}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 543
    .line 544
    .line 545
    new-instance v4, Lcom/google/android/gms/internal/cast/m0;

    .line 546
    .line 547
    const/4 v10, 0x0

    .line 548
    invoke-direct {v4, v6, v12, v10}, Lcom/google/android/gms/internal/cast/m0;-><init>(Landroid/widget/TextView;Lr4/n;I)V

    .line 549
    .line 550
    .line 551
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v9, v6, v4}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 555
    .line 556
    .line 557
    const v4, 0x7f0b0268

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 561
    .line 562
    .line 563
    move-result-object v4

    .line 564
    new-instance v6, Lcom/google/android/gms/internal/cast/n0;

    .line 565
    .line 566
    invoke-direct {v6, v4, v12}, Lcom/google/android/gms/internal/cast/n0;-><init>(Landroid/view/View;Lr4/n;)V

    .line 567
    .line 568
    .line 569
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v9, v4, v6}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 573
    .line 574
    .line 575
    const v4, 0x7f0b0427

    .line 576
    .line 577
    .line 578
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 583
    .line 584
    new-instance v6, Lcom/google/android/gms/internal/cast/o0;

    .line 585
    .line 586
    iget-object v10, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->S:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 587
    .line 588
    invoke-direct {v6, v4, v10, v12}, Lcom/google/android/gms/internal/cast/o0;-><init>(Landroid/widget/RelativeLayout;Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;Lr4/n;)V

    .line 589
    .line 590
    .line 591
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v9, v4, v6}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 595
    .line 596
    .line 597
    iget-object v2, v9, Lt4/b;->d:Ljava/util/HashSet;

    .line 598
    .line 599
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    const v2, 0x7f0b009e

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    check-cast v4, Landroid/widget/ImageView;

    .line 610
    .line 611
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->W:[Landroid/widget/ImageView;

    .line 612
    .line 613
    aput-object v4, v6, v3

    .line 614
    .line 615
    const v4, 0x7f0b009f

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 619
    .line 620
    .line 621
    move-result-object v10

    .line 622
    check-cast v10, Landroid/widget/ImageView;

    .line 623
    .line 624
    aput-object v10, v6, v7

    .line 625
    .line 626
    const v10, 0x7f0b00a0

    .line 627
    .line 628
    .line 629
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 630
    .line 631
    .line 632
    move-result-object v11

    .line 633
    check-cast v11, Landroid/widget/ImageView;

    .line 634
    .line 635
    aput-object v11, v6, v8

    .line 636
    .line 637
    const v11, 0x7f0b00a1

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 641
    .line 642
    .line 643
    move-result-object v12

    .line 644
    check-cast v12, Landroid/widget/ImageView;

    .line 645
    .line 646
    aput-object v12, v6, v5

    .line 647
    .line 648
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:[I

    .line 649
    .line 650
    aget v3, v6, v3

    .line 651
    .line 652
    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->q(Landroid/view/View;IILt4/b;)V

    .line 653
    .line 654
    .line 655
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:[I

    .line 656
    .line 657
    aget v2, v2, v7

    .line 658
    .line 659
    invoke-virtual {v0, v1, v4, v2, v9}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->q(Landroid/view/View;IILt4/b;)V

    .line 660
    .line 661
    .line 662
    const v2, 0x7f0b00a2

    .line 663
    .line 664
    .line 665
    const v3, 0x7f0b00b4

    .line 666
    .line 667
    .line 668
    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->q(Landroid/view/View;IILt4/b;)V

    .line 669
    .line 670
    .line 671
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:[I

    .line 672
    .line 673
    aget v2, v2, v8

    .line 674
    .line 675
    invoke-virtual {v0, v1, v10, v2, v9}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->q(Landroid/view/View;IILt4/b;)V

    .line 676
    .line 677
    .line 678
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:[I

    .line 679
    .line 680
    aget v2, v2, v5

    .line 681
    .line 682
    invoke-virtual {v0, v1, v11, v2, v9}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->q(Landroid/view/View;IILt4/b;)V

    .line 683
    .line 684
    .line 685
    const v1, 0x7f0b0056

    .line 686
    .line 687
    .line 688
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X:Landroid/view/View;

    .line 693
    .line 694
    const v2, 0x7f0b0057

    .line 695
    .line 696
    .line 697
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    check-cast v1, Landroid/widget/ImageView;

    .line 702
    .line 703
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Z:Landroid/widget/ImageView;

    .line 704
    .line 705
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X:Landroid/view/View;

    .line 706
    .line 707
    const v2, 0x7f0b0055

    .line 708
    .line 709
    .line 710
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Y:Landroid/view/View;

    .line 715
    .line 716
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X:Landroid/view/View;

    .line 717
    .line 718
    const v2, 0x7f0b0059

    .line 719
    .line 720
    .line 721
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    check-cast v1, Landroid/widget/TextView;

    .line 726
    .line 727
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0:Landroid/widget/TextView;

    .line 728
    .line 729
    iget v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->L:I

    .line 730
    .line 731
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 732
    .line 733
    .line 734
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0:Landroid/widget/TextView;

    .line 735
    .line 736
    iget v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->J:I

    .line 737
    .line 738
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 739
    .line 740
    .line 741
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X:Landroid/view/View;

    .line 742
    .line 743
    const v2, 0x7f0b0058

    .line 744
    .line 745
    .line 746
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    check-cast v1, Landroid/widget/TextView;

    .line 751
    .line 752
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->b0:Landroid/widget/TextView;

    .line 753
    .line 754
    const v1, 0x7f0b005b

    .line 755
    .line 756
    .line 757
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    check-cast v1, Landroid/widget/TextView;

    .line 762
    .line 763
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->e0:Landroid/widget/TextView;

    .line 764
    .line 765
    const v1, 0x7f0b005a

    .line 766
    .line 767
    .line 768
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    check-cast v1, Landroid/widget/TextView;

    .line 773
    .line 774
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:Landroid/widget/TextView;

    .line 775
    .line 776
    new-instance v2, Landroidx/appcompat/app/a;

    .line 777
    .line 778
    const/16 v3, 0x15

    .line 779
    .line 780
    invoke-direct {v2, v3, v0}, Landroidx/appcompat/app/a;-><init>(ILjava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    .line 785
    .line 786
    const v1, 0x7f0b0425

    .line 787
    .line 788
    .line 789
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 794
    .line 795
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->m()Landroidx/appcompat/app/q;

    .line 796
    .line 797
    .line 798
    move-result-object v2

    .line 799
    check-cast v2, Landroidx/appcompat/app/g0;

    .line 800
    .line 801
    iget-object v3, v2, Landroidx/appcompat/app/g0;->j:Ljava/lang/Object;

    .line 802
    .line 803
    instance-of v3, v3, Landroid/app/Activity;

    .line 804
    .line 805
    if-nez v3, :cond_6

    .line 806
    .line 807
    goto :goto_4

    .line 808
    :cond_6
    invoke-virtual {v2}, Landroidx/appcompat/app/g0;->B()V

    .line 809
    .line 810
    .line 811
    iget-object v3, v2, Landroidx/appcompat/app/g0;->o:Ll5/a;

    .line 812
    .line 813
    instance-of v4, v3, Landroidx/appcompat/app/x0;

    .line 814
    .line 815
    if-nez v4, :cond_d

    .line 816
    .line 817
    const/4 v4, 0x0

    .line 818
    iput-object v4, v2, Landroidx/appcompat/app/g0;->p:Lj/i;

    .line 819
    .line 820
    if-eqz v3, :cond_7

    .line 821
    .line 822
    invoke-virtual {v3}, Ll5/a;->C()V

    .line 823
    .line 824
    .line 825
    :cond_7
    iput-object v4, v2, Landroidx/appcompat/app/g0;->o:Ll5/a;

    .line 826
    .line 827
    if-eqz v1, :cond_9

    .line 828
    .line 829
    new-instance v3, Landroidx/appcompat/app/s0;

    .line 830
    .line 831
    iget-object v4, v2, Landroidx/appcompat/app/g0;->j:Ljava/lang/Object;

    .line 832
    .line 833
    instance-of v5, v4, Landroid/app/Activity;

    .line 834
    .line 835
    if-eqz v5, :cond_8

    .line 836
    .line 837
    check-cast v4, Landroid/app/Activity;

    .line 838
    .line 839
    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 840
    .line 841
    .line 842
    move-result-object v4

    .line 843
    goto :goto_2

    .line 844
    :cond_8
    iget-object v4, v2, Landroidx/appcompat/app/g0;->q:Ljava/lang/CharSequence;

    .line 845
    .line 846
    :goto_2
    iget-object v5, v2, Landroidx/appcompat/app/g0;->m:Landroidx/appcompat/app/z;

    .line 847
    .line 848
    invoke-direct {v3, v1, v4, v5}, Landroidx/appcompat/app/s0;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroidx/appcompat/app/z;)V

    .line 849
    .line 850
    .line 851
    iput-object v3, v2, Landroidx/appcompat/app/g0;->o:Ll5/a;

    .line 852
    .line 853
    iget-object v4, v2, Landroidx/appcompat/app/g0;->m:Landroidx/appcompat/app/z;

    .line 854
    .line 855
    iget-object v3, v3, Landroidx/appcompat/app/s0;->t:Landroidx/appcompat/app/q0;

    .line 856
    .line 857
    iput-object v3, v4, Landroidx/appcompat/app/z;->b:Landroidx/appcompat/app/q0;

    .line 858
    .line 859
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    .line 860
    .line 861
    .line 862
    goto :goto_3

    .line 863
    :cond_9
    iget-object v1, v2, Landroidx/appcompat/app/g0;->m:Landroidx/appcompat/app/z;

    .line 864
    .line 865
    const/4 v3, 0x0

    .line 866
    iput-object v3, v1, Landroidx/appcompat/app/z;->b:Landroidx/appcompat/app/q0;

    .line 867
    .line 868
    :goto_3
    invoke-virtual {v2}, Landroidx/appcompat/app/g0;->b()V

    .line 869
    .line 870
    .line 871
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->n()Ll5/a;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    if-eqz v1, :cond_a

    .line 876
    .line 877
    invoke-virtual {v1, v7}, Ll5/a;->K(Z)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v1}, Ll5/a;->L()V

    .line 881
    .line 882
    .line 883
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->s()V

    .line 884
    .line 885
    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->t()V

    .line 887
    .line 888
    .line 889
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->b0:Landroid/widget/TextView;

    .line 890
    .line 891
    if-eqz v1, :cond_c

    .line 892
    .line 893
    iget v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Q:I

    .line 894
    .line 895
    if-eqz v2, :cond_c

    .line 896
    .line 897
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 898
    .line 899
    const/16 v3, 0x17

    .line 900
    .line 901
    if-lt v2, v3, :cond_b

    .line 902
    .line 903
    iget v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->P:I

    .line 904
    .line 905
    invoke-static {v1, v2}, Landroid/support/v4/media/a;->u(Landroid/widget/TextView;I)V

    .line 906
    .line 907
    .line 908
    goto :goto_5

    .line 909
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 910
    .line 911
    .line 912
    move-result-object v2

    .line 913
    iget v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->P:I

    .line 914
    .line 915
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 916
    .line 917
    .line 918
    :goto_5
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->b0:Landroid/widget/TextView;

    .line 919
    .line 920
    iget v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->K:I

    .line 921
    .line 922
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 923
    .line 924
    .line 925
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->b0:Landroid/widget/TextView;

    .line 926
    .line 927
    iget v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Q:I

    .line 928
    .line 929
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 930
    .line 931
    .line 932
    :cond_c
    new-instance v1, Lc2/b;

    .line 933
    .line 934
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 935
    .line 936
    .line 937
    move-result-object v2

    .line 938
    new-instance v3, Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 939
    .line 940
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Z:Landroid/widget/ImageView;

    .line 941
    .line 942
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 943
    .line 944
    .line 945
    move-result v4

    .line 946
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Z:Landroid/widget/ImageView;

    .line 947
    .line 948
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 949
    .line 950
    .line 951
    move-result v5

    .line 952
    const/4 v6, -0x1

    .line 953
    invoke-direct {v3, v6, v4, v5}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    .line 954
    .line 955
    .line 956
    invoke-direct {v1, v2, v3}, Lc2/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    .line 957
    .line 958
    .line 959
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->f0:Lc2/b;

    .line 960
    .line 961
    new-instance v2, Lu4/c;

    .line 962
    .line 963
    invoke-direct {v2, v0}, Lu4/c;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 964
    .line 965
    .line 966
    iput-object v2, v1, Lc2/b;->f:Ljava/lang/Object;

    .line 967
    .line 968
    sget-object v1, Lcom/google/android/gms/internal/cast/m2;->d:Lcom/google/android/gms/internal/cast/m2;

    .line 969
    .line 970
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/l2;->a(Lcom/google/android/gms/internal/cast/m2;)V

    .line 971
    .line 972
    .line 973
    return-void

    .line 974
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 975
    .line 976
    const-string v2, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    .line 977
    .line 978
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    throw v1
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->f0:Lc2/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc2/b;->j()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lc2/b;->f:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->g0:Lt4/b;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v2, "Must be called from the main thread."

    .line 14
    .line 15
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lt4/b;->f:Lu4/e;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->g0:Lt4/b;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lt4/b;->q()V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lt4/b;->c:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lt4/b;->b:Lq4/f;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Lq4/f;->e(Lq4/g;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-object v1, v0, Lt4/b;->f:Lu4/e;

    .line 44
    .line 45
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x102002c

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public final onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->h0:Lq4/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lq4/f;->c()Lq4/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->i0:Lcom/google/android/gms/internal/cast/j0;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v2, "Must be called from the main thread."

    .line 17
    .line 18
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lq4/b;->d:Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->i0:Lcom/google/android/gms/internal/cast/j0;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->h0:Lq4/f;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->x:Lu4/c;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lq4/f;->e(Lq4/g;)V

    .line 34
    .line 35
    .line 36
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onResume()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->h0:Lq4/f;

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->x:Lu4/c;

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Lq4/f;->a(Lq4/g;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->h0:Lq4/f;

    .line 15
    .line 16
    invoke-virtual {v3}, Lq4/f;->c()Lq4/b;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_4

    .line 21
    .line 22
    invoke-virtual {v3}, Lq4/e;->a()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const-string v5, "Must be called from the main thread."

    .line 27
    .line 28
    if-nez v4, :cond_3

    .line 29
    .line 30
    invoke-static {v5}, Lb5/l;->b(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, v3, Lq4/e;->a:Lq4/u;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    :try_start_0
    check-cast v4, Lq4/s;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/4 v7, 0x6

    .line 44
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    sget v6, Lcom/google/android/gms/internal/cast/d0;->a:I

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v6, 0x0

    .line 59
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v4

    .line 64
    const-class v6, Lq4/u;

    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    new-array v7, v0, [Ljava/lang/Object;

    .line 71
    .line 72
    const-string v8, "isConnecting"

    .line 73
    .line 74
    aput-object v8, v7, v2

    .line 75
    .line 76
    aput-object v6, v7, v1

    .line 77
    .line 78
    const-string v6, "Unable to call %s on %s."

    .line 79
    .line 80
    sget-object v8, Lq4/e;->b:Lv4/b;

    .line 81
    .line 82
    invoke-virtual {v8, v4, v6, v7}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    const/4 v6, 0x0

    .line 86
    :goto_1
    if-nez v6, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/cast/j0;

    .line 90
    .line 91
    invoke-direct {v4, v0, p0}, Lcom/google/android/gms/internal/cast/j0;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->i0:Lcom/google/android/gms/internal/cast/j0;

    .line 95
    .line 96
    invoke-static {v5}, Lb5/l;->b(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v3, Lq4/b;->d:Ljava/util/HashSet;

    .line 100
    .line 101
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->p()Lr4/f;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-virtual {v0}, Lr4/f;->i()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_5
    const/4 v1, 0x0

    .line 122
    :cond_6
    :goto_4
    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->j0:Z

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->s()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->u()V

    .line 128
    .line 129
    .line 130
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    xor-int/lit16 p1, p1, 0x1006

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setImmersive(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final p()Lr4/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->h0:Lq4/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq4/f;->c()Lq4/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lq4/e;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lq4/b;->f()Lr4/f;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public final q(Landroid/view/View;IILt4/b;)V
    .locals 6

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/ImageView;

    .line 6
    .line 7
    const p2, 0x7f0b00b1

    .line 8
    .line 9
    .line 10
    if-ne p3, p2, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x4

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const p2, 0x7f0b00b4

    .line 18
    .line 19
    .line 20
    const-string v0, "Must be called from the main thread."

    .line 21
    .line 22
    if-ne p3, p2, :cond_1

    .line 23
    .line 24
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->z:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 30
    .line 31
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->B:I

    .line 32
    .line 33
    invoke-static {p0, p2, p3}, Lu4/f;->a(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;II)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 38
    .line 39
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->A:I

    .line 40
    .line 41
    invoke-static {p0, p2, p3}, Lu4/f;->a(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;II)Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 46
    .line 47
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->C:I

    .line 48
    .line 49
    invoke-static {p0, p2, p3}, Lu4/f;->a(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;II)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object p2, Lcom/google/android/gms/internal/cast/m2;->n:Lcom/google/android/gms/internal/cast/m2;

    .line 63
    .line 64
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/l2;->a(Lcom/google/android/gms/internal/cast/m2;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lt4/c;

    .line 68
    .line 69
    const/4 p3, 0x1

    .line 70
    invoke-direct {p2, p4, p3}, Lt4/c;-><init>(Lt4/b;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Lcom/google/android/gms/internal/cast/k0;

    .line 77
    .line 78
    iget-object v2, p4, Lt4/b;->a:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 79
    .line 80
    move-object v0, p2

    .line 81
    move-object v1, p1

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/k0;-><init>(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4, p1, p2}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    const p2, 0x7f0b00b7

    .line 90
    .line 91
    .line 92
    if-ne p3, p2, :cond_2

    .line 93
    .line 94
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->z:I

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    .line 98
    .line 99
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 100
    .line 101
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->D:I

    .line 102
    .line 103
    invoke-static {p0, p2, p3}, Lu4/f;->a(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;II)Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const p3, 0x7f12007e

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance p2, Lt4/c;

    .line 131
    .line 132
    const/4 p3, 0x3

    .line 133
    invoke-direct {p2, p4, p3}, Lt4/c;-><init>(Lt4/b;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    new-instance p2, Lcom/google/android/gms/internal/cast/l0;

    .line 140
    .line 141
    const/4 p3, 0x1

    .line 142
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/cast/l0;-><init>(Landroid/widget/ImageView;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p4, p1, p2}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_2
    const p2, 0x7f0b00b6

    .line 150
    .line 151
    .line 152
    if-ne p3, p2, :cond_3

    .line 153
    .line 154
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->z:I

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    .line 158
    .line 159
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 160
    .line 161
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->E:I

    .line 162
    .line 163
    invoke-static {p0, p2, p3}, Lu4/f;->a(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;II)Landroid/graphics/drawable/Drawable;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    const p3, 0x7f12007d

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance p2, Lt4/c;

    .line 191
    .line 192
    const/4 p3, 0x2

    .line 193
    invoke-direct {p2, p4, p3}, Lt4/c;-><init>(Lt4/b;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    new-instance p2, Lcom/google/android/gms/internal/cast/l0;

    .line 200
    .line 201
    const/4 p3, 0x0

    .line 202
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/cast/l0;-><init>(Landroid/widget/ImageView;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p4, p1, p2}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_3
    const p2, 0x7f0b00b5

    .line 210
    .line 211
    .line 212
    if-ne p3, p2, :cond_4

    .line 213
    .line 214
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->z:I

    .line 215
    .line 216
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 217
    .line 218
    .line 219
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 220
    .line 221
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->F:I

    .line 222
    .line 223
    invoke-static {p0, p2, p3}, Lu4/f;->a(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;II)Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    const p3, 0x7f12007b

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    new-instance p2, Lt4/c;

    .line 251
    .line 252
    const/4 p3, 0x5

    .line 253
    invoke-direct {p2, p4, p3}, Lt4/c;-><init>(Lt4/b;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    new-instance p2, Lcom/google/android/gms/internal/cast/h0;

    .line 260
    .line 261
    iget-object p3, p4, Lt4/b;->e:Lr4/n;

    .line 262
    .line 263
    const/4 v0, 0x1

    .line 264
    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/cast/h0;-><init>(Landroid/widget/ImageView;Lr4/n;I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p4, p1, p2}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :cond_4
    const p2, 0x7f0b00b2

    .line 272
    .line 273
    .line 274
    if-ne p3, p2, :cond_5

    .line 275
    .line 276
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->z:I

    .line 277
    .line 278
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 279
    .line 280
    .line 281
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 282
    .line 283
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->G:I

    .line 284
    .line 285
    invoke-static {p0, p2, p3}, Lu4/f;->a(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;II)Landroid/graphics/drawable/Drawable;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    const p3, 0x7f12006d

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    new-instance p2, Lt4/c;

    .line 313
    .line 314
    const/4 p3, 0x4

    .line 315
    invoke-direct {p2, p4, p3}, Lt4/c;-><init>(Lt4/b;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    .line 320
    .line 321
    new-instance p2, Lcom/google/android/gms/internal/cast/h0;

    .line 322
    .line 323
    iget-object p3, p4, Lt4/b;->e:Lr4/n;

    .line 324
    .line 325
    const/4 v0, 0x0

    .line 326
    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/cast/h0;-><init>(Landroid/widget/ImageView;Lr4/n;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p4, p1, p2}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_5
    const p2, 0x7f0b00b3

    .line 334
    .line 335
    .line 336
    if-ne p3, p2, :cond_6

    .line 337
    .line 338
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->z:I

    .line 339
    .line 340
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 341
    .line 342
    .line 343
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 344
    .line 345
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->H:I

    .line 346
    .line 347
    invoke-static {p0, p2, p3}, Lu4/f;->a(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;II)Landroid/graphics/drawable/Drawable;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    new-instance p2, Lt4/c;

    .line 361
    .line 362
    const/4 p3, 0x0

    .line 363
    invoke-direct {p2, p4, p3}, Lt4/c;-><init>(Lt4/b;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    new-instance p2, Lcom/google/android/gms/internal/cast/i0;

    .line 370
    .line 371
    iget-object p3, p4, Lt4/b;->a:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 372
    .line 373
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/cast/i0;-><init>(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p4, p1, p2}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :cond_6
    const p2, 0x7f0b00af

    .line 381
    .line 382
    .line 383
    if-ne p3, p2, :cond_7

    .line 384
    .line 385
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->z:I

    .line 386
    .line 387
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 388
    .line 389
    .line 390
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 391
    .line 392
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->I:I

    .line 393
    .line 394
    invoke-static {p0, p2, p3}, Lu4/f;->a(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;II)Landroid/graphics/drawable/Drawable;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    new-instance p2, Lt4/c;

    .line 408
    .line 409
    const/4 p3, 0x6

    .line 410
    invoke-direct {p2, p4, p3}, Lt4/c;-><init>(Lt4/b;I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    .line 416
    new-instance p2, Lcom/google/android/gms/internal/cast/g0;

    .line 417
    .line 418
    iget-object p3, p4, Lt4/b;->a:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 419
    .line 420
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/cast/g0;-><init>(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p4, p1, p2}, Lt4/b;->s(Landroid/view/View;Lt4/a;)V

    .line 424
    .line 425
    .line 426
    :cond_7
    return-void
.end method

.method public final r(Lr4/f;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->j0:Z

    .line 4
    .line 5
    if-nez v2, :cond_4

    .line 6
    .line 7
    invoke-virtual {p1}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    invoke-virtual {p1}, Lr4/f;->j()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:Landroid/widget/TextView;

    .line 22
    .line 23
    const/16 v4, 0x8

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->e0:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->j()Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    const-wide/16 v3, -0x1

    .line 40
    .line 41
    iget-wide v5, v2, Lcom/google/android/gms/cast/AdBreakClipInfo;->j:J

    .line 42
    .line 43
    cmp-long v2, v5, v3

    .line 44
    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->k0:Z

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    new-instance v8, Lu4/d;

    .line 52
    .line 53
    invoke-direct {v8, p0, p1}, Lu4/d;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Lr4/f;)V

    .line 54
    .line 55
    .line 56
    new-instance v7, Ljava/util/Timer;

    .line 57
    .line 58
    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v7, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->l0:Ljava/util/Timer;

    .line 62
    .line 63
    const-wide/16 v9, 0x0

    .line 64
    .line 65
    const-wide/16 v11, 0x1f4

    .line 66
    .line 67
    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 68
    .line 69
    .line 70
    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->k0:Z

    .line 71
    .line 72
    :cond_1
    invoke-virtual {p1}, Lr4/f;->b()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    sub-long/2addr v5, v2

    .line 77
    long-to-float p1, v5

    .line 78
    const/4 v2, 0x0

    .line 79
    cmpg-float v2, p1, v2

    .line 80
    .line 81
    if-gtz v2, :cond_3

    .line 82
    .line 83
    iget-boolean p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->k0:Z

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->l0:Ljava/util/Timer;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 90
    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->k0:Z

    .line 93
    .line 94
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->e0:Landroid/widget/TextView;

    .line 106
    .line 107
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->e0:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 117
    .line 118
    div-float/2addr p1, v4

    .line 119
    float-to-double v4, p1

    .line 120
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    double-to-int p1, v4

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-array v1, v1, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object p1, v1, v0

    .line 132
    .line 133
    const p1, 0x7f12006a

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->h0:Lq4/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq4/f;->c()Lq4/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lq4/b;->e()Lcom/google/android/gms/cast/CastDevice;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->R:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const v3, 0x7f12005d

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    new-array v4, v4, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    aput-object v0, v4, v5

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->R:Landroid/widget/TextView;

    .line 47
    .line 48
    const-string v1, ""

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final t()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->p()Lr4/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {v0}, Lr4/f;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_7

    .line 12
    .line 13
    invoke-virtual {v0}, Lr4/f;->e()Lcom/google/android/gms/cast/MediaInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaInfo;->d:Lcom/google/android/gms/cast/MediaMetadata;

    .line 20
    .line 21
    if-eqz v0, :cond_7

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->n()Ll5/a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_7

    .line 28
    .line 29
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-static {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata;->j(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaMetadata;->b:Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ll5/a;->P(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v2, Ls4/l;->a:Lv4/b;

    .line 45
    .line 46
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_6

    .line 53
    .line 54
    iget v0, v0, Lcom/google/android/gms/cast/MediaMetadata;->c:I

    .line 55
    .line 56
    if-eq v0, v3, :cond_5

    .line 57
    .line 58
    const/4 v5, 0x2

    .line 59
    if-eq v0, v5, :cond_4

    .line 60
    .line 61
    const/4 v5, 0x3

    .line 62
    const-string v6, "com.google.android.gms.cast.metadata.ARTIST"

    .line 63
    .line 64
    if-eq v0, v5, :cond_1

    .line 65
    .line 66
    const/4 v5, 0x4

    .line 67
    if-eq v0, v5, :cond_0

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_0
    :goto_0
    move-object v2, v6

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v0, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 80
    .line 81
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    :goto_1
    move-object v2, v0

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const-string v0, "com.google.android.gms.cast.metadata.COMPOSER"

    .line 90
    .line 91
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_6

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const-string v2, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    const-string v2, "com.google.android.gms.cast.metadata.STUDIO"

    .line 102
    .line 103
    :cond_6
    :goto_2
    invoke-static {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata;->j(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ll5/a;->O(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_7
    return-void
.end method

.method public final u()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->p()Lr4/f;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    if-nez v5, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v5}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    if-eqz v6, :cond_8

    .line 20
    .line 21
    iget-boolean v7, v6, Lcom/google/android/gms/cast/MediaStatus;->r:Z

    .line 22
    .line 23
    const/16 v8, 0x8

    .line 24
    .line 25
    if-eqz v7, :cond_7

    .line 26
    .line 27
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->U:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-ne v7, v8, :cond_1

    .line 34
    .line 35
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->T:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    instance-of v10, v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 44
    .line 45
    if-eqz v10, :cond_1

    .line 46
    .line 47
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    .line 49
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    sget-object v10, Lu4/f;->a:Lv4/b;

    .line 56
    .line 57
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    new-array v12, v3, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object v7, v12, v4

    .line 76
    .line 77
    aput-object v10, v12, v2

    .line 78
    .line 79
    aput-object v11, v12, v1

    .line 80
    .line 81
    sget-object v10, Lu4/f;->a:Lv4/b;

    .line 82
    .line 83
    const-string v11, "Begin blurring bitmap %s, original width = %d, original height = %d."

    .line 84
    .line 85
    invoke-virtual {v10, v11, v12}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    int-to-float v11, v11

    .line 93
    const/high16 v12, 0x3e800000    # 0.25f

    .line 94
    .line 95
    mul-float v11, v11, v12

    .line 96
    .line 97
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    int-to-float v13, v13

    .line 106
    mul-float v13, v13, v12

    .line 107
    .line 108
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    invoke-static {v7, v11, v12, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    invoke-static/range {p0 .. p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 125
    .line 126
    .line 127
    move-result-object v14

    .line 128
    invoke-static {v14, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    invoke-virtual {v15}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-static {v14, v9}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v15}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-static {v14, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v8, v15}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 149
    .line 150
    .line 151
    const/high16 v15, 0x40f00000    # 7.5f

    .line 152
    .line 153
    invoke-virtual {v8, v15}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v9}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v9, v13}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v14}, Landroid/renderscript/RenderScript;->destroy()V

    .line 163
    .line 164
    .line 165
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    new-array v3, v3, [Ljava/lang/Object;

    .line 174
    .line 175
    aput-object v7, v3, v4

    .line 176
    .line 177
    aput-object v8, v3, v2

    .line 178
    .line 179
    aput-object v9, v3, v1

    .line 180
    .line 181
    const-string v1, "End blurring bitmap %s, original width = %d, original height = %d."

    .line 182
    .line 183
    invoke-virtual {v10, v1, v3}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    if-eqz v13, :cond_1

    .line 187
    .line 188
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->U:Landroid/widget/ImageView;

    .line 189
    .line 190
    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->U:Landroid/widget/ImageView;

    .line 194
    .line 195
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaStatus;->j()Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_2

    .line 203
    .line 204
    iget-object v9, v1, Lcom/google/android/gms/cast/AdBreakClipInfo;->b:Ljava/lang/String;

    .line 205
    .line 206
    iget-object v1, v1, Lcom/google/android/gms/cast/AdBreakClipInfo;->i:Ljava/lang/String;

    .line 207
    .line 208
    move-object/from16 v16, v9

    .line 209
    .line 210
    move-object v9, v1

    .line 211
    goto :goto_0

    .line 212
    :cond_2
    const/4 v9, 0x0

    .line 213
    const/16 v16, 0x0

    .line 214
    .line 215
    :goto_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_3

    .line 220
    .line 221
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->f0:Lc2/b;

    .line 226
    .line 227
    invoke-virtual {v2, v1}, Lc2/b;->i(Landroid/net/Uri;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Y:Landroid/view/View;

    .line 231
    .line 232
    const/16 v2, 0x8

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->m0:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-nez v1, :cond_4

    .line 245
    .line 246
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->m0:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->f0:Lc2/b;

    .line 253
    .line 254
    invoke-virtual {v2, v1}, Lc2/b;->i(Landroid/net/Uri;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Y:Landroid/view/View;

    .line 258
    .line 259
    const/16 v2, 0x8

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_4
    const/16 v2, 0x8

    .line 266
    .line 267
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->b0:Landroid/widget/TextView;

    .line 268
    .line 269
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Y:Landroid/view/View;

    .line 273
    .line 274
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Z:Landroid/widget/ImageView;

    .line 278
    .line 279
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0:Landroid/widget/TextView;

    .line 283
    .line 284
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_5

    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    const v3, 0x7f12005c

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v16

    .line 301
    :cond_5
    move-object/from16 v2, v16

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .line 305
    .line 306
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 307
    .line 308
    const/16 v2, 0x17

    .line 309
    .line 310
    if-lt v1, v2, :cond_6

    .line 311
    .line 312
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0:Landroid/widget/TextView;

    .line 313
    .line 314
    iget v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->O:I

    .line 315
    .line 316
    invoke-static {v1, v2}, Landroid/support/v4/media/a;->u(Landroid/widget/TextView;I)V

    .line 317
    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0:Landroid/widget/TextView;

    .line 321
    .line 322
    iget v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->O:I

    .line 323
    .line 324
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 325
    .line 326
    .line 327
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X:Landroid/view/View;

    .line 328
    .line 329
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->r(Lr4/f;)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->e0:Landroid/widget/TextView;

    .line 337
    .line 338
    const/16 v2, 0x8

    .line 339
    .line 340
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:Landroid/widget/TextView;

    .line 344
    .line 345
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X:Landroid/view/View;

    .line 349
    .line 350
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->U:Landroid/widget/ImageView;

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->U:Landroid/widget/ImageView;

    .line 359
    .line 360
    const/4 v2, 0x0

    .line 361
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    .line 363
    .line 364
    :cond_8
    :goto_3
    return-void
.end method
