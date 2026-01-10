.class public Lcom/dinuscxj/progressbar/CircleProgressBar;
.super Landroid/widget/ProgressBar;
.source "MyApplication"


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public g:F

.field public h:F

.field public i:F

.field public j:I

.field public k:I

.field public l:F

.field public m:F

.field public n:F

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public final s:Z

.field public t:Ljava/lang/String;

.field public u:I

.field public v:I

.field public w:Landroid/graphics/Paint$Cap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Paint;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->c:Landroid/graphics/Paint;

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    .line 39
    .line 40
    new-instance v0, Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->f:Landroid/graphics/Paint;

    .line 46
    .line 47
    const-class v0, Landroid/widget/ProgressBar;

    .line 48
    .line 49
    :try_start_0
    const-string v2, "mOnlyIndeterminate"

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 56
    .line 57
    .line 58
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "mIndeterminate"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const-string v2, "mCurrentDrawable"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 82
    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    .line 92
    goto :goto_1

    .line 93
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_2
    sget-object v0, Lv3/a;->a:[I

    .line 101
    .line 102
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const/4 p2, 0x0

    .line 107
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iput v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    .line 112
    .line 113
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput-boolean v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->s:Z

    .line 118
    .line 119
    const/4 v0, 0x2

    .line 120
    const/16 v2, 0x2d

    .line 121
    .line 122
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iput v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    .line 127
    .line 128
    const/16 v0, 0xb

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_0

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    goto :goto_3

    .line 141
    :cond_0
    const-string v0, "%d%%"

    .line 142
    .line 143
    :goto_3
    iput-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->t:Ljava/lang/String;

    .line 144
    .line 145
    const/16 v0, 0xd

    .line 146
    .line 147
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iput v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:I

    .line 152
    .line 153
    const/4 v0, 0x6

    .line 154
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iput v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->v:I

    .line 159
    .line 160
    const/16 v0, 0x8

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_1

    .line 167
    .line 168
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    aget-object p2, v2, p2

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_1
    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 180
    .line 181
    :goto_4
    iput-object p2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->w:Landroid/graphics/Paint$Cap;

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 196
    .line 197
    const/high16 v0, 0x40800000    # 4.0f

    .line 198
    .line 199
    mul-float v0, v0, p2

    .line 200
    .line 201
    const/high16 p2, 0x3f000000    # 0.5f

    .line 202
    .line 203
    add-float/2addr v0, p2

    .line 204
    float-to-int v0, v0

    .line 205
    const/4 v2, 0x3

    .line 206
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    int-to-float v0, v0

    .line 211
    iput v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->l:F

    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 226
    .line 227
    const/high16 v2, 0x41300000    # 11.0f

    .line 228
    .line 229
    mul-float v2, v2, v0

    .line 230
    .line 231
    add-float/2addr v2, p2

    .line 232
    float-to-int v0, v2

    .line 233
    const/16 v2, 0xc

    .line 234
    .line 235
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    int-to-float v0, v0

    .line 240
    iput v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->n:F

    .line 241
    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 255
    .line 256
    const/high16 v2, 0x3f800000    # 1.0f

    .line 257
    .line 258
    mul-float v2, v2, v0

    .line 259
    .line 260
    add-float/2addr v2, p2

    .line 261
    float-to-int p2, v2

    .line 262
    const/16 v0, 0x9

    .line 263
    .line 264
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    int-to-float p2, p2

    .line 269
    iput p2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->m:F

    .line 270
    .line 271
    const-string p2, "#fff2a670"

    .line 272
    .line 273
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    const/4 v2, 0x7

    .line 278
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    iput v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->o:I

    .line 283
    .line 284
    const/4 v0, 0x5

    .line 285
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    iput v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    .line 294
    .line 295
    const/16 v0, 0xa

    .line 296
    .line 297
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    move-result p2

    .line 301
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 302
    .line 303
    .line 304
    move-result p2

    .line 305
    iput p2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->q:I

    .line 306
    .line 307
    const-string p2, "#ffe3e3e5"

    .line 308
    .line 309
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    const/4 v0, 0x4

    .line 314
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    iput p2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->r:I

    .line 319
    .line 320
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 321
    .line 322
    .line 323
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 324
    .line 325
    iget-object p2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->f:Landroid/graphics/Paint;

    .line 326
    .line 327
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 328
    .line 329
    .line 330
    iget p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->n:F

    .line 331
    .line 332
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 333
    .line 334
    .line 335
    iget p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:I

    .line 336
    .line 337
    if-ne p1, v1, :cond_2

    .line 338
    .line 339
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 343
    .line 344
    :goto_5
    iget-object p2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->c:Landroid/graphics/Paint;

    .line 345
    .line 346
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 347
    .line 348
    .line 349
    iget p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->m:F

    .line 350
    .line 351
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 352
    .line 353
    .line 354
    iget p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->o:I

    .line 355
    .line 356
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    .line 358
    .line 359
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->w:Landroid/graphics/Paint$Cap;

    .line 360
    .line 361
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 362
    .line 363
    .line 364
    iget p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:I

    .line 365
    .line 366
    if-ne p1, v1, :cond_3

    .line 367
    .line 368
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 369
    .line 370
    goto :goto_6

    .line 371
    :cond_3
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 372
    .line 373
    :goto_6
    iget-object p2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    .line 374
    .line 375
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 376
    .line 377
    .line 378
    iget p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->m:F

    .line 379
    .line 380
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 381
    .line 382
    .line 383
    iget p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->r:I

    .line 384
    .line 385
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    .line 387
    .line 388
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->w:Landroid/graphics/Paint$Cap;

    .line 389
    .line 390
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 391
    .line 392
    .line 393
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 394
    .line 395
    iget-object p2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    .line 396
    .line 397
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 398
    .line 399
    .line 400
    iget p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    .line 401
    .line 402
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    .line 404
    .line 405
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:I

    .line 4
    .line 5
    const/high16 v2, 0x43b40000    # 360.0f

    .line 6
    .line 7
    iget-object v9, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    iget-object v8, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    .line 11
    .line 12
    iget-object v7, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->c:Landroid/graphics/Paint;

    .line 13
    .line 14
    if-eq v1, v3, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    iget v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    .line 20
    .line 21
    int-to-double v1, v1

    .line 22
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    div-double/2addr v3, v1

    .line 28
    double-to-float v1, v3

    .line 29
    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->g:F

    .line 30
    .line 31
    iget v3, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->l:F

    .line 32
    .line 33
    sub-float v3, v2, v3

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    int-to-float v4, v4

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    int-to-float v5, v5

    .line 45
    div-float/2addr v4, v5

    .line 46
    iget v5, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    .line 47
    .line 48
    int-to-float v5, v5

    .line 49
    mul-float v4, v4, v5

    .line 50
    .line 51
    float-to-int v4, v4

    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_0
    iget v6, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    .line 54
    .line 55
    if-ge v5, v6, :cond_3

    .line 56
    .line 57
    int-to-float v6, v5

    .line 58
    mul-float v6, v6, v1

    .line 59
    .line 60
    iget v9, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 61
    .line 62
    float-to-double v10, v6

    .line 63
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v12

    .line 67
    double-to-float v6, v12

    .line 68
    mul-float v6, v6, v3

    .line 69
    .line 70
    add-float/2addr v6, v9

    .line 71
    iget v9, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 72
    .line 73
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v12

    .line 77
    double-to-float v12, v12

    .line 78
    mul-float v12, v12, v3

    .line 79
    .line 80
    sub-float v12, v9, v12

    .line 81
    .line 82
    iget v9, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 83
    .line 84
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 85
    .line 86
    .line 87
    move-result-wide v13

    .line 88
    double-to-float v13, v13

    .line 89
    mul-float v13, v13, v2

    .line 90
    .line 91
    add-float/2addr v13, v9

    .line 92
    iget v9, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 93
    .line 94
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 95
    .line 96
    .line 97
    move-result-wide v10

    .line 98
    double-to-float v10, v10

    .line 99
    mul-float v10, v10, v2

    .line 100
    .line 101
    sub-float v14, v9, v10

    .line 102
    .line 103
    if-ge v5, v4, :cond_0

    .line 104
    .line 105
    move-object/from16 v10, p1

    .line 106
    .line 107
    move v11, v6

    .line 108
    move-object v15, v7

    .line 109
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_0
    move-object/from16 v10, p1

    .line 114
    .line 115
    move v11, v6

    .line 116
    move-object v15, v8

    .line 117
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    const/high16 v6, 0x43b40000    # 360.0f

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 127
    .line 128
    move-object/from16 v3, p1

    .line 129
    .line 130
    move-object v4, v9

    .line 131
    move-object v10, v7

    .line 132
    move v7, v1

    .line 133
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    int-to-float v1, v1

    .line 141
    mul-float v1, v1, v2

    .line 142
    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    int-to-float v2, v2

    .line 148
    div-float v6, v1, v2

    .line 149
    .line 150
    const/4 v7, 0x0

    .line 151
    move-object v8, v10

    .line 152
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_2
    move-object v10, v7

    .line 157
    const/high16 v6, 0x43b40000    # 360.0f

    .line 158
    .line 159
    const/4 v7, 0x0

    .line 160
    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 161
    .line 162
    move-object/from16 v3, p1

    .line 163
    .line 164
    move-object v4, v9

    .line 165
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    int-to-float v1, v1

    .line 173
    mul-float v1, v1, v2

    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    int-to-float v2, v2

    .line 180
    div-float v6, v1, v2

    .line 181
    .line 182
    const/4 v7, 0x1

    .line 183
    move-object v8, v10

    .line 184
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 185
    .line 186
    .line 187
    :cond_3
    :goto_2
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->s:Z

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->t:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object v2, v3, v0

    .line 21
    .line 22
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->f:Landroid/graphics/Paint;

    .line 27
    .line 28
    iget v3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->n:F

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 31
    .line 32
    .line 33
    iget v3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->q:I

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 48
    .line 49
    iget v3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    div-int/lit8 v4, v4, 0x2

    .line 56
    .line 57
    int-to-float v4, v4

    .line 58
    add-float/2addr v3, v4

    .line 59
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final c()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->o:I

    .line 5
    .line 6
    iget v3, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->c:Landroid/graphics/Paint;

    .line 10
    .line 11
    if-eq v2, v3, :cond_4

    .line 12
    .line 13
    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->v:I

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-eq v2, v3, :cond_2

    .line 19
    .line 20
    if-eq v2, v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->m:F

    .line 25
    .line 26
    float-to-double v2, v2

    .line 27
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    div-double/2addr v2, v6

    .line 33
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 34
    .line 35
    mul-double v2, v2, v6

    .line 36
    .line 37
    iget v4, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->g:F

    .line 38
    .line 39
    float-to-double v6, v4

    .line 40
    div-double/2addr v2, v6

    .line 41
    double-to-float v2, v2

    .line 42
    iget-object v3, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->w:Landroid/graphics/Paint$Cap;

    .line 43
    .line 44
    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 45
    .line 46
    if-ne v3, v4, :cond_1

    .line 47
    .line 48
    iget v3, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:I

    .line 49
    .line 50
    if-ne v3, v1, :cond_1

    .line 51
    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    float-to-double v2, v2

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    :goto_0
    const-wide v6, -0x3fa9800000000000L    # -90.0

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    sub-double/2addr v6, v2

    .line 66
    double-to-float v2, v6

    .line 67
    new-instance v4, Landroid/graphics/SweepGradient;

    .line 68
    .line 69
    iget v3, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 70
    .line 71
    iget v6, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    .line 72
    .line 73
    iget v7, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->o:I

    .line 74
    .line 75
    iget v8, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    .line 76
    .line 77
    filled-new-array {v7, v8}, [I

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    new-array v1, v1, [F

    .line 82
    .line 83
    fill-array-data v1, :array_0

    .line 84
    .line 85
    .line 86
    invoke-direct {v4, v3, v6, v7, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Landroid/graphics/Matrix;

    .line 90
    .line 91
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 92
    .line 93
    .line 94
    iget v3, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 95
    .line 96
    iget v6, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    .line 97
    .line 98
    invoke-virtual {v1, v2, v3, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    new-instance v4, Landroid/graphics/RadialGradient;

    .line 106
    .line 107
    iget v8, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 108
    .line 109
    iget v9, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    .line 110
    .line 111
    iget v10, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->g:F

    .line 112
    .line 113
    iget v11, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->o:I

    .line 114
    .line 115
    iget v12, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    .line 116
    .line 117
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 118
    .line 119
    move-object v7, v4

    .line 120
    invoke-direct/range {v7 .. v13}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    .line 127
    .line 128
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 129
    .line 130
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 131
    .line 132
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 133
    .line 134
    iget v6, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->o:I

    .line 135
    .line 136
    iget v7, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    .line 137
    .line 138
    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 139
    .line 140
    move-object v14, v4

    .line 141
    move v15, v2

    .line 142
    move/from16 v16, v3

    .line 143
    .line 144
    move/from16 v17, v2

    .line 145
    .line 146
    move/from16 v18, v1

    .line 147
    .line 148
    move/from16 v19, v6

    .line 149
    .line 150
    move/from16 v20, v7

    .line 151
    .line 152
    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 153
    .line 154
    .line 155
    :goto_1
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_4
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 160
    .line 161
    .line 162
    iget v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->o:I

    .line 163
    .line 164
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    .line 166
    .line 167
    :goto_2
    return-void

    .line 168
    nop

    .line 169
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->w:Landroid/graphics/Paint$Cap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->l:F

    .line 2
    .line 3
    return v0
.end method

.method public getProgressBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public getProgressEndColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getProgressStartColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getProgressStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public getProgressTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public getProgressTextFormatPattern()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->n:F

    .line 2
    .line 3
    return v0
.end method

.method public getShader()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public getStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 7
    .line 8
    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->g:F

    .line 9
    .line 10
    iget-object v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->a(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->b(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    div-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    int-to-float p1, p1

    .line 7
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 8
    .line 9
    div-int/lit8 p2, p2, 0x2

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    iput p2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->g:F

    .line 19
    .line 20
    iget-object p2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    .line 21
    .line 22
    iget p3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    .line 23
    .line 24
    sub-float p4, p3, p1

    .line 25
    .line 26
    iput p4, p2, Landroid/graphics/RectF;->top:F

    .line 27
    .line 28
    add-float/2addr p3, p1

    .line 29
    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    .line 30
    .line 31
    iget p3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 32
    .line 33
    sub-float p4, p3, p1

    .line 34
    .line 35
    iput p4, p2, Landroid/graphics/RectF;->left:F

    .line 36
    .line 37
    add-float/2addr p3, p1

    .line 38
    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->c()V

    .line 41
    .line 42
    .line 43
    iget p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->m:F

    .line 44
    .line 45
    const/high16 p3, 0x40000000    # 2.0f

    .line 46
    .line 47
    div-float p4, p1, p3

    .line 48
    .line 49
    div-float/2addr p1, p3

    .line 50
    invoke-virtual {p2, p4, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->w:Landroid/graphics/Paint$Cap;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->c:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setLineCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->l:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setProgressEndColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setProgressStartColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->o:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setProgressStrokeWidth(F)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->m:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    .line 4
    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float v2, p1, v1

    .line 8
    .line 9
    div-float/2addr p1, v1

    .line 10
    invoke-virtual {v0, v2, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->q:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProgressTextFormatPattern(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->t:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->n:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShader(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->v:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setStyle(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->c:Landroid/graphics/Paint;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    .line 17
    .line 18
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 26
    .line 27
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
